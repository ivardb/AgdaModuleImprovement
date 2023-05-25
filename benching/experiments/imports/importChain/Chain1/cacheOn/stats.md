# 
## experiments/imports\importChain\Chain1\Chain1Base1.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 0.9 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 1.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.7 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base1.sa"|avg: 11.8 ms, std: 2.7 ms, min: 9.8 ms, max: 20.0 ms|avg: 12.5 ms, std: 4.2 ms, min: 10.0 ms, max: 38.6 ms|avg: 12.9 ms, std: 5.6 ms, min: 9.9 ms, max: 43.9 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.0 ms, std: 0.4 ms, min: 2.6 ms, max: 5.0 ms|avg: 3.9 ms, std: 2.0 ms, min: 2.5 ms, max: 12.4 ms|avg: 2.6 ms, std: 0.6 ms, min: 2.1 ms, max: 5.1 ms
"TCAlias:Chain1Base1.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base1.M"|avg: 3.7 ms, std: 1.8 ms, min: 2.8 ms, max: 9.8 ms|avg: 3.2 ms, std: 2.5 ms, min: 2.2 ms, max: 18.0 ms|avg: 2.0 ms, std: 0.6 ms, min: 1.6 ms, max: 4.2 ms
"Total"|avg: 22.0 ms, std: 2.9 ms, min: 19.0 ms, max: 29.5 ms|avg: 23.9 ms, std: 7.8 ms, min: 18.3 ms, max: 66.0 ms|avg: 21.4 ms, std: 7.3 ms, min: 16.9 ms, max: 62.5 ms
"Total: Checking of Chain1Base1"|avg: 6.3 ms, std: 1.9 ms, min: 5.3 ms, max: 12.1 ms|avg: 6.3 ms, std: 3.5 ms, min: 4.8 ms, max: 23.5 ms|avg: 4.9 ms, std: 1.5 ms, min: 4.0 ms, max: 13.0 ms
"Total: Loading required modules from filesystem"|avg: 12.7 ms, std: 2.6 ms, min: 10.6 ms, max: 20.8 ms|avg: 13.7 ms, std: 4.4 ms, min: 10.8 ms, max: 40.4 ms|avg: 14.0 ms, std: 5.8 ms, min: 10.8 ms, max: 45.6 ms
"Total: ScopeCheck step"|avg: 2.0 ms, std: 0.3 ms, min: 1.7 ms, max: 3.4 ms|avg: 2.6 ms, std: 1.1 ms, min: 2.0 ms, max: 8.1 ms|avg: 2.5 ms, std: 1.0 ms, min: 1.9 ms, max: 8.9 ms
"Total: TypeCheck step"|avg: 4.3 ms, std: 1.8 ms, min: 3.4 ms, max: 10.3 ms|avg: 3.7 ms, std: 2.7 ms, min: 2.7 ms, max: 19.7 ms|avg: 2.4 ms, std: 0.7 ms, min: 1.9 ms, max: 4.7 ms
"Total: TypeChecking"|avg: 9.3 ms, std: 1.8 ms, min: 8.0 ms, max: 14.9 ms|avg: 10.2 ms, std: 4.6 ms, min: 7.4 ms, max: 30.7 ms|avg: 7.4 ms, std: 2.0 ms, min: 6.1 ms, max: 16.8 ms
"Total: WHNF"|avg: 0.8 ms, std: 0.9 ms, min: 0.3 ms, max: 6.8 ms|avg: 0.6 ms, std: 0.4 ms, min: 0.3 ms, max: 2.2 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.0 ms
"TypeCheck: Definitions"|avg: 2.4 ms, std: 1.2 ms, min: 1.7 ms, max: 8.3 ms|avg: 2.2 ms, std: 1.8 ms, min: 1.4 ms, max: 13.1 ms|avg: 1.5 ms, std: 0.4 ms, min: 1.2 ms, max: 3.1 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.3 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"TypeCheck: Signatures"|avg: 1.2 ms, std: 1.3 ms, min: 0.6 ms, max: 7.9 ms|avg: 0.9 ms, std: 0.5 ms, min: 0.6 ms, max: 3.9 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.0 ms

## experiments/imports\importChain\Chain1\Chain1Base10.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.1 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.8 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 1.9 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base10.sa"|avg: 10.9 ms, std: 1.7 ms, min: 9.9 ms, max: 17.1 ms|avg: 12.9 ms, std: 4.2 ms, min: 10.0 ms, max: 27.2 ms|avg: 13.7 ms, std: 7.3 ms, min: 10.1 ms, max: 56.2 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.2 ms, std: 1.2 ms, min: 2.7 ms, max: 9.2 ms|avg: 3.4 ms, std: 0.8 ms, min: 2.6 ms, max: 5.9 ms|avg: 2.6 ms, std: 1.1 ms, min: 2.0 ms, max: 7.6 ms
"TCAlias:Chain1Base10.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base10.M"|avg: 3.2 ms, std: 0.2 ms, min: 2.9 ms, max: 3.5 ms|avg: 2.9 ms, std: 1.2 ms, min: 2.2 ms, max: 9.0 ms|avg: 2.2 ms, std: 1.2 ms, min: 1.6 ms, max: 7.3 ms
"Total"|avg: 20.8 ms, std: 2.2 ms, min: 19.1 ms, max: 26.4 ms|avg: 23.8 ms, std: 6.0 ms, min: 18.7 ms, max: 46.6 ms|avg: 23.1 ms, std: 12.9 ms, min: 17.2 ms, max: 101.4 ms
"Total: Checking of Chain1Base10"|avg: 5.8 ms, std: 0.6 ms, min: 5.3 ms, max: 9.4 ms|avg: 6.4 ms, std: 2.5 ms, min: 4.8 ms, max: 17.2 ms|avg: 5.5 ms, std: 4.6 ms, min: 3.9 ms, max: 34.8 ms
"Total: Loading required modules from filesystem"|avg: 11.8 ms, std: 1.7 ms, min: 10.8 ms, max: 17.9 ms|avg: 14.0 ms, std: 4.4 ms, min: 10.9 ms, max: 28.6 ms|avg: 14.9 ms, std: 7.6 ms, min: 10.9 ms, max: 58.9 ms
"Total: ScopeCheck step"|avg: 2.0 ms, std: 0.6 ms, min: 1.7 ms, max: 5.6 ms|avg: 2.9 ms, std: 1.8 ms, min: 1.9 ms, max: 13.7 ms|avg: 2.9 ms, std: 3.6 ms, min: 1.9 ms, max: 26.8 ms
"Total: TypeCheck step"|avg: 3.7 ms, std: 0.2 ms, min: 3.4 ms, max: 4.0 ms|avg: 3.5 ms, std: 1.3 ms, min: 2.7 ms, max: 9.5 ms|avg: 2.6 ms, std: 1.3 ms, min: 1.9 ms, max: 8.0 ms
"Total: TypeChecking"|avg: 8.9 ms, std: 1.4 ms, min: 8.1 ms, max: 14.7 ms|avg: 9.8 ms, std: 3.0 ms, min: 7.5 ms, max: 23.1 ms|avg: 8.2 ms, std: 5.6 ms, min: 5.9 ms, max: 42.5 ms
"Total: WHNF"|avg: 0.6 ms, std: 0.2 ms, min: 0.4 ms, max: 1.3 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.4 ms, max: 1.3 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.3 ms
"TypeCheck: Definitions"|avg: 2.1 ms, std: 0.3 ms, min: 1.3 ms, max: 2.6 ms|avg: 1.9 ms, std: 0.6 ms, min: 1.4 ms, max: 4.2 ms|avg: 1.6 ms, std: 0.8 ms, min: 1.1 ms, max: 5.3 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.7 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.2 ms, min: 0.6 ms, max: 1.5 ms|avg: 1.0 ms, std: 1.0 ms, min: 0.6 ms, max: 7.5 ms|avg: 0.6 ms, std: 0.8 ms, min: 0.3 ms, max: 5.9 ms

## experiments/imports\importChain\Chain1\Chain1Base11.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.3 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.8 ms|avg: 0.8 ms, std: 0.2 ms, min: 0.7 ms, max: 1.4 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base11.sa"|avg: 11.2 ms, std: 2.5 ms, min: 9.9 ms, max: 21.7 ms|avg: 12.9 ms, std: 4.5 ms, min: 10.0 ms, max: 34.2 ms|avg: 13.0 ms, std: 4.8 ms, min: 10.0 ms, max: 30.1 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.2 ms, std: 1.4 ms, min: 2.6 ms, max: 9.2 ms|avg: 3.3 ms, std: 1.0 ms, min: 2.7 ms, max: 6.9 ms|avg: 2.9 ms, std: 1.9 ms, min: 2.0 ms, max: 15.4 ms
"TCAlias:Chain1Base11.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.3 ms
"TCMod:Chain1Base11.M"|avg: 3.5 ms, std: 1.4 ms, min: 2.9 ms, max: 9.9 ms|avg: 2.7 ms, std: 1.2 ms, min: 2.3 ms, max: 10.9 ms|avg: 2.3 ms, std: 1.5 ms, min: 1.6 ms, max: 9.8 ms
"Total"|avg: 21.7 ms, std: 3.2 ms, min: 19.0 ms, max: 30.8 ms|avg: 23.2 ms, std: 7.2 ms, min: 18.6 ms, max: 62.9 ms|avg: 22.3 ms, std: 8.4 ms, min: 17.2 ms, max: 66.5 ms
"Total: Checking of Chain1Base11"|avg: 6.3 ms, std: 1.9 ms, min: 5.3 ms, max: 13.2 ms|avg: 5.8 ms, std: 2.3 ms, min: 4.8 ms, max: 20.2 ms|avg: 5.3 ms, std: 2.8 ms, min: 4.0 ms, max: 21.9 ms
"Total: Loading required modules from filesystem"|avg: 12.2 ms, std: 2.5 ms, min: 10.7 ms, max: 22.5 ms|avg: 14.0 ms, std: 4.7 ms, min: 10.9 ms, max: 36.3 ms|avg: 14.1 ms, std: 4.9 ms, min: 11.0 ms, max: 31.2 ms
"Total: ScopeCheck step"|avg: 2.2 ms, std: 1.4 ms, min: 1.8 ms, max: 9.6 ms|avg: 2.5 ms, std: 1.1 ms, min: 2.0 ms, max: 8.0 ms|avg: 2.5 ms, std: 1.1 ms, min: 1.9 ms, max: 8.3 ms
"Total: TypeCheck step"|avg: 4.1 ms, std: 1.4 ms, min: 3.4 ms, max: 10.4 ms|avg: 3.3 ms, std: 1.5 ms, min: 2.7 ms, max: 13.5 ms|avg: 2.7 ms, std: 2.0 ms, min: 1.9 ms, max: 13.6 ms
"Total: TypeChecking"|avg: 9.6 ms, std: 2.3 ms, min: 8.0 ms, max: 16.2 ms|avg: 9.2 ms, std: 3.0 ms, min: 7.6 ms, max: 26.7 ms|avg: 8.2 ms, std: 4.6 ms, min: 6.1 ms, max: 37.4 ms
"Total: WHNF"|avg: 0.6 ms, std: 0.1 ms, min: 0.4 ms, max: 0.9 ms|avg: 0.5 ms, std: 0.1 ms, min: 0.4 ms, max: 1.2 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.5 ms
"TypeCheck: Definitions"|avg: 2.2 ms, std: 0.8 ms, min: 1.7 ms, max: 7.3 ms|avg: 1.8 ms, std: 0.9 ms, min: 1.4 ms, max: 8.0 ms|avg: 1.7 ms, std: 1.3 ms, min: 1.2 ms, max: 9.0 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.3 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.3 ms
"TypeCheck: Signatures"|avg: 1.3 ms, std: 1.2 ms, min: 0.7 ms, max: 7.6 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.8 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.4 ms, max: 2.0 ms

## experiments/imports\importChain\Chain1\Chain1Base12.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.0 ms|avg: 0.9 ms, std: 0.4 ms, min: 0.7 ms, max: 2.4 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.9 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base12.sa"|avg: 10.7 ms, std: 1.5 ms, min: 9.5 ms, max: 15.7 ms|avg: 13.4 ms, std: 5.9 ms, min: 9.7 ms, max: 40.5 ms|avg: 14.4 ms, std: 7.3 ms, min: 9.8 ms, max: 46.2 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 2.8 ms, std: 0.8 ms, min: 2.4 ms, max: 7.1 ms|avg: 3.2 ms, std: 1.2 ms, min: 2.4 ms, max: 9.2 ms|avg: 2.5 ms, std: 0.8 ms, min: 1.9 ms, max: 5.8 ms
"TCAlias:Chain1Base12.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base12.M"|avg: 3.0 ms, std: 0.4 ms, min: 2.8 ms, max: 4.5 ms|avg: 2.7 ms, std: 1.7 ms, min: 2.1 ms, max: 13.3 ms|avg: 1.9 ms, std: 0.9 ms, min: 1.4 ms, max: 5.3 ms
"Total"|avg: 19.8 ms, std: 2.0 ms, min: 17.9 ms, max: 27.8 ms|avg: 24.2 ms, std: 10.0 ms, min: 17.8 ms, max: 66.3 ms|avg: 22.9 ms, std: 9.4 ms, min: 16.4 ms, max: 60.4 ms
"Total: Checking of Chain1Base12"|avg: 5.4 ms, std: 0.8 ms, min: 5.0 ms, max: 10.2 ms|avg: 6.4 ms, std: 4.8 ms, min: 4.5 ms, max: 34.6 ms|avg: 4.8 ms, std: 1.9 ms, min: 3.7 ms, max: 12.4 ms
"Total: Loading required modules from filesystem"|avg: 11.6 ms, std: 1.5 ms, min: 10.3 ms, max: 16.9 ms|avg: 14.6 ms, std: 6.3 ms, min: 10.6 ms, max: 43.2 ms|avg: 15.6 ms, std: 7.4 ms, min: 10.7 ms, max: 48.3 ms
"Total: ScopeCheck step"|avg: 1.8 ms, std: 0.5 ms, min: 1.6 ms, max: 5.3 ms|avg: 3.2 ms, std: 3.9 ms, min: 1.9 ms, max: 27.7 ms|avg: 2.4 ms, std: 1.1 ms, min: 1.8 ms, max: 7.2 ms
"Total: TypeCheck step"|avg: 3.6 ms, std: 0.5 ms, min: 3.3 ms, max: 6.2 ms|avg: 3.2 ms, std: 1.8 ms, min: 2.5 ms, max: 13.8 ms|avg: 2.3 ms, std: 1.0 ms, min: 1.8 ms, max: 6.1 ms
"Total: TypeChecking"|avg: 8.2 ms, std: 1.1 ms, min: 7.5 ms, max: 12.7 ms|avg: 9.6 ms, std: 5.4 ms, min: 7.0 ms, max: 40.4 ms|avg: 7.3 ms, std: 2.6 ms, min: 5.7 ms, max: 18.3 ms
"Total: WHNF"|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.2 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.1 ms|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.9 ms
"TypeCheck: Definitions"|avg: 2.1 ms, std: 0.3 ms, min: 1.5 ms, max: 3.3 ms|avg: 1.9 ms, std: 1.6 ms, min: 1.3 ms, max: 12.5 ms|avg: 1.5 ms, std: 0.6 ms, min: 1.1 ms, max: 4.1 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.3 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TypeCheck: Signatures"|avg: 0.9 ms, std: 0.3 ms, min: 0.5 ms, max: 1.9 ms|avg: 0.7 ms, std: 0.2 ms, min: 0.5 ms, max: 1.5 ms|avg: 0.4 ms, std: 0.3 ms, min: 0.3 ms, max: 1.8 ms

