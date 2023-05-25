-- | Generate specific experiments using the
module GenMain where

import Generator (Config (..), Settings (..), Structure (..), generateConfig, generateFiles, generateM, generateMultiple, generateStructure)
import System.Directory (createDirectoryIfMissing)
import System.FilePath (takeBaseName, (</>))
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.PrettyPrint (Disp (..), render)
import V0.Syntax (Decl (ModApply), Qualified (..), Sig (Sig), Term (..), UDecl (..), UModule (..))

---------------------------
-- declSanityCheck
---------------------------

generateSanityCheck :: IO ()
generateSanityCheck = do
    let s = Settings {termSize = 15, typeSize = 15, modParamSize = 10, numberOfModParam = 0, aliasSize = 1, modArgSize = 1, aliasedModifier = 1.0, importedModifier = 1.0}
    let ss1 = [Mod "M" [Decls 50]]
    generateMultiple 15 "experiments/declSanityCheck/50decls" $ Config s "Decls50Test" ss1 []

    let ss2 = [Mod "M" [Decls 150]]
    generateMultiple 15 "experiments/declSanityCheck/150decls" $ Config s "Decls150Test" ss2 []

    let ss3 = [Mod "M" [Decls 450]]
    generateMultiple 15 "experiments/declSanityCheck/450decls" $ Config s "Decls450Test" ss3 []

---------------------------
-- imports
---------------------------

generateImportsSanityCheck :: IO ()
generateImportsSanityCheck = do
    let sBase = Settings {termSize = 15, typeSize = 15, modParamSize = 10, numberOfModParam = 0, aliasSize = 1, modArgSize = 1, aliasedModifier = 1.0, importedModifier = 1.0}
    let sTest = Settings {termSize = 15, typeSize = 15, modParamSize = 10, numberOfModParam = 0, aliasSize = 1, modArgSize = 1, aliasedModifier = 1.0, importedModifier = 2.0}
    let ssTest = [Mod "M" [Decls 50]]
    let ssBase1 = [Mod "M" [Decls 50]]
    base1 <- generateConfig 15 "experiments/imports/sanityCheck/decls50" $ Config sBase "Decl50Base" ssBase1 []
    test1 <- generateConfig 15 "experiments/imports/sanityCheck/decls50" $ Config sTest "Decl50Test" ssTest ["Decl50Base"]
    generateFiles "experiments/imports/sanityCheck/decls50" $ base1 ++ test1

    let ssBase2 = [Mod "M" [Decls 150]]
    base2 <- generateConfig 15 "experiments/imports/sanityCheck/decls150" $ Config sBase "Decl150Base" ssBase2 []
    test2 <- generateConfig 15 "experiments/imports/sanityCheck/decls150" $ Config sTest "Decl150Test" ssTest ["Decl150Base"]
    generateFiles "experiments/imports/sanityCheck/decls150" $ base2 ++ test2

    let ssBase3 = [Mod "M" [Decls 450]]
    base3 <- generateConfig 15 "experiments/imports/sanityCheck/decls450" $ Config sBase "Decl450Base" ssBase3 []
    test3 <- generateConfig 15 "experiments/imports/sanityCheck/decls450" $ Config sTest "Decl450Test" ssTest ["Decl450Base"]
    generateFiles "experiments/imports/sanityCheck/decls450" $ base3 ++ test3

