module Chain3Test13  where
    import Chain3Step213
    open import Chain3Step213 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : if true then if true then Bool else Bool else if false then Bool else Bool
        d3 = if if p1 then true else p2 then if Chain3Step213.M'.d65 then Chain3Step213.M'.d120 else Chain3Step213.M'.d78 else if Chain3Step213.M'.d15 then p2 else true
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> d3 ) ) ) $ ( Chain3Step213.M'.d42 ) ) ) ) $ ( if p2 then d3 else p2 )
        d8 : if true then if false then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> false ) ) ) $ ( d4 ) ) ) ) $ ( if Chain3Step213.M'.d79 then d3 else Chain3Step213.M'.d6 )
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if p2 then Chain3Step213.M'.d6 else Chain3Step213.M'.d35 ) ) ) $ ( if Chain3Step213.M'.d39 then d8 else Chain3Step213.M'.d113 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then x15 else x15 ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if true then Chain3Step213.M'.d101 else Chain3Step213.M'.d35 ) ) ) $ ( if p1 then Chain3Step213.M'.d61 else d3 )
        d16 : if true then if true then Bool else Bool else if true then Bool else Bool
        d16 = if if p1 then Chain3Step213.M'.d54 else Chain3Step213.M'.d95 then if Chain3Step213.M'.d78 then Chain3Step213.M'.d120 else d3 else if Chain3Step213.M'.d111 then d11 else Chain3Step213.M'.d115
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( x19 ) ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if d3 then Chain3Step213.M'.d113 else d16 ) ) ) $ ( if Chain3Step213.M'.d18 then p2 else true )
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if d3 then false else Chain3Step213.M'.d42 then if Chain3Step213.M'.d111 then d16 else Chain3Step213.M'.d113 else if p1 then d16 else Chain3Step213.M'.d39
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x23 ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d17 then Chain3Step213.M'.d13 else d13 then if d17 then Chain3Step213.M'.d80 else Chain3Step213.M'.d91 else if Chain3Step213.M'.d11 then Chain3Step213.M'.d95 else d16
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x26 ) ) ) $ ( x26 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if Chain3Step213.M'.d93 then Chain3Step213.M'.d78 else d4 then if p2 then Chain3Step213.M'.d65 else d17 else if Chain3Step213.M'.d6 then false else d21
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if if p2 then Chain3Step213.M'.d28 else Chain3Step213.M'.d13 then if Chain3Step213.M'.d115 then true else Chain3Step213.M'.d78 else if true then Chain3Step213.M'.d35 else p2
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then x33 else Bool ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if true then Chain3Step213.M'.d91 else x32 ) ) ) $ ( if Chain3Step213.M'.d48 then d17 else p1 )
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = if if p2 then Chain3Step213.M'.d95 else d4 then if true then Chain3Step213.M'.d27 else p2 else if d21 then false else Chain3Step213.M'.d61
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = if if p2 then d22 else false then if Chain3Step213.M'.d6 then p2 else false else if Chain3Step213.M'.d35 then Chain3Step213.M'.d99 else false
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then x39 else x39 ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> false ) ) ) $ ( d28 ) ) ) ) $ ( if p2 then true else false )
        d40 : if false then if true then Bool else Bool else if true then Bool else Bool
        d40 = if if false then p1 else Chain3Step213.M'.d26 then if Chain3Step213.M'.d120 then Chain3Step213.M'.d104 else d35 else if p1 then Chain3Step213.M'.d73 else p1
        d41 : if false then if true then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> d3 ) ) ) $ ( false ) ) ) ) $ ( if p2 then Chain3Step213.M'.d101 else d35 )
        d44 : if true then if true then Bool else Bool else if false then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if false then Chain3Step213.M'.d52 else false ) ) ) $ ( if Chain3Step213.M'.d65 then true else p2 )
        d46 : if false then if true then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if false then false else Chain3Step213.M'.d61 ) ) ) $ ( if true then Chain3Step213.M'.d13 else p1 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else x50 ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if false then d40 else d46 ) ) ) $ ( if p2 then p2 else Chain3Step213.M'.d101 )
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if Chain3Step213.M'.d20 then Chain3Step213.M'.d78 else Chain3Step213.M'.d80 then if Chain3Step213.M'.d88 then d16 else Chain3Step213.M'.d42 else if d17 then p1 else Chain3Step213.M'.d6
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = if if p1 then p1 else Chain3Step213.M'.d88 then if d16 then d48 else true else if Chain3Step213.M'.d101 then Chain3Step213.M'.d113 else p1
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if false then x56 else Bool ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> p1 ) ) ) $ ( d48 ) ) ) ) $ ( if p1 then Chain3Step213.M'.d21 else d16 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x59 ) ) ) $ ( x59 ) ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if Chain3Step213.M'.d93 then d11 else d36 ) ) ) $ ( if Chain3Step213.M'.d54 then Chain3Step213.M'.d52 else d8 )
        d61 : if true then if false then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if Chain3Step213.M'.d13 then p2 else d44 ) ) ) $ ( if true then Chain3Step213.M'.d69 else Chain3Step213.M'.d126 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then Bool else x64 ) ) ) $ ( if false then Bool else Bool )
        d63 = if if d22 then d61 else Chain3Step213.M'.d15 then if p1 then p1 else false else if d4 then p2 else d21
        d65 : if true then if false then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if false then false else d13 ) ) ) $ ( if d41 then Chain3Step213.M'.d60 else p2 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else x70 ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> Chain3Step213.M'.d6 ) ) ) $ ( false ) ) ) ) $ ( if Chain3Step213.M'.d39 then Chain3Step213.M'.d42 else d48 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if Chain3Step213.M'.d115 then d4 else d46 ) ) ) $ ( if Chain3Step213.M'.d35 then p1 else p2 )
        d75 : if false then if true then Bool else Bool else if true then Bool else Bool
        d75 = if if false then Chain3Step213.M'.d64 else d44 then if p2 then d8 else Chain3Step213.M'.d15 else if p1 then Chain3Step213.M'.d120 else true
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if Chain3Step213.M'.d42 then Chain3Step213.M'.d69 else Chain3Step213.M'.d49 ) ) ) $ ( if d44 then p2 else Chain3Step213.M'.d49 )
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Chain3Step213.M'.d106 ) ) ) ) $ ( if Chain3Step213.M'.d113 then p1 else d25 )
        d81 : if true then if false then Bool else Bool else if true then Bool else Bool
        d81 = if if d53 then Chain3Step213.M'.d73 else p1 then if Chain3Step213.M'.d78 then Chain3Step213.M'.d68 else true else if Chain3Step213.M'.d68 then Chain3Step213.M'.d79 else p2
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( Chain3Step213.M'.d18 ) ) ) ) $ ( if false then true else p1 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then x89 else x89 ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if Chain3Step213.M'.d54 then true else Chain3Step213.M'.d101 ) ) ) $ ( if p2 then Chain3Step213.M'.d33 else p2 )
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = if if p2 then p1 else false then if true then d36 else false else if p1 then true else p2
        d91 : if false then if false then Bool else Bool else if true then Bool else Bool
        d91 = if if Chain3Step213.M'.d121 then Chain3Step213.M'.d93 else false then if p2 then Chain3Step213.M'.d106 else Chain3Step213.M'.d49 else if Chain3Step213.M'.d26 then false else Chain3Step213.M'.d69
        d92 : if true then if true then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if x93 then d57 else Chain3Step213.M'.d91 ) ) ) $ ( if false then true else Chain3Step213.M'.d27 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d31 then d53 else p2 ) ) ) $ ( if Chain3Step213.M'.d73 then Chain3Step213.M'.d84 else Chain3Step213.M'.d84 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else x100 ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if d46 then false else Chain3Step213.M'.d80 ) ) ) $ ( if p2 then Chain3Step213.M'.d99 else Chain3Step213.M'.d54 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d101 = if if true then p2 else true then if p2 then Chain3Step213.M'.d111 else false else if d21 then Chain3Step213.M'.d43 else p2
        d104 : if true then if false then Bool else Bool else if false then Bool else Bool
        d104 = if if false then p2 else Chain3Step213.M'.d61 then if Chain3Step213.M'.d104 then Chain3Step213.M'.d91 else Chain3Step213.M'.d27 else if p2 then Chain3Step213.M'.d69 else d98
        d105 : if true then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if Chain3Step213.M'.d49 then Chain3Step213.M'.d43 else Chain3Step213.M'.d15 ) ) ) $ ( if false then Chain3Step213.M'.d95 else d82 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( x108 ) ) ) ) $ ( if false then Bool else Bool )
        d107 = if if Chain3Step213.M'.d43 then Chain3Step213.M'.d21 else true then if true then Chain3Step213.M'.d79 else p1 else if p2 then true else true
        d110 : if false then if true then Bool else Bool else if false then Bool else Bool
        d110 = if if Chain3Step213.M'.d69 then p1 else false then if true then Chain3Step213.M'.d113 else Chain3Step213.M'.d73 else if p1 then Chain3Step213.M'.d33 else true
        d111 : if true then if false then Bool else Bool else if false then Bool else Bool
        d111 = if if Chain3Step213.M'.d111 then d104 else false then if p1 then Chain3Step213.M'.d68 else false else if d104 then d28 else p2
        d112 : if true then if false then Bool else Bool else if false then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> false ) ) ) $ ( d36 ) ) ) ) $ ( if d51 then p2 else Chain3Step213.M'.d126 )
        d115 : if false then if false then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( true ) ) ) ) $ ( if false then false else p1 )
        d118 : if false then if true then Bool else Bool else if false then Bool else Bool
        d118 = if if p2 then p2 else Chain3Step213.M'.d27 then if Chain3Step213.M'.d18 then d65 else Chain3Step213.M'.d120 else if false then d112 else true
        d119 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if false then Chain3Step213.M'.d15 else false )