## experiments/imports\importChain\Chain1\Chain1Base13.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.0 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.0 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.7 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base13.sa"|avg: 11.5 ms, std: 2.7 ms, min: 9.8 ms, max: 21.7 ms|avg: 12.3 ms, std: 4.2 ms, min: 9.7 ms, max: 31.8 ms|avg: 12.9 ms, std: 3.7 ms, min: 9.9 ms, max: 25.5 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.0 ms, std: 0.8 ms, min: 2.6 ms, max: 8.1 ms|avg: 3.5 ms, std: 1.4 ms, min: 2.6 ms, max: 9.6 ms|avg: 2.7 ms, std: 0.9 ms, min: 2.0 ms, max: 5.4 ms
"TCAlias:Chain1Base13.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base13.M"|avg: 3.5 ms, std: 1.3 ms, min: 2.9 ms, max: 9.1 ms|avg: 3.4 ms, std: 2.5 ms, min: 2.2 ms, max: 15.9 ms|avg: 2.2 ms, std: 1.0 ms, min: 1.6 ms, max: 6.1 ms
"Total"|avg: 21.4 ms, std: 3.0 ms, min: 19.0 ms, max: 31.2 ms|avg: 23.8 ms, std: 7.9 ms, min: 18.4 ms, max: 55.2 ms|avg: 22.1 ms, std: 5.7 ms, min: 16.9 ms, max: 44.6 ms
"Total: Checking of Chain1Base13"|avg: 6.0 ms, std: 1.4 ms, min: 5.3 ms, max: 11.6 ms|avg: 6.8 ms, std: 3.2 ms, min: 4.7 ms, max: 18.3 ms|avg: 5.2 ms, std: 1.8 ms, min: 3.9 ms, max: 12.2 ms
"Total: Loading required modules from filesystem"|avg: 12.4 ms, std: 2.7 ms, min: 10.7 ms, max: 22.7 ms|avg: 13.5 ms, std: 4.4 ms, min: 10.8 ms, max: 33.7 ms|avg: 14.1 ms, std: 3.9 ms, min: 10.9 ms, max: 27.7 ms
"Total: ScopeCheck step"|avg: 1.9 ms, std: 0.1 ms, min: 1.7 ms, max: 2.4 ms|avg: 2.7 ms, std: 1.2 ms, min: 1.9 ms, max: 7.1 ms|avg: 2.5 ms, std: 0.9 ms, min: 1.9 ms, max: 6.2 ms
"Total: TypeCheck step"|avg: 4.1 ms, std: 1.4 ms, min: 3.4 ms, max: 9.6 ms|avg: 4.1 ms, std: 2.7 ms, min: 2.7 ms, max: 16.3 ms|avg: 2.7 ms, std: 1.2 ms, min: 1.9 ms, max: 7.1 ms
"Total: TypeChecking"|avg: 9.0 ms, std: 1.5 ms, min: 8.1 ms, max: 14.3 ms|avg: 10.4 ms, std: 4.2 ms, min: 7.4 ms, max: 26.8 ms|avg: 7.9 ms, std: 2.4 ms, min: 6.0 ms, max: 16.9 ms
"Total: WHNF"|avg: 0.7 ms, std: 0.9 ms, min: 0.3 ms, max: 6.6 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.6 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 1.8 ms
"TypeCheck: Definitions"|avg: 2.3 ms, std: 1.0 ms, min: 1.7 ms, max: 7.9 ms|avg: 2.2 ms, std: 1.5 ms, min: 1.4 ms, max: 8.9 ms|avg: 1.6 ms, std: 0.7 ms, min: 1.2 ms, max: 4.7 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.2 ms, std: 0.7 ms, min: 0.1 ms, max: 5.3 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 0.8 ms, min: 0.6 ms, max: 6.8 ms|avg: 0.9 ms, std: 0.6 ms, min: 0.6 ms, max: 4.3 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.4 ms

## experiments/imports\importChain\Chain1\Chain1Base14.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.0 ms|avg: 1.0 ms, std: 1.0 ms, min: 0.7 ms, max: 7.6 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.8 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base14.sa"|avg: 11.1 ms, std: 2.5 ms, min: 9.7 ms, max: 20.8 ms|avg: 13.7 ms, std: 7.3 ms, min: 9.7 ms, max: 57.3 ms|avg: 12.8 ms, std: 5.1 ms, min: 9.7 ms, max: 32.8 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 2.9 ms, std: 0.8 ms, min: 2.5 ms, max: 7.5 ms|avg: 3.4 ms, std: 1.0 ms, min: 2.6 ms, max: 7.9 ms|avg: 2.9 ms, std: 1.3 ms, min: 2.0 ms, max: 8.7 ms
"TCAlias:Chain1Base14.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base14.M"|avg: 3.3 ms, std: 0.7 ms, min: 2.9 ms, max: 7.7 ms|avg: 3.0 ms, std: 1.6 ms, min: 2.1 ms, max: 11.0 ms|avg: 2.0 ms, std: 0.7 ms, min: 1.5 ms, max: 5.0 ms
"Total"|avg: 21.0 ms, std: 2.8 ms, min: 18.5 ms, max: 30.2 ms|avg: 24.6 ms, std: 9.6 ms, min: 18.2 ms, max: 80.8 ms|avg: 21.6 ms, std: 7.0 ms, min: 16.7 ms, max: 46.6 ms
"Total: Checking of Chain1Base14"|avg: 6.1 ms, std: 1.6 ms, min: 5.2 ms, max: 11.9 ms|avg: 6.1 ms, std: 2.4 ms, min: 4.6 ms, max: 14.8 ms|avg: 4.8 ms, std: 1.8 ms, min: 3.8 ms, max: 14.0 ms
"Total: Loading required modules from filesystem"|avg: 12.0 ms, std: 2.6 ms, min: 10.6 ms, max: 21.8 ms|avg: 15.0 ms, std: 7.6 ms, min: 10.7 ms, max: 60.0 ms|avg: 14.0 ms, std: 5.2 ms, min: 10.7 ms, max: 34.1 ms
"Total: ScopeCheck step"|avg: 2.2 ms, std: 1.2 ms, min: 1.7 ms, max: 7.7 ms|avg: 2.5 ms, std: 1.5 ms, min: 1.9 ms, max: 12.1 ms|avg: 2.4 ms, std: 1.5 ms, min: 1.8 ms, max: 12.0 ms
"Total: TypeCheck step"|avg: 3.9 ms, std: 0.8 ms, min: 3.4 ms, max: 8.2 ms|avg: 3.6 ms, std: 1.7 ms, min: 2.5 ms, max: 11.4 ms|avg: 2.3 ms, std: 0.8 ms, min: 1.8 ms, max: 5.7 ms
"Total: TypeChecking"|avg: 9.0 ms, std: 1.7 ms, min: 7.8 ms, max: 14.5 ms|avg: 9.6 ms, std: 3.0 ms, min: 7.2 ms, max: 20.9 ms|avg: 7.7 ms, std: 2.6 ms, min: 5.8 ms, max: 16.5 ms
"Total: WHNF"|avg: 0.6 ms, std: 0.3 ms, min: 0.3 ms, max: 1.7 ms|avg: 0.5 ms, std: 0.6 ms, min: 0.3 ms, max: 4.7 ms|avg: 0.4 ms, std: 0.1 ms, min: 0.3 ms, max: 0.9 ms
"TypeCheck: Definitions"|avg: 2.3 ms, std: 0.6 ms, min: 1.7 ms, max: 5.6 ms|avg: 2.1 ms, std: 1.4 ms, min: 1.4 ms, max: 10.3 ms|avg: 1.5 ms, std: 0.6 ms, min: 1.1 ms, max: 4.0 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.3 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TypeCheck: Signatures"|avg: 0.9 ms, std: 0.2 ms, min: 0.5 ms, max: 1.9 ms|avg: 0.8 ms, std: 0.5 ms, min: 0.5 ms, max: 4.2 ms|avg: 0.4 ms, std: 0.1 ms, min: 0.3 ms, max: 0.9 ms

## experiments/imports\importChain\Chain1\Chain1Base15.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.0 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.1 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.6 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base15.sa"|avg: 11.4 ms, std: 2.4 ms, min: 9.8 ms, max: 19.4 ms|avg: 13.2 ms, std: 7.2 ms, min: 10.0 ms, max: 57.4 ms|avg: 14.0 ms, std: 6.0 ms, min: 10.0 ms, max: 46.9 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.1 ms, std: 1.0 ms, min: 2.5 ms, max: 8.4 ms|avg: 3.7 ms, std: 1.7 ms, min: 2.6 ms, max: 10.5 ms|avg: 2.7 ms, std: 1.2 ms, min: 2.0 ms, max: 9.8 ms
"TCAlias:Chain1Base15.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base15.M"|avg: 3.5 ms, std: 1.3 ms, min: 2.9 ms, max: 9.0 ms|avg: 2.7 ms, std: 0.9 ms, min: 2.2 ms, max: 7.7 ms|avg: 2.1 ms, std: 0.9 ms, min: 1.5 ms, max: 6.2 ms
"Total"|avg: 21.8 ms, std: 3.1 ms, min: 18.7 ms, max: 29.0 ms|avg: 24.0 ms, std: 10.5 ms, min: 18.3 ms, max: 88.6 ms|avg: 22.8 ms, std: 7.9 ms, min: 17.2 ms, max: 63.7 ms
"Total: Checking of Chain1Base15"|avg: 6.4 ms, std: 2.0 ms, min: 5.3 ms, max: 11.8 ms|avg: 5.9 ms, std: 2.2 ms, min: 4.7 ms, max: 18.6 ms|avg: 4.8 ms, std: 1.4 ms, min: 3.9 ms, max: 11.3 ms
"Total: Loading required modules from filesystem"|avg: 12.3 ms, std: 2.4 ms, min: 10.6 ms, max: 20.4 ms|avg: 14.4 ms, std: 7.4 ms, min: 10.8 ms, max: 59.5 ms|avg: 15.2 ms, std: 6.2 ms, min: 11.0 ms, max: 48.7 ms
"Total: ScopeCheck step"|avg: 2.1 ms, std: 1.0 ms, min: 1.7 ms, max: 6.6 ms|avg: 2.6 ms, std: 1.5 ms, min: 1.9 ms, max: 9.9 ms|avg: 2.3 ms, std: 0.6 ms, min: 1.9 ms, max: 4.3 ms
"Total: TypeCheck step"|avg: 4.3 ms, std: 1.6 ms, min: 3.4 ms, max: 9.6 ms|avg: 3.3 ms, std: 1.1 ms, min: 2.7 ms, max: 8.9 ms|avg: 2.5 ms, std: 1.0 ms, min: 1.8 ms, max: 6.9 ms
"Total: TypeChecking"|avg: 9.5 ms, std: 2.2 ms, min: 8.0 ms, max: 14.6 ms|avg: 9.6 ms, std: 3.4 ms, min: 7.3 ms, max: 29.1 ms|avg: 7.6 ms, std: 2.2 ms, min: 6.0 ms, max: 15.0 ms
"Total: WHNF"|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 0.9 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.3 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.4 ms
"TypeCheck: Definitions"|avg: 2.5 ms, std: 1.3 ms, min: 1.6 ms, max: 7.6 ms|avg: 1.8 ms, std: 0.6 ms, min: 1.4 ms, max: 4.6 ms|avg: 1.5 ms, std: 0.6 ms, min: 1.1 ms, max: 4.7 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.6 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TypeCheck: Signatures"|avg: 0.9 ms, std: 0.2 ms, min: 0.6 ms, max: 1.4 ms|avg: 0.8 ms, std: 0.4 ms, min: 0.6 ms, max: 3.0 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 1.6 ms

## experiments/imports\importChain\Chain1\Chain1Base2.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 0.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.6 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.6 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base2.sa"|avg: 10.9 ms, std: 2.0 ms, min: 9.6 ms, max: 20.6 ms|avg: 13.9 ms, std: 9.8 ms, min: 9.9 ms, max: 75.6 ms|avg: 13.5 ms, std: 6.1 ms, min: 9.9 ms, max: 41.6 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 2.9 ms, std: 0.8 ms, min: 2.5 ms, max: 7.2 ms|avg: 3.3 ms, std: 1.5 ms, min: 2.5 ms, max: 10.7 ms|avg: 2.8 ms, std: 1.1 ms, min: 1.9 ms, max: 6.3 ms
"TCAlias:Chain1Base2.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base2.M"|avg: 3.2 ms, std: 0.6 ms, min: 2.8 ms, max: 7.0 ms|avg: 2.8 ms, std: 1.5 ms, min: 2.1 ms, max: 11.6 ms|avg: 2.3 ms, std: 1.4 ms, min: 1.5 ms, max: 7.5 ms
"Total"|avg: 20.5 ms, std: 2.4 ms, min: 18.5 ms, max: 29.5 ms|avg: 24.6 ms, std: 13.9 ms, min: 18.0 ms, max: 111.7 ms|avg: 23.1 ms, std: 9.1 ms, min: 16.8 ms, max: 63.6 ms
"Total: Checking of Chain1Base2"|avg: 5.8 ms, std: 1.4 ms, min: 5.1 ms, max: 11.2 ms|avg: 6.3 ms, std: 3.5 ms, min: 4.6 ms, max: 23.3 ms|avg: 5.6 ms, std: 2.9 ms, min: 3.7 ms, max: 17.0 ms
"Total: Loading required modules from filesystem"|avg: 11.8 ms, std: 2.0 ms, min: 10.4 ms, max: 21.5 ms|avg: 15.0 ms, std: 10.0 ms, min: 10.8 ms, max: 77.7 ms|avg: 14.6 ms, std: 6.4 ms, min: 10.9 ms, max: 43.7 ms
"Total: ScopeCheck step"|avg: 1.9 ms, std: 0.8 ms, min: 1.6 ms, max: 7.7 ms|avg: 2.7 ms, std: 2.0 ms, min: 1.9 ms, max: 12.0 ms|avg: 2.9 ms, std: 2.2 ms, min: 1.8 ms, max: 15.0 ms
"Total: TypeCheck step"|avg: 3.9 ms, std: 1.1 ms, min: 3.4 ms, max: 8.8 ms|avg: 3.6 ms, std: 2.2 ms, min: 2.5 ms, max: 14.0 ms|avg: 2.7 ms, std: 1.6 ms, min: 1.8 ms, max: 8.4 ms
"Total: TypeChecking"|avg: 8.7 ms, std: 1.6 ms, min: 7.7 ms, max: 13.7 ms|avg: 9.6 ms, std: 4.6 ms, min: 7.2 ms, max: 34.0 ms|avg: 8.5 ms, std: 3.5 ms, min: 5.7 ms, max: 19.9 ms
"Total: WHNF"|avg: 0.6 ms, std: 0.2 ms, min: 0.3 ms, max: 1.6 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.8 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 1.6 ms
"TypeCheck: Definitions"|avg: 2.2 ms, std: 0.5 ms, min: 1.8 ms, max: 5.3 ms|avg: 1.9 ms, std: 1.0 ms, min: 1.4 ms, max: 7.6 ms|avg: 1.8 ms, std: 1.2 ms, min: 1.1 ms, max: 7.1 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.6 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TypeCheck: Signatures"|avg: 0.9 ms, std: 0.2 ms, min: 0.6 ms, max: 1.5 ms|avg: 0.8 ms, std: 0.5 ms, min: 0.6 ms, max: 3.5 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 2.2 ms

