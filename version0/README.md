# Version 0

This is version 0 of the Simple Agda typechecker.
It typechecks modules in the same way as Agda, meaning we move module parameters to the declaration level and generate new declarations for a module alias.
For example:
```
module simpleAlias where
    module A (x : Bool) where
        f : Bool -> Bool
        f = \y . y

    module B = A False
```
becomes:
```
core simpleAlias 

section simpleAlias 
section simpleAlias.A (x0: Bool)
section simpleAlias.B 

simpleAlias.A.f : Bool -> Bool -> Bool
simpleAlias.A.f = \x0 y2. y2
simpleAlias.B.f : Bool -> Bool
simpleAlias.B.f = simpleAlias.A.f False
```

We also need to insert module parameters as arguments to function calls to ensure it still typechecks after lifting:
```
module M (b : Bool) where 
    f : Bool 
    f = b
    
    g : Bool 
    g = f 
```
becomes:
```
f : Bool -> Bool 
f = \b . b
    
g : Bool -> Bool 
g = \b . f b 
```
This `b` argument to `f` was not present in the original code as it was implicit from the module parameters. This change means we need to return updated terms in the term typechecker.

## Typechecking process

Typechecking begins in [TcMain](src/V0/TcMain.hs) with the `goFilename` function. This function will first use [Modules](src/V0/Modules.hs) to load the target module together with its import dependencies. These dependencies are either [parsed](src/V0/Parser.hs) from a Core file if it exists or passed as a module to be typechecked first. All the relevant Modules and Cores are then passed to [TypeChecking](src/V0/TypeChecking.hs) which will one-by-one scopecheck and typecheck them with any newly created core files being written to file.

The parsed files will use Unbound for dealing with variable scoping. Unbound uses a locally nameless approach where you create binding that you can unbind to generate a fresh name. We initially use this for both lambdas as well as module parameters. Unfortunately we cannot use Unbound in our typechecking environments as it does not support Maps nor can we traverse a structure multiple times as Unbound will then generate two different names. We solve this by having the scopechecker introduce unique names. 

The [scopechecker](src/V0/ScopeChecker.hs) will of course insert fully-qualified names to disambiguate qualified names. For normal variables it will use the internal unique name generate by Unbound. This ensures all names are unique within the file and we no longer need Unbound for module parmaeters. Imported files can still have duplicate parameter names but this is not a problem as module parameters only "leave" their file when they are wrapped around a declaration as a lambda and lambdas still use Unbound so this will work fine.

After scopechecking we will typecheck the file using the [Module typechecker](src/V0/ModuleTypeChecker.hs). The module typechecker will then use the [term typechecker](src/V0/TermTypeChecker.hs) for typechecking terms. Once typechecking is done we can [pretty-print](src/V0/Core/PrettyPrint.hs) the core to a file.

The environments used by the typechecker can be found in [TcEnvironment/](src/V0/TcEnvironment/). The environment is split into two. The [TermEnvironment](src/V0/TcEnvironment/TermEnvironment.hs) contains the environment for variables as well as any function needed for typechecking non-qualified terms. The [ModuleEnvironment](src/V0/TcEnvironment/ModuleEnvironment.hs) contains the environment for declarations and modules as well as any lookups and such required for dealing with declarations. This separations allows us to keep the term environment and term typechecker mostly intact between versions while making significant changes to their Module equivalents.