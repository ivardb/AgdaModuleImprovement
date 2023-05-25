module Chain1Base14  where
    data Bool : Set where
       true false : Bool
    {-# BUILTIN BOOL  Bool  #-}
    {-# BUILTIN FALSE false #-}
    {-# BUILTIN TRUE  true  #-}
    
    record ⊤ : Set where
       instance constructor tt
    {-# BUILTIN UNIT ⊤ #-}
    
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if true then Bool else Bool )  where
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then x3 else x3 ) ) ) $ ( if false then Bool else Bool )
        d2 = if if p1 then p1 else true then if p1 then true else true else if p1 then p1 else p1
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d2 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then x11 else Bool ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> true ) ) ) $ ( d2 ) ) ) ) $ ( if false then p1 else false )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> false ) ) ) $ ( d8 ) ) ) ) $ ( if p1 then p1 else false )
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = if if p1 then true else d8 then if false then p1 else p1 else if d4 then p1 else false
        d17 : if false then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> d4 ) ) ) $ ( x18 ) ) ) ) $ ( if p1 then false else p1 )
        d20 : if false then if true then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if false then x21 else true ) ) ) $ ( if p1 then p1 else false )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then Bool else x23 ) ) ) $ ( if false then Bool else Bool )
        d22 = if if true then d8 else d2 then if d8 then p1 else p1 else if false then true else true
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if true then true else d2 ) ) ) $ ( if d4 then true else d12 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d26 = if if d8 then d17 else true then if true then true else d24 else if d20 then d17 else p1
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = if if p1 then d20 else p1 then if d17 then d8 else p1 else if true then d8 else p1
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> true ) ) ) $ ( false ) ) ) ) $ ( if d24 then p1 else p1 )
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = if if d17 then p1 else d24 then if true then p1 else p1 else if p1 then p1 else false
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = if if false then d22 else true then if d22 then false else p1 else if p1 then false else p1
        d37 : if false then if true then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> d35 ) ) ) $ ( false ) ) ) ) $ ( if true then false else p1 )
        d40 : if false then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if d17 then d2 else p1 then if d37 then p1 else p1 else if p1 then d36 else d37
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( x42 ) ) ) ) $ ( if true then Bool else Bool )
        d41 = if if true then p1 else d4 then if true then p1 else p1 else if p1 then d24 else d20
        d44 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then x45 else x45 ) ) ) $ ( if true then Bool else Bool )
        d44 = if if true then p1 else d26 then if true then false else d35 else if d12 then d2 else p1
        d46 : if false then if true then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if x47 then x47 else d20 ) ) ) $ ( if false then false else p1 )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if true then false else true then if false then p1 else false else if d30 then d36 else d30
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d49 = if if d2 then true else true then if d8 then true else d20 else if p1 then p1 else p1
        d51 : if true then if true then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> d41 ) ) ) $ ( true ) ) ) ) $ ( if d44 then d20 else d46 )
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> d16 ) ) ) $ ( true ) ) ) ) $ ( if d16 then p1 else false )
        d57 : if false then if false then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if true then d48 else false ) ) ) $ ( if d54 then d46 else d36 )
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d57 ) ) ) $ ( d26 ) ) ) ) $ ( if d40 then d44 else d51 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then x63 else x63 ) ) ) $ ( if true then Bool else Bool )
        d62 = if if p1 then d36 else d57 then if d12 then d51 else d49 else if false then d8 else p1
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( x66 ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if true then true else x65 ) ) ) $ ( if true then d37 else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if if d41 then d49 else p1 then if d12 then p1 else false else if d54 then false else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if true then p1 else d20 ) ) ) $ ( if false then d24 else p1 )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if p1 then false else p1 then if true then d8 else false else if d46 then d46 else true
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if p1 then false else p1 then if true then true else d17 else if false then p1 else d28
        d77 : if false then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if d40 then d46 else d54 then if d28 then p1 else d26 else if p1 then p1 else p1
        d78 : if true then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if false then d8 else p1 ) ) ) $ ( if false then d35 else d77 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( true ) ) ) ) $ ( if d4 then true else p1 )
        d84 : if false then if false then Bool else Bool else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if d64 then true else p1 ) ) ) $ ( if false then d26 else p1 )
        d86 : if false then if false then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d16 then d78 else d41 )
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if d51 then p1 else d16 then if d16 then d16 else d2 else if true then true else false
        d90 : if true then if true then Bool else Bool else if false then Bool else Bool
        d90 = if if p1 then true else p1 then if d57 then p1 else p1 else if d26 then true else d12
        d91 : if false then if true then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if x92 then true else d17 ) ) ) $ ( if d62 then p1 else p1 )
        d93 : if false then if true then Bool else Bool else if true then Bool else Bool
        d93 = if if d84 then p1 else d64 then if d35 then p1 else p1 else if d41 then d78 else true
        d94 : if false then if false then Bool else Bool else if true then Bool else Bool
        d94 = if if p1 then p1 else p1 then if d26 then d17 else p1 else if p1 then false else p1
        d95 : if false then if false then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> x97 ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else true )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then Bool else x99 ) ) ) $ ( if false then Bool else Bool )
        d98 = if if true then false else p1 then if false then p1 else true else if p1 then d37 else true
        d100 : if false then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if false then p1 else d12 then if d77 then p1 else d40 else if d80 then p1 else p1
        d101 : if false then if true then Bool else Bool else if false then Bool else Bool
        d101 = if if p1 then p1 else false then if d49 then true else d84 else if p1 then true else false
        d102 : if true then if true then Bool else Bool else if true then Bool else Bool
        d102 = if if false then true else d17 then if true then p1 else d71 else if d101 then d68 else p1
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if d40 then d16 else d57 ) ) ) $ ( if p1 then true else true )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x107 ) ) ) $ ( x106 ) ) ) ) $ ( if false then Bool else Bool )
        d105 = if if true then true else p1 then if false then p1 else p1 else if d57 then d36 else p1
        d108 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x111 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if x109 then d64 else false ) ) ) $ ( if false then p1 else true )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then Bool else x115 ) ) ) $ ( if false then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> d54 ) ) ) $ ( false ) ) ) ) $ ( if d77 then d8 else p1 )
    module M'  = M ( false ) 