## experiments/imports\importChain\Chain1\Chain1Base3.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.3 ms|avg: 1.0 ms, std: 0.8 ms, min: 0.7 ms, max: 6.5 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.4 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base3.sa"|avg: 10.5 ms, std: 1.0 ms, min: 9.6 ms, max: 15.7 ms|avg: 14.4 ms, std: 15.3 ms, min: 9.8 ms, max: 119.1 ms|avg: 13.8 ms, std: 7.5 ms, min: 9.8 ms, max: 43.6 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.2 ms, std: 1.4 ms, min: 2.6 ms, max: 9.1 ms|avg: 3.7 ms, std: 2.0 ms, min: 2.6 ms, max: 13.0 ms|avg: 2.8 ms, std: 1.1 ms, min: 2.0 ms, max: 7.0 ms
"TCAlias:Chain1Base3.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base3.M"|avg: 3.4 ms, std: 1.1 ms, min: 2.9 ms, max: 8.0 ms|avg: 3.1 ms, std: 1.7 ms, min: 2.2 ms, max: 12.1 ms|avg: 2.3 ms, std: 1.5 ms, min: 1.5 ms, max: 9.2 ms
"Total"|avg: 20.4 ms, std: 2.0 ms, min: 18.8 ms, max: 25.9 ms|avg: 25.6 ms, std: 20.5 ms, min: 18.2 ms, max: 165.2 ms|avg: 23.4 ms, std: 10.0 ms, min: 16.6 ms, max: 56.9 ms
"Total: Checking of Chain1Base3"|avg: 5.8 ms, std: 1.2 ms, min: 5.1 ms, max: 10.3 ms|avg: 6.4 ms, std: 3.9 ms, min: 4.7 ms, max: 30.8 ms|avg: 5.7 ms, std: 3.3 ms, min: 3.8 ms, max: 20.2 ms
"Total: Loading required modules from filesystem"|avg: 11.4 ms, std: 1.1 ms, min: 10.5 ms, max: 17.2 ms|avg: 15.6 ms, std: 15.4 ms, min: 10.8 ms, max: 121.4 ms|avg: 14.9 ms, std: 7.7 ms, min: 10.8 ms, max: 45.1 ms
"Total: ScopeCheck step"|avg: 1.8 ms, std: 0.1 ms, min: 1.6 ms, max: 2.2 ms|avg: 2.6 ms, std: 1.9 ms, min: 1.9 ms, max: 15.5 ms|avg: 3.0 ms, std: 2.6 ms, min: 1.8 ms, max: 17.6 ms
"Total: TypeCheck step"|avg: 4.0 ms, std: 1.2 ms, min: 3.4 ms, max: 8.6 ms|avg: 3.7 ms, std: 2.1 ms, min: 2.7 ms, max: 15.2 ms|avg: 2.7 ms, std: 1.6 ms, min: 1.8 ms, max: 9.5 ms
"Total: TypeChecking"|avg: 9.0 ms, std: 1.8 ms, min: 7.7 ms, max: 14.8 ms|avg: 10.0 ms, std: 5.5 ms, min: 7.3 ms, max: 43.8 ms|avg: 8.5 ms, std: 3.8 ms, min: 5.8 ms, max: 23.2 ms
"Total: WHNF"|avg: 0.7 ms, std: 0.7 ms, min: 0.3 ms, max: 5.2 ms|avg: 0.6 ms, std: 0.3 ms, min: 0.4 ms, max: 2.3 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 2.1 ms
"TypeCheck: Definitions"|avg: 2.4 ms, std: 1.0 ms, min: 1.8 ms, max: 7.2 ms|avg: 2.1 ms, std: 1.2 ms, min: 1.5 ms, max: 9.0 ms|avg: 1.8 ms, std: 1.3 ms, min: 1.1 ms, max: 8.7 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.3 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.3 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"TypeCheck: Signatures"|avg: 0.9 ms, std: 0.2 ms, min: 0.5 ms, max: 1.9 ms|avg: 0.9 ms, std: 0.9 ms, min: 0.6 ms, max: 6.4 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.4 ms

## experiments/imports\importChain\Chain1\Chain1Base4.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.1 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 1.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.8 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base4.sa"|avg: 10.7 ms, std: 1.6 ms, min: 9.6 ms, max: 16.7 ms|avg: 12.9 ms, std: 6.0 ms, min: 9.8 ms, max: 37.2 ms|avg: 14.1 ms, std: 6.7 ms, min: 9.7 ms, max: 41.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.1 ms, std: 1.3 ms, min: 2.5 ms, max: 8.8 ms|avg: 3.4 ms, std: 1.5 ms, min: 2.4 ms, max: 12.0 ms|avg: 3.0 ms, std: 1.5 ms, min: 1.9 ms, max: 8.9 ms
"TCAlias:Chain1Base4.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base4.M"|avg: 3.1 ms, std: 0.6 ms, min: 2.8 ms, max: 7.3 ms|avg: 3.0 ms, std: 1.9 ms, min: 2.1 ms, max: 14.4 ms|avg: 2.2 ms, std: 1.0 ms, min: 1.5 ms, max: 5.5 ms
"Total"|avg: 20.3 ms, std: 2.1 ms, min: 18.3 ms, max: 26.2 ms|avg: 24.0 ms, std: 10.0 ms, min: 18.2 ms, max: 78.6 ms|avg: 23.1 ms, std: 9.2 ms, min: 16.6 ms, max: 62.1 ms
"Total: Checking of Chain1Base4"|avg: 5.5 ms, std: 1.0 ms, min: 5.1 ms, max: 10.7 ms|avg: 6.5 ms, std: 3.5 ms, min: 4.6 ms, max: 27.3 ms|avg: 4.8 ms, std: 1.6 ms, min: 3.8 ms, max: 9.9 ms
"Total: Loading required modules from filesystem"|avg: 11.6 ms, std: 1.6 ms, min: 10.5 ms, max: 17.5 ms|avg: 14.0 ms, std: 6.2 ms, min: 10.7 ms, max: 39.1 ms|avg: 15.3 ms, std: 6.9 ms, min: 10.7 ms, max: 43.3 ms
"Total: ScopeCheck step"|avg: 1.9 ms, std: 0.8 ms, min: 1.6 ms, max: 7.3 ms|avg: 2.8 ms, std: 1.6 ms, min: 1.9 ms, max: 8.5 ms|avg: 2.2 ms, std: 0.5 ms, min: 1.8 ms, max: 4.3 ms
"Total: TypeCheck step"|avg: 3.6 ms, std: 0.6 ms, min: 3.3 ms, max: 7.8 ms|avg: 3.6 ms, std: 2.5 ms, min: 2.6 ms, max: 19.1 ms|avg: 2.6 ms, std: 1.2 ms, min: 1.8 ms, max: 6.6 ms
"Total: TypeChecking"|avg: 8.7 ms, std: 1.7 ms, min: 7.6 ms, max: 14.3 ms|avg: 9.9 ms, std: 4.7 ms, min: 7.2 ms, max: 39.4 ms|avg: 7.9 ms, std: 2.9 ms, min: 5.8 ms, max: 18.8 ms
"Total: WHNF"|avg: 0.7 ms, std: 0.6 ms, min: 0.3 ms, max: 4.8 ms|avg: 0.6 ms, std: 0.4 ms, min: 0.4 ms, max: 2.6 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.5 ms
"TypeCheck: Definitions"|avg: 2.1 ms, std: 0.7 ms, min: 1.6 ms, max: 6.6 ms|avg: 2.1 ms, std: 1.3 ms, min: 1.4 ms, max: 10.0 ms|avg: 1.7 ms, std: 0.8 ms, min: 1.1 ms, max: 4.2 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.1 ms, std: 0.2 ms, min: 0.1 ms, max: 1.2 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"TypeCheck: Signatures"|avg: 0.9 ms, std: 0.2 ms, min: 0.5 ms, max: 1.4 ms|avg: 0.8 ms, std: 0.4 ms, min: 0.6 ms, max: 3.3 ms|avg: 0.4 ms, std: 0.3 ms, min: 0.3 ms, max: 1.5 ms

## experiments/imports\importChain\Chain1\Chain1Base5.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 0.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 2.0 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.8 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base5.sa"|avg: 11.5 ms, std: 2.6 ms, min: 9.7 ms, max: 23.3 ms|avg: 12.3 ms, std: 3.7 ms, min: 9.9 ms, max: 31.5 ms|avg: 14.7 ms, std: 8.6 ms, min: 9.9 ms, max: 66.4 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.3 ms, std: 1.9 ms, min: 2.6 ms, max: 14.7 ms|avg: 4.0 ms, std: 2.9 ms, min: 2.6 ms, max: 18.6 ms|avg: 2.7 ms, std: 0.9 ms, min: 2.0 ms, max: 6.1 ms
"TCAlias:Chain1Base5.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base5.M"|avg: 3.3 ms, std: 0.7 ms, min: 2.9 ms, max: 6.9 ms|avg: 3.2 ms, std: 1.7 ms, min: 2.3 ms, max: 12.4 ms|avg: 2.3 ms, std: 1.4 ms, min: 1.6 ms, max: 10.2 ms
"Total"|avg: 21.7 ms, std: 3.1 ms, min: 18.9 ms, max: 32.5 ms|avg: 23.8 ms, std: 7.8 ms, min: 18.5 ms, max: 55.7 ms|avg: 23.9 ms, std: 12.1 ms, min: 17.0 ms, max: 93.3 ms
"Total: Checking of Chain1Base5"|avg: 5.9 ms, std: 1.1 ms, min: 5.3 ms, max: 10.9 ms|avg: 6.3 ms, std: 2.5 ms, min: 4.6 ms, max: 16.9 ms|avg: 5.4 ms, std: 3.0 ms, min: 3.9 ms, max: 20.0 ms
"Total: Loading required modules from filesystem"|avg: 12.5 ms, std: 2.6 ms, min: 10.6 ms, max: 24.2 ms|avg: 13.5 ms, std: 3.8 ms, min: 10.9 ms, max: 34.0 ms|avg: 15.8 ms, std: 8.8 ms, min: 10.9 ms, max: 68.0 ms
"Total: ScopeCheck step"|avg: 2.0 ms, std: 0.8 ms, min: 1.7 ms, max: 7.2 ms|avg: 2.5 ms, std: 0.9 ms, min: 1.9 ms, max: 6.0 ms|avg: 2.7 ms, std: 1.8 ms, min: 1.8 ms, max: 13.6 ms
"Total: TypeCheck step"|avg: 3.9 ms, std: 0.8 ms, min: 3.4 ms, max: 7.6 ms|avg: 3.7 ms, std: 1.9 ms, min: 2.7 ms, max: 14.0 ms|avg: 2.7 ms, std: 1.5 ms, min: 1.9 ms, max: 11.5 ms
"Total: TypeChecking"|avg: 9.2 ms, std: 2.1 ms, min: 8.0 ms, max: 20.1 ms|avg: 10.3 ms, std: 5.0 ms, min: 7.4 ms, max: 32.4 ms|avg: 8.1 ms, std: 3.7 ms, min: 6.0 ms, max: 25.2 ms
"Total: WHNF"|avg: 0.6 ms, std: 0.2 ms, min: 0.4 ms, max: 1.3 ms|avg: 0.6 ms, std: 0.4 ms, min: 0.3 ms, max: 2.4 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.9 ms
"TypeCheck: Definitions"|avg: 2.2 ms, std: 0.3 ms, min: 1.8 ms, max: 3.8 ms|avg: 2.2 ms, std: 1.3 ms, min: 1.4 ms, max: 8.4 ms|avg: 1.7 ms, std: 0.9 ms, min: 1.1 ms, max: 6.7 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.3 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.6 ms, min: 0.6 ms, max: 4.8 ms|avg: 0.9 ms, std: 0.4 ms, min: 0.6 ms, max: 3.0 ms|avg: 0.6 ms, std: 0.4 ms, min: 0.3 ms, max: 2.9 ms

## experiments/imports\importChain\Chain1\Chain1Base6.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 0.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.7 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base6.sa"|avg: 11.3 ms, std: 2.7 ms, min: 9.9 ms, max: 26.2 ms|avg: 13.4 ms, std: 6.5 ms, min: 10.1 ms, max: 50.1 ms|avg: 13.8 ms, std: 5.5 ms, min: 9.9 ms, max: 36.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.1 ms, std: 1.1 ms, min: 2.6 ms, max: 7.6 ms|avg: 3.6 ms, std: 1.2 ms, min: 2.6 ms, max: 8.4 ms|avg: 2.8 ms, std: 1.2 ms, min: 2.0 ms, max: 6.9 ms
"TCAlias:Chain1Base6.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base6.M"|avg: 3.7 ms, std: 1.7 ms, min: 3.0 ms, max: 11.9 ms|avg: 3.2 ms, std: 1.8 ms, min: 2.3 ms, max: 13.5 ms|avg: 2.2 ms, std: 1.0 ms, min: 1.6 ms, max: 6.7 ms
"Total"|avg: 21.7 ms, std: 3.3 ms, min: 18.8 ms, max: 35.3 ms|avg: 24.7 ms, std: 8.7 ms, min: 18.6 ms, max: 63.2 ms|avg: 23.3 ms, std: 7.8 ms, min: 16.9 ms, max: 57.9 ms
"Total: Checking of Chain1Base6"|avg: 6.3 ms, std: 1.9 ms, min: 5.2 ms, max: 14.2 ms|avg: 6.5 ms, std: 3.2 ms, min: 4.8 ms, max: 25.1 ms|avg: 5.5 ms, std: 2.5 ms, min: 3.9 ms, max: 14.7 ms
"Total: Loading required modules from filesystem"|avg: 12.2 ms, std: 2.7 ms, min: 10.8 ms, max: 27.0 ms|avg: 14.6 ms, std: 6.7 ms, min: 10.9 ms, max: 52.0 ms|avg: 14.9 ms, std: 5.6 ms, min: 10.8 ms, max: 37.9 ms
"Total: ScopeCheck step"|avg: 2.1 ms, std: 1.1 ms, min: 1.7 ms, max: 7.8 ms|avg: 2.7 ms, std: 1.4 ms, min: 2.0 ms, max: 10.4 ms|avg: 2.9 ms, std: 1.9 ms, min: 1.8 ms, max: 12.3 ms
"Total: TypeCheck step"|avg: 4.2 ms, std: 1.7 ms, min: 3.5 ms, max: 12.5 ms|avg: 3.8 ms, std: 2.0 ms, min: 2.7 ms, max: 14.7 ms|avg: 2.6 ms, std: 1.1 ms, min: 1.9 ms, max: 7.8 ms
"Total: TypeChecking"|avg: 9.4 ms, std: 2.2 ms, min: 7.9 ms, max: 16.9 ms|avg: 10.1 ms, std: 4.0 ms, min: 7.6 ms, max: 33.2 ms|avg: 8.4 ms, std: 3.3 ms, min: 5.9 ms, max: 20.0 ms
"Total: WHNF"|avg: 0.6 ms, std: 0.2 ms, min: 0.4 ms, max: 1.0 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.4 ms, max: 1.8 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 2.0 ms
"TypeCheck: Definitions"|avg: 2.6 ms, std: 1.7 ms, min: 1.7 ms, max: 10.7 ms|avg: 2.1 ms, std: 1.2 ms, min: 1.4 ms, max: 7.0 ms|avg: 1.6 ms, std: 0.7 ms, min: 1.1 ms, max: 5.1 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.7 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.2 ms, min: 0.6 ms, max: 1.6 ms|avg: 1.0 ms, std: 0.8 ms, min: 0.6 ms, max: 6.1 ms|avg: 0.6 ms, std: 0.3 ms, min: 0.4 ms, max: 1.5 ms

## experiments/imports\importChain\Chain1\Chain1Base7.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.1 ms|avg: 1.0 ms, std: 0.5 ms, min: 0.7 ms, max: 4.1 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.6 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base7.sa"|avg: 10.8 ms, std: 1.4 ms, min: 9.9 ms, max: 16.6 ms|avg: 13.2 ms, std: 5.9 ms, min: 9.8 ms, max: 38.6 ms|avg: 13.8 ms, std: 6.7 ms, min: 9.8 ms, max: 49.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.0 ms, std: 0.8 ms, min: 2.6 ms, max: 8.2 ms|avg: 3.8 ms, std: 2.0 ms, min: 2.5 ms, max: 13.9 ms|avg: 2.6 ms, std: 0.7 ms, min: 2.0 ms, max: 6.0 ms
"TCAlias:Chain1Base7.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base7.M"|avg: 3.5 ms, std: 1.3 ms, min: 2.9 ms, max: 9.0 ms|avg: 3.1 ms, std: 1.2 ms, min: 2.2 ms, max: 7.1 ms|avg: 2.2 ms, std: 0.9 ms, min: 1.6 ms, max: 5.9 ms
"Total"|avg: 20.6 ms, std: 2.0 ms, min: 18.6 ms, max: 25.8 ms|avg: 25.9 ms, std: 10.2 ms, min: 18.5 ms, max: 70.7 ms|avg: 22.6 ms, std: 8.0 ms, min: 16.9 ms, max: 61.2 ms
"Total: Checking of Chain1Base7"|avg: 6.0 ms, std: 1.4 ms, min: 5.2 ms, max: 11.2 ms|avg: 7.7 ms, std: 4.2 ms, min: 4.8 ms, max: 25.3 ms|avg: 5.1 ms, std: 1.6 ms, min: 3.8 ms, max: 10.7 ms
"Total: Loading required modules from filesystem"|avg: 11.7 ms, std: 1.3 ms, min: 10.7 ms, max: 17.5 ms|avg: 14.4 ms, std: 6.2 ms, min: 10.8 ms, max: 41.0 ms|avg: 14.9 ms, std: 6.9 ms, min: 10.8 ms, max: 50.8 ms
"Total: ScopeCheck step"|avg: 1.9 ms, std: 0.7 ms, min: 1.7 ms, max: 6.5 ms|avg: 4.0 ms, std: 3.8 ms, min: 1.9 ms, max: 19.9 ms|avg: 2.5 ms, std: 0.9 ms, min: 1.8 ms, max: 5.6 ms
"Total: TypeCheck step"|avg: 4.0 ms, std: 1.3 ms, min: 3.4 ms, max: 9.5 ms|avg: 3.7 ms, std: 1.4 ms, min: 2.7 ms, max: 8.4 ms|avg: 2.6 ms, std: 1.0 ms, min: 1.9 ms, max: 6.3 ms
"Total: TypeChecking"|avg: 8.9 ms, std: 1.6 ms, min: 7.9 ms, max: 13.8 ms|avg: 11.5 ms, std: 5.1 ms, min: 7.5 ms, max: 30.2 ms|avg: 7.7 ms, std: 2.1 ms, min: 5.9 ms, max: 14.0 ms
"Total: WHNF"|avg: 0.7 ms, std: 0.8 ms, min: 0.3 ms, max: 6.0 ms|avg: 0.6 ms, std: 0.2 ms, min: 0.4 ms, max: 1.7 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.3 ms, max: 1.5 ms
"TypeCheck: Definitions"|avg: 2.3 ms, std: 0.7 ms, min: 1.7 ms, max: 7.0 ms|avg: 2.2 ms, std: 0.9 ms, min: 1.5 ms, max: 6.2 ms|avg: 1.6 ms, std: 0.6 ms, min: 1.2 ms, max: 4.0 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.6 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 1.1 ms, min: 0.6 ms, max: 6.9 ms|avg: 0.8 ms, std: 0.3 ms, min: 0.6 ms, max: 2.2 ms|avg: 0.5 ms, std: 0.6 ms, min: 0.3 ms, max: 4.5 ms

