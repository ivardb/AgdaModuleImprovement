module Generator where

import Control.Monad.Reader (MonadReader (ask, local), asks, replicateM, unless, when)
import Control.Monad.State (MonadState (get), StateT, evalStateT, foldM, gets, modify)
import Control.Monad.Trans.Class (lift)
import Control.Monad.Trans.Reader (ReaderT (runReaderT))
import Data.Bifunctor (bimap, first)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust, mapMaybe)
import Debug.Trace (trace)
import Foreign (fromBool)
import GHC.Float (float2Int)
import System.Directory (createDirectoryIfMissing, doesDirectoryExist, doesFileExist, listDirectory)
import System.FilePath ((<.>), (</>))
import Test.QuickCheck (Gen, chooseEnum, chooseInt, frequency, generate, oneof)
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.PrettyPrint (Disp (..), render)
import V0.Syntax (MName, ModPath, ModQualified (..), ModuleImport (ModuleImport), Qualified (..), Sig (Sig), TName, Term (..), Type, UDecl (..), UModule (UModule))

-- | Structure used by the generator
data Structure
  = -- | A module with the given name and structure
    Mod MName [Structure]
  | -- | n random declarations
    Decls Int
  | -- | An alias of the given path with the given name. Parameters and args are determined by the settings
    ModAlias MName ModPath
  deriving (Show)

-- | Setting used by the generator
data Settings = Settings
  { -- | Size of declaration terms
    termSize :: Int,
    -- | Size of declaration types
    typeSize :: Int,
    -- | Size of module parameter types
    modParamSize :: Int,
    -- | Number of module parameters
    numberOfModParam :: Int,
    -- | Number of arguments generated for module aliases, should not exceed numberOfModParams
    aliasSize :: Int,
    -- | Size of module alias arguments
    modArgSize :: Int,
    -- | Modifier for the likelihood of generating calls to declaration from an alias
    aliasedModifier :: Float,
    -- | Modifier for the likelihood of generating calls to imported declarations
    importedModifier :: Float
  }
  deriving (Show)

-- | State used by the generator
data State = State
  { -- | Names in scope of type Bool
    boolNames :: [TName],
    -- | Names in scope of type type
    typeNames :: [TName],
    -- | Normal declarations with a number of parameters of given types
    functions :: [(Qualified, [Type])],
    -- | Declarations produced by an alias with their parameters
    fromAlias :: [(Qualified, [Type])],
    -- | Imported declaratiosn with their parmater types
    imported :: [(Qualified, [Type])],
    -- | Imported declarations produced by an alias with their parameter types
    importedAlias :: [(Qualified, [Type])]
  }

-- | Configuration for the generator, consisting of a name, settings, structures and imports
data Config = Config
  { settings :: Settings,
    name :: MName,
    struct :: [Structure],
    imp :: [String]
  }

type GenMonad = StateT Integer (ReaderT State Gen)

-- | Quickcheck generate adapted for our monad
generateM :: GenMonad a -> IO a
generateM m = generate $ runReaderT (evalStateT m 0) $ State [] [] [] [] [] []

-- | Generate a fresh name
genName :: String -> GenMonad TName
genName s = do
  modify (+ 1)
  i <- get
  return $ Unbound.string2Name $ s ++ show i

-- | Generate a fresh module name
genModName :: String -> GenMonad MName
genModName s = do
  modify (+ 1)
  i <- get
  return $ s ++ show i

-- | Lift generators
liftG :: Gen a -> GenMonad a
liftG g = lift $ h g
  where
    h :: Gen a -> ReaderT State Gen a
    h = lift

-- | GenMonad version of QuickCheck oneOf
oneofM :: [GenMonad a] -> GenMonad a
oneofM [] = error "QuickCheck.oneof used with empty list"
oneofM gs = liftG (chooseInt (0, length gs - 1)) >>= (gs !!)

-- | GenMonad version of QuickCheck frequency
frequencyM :: [(Float, GenMonad a)] -> GenMonad a
frequencyM [] = error "QuickCheck.frequency used with empty list"
frequencyM xs
  | any ((< 0) . fst) xs =
    error "QuickCheck.frequency: negative weight"
  | all ((== 0) . fst) xs =
    error "QuickCheck.frequency: all weights were zero"
