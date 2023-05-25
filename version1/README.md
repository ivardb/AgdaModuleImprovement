# Version 1

In this version we add modules to the core language.
Much of the complexitity in version 0's implementation is related to the moving around of module parameters to the declaration level.
If we instead add modules to the core language this becomes much easier.

## What changes do we need for this?

### Core language

The core language now contains modules and module aliases go to modules instead of to a list of declarations.

### Module envirnment

The module environment is now structured. 
Each module has its own signature which is gradually created during typechecking.
As aliases are changed to modules, we cannot just initialise the signature immediately from the code.

With the current environment we need to know the telescope of the top level module before imports can be added.
This means we now always initialise with empty environments and the imported cores are instead passed to the `tcModule` function

### Module aliases

Module aliases become much more complicated for this version. We now need to recursively create new modules from an alias, keeping track of where to add which parameters. Partial aliases also become more difficult.
They were easy in version 0 as everything was a function and these can be partially applied.
As we now create modules this is no longer possible as you cannot partially alias a module.
Instead we automatically insert the remaining arguments as parameters to the aliased module.
```
module x (b : Bool) (b2 : Bool) where ...
module xTrue = x True
```
becomes
```
module xTrue (b2 : Bool) = x True b2
```

### Inserting module parameters to function calls

In version 0 we inserted additional parameters to function calls to deal with the lifting of functions to the top level. For version 1 this no longer makes sense as functions remain in their original location and thus do not gain any parameters. There is however still a problem  when we evaluate a term:
```
module M (b : Bool) where 
    f : Bool 
    f = b
    
    g : Bool 
    g = f 

module N = M False 
main : (if N.g then Unit else Bool)
main = N.g
```
evaluating the type of `main` here will lead to `if M.f then Unit else Bool` but that makes no sense. `M.f` outside of `M` is a function not a Bool. Inserting b as a parameter to `f` also makes no sense as `f` inside `M` is a constant. 
We fix this by inserting term qualified names during scopechecking to produce:
```
module M (b : Bool) where 
    f : Bool 
    f = b
    
    g : Bool 
    g = (M b).f 

module N = M False 
main : (if N.g then Unit else Bool)
main = N.g
```
If we now evaluate the type of `main` we get `if (M False).f then Unit else Bool`. Term-qualified names simply create substitutions during signature lookup that can then be applied to any returned declaration. This solves our problem with a minor change to the scope-checker and a minor change to lookups. We can now also change our term typechecker to no longer return a modified term as the typechecker no longer needs to insert any parameters.