## experiments/imports\importChain\Chain1\Chain1Base8.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.1 ms, min: 0.6 ms, max: 1.4 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.6 ms, max: 1.7 ms|avg: 0.9 ms, std: 0.4 ms, min: 0.7 ms, max: 2.8 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base8.sa"|avg: 10.9 ms, std: 2.4 ms, min: 9.4 ms, max: 20.1 ms|avg: 14.2 ms, std: 6.7 ms, min: 9.7 ms, max: 40.0 ms|avg: 14.3 ms, std: 8.0 ms, min: 9.7 ms, max: 55.4 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 2.8 ms, std: 0.7 ms, min: 2.4 ms, max: 6.5 ms|avg: 3.2 ms, std: 1.0 ms, min: 2.5 ms, max: 6.9 ms|avg: 2.6 ms, std: 0.9 ms, min: 1.9 ms, max: 5.6 ms
"TCAlias:Chain1Base8.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base8.M"|avg: 3.3 ms, std: 1.2 ms, min: 2.7 ms, max: 8.5 ms|avg: 2.6 ms, std: 1.2 ms, min: 2.0 ms, max: 7.9 ms|avg: 1.9 ms, std: 0.8 ms, min: 1.4 ms, max: 5.4 ms
"Total"|avg: 20.8 ms, std: 3.1 ms, min: 18.2 ms, max: 29.6 ms|avg: 24.3 ms, std: 9.0 ms, min: 17.9 ms, max: 59.7 ms|avg: 23.0 ms, std: 10.3 ms, min: 16.5 ms, max: 73.0 ms
"Total: Checking of Chain1Base8"|avg: 6.1 ms, std: 1.9 ms, min: 4.8 ms, max: 12.1 ms|avg: 5.7 ms, std: 2.3 ms, min: 4.4 ms, max: 14.0 ms|avg: 4.9 ms, std: 2.1 ms, min: 3.6 ms, max: 12.6 ms
"Total: Loading required modules from filesystem"|avg: 11.8 ms, std: 2.5 ms, min: 10.2 ms, max: 21.1 ms|avg: 15.4 ms, std: 6.9 ms, min: 10.7 ms, max: 42.0 ms|avg: 15.5 ms, std: 8.3 ms, min: 10.7 ms, max: 57.8 ms
"Total: ScopeCheck step"|avg: 2.1 ms, std: 0.9 ms, min: 1.6 ms, max: 5.6 ms|avg: 2.6 ms, std: 1.2 ms, min: 1.9 ms, max: 6.4 ms|avg: 2.5 ms, std: 1.4 ms, min: 1.8 ms, max: 8.8 ms
"Total: TypeCheck step"|avg: 4.0 ms, std: 1.6 ms, min: 3.1 ms, max: 10.3 ms|avg: 3.1 ms, std: 1.4 ms, min: 2.4 ms, max: 9.2 ms|avg: 2.4 ms, std: 1.1 ms, min: 1.7 ms, max: 6.8 ms
"Total: TypeChecking"|avg: 8.9 ms, std: 2.0 ms, min: 7.4 ms, max: 14.7 ms|avg: 9.0 ms, std: 2.9 ms, min: 6.9 ms, max: 19.6 ms|avg: 7.5 ms, std: 2.6 ms, min: 5.6 ms, max: 15.9 ms
"Total: WHNF"|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 1.2 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 1.5 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.2 ms, max: 1.0 ms
"TypeCheck: Definitions"|avg: 2.3 ms, std: 1.0 ms, min: 1.7 ms, max: 7.6 ms|avg: 1.8 ms, std: 0.9 ms, min: 1.3 ms, max: 5.9 ms|avg: 1.5 ms, std: 0.6 ms, min: 1.0 ms, max: 4.0 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 1.1 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"TypeCheck: Signatures"|avg: 0.9 ms, std: 0.7 ms, min: 0.5 ms, max: 5.3 ms|avg: 0.8 ms, std: 0.3 ms, min: 0.5 ms, max: 1.9 ms|avg: 0.4 ms, std: 0.3 ms, min: 0.3 ms, max: 1.4 ms

## experiments/imports\importChain\Chain1\Chain1Base9.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 0.7 ms, std: 0.2 ms, min: 0.6 ms, max: 1.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.7 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.0 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base9.sa"|avg: 10.8 ms, std: 1.5 ms, min: 9.6 ms, max: 15.7 ms|avg: 12.9 ms, std: 5.5 ms, min: 9.7 ms, max: 41.6 ms|avg: 14.5 ms, std: 7.9 ms, min: 9.9 ms, max: 45.9 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"Serialization: Write main to file"|avg: 3.0 ms, std: 0.8 ms, min: 2.5 ms, max: 7.0 ms|avg: 3.9 ms, std: 2.9 ms, min: 2.6 ms, max: 22.2 ms|avg: 2.8 ms, std: 1.1 ms, min: 2.0 ms, max: 6.7 ms
"TCAlias:Chain1Base9.M'"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TCMod:Chain1Base9.M"|avg: 3.3 ms, std: 0.7 ms, min: 2.9 ms, max: 7.1 ms|avg: 2.8 ms, std: 0.9 ms, min: 2.2 ms, max: 7.6 ms|avg: 2.3 ms, std: 1.5 ms, min: 1.6 ms, max: 10.5 ms
"Total"|avg: 20.7 ms, std: 2.0 ms, min: 19.0 ms, max: 25.7 ms|avg: 23.9 ms, std: 9.7 ms, min: 18.5 ms, max: 69.5 ms|avg: 24.0 ms, std: 10.3 ms, min: 17.0 ms, max: 61.6 ms
"Total: Checking of Chain1Base9"|avg: 6.0 ms, std: 1.2 ms, min: 5.3 ms, max: 10.2 ms|avg: 5.9 ms, std: 2.1 ms, min: 4.8 ms, max: 16.1 ms|avg: 5.5 ms, std: 2.5 ms, min: 3.9 ms, max: 14.4 ms
"Total: Loading required modules from filesystem"|avg: 11.7 ms, std: 1.6 ms, min: 10.5 ms, max: 17.3 ms|avg: 14.0 ms, std: 5.6 ms, min: 10.9 ms, max: 43.7 ms|avg: 15.6 ms, std: 8.1 ms, min: 10.8 ms, max: 47.0 ms
"Total: ScopeCheck step"|avg: 2.1 ms, std: 0.8 ms, min: 1.7 ms, max: 6.1 ms|avg: 2.6 ms, std: 1.4 ms, min: 2.0 ms, max: 9.4 ms|avg: 2.8 ms, std: 1.7 ms, min: 1.9 ms, max: 12.4 ms
"Total: TypeCheck step"|avg: 3.9 ms, std: 0.9 ms, min: 3.4 ms, max: 7.8 ms|avg: 3.3 ms, std: 1.0 ms, min: 2.7 ms, max: 7.9 ms|avg: 2.7 ms, std: 1.6 ms, min: 1.9 ms, max: 10.9 ms
"Total: TypeChecking"|avg: 9.0 ms, std: 1.4 ms, min: 8.0 ms, max: 13.0 ms|avg: 9.8 ms, std: 4.5 ms, min: 7.5 ms, max: 32.8 ms|avg: 8.3 ms, std: 3.0 ms, min: 5.9 ms, max: 16.9 ms
"Total: WHNF"|avg: 0.6 ms, std: 0.2 ms, min: 0.3 ms, max: 1.5 ms|avg: 0.4 ms, std: 0.1 ms, min: 0.3 ms, max: 0.8 ms|avg: 0.4 ms, std: 0.3 ms, min: 0.3 ms, max: 1.9 ms
"TypeCheck: Definitions"|avg: 2.3 ms, std: 0.7 ms, min: 1.7 ms, max: 6.2 ms|avg: 1.9 ms, std: 0.8 ms, min: 1.3 ms, max: 6.9 ms|avg: 1.6 ms, std: 0.7 ms, min: 1.1 ms, max: 5.1 ms
"TypeCheck: Initialise typing env"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.1 ms, max: 0.4 ms
"TypeCheck: ModuleAliases"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.2 ms, min: 0.6 ms, max: 1.4 ms|avg: 0.8 ms, std: 0.2 ms, min: 0.6 ms, max: 2.0 ms|avg: 0.7 ms, std: 1.1 ms, min: 0.3 ms, max: 8.5 ms

## experiments/imports\importChain\Chain1\Chain1Test1.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.2 ms, min: 1.1 ms, max: 2.0 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.3 ms, max: 3.2 ms|avg: 1.5 ms, std: 0.3 ms, min: 1.2 ms, max: 2.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base1.sa"|avg: 23.3 ms, std: 2.2 ms, min: 21.2 ms, max: 28.4 ms|avg: 27.7 ms, std: 13.0 ms, min: 19.8 ms, max: 93.9 ms|avg: 16.5 ms, std: 4.0 ms, min: 13.3 ms, max: 28.0 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test1.sa"|avg: 12.8 ms, std: 1.6 ms, min: 11.8 ms, max: 18.1 ms|avg: 17.5 ms, std: 8.1 ms, min: 12.0 ms, max: 49.6 ms|avg: 15.3 ms, std: 5.5 ms, min: 11.9 ms, max: 40.6 ms
"ScopeChecking: Importing Chain1Base1"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.0 ms, std: 1.5 ms, min: 3.3 ms, max: 12.3 ms|avg: 3.3 ms, std: 1.5 ms, min: 2.4 ms, max: 9.7 ms|avg: 3.4 ms, std: 1.5 ms, min: 2.4 ms, max: 8.8 ms
"TCMod:Chain1Test1.M"|avg: 5.2 ms, std: 1.0 ms, min: 4.5 ms, max: 10.3 ms|avg: 4.8 ms, std: 2.4 ms, min: 3.4 ms, max: 17.2 ms|avg: 4.6 ms, std: 2.8 ms, min: 2.9 ms, max: 15.8 ms
"Total"|avg: 52.4 ms, std: 3.0 ms, min: 47.8 ms, max: 59.5 ms|avg: 61.6 ms, std: 24.0 ms, min: 44.4 ms, max: 167.8 ms|avg: 48.2 ms, std: 15.0 ms, min: 37.2 ms, max: 111.8 ms
"Total: Checking of Chain1Test1"|avg: 10.7 ms, std: 1.9 ms, min: 9.2 ms, max: 15.2 ms|avg: 11.1 ms, std: 4.5 ms, min: 8.0 ms, max: 32.9 ms|avg: 11.1 ms, std: 5.7 ms, min: 7.5 ms, max: 34.3 ms
"Total: Loading required modules from filesystem"|avg: 37.7 ms, std: 2.4 ms, min: 34.6 ms, max: 42.4 ms|avg: 47.1 ms, std: 20.3 ms, min: 33.5 ms, max: 146.5 ms|avg: 33.7 ms, std: 8.8 ms, min: 27.0 ms, max: 68.8 ms
"Total: ScopeCheck step"|avg: 4.0 ms, std: 1.3 ms, min: 3.3 ms, max: 9.0 ms|avg: 5.9 ms, std: 2.5 ms, min: 4.2 ms, max: 15.0 ms|avg: 5.8 ms, std: 3.2 ms, min: 3.9 ms, max: 17.7 ms
"Total: TypeCheck step"|avg: 6.4 ms, std: 1.5 ms, min: 5.4 ms, max: 11.3 ms|avg: 5.2 ms, std: 2.5 ms, min: 3.6 ms, max: 18.4 ms|avg: 5.3 ms, std: 3.1 ms, min: 3.3 ms, max: 17.0 ms
"Total: TypeChecking"|avg: 14.7 ms, std: 2.3 ms, min: 12.9 ms, max: 22.1 ms|avg: 14.4 ms, std: 5.5 ms, min: 10.5 ms, max: 39.9 ms|avg: 14.5 ms, std: 7.1 ms, min: 10.0 ms, max: 43.0 ms
"Total: WHNF"|avg: 1.3 ms, std: 0.3 ms, min: 0.7 ms, max: 1.9 ms|avg: 1.2 ms, std: 0.8 ms, min: 0.8 ms, max: 5.1 ms|avg: 1.6 ms, std: 1.6 ms, min: 0.8 ms, max: 9.2 ms
"TypeCheck: Definitions"|avg: 4.0 ms, std: 0.7 ms, min: 3.4 ms, max: 8.2 ms|avg: 3.7 ms, std: 1.9 ms, min: 2.5 ms, max: 13.4 ms|avg: 3.9 ms, std: 2.5 ms, min: 2.4 ms, max: 13.7 ms
"TypeCheck: Initialise typing env"|avg: 0.2 ms, std: 0.1 ms, min: 0.2 ms, max: 0.5 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.7 ms|avg: 0.3 ms, std: 0.4 ms, min: 0.1 ms, max: 2.5 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 0.7 ms, min: 0.7 ms, max: 6.0 ms|avg: 1.0 ms, std: 0.5 ms, min: 0.6 ms, max: 3.6 ms|avg: 0.6 ms, std: 0.4 ms, min: 0.4 ms, max: 2.0 ms

