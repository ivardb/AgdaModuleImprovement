module Chain3Base10  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : if false then Bool else Bool ) ( p4 : if true then Bool else Bool )  where
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = if if false then p1 else p4 then if p4 then false else false else if false then p4 else p3
        d6 : if false then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> false ) ) ) $ ( true ) ) ) ) $ ( if p3 then p4 else d5 )
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if d6 then d5 else false then if p1 then d5 else p4 else if false then p4 else true
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if true then d9 else p1 then if d6 then true else d5 else if true then true else true
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = if if p3 then d6 else d5 then if d9 then false else p4 else if d9 then p3 else true
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then Bool else x15 ) ) ) $ ( if false then Bool else Bool )
        d14 = if if true then d9 else p1 then if d5 then p4 else p1 else if p3 then true else p4
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> Bool ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if p1 then d5 else d5 then if d13 then false else d10 else if p4 then d10 else p4
        d19 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if d10 then p4 else d16 ) ) ) $ ( if p1 then d5 else d9 )
        d23 : if false then if true then Bool else Bool else if false then Bool else Bool
        d23 = if if p1 then true else p4 then if false then p3 else d5 else if true then true else false
        d24 : if false then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> true ) ) ) $ ( false ) ) ) ) $ ( if d14 then true else false )
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if p4 then p1 else d23 then if p4 then d14 else d16 else if d6 then d24 else d24
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if false then d14 else d9 ) ) ) $ ( if d14 then true else d16 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if if true then false else p1 then if d24 then p3 else true else if false then true else false
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x38 ) ) ) $ ( x37 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d13 then true else d6 ) ) ) $ ( if d5 then false else true )
        d39 : if false then if true then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if p4 then false else p4 ) ) ) $ ( if false then true else p1 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if false then p4 else false ) ) ) $ ( if d24 then d27 else true )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then x46 else Bool ) ) ) $ ( if true then Bool else Bool )
        d45 = if if true then false else p1 then if d16 then d28 else false else if true then d13 else false
        d47 : if false then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if x48 then true else false ) ) ) $ ( if false then p4 else true )
        d49 : if true then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if true then d24 else p3 then if p3 then false else p4 else if false then d5 else d41
        d50 : if false then if true then Bool else Bool else if false then Bool else Bool
        d50 = if if p3 then true else p1 then if d27 then p3 else d27 else if true then d16 else d49
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if true then true else p1 then if true then false else d19 else if p3 then p3 else true
        d52 : if false then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if d41 then p4 else p4 ) ) ) $ ( if true then p1 else p1 )
        d54 : if true then if false then Bool else Bool else if false then Bool else Bool
        d54 = if if d16 then false else p3 then if false then false else p1 else if true then d45 else false
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d55 = if if true then true else p3 then if true then p1 else d16 else if false then p1 else d41
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if d35 then true else p3 then if d47 then d28 else p3 else if p3 then false else d54
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( x60 ) ) ) ) $ ( if true then Bool else Bool )
        d59 = if if d6 then d14 else d54 then if p3 then p3 else d5 else if d19 then d14 else false
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else x64 ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if d47 then true else p3 ) ) ) $ ( if false then true else p4 )
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> p1 ) ) ) $ ( d28 ) ) ) ) $ ( if d14 then d14 else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then Bool else x71 ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> x69 ) ) ) $ ( true ) ) ) ) $ ( if p4 then p4 else d49 )
        d72 : if true then if false then Bool else Bool else if true then Bool else Bool
        d72 = if if p3 then true else d24 then if d16 then p3 else p1 else if false then d65 else d16
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x77 ) ) ) $ ( x76 ) ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if false then d27 else p4 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if p3 then false else false ) ) ) $ ( if p1 then false else d65 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if true then false else false ) ) ) $ ( if false then d5 else d68 )
        d86 : if false then if true then Bool else Bool else if true then Bool else Bool
        d86 = if if true then p3 else false then if p3 then d52 else d78 else if p4 then d27 else d49
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d87 = if if p4 then d16 else p4 then if false then d28 else d13 else if true then d13 else true
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d89 = if if p3 then false else p3 then if p3 then false else false else if d59 then false else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then x92 else Bool ) ) ) $ ( if true then Bool else Bool )
        d91 = if if p3 then true else p3 then if d58 then p4 else true else if true then false else d78
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> d78 ) ) ) $ ( d6 ) ) ) ) $ ( if false then d24 else d14 )
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d54 then d65 else d93 ) ) ) $ ( if p3 then true else false )
        d98 : if true then if false then Bool else Bool else if false then Bool else Bool
        d98 = if if d87 then p1 else p1 then if d16 then d62 else d86 else if p3 then d59 else true
        d99 : if true then if true then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d49 ) ) ) $ ( p1 ) ) ) ) $ ( if p4 then p1 else false )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d102 = if if d41 then d98 else false then if d65 then d24 else d91 else if d47 then true else false
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if d78 then d35 else true ) ) ) $ ( if p1 then p1 else p4 )
        d107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d107 = if if p1 then d86 else false then if p4 then p1 else true else if d16 then d93 else p4
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d108 = if if p1 then false else p1 then if true then true else d5 else if d93 then d27 else false
        d111 : if false then if false then Bool else Bool else if true then Bool else Bool
        d111 = if if d39 then true else d62 then if p1 then false else p3 else if true then p4 else p3
        d112 : if false then if false then Bool else Bool else if false then Bool else Bool
        d112 = if if p3 then d72 else false then if p3 then false else false else if p4 then p4 else d27
        d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( x115 ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if false then d54 else true ) ) ) $ ( if p3 then true else d99 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then x118 else x118 ) ) ) $ ( if true then Bool else Bool )
        d117 = if if true then p3 else true then if d98 then false else true else if p1 then p4 else p3
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( x120 ) ) ) ) $ ( if false then Bool else Bool )
        d119 = if if p4 then d113 else d65 then if p4 then true else p1 else if d13 then p3 else d108
    module M'  = M ( false ) 