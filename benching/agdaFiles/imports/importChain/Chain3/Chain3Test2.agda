module Chain3Test2  where
    import Chain3Step22
    open import Chain3Step22 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else x5 ) ) ) $ ( if true then Bool else Bool )
        d4 = if if Chain3Step22.M'.d115 then p1 else Chain3Step22.M'.d103 then if p2 then p2 else true else if p1 then Chain3Step22.M'.d37 else p1
        d6 : if true then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( false ) ) ) ) $ ( if false then Chain3Step22.M'.d106 else false )
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if false then d4 else p2 ) ) ) $ ( if d4 then true else d4 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if Chain3Step22.M'.d84 then Chain3Step22.M'.d129 else d4 then if p2 then Chain3Step22.M'.d129 else Chain3Step22.M'.d75 else if Chain3Step22.M'.d84 then Chain3Step22.M'.d109 else d4
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( x15 ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if d9 then false else true then if Chain3Step22.M'.d42 then Chain3Step22.M'.d39 else true else if false then d6 else Chain3Step22.M'.d65
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else Bool ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> Chain3Step22.M'.d61 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then Chain3Step22.M'.d106 else false )
        d21 : if false then if true then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if Chain3Step22.M'.d101 then true else true ) ) ) $ ( if true then Chain3Step22.M'.d34 else p2 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if Chain3Step22.M'.d84 then d4 else Chain3Step22.M'.d135 ) ) ) $ ( if Chain3Step22.M'.d22 then d11 else d14 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then Bool else x28 ) ) ) $ ( if true then Bool else Bool )
        d27 = if if Chain3Step22.M'.d115 then true else false then if Chain3Step22.M'.d120 then p2 else p2 else if Chain3Step22.M'.d36 then p2 else d14
        d29 : if true then if true then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if Chain3Step22.M'.d103 then x30 else true ) ) ) $ ( if false then p2 else p1 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( x32 ) ) ) ) $ ( if false then Bool else Bool )
        d31 = if if Chain3Step22.M'.d57 then true else true then if d27 then Chain3Step22.M'.d45 else p1 else if d14 then true else true
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = if if p1 then d31 else Chain3Step22.M'.d36 then if d17 then Chain3Step22.M'.d109 else d29 else if p1 then false else d29
        d35 : if true then if false then Bool else Bool else if false then Bool else Bool
        d35 = if if p1 then d9 else true then if true then Chain3Step22.M'.d6 else Chain3Step22.M'.d48 else if p2 then Chain3Step22.M'.d57 else Chain3Step22.M'.d36
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then Bool else x37 ) ) ) $ ( if true then Bool else Bool )
        d36 = if if d4 then Chain3Step22.M'.d77 else true then if p2 then Chain3Step22.M'.d84 else Chain3Step22.M'.d64 else if p2 then d11 else p2
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( x39 ) ) ) ) $ ( if true then Bool else Bool )
        d38 = if if Chain3Step22.M'.d16 then Chain3Step22.M'.d120 else false then if true then Chain3Step22.M'.d39 else d17 else if true then p1 else false
        d41 : if false then if true then Bool else Bool else if true then Bool else Bool
        d41 = if if Chain3Step22.M'.d31 then Chain3Step22.M'.d68 else d17 then if p1 then Chain3Step22.M'.d77 else Chain3Step22.M'.d109 else if false then Chain3Step22.M'.d106 else Chain3Step22.M'.d50
        d42 : if true then if true then Bool else Bool else if false then Bool else Bool
        d42 = if if Chain3Step22.M'.d109 then false else Chain3Step22.M'.d45 then if Chain3Step22.M'.d22 then p2 else p2 else if d21 then Chain3Step22.M'.d103 else true
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( x44 ) ) ) ) $ ( if false then Bool else Bool )
        d43 = if if Chain3Step22.M'.d135 then d17 else Chain3Step22.M'.d34 then if p1 then false else p1 else if Chain3Step22.M'.d91 then Chain3Step22.M'.d34 else d31
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d21 ) ) ) $ ( Chain3Step22.M'.d16 ) ) ) ) $ ( if false then Chain3Step22.M'.d34 else d14 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> Chain3Step22.M'.d79 ) ) ) $ ( d27 ) ) ) ) $ ( if Chain3Step22.M'.d57 then d36 else d43 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then x55 else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = if if Chain3Step22.M'.d42 then p2 else p1 then if true then Chain3Step22.M'.d77 else Chain3Step22.M'.d64 else if Chain3Step22.M'.d57 then d9 else p2
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then x57 else x57 ) ) ) $ ( if false then Bool else Bool )
        d56 = if if d36 then p2 else Chain3Step22.M'.d61 then if Chain3Step22.M'.d103 then Chain3Step22.M'.d42 else Chain3Step22.M'.d57 else if p2 then Chain3Step22.M'.d39 else d11
        d58 : if true then if true then Bool else Bool else if true then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> Chain3Step22.M'.d130 ) ) ) $ ( Chain3Step22.M'.d21 ) ) ) ) $ ( if Chain3Step22.M'.d22 then Chain3Step22.M'.d37 else Chain3Step22.M'.d48 )
        d61 : if false then if true then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if d27 then Chain3Step22.M'.d137 else x62 ) ) ) $ ( if Chain3Step22.M'.d16 then p1 else d35 )
        d63 : if false then if false then Bool else Bool else if false then Bool else Bool
        d63 = if if d61 then Chain3Step22.M'.d91 else Chain3Step22.M'.d61 then if false then Chain3Step22.M'.d68 else d29 else if false then d61 else d35
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> true ) ) ) $ ( d43 ) ) ) ) $ ( if true then d29 else Chain3Step22.M'.d68 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = if if d29 then Chain3Step22.M'.d24 else false then if d41 then d46 else d64 else if p1 then false else d38
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if Chain3Step22.M'.d96 then Chain3Step22.M'.d11 else true then if p2 then true else d4 else if Chain3Step22.M'.d96 then Chain3Step22.M'.d21 else true
        d72 : if true then if true then Bool else Bool else if false then Bool else Bool
        d72 = if if Chain3Step22.M'.d115 then p2 else true then if p1 then Chain3Step22.M'.d31 else Chain3Step22.M'.d39 else if p1 then d50 else d35
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if true then Bool else x75 ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d42 then Chain3Step22.M'.d115 else Chain3Step22.M'.d118 ) ) ) $ ( if Chain3Step22.M'.d118 then p1 else d41 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if true then x77 else Bool ) ) ) $ ( if false then Bool else Bool )
        d76 = if if true then p1 else Chain3Step22.M'.d113 then if d61 then Chain3Step22.M'.d96 else d54 else if true then p1 else d42
        d78 : if false then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if p2 then d9 else Chain3Step22.M'.d16 then if Chain3Step22.M'.d135 then d41 else Chain3Step22.M'.d103 else if true then p1 else Chain3Step22.M'.d86
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( x82 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( true ) ) ) ) $ ( if p2 then true else false )
        d84 : if true then if false then Bool else Bool else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if Chain3Step22.M'.d101 then d11 else Chain3Step22.M'.d77 )
        d87 : if true then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> false ) ) ) $ ( Chain3Step22.M'.d93 ) ) ) ) $ ( if d64 then Chain3Step22.M'.d93 else Chain3Step22.M'.d11 )
        d90 : if true then if false then Bool else Bool else if false then Bool else Bool
        d90 = if if false then Chain3Step22.M'.d57 else Chain3Step22.M'.d11 then if p2 then p1 else p2 else if Chain3Step22.M'.d37 then Chain3Step22.M'.d103 else p1
        d91 : if true then if true then Bool else Bool else if false then Bool else Bool
        d91 = if if false then p1 else d14 then if Chain3Step22.M'.d57 then p2 else d63 else if p2 then d21 else d6
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = if if false then Chain3Step22.M'.d93 else Chain3Step22.M'.d25 then if p1 then Chain3Step22.M'.d37 else p2 else if d73 then Chain3Step22.M'.d115 else Chain3Step22.M'.d120
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d29 then true else true ) ) ) $ ( if d79 then Chain3Step22.M'.d11 else Chain3Step22.M'.d25 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if Chain3Step22.M'.d125 then p2 else p1 ) ) ) $ ( if p1 then p2 else Chain3Step22.M'.d37 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then x101 else x101 ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d58 then Chain3Step22.M'.d118 else Chain3Step22.M'.d113 then if Chain3Step22.M'.d128 then p1 else Chain3Step22.M'.d130 else if d56 then Chain3Step22.M'.d115 else Chain3Step22.M'.d57
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d102 = if if Chain3Step22.M'.d96 then false else true then if d64 then p1 else d56 else if p2 then p2 else Chain3Step22.M'.d6
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> Chain3Step22.M'.d21 ) ) ) $ ( false ) ) ) ) $ ( if false then d17 else p1 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x110 ) ) ) $ ( if true then Bool else Bool )
        d109 = if if p2 then false else true then if false then p1 else true else if Chain3Step22.M'.d37 then p2 else Chain3Step22.M'.d120
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( x113 ) ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if true then d61 else d50 ) ) ) $ ( if d71 then Chain3Step22.M'.d36 else p2 )
        d115 : if false then if false then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if Chain3Step22.M'.d25 then true else false )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else Bool ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if Chain3Step22.M'.d128 then Chain3Step22.M'.d28 else false ) ) ) $ ( if Chain3Step22.M'.d68 then p1 else d109 )
        d121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d121 = if if false then p2 else Chain3Step22.M'.d120 then if d58 then false else d50 else if false then Chain3Step22.M'.d137 else Chain3Step22.M'.d48
        d122 : if false then if false then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( d11 ) ) ) ) $ ( if d63 then Chain3Step22.M'.d36 else d14 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> Bool ) ) ) $ ( x126 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if Chain3Step22.M'.d84 then d90 else p2 then if false then Chain3Step22.M'.d137 else Chain3Step22.M'.d37 else if Chain3Step22.M'.d93 then Chain3Step22.M'.d79 else d71