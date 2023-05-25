module Chain1Base4  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        d3 : if false then if false then Bool else Bool else if true then Bool else Bool
        d3 = if if false then p1 else p1 then if true then true else p1 else if true then p1 else true
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = if if d3 then false else d3 then if p1 then true else p1 else if false then d3 else true
        d6 : if true then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> true ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else p1 )
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = if if d6 then p1 else false then if false then d3 else p1 else if true then p1 else true
        d10 : if true then if false then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> if false then d9 else p1 ) ) ) $ ( if p1 then d3 else true )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if d4 then true else true then if d6 then p1 else p1 else if true then p1 else d6
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = if if true then d6 else p1 then if false then d10 else true else if false then d4 else p1
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> p1 ) ) ) $ ( x17 ) ) ) ) $ ( if d6 then p1 else p1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else x23 ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if true then true else false ) ) ) $ ( if p1 then false else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then x25 else Bool ) ) ) $ ( if true then Bool else Bool )
        d24 = if if d12 then false else p1 then if true then p1 else d9 else if d12 then p1 else p1
        d26 : if true then if false then Bool else Bool else if true then Bool else Bool
        d26 = if if p1 then p1 else p1 then if p1 then d6 else p1 else if true then p1 else p1
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else x30 ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> true ) ) ) $ ( x28 ) ) ) ) $ ( if true then d16 else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> x32 ) ) ) $ ( x32 ) ) ) ) $ ( if p1 then true else p1 )
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d9 then x36 else x36 ) ) ) $ ( if d15 then p1 else p1 )
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if d10 then false else p1 then if false then true else d3 else if d4 then true else p1
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if p1 then false else d16 then if true then d9 else true else if d31 then d10 else d3
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = if if true then p1 else p1 then if p1 then true else true else if d21 then false else false
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then x41 else Bool ) ) ) $ ( if true then Bool else Bool )
        d40 = if if p1 then p1 else true then if p1 then d37 else false else if p1 then p1 else false
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if p1 then d6 else true ) ) ) $ ( if p1 then p1 else p1 )
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d15 ) ) ) $ ( x46 ) ) ) ) $ ( if true then false else false )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d48 = if if d3 then d12 else d3 then if d40 then p1 else d27 else if p1 then true else true
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else x53 ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if p1 then p1 else d38 ) ) ) $ ( if p1 then d35 else p1 )
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> d42 ) ) ) $ ( d51 ) ) ) ) $ ( if p1 then p1 else true )
        d57 : if false then if true then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if d16 then true else p1 ) ) ) $ ( if d42 then p1 else d21 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then x62 else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d3 ) ) ) $ ( d40 ) ) ) ) $ ( if p1 then true else false )
        d63 : if true then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if p1 then p1 else p1 then if false then false else true else if d27 then d37 else p1
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if false then Bool else x66 ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if false then d42 else true ) ) ) $ ( if d51 then false else false )
        d67 : if false then if false then Bool else Bool else if false then Bool else Bool
        d67 = if if d9 then d21 else false then if d16 then p1 else p1 else if p1 then false else false
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if p1 then p1 else d40 ) ) ) $ ( if d59 then false else d16 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then x72 else x72 ) ) ) $ ( if false then Bool else Bool )
        d71 = if if d48 then false else p1 then if p1 then p1 else p1 else if d42 then true else d21
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = if if false then p1 else d12 then if p1 then p1 else p1 else if d68 then d48 else d12
        d75 : if true then if true then Bool else Bool else if true then Bool else Bool
        d75 = if if false then d64 else d35 then if d26 then true else false else if d26 then d45 else d21
        d76 : if true then if true then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if x77 then false else d9 ) ) ) $ ( if p1 then d39 else d3 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d78 = if if d12 then false else true then if true then p1 else p1 else if d51 then true else p1
        d80 : if false then if false then Bool else Bool else if false then Bool else Bool
        d80 = if if d12 then p1 else p1 then if d78 then d78 else p1 else if p1 then false else true
        d81 : if false then if false then Bool else Bool else if false then Bool else Bool
        d81 = if if p1 then p1 else p1 then if true then d31 else p1 else if d59 then true else d21
        d82 : if true then if true then Bool else Bool else if true then Bool else Bool
        d82 = if if d16 then p1 else d80 then if false then true else true else if p1 then p1 else d15
        d83 : if true then if true then Bool else Bool else if false then Bool else Bool
        d83 = if if p1 then p1 else p1 then if d31 then true else p1 else if d82 then d37 else p1
        d84 : if false then if false then Bool else Bool else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if true then p1 else d24 ) ) ) $ ( if true then p1 else p1 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if false then false else d82 ) ) ) $ ( if false then false else d10 )
        d89 : if false then if false then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d57 then p1 else d75 )
        d92 : if false then if true then Bool else Bool else if true then Bool else Bool
        d92 = if if p1 then p1 else d26 then if d51 then d89 else p1 else if false then p1 else p1
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then Bool else x94 ) ) ) $ ( if false then Bool else Bool )
        d93 = if if p1 then p1 else d21 then if d78 then true else p1 else if true then d48 else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d73 then false else true ) ) ) $ ( if false then true else d4 )
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = if if true then true else p1 then if d75 then true else false else if p1 then d10 else false
        d100 : if false then if false then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if true then false else x101 ) ) ) $ ( if false then p1 else d95 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d102 = if if p1 then d80 else p1 then if false then p1 else d37 else if false then d64 else p1
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d105 = if if true then true else d93 then if d57 then false else false else if p1 then d16 else p1
        d107 : if true then if false then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x108 ) ) ) $ ( x108 ) ) ) ) $ ( if p1 then d57 else false )
        d110 : if false then if false then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d73 ) ) ) $ ( x111 ) ) ) ) $ ( if true then d4 else p1 )
    module M'  = M ( true ) 