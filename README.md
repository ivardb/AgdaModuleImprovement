# Simple Agda type-checker

Simple Agda is a simplified version of Agda used by my master thesis (found here: TODO) to evaluate a variety of approaches to type-checking Agda's module system. The code is a heavily modified version of [pi-forall](https://github.com/sweirich/pi-forall).

Simple Agda is a dependently-typed language with type-in-type, primitve Boolean and Unit types as well as if-expressions and dependent-lambdas. The full syntax can be found as a [comment in the parser](version0/src/Parser.hs).

Simple Agda makes use of modules for namespacing. Each file has a top level module with the same name as the file. At the top level we can also import other files. Simple Agda has no notion of private and public however as we focus on the type-checking of the module system, not on the scope-checking.

Furthermore, Simple Agda also has module parameters and module aliases just like Agda:
```
module M (x : Bool) where
	f = x
b1 : Bool
b1 = M.f True

M2 = M True
b2 : Bool
b2 = M2.f
```
These are the main features that this thesis is focused on. At the time of writing, Agda removes modules completely during typechecking only leaving declarations. It does this by making all module parameters into normal function parameters and by creating new declarations for an alias that call the original declarations with the provided arguments. This approach leads to performance problems that need to be fixed.

This repository contains four type-checkers as well as code and experiments for evaluating the performance of the different versions. The type-checkers will output the modified files as a core file through a pretty-printer instead of through serialization. This is of course not what is done by Agda but it should help readers understand what the differences between the versions are. For a good understanding, readers can execute the test suite of all versions which will generate the core files of each of them for the [test files](tests/) showing the differences.

Concretely, this repository consists of the following folders, each having their own README with more details:

- [benching](benching/): Everything required to benchmark the various versions
- [tests](tests/): A shared set of tests for all versions as the source language remains the same
- [version0](version0/): The version of Simple Agda that type-checks the exact same as Agda (but for fewer features) 
- [version1](version1/): A version of Simple Agda that keeps modules and module parameters intact while still expanding aliases
- [version2](version2/): A version of Simple Agda that also keeps aliases intact (and thus performs the best).
- [version3](version3/): A version of Simple Agda that shows how the performance improvements can be used to easily solve a number of pretty-printing problems experienced by Agda. This version is not used by the experiments as it does not relate to performance and does not use the same surface language.