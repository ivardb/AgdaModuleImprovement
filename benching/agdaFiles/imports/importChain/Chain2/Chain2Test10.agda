module Chain2Test10  where
    import Chain2Step110
    open import Chain2Step110 using (Bool; true; false; ⊤; tt) public
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> Chain2Step110.M'.d77 ) ) ) $ ( Chain2Step110.M'.d13 ) ) ) ) $ ( if p1 then true else p1 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if Chain2Step110.M'.d39 then Chain2Step110.M'.d16 else Chain2Step110.M'.d7 ) ) ) $ ( if d3 then d3 else Chain2Step110.M'.d91 )
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if Chain2Step110.M'.d73 then true else p2 ) ) ) $ ( if p2 then p1 else Chain2Step110.M'.d44 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then Bool else x15 ) ) ) $ ( if true then Bool else Bool )
        d14 = if if d3 then p2 else p2 then if Chain2Step110.M'.d31 then true else Chain2Step110.M'.d5 else if p1 then false else d8
        d16 : if false then if false then Bool else Bool else if false then Bool else Bool
        d16 = if if d3 then p2 else Chain2Step110.M'.d41 then if Chain2Step110.M'.d46 then true else Chain2Step110.M'.d114 else if p1 then p1 else Chain2Step110.M'.d10
        d17 : if false then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if Chain2Step110.M'.d53 then Chain2Step110.M'.d45 else Chain2Step110.M'.d7 ) ) ) $ ( if Chain2Step110.M'.d127 then false else p2 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if true then Chain2Step110.M'.d16 else true then if Chain2Step110.M'.d7 then false else Chain2Step110.M'.d23 else if false then p1 else p1
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( x25 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d14 ) ) ) $ ( d16 ) ) ) ) $ ( if Chain2Step110.M'.d123 then p1 else Chain2Step110.M'.d80 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d27 = if if Chain2Step110.M'.d5 then p1 else Chain2Step110.M'.d7 then if true then Chain2Step110.M'.d109 else Chain2Step110.M'.d127 else if d17 then Chain2Step110.M'.d114 else Chain2Step110.M'.d102
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( x32 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> Chain2Step110.M'.d81 ) ) ) $ ( Chain2Step110.M'.d41 ) ) ) ) $ ( if true then Chain2Step110.M'.d37 else true )
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if Chain2Step110.M'.d44 then d17 else Chain2Step110.M'.d37 ) ) ) $ ( if d19 then Chain2Step110.M'.d36 else p2 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d36 = if if false then Chain2Step110.M'.d13 else false then if p1 then true else p2 else if p2 then p2 else Chain2Step110.M'.d31
        d38 : if true then if false then Bool else Bool else if false then Bool else Bool
        d38 = if if Chain2Step110.M'.d10 then d36 else Chain2Step110.M'.d66 then if true then true else false else if d19 then Chain2Step110.M'.d5 else Chain2Step110.M'.d86
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( d27 ) ) ) ) $ ( if false then false else p2 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if false then x45 else x45 ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d16 ) ) ) $ ( d19 ) ) ) ) $ ( if p1 then false else d16 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d27 ) ) ) $ ( false ) ) ) ) $ ( if true then p2 else Chain2Step110.M'.d42 )
        d51 : if true then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if d27 then Chain2Step110.M'.d37 else Chain2Step110.M'.d73 then if false then Chain2Step110.M'.d109 else Chain2Step110.M'.d53 else if d27 then Chain2Step110.M'.d68 else Chain2Step110.M'.d85
        d52 : if false then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if p1 then Chain2Step110.M'.d45 else x53 ) ) ) $ ( if Chain2Step110.M'.d19 then Chain2Step110.M'.d10 else Chain2Step110.M'.d31 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if Chain2Step110.M'.d7 then x55 else true ) ) ) $ ( if false then Chain2Step110.M'.d127 else false )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then x59 else Bool ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if true then d38 else Chain2Step110.M'.d37 ) ) ) $ ( if d12 then false else d46 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if Chain2Step110.M'.d127 then p1 else Chain2Step110.M'.d114 ) ) ) $ ( if p1 then false else p2 )
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> Chain2Step110.M'.d13 ) ) ) $ ( Chain2Step110.M'.d61 ) ) ) ) $ ( if false then p1 else Chain2Step110.M'.d42 )
        d66 : if true then if false then Bool else Bool else if false then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> Chain2Step110.M'.d49 ) ) ) $ ( p1 ) ) ) ) $ ( if false then Chain2Step110.M'.d99 else false )
        d69 : if true then if false then Bool else Bool else if false then Bool else Bool
        d69 = if if d46 then false else d66 then if Chain2Step110.M'.d109 then p2 else d38 else if Chain2Step110.M'.d96 then p2 else Chain2Step110.M'.d9
        d70 : if true then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if false then d60 else d52 ) ) ) $ ( if Chain2Step110.M'.d91 then p1 else Chain2Step110.M'.d86 )
        d72 : if false then if false then Bool else Bool else if true then Bool else Bool
        d72 = if if true then Chain2Step110.M'.d59 else Chain2Step110.M'.d49 then if Chain2Step110.M'.d94 then Chain2Step110.M'.d5 else Chain2Step110.M'.d45 else if d19 then true else p1
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then x76 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> Chain2Step110.M'.d44 ) ) ) $ ( true ) ) ) ) $ ( if d39 then d19 else Chain2Step110.M'.d127 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> d36 ) ) ) $ ( Chain2Step110.M'.d114 ) ) ) ) $ ( if p2 then Chain2Step110.M'.d106 else true )
        d82 : if true then if false then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if Chain2Step110.M'.d106 then Chain2Step110.M'.d77 else Chain2Step110.M'.d81 ) ) ) $ ( if Chain2Step110.M'.d77 then d46 else false )
        d84 : if true then if false then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> p1 ) ) ) $ ( Chain2Step110.M'.d89 ) ) ) ) $ ( if false then p2 else Chain2Step110.M'.d19 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then Bool else x89 ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if true then p1 else Chain2Step110.M'.d105 ) ) ) $ ( if Chain2Step110.M'.d46 then Chain2Step110.M'.d81 else p1 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then x91 else x91 ) ) ) $ ( if false then Bool else Bool )
        d90 = if if d66 then p2 else Chain2Step110.M'.d61 then if d17 then false else d29 else if p1 then p1 else d12
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = if if d82 then Chain2Step110.M'.d23 else p1 then if Chain2Step110.M'.d68 then Chain2Step110.M'.d10 else Chain2Step110.M'.d127 else if Chain2Step110.M'.d106 then d8 else Chain2Step110.M'.d89
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d93 = if if p1 then d57 else false then if d34 then p1 else p2 else if true then Chain2Step110.M'.d105 else Chain2Step110.M'.d91
        d96 : if false then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if p2 then Chain2Step110.M'.d41 else Chain2Step110.M'.d118 then if p2 then d42 else Chain2Step110.M'.d68 else if Chain2Step110.M'.d49 then true else true
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = if if Chain2Step110.M'.d19 then Chain2Step110.M'.d49 else Chain2Step110.M'.d16 then if Chain2Step110.M'.d127 then Chain2Step110.M'.d73 else Chain2Step110.M'.d64 else if p2 then d63 else Chain2Step110.M'.d19
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then Bool else x99 ) ) ) $ ( if false then Bool else Bool )
        d98 = if if Chain2Step110.M'.d7 then p2 else p2 then if Chain2Step110.M'.d39 then Chain2Step110.M'.d77 else Chain2Step110.M'.d16 else if d34 then d57 else p2
        d100 : if true then if true then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if d12 then Chain2Step110.M'.d66 else Chain2Step110.M'.d112 ) ) ) $ ( if d14 then Chain2Step110.M'.d34 else d57 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then Bool else x103 ) ) ) $ ( if false then Bool else Bool )
        d102 = if if Chain2Step110.M'.d44 then Chain2Step110.M'.d41 else p2 then if p1 then d8 else p2 else if d72 then d12 else p1
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then x107 else x107 ) ) ) $ ( if false then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> false ) ) ) $ ( Chain2Step110.M'.d41 ) ) ) ) $ ( if p2 then true else p1 )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( x109 ) ) ) ) $ ( if false then Bool else Bool )
        d108 = if if Chain2Step110.M'.d96 then false else Chain2Step110.M'.d10 then if Chain2Step110.M'.d26 then Chain2Step110.M'.d6 else d73 else if Chain2Step110.M'.d19 then true else d54
        d111 : if false then if true then Bool else Bool else if false then Bool else Bool
        d111 = if if p1 then d96 else Chain2Step110.M'.d94 then if false then Chain2Step110.M'.d46 else d27 else if d96 then false else Chain2Step110.M'.d55
        d112 : if false then if true then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> Chain2Step110.M'.d106 ) ) ) $ ( p2 ) ) ) ) $ ( if d51 then Chain2Step110.M'.d42 else Chain2Step110.M'.d5 )
        d115 : if false then if false then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> p2 ) ) ) $ ( d19 ) ) ) ) $ ( if p1 then Chain2Step110.M'.d36 else true )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else x119 ) ) ) $ ( if false then Bool else Bool )
        d118 = if if Chain2Step110.M'.d46 then true else p1 then if Chain2Step110.M'.d80 then p1 else Chain2Step110.M'.d5 else if p2 then Chain2Step110.M'.d6 else d39
        d120 : if true then if true then Bool else Bool else if true then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if Chain2Step110.M'.d39 then Chain2Step110.M'.d105 else p2 )
        d123 : if true then if false then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> Chain2Step110.M'.d86 ) ) ) $ ( Chain2Step110.M'.d23 ) ) ) ) $ ( if Chain2Step110.M'.d89 then false else true )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d126 = if if true then Chain2Step110.M'.d53 else p1 then if true then d97 else Chain2Step110.M'.d70 else if d36 then false else d82
        d129 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else Bool ) ) ) $ ( if true then Bool else Bool )
        d129 = if if d16 then Chain2Step110.M'.d9 else Chain2Step110.M'.d85 then if true then d112 else d12 else if Chain2Step110.M'.d37 then p1 else false
        d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then x132 else x132 ) ) ) $ ( if false then Bool else Bool )
        d131 = if if p2 then Chain2Step110.M'.d70 else d51 then if Chain2Step110.M'.d86 then p1 else Chain2Step110.M'.d118 else if d51 then true else Chain2Step110.M'.d106