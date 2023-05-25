module Chain2Base5  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else x2 ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then x5 else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = if if p1 then p1 else false then if false then false else false else if p1 then p1 else true
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then x9 else x9 ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d4 ) ) ) $ ( d4 ) ) ) ) $ ( if false then true else d4 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if d6 then d4 else p3 then if d4 then d4 else true else if false then p3 else p3
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> x14 ) ) ) $ ( x14 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = if if p1 then p1 else true then if p1 then true else d4 else if p3 then p1 else false
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( x18 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if true then x17 else true ) ) ) $ ( if true then d6 else false )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = if if true then false else d13 then if true then d13 else d13 else if d13 then p1 else true
        d23 : if true then if true then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if d4 then p3 else x24 ) ) ) $ ( if p3 then d13 else false )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else d23 )
        d30 : if true then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d10 then false else true ) ) ) $ ( if d16 then p3 else false )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else x34 ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if false then false else d20 ) ) ) $ ( if d13 then true else d13 )
        d35 : if false then if false then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if d20 then false else d13 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then Bool else x40 ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if d30 then d4 else false ) ) ) $ ( if true then d35 else p1 )
        d41 : if true then if true then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if x42 then x42 else d4 ) ) ) $ ( if true then p1 else p1 )
        d43 : if true then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> true ) ) ) $ ( x44 ) ) ) ) $ ( if p3 then p1 else true )
        d46 : if true then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d13 ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else d20 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d49 = if if p1 then false else d20 then if d35 then p1 else p3 else if false then p1 else p3
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( x52 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if d16 then d46 else d6 then if p1 then d32 else d35 else if false then p3 else false
        d54 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if p3 then d54 else d46 then if true then d23 else d30 else if p3 then p3 else p1
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x63 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if d13 then d20 else p3 )
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = if if p3 then p1 else false then if p3 then p3 else d60 else if false then p3 else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if d65 then x67 else true ) ) ) $ ( if true then d54 else false )
        d70 : if false then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> true ) ) ) $ ( true ) ) ) ) $ ( if p3 then d41 else p3 )
        d73 : if true then if false then Bool else Bool else if false then Bool else Bool
        d73 = if if d70 then true else false then if d25 then d41 else p1 else if false then p1 else d49
        d74 : if false then if false then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if d38 then p1 else x75 ) ) ) $ ( if false then d6 else p1 )
        d76 : if true then if true then Bool else Bool else if false then Bool else Bool
        d76 = if if p3 then true else p1 then if false then false else false else if p3 then p3 else d10
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x79 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d77 = if if true then d60 else false then if d13 then d65 else false else if d20 then d41 else p1
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then x83 else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> d76 ) ) ) $ ( false ) ) ) ) $ ( if d10 then d60 else d59 )
        d84 : if false then if true then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if d73 then x85 else x85 ) ) ) $ ( if d59 then p1 else d25 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = if if false then false else false then if d25 then p1 else true else if false then true else d77
        d88 : if true then if true then Bool else Bool else if true then Bool else Bool
        d88 = if if p1 then d76 else true then if false then d77 else true else if p3 then p3 else d74
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else x90 ) ) ) $ ( if true then Bool else Bool )
        d89 = if if d54 then true else d74 then if false then true else true else if p1 then d16 else false
        d91 : if true then if false then Bool else Bool else if false then Bool else Bool
        d91 = if if p1 then p3 else p1 then if d77 then p3 else d65 else if d74 then true else d66
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> x93 ) ) ) $ ( false ) ) ) ) $ ( if d30 then p1 else d86 )
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if d89 then false else d20 then if d10 then false else p1 else if true then d54 else false
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = if if true then p1 else true then if d49 then d70 else false else if d54 then p1 else false
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then x98 else x98 ) ) ) $ ( if true then Bool else Bool )
        d97 = if if p3 then true else d13 then if true then p1 else p3 else if false then p3 else true
        d99 : if false then if true then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if false then true else p3 ) ) ) $ ( if d23 then true else p1 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then Bool else x102 ) ) ) $ ( if true then Bool else Bool )
        d101 = if if true then false else d96 then if p3 then d46 else p3 else if d89 then d41 else d86
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> d73 ) ) ) $ ( d66 ) ) ) ) $ ( if true then true else p3 )
        d106 : if true then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if false then false else p3 then if p3 then false else p1 else if d32 then p1 else p3
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> true ) ) ) $ ( false ) ) ) ) $ ( if d32 then d41 else p3 )
        d112 : if false then if true then Bool else Bool else if false then Bool else Bool
        d112 = if if true then p3 else false then if true then true else d91 else if d70 then p1 else p1
        d113 : if true then if false then Bool else Bool else if true then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if false then false else false ) ) ) $ ( if d106 then true else p1 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( x118 ) ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> p1 ) ) ) $ ( x116 ) ) ) ) $ ( if p3 then d38 else false )
        d120 : if true then if false then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if false then true else x121 ) ) ) $ ( if d54 then p1 else true )
        d122 : if true then if false then Bool else Bool else if false then Bool else Bool
        d122 = if if d74 then false else d73 then if d92 then true else d60 else if true then true else true
        d123 : if false then if true then Bool else Bool else if false then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if d120 then d60 else d80 ) ) ) $ ( if false then d32 else p3 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then Bool else x126 ) ) ) $ ( if true then Bool else Bool )
        d125 = if if p3 then d20 else true then if false then d86 else false else if true then d95 else true
        d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then x128 else Bool ) ) ) $ ( if true then Bool else Bool )
        d127 = if if d35 then d46 else p3 then if false then false else p3 else if true then p1 else d99
    module M'  = M ( true ) 