generateImportChain :: IO ()
generateImportChain = do
    let sTest = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, modArgSize = 1, aliasSize = 1, 
        importedModifier = 2, aliasedModifier = 1}
    let ssTest = [Mod "M" [Decls 50]]
    let ssBase = [Mod "M" [Decls 50], ModAlias "M'" ["M"]]

    let sBase1 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 1, modArgSize = 1, aliasSize = 1, 
        importedModifier = 1, aliasedModifier = 1}
    base1 <- generateConfig 15 "experiments/imports/importChain/Chain1" $ Config sBase1 "Chain1Base" ssBase []
    test1 <- generateConfig 15 "experiments/imports/importChain/Chain1" $ Config sTest "Chain1Test" ssTest ["Chain1Base"]
    generateFiles "experiments/imports/importChain/Chain1" $ base1 ++ test1

    let sBase2 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, modArgSize = 1, aliasSize = 1, 
        importedModifier = 1, aliasedModifier = 1}
    base2 <- generateConfig 15 "experiments/imports/importChain/Chain2" $ Config sBase2 "Chain2Base" ssBase []
    let step12 = map (\x -> Config {name = "Chain2Step1" ++ show x, imp = ["Chain2Base" ++ show x],
        struct = [ModAlias "M'" ["Chain2Base" ++ show x, "M'"]], settings = sBase2}) [1 .. 15]
    test2 <- generateConfig 15 "experiments/imports/importChain/Chain2" $ Config sTest "Chain2Test" ssTest ["Chain2Step1"]
    generateFiles "experiments/imports/importChain/Chain2" $ base2 ++ step12 ++ test2

    let sBase3 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 3, modArgSize = 1, aliasSize = 1, 
        importedModifier = 1, aliasedModifier = 1}
    let ssBase3 = [Mod "M" [Decls 50], ModAlias "M'" ["M"]]
    base3 <- generateConfig 15 "experiments/imports/importChain/Chain3" $ Config sBase3 "Chain3Base" ssBase []
    let step13 = map (\x -> Config {name = "Chain3Step1" ++ show x, imp = ["Chain3Base" ++ show x],
        struct = [ModAlias "M'" ["Chain3Base" ++ show x, "M'"]], settings = sBase3}) [1 .. 15]
    let step23 = map (\x -> Config {name = "Chain3Step2" ++ show x, imp = ["Chain3Step1" ++ show x],
        struct = [ModAlias "M'" ["Chain3Step1" ++ show x, "M'"]], settings = sBase3}) [1 .. 15]
    test3 <- generateConfig 15 "experiments/imports/importChain/Chain3" $ Config sTest "Chain3Test" ssTest ["Chain3Step2"]
    generateFiles "experiments/imports/importChain/Chain3" $ base3 ++ step13 ++ step23 ++ test3

---------------------------
-- modAlias
---------------------------

generateAliasModuleSize :: IO ()
generateAliasModuleSize = do
    let s = Settings {termSize = 15, typeSize = 15, modParamSize = 10, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, aliasedModifier = 2.0, importedModifier = 1.0}
    let ss1 = [Mod "M" [Decls 40],ModAlias "M'" ["M"],Decls 310]
    generateMultiple 15 "experiments/modAlias/AliasModuleSize/40Decls" $ Config s "Alias40Test" ss1 []
    let ss2 = [Mod "M" [Decls 120],ModAlias "M'" ["M"],Decls 230]
    generateMultiple 15 "experiments/modAlias/AliasModuleSize/120Decls" $ Config s "Alias120Test" ss2 []
    let ss3 = [Mod "M" [Decls 300],ModAlias "M'" ["M"],Decls 50]
    generateMultiple 15 "experiments/modAlias/AliasModuleSize/300Decls" $ Config s "Alias300Test" ss3 []

generateIncreaseUses :: IO ()
generateIncreaseUses = do
    let ss = [Mod "M" [Decls 40],ModAlias "M'" ["M"],Decls 100]
    let s = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 10.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/IncreaseUses/10times" $ Config s "AliasMod10Test" ss []

generateModArgSize :: IO ()
generateModArgSize = do
    let ss = [Mod "M" [Mod "M1" [Decls 40],ModAlias "M1'" ["M1"]],Decls 50]
    let s1 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 2.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/modArgSize/Size1" $ Config s1 "ModArg1Test" ss []
    let s2 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, aliasSize = 1, modArgSize = 10, 
        aliasedModifier = 2.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/modArgSize/Size10" $ Config s2 "ModArg10Test" ss []
    let s3 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, aliasSize = 1, modArgSize = 50, 
        aliasedModifier = 2.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/modArgSize/Size50" $ Config s3 "ModArg50Test" ss []
    let s4 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, aliasSize = 1, modArgSize = 200, 
        aliasedModifier = 2.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/modArgSize/Size200" $ Config s4 "ModArg200Test" ss []