## experiments/imports\importChain\Chain1\Chain1Test10.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.2 ms, min: 1.1 ms, max: 2.3 ms|avg: 1.6 ms, std: 0.3 ms, min: 1.3 ms, max: 2.5 ms|avg: 1.6 ms, std: 0.6 ms, min: 1.2 ms, max: 4.4 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base10.sa"|avg: 23.8 ms, std: 2.7 ms, min: 21.2 ms, max: 32.2 ms|avg: 26.4 ms, std: 10.9 ms, min: 19.7 ms, max: 70.1 ms|avg: 17.6 ms, std: 6.3 ms, min: 13.6 ms, max: 45.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test10.sa"|avg: 13.3 ms, std: 1.4 ms, min: 12.2 ms, max: 17.6 ms|avg: 16.1 ms, std: 6.5 ms, min: 12.1 ms, max: 43.3 ms|avg: 16.0 ms, std: 6.3 ms, min: 12.3 ms, max: 45.6 ms
"ScopeChecking: Importing Chain1Base10"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.4 ms, std: 1.0 ms, min: 3.8 ms, max: 8.9 ms|avg: 3.3 ms, std: 1.1 ms, min: 2.4 ms, max: 7.2 ms|avg: 3.0 ms, std: 0.8 ms, min: 2.4 ms, max: 6.0 ms
"TCMod:Chain1Test10.M"|avg: 5.5 ms, std: 1.4 ms, min: 4.7 ms, max: 11.3 ms|avg: 4.6 ms, std: 2.1 ms, min: 3.4 ms, max: 12.0 ms|avg: 3.7 ms, std: 0.9 ms, min: 3.0 ms, max: 7.0 ms
"Total"|avg: 54.9 ms, std: 3.2 ms, min: 49.9 ms, max: 61.2 ms|avg: 59.2 ms, std: 20.5 ms, min: 45.5 ms, max: 141.7 ms|avg: 48.8 ms, std: 14.4 ms, min: 38.0 ms, max: 113.5 ms
"Total: Checking of Chain1Test10"|avg: 11.9 ms, std: 2.5 ms, min: 9.8 ms, max: 16.9 ms|avg: 11.6 ms, std: 4.5 ms, min: 8.3 ms, max: 27.0 ms|avg: 10.2 ms, std: 2.8 ms, min: 7.9 ms, max: 19.3 ms
"Total: Loading required modules from filesystem"|avg: 38.7 ms, std: 2.8 ms, min: 35.3 ms, max: 46.9 ms|avg: 44.4 ms, std: 17.1 ms, min: 34.6 ms, max: 115.4 ms|avg: 35.5 ms, std: 12.5 ms, min: 27.5 ms, max: 94.9 ms
"Total: ScopeCheck step"|avg: 4.3 ms, std: 1.3 ms, min: 3.6 ms, max: 9.1 ms|avg: 6.5 ms, std: 3.4 ms, min: 4.5 ms, max: 22.8 ms|avg: 6.0 ms, std: 2.2 ms, min: 4.3 ms, max: 13.8 ms
"Total: TypeCheck step"|avg: 7.3 ms, std: 2.2 ms, min: 5.8 ms, max: 12.8 ms|avg: 5.1 ms, std: 2.1 ms, min: 3.7 ms, max: 12.3 ms|avg: 4.3 ms, std: 1.1 ms, min: 3.4 ms, max: 8.5 ms
"Total: TypeChecking"|avg: 16.2 ms, std: 2.5 ms, min: 13.9 ms, max: 20.8 ms|avg: 14.9 ms, std: 5.1 ms, min: 10.8 ms, max: 30.1 ms|avg: 13.3 ms, std: 3.3 ms, min: 10.4 ms, max: 22.4 ms
"Total: WHNF"|avg: 1.5 ms, std: 0.8 ms, min: 0.7 ms, max: 6.5 ms|avg: 1.2 ms, std: 0.9 ms, min: 0.8 ms, max: 6.4 ms|avg: 1.1 ms, std: 0.3 ms, min: 0.8 ms, max: 2.4 ms
"TypeCheck: Definitions"|avg: 4.2 ms, std: 0.8 ms, min: 3.3 ms, max: 8.6 ms|avg: 3.5 ms, std: 1.4 ms, min: 2.5 ms, max: 8.4 ms|avg: 3.1 ms, std: 0.8 ms, min: 2.5 ms, max: 6.0 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.4 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.5 ms|avg: 0.2 ms, std: 0.2 ms, min: 0.1 ms, max: 1.1 ms
"TypeCheck: Signatures"|avg: 1.2 ms, std: 1.2 ms, min: 0.6 ms, max: 6.9 ms|avg: 1.1 ms, std: 1.3 ms, min: 0.6 ms, max: 8.6 ms|avg: 0.4 ms, std: 0.2 ms, min: 0.3 ms, max: 0.9 ms

## experiments/imports\importChain\Chain1\Chain1Test11.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.1 ms, min: 1.2 ms, max: 1.7 ms|avg: 1.6 ms, std: 0.5 ms, min: 1.2 ms, max: 3.5 ms|avg: 1.8 ms, std: 1.0 ms, min: 1.2 ms, max: 7.3 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base11.sa"|avg: 23.1 ms, std: 2.6 ms, min: 20.5 ms, max: 29.4 ms|avg: 27.3 ms, std: 10.0 ms, min: 20.3 ms, max: 67.3 ms|avg: 18.5 ms, std: 9.3 ms, min: 13.2 ms, max: 59.1 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test11.sa"|avg: 13.8 ms, std: 1.6 ms, min: 12.7 ms, max: 18.9 ms|avg: 17.0 ms, std: 5.7 ms, min: 12.7 ms, max: 39.5 ms|avg: 16.5 ms, std: 5.9 ms, min: 12.8 ms, max: 37.4 ms
"ScopeChecking: Importing Chain1Base11"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.3 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.4 ms, std: 1.1 ms, min: 3.8 ms, max: 8.9 ms|avg: 3.3 ms, std: 1.4 ms, min: 2.5 ms, max: 11.8 ms|avg: 3.5 ms, std: 1.7 ms, min: 2.5 ms, max: 12.8 ms
"TCMod:Chain1Test11.M"|avg: 5.7 ms, std: 1.1 ms, min: 5.0 ms, max: 10.4 ms|avg: 4.6 ms, std: 1.4 ms, min: 3.7 ms, max: 9.9 ms|avg: 5.0 ms, std: 3.5 ms, min: 3.2 ms, max: 21.6 ms
"Total"|avg: 54.8 ms, std: 2.8 ms, min: 49.8 ms, max: 61.6 ms|avg: 61.4 ms, std: 17.7 ms, min: 46.9 ms, max: 121.1 ms|avg: 53.7 ms, std: 20.2 ms, min: 39.0 ms, max: 132.5 ms
"Total: Checking of Chain1Test11"|avg: 12.0 ms, std: 2.1 ms, min: 10.5 ms, max: 21.1 ms|avg: 11.9 ms, std: 3.1 ms, min: 9.3 ms, max: 22.0 ms|avg: 13.0 ms, std: 6.3 ms, min: 8.6 ms, max: 42.4 ms
"Total: Loading required modules from filesystem"|avg: 38.4 ms, std: 2.8 ms, min: 34.9 ms, max: 46.2 ms|avg: 46.1 ms, std: 14.9 ms, min: 34.7 ms, max: 98.1 ms|avg: 37.1 ms, std: 14.9 ms, min: 27.7 ms, max: 92.5 ms
"Total: ScopeCheck step"|avg: 4.6 ms, std: 1.0 ms, min: 4.1 ms, max: 9.8 ms|avg: 6.8 ms, std: 1.9 ms, min: 5.1 ms, max: 11.8 ms|avg: 7.4 ms, std: 3.7 ms, min: 4.8 ms, max: 23.0 ms
"Total: TypeCheck step"|avg: 7.1 ms, std: 1.5 ms, min: 6.1 ms, max: 12.3 ms|avg: 5.1 ms, std: 1.6 ms, min: 4.0 ms, max: 11.3 ms|avg: 5.7 ms, std: 3.7 ms, min: 3.7 ms, max: 22.3 ms
"Total: TypeChecking"|avg: 16.4 ms, std: 2.2 ms, min: 14.7 ms, max: 24.9 ms|avg: 15.2 ms, std: 3.8 ms, min: 11.8 ms, max: 27.1 ms|avg: 16.6 ms, std: 7.5 ms, min: 11.2 ms, max: 49.3 ms
"Total: WHNF"|avg: 1.5 ms, std: 0.7 ms, min: 0.9 ms, max: 6.3 ms|avg: 1.2 ms, std: 0.4 ms, min: 0.8 ms, max: 2.4 ms|avg: 1.3 ms, std: 0.7 ms, min: 0.9 ms, max: 4.6 ms
"TypeCheck: Definitions"|avg: 4.5 ms, std: 1.1 ms, min: 3.7 ms, max: 9.5 ms|avg: 3.6 ms, std: 1.2 ms, min: 2.7 ms, max: 7.8 ms|avg: 4.2 ms, std: 3.1 ms, min: 2.6 ms, max: 19.9 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.5 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.5 ms|avg: 0.3 ms, std: 0.2 ms, min: 0.1 ms, max: 0.9 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 0.2 ms, min: 0.7 ms, max: 1.6 ms|avg: 1.0 ms, std: 0.3 ms, min: 0.7 ms, max: 2.0 ms|avg: 0.7 ms, std: 0.6 ms, min: 0.4 ms, max: 4.1 ms

## experiments/imports\importChain\Chain1\Chain1Test12.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.4 ms, std: 0.1 ms, min: 1.2 ms, max: 1.8 ms|avg: 1.6 ms, std: 0.3 ms, min: 1.2 ms, max: 2.9 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.2 ms, max: 3.2 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base12.sa"|avg: 21.9 ms, std: 2.3 ms, min: 19.9 ms, max: 29.1 ms|avg: 24.8 ms, std: 7.1 ms, min: 19.6 ms, max: 52.6 ms|avg: 17.1 ms, std: 5.3 ms, min: 13.2 ms, max: 40.3 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test12.sa"|avg: 13.5 ms, std: 1.9 ms, min: 12.1 ms, max: 18.1 ms|avg: 15.3 ms, std: 4.2 ms, min: 12.3 ms, max: 29.9 ms|avg: 16.1 ms, std: 5.8 ms, min: 12.3 ms, max: 44.9 ms
"ScopeChecking: Importing Chain1Base12"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.2 ms, std: 1.0 ms, min: 3.7 ms, max: 8.9 ms|avg: 3.2 ms, std: 1.5 ms, min: 2.3 ms, max: 10.1 ms|avg: 3.2 ms, std: 1.8 ms, min: 2.4 ms, max: 13.9 ms
"TCMod:Chain1Test12.M"|avg: 5.2 ms, std: 1.3 ms, min: 4.6 ms, max: 10.4 ms|avg: 4.5 ms, std: 2.2 ms, min: 3.2 ms, max: 14.4 ms|avg: 4.3 ms, std: 2.7 ms, min: 2.8 ms, max: 15.5 ms
"Total"|avg: 52.5 ms, std: 2.8 ms, min: 47.7 ms, max: 59.9 ms|avg: 56.3 ms, std: 15.9 ms, min: 44.9 ms, max: 116.4 ms|avg: 49.8 ms, std: 15.8 ms, min: 37.7 ms, max: 132.2 ms
"Total: Checking of Chain1Test12"|avg: 11.3 ms, std: 2.3 ms, min: 9.6 ms, max: 17.1 ms|avg: 11.1 ms, std: 4.8 ms, min: 8.2 ms, max: 36.0 ms|avg: 11.4 ms, std: 5.8 ms, min: 7.6 ms, max: 41.9 ms
"Total: Loading required modules from filesystem"|avg: 37.0 ms, std: 2.7 ms, min: 33.5 ms, max: 45.7 ms|avg: 41.9 ms, std: 10.9 ms, min: 33.7 ms, max: 81.3 ms|avg: 35.1 ms, std: 9.6 ms, min: 27.4 ms, max: 76.3 ms
"Total: ScopeCheck step"|avg: 4.7 ms, std: 2.0 ms, min: 3.6 ms, max: 10.7 ms|avg: 6.1 ms, std: 3.0 ms, min: 4.4 ms, max: 20.2 ms|avg: 6.4 ms, std: 3.6 ms, min: 4.2 ms, max: 23.6 ms
"Total: TypeCheck step"|avg: 6.3 ms, std: 1.5 ms, min: 5.5 ms, max: 11.7 ms|avg: 5.0 ms, std: 2.3 ms, min: 3.6 ms, max: 15.7 ms|avg: 5.0 ms, std: 3.0 ms, min: 3.2 ms, max: 18.4 ms
"Total: TypeChecking"|avg: 15.5 ms, std: 2.4 ms, min: 13.4 ms, max: 21.1 ms|avg: 14.4 ms, std: 6.1 ms, min: 10.7 ms, max: 44.9 ms|avg: 14.7 ms, std: 7.4 ms, min: 10.1 ms, max: 55.9 ms
"Total: WHNF"|avg: 1.2 ms, std: 0.7 ms, min: 0.7 ms, max: 5.4 ms|avg: 1.0 ms, std: 0.8 ms, min: 0.6 ms, max: 5.3 ms|avg: 1.1 ms, std: 0.6 ms, min: 0.7 ms, max: 3.5 ms
"TypeCheck: Definitions"|avg: 4.0 ms, std: 1.0 ms, min: 3.4 ms, max: 9.4 ms|avg: 3.4 ms, std: 1.6 ms, min: 2.4 ms, max: 11.2 ms|avg: 3.7 ms, std: 2.4 ms, min: 2.3 ms, max: 13.5 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.4 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.3 ms|avg: 0.3 ms, std: 0.4 ms, min: 0.1 ms, max: 2.1 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 0.9 ms, min: 0.6 ms, max: 5.7 ms|avg: 1.1 ms, std: 1.1 ms, min: 0.6 ms, max: 6.9 ms|avg: 0.6 ms, std: 0.8 ms, min: 0.3 ms, max: 5.5 ms

## experiments/imports\importChain\Chain1\Chain1Test13.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.1 ms, min: 1.2 ms, max: 1.6 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.3 ms, max: 3.0 ms|avg: 1.7 ms, std: 0.6 ms, min: 1.2 ms, max: 4.2 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base13.sa"|avg: 23.6 ms, std: 2.1 ms, min: 21.4 ms, max: 28.0 ms|avg: 27.4 ms, std: 16.0 ms, min: 20.0 ms, max: 114.8 ms|avg: 18.1 ms, std: 6.7 ms, min: 13.4 ms, max: 39.9 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test13.sa"|avg: 13.8 ms, std: 2.2 ms, min: 12.3 ms, max: 22.9 ms|avg: 17.0 ms, std: 9.1 ms, min: 12.6 ms, max: 63.8 ms|avg: 17.7 ms, std: 7.5 ms, min: 12.5 ms, max: 44.9 ms
"ScopeChecking: Importing Chain1Base13"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.1 ms, min: 0.0 ms, max: 0.4 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.1 ms, min: 0.0 ms, max: 0.5 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.0 ms, std: 0.5 ms, min: 3.7 ms, max: 7.4 ms|avg: 3.3 ms, std: 2.3 ms, min: 2.4 ms, max: 18.9 ms|avg: 3.2 ms, std: 0.9 ms, min: 2.5 ms, max: 6.0 ms
"TCMod:Chain1Test13.M"|avg: 5.3 ms, std: 1.0 ms, min: 4.7 ms, max: 11.1 ms|avg: 4.3 ms, std: 1.6 ms, min: 3.4 ms, max: 9.5 ms|avg: 3.8 ms, std: 1.4 ms, min: 2.9 ms, max: 9.2 ms
"Total"|avg: 54.0 ms, std: 3.1 ms, min: 49.5 ms, max: 61.4 ms|avg: 60.7 ms, std: 28.2 ms, min: 45.7 ms, max: 195.7 ms|avg: 51.8 ms, std: 18.3 ms, min: 37.9 ms, max: 116.0 ms
"Total: Checking of Chain1Test13"|avg: 10.9 ms, std: 1.6 ms, min: 9.6 ms, max: 16.2 ms|avg: 11.0 ms, std: 3.6 ms, min: 8.4 ms, max: 21.9 ms|avg: 10.9 ms, std: 4.6 ms, min: 7.8 ms, max: 26.5 ms
"Total: Loading required modules from filesystem"|avg: 39.0 ms, std: 2.9 ms, min: 35.5 ms, max: 46.8 ms|avg: 46.4 ms, std: 24.0 ms, min: 34.7 ms, max: 155.5 ms|avg: 37.7 ms, std: 14.0 ms, min: 27.4 ms, max: 87.8 ms
"Total: ScopeCheck step"|avg: 4.2 ms, std: 1.1 ms, min: 3.6 ms, max: 8.9 ms|avg: 6.2 ms, std: 2.7 ms, min: 4.4 ms, max: 16.7 ms|avg: 6.5 ms, std: 3.6 ms, min: 4.3 ms, max: 22.6 ms
"Total: TypeCheck step"|avg: 6.4 ms, std: 1.2 ms, min: 5.6 ms, max: 12.1 ms|avg: 4.8 ms, std: 1.7 ms, min: 3.6 ms, max: 10.8 ms|avg: 4.4 ms, std: 1.6 ms, min: 3.4 ms, max: 10.3 ms
"Total: TypeChecking"|avg: 15.0 ms, std: 1.7 ms, min: 13.5 ms, max: 20.5 ms|avg: 14.3 ms, std: 5.2 ms, min: 11.0 ms, max: 40.1 ms|avg: 14.1 ms, std: 5.2 ms, min: 10.4 ms, max: 29.4 ms
"Total: WHNF"|avg: 1.5 ms, std: 1.0 ms, min: 0.7 ms, max: 6.8 ms|avg: 1.2 ms, std: 0.9 ms, min: 0.7 ms, max: 6.9 ms|avg: 1.1 ms, std: 0.4 ms, min: 0.8 ms, max: 2.5 ms
"TypeCheck: Definitions"|avg: 4.1 ms, std: 1.0 ms, min: 3.1 ms, max: 10.2 ms|avg: 3.3 ms, std: 1.3 ms, min: 2.4 ms, max: 8.6 ms|avg: 3.2 ms, std: 1.2 ms, min: 2.4 ms, max: 7.5 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.5 ms, min: 0.2 ms, max: 4.0 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.5 ms|avg: 0.2 ms, std: 0.2 ms, min: 0.1 ms, max: 1.2 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.2 ms, min: 0.7 ms, max: 1.4 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.2 ms|avg: 0.6 ms, std: 0.3 ms, min: 0.4 ms, max: 1.7 ms

