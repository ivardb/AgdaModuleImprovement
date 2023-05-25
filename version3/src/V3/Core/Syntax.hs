module V3.Core.Syntax where

import V3.Syntax (Module)

-- As the prettyprinter uses the unique names we can immediately parse as a scopechecked file
type Core = Module