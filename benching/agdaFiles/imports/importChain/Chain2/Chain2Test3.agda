module Chain2Test3  where
    import Chain2Step13
    open import Chain2Step13 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : if true then if false then Bool else Bool else if true then Bool else Bool
        d3 = if if Chain2Step13.M'.d115 then Chain2Step13.M'.d110 else Chain2Step13.M'.d17 then if Chain2Step13.M'.d100 then Chain2Step13.M'.d35 else Chain2Step13.M'.d19 else if Chain2Step13.M'.d4 then Chain2Step13.M'.d99 else Chain2Step13.M'.d46
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( x6 ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if d3 then true else p2 ) ) ) $ ( if p2 then d3 else Chain2Step13.M'.d112 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if Chain2Step13.M'.d112 then Chain2Step13.M'.d72 else true ) ) ) $ ( if d3 then Chain2Step13.M'.d46 else p2 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then x15 else Bool ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d8 else p1 )
        d16 : if false then if true then Bool else Bool else if true then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d12 then Chain2Step13.M'.d97 else Chain2Step13.M'.d97 ) ) ) $ ( if Chain2Step13.M'.d100 then Chain2Step13.M'.d32 else false )
        d18 : if true then if true then Bool else Bool else if false then Bool else Bool
        d18 = if if false then p1 else d4 then if false then p1 else p1 else if p2 then Chain2Step13.M'.d11 else Chain2Step13.M'.d108
        d19 : if true then if true then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if p2 then false else false ) ) ) $ ( if Chain2Step13.M'.d35 then Chain2Step13.M'.d85 else Chain2Step13.M'.d46 )
        d21 : if false then if true then Bool else Bool else if true then Bool else Bool
        d21 = if if Chain2Step13.M'.d105 then Chain2Step13.M'.d80 else Chain2Step13.M'.d47 then if false then p2 else d12 else if true then true else Chain2Step13.M'.d4
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else x23 ) ) ) $ ( if true then Bool else Bool )
        d22 = if if true then Chain2Step13.M'.d67 else p2 then if true then false else Chain2Step13.M'.d26 else if p2 then p2 else d3
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( x25 ) ) ) ) $ ( if true then Bool else Bool )
        d24 = if if Chain2Step13.M'.d21 then Chain2Step13.M'.d39 else Chain2Step13.M'.d36 then if d22 then false else true else if Chain2Step13.M'.d82 then true else p2
        d27 : if false then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if Chain2Step13.M'.d31 then p1 else false then if false then true else p2 else if true then p2 else Chain2Step13.M'.d108
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then Bool else x29 ) ) ) $ ( if true then Bool else Bool )
        d28 = if if true then d22 else Chain2Step13.M'.d84 then if p2 then d16 else d24 else if Chain2Step13.M'.d74 then Chain2Step13.M'.d47 else true
        d30 : if true then if false then Bool else Bool else if true then Bool else Bool
        d30 = if if d3 then p1 else d28 then if d28 then d12 else p1 else if Chain2Step13.M'.d35 then p1 else Chain2Step13.M'.d112
        d31 : if false then if false then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then d18 else Chain2Step13.M'.d99 )
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if Chain2Step13.M'.d100 then d3 else p1 ) ) ) $ ( if Chain2Step13.M'.d77 then Chain2Step13.M'.d100 else true )
        d36 : if true then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if p2 then Chain2Step13.M'.d115 else false then if d18 then Chain2Step13.M'.d35 else p1 else if d12 then Chain2Step13.M'.d84 else p2
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = if if Chain2Step13.M'.d53 then false else p2 then if Chain2Step13.M'.d80 then p1 else p1 else if false then Chain2Step13.M'.d85 else Chain2Step13.M'.d29
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = if if true then Chain2Step13.M'.d55 else Chain2Step13.M'.d32 then if d28 then p1 else d27 else if p1 then d30 else p1
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if Chain2Step13.M'.d7 then true else Chain2Step13.M'.d17 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d38 ) ) ) $ ( d30 ) ) ) ) $ ( if Chain2Step13.M'.d98 then d28 else d22 )
        d49 : if true then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if Chain2Step13.M'.d36 then false else Chain2Step13.M'.d112 then if d44 then Chain2Step13.M'.d109 else Chain2Step13.M'.d98 else if d12 then p2 else true
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> d12 ) ) ) $ ( false ) ) ) ) $ ( if d49 then Chain2Step13.M'.d69 else Chain2Step13.M'.d62 )
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if Chain2Step13.M'.d69 then d24 else Chain2Step13.M'.d14 then if d28 then d16 else true else if Chain2Step13.M'.d53 then true else Chain2Step13.M'.d31
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if true then x58 else x58 ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if p2 then p2 else x57 ) ) ) $ ( if d34 then d19 else Chain2Step13.M'.d69 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if Chain2Step13.M'.d14 then d49 else Chain2Step13.M'.d90 ) ) ) $ ( if true then Chain2Step13.M'.d10 else Chain2Step13.M'.d80 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if p1 then Chain2Step13.M'.d29 else p2 ) ) ) $ ( if false then Chain2Step13.M'.d97 else p2 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then Bool else x70 ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> Chain2Step13.M'.d77 ) ) ) $ ( x68 ) ) ) ) $ ( if d37 then false else Chain2Step13.M'.d46 )
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( Chain2Step13.M'.d35 ) ) ) ) $ ( if true then Chain2Step13.M'.d99 else p1 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x78 ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> Chain2Step13.M'.d14 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d30 )
        d79 : if true then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> false ) ) ) $ ( d16 ) ) ) ) $ ( if d16 then d67 else p2 )
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> false ) ) ) $ ( x83 ) ) ) ) $ ( if true then true else Chain2Step13.M'.d10 )
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = if if d74 then Chain2Step13.M'.d90 else d12 then if d12 then d22 else Chain2Step13.M'.d93 else if d21 then p2 else p1
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = if if d59 then true else true then if Chain2Step13.M'.d59 then false else d21 else if Chain2Step13.M'.d55 then p1 else d19
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> Chain2Step13.M'.d32 ) ) ) $ ( Chain2Step13.M'.d19 ) ) ) ) $ ( if p2 then p1 else Chain2Step13.M'.d80 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if false then x94 else x94 ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> false ) ) ) $ ( Chain2Step13.M'.d21 ) ) ) ) $ ( if Chain2Step13.M'.d29 then d86 else Chain2Step13.M'.d80 )
        d95 : if false then if true then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d44 then true else Chain2Step13.M'.d69 ) ) ) $ ( if true then p1 else Chain2Step13.M'.d109 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else x100 ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> p1 ) ) ) $ ( Chain2Step13.M'.d16 ) ) ) ) $ ( if false then Chain2Step13.M'.d80 else false )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then x104 else x104 ) ) ) $ ( if true then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> x102 ) ) ) $ ( Chain2Step13.M'.d84 ) ) ) ) $ ( if Chain2Step13.M'.d108 then Chain2Step13.M'.d35 else Chain2Step13.M'.d43 )
        d105 : if true then if false then Bool else Bool else if false then Bool else Bool
        d105 = if if d27 then Chain2Step13.M'.d56 else p2 then if d41 then Chain2Step13.M'.d84 else d50 else if Chain2Step13.M'.d10 then true else Chain2Step13.M'.d53
        d106 : if false then if false then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if Chain2Step13.M'.d17 then Chain2Step13.M'.d53 else p1 ) ) ) $ ( if Chain2Step13.M'.d35 then p2 else true )
        d108 : if false then if false then Bool else Bool else if true then Bool else Bool
        d108 = if if true then Chain2Step13.M'.d84 else d97 then if Chain2Step13.M'.d56 then p1 else d4 else if d31 then d85 else p2
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> x111 ) ) ) $ ( x111 ) ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if Chain2Step13.M'.d108 then x110 else Chain2Step13.M'.d32 ) ) ) $ ( if Chain2Step13.M'.d50 then Chain2Step13.M'.d19 else Chain2Step13.M'.d26 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> Chain2Step13.M'.d39 ) ) ) $ ( d50 ) ) ) ) $ ( if Chain2Step13.M'.d53 then d50 else true )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d118 = if if false then p1 else Chain2Step13.M'.d110 then if p2 then Chain2Step13.M'.d19 else true else if Chain2Step13.M'.d36 then false else Chain2Step13.M'.d17
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d121 = if if d28 then Chain2Step13.M'.d115 else Chain2Step13.M'.d62 then if true then p2 else false else if true then Chain2Step13.M'.d97 else true
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d123 = if if d24 then Chain2Step13.M'.d11 else Chain2Step13.M'.d35 then if false then Chain2Step13.M'.d10 else d36 else if p1 then Chain2Step13.M'.d67 else p1
        d126 : if true then if false then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if Chain2Step13.M'.d17 then Chain2Step13.M'.d97 else true ) ) ) $ ( if d118 then Chain2Step13.M'.d93 else p1 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if false then Bool else Bool )
        d128 = if if Chain2Step13.M'.d56 then Chain2Step13.M'.d46 else d56 then if Chain2Step13.M'.d21 then Chain2Step13.M'.d31 else false else if false then true else Chain2Step13.M'.d47
        d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x133 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d131 = if if d21 then Chain2Step13.M'.d105 else true then if d34 then d22 else p1 else if true then Chain2Step13.M'.d102 else Chain2Step13.M'.d32
        d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if false then Bool else x135 ) ) ) $ ( if true then Bool else Bool )
        d134 = if if p2 then d109 else d44 then if Chain2Step13.M'.d10 then Chain2Step13.M'.d102 else Chain2Step13.M'.d19 else if Chain2Step13.M'.d77 then Chain2Step13.M'.d100 else true