## experiments/imports\importChain\Chain1\Chain1Test14.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.4 ms, std: 0.2 ms, min: 1.1 ms, max: 2.1 ms|avg: 1.5 ms, std: 0.3 ms, min: 1.3 ms, max: 3.3 ms|avg: 1.7 ms, std: 0.6 ms, min: 1.3 ms, max: 4.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base14.sa"|avg: 22.4 ms, std: 2.3 ms, min: 19.9 ms, max: 27.3 ms|avg: 25.6 ms, std: 11.3 ms, min: 20.0 ms, max: 82.3 ms|avg: 19.1 ms, std: 8.8 ms, min: 13.4 ms, max: 46.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test14.sa"|avg: 14.2 ms, std: 2.1 ms, min: 12.6 ms, max: 19.3 ms|avg: 16.9 ms, std: 10.0 ms, min: 12.8 ms, max: 65.6 ms|avg: 16.0 ms, std: 5.8 ms, min: 12.5 ms, max: 38.3 ms
"ScopeChecking: Importing Chain1Base14"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 3.8 ms, std: 0.6 ms, min: 3.3 ms, max: 7.7 ms|avg: 3.2 ms, std: 2.1 ms, min: 2.3 ms, max: 15.9 ms|avg: 3.1 ms, std: 1.2 ms, min: 2.5 ms, max: 9.1 ms
"TCMod:Chain1Test14.M"|avg: 5.5 ms, std: 1.4 ms, min: 4.6 ms, max: 10.0 ms|avg: 4.3 ms, std: 1.8 ms, min: 3.3 ms, max: 13.2 ms|avg: 3.7 ms, std: 1.2 ms, min: 2.9 ms, max: 8.9 ms
"Total"|avg: 53.6 ms, std: 2.8 ms, min: 47.9 ms, max: 60.4 ms|avg: 58.5 ms, std: 23.9 ms, min: 45.8 ms, max: 170.8 ms|avg: 50.9 ms, std: 18.5 ms, min: 38.5 ms, max: 119.1 ms
"Total: Checking of Chain1Test14"|avg: 11.6 ms, std: 2.2 ms, min: 9.8 ms, max: 19.8 ms|avg: 11.0 ms, std: 3.5 ms, min: 8.5 ms, max: 28.7 ms|avg: 10.7 ms, std: 4.3 ms, min: 7.9 ms, max: 29.6 ms
"Total: Loading required modules from filesystem"|avg: 38.2 ms, std: 2.6 ms, min: 34.0 ms, max: 45.3 ms|avg: 44.3 ms, std: 20.6 ms, min: 34.4 ms, max: 151.8 ms|avg: 37.1 ms, std: 13.9 ms, min: 27.9 ms, max: 85.7 ms
"Total: ScopeCheck step"|avg: 4.5 ms, std: 1.2 ms, min: 3.8 ms, max: 9.1 ms|avg: 6.1 ms, std: 1.9 ms, min: 4.7 ms, max: 14.7 ms|avg: 6.4 ms, std: 3.5 ms, min: 4.3 ms, max: 23.8 ms
"Total: TypeCheck step"|avg: 6.8 ms, std: 1.7 ms, min: 5.7 ms, max: 11.7 ms|avg: 4.9 ms, std: 2.1 ms, min: 3.6 ms, max: 14.0 ms|avg: 4.3 ms, std: 1.4 ms, min: 3.3 ms, max: 10.6 ms
"Total: TypeChecking"|avg: 15.4 ms, std: 2.3 ms, min: 13.4 ms, max: 23.4 ms|avg: 14.2 ms, std: 4.7 ms, min: 11.2 ms, max: 38.1 ms|avg: 13.8 ms, std: 5.1 ms, min: 10.4 ms, max: 33.4 ms
"Total: WHNF"|avg: 1.2 ms, std: 0.6 ms, min: 0.7 ms, max: 5.0 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.7 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 1.9 ms
"TypeCheck: Definitions"|avg: 4.0 ms, std: 1.0 ms, min: 3.0 ms, max: 8.9 ms|avg: 3.2 ms, std: 1.5 ms, min: 2.4 ms, max: 10.3 ms|avg: 3.0 ms, std: 0.9 ms, min: 2.4 ms, max: 7.6 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.5 ms|avg: 0.2 ms, std: 1.1 ms, min: 0.0 ms, max: 7.7 ms|avg: 0.3 ms, std: 0.2 ms, min: 0.1 ms, max: 1.5 ms
"TypeCheck: Signatures"|avg: 1.3 ms, std: 1.1 ms, min: 0.7 ms, max: 6.8 ms|avg: 1.0 ms, std: 0.7 ms, min: 0.7 ms, max: 5.1 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.4 ms, max: 1.7 ms

## experiments/imports\importChain\Chain1\Chain1Test15.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.1 ms, min: 1.1 ms, max: 1.5 ms|avg: 1.7 ms, std: 0.7 ms, min: 1.2 ms, max: 5.4 ms|avg: 1.7 ms, std: 0.4 ms, min: 1.2 ms, max: 3.1 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base15.sa"|avg: 22.5 ms, std: 2.0 ms, min: 20.3 ms, max: 27.0 ms|avg: 26.6 ms, std: 10.5 ms, min: 20.2 ms, max: 75.1 ms|avg: 19.6 ms, std: 11.1 ms, min: 13.6 ms, max: 65.7 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test15.sa"|avg: 13.7 ms, std: 1.9 ms, min: 12.1 ms, max: 18.4 ms|avg: 15.6 ms, std: 5.6 ms, min: 12.3 ms, max: 38.8 ms|avg: 17.9 ms, std: 12.7 ms, min: 12.3 ms, max: 83.6 ms
"ScopeChecking: Importing Chain1Base15"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.3 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.3 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 3.7 ms, std: 0.5 ms, min: 3.3 ms, max: 7.0 ms|avg: 3.6 ms, std: 4.0 ms, min: 2.3 ms, max: 29.6 ms|avg: 3.2 ms, std: 1.4 ms, min: 2.4 ms, max: 10.3 ms
"TCMod:Chain1Test15.M"|avg: 5.0 ms, std: 0.9 ms, min: 4.5 ms, max: 9.3 ms|avg: 4.5 ms, std: 2.5 ms, min: 3.1 ms, max: 14.7 ms|avg: 3.7 ms, std: 2.0 ms, min: 2.8 ms, max: 14.4 ms
"Total"|avg: 52.2 ms, std: 2.5 ms, min: 47.7 ms, max: 58.4 ms|avg: 58.7 ms, std: 20.3 ms, min: 45.3 ms, max: 151.9 ms|avg: 52.8 ms, std: 26.6 ms, min: 37.8 ms, max: 187.8 ms
"Total: Checking of Chain1Test15"|avg: 10.8 ms, std: 1.7 ms, min: 9.4 ms, max: 15.7 ms|avg: 11.0 ms, std: 4.1 ms, min: 8.2 ms, max: 24.8 ms|avg: 10.1 ms, std: 4.3 ms, min: 7.6 ms, max: 30.6 ms
"Total: Loading required modules from filesystem"|avg: 37.7 ms, std: 2.4 ms, min: 34.4 ms, max: 44.1 ms|avg: 44.0 ms, std: 16.1 ms, min: 34.4 ms, max: 120.1 ms|avg: 39.5 ms, std: 22.0 ms, min: 27.7 ms, max: 151.7 ms
"Total: ScopeCheck step"|avg: 4.3 ms, std: 1.3 ms, min: 3.6 ms, max: 9.6 ms|avg: 6.1 ms, std: 2.7 ms, min: 4.4 ms, max: 15.5 ms|avg: 5.7 ms, std: 2.6 ms, min: 4.2 ms, max: 15.6 ms
"Total: TypeCheck step"|avg: 6.2 ms, std: 1.3 ms, min: 5.3 ms, max: 11.0 ms|avg: 4.9 ms, std: 2.5 ms, min: 3.5 ms, max: 15.0 ms|avg: 4.4 ms, std: 2.3 ms, min: 3.2 ms, max: 16.4 ms
"Total: TypeChecking"|avg: 14.5 ms, std: 1.8 ms, min: 12.8 ms, max: 19.2 ms|avg: 14.6 ms, std: 6.9 ms, min: 10.6 ms, max: 52.0 ms|avg: 13.3 ms, std: 5.5 ms, min: 10.1 ms, max: 37.6 ms
"Total: WHNF"|avg: 1.1 ms, std: 0.3 ms, min: 0.7 ms, max: 1.8 ms|avg: 0.9 ms, std: 0.4 ms, min: 0.7 ms, max: 3.4 ms|avg: 1.1 ms, std: 0.9 ms, min: 0.7 ms, max: 6.3 ms
"TypeCheck: Definitions"|avg: 3.8 ms, std: 0.7 ms, min: 3.0 ms, max: 8.0 ms|avg: 3.3 ms, std: 1.7 ms, min: 2.3 ms, max: 10.4 ms|avg: 3.1 ms, std: 1.7 ms, min: 2.3 ms, max: 11.9 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.5 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.3 ms|avg: 0.3 ms, std: 0.5 ms, min: 0.1 ms, max: 3.8 ms
"TypeCheck: Signatures"|avg: 1.2 ms, std: 0.7 ms, min: 0.7 ms, max: 5.6 ms|avg: 1.1 ms, std: 1.6 ms, min: 0.7 ms, max: 11.7 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.4 ms, max: 2.2 ms

## experiments/imports\importChain\Chain1\Chain1Test2.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.2 ms, min: 1.1 ms, max: 1.9 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.3 ms, max: 2.8 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.3 ms, max: 3.1 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base2.sa"|avg: 22.2 ms, std: 2.2 ms, min: 19.8 ms, max: 30.7 ms|avg: 26.7 ms, std: 14.6 ms, min: 20.0 ms, max: 114.6 ms|avg: 19.5 ms, std: 12.6 ms, min: 13.4 ms, max: 75.2 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test2.sa"|avg: 12.8 ms, std: 1.0 ms, min: 12.0 ms, max: 17.4 ms|avg: 16.5 ms, std: 12.6 ms, min: 12.0 ms, max: 100.1 ms|avg: 17.3 ms, std: 11.3 ms, min: 12.3 ms, max: 78.8 ms
"ScopeChecking: Importing Chain1Base2"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.1 ms, std: 0.8 ms, min: 3.6 ms, max: 8.1 ms|avg: 3.3 ms, std: 1.7 ms, min: 2.3 ms, max: 12.7 ms|avg: 3.3 ms, std: 1.2 ms, min: 2.4 ms, max: 7.5 ms
"TCMod:Chain1Test2.M"|avg: 5.4 ms, std: 1.5 ms, min: 4.5 ms, max: 10.3 ms|avg: 4.6 ms, std: 3.1 ms, min: 3.1 ms, max: 18.4 ms|avg: 3.8 ms, std: 1.8 ms, min: 2.8 ms, max: 10.8 ms
"Total"|avg: 51.4 ms, std: 2.5 ms, min: 47.3 ms, max: 58.5 ms|avg: 59.8 ms, std: 32.3 ms, min: 44.9 ms, max: 261.2 ms|avg: 52.7 ms, std: 28.5 ms, min: 37.3 ms, max: 196.8 ms
"Total: Checking of Chain1Test2"|avg: 10.9 ms, std: 1.9 ms, min: 9.3 ms, max: 15.5 ms|avg: 11.4 ms, std: 6.1 ms, min: 7.9 ms, max: 36.7 ms|avg: 10.7 ms, std: 5.4 ms, min: 7.5 ms, max: 31.7 ms
"Total: Loading required modules from filesystem"|avg: 36.5 ms, std: 2.5 ms, min: 33.8 ms, max: 44.9 ms|avg: 45.1 ms, std: 27.0 ms, min: 34.3 ms, max: 218.2 ms|avg: 38.6 ms, std: 23.1 ms, min: 27.3 ms, max: 157.6 ms
"Total: ScopeCheck step"|avg: 4.0 ms, std: 0.9 ms, min: 3.5 ms, max: 7.7 ms|avg: 6.3 ms, std: 3.7 ms, min: 4.3 ms, max: 17.6 ms|avg: 6.3 ms, std: 3.4 ms, min: 4.0 ms, max: 19.1 ms
"Total: TypeCheck step"|avg: 6.6 ms, std: 1.8 ms, min: 5.4 ms, max: 11.6 ms|avg: 5.1 ms, std: 3.2 ms, min: 3.4 ms, max: 19.2 ms|avg: 4.5 ms, std: 2.3 ms, min: 3.2 ms, max: 13.1 ms
"Total: TypeChecking"|avg: 14.9 ms, std: 1.9 ms, min: 13.2 ms, max: 19.3 ms|avg: 14.7 ms, std: 6.8 ms, min: 10.3 ms, max: 43.0 ms|avg: 14.0 ms, std: 6.4 ms, min: 10.0 ms, max: 39.2 ms
"Total: WHNF"|avg: 1.4 ms, std: 1.3 ms, min: 0.6 ms, max: 6.5 ms|avg: 1.1 ms, std: 0.9 ms, min: 0.7 ms, max: 5.0 ms|avg: 1.0 ms, std: 0.6 ms, min: 0.7 ms, max: 3.3 ms
"TypeCheck: Definitions"|avg: 4.3 ms, std: 1.5 ms, min: 3.3 ms, max: 9.3 ms|avg: 3.6 ms, std: 2.5 ms, min: 2.3 ms, max: 15.0 ms|avg: 3.2 ms, std: 1.5 ms, min: 2.4 ms, max: 9.2 ms
"TypeCheck: Initialise typing env"|avg: 0.2 ms, std: 0.1 ms, min: 0.2 ms, max: 0.4 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.8 ms|avg: 0.3 ms, std: 0.2 ms, min: 0.1 ms, max: 1.7 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.6 ms, min: 0.6 ms, max: 4.9 ms|avg: 0.9 ms, std: 0.6 ms, min: 0.6 ms, max: 4.2 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.3 ms, max: 1.8 ms