frequencyM xs0 = liftG (chooseInt (1, tot)) >>= (`pick` xs')
  where
    xs' = map (first float2Int) xs0
    tot = sum (map fst xs')

    pick n ((k, x) : xs)
      | n <= k = x
      | otherwise = pick (n - k) xs
    pick _ _ = error "QuickCheck.pick used with empty list"

-- | But a name in scope depending on its type
scope :: (MonadReader State m) => Type -> TName -> m a -> m a
scope Type n = local (\s@State {typeNames = ns} -> s {typeNames = n : ns})
scope _ n = local (\s@State {boolNames = ns} -> s {boolNames = n : ns})

-- | Scope multiple boolean parameters
scopeParams :: (MonadReader State m) => [TName] -> m a -> m a
scopeParams n = local (\s@State {boolNames = ns} -> s {boolNames = n ++ ns})

-- | Add a declaration as a normal function
scopeDecl :: (MonadReader State m) => Qualified -> m a -> m a
scopeDecl n = local (\s@State {functions = ns} -> s {functions = (n, []) : ns})

-- | Add declarations as normal functions
scopeDecls :: (MonadReader State m) => [(Qualified, [Type])] -> m a -> m a
scopeDecls n = local (\s@State {functions = ns} -> s {functions = n ++ ns})

-- | Add declarations produced by aliases
scopeAliasDecls :: (MonadReader State m) => [(Qualified, [Type])] -> m a -> m a
scopeAliasDecls n = local (\s@State {fromAlias = fs} -> s {fromAlias = n ++ fs})

-- | Add declarations from an import
scopeImportedDecls :: (MonadReader State m) => [(Qualified, [Type])] -> m a -> m a
scopeImportedDecls n = local (\s@State {imported = fs} -> s {imported = n ++ fs})

-- | Add declarations from an import produced by an alias
scopeImportedAliased :: (MonadReader State m) => [(Qualified, [Type])] -> m a -> m a
scopeImportedAliased n = local (\s@State {importedAlias = fs} -> s {importedAlias = n ++ fs})

-- Generate a term with the given settings of the given type and size
generateTerm' :: Settings -> Type -> Int -> GenMonad Term
generateTerm' s f n
  | n < 4 = case f of Type -> generateTypeLiteral; _ -> generateLiteral s
  | n < 6 = generateIf s n f
  | otherwise = do
    validFunc <- asks (filter (not . null . snd) . functions)
    validAlias <- asks (filter (not . null . snd) . fromAlias)
    validImported <- asks (filter (not . null . snd) . imported)
    validImportedAlias <- asks (filter (not . null . snd) . importedAlias)
    let b2 = case f of Type -> True; _ -> False
    if b2
      then oneofM [generateApp s n f, generateIf s n f]
      else
        frequencyM
          [ (100, generateApp s n f),
            (100, generateIf s n f),
            ((100 *) . fromBool $ not $ null validFunc, generateFunction s n f validFunc),
            ((aliasedModifier s *) . (100 *) . fromBool $ not $ null validAlias, generateFunction s n f validAlias),
            ((importedModifier s *) . (100 *) . fromBool $ not $ null validImported, generateFunction s n f validImported),
            ((importedModifier s *) . (aliasedModifier s *) . (100 *) . fromBool $ not $ null validImportedAlias, generateFunction s n f validImportedAlias)
          ]

-- | Generate a lambda application
generateApp :: Settings -> Int -> Type -> GenMonad Term
generateApp s n t = do
  par <- genName "x"
  let n' = (n - 3) `div` 3
  b <- scope t par $ generateTerm' s t (n' * 2)
  a <- generateTerm' s t n'
  return $ App (Ann (Lam $ Unbound.bind par b) $ Pi t $ Unbound.bind par t) a

-- | Generate an if expression
generateIf :: Settings -> Int -> Type -> GenMonad Term
generateIf s n f = do
  let n' = (n - 1) `div` 3
  c <- case f of Type -> generateBool; _ -> generateTerm' s TyBool n'
  t <- generateTerm' s f n'
  f <- generateTerm' s f n'
  return $ If c t f

-- | Generate a fucntion call
generateFunction :: Settings -> Int -> Type -> [(Qualified, [Type])] -> GenMonad Term
generateFunction s n t fs = do
  if null fs
    then error "genFunc with no funcs"
    else do
      i <- liftG $ chooseInt (0, length fs - 1)
      let (qn, types) = fs !! i
      args <- mapM (\x -> generateTerm' s x (n `div` length types)) types
      return $ foldl App (QualifiedTerm qn) args

-- | Geerate a literal, can include function calls that do not require any arguments
generateLiteral :: Settings -> GenMonad Term
generateLiteral s = do
  b <- asks (fromBool . not . null . boolNames)
  b2 <- asks (fromBool . any (null . snd) . functions)
  b3 <- asks (fromBool . any (null . snd) . fromAlias)
  b4 <- asks (fromBool . any (null . snd) . imported)
  b5 <- asks (fromBool . any (null . snd) . importedAlias)
  frequencyM
    [ (100, generateBool),
      (100 * b, genVar),
      (100 * b2, genQualified),
      (aliasedModifier s * 100 * b3, genFromAlias),
      (importedModifier s * 100 * b4, genImported),
      (importedModifier s * aliasedModifier s * 100 * b5, genImportedFromAlias)
    ]

-- | Generate a boolean literal
generateBool :: GenMonad Term
generateBool = oneofM [return $ LitBool True, return $ LitBool False]

-- | Generate a type literal
generateTypeLiteral :: GenMonad Term
generateTypeLiteral = do
  b <- asks (fromBool . not . null . typeNames)
  frequencyM [(1, return TyBool), (b, genTypeVar)]

-- | Use a var of type type
genTypeVar :: GenMonad Term
genTypeVar = do
  names <- asks typeNames
  Var . (names !!) <$> liftG (chooseInt (0, length names - 1))

-- | Use a var of type Bool
genVar :: GenMonad Term
genVar = do
  names <- asks boolNames
  Var . (names !!) <$> liftG (chooseInt (0, length names - 1))

-- | Generate a qualified function call
genQualified :: GenMonad Term
genQualified = do
  names <- asks (filter (null . snd) . functions)
  QualifiedTerm . (fst . (names !!)) <$> liftG (chooseInt (0, length names - 1))

-- | Generate a call to a declaration from an alias
genFromAlias :: GenMonad Term
genFromAlias = do
  names <- asks (filter (null . snd) . fromAlias)
  QualifiedTerm . (fst . (names !!)) <$> liftG (chooseInt (0, length names - 1))

-- | Generate a call to an imported declaration
genImported :: GenMonad Term
genImported = do
  names <- asks (filter (null . snd) . imported)
  QualifiedTerm . (fst . (names !!)) <$> liftG (chooseInt (0, length names - 1))

-- | Generate a call to an imported declaration produced by an alias
genImportedFromAlias :: GenMonad Term
genImportedFromAlias = do
  names <- asks (filter (null . snd) . importedAlias)
  QualifiedTerm . (fst . (names !!)) <$> liftG (chooseInt (0, length names - 1))

-- | Generate a term of type Bool
generateTerm :: Settings -> Int -> GenMonad Term
generateTerm s = generateTerm' s TyBool

-- | Generate a type of type Type
generateType :: Settings -> Int -> GenMonad Type
generateType s = generateTerm' s Type

-- | Generate a module parameter
generateParam :: Settings -> GenMonad (TName, Unbound.Embed Type)
generateParam s = do
  n <- genName "p"
  t <- generateType s $ modParamSize s
  return (n, Unbound.Embed t)

-- | Generate a definition
generateDef :: Settings -> TName -> Int -> GenMonad UDecl
generateDef s name n = UDef name <$> generateTerm s n

-- | Generate a type signature
generateSig :: Settings -> TName -> Int -> GenMonad UDecl
generateSig s name n = UTypeSig . Sig (Current name) <$> generateType s n

-- | Generate a module alias
generateModuleAlias :: Settings -> MName -> ModPath -> GenMonad UDecl
generateModuleAlias s n n' = do
  let nargs = numberOfModParam s
  args <- replicateM nargs $ generateTerm s $ modArgSize s
  return $ UModApply n $ Unbound.bind (Unbound.rec []) (n', args)

-- | Generate a structure
generateStructure :: Settings -> Structure -> GenMonad ([UDecl], [(Qualified, [Type])], [(Qualified, [Type])])
generateStructure s (Decls n) = genDecls n
  where
    genDecls 0 = return ([], [], [])
    genDecls n = do
      name <- genName "d"
      d <- generateDef s name (termSize s)
      t <- generateSig s name (typeSize s)
      (tail, names, aliased) <- scopeDecl (Current name) $ genDecls (n - 1)
      return (t : d : tail, (Current name, []) : names, aliased)
generateStructure s (Mod n ss) = do
  params <- replicateM (numberOfModParam s) (generateParam s)
  (decls, normal, aliased) <- scopeParams (map fst params) $ generateStructures s ss
  let normal' = map (bimap (Q n) (replicate (length params) TyBool ++)) normal
  let aliased' = map (bimap (Q n) (replicate (length params) TyBool ++)) aliased
  return ([UMod n $ Unbound.bind (Unbound.rec params) decls], normal', aliased')
generateStructure s (ModAlias n p) = do
  fixed <- asks (mapMaybe (fmap (bimap (wrap n) (drop (aliasSize s))) . (\(x, y) -> (,y) <$> match p x)) . functions)
  fixed2 <- asks (mapMaybe (fmap (bimap (wrap n) (drop (aliasSize s))) . (\(x, y) -> (,y) <$> match p x)) . fromAlias)
  fixed3 <- asks (mapMaybe (fmap (bimap (wrap n) (drop (aliasSize s))) . (\(x, y) -> (,y) <$> match p x)) . imported)
  fixed4 <- asks (mapMaybe (fmap (bimap (wrap n) (drop (aliasSize s))) . (\(x, y) -> (,y) <$> match p x)) . importedAlias)
  args <- replicateM (aliasSize s) (generateTerm s (modArgSize s))
  return ([UModApply n $ Unbound.bind (Unbound.rec []) (p, args)], [], fixed ++ fixed2 ++ fixed3 ++ fixed4)

-- | Generate multiple structures
generateStructures :: Settings -> [Structure] -> GenMonad ([UDecl], [(Qualified, [Type])], [(Qualified, [Type])])
generateStructures s [] = return ([], [], [])
generateStructures s (x : xs) = do
  (ds, qs, as) <- generateStructure s x
  (dss, qss, ass) <- scopeDecls qs $ scopeImportedAliased as $ generateStructures s xs
  return (ds ++ dss, qs ++ qss, as ++ ass)

-- | Generate the provided configs adn write them to the provided folder
generateFiles :: FilePath -> [Config] -> IO ()
generateFiles folder xs = do
  createDirectoryIfMissing True folder
  (mods, _) <- foldM h ([], Map.empty) xs
  mapM_
    ( \(f, m) -> do
        b <- doesFileExist f
        if b then print $ f ++ "already exists. Generation will skip this file" else writeFile f $ render $ disp m
    )
    mods
  where
    h :: ([(FilePath, UModule)], Map String ([(Qualified, [Type])], [(Qualified, [Type])])) -> Config -> IO ([(FilePath, UModule)], Map String ([(Qualified, [Type])], [(Qualified, [Type])]))
    h (mods, scopes) config = do
      (m, scope, as) <- execute config scopes
      return ((folder </> name config <.> "sa", m) : mods, Map.insert (name config) (scope, as) scopes)
    execute :: Config -> Map String ([(Qualified, [Type])], [(Qualified, [Type])]) -> IO (UModule, [(Qualified, [Type])], [(Qualified, [Type])])
    execute config x = do
      (d, names, as) <- generateM (generateTopLevelMod config x)
      return (d, names, as)
    generateTopLevelMod :: Config -> Map String ([(Qualified, [Type])], [(Qualified, [Type])]) -> GenMonad (UModule, [(Qualified, [Type])], [(Qualified, [Type])])
    generateTopLevelMod (Config s n ss imps) impNames = do
      let (imports, importAlias) = unzip $ map (fromJust . (`Map.lookup` impNames)) imps
      (d, s, a) <- scopeImportedDecls (concat imports) $ scopeImportedAliased (concat importAlias) $ generateStructures s ss
      return (UModule n (map ModuleImport imps) $ Unbound.bind (Unbound.rec []) d, map (first (wrap n)) s, map (first (wrap n)) a)

-- | Generate multiple files with the same settings for more consistent averages
generateMultiple :: Int -> FilePath -> Config -> IO ()
generateMultiple n folder config = do
  createDirectoryIfMissing True folder
  appendFile (folder </> "prefixes.md") (name config ++ "\n")
  appendFile (folder </> "README.md") $ unlines ["Settings:", show $ settings config, "Structure:", show $ struct config]
  let cs = map (\x -> config {name = name config ++ show x}) [1 .. n]
  generateFiles folder cs

-- | Generate multiple configs. This means adding indices to each name and import to keep them distinct.
generateConfig :: Int -> FilePath -> Config -> IO [Config]
generateConfig n folder config = do
  createDirectoryIfMissing True folder
  appendFile (folder </> "prefixes.md") (name config ++ "\n")
  appendFile (folder </> "README.md") $ unlines ["Settings:", show $ settings config, "Structure:", show $ struct config]
  return $ map (\x -> config {name = name config ++ show x, imp = map (++ show x) $ imp config}) [1 .. n]
