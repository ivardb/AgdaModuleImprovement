module Chain3Base6  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( x6 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if true then p1 else true then if p3 then p1 else false else if true then true else true
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d8 = if if p1 then d5 else p1 then if true then false else d5 else if p4 then false else p1
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if false then true else d8 then if false then p4 else false else if true then false else d5
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> true ) ) ) $ ( x14 ) ) ) ) $ ( if d5 then false else d5 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( x19 ) ) ) ) $ ( if true then Bool else Bool )
        d18 = if if true then d8 else d5 then if p3 then p4 else false else if d10 then p3 else p1
        d21 : if false then if false then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> false ) ) ) $ ( d18 ) ) ) ) $ ( if p4 then p1 else p1 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( x27 ) ) ) ) $ ( if true then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> p3 ) ) ) $ ( p4 ) ) ) ) $ ( if d21 then false else p4 )
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = if if p3 then d5 else p4 then if false then false else d18 else if d18 then true else p3
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = if if true then p1 else d5 then if d18 then p4 else d21 else if d24 then false else d24
        d31 : if false then if false then Bool else Bool else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if p3 then d18 else d24 ) ) ) $ ( if p3 then d21 else d5 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if true then x36 else x36 ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> d18 ) ) ) $ ( p4 ) ) ) ) $ ( if d29 then p4 else d18 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( x38 ) ) ) ) $ ( if true then Bool else Bool )
        d37 = if if d10 then false else p1 then if p4 then false else p4 else if false then d13 else d29
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> true ) ) ) $ ( x41 ) ) ) ) $ ( if p1 then true else p4 )
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if x46 then true else d13 ) ) ) $ ( if p3 then p1 else d33 )
        d47 : if false then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if p4 then p1 else p3 ) ) ) $ ( if true then d8 else true )
        d49 : if true then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if d8 then d30 else d18 then if p3 then d47 else p4 else if true then true else false
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if d24 then d13 else d31 then if d37 then d21 else true else if p3 then p3 else true
        d51 : if true then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if true then false else true then if d10 then d40 else d40 else if d47 then d8 else p3
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if x53 then p3 else d37 ) ) ) $ ( if d13 then p3 else true )
        d54 : if false then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if d49 then p1 else d33 then if false then true else p1 else if d10 then d45 else d37
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then x57 else x57 ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if d37 then d50 else true ) ) ) $ ( if false then d45 else false )
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if d45 then p3 else d50 then if false then p4 else false else if d50 then false else true
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d59 = if if p4 then d10 else d51 then if p3 then d37 else false else if d40 then true else d29
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x63 ) ) ) $ ( x62 ) ) ) ) $ ( if false then Bool else Bool )
        d61 = if if true then p4 else true then if false then true else false else if true then p3 else false
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if false then d13 else p3 ) ) ) $ ( if true then p1 else p4 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else x70 ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if d21 then p1 else p1 ) ) ) $ ( if p3 then p4 else p1 )
        d71 : if true then if false then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> p4 ) ) ) $ ( d61 ) ) ) ) $ ( if d31 then p4 else d50 )
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = if if p4 then true else false then if true then p3 else false else if p1 then false else p3
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = if if d55 then true else p3 then if true then p3 else d8 else if p4 then true else d74
        d76 : if false then if true then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if p3 then d64 else false ) ) ) $ ( if false then d31 else false )
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if false then p1 else p3 ) ) ) $ ( if p1 then true else d31 )
        d80 : if false then if true then Bool else Bool else if true then Bool else Bool
        d80 = if if false then d59 else d51 then if d24 then d50 else p1 else if d40 then true else true
        d81 : if false then if true then Bool else Bool else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if d50 then d51 else d58 ) ) ) $ ( if p1 then d68 else p1 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if d30 then p1 else false ) ) ) $ ( if p4 then true else d59 )
        d87 : if true then if true then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d31 then p3 else x88 ) ) ) $ ( if true then d5 else p4 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else Bool ) ) ) $ ( if false then Bool else Bool )
        d89 = if if p1 then true else p4 then if p1 then false else true else if p4 then d40 else p4
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> true ) ) ) $ ( x92 ) ) ) ) $ ( if p3 then d54 else p3 )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if d5 then d58 else d33 then if false then p4 else d40 else if false then p1 else false
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if p3 then d49 else d75 ) ) ) $ ( if true then d31 else p3 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then x101 else x101 ) ) ) $ ( if true then Bool else Bool )
        d100 = if if d87 then p1 else d40 then if p3 then p4 else d71 else if d96 then d96 else p3
        d102 : if false then if true then Bool else Bool else if true then Bool else Bool
        d102 = if if p1 then false else d96 then if true then true else p1 else if false then false else p3
        d103 : if true then if true then Bool else Bool else if false then Bool else Bool
        d103 = if if false then d80 else d29 then if true then p1 else false else if p4 then true else p3
        d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if false then true else d102 ) ) ) $ ( if p4 then true else true )
        d108 : if false then if false then Bool else Bool else if true then Bool else Bool
        d108 = if if true then d40 else p4 then if d76 then p3 else d40 else if p1 then p3 else d49
        d109 : if true then if true then Bool else Bool else if true then Bool else Bool
        d109 = if if p1 then true else false then if p3 then true else d102 else if p1 then d64 else true
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = if if false then d96 else p3 then if d30 then p4 else d64 else if d52 then false else d55
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then Bool else x113 ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if p3 then false else d96 ) ) ) $ ( if d87 then d80 else p1 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then x115 else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = if if d50 then p4 else p4 then if p4 then d109 else false else if d24 then d49 else false
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if p1 then true else false then if p4 then d37 else p3 else if d100 then true else true
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d119 = if if false then true else d5 then if d80 then p4 else true else if p4 then false else false
    module M'  = M ( true ) 