## experiments/imports\importChain\Chain1\Chain1Test3.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.4 ms, std: 0.2 ms, min: 1.1 ms, max: 2.2 ms|avg: 1.6 ms, std: 0.5 ms, min: 1.2 ms, max: 3.4 ms|avg: 1.7 ms, std: 0.5 ms, min: 1.2 ms, max: 3.6 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base3.sa"|avg: 23.3 ms, std: 2.5 ms, min: 21.1 ms, max: 32.6 ms|avg: 26.6 ms, std: 16.6 ms, min: 19.7 ms, max: 127.8 ms|avg: 17.9 ms, std: 7.4 ms, min: 13.2 ms, max: 47.8 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test3.sa"|avg: 13.0 ms, std: 1.4 ms, min: 11.9 ms, max: 17.8 ms|avg: 15.9 ms, std: 7.7 ms, min: 12.0 ms, max: 60.5 ms|avg: 16.2 ms, std: 6.2 ms, min: 12.1 ms, max: 37.9 ms
"ScopeChecking: Importing Chain1Base3"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.0 ms, std: 0.6 ms, min: 3.6 ms, max: 6.6 ms|avg: 3.0 ms, std: 1.1 ms, min: 2.3 ms, max: 7.1 ms|avg: 3.2 ms, std: 1.4 ms, min: 2.4 ms, max: 9.5 ms
"TCMod:Chain1Test3.M"|avg: 5.3 ms, std: 1.3 ms, min: 4.5 ms, max: 10.0 ms|avg: 4.1 ms, std: 1.7 ms, min: 3.1 ms, max: 11.9 ms|avg: 4.1 ms, std: 3.1 ms, min: 2.7 ms, max: 21.1 ms
"Total"|avg: 52.8 ms, std: 2.7 ms, min: 48.4 ms, max: 60.8 ms|avg: 57.9 ms, std: 28.7 ms, min: 43.7 ms, max: 228.1 ms|avg: 49.6 ms, std: 17.0 ms, min: 36.9 ms, max: 105.8 ms
"Total: Checking of Chain1Test3"|avg: 10.9 ms, std: 1.9 ms, min: 9.4 ms, max: 15.3 ms|avg: 10.5 ms, std: 4.6 ms, min: 7.9 ms, max: 28.7 ms|avg: 10.4 ms, std: 4.8 ms, min: 7.3 ms, max: 30.6 ms
"Total: Loading required modules from filesystem"|avg: 37.9 ms, std: 2.6 ms, min: 35.0 ms, max: 47.0 ms|avg: 44.3 ms, std: 24.3 ms, min: 33.4 ms, max: 192.2 ms|avg: 36.1 ms, std: 13.2 ms, min: 27.0 ms, max: 88.8 ms
"Total: ScopeCheck step"|avg: 4.1 ms, std: 1.4 ms, min: 3.4 ms, max: 8.8 ms|avg: 5.9 ms, std: 2.9 ms, min: 4.2 ms, max: 17.0 ms|avg: 5.6 ms, std: 2.0 ms, min: 4.0 ms, max: 12.2 ms
"Total: TypeCheck step"|avg: 6.5 ms, std: 1.5 ms, min: 5.5 ms, max: 11.0 ms|avg: 4.6 ms, std: 1.9 ms, min: 3.5 ms, max: 13.6 ms|avg: 4.8 ms, std: 3.4 ms, min: 3.2 ms, max: 22.1 ms
"Total: TypeChecking"|avg: 14.9 ms, std: 1.9 ms, min: 12.9 ms, max: 19.4 ms|avg: 13.5 ms, std: 5.5 ms, min: 10.3 ms, max: 35.9 ms|avg: 13.6 ms, std: 6.0 ms, min: 9.8 ms, max: 40.1 ms
"Total: WHNF"|avg: 1.4 ms, std: 1.0 ms, min: 0.7 ms, max: 6.6 ms|avg: 1.0 ms, std: 0.5 ms, min: 0.7 ms, max: 3.4 ms|avg: 1.1 ms, std: 0.9 ms, min: 0.7 ms, max: 5.6 ms
"TypeCheck: Definitions"|avg: 4.1 ms, std: 1.2 ms, min: 3.0 ms, max: 9.1 ms|avg: 3.1 ms, std: 1.3 ms, min: 2.4 ms, max: 9.3 ms|avg: 3.4 ms, std: 2.6 ms, min: 2.2 ms, max: 18.1 ms
"TypeCheck: Initialise typing env"|avg: 0.2 ms, std: 0.1 ms, min: 0.2 ms, max: 0.4 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.4 ms|avg: 0.3 ms, std: 0.4 ms, min: 0.1 ms, max: 2.7 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 0.6 ms, min: 0.7 ms, max: 5.1 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.6 ms, max: 2.4 ms|avg: 0.6 ms, std: 0.5 ms, min: 0.4 ms, max: 2.8 ms

## experiments/imports\importChain\Chain1\Chain1Test4.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.1 ms, min: 1.1 ms, max: 1.6 ms|avg: 1.7 ms, std: 0.6 ms, min: 1.3 ms, max: 4.4 ms|avg: 1.6 ms, std: 0.5 ms, min: 1.2 ms, max: 4.7 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base4.sa"|avg: 23.3 ms, std: 2.2 ms, min: 20.7 ms, max: 28.2 ms|avg: 25.2 ms, std: 9.1 ms, min: 19.2 ms, max: 72.2 ms|avg: 19.6 ms, std: 17.8 ms, min: 13.1 ms, max: 132.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test4.sa"|avg: 13.9 ms, std: 2.1 ms, min: 12.3 ms, max: 21.7 ms|avg: 16.2 ms, std: 6.0 ms, min: 12.7 ms, max: 41.9 ms|avg: 16.3 ms, std: 6.8 ms, min: 12.6 ms, max: 42.2 ms
"ScopeChecking: Importing Chain1Base4"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.7 ms, std: 1.4 ms, min: 3.7 ms, max: 8.8 ms|avg: 3.1 ms, std: 1.0 ms, min: 2.4 ms, max: 8.0 ms|avg: 3.5 ms, std: 1.4 ms, min: 2.5 ms, max: 8.9 ms
"TCMod:Chain1Test4.M"|avg: 5.5 ms, std: 0.8 ms, min: 5.0 ms, max: 9.6 ms|avg: 4.5 ms, std: 1.2 ms, min: 3.5 ms, max: 9.5 ms|avg: 4.0 ms, std: 1.6 ms, min: 3.0 ms, max: 10.1 ms
"Total"|avg: 54.6 ms, std: 3.1 ms, min: 49.9 ms, max: 63.4 ms|avg: 58.5 ms, std: 17.5 ms, min: 47.0 ms, max: 140.4 ms|avg: 53.2 ms, std: 28.3 ms, min: 38.5 ms, max: 209.4 ms
"Total: Checking of Chain1Test4"|avg: 11.2 ms, std: 1.3 ms, min: 10.3 ms, max: 15.7 ms|avg: 12.0 ms, std: 3.6 ms, min: 8.8 ms, max: 23.9 ms|avg: 11.8 ms, std: 5.2 ms, min: 8.0 ms, max: 31.1 ms
"Total: Loading required modules from filesystem"|avg: 38.8 ms, std: 2.3 ms, min: 34.9 ms, max: 45.0 ms|avg: 43.4 ms, std: 14.8 ms, min: 33.9 ms, max: 119.1 ms|avg: 37.8 ms, std: 23.5 ms, min: 27.4 ms, max: 172.4 ms
"Total: ScopeCheck step"|avg: 4.3 ms, std: 0.7 ms, min: 3.9 ms, max: 9.0 ms|avg: 7.0 ms, std: 3.0 ms, min: 4.8 ms, max: 19.1 ms|avg: 7.2 ms, std: 4.0 ms, min: 4.4 ms, max: 25.8 ms
"Total: TypeCheck step"|avg: 6.7 ms, std: 1.2 ms, min: 6.1 ms, max: 11.3 ms|avg: 4.9 ms, std: 1.4 ms, min: 3.9 ms, max: 11.3 ms|avg: 4.6 ms, std: 1.9 ms, min: 3.5 ms, max: 11.2 ms
"Total: TypeChecking"|avg: 15.9 ms, std: 1.9 ms, min: 14.4 ms, max: 20.4 ms|avg: 15.1 ms, std: 4.1 ms, min: 11.4 ms, max: 28.6 ms|avg: 15.3 ms, std: 6.0 ms, min: 10.6 ms, max: 37.0 ms
"Total: WHNF"|avg: 1.4 ms, std: 0.7 ms, min: 0.8 ms, max: 5.6 ms|avg: 1.2 ms, std: 0.6 ms, min: 0.8 ms, max: 4.9 ms|avg: 1.1 ms, std: 0.5 ms, min: 0.8 ms, max: 2.8 ms
"TypeCheck: Definitions"|avg: 4.3 ms, std: 0.9 ms, min: 3.3 ms, max: 8.3 ms|avg: 3.5 ms, std: 1.0 ms, min: 2.6 ms, max: 7.4 ms|avg: 3.3 ms, std: 1.4 ms, min: 2.5 ms, max: 8.6 ms
"TypeCheck: Initialise typing env"|avg: 0.2 ms, std: 0.1 ms, min: 0.2 ms, max: 0.4 ms|avg: 0.1 ms, std: 0.2 ms, min: 0.0 ms, max: 1.2 ms|avg: 0.3 ms, std: 0.3 ms, min: 0.1 ms, max: 2.4 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 0.2 ms, min: 0.7 ms, max: 1.9 ms|avg: 0.9 ms, std: 0.2 ms, min: 0.7 ms, max: 1.9 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.4 ms, max: 1.3 ms

## experiments/imports\importChain\Chain1\Chain1Test5.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.1 ms, min: 1.1 ms, max: 1.9 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.2 ms, max: 3.2 ms|avg: 1.6 ms, std: 0.3 ms, min: 1.3 ms, max: 2.9 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base5.sa"|avg: 22.9 ms, std: 2.6 ms, min: 20.3 ms, max: 30.2 ms|avg: 27.1 ms, std: 14.2 ms, min: 20.2 ms, max: 92.9 ms|avg: 18.4 ms, std: 6.9 ms, min: 13.5 ms, max: 47.0 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test5.sa"|avg: 12.6 ms, std: 1.5 ms, min: 11.6 ms, max: 17.7 ms|avg: 16.2 ms, std: 9.4 ms, min: 11.8 ms, max: 59.8 ms|avg: 15.8 ms, std: 5.3 ms, min: 11.8 ms, max: 33.8 ms
"ScopeChecking: Importing Chain1Base5"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms
"Serialization: Write main to file"|avg: 3.8 ms, std: 0.7 ms, min: 3.3 ms, max: 7.8 ms|avg: 3.2 ms, std: 1.6 ms, min: 2.2 ms, max: 11.0 ms|avg: 3.1 ms, std: 1.5 ms, min: 2.3 ms, max: 11.6 ms
"TCMod:Chain1Test5.M"|avg: 5.1 ms, std: 1.4 ms, min: 4.1 ms, max: 9.7 ms|avg: 4.2 ms, std: 2.7 ms, min: 3.0 ms, max: 17.1 ms|avg: 3.8 ms, std: 2.4 ms, min: 2.6 ms, max: 15.1 ms
"Total"|avg: 51.2 ms, std: 3.2 ms, min: 46.3 ms, max: 58.2 ms|avg: 58.2 ms, std: 28.7 ms, min: 43.9 ms, max: 203.0 ms|avg: 49.3 ms, std: 17.8 ms, min: 36.5 ms, max: 134.4 ms
"Total: Checking of Chain1Test5"|avg: 10.3 ms, std: 1.8 ms, min: 8.6 ms, max: 14.5 ms|avg: 9.9 ms, std: 4.8 ms, min: 7.5 ms, max: 36.5 ms|avg: 10.1 ms, std: 7.1 ms, min: 6.9 ms, max: 54.5 ms
"Total: Loading required modules from filesystem"|avg: 37.0 ms, std: 2.9 ms, min: 33.5 ms, max: 45.2 ms|avg: 45.1 ms, std: 23.5 ms, min: 33.3 ms, max: 155.5 ms|avg: 36.0 ms, std: 11.6 ms, min: 27.1 ms, max: 78.1 ms
"Total: ScopeCheck step"|avg: 3.9 ms, std: 1.2 ms, min: 3.3 ms, max: 8.5 ms|avg: 5.2 ms, std: 2.3 ms, min: 4.0 ms, max: 18.0 ms|avg: 5.8 ms, std: 5.2 ms, min: 3.8 ms, max: 39.9 ms
"Total: TypeCheck step"|avg: 6.1 ms, std: 1.5 ms, min: 5.0 ms, max: 10.7 ms|avg: 4.6 ms, std: 2.8 ms, min: 3.4 ms, max: 18.5 ms|avg: 4.3 ms, std: 2.5 ms, min: 3.0 ms, max: 15.5 ms
"Total: TypeChecking"|avg: 14.2 ms, std: 1.8 ms, min: 12.4 ms, max: 18.1 ms|avg: 13.1 ms, std: 6.2 ms, min: 9.9 ms, max: 47.5 ms|avg: 13.3 ms, std: 8.4 ms, min: 9.4 ms, max: 66.2 ms
"Total: WHNF"|avg: 1.2 ms, std: 0.9 ms, min: 0.6 ms, max: 6.0 ms|avg: 1.1 ms, std: 1.4 ms, min: 0.6 ms, max: 10.1 ms|avg: 1.2 ms, std: 1.7 ms, min: 0.7 ms, max: 12.9 ms
"TypeCheck: Definitions"|avg: 3.7 ms, std: 1.1 ms, min: 2.8 ms, max: 8.2 ms|avg: 3.2 ms, std: 2.0 ms, min: 2.2 ms, max: 12.2 ms|avg: 3.2 ms, std: 2.2 ms, min: 2.1 ms, max: 14.6 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.4 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.4 ms|avg: 0.2 ms, std: 0.2 ms, min: 0.1 ms, max: 1.1 ms
"TypeCheck: Signatures"|avg: 1.3 ms, std: 1.0 ms, min: 0.6 ms, max: 6.2 ms|avg: 0.9 ms, std: 0.4 ms, min: 0.6 ms, max: 2.6 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.4 ms, max: 2.0 ms

## experiments/imports\importChain\Chain1\Chain1Test6.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.2 ms, min: 1.2 ms, max: 2.2 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.3 ms, max: 3.9 ms|avg: 1.7 ms, std: 0.5 ms, min: 1.3 ms, max: 3.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base6.sa"|avg: 22.8 ms, std: 2.1 ms, min: 20.4 ms, max: 26.9 ms|avg: 27.4 ms, std: 10.8 ms, min: 20.4 ms, max: 82.9 ms|avg: 18.9 ms, std: 8.7 ms, min: 13.7 ms, max: 56.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test6.sa"|avg: 13.0 ms, std: 1.6 ms, min: 11.7 ms, max: 17.6 ms|avg: 17.1 ms, std: 10.0 ms, min: 11.9 ms, max: 72.3 ms|avg: 15.9 ms, std: 6.6 ms, min: 11.9 ms, max: 44.1 ms
"ScopeChecking: Importing Chain1Base6"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 3.9 ms, std: 0.5 ms, min: 3.5 ms, max: 6.6 ms|avg: 3.2 ms, std: 1.9 ms, min: 2.3 ms, max: 15.3 ms|avg: 3.3 ms, std: 1.4 ms, min: 2.3 ms, max: 10.0 ms
"TCMod:Chain1Test6.M"|avg: 5.2 ms, std: 1.1 ms, min: 4.5 ms, max: 9.8 ms|avg: 4.6 ms, std: 3.2 ms, min: 3.2 ms, max: 21.4 ms|avg: 4.1 ms, std: 2.1 ms, min: 2.9 ms, max: 13.6 ms
"Total"|avg: 51.7 ms, std: 2.9 ms, min: 46.8 ms, max: 59.4 ms|avg: 60.5 ms, std: 25.8 ms, min: 44.2 ms, max: 194.9 ms|avg: 50.9 ms, std: 19.8 ms, min: 37.7 ms, max: 132.1 ms
"Total: Checking of Chain1Test6"|avg: 10.3 ms, std: 1.6 ms, min: 9.1 ms, max: 14.8 ms|avg: 10.9 ms, std: 5.6 ms, min: 7.8 ms, max: 37.6 ms|avg: 10.8 ms, std: 5.5 ms, min: 7.3 ms, max: 26.2 ms
"Total: Loading required modules from filesystem"|avg: 37.4 ms, std: 2.8 ms, min: 33.6 ms, max: 44.6 ms|avg: 46.4 ms, std: 20.0 ms, min: 34.1 ms, max: 158.4 ms|avg: 36.8 ms, std: 14.9 ms, min: 27.5 ms, max: 98.4 ms
"Total: ScopeCheck step"|avg: 3.8 ms, std: 0.9 ms, min: 3.3 ms, max: 7.6 ms|avg: 5.8 ms, std: 2.6 ms, min: 4.0 ms, max: 16.3 ms|avg: 6.1 ms, std: 4.2 ms, min: 3.8 ms, max: 21.1 ms
"Total: TypeCheck step"|avg: 6.3 ms, std: 1.3 ms, min: 5.4 ms, max: 10.8 ms|avg: 5.1 ms, std: 3.3 ms, min: 3.6 ms, max: 22.3 ms|avg: 4.7 ms, std: 2.5 ms, min: 3.3 ms, max: 16.9 ms
"Total: TypeChecking"|avg: 14.3 ms, std: 1.6 ms, min: 12.9 ms, max: 18.8 ms|avg: 14.1 ms, std: 7.1 ms, min: 10.1 ms, max: 52.9 ms|avg: 14.1 ms, std: 6.6 ms, min: 9.8 ms, max: 35.9 ms
"Total: WHNF"|avg: 1.3 ms, std: 0.5 ms, min: 0.7 ms, max: 4.1 ms|avg: 1.1 ms, std: 0.8 ms, min: 0.8 ms, max: 6.0 ms|avg: 1.1 ms, std: 0.5 ms, min: 0.8 ms, max: 3.3 ms
"TypeCheck: Definitions"|avg: 4.1 ms, std: 1.0 ms, min: 3.2 ms, max: 9.1 ms|avg: 3.6 ms, std: 2.6 ms, min: 2.4 ms, max: 17.4 ms|avg: 3.3 ms, std: 1.7 ms, min: 2.4 ms, max: 12.0 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.5 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.6 ms|avg: 0.3 ms, std: 0.3 ms, min: 0.1 ms, max: 2.3 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.6 ms, min: 0.6 ms, max: 4.7 ms|avg: 0.9 ms, std: 0.7 ms, min: 0.6 ms, max: 4.4 ms|avg: 0.6 ms, std: 0.9 ms, min: 0.3 ms, max: 6.5 ms

