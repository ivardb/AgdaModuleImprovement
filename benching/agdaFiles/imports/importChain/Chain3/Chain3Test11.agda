module Chain3Test11  where
    import Chain3Step211
    open import Chain3Step211 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else x2 ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if Chain3Step211.M'.d111 then true else true )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> Chain3Step211.M'.d106 ) ) ) $ ( false ) ) ) ) $ ( if Chain3Step211.M'.d114 then d5 else p1 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( x15 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if true then Chain3Step211.M'.d70 else Chain3Step211.M'.d75 ) ) ) $ ( if d5 then d8 else p3 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> Chain3Step211.M'.d82 ) ) ) $ ( Chain3Step211.M'.d27 ) ) ) ) $ ( if Chain3Step211.M'.d9 then Chain3Step211.M'.d13 else false )
        d22 : if true then if false then Bool else Bool else if false then Bool else Bool
        d22 = if if p1 then p1 else p3 then if Chain3Step211.M'.d93 then p3 else d5 else if d17 then d8 else d8
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = if if Chain3Step211.M'.d128 then Chain3Step211.M'.d121 else true then if p1 then Chain3Step211.M'.d123 else d22 else if p3 then d22 else Chain3Step211.M'.d109
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if p3 then Chain3Step211.M'.d27 else Chain3Step211.M'.d83 then if d23 then Chain3Step211.M'.d126 else Chain3Step211.M'.d6 else if Chain3Step211.M'.d61 then Chain3Step211.M'.d123 else Chain3Step211.M'.d114
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( x30 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = if if d5 then true else Chain3Step211.M'.d82 then if Chain3Step211.M'.d58 then Chain3Step211.M'.d82 else Chain3Step211.M'.d79 else if Chain3Step211.M'.d103 then d26 else p3
        d32 : if false then if false then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if false then d8 else false ) ) ) $ ( if p3 then Chain3Step211.M'.d121 else Chain3Step211.M'.d98 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if Chain3Step211.M'.d127 then p3 else true then if p1 then Chain3Step211.M'.d121 else Chain3Step211.M'.d126 else if d8 then d17 else d22
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else x39 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if d13 then p1 else Chain3Step211.M'.d103 ) ) ) $ ( if false then Chain3Step211.M'.d30 else Chain3Step211.M'.d24 )
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> true ) ) ) $ ( Chain3Step211.M'.d67 ) ) ) ) $ ( if true then p1 else p1 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d43 = if if Chain3Step211.M'.d59 then false else Chain3Step211.M'.d61 then if Chain3Step211.M'.d93 then p1 else Chain3Step211.M'.d40 else if true then false else p3
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if false then x48 else x48 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d23 ) ) ) $ ( d29 ) ) ) ) $ ( if Chain3Step211.M'.d101 then Chain3Step211.M'.d6 else Chain3Step211.M'.d33 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x51 ) ) ) $ ( x50 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = if if Chain3Step211.M'.d20 then Chain3Step211.M'.d11 else Chain3Step211.M'.d98 then if p3 then Chain3Step211.M'.d67 else Chain3Step211.M'.d59 else if p1 then d5 else Chain3Step211.M'.d128
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = if if p1 then d45 else false then if p3 then d45 else Chain3Step211.M'.d13 else if true then false else Chain3Step211.M'.d111
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if true then Chain3Step211.M'.d24 else Chain3Step211.M'.d30 then if p3 then Chain3Step211.M'.d79 else d22 else if false then true else Chain3Step211.M'.d101
        d57 : if false then if false then Bool else Bool else if true then Bool else Bool
        d57 = if if Chain3Step211.M'.d46 then Chain3Step211.M'.d127 else true then if true then Chain3Step211.M'.d51 else true else if p3 then Chain3Step211.M'.d63 else Chain3Step211.M'.d128
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> Chain3Step211.M'.d103 ) ) ) $ ( true ) ) ) ) $ ( if Chain3Step211.M'.d98 then Chain3Step211.M'.d82 else d23 )
        d63 : if false then if true then Bool else Bool else if true then Bool else Bool
        d63 = if if p3 then Chain3Step211.M'.d51 else p3 then if true then d23 else Chain3Step211.M'.d93 else if Chain3Step211.M'.d62 then true else Chain3Step211.M'.d91
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if Chain3Step211.M'.d127 then Chain3Step211.M'.d60 else Chain3Step211.M'.d30 then if Chain3Step211.M'.d91 then Chain3Step211.M'.d30 else true else if false then Chain3Step211.M'.d62 else d45
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d49 then true else Chain3Step211.M'.d6 ) ) ) $ ( if Chain3Step211.M'.d20 then d37 else Chain3Step211.M'.d109 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> d23 ) ) ) $ ( d64 ) ) ) ) $ ( if d29 then d29 else d64 )
        d71 : if false then if false then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> Chain3Step211.M'.d6 ) ) ) $ ( d17 ) ) ) ) $ ( if Chain3Step211.M'.d77 then true else p3 )
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d34 ) ) ) $ ( Chain3Step211.M'.d36 ) ) ) ) $ ( if Chain3Step211.M'.d91 then Chain3Step211.M'.d82 else true )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> true ) ) ) $ ( true ) ) ) ) $ ( if Chain3Step211.M'.d8 then Chain3Step211.M'.d121 else p1 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> d65 ) ) ) $ ( true ) ) ) ) $ ( if p1 then Chain3Step211.M'.d62 else false )
        d87 : if true then if true then Bool else Bool else if false then Bool else Bool
        d87 = if if Chain3Step211.M'.d93 then p3 else Chain3Step211.M'.d128 then if d77 then Chain3Step211.M'.d30 else p1 else if false then Chain3Step211.M'.d36 else Chain3Step211.M'.d109
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> Chain3Step211.M'.d45 ) ) ) $ ( p3 ) ) ) ) $ ( if Chain3Step211.M'.d75 then Chain3Step211.M'.d93 else d58 )
        d91 : if false then if false then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d32 then d49 else p1 ) ) ) $ ( if p3 then p1 else p3 )
        d93 : if true then if false then Bool else Bool else if true then Bool else Bool
        d93 = if if Chain3Step211.M'.d62 then p3 else p3 then if Chain3Step211.M'.d27 then p1 else p1 else if d34 then d52 else true
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if p3 then true else d49 then if Chain3Step211.M'.d121 then false else Chain3Step211.M'.d20 else if Chain3Step211.M'.d30 then Chain3Step211.M'.d79 else true
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> Chain3Step211.M'.d58 ) ) ) $ ( x98 ) ) ) ) $ ( if p1 then d74 else d37 )
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = if if false then Chain3Step211.M'.d62 else d5 then if Chain3Step211.M'.d15 then Chain3Step211.M'.d101 else p3 else if p1 then d65 else false
        d103 : if true then if false then Bool else Bool else if true then Bool else Bool
        d103 = if if false then p1 else Chain3Step211.M'.d11 then if Chain3Step211.M'.d79 then true else Chain3Step211.M'.d59 else if Chain3Step211.M'.d79 then Chain3Step211.M'.d61 else Chain3Step211.M'.d62
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> true ) ) ) $ ( Chain3Step211.M'.d121 ) ) ) ) $ ( if p3 then d57 else Chain3Step211.M'.d117 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> d71 ) ) ) $ ( p1 ) ) ) ) $ ( if Chain3Step211.M'.d56 then d63 else d43 )
        d113 : if true then if true then Bool else Bool else if true then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if d87 then Chain3Step211.M'.d111 else d22 ) ) ) $ ( if p3 then p3 else p1 )
        d115 : if true then if true then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> Chain3Step211.M'.d8 ) ) ) $ ( d58 ) ) ) ) $ ( if false then d109 else d52 )
        d118 : if false then if true then Bool else Bool else if true then Bool else Bool
        d118 = if if d103 then Chain3Step211.M'.d114 else Chain3Step211.M'.d30 then if p1 then false else d63 else if d29 then p3 else false
        d119 : if false then if true then Bool else Bool else if true then Bool else Bool
        d119 = if if Chain3Step211.M'.d11 then Chain3Step211.M'.d127 else Chain3Step211.M'.d8 then if true then true else Chain3Step211.M'.d27 else if d17 then Chain3Step211.M'.d62 else Chain3Step211.M'.d58
        d120 : if true then if true then Bool else Bool else if true then Bool else Bool
        d120 = if if Chain3Step211.M'.d109 then p3 else Chain3Step211.M'.d15 then if Chain3Step211.M'.d75 then Chain3Step211.M'.d70 else true else if Chain3Step211.M'.d27 then true else p1
        d121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d121 = if if Chain3Step211.M'.d50 then Chain3Step211.M'.d24 else d67 then if p1 then Chain3Step211.M'.d9 else false else if Chain3Step211.M'.d98 then Chain3Step211.M'.d114 else false
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( x124 ) ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if false then Chain3Step211.M'.d127 else d34 ) ) ) $ ( if d45 then p3 else p3 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if false then x128 else x128 ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if d5 then Chain3Step211.M'.d101 else Chain3Step211.M'.d121 ) ) ) $ ( if Chain3Step211.M'.d98 then Chain3Step211.M'.d56 else Chain3Step211.M'.d27 )
        d129 : if true then if true then Bool else Bool else if true then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d17 then Chain3Step211.M'.d60 else d65 ) ) ) $ ( if Chain3Step211.M'.d93 then d29 else d103 )
        d131 : if false then if false then Bool else Bool else if false then Bool else Bool
        d131 = if if Chain3Step211.M'.d51 then true else Chain3Step211.M'.d70 then if Chain3Step211.M'.d36 then Chain3Step211.M'.d30 else true else if d43 then d65 else Chain3Step211.M'.d75
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> if false then Bool else x133 ) ) ) $ ( if false then Bool else Bool )
        d132 = if if p3 then d63 else p1 then if d103 then d22 else false else if Chain3Step211.M'.d121 then Chain3Step211.M'.d63 else Chain3Step211.M'.d33
        d134 : if true then if true then Bool else Bool else if false then Bool else Bool
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> ( ( Bool -> Bool ) ∋ ( ( λ x136 -> d45 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then d103 else Chain3Step211.M'.d11 )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then Bool else x140 ) ) ) $ ( if false then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> Chain3Step211.M'.d58 ) ) ) $ ( d71 ) ) ) ) $ ( if false then Chain3Step211.M'.d46 else p1 )