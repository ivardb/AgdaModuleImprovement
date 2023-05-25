# Version 3

This version exists to show that we can easily fix a number of pretty-printing issues of Agda by slightly altering our version2. For both version 1 and 2 we have used Term-qualified names for the scope-checker. This version simply enables this feature in the parser for source files allowing users to use them as well. This syntax would fix much of the pretty-printing problems related to infix and mixfix operators. 

Agda allows users to define function names with underscores in them such as if_then_else_. The arguments to the function can then be typed in the place of the underscores to create much nicer looking function calls as they can be written in mathematical notation. Unfortunately this breaks when it is used with module parameters:
```
module M (A : Set) where
    postulate if_then_else_ : Bool -> A -> A -> A

open M

x = if_then_else_ Bool True True False
```
from this example we see that we cannot use the mixfix notation the moment module parameters are introduced. Even worse this might get pretty-printed by Agda as: `if Bool then True else True False` which is complete nonsense.

This version would allow the syntax `(M Bool).if True then True else False` which is much better.
Simple Agda does not support mixfix operators though so we cannot demonstrate this with actual code but the advantages of this syntax in general should be clear.