## experiments/imports\importChain\Chain1\Chain1Test7.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.1 ms, min: 1.2 ms, max: 1.8 ms|avg: 1.7 ms, std: 0.5 ms, min: 1.2 ms, max: 3.4 ms|avg: 1.6 ms, std: 0.5 ms, min: 1.3 ms, max: 4.8 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base7.sa"|avg: 23.8 ms, std: 2.1 ms, min: 21.4 ms, max: 28.0 ms|avg: 27.5 ms, std: 13.1 ms, min: 19.9 ms, max: 90.6 ms|avg: 17.5 ms, std: 7.1 ms, min: 13.4 ms, max: 49.3 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test7.sa"|avg: 14.0 ms, std: 2.3 ms, min: 12.0 ms, max: 18.6 ms|avg: 16.3 ms, std: 6.4 ms, min: 12.3 ms, max: 39.3 ms|avg: 16.6 ms, std: 9.6 ms, min: 12.2 ms, max: 69.1 ms
"ScopeChecking: Importing Chain1Base7"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.2 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.2 ms, std: 1.2 ms, min: 3.5 ms, max: 9.5 ms|avg: 3.2 ms, std: 1.1 ms, min: 2.3 ms, max: 6.9 ms|avg: 3.4 ms, std: 1.6 ms, min: 2.4 ms, max: 11.9 ms
"TCMod:Chain1Test7.M"|avg: 5.2 ms, std: 0.8 ms, min: 4.6 ms, max: 8.6 ms|avg: 4.3 ms, std: 1.6 ms, min: 3.3 ms, max: 10.7 ms|avg: 3.9 ms, std: 1.9 ms, min: 2.9 ms, max: 12.8 ms
"Total"|avg: 54.5 ms, std: 3.0 ms, min: 48.9 ms, max: 60.8 ms|avg: 60.4 ms, std: 22.6 ms, min: 45.3 ms, max: 157.9 ms|avg: 50.4 ms, std: 22.9 ms, min: 38.1 ms, max: 150.6 ms
"Total: Checking of Chain1Test7"|avg: 10.9 ms, std: 1.7 ms, min: 9.6 ms, max: 15.3 ms|avg: 11.4 ms, std: 3.9 ms, min: 8.1 ms, max: 27.0 ms|avg: 10.9 ms, std: 6.6 ms, min: 7.6 ms, max: 45.6 ms
"Total: Loading required modules from filesystem"|avg: 39.4 ms, std: 3.0 ms, min: 35.5 ms, max: 47.2 ms|avg: 45.8 ms, std: 19.1 ms, min: 33.8 ms, max: 133.1 ms|avg: 36.0 ms, std: 15.9 ms, min: 27.4 ms, max: 110.1 ms
"Total: ScopeCheck step"|avg: 4.3 ms, std: 1.2 ms, min: 3.6 ms, max: 8.7 ms|avg: 6.5 ms, std: 3.2 ms, min: 4.3 ms, max: 21.9 ms|avg: 6.4 ms, std: 4.6 ms, min: 4.1 ms, max: 31.4 ms
"Total: TypeCheck step"|avg: 6.4 ms, std: 1.3 ms, min: 5.5 ms, max: 11.0 ms|avg: 4.8 ms, std: 1.8 ms, min: 3.6 ms, max: 11.0 ms|avg: 4.5 ms, std: 2.2 ms, min: 3.3 ms, max: 14.2 ms
"Total: TypeChecking"|avg: 15.1 ms, std: 1.9 ms, min: 13.3 ms, max: 19.6 ms|avg: 14.6 ms, std: 4.7 ms, min: 10.6 ms, max: 34.0 ms|avg: 14.3 ms, std: 7.9 ms, min: 10.0 ms, max: 57.5 ms
"Total: WHNF"|avg: 1.2 ms, std: 0.2 ms, min: 0.7 ms, max: 1.8 ms|avg: 1.0 ms, std: 0.3 ms, min: 0.7 ms, max: 2.1 ms|avg: 1.1 ms, std: 0.6 ms, min: 0.7 ms, max: 3.3 ms
"TypeCheck: Definitions"|avg: 4.0 ms, std: 0.7 ms, min: 3.2 ms, max: 7.7 ms|avg: 3.2 ms, std: 1.0 ms, min: 2.4 ms, max: 6.9 ms|avg: 3.2 ms, std: 1.7 ms, min: 2.3 ms, max: 10.9 ms
"TypeCheck: Initialise typing env"|avg: 0.2 ms, std: 0.1 ms, min: 0.2 ms, max: 0.5 ms|avg: 0.2 ms, std: 0.8 ms, min: 0.0 ms, max: 5.7 ms|avg: 0.3 ms, std: 0.2 ms, min: 0.1 ms, max: 1.6 ms
"TypeCheck: Signatures"|avg: 1.1 ms, std: 0.5 ms, min: 0.7 ms, max: 4.5 ms|avg: 1.0 ms, std: 1.0 ms, min: 0.6 ms, max: 7.8 ms|avg: 0.5 ms, std: 0.3 ms, min: 0.4 ms, max: 1.7 ms

## experiments/imports\importChain\Chain1\Chain1Test8.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.3 ms, std: 0.1 ms, min: 1.2 ms, max: 1.6 ms|avg: 1.6 ms, std: 0.4 ms, min: 1.3 ms, max: 3.3 ms|avg: 1.7 ms, std: 0.5 ms, min: 1.2 ms, max: 3.4 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base8.sa"|avg: 21.4 ms, std: 2.1 ms, min: 19.7 ms, max: 29.2 ms|avg: 24.3 ms, std: 10.2 ms, min: 19.3 ms, max: 87.0 ms|avg: 17.9 ms, std: 11.5 ms, min: 12.9 ms, max: 72.4 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test8.sa"|avg: 14.2 ms, std: 2.0 ms, min: 12.5 ms, max: 18.9 ms|avg: 16.1 ms, std: 9.2 ms, min: 12.5 ms, max: 74.2 ms|avg: 17.0 ms, std: 9.7 ms, min: 12.6 ms, max: 73.4 ms
"ScopeChecking: Importing Chain1Base8"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 4.3 ms, std: 0.7 ms, min: 3.8 ms, max: 8.0 ms|avg: 3.3 ms, std: 1.2 ms, min: 2.4 ms, max: 7.7 ms|avg: 3.5 ms, std: 1.5 ms, min: 2.5 ms, max: 9.0 ms
"TCMod:Chain1Test8.M"|avg: 5.6 ms, std: 1.2 ms, min: 4.7 ms, max: 9.9 ms|avg: 4.5 ms, std: 2.1 ms, min: 3.3 ms, max: 12.0 ms|avg: 4.2 ms, std: 2.3 ms, min: 3.0 ms, max: 13.1 ms
"Total"|avg: 52.7 ms, std: 2.7 ms, min: 48.2 ms, max: 59.7 ms|avg: 56.9 ms, std: 22.1 ms, min: 44.6 ms, max: 161.5 ms|avg: 51.2 ms, std: 25.0 ms, min: 37.9 ms, max: 183.3 ms
"Total: Checking of Chain1Test8"|avg: 11.2 ms, std: 1.6 ms, min: 9.9 ms, max: 14.9 ms|avg: 11.4 ms, std: 5.0 ms, min: 8.3 ms, max: 31.6 ms|avg: 10.8 ms, std: 3.8 ms, min: 7.9 ms, max: 25.9 ms
"Total: Loading required modules from filesystem"|avg: 37.2 ms, std: 2.5 ms, min: 33.9 ms, max: 44.1 ms|avg: 42.2 ms, std: 17.0 ms, min: 33.4 ms, max: 127.6 ms|avg: 36.9 ms, std: 21.0 ms, min: 27.1 ms, max: 149.0 ms
"Total: ScopeCheck step"|avg: 4.1 ms, std: 0.7 ms, min: 3.7 ms, max: 8.0 ms|avg: 6.3 ms, std: 3.1 ms, min: 4.5 ms, max: 17.6 ms|avg: 5.9 ms, std: 2.0 ms, min: 4.3 ms, max: 12.7 ms
"Total: TypeCheck step"|avg: 6.8 ms, std: 1.4 ms, min: 5.8 ms, max: 10.9 ms|avg: 5.1 ms, std: 2.3 ms, min: 3.7 ms, max: 13.9 ms|avg: 4.9 ms, std: 2.7 ms, min: 3.4 ms, max: 14.9 ms
"Total: TypeChecking"|avg: 15.5 ms, std: 1.8 ms, min: 14.0 ms, max: 21.8 ms|avg: 14.7 ms, std: 5.8 ms, min: 10.9 ms, max: 38.3 ms|avg: 14.3 ms, std: 4.9 ms, min: 10.4 ms, max: 34.3 ms
"Total: WHNF"|avg: 1.3 ms, std: 0.7 ms, min: 0.8 ms, max: 5.8 ms|avg: 1.1 ms, std: 0.5 ms, min: 0.7 ms, max: 3.3 ms|avg: 1.0 ms, std: 0.4 ms, min: 0.8 ms, max: 3.0 ms
"TypeCheck: Definitions"|avg: 4.2 ms, std: 0.9 ms, min: 3.2 ms, max: 8.2 ms|avg: 3.5 ms, std: 1.7 ms, min: 2.5 ms, max: 10.3 ms|avg: 3.6 ms, std: 2.1 ms, min: 2.4 ms, max: 12.4 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.6 ms, min: 0.2 ms, max: 4.7 ms|avg: 0.1 ms, std: 0.2 ms, min: 0.0 ms, max: 1.3 ms|avg: 0.3 ms, std: 0.7 ms, min: 0.1 ms, max: 5.1 ms
"TypeCheck: Signatures"|avg: 1.3 ms, std: 0.9 ms, min: 0.7 ms, max: 5.6 ms|avg: 0.9 ms, std: 0.4 ms, min: 0.6 ms, max: 2.8 ms|avg: 0.5 ms, std: 0.2 ms, min: 0.4 ms, max: 1.4 ms

## experiments/imports\importChain\Chain1\Chain1Test9.sa

Labels|Version0|Version1|Version2
---|---|---|---
"Loading: Processing import dependencies"|avg: 1.4 ms, std: 0.2 ms, min: 1.2 ms, max: 2.3 ms|avg: 1.8 ms, std: 0.6 ms, min: 1.2 ms, max: 4.0 ms|avg: 2.0 ms, std: 1.7 ms, min: 1.2 ms, max: 13.5 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Base9.sa"|avg: 23.3 ms, std: 3.3 ms, min: 20.6 ms, max: 34.7 ms|avg: 32.7 ms, std: 12.1 ms, min: 20.5 ms, max: 68.9 ms|avg: 25.6 ms, std: 17.2 ms, min: 13.7 ms, max: 102.2 ms
"Loading: experiments/imports\\importChain\\Chain1\\Chain1Test9.sa"|avg: 12.4 ms, std: 1.2 ms, min: 11.5 ms, max: 17.8 ms|avg: 15.2 ms, std: 4.7 ms, min: 11.6 ms, max: 34.8 ms|avg: 19.0 ms, std: 12.8 ms, min: 11.8 ms, max: 84.6 ms
"ScopeChecking: Importing Chain1Base9"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"ScopeChecking: Total Imports"|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.0 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms|avg: 0.0 ms, std: 0.0 ms, min: 0.0 ms, max: 0.1 ms
"Serialization: Write main to file"|avg: 3.8 ms, std: 1.2 ms, min: 3.2 ms, max: 8.7 ms|avg: 3.1 ms, std: 1.0 ms, min: 2.3 ms, max: 6.9 ms|avg: 3.2 ms, std: 1.2 ms, min: 2.3 ms, max: 7.7 ms
"TCMod:Chain1Test9.M"|avg: 4.8 ms, std: 1.0 ms, min: 4.2 ms, max: 10.0 ms|avg: 4.3 ms, std: 2.0 ms, min: 3.1 ms, max: 13.4 ms|avg: 4.0 ms, std: 2.4 ms, min: 2.7 ms, max: 12.8 ms
"Total"|avg: 50.9 ms, std: 3.9 ms, min: 46.4 ms, max: 67.0 ms|avg: 63.0 ms, std: 20.6 ms, min: 44.3 ms, max: 152.6 ms|avg: 61.6 ms, std: 38.4 ms, min: 37.0 ms, max: 263.1 ms
"Total: Checking of Chain1Test9"|avg: 9.7 ms, std: 1.5 ms, min: 8.7 ms, max: 14.5 ms|avg: 9.9 ms, std: 5.1 ms, min: 7.4 ms, max: 41.2 ms|avg: 11.2 ms, std: 7.2 ms, min: 7.0 ms, max: 46.6 ms
"Total: Loading required modules from filesystem"|avg: 37.4 ms, std: 3.7 ms, min: 34.2 ms, max: 54.1 ms|avg: 50.0 ms, std: 16.1 ms, min: 34.4 ms, max: 104.4 ms|avg: 47.2 ms, std: 31.0 ms, min: 27.1 ms, max: 212.9 ms
"Total: ScopeCheck step"|avg: 3.5 ms, std: 0.5 ms, min: 3.2 ms, max: 6.9 ms|avg: 5.2 ms, std: 3.4 ms, min: 3.8 ms, max: 26.8 ms|avg: 6.5 ms, std: 5.1 ms, min: 3.7 ms, max: 33.0 ms
"Total: TypeCheck step"|avg: 5.9 ms, std: 1.3 ms, min: 5.1 ms, max: 10.9 ms|avg: 4.7 ms, std: 2.1 ms, min: 3.4 ms, max: 14.4 ms|avg: 4.7 ms, std: 2.6 ms, min: 3.1 ms, max: 14.2 ms
"Total: TypeChecking"|avg: 13.5 ms, std: 1.8 ms, min: 12.2 ms, max: 17.9 ms|avg: 13.0 ms, std: 5.8 ms, min: 9.8 ms, max: 48.2 ms|avg: 14.5 ms, std: 8.0 ms, min: 9.4 ms, max: 50.2 ms
"Total: WHNF"|avg: 1.2 ms, std: 0.7 ms, min: 0.6 ms, max: 5.8 ms|avg: 0.9 ms, std: 0.5 ms, min: 0.6 ms, max: 3.8 ms|avg: 1.0 ms, std: 0.5 ms, min: 0.7 ms, max: 2.9 ms
"TypeCheck: Definitions"|avg: 3.7 ms, std: 0.9 ms, min: 3.1 ms, max: 8.4 ms|avg: 3.3 ms, std: 1.8 ms, min: 2.2 ms, max: 10.5 ms|avg: 3.4 ms, std: 2.1 ms, min: 2.2 ms, max: 11.1 ms
"TypeCheck: Initialise typing env"|avg: 0.3 ms, std: 0.1 ms, min: 0.2 ms, max: 0.5 ms|avg: 0.1 ms, std: 0.1 ms, min: 0.0 ms, max: 0.5 ms|avg: 0.3 ms, std: 0.3 ms, min: 0.1 ms, max: 1.4 ms
"TypeCheck: Signatures"|avg: 1.0 ms, std: 0.3 ms, min: 0.7 ms, max: 2.3 ms|avg: 0.9 ms, std: 0.3 ms, min: 0.7 ms, max: 2.8 ms|avg: 0.6 ms, std: 0.3 ms, min: 0.4 ms, max: 2.0 ms