-- |https://github.com/agda/agda/issues/1646
generateAliasDepthIssue1646 :: IO ()
generateAliasDepthIssue1646 = do
    let s = Settings {termSize = 15, typeSize = 15, modParamSize = 10, numberOfModParam = 1, aliasSize = 1, modArgSize = 1, aliasedModifier = 1.0, importedModifier = 1.0}
    let f = [UTypeSig (Sig (Current $ Unbound.string2Name "f") $ Pi TyBool $ Unbound.bind (Unbound.string2Name "x") TyBool), UDef (Unbound.string2Name "f") $ Lam $ Unbound.bind (Unbound.string2Name "x") $ LitBool True] 
    let g = [UTypeSig (Sig (Current $ Unbound.string2Name "g") $ Pi TyBool $ Unbound.bind (Unbound.string2Name "x") TyBool), UDef (Unbound.string2Name "g") $ Lam $ Unbound.bind (Unbound.string2Name "x") $ LitBool False] 
    (d, _, _) <- generateM $ generateStructure s (Mod "M0" [Decls 5])
    store "experiments/modAlias/NestedAliases/1Alias" "Issue1646Alias1Mod.sa" $ genNMods f g d 1 "Issue1646Alias1Mod"
    store "experiments/modAlias/NestedAliases/3Alias" "Issue1646Alias3Mod.sa" $ genNMods f g d 3 "Issue1646Alias3Mod"
    store "experiments/modAlias/NestedAliases/5Alias" "Issue1646Alias5Mod.sa" $ genNMods f g d 5 "Issue1646Alias5Mod"
    store "experiments/modAlias/NestedAliases/7Alias" "Issue1646Alias7Mod.sa" $ genNMods f g d 7 "Issue1646Alias7Mod"
    where
        store folder file content = do
            createDirectoryIfMissing True folder
            writeFile (folder </> "prefixes.md") $ takeBaseName file
            writeFile (folder </> file) content
        genNMods f g d n m = render $ disp $ UMod m $ Unbound.bind (Unbound.rec []) $ f ++ g ++ d ++ map (genAliasModule False) [1..n]

        genAliasModule b i = UMod ("M" ++ show i) $ Unbound.bind (Unbound.rec [(Unbound.string2Name "x", Unbound.Embed TyBool)]) [
            UModApply "M" $ Unbound.bind (Unbound.rec []) (if b then ["M0"] else ["M" ++ show (i-1)], []),
            UModApply "N" $ Unbound.bind (Unbound.rec []) (["M"], [App (Var (Unbound.string2Name "f")) $ Var $ Unbound.string2Name "x"]),
            UModApply "O" $ Unbound.bind (Unbound.rec []) (["M"], [App (Var (Unbound.string2Name "g")) $ Var $ Unbound.string2Name "x"])]

generateTypeSize :: IO ()
generateTypeSize = do
    let ss = [Mod "M" [Mod "M1" [Decls 40],ModAlias "M1'" ["M1"]],Decls 50]
    let s1 = Settings {
        termSize = 15, typeSize = 5, 
        modParamSize = 10, numberOfModParam = 1, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 2.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/TypeSize/Size5" $ Config s1 "TypeSize5Test" ss []
    let s2 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 1, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 2.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/TypeSize/Size15" $ Config s2 "TypeSize15Test" ss []
    let s3 = Settings {
        termSize = 15, typeSize = 50, 
        modParamSize = 10, numberOfModParam = 1, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 2.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modAlias/TypeSize/Size50" $ Config s3 "TypeSize50Test" ss []

---------------------------
-- modParams
---------------------------

generateModParamSize :: IO ()
generateModParamSize = do
    let ss = [Mod "M" [Decls 40],Decls 40]
    let s1 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 5, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/modParamSize/size5" $ Config s1 "Size5Test" ss []
    let s2 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 10, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/modParamSize/size10" $ Config s2 "Size10Test" ss []
    let s3 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 20, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/modParamSize/size20" $ Config s3 "Size20Test" ss []

    let s4 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 40, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/modParamSize/size40" $ Config s4 "Size40Test" ss []

generateModParamNumber :: IO ()
generateModParamNumber = do
    let ss = [Mod "M" [Decls 40],Decls 40]
    let s1 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 5, numberOfModParam = 2, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/numberOfParams/2Params" $ Config s1 "Param2Test" ss []
    let s2 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 5, numberOfModParam = 4, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/numberOfParams/4Params" $ Config s2 "Param4Test" ss []
    let s3 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 5, numberOfModParam = 8, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/numberOfParams/8Params" $ Config s3 "Param8Test" ss []

    let s4 = Settings {
        termSize = 15, typeSize = 15, 
        modParamSize = 5, numberOfModParam = 16, aliasSize = 1, modArgSize = 1, 
        aliasedModifier = 1.0, importedModifier = 1.0}
    generateMultiple 15 "experiments/modParams/numberOfParams/16Params" $ Config s4 "Param16Test" ss []

---------------------------
-- Main
---------------------------
generateMain :: IO ()
generateMain = do
    generateModParamSize
    generateModParamNumber