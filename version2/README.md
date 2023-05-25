# Version 2
In this version we keep module aliases intact as well.
As we no longer make any changes to the code at all we can simply initiate our typing environment with the signature and then verify it without having to update the environment in-between.

Signature lookup now needs to deal with aliases but this is an almost trivial change as it is very similar to the term-qualified names introduced in version 1. 