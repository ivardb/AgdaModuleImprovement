module Chain3Test3  where
    import Chain3Step23
    open import Chain3Step23 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> Chain3Step23.M'.d75 ) ) ) $ ( p1 ) ) ) ) $ ( if Chain3Step23.M'.d83 then false else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if p1 then Chain3Step23.M'.d97 else Chain3Step23.M'.d54 then if d3 then Chain3Step23.M'.d47 else d3 else if Chain3Step23.M'.d98 then d3 else Chain3Step23.M'.d68
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = if if true then Chain3Step23.M'.d90 else p2 then if false then false else d3 else if d3 then Chain3Step23.M'.d99 else Chain3Step23.M'.d107
        d12 : if true then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> Chain3Step23.M'.d107 ) ) ) $ ( false ) ) ) ) $ ( if Chain3Step23.M'.d115 then d8 else d8 )
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if p1 then Chain3Step23.M'.d60 else Chain3Step23.M'.d41 ) ) ) $ ( if d8 then p1 else p2 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = if if Chain3Step23.M'.d104 then false else Chain3Step23.M'.d47 then if p2 then false else p2 else if Chain3Step23.M'.d64 then Chain3Step23.M'.d88 else Chain3Step23.M'.d29
        d19 : if false then if false then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> Chain3Step23.M'.d75 ) ) ) $ ( Chain3Step23.M'.d90 ) ) ) ) $ ( if true then Chain3Step23.M'.d86 else d12 )
        d22 : if false then if true then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if true then Chain3Step23.M'.d54 else p1 ) ) ) $ ( if p2 then p1 else Chain3Step23.M'.d75 )
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if p2 then Chain3Step23.M'.d86 else false then if Chain3Step23.M'.d59 then Chain3Step23.M'.d27 else d17 else if Chain3Step23.M'.d88 then Chain3Step23.M'.d106 else Chain3Step23.M'.d27
        d25 : if false then if false then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if d3 then Chain3Step23.M'.d54 else Chain3Step23.M'.d18 ) ) ) $ ( if false then true else d17 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if Chain3Step23.M'.d115 then Chain3Step23.M'.d50 else false then if Chain3Step23.M'.d30 then d25 else Chain3Step23.M'.d15 else if p2 then true else d15
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = if if Chain3Step23.M'.d27 then d22 else Chain3Step23.M'.d64 then if Chain3Step23.M'.d104 then Chain3Step23.M'.d14 else Chain3Step23.M'.d35 else if d25 then Chain3Step23.M'.d67 else Chain3Step23.M'.d15
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else x32 ) ) ) $ ( if false then Bool else Bool )
        d31 = if if p2 then Chain3Step23.M'.d62 else p2 then if Chain3Step23.M'.d62 then d17 else true else if Chain3Step23.M'.d67 then Chain3Step23.M'.d27 else p1
        d33 : if true then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if p2 then d12 else Chain3Step23.M'.d71 then if p1 then false else true else if Chain3Step23.M'.d107 then p2 else Chain3Step23.M'.d15
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if Chain3Step23.M'.d27 then true else x35 ) ) ) $ ( if Chain3Step23.M'.d13 then true else true )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if if Chain3Step23.M'.d30 then d11 else Chain3Step23.M'.d107 then if false then Chain3Step23.M'.d60 else Chain3Step23.M'.d107 else if Chain3Step23.M'.d22 then Chain3Step23.M'.d104 else Chain3Step23.M'.d113
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> x41 ) ) ) $ ( x41 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if p1 then Chain3Step23.M'.d64 else p2 ) ) ) $ ( if d34 then Chain3Step23.M'.d35 else Chain3Step23.M'.d6 )
        d43 : if true then if false then Bool else Bool else if true then Bool else Bool
        d43 = if if true then Chain3Step23.M'.d111 else Chain3Step23.M'.d105 then if true then false else Chain3Step23.M'.d22 else if d25 then d34 else false
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if true then p1 else Chain3Step23.M'.d29 then if d22 then Chain3Step23.M'.d59 else d19 else if p1 then Chain3Step23.M'.d35 else Chain3Step23.M'.d29
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( x48 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> false ) ) ) $ ( Chain3Step23.M'.d88 ) ) ) ) $ ( if p1 then Chain3Step23.M'.d20 else p2 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> Bool ) ) ) $ ( x51 ) ) ) ) $ ( if true then Bool else Bool )
        d50 = if if p2 then Chain3Step23.M'.d41 else d34 then if d22 then Chain3Step23.M'.d107 else p1 else if Chain3Step23.M'.d105 then d24 else d19
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then x54 else x54 ) ) ) $ ( if true then Bool else Bool )
        d53 = if if p1 then false else Chain3Step23.M'.d17 then if Chain3Step23.M'.d35 then d11 else p1 else if Chain3Step23.M'.d38 then d24 else p1
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> d39 ) ) ) $ ( d30 ) ) ) ) $ ( if false then p2 else d31 )
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( false ) ) ) ) $ ( if p2 then Chain3Step23.M'.d13 else Chain3Step23.M'.d20 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then Bool else x62 ) ) ) $ ( if false then Bool else Bool )
        d61 = if if Chain3Step23.M'.d47 then Chain3Step23.M'.d20 else false then if Chain3Step23.M'.d27 then Chain3Step23.M'.d90 else p1 else if Chain3Step23.M'.d86 then Chain3Step23.M'.d99 else Chain3Step23.M'.d106
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if p1 then true else true then if Chain3Step23.M'.d68 then Chain3Step23.M'.d50 else d61 else if Chain3Step23.M'.d13 then Chain3Step23.M'.d27 else Chain3Step23.M'.d84
        d64 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if Chain3Step23.M'.d47 then p1 else false ) ) ) $ ( if Chain3Step23.M'.d64 then Chain3Step23.M'.d115 else Chain3Step23.M'.d104 )
        d67 : if false then if true then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if p2 then p2 else true ) ) ) $ ( if true then p2 else Chain3Step23.M'.d62 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> x70 ) ) ) $ ( x70 ) ) ) ) $ ( if Chain3Step23.M'.d47 then d33 else true )
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if d25 then d30 else Chain3Step23.M'.d83 ) ) ) $ ( if false then Chain3Step23.M'.d98 else d36 )
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = if if d58 then false else Chain3Step23.M'.d8 then if p1 then Chain3Step23.M'.d35 else d67 else if d64 then p2 else Chain3Step23.M'.d97
        d77 : if false then if false then Bool else Bool else if false then Bool else Bool
        d77 = if if p2 then Chain3Step23.M'.d50 else d45 then if true then d76 else d17 else if true then p2 else Chain3Step23.M'.d109
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Chain3Step23.M'.d84 ) ) ) ) $ ( if false then true else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if d64 then false else false ) ) ) $ ( if d58 then d58 else Chain3Step23.M'.d98 )
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = if if p1 then Chain3Step23.M'.d77 else false then if d74 then p1 else true else if true then d17 else Chain3Step23.M'.d107
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> Chain3Step23.M'.d8 ) ) ) $ ( d3 ) ) ) ) $ ( if d19 then Chain3Step23.M'.d60 else p1 )
        d91 : if false then if true then Bool else Bool else if false then Bool else Bool
        d91 = if if Chain3Step23.M'.d47 then true else Chain3Step23.M'.d88 then if Chain3Step23.M'.d54 then p2 else d33 else if d67 then d81 else p1
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> d34 ) ) ) $ ( p2 ) ) ) ) $ ( if Chain3Step23.M'.d29 then Chain3Step23.M'.d95 else p2 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then x97 else Bool ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d63 then Chain3Step23.M'.d13 else Chain3Step23.M'.d6 ) ) ) $ ( if p2 then Chain3Step23.M'.d10 else false )
        d98 : if false then if false then Bool else Bool else if true then Bool else Bool
        d98 = if if Chain3Step23.M'.d106 then Chain3Step23.M'.d30 else Chain3Step23.M'.d97 then if d78 then Chain3Step23.M'.d71 else d81 else if Chain3Step23.M'.d54 then d30 else true
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if false then p1 else p2 then if Chain3Step23.M'.d105 then d95 else p1 else if p1 then true else false
        d100 : if true then if false then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if Chain3Step23.M'.d8 then Chain3Step23.M'.d113 else x101 ) ) ) $ ( if p1 then Chain3Step23.M'.d64 else true )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then x103 else x103 ) ) ) $ ( if false then Bool else Bool )
        d102 = if if Chain3Step23.M'.d38 then Chain3Step23.M'.d104 else Chain3Step23.M'.d99 then if Chain3Step23.M'.d58 then d74 else Chain3Step23.M'.d115 else if Chain3Step23.M'.d15 then Chain3Step23.M'.d88 else d67
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> Bool ) ) ) $ ( x105 ) ) ) ) $ ( if true then Bool else Bool )
        d104 = if if Chain3Step23.M'.d113 then Chain3Step23.M'.d67 else p1 then if Chain3Step23.M'.d47 then Chain3Step23.M'.d15 else p2 else if p2 then Chain3Step23.M'.d50 else p1
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> x108 ) ) ) $ ( Chain3Step23.M'.d99 ) ) ) ) $ ( if d58 then Chain3Step23.M'.d88 else Chain3Step23.M'.d80 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( x113 ) ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> d22 ) ) ) $ ( true ) ) ) ) $ ( if false then p2 else Chain3Step23.M'.d75 )
        d115 : if false then if true then Bool else Bool else if true then Bool else Bool
        d115 = if if Chain3Step23.M'.d30 then d76 else Chain3Step23.M'.d86 then if d95 then d67 else Chain3Step23.M'.d90 else if Chain3Step23.M'.d47 then p2 else Chain3Step23.M'.d97
        d116 : if true then if false then Bool else Bool else if false then Bool else Bool
        d116 = if if true then p1 else p1 then if Chain3Step23.M'.d111 then Chain3Step23.M'.d58 else true else if Chain3Step23.M'.d24 then true else Chain3Step23.M'.d58
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( x118 ) ) ) ) $ ( if true then Bool else Bool )
        d117 = if if p1 then Chain3Step23.M'.d80 else d34 then if Chain3Step23.M'.d90 then Chain3Step23.M'.d22 else p2 else if d58 then Chain3Step23.M'.d14 else d86
        d120 : if false then if true then Bool else Bool else if true then Bool else Bool
        d120 = if if Chain3Step23.M'.d99 then true else Chain3Step23.M'.d109 then if Chain3Step23.M'.d13 then Chain3Step23.M'.d98 else d30 else if p2 then p1 else d69