module V0.Error (runErrorMonad, err, ErrorMonad, SourceLocation (..), Err (..)) where

import Control.Monad.Except (ExceptT, MonadError (catchError, throwError), MonadIO (liftIO), runExceptT)
import Text.PrettyPrint (nest, sep, text, ($$))
import qualified Unbound.Generics.LocallyNameless as Unbound
import V0.PrettyPrint (Disp (disp), Doc, SourcePos, render)

-- Unbound is used at this level so that the scopechecker and typechecker are in the same computation
-- and thus avoid creating duplicate names
type ErrorMonad = Unbound.FreshMT (ExceptT Err IO)

-- | Execute an error monad
runErrorMonad :: ErrorMonad m -> IO (Either Err m)
runErrorMonad = runExceptT . Unbound.runFreshMT

-- | An error that should be reported to the user
data Err = Err [SourceLocation] Doc

-- | Marked locations in the source code
data SourceLocation where
  SourceLocation :: forall a. Disp a => SourcePos -> a -> SourceLocation

-- | Augment the error message with addition information
extendErr :: MonadError Err m => m a -> Doc -> m a
extendErr ma msg' =
  ma `catchError` \(Err ps msg) ->
    throwError $ Err ps (msg $$ msg')

instance Semigroup Err where
  (Err src1 d1) <> (Err src2 d2) = Err (src1 ++ src2) (d1 `mappend` d2)

instance Monoid Err where
  mempty = Err [] mempty
  mappend (Err src1 d1) (Err src2 d2) = Err (src1 ++ src2) (d1 `mappend` d2)

instance Disp Err where
  disp (Err [] msg) = msg
  disp (Err ((SourceLocation p term) : _) msg) =
    disp p
      $$ nest 2 msg
      $$ nest 2 (text "In the expression" $$ nest 2 (disp term))

-- | Throw an error
err :: (Disp a, MonadError Err m) => [a] -> [SourceLocation] -> m b
err d loc = do
  throwError $ Err loc (sep $ map disp d)

-- | Print a warning
warn :: (Disp a, MonadIO m) => a -> [SourceLocation] -> m ()
warn e loc = do
  liftIO $ putStrLn $ "warning: " ++ render (disp (Err loc (disp e)))