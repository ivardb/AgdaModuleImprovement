module Chain2Test8  where
    import Chain2Step18
    open import Chain2Step18 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else x4 ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( x6 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if p3 then Chain2Step18.M'.d86 else false then if true then Chain2Step18.M'.d39 else Chain2Step18.M'.d77 else if p1 then false else false
        d8 : if false then if false then Bool else Bool else if true then Bool else Bool
        d8 = if if false then d5 else d5 then if Chain2Step18.M'.d17 then p1 else Chain2Step18.M'.d50 else if p3 then p1 else d5
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( Chain2Step18.M'.d4 ) ) ) ) $ ( if p3 then Chain2Step18.M'.d90 else Chain2Step18.M'.d8 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if Chain2Step18.M'.d56 then d8 else d5 then if Chain2Step18.M'.d81 then p1 else true else if Chain2Step18.M'.d64 then false else p1
        d17 : if true then if false then Bool else Bool else if false then Bool else Bool
        d17 = if if false then Chain2Step18.M'.d6 else p3 then if Chain2Step18.M'.d4 then Chain2Step18.M'.d29 else p3 else if false then false else false
        d18 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then Bool else x21 ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> Chain2Step18.M'.d102 ) ) ) $ ( p1 ) ) ) ) $ ( if d5 then p3 else Chain2Step18.M'.d119 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x23 ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d18 then d17 else false then if false then Chain2Step18.M'.d38 else Chain2Step18.M'.d8 else if Chain2Step18.M'.d116 then d8 else d8
        d25 : if true then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if d22 then Chain2Step18.M'.d26 else p1 ) ) ) $ ( if Chain2Step18.M'.d8 then false else d18 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x29 ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if p1 then p3 else true then if p1 then Chain2Step18.M'.d90 else d9 else if d22 then true else Chain2Step18.M'.d17
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d30 = if if true then true else d17 then if false then Chain2Step18.M'.d39 else Chain2Step18.M'.d21 else if d22 then false else true
        d33 : if true then if true then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> Chain2Step18.M'.d69 ) ) ) $ ( false ) ) ) ) $ ( if Chain2Step18.M'.d11 then p3 else true )
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> Chain2Step18.M'.d61 ) ) ) $ ( false ) ) ) ) $ ( if p1 then false else Chain2Step18.M'.d96 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( x41 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if false then d27 else Chain2Step18.M'.d116 ) ) ) $ ( if Chain2Step18.M'.d109 then p3 else Chain2Step18.M'.d24 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x46 ) ) ) $ ( x46 ) ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> Chain2Step18.M'.d69 ) ) ) $ ( false ) ) ) ) $ ( if p1 then Chain2Step18.M'.d106 else true )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> Chain2Step18.M'.d22 ) ) ) $ ( Chain2Step18.M'.d24 ) ) ) ) $ ( if true then d17 else Chain2Step18.M'.d78 )
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = if if d17 then p1 else Chain2Step18.M'.d82 then if Chain2Step18.M'.d106 then Chain2Step18.M'.d26 else d27 else if Chain2Step18.M'.d50 then p3 else p3
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> Chain2Step18.M'.d81 ) ) ) $ ( Chain2Step18.M'.d6 ) ) ) ) $ ( if d22 then Chain2Step18.M'.d109 else Chain2Step18.M'.d39 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( x59 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if false then p3 else d48 )
        d61 : if false then if false then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> Chain2Step18.M'.d24 ) ) ) $ ( Chain2Step18.M'.d86 ) ) ) ) $ ( if Chain2Step18.M'.d74 then p1 else p1 )
        d64 : if false then if true then Bool else Bool else if true then Bool else Bool
        d64 = if if Chain2Step18.M'.d40 then p1 else true then if d43 then Chain2Step18.M'.d51 else Chain2Step18.M'.d21 else if true then Chain2Step18.M'.d77 else Chain2Step18.M'.d22
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d39 then true else d27 ) ) ) $ ( if Chain2Step18.M'.d57 then Chain2Step18.M'.d36 else Chain2Step18.M'.d77 )
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = if if true then d52 else Chain2Step18.M'.d96 then if d5 then true else p1 else if true then p1 else p3
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = if if Chain2Step18.M'.d61 then Chain2Step18.M'.d69 else p3 then if Chain2Step18.M'.d21 then true else d27 else if p1 then true else Chain2Step18.M'.d4
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if Chain2Step18.M'.d23 then false else d30 ) ) ) $ ( if Chain2Step18.M'.d22 then Chain2Step18.M'.d64 else p3 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x75 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if if d71 then true else Chain2Step18.M'.d77 then if Chain2Step18.M'.d36 then p1 else false else if d70 then Chain2Step18.M'.d61 else p3
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else x79 ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if false then d61 else Chain2Step18.M'.d47 ) ) ) $ ( if Chain2Step18.M'.d21 then d70 else d9 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d80 = if if d70 then p3 else Chain2Step18.M'.d52 then if p3 then Chain2Step18.M'.d116 else d74 else if d36 then Chain2Step18.M'.d38 else p3
        d83 : if false then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if true then Chain2Step18.M'.d64 else false then if p1 then p1 else Chain2Step18.M'.d46 else if false then Chain2Step18.M'.d116 else Chain2Step18.M'.d38
        d84 : if false then if false then Bool else Bool else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if p1 then x85 else p1 ) ) ) $ ( if Chain2Step18.M'.d101 then false else d18 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if d39 then p3 else p3 then if d5 then Chain2Step18.M'.d119 else Chain2Step18.M'.d42 else if d36 then p3 else p1
        d89 : if true then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if Chain2Step18.M'.d112 then Chain2Step18.M'.d23 else Chain2Step18.M'.d24 then if true then Chain2Step18.M'.d50 else p1 else if Chain2Step18.M'.d74 then Chain2Step18.M'.d74 else false
        d90 : if false then if false then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d56 ) ) ) $ ( d83 ) ) ) ) $ ( if p1 then false else Chain2Step18.M'.d51 )
        d93 : if true then if false then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if Chain2Step18.M'.d24 then x94 else Chain2Step18.M'.d46 ) ) ) $ ( if true then Chain2Step18.M'.d51 else false )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x97 ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if false then true else Chain2Step18.M'.d96 ) ) ) $ ( if Chain2Step18.M'.d15 then Chain2Step18.M'.d69 else p3 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then x102 else x102 ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> Chain2Step18.M'.d6 ) ) ) $ ( Chain2Step18.M'.d24 ) ) ) ) $ ( if Chain2Step18.M'.d101 then Chain2Step18.M'.d39 else Chain2Step18.M'.d46 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> Chain2Step18.M'.d88 ) ) ) $ ( d36 ) ) ) ) $ ( if true then d89 else Chain2Step18.M'.d101 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if false then x108 else x108 ) ) ) $ ( if false then Bool else Bool )
        d107 = if if Chain2Step18.M'.d46 then Chain2Step18.M'.d81 else p3 then if Chain2Step18.M'.d88 then false else p3 else if p1 then p3 else true
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> true ) ) ) $ ( Chain2Step18.M'.d33 ) ) ) ) $ ( if Chain2Step18.M'.d109 then p1 else false )
        d114 : if false then if false then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if Chain2Step18.M'.d24 then d48 else Chain2Step18.M'.d8 ) ) ) $ ( if p1 then true else d30 )
        d116 : if false then if false then Bool else Bool else if true then Bool else Bool
        d116 = if if Chain2Step18.M'.d38 then d109 else Chain2Step18.M'.d116 then if Chain2Step18.M'.d108 then p1 else Chain2Step18.M'.d63 else if p3 then Chain2Step18.M'.d102 else p3
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d117 = if if false then Chain2Step18.M'.d23 else d39 then if false then Chain2Step18.M'.d61 else Chain2Step18.M'.d93 else if false then true else p1
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x122 ) ) ) $ ( x122 ) ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if false then false else false ) ) ) $ ( if p3 then true else false )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x127 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if false then p3 else p1 ) ) ) $ ( if false then Chain2Step18.M'.d22 else Chain2Step18.M'.d57 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else Bool ) ) ) $ ( if true then Bool else Bool )
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if false then Chain2Step18.M'.d52 else d56 ) ) ) $ ( if Chain2Step18.M'.d78 then Chain2Step18.M'.d6 else Chain2Step18.M'.d4 )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d131 = if if Chain2Step18.M'.d40 then true else Chain2Step18.M'.d63 then if d89 then Chain2Step18.M'.d63 else Chain2Step18.M'.d78 else if d25 then Chain2Step18.M'.d90 else Chain2Step18.M'.d22
        d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( x135 ) ) ) ) $ ( if true then Bool else Bool )
        d134 = if if Chain2Step18.M'.d42 then true else false then if p3 then p1 else true else if p1 then d117 else Chain2Step18.M'.d42
        d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d137 = if if true then p1 else false then if Chain2Step18.M'.d109 then p1 else true else if Chain2Step18.M'.d72 then d56 else d33
        d139 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if Chain2Step18.M'.d46 then p3 else p3 ) ) ) $ ( if Chain2Step18.M'.d22 then Chain2Step18.M'.d29 else true )
        d142 : if false then if true then Bool else Bool else if false then Bool else Bool
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x143 -> ( ( Bool -> Bool ) ∋ ( ( λ x144 -> d9 ) ) ) $ ( Chain2Step18.M'.d33 ) ) ) ) $ ( if d93 then p1 else Chain2Step18.M'.d13 )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> Bool ) ) ) $ ( x148 ) ) ) ) $ ( if false then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> d5 ) ) ) $ ( Chain2Step18.M'.d22 ) ) ) ) $ ( if Chain2Step18.M'.d47 then p3 else Chain2Step18.M'.d109 )