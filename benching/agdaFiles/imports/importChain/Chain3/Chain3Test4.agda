module Chain3Test4  where
    import Chain3Step24
    open import Chain3Step24 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> true ) ) ) $ ( p3 ) ) ) ) $ ( if Chain3Step24.M'.d113 then true else Chain3Step24.M'.d83 )
        d8 : if false then if false then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> Chain3Step24.M'.d111 ) ) ) $ ( Chain3Step24.M'.d113 ) ) ) ) $ ( if p3 then d5 else p3 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then x13 else x13 ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if true then Chain3Step24.M'.d65 else false ) ) ) $ ( if p1 then Chain3Step24.M'.d61 else d8 )
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = if if Chain3Step24.M'.d75 then true else d5 then if Chain3Step24.M'.d73 then Chain3Step24.M'.d15 else d11 else if true then d5 else Chain3Step24.M'.d88
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> Chain3Step24.M'.d59 ) ) ) $ ( false ) ) ) ) $ ( if d8 then Chain3Step24.M'.d15 else Chain3Step24.M'.d56 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( x23 ) ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> Chain3Step24.M'.d33 ) ) ) $ ( Chain3Step24.M'.d54 ) ) ) ) $ ( if d11 then Chain3Step24.M'.d16 else p1 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( x26 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if true then Chain3Step24.M'.d78 else d5 then if false then Chain3Step24.M'.d111 else d14 else if Chain3Step24.M'.d86 then true else Chain3Step24.M'.d16
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = if if Chain3Step24.M'.d7 then Chain3Step24.M'.d20 else Chain3Step24.M'.d40 then if p1 then Chain3Step24.M'.d64 else Chain3Step24.M'.d15 else if Chain3Step24.M'.d15 then Chain3Step24.M'.d88 else p1
        d30 : if true then if true then Bool else Bool else if false then Bool else Bool
        d30 = if if Chain3Step24.M'.d16 then Chain3Step24.M'.d78 else d5 then if true then Chain3Step24.M'.d54 else d25 else if true then d14 else Chain3Step24.M'.d20
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if Chain3Step24.M'.d54 then Chain3Step24.M'.d88 else Chain3Step24.M'.d83 then if Chain3Step24.M'.d83 then p1 else d11 else if p3 then true else Chain3Step24.M'.d93
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> x34 ) ) ) $ ( Chain3Step24.M'.d30 ) ) ) ) $ ( if Chain3Step24.M'.d15 then Chain3Step24.M'.d16 else p1 )
        d37 : if false then if false then Bool else Bool else if false then Bool else Bool
        d37 = if if p3 then Chain3Step24.M'.d78 else p3 then if p3 then true else Chain3Step24.M'.d96 else if false then Chain3Step24.M'.d117 else Chain3Step24.M'.d86
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if true then Chain3Step24.M'.d68 else d5 ) ) ) $ ( if Chain3Step24.M'.d97 then p1 else false )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if d31 then Chain3Step24.M'.d114 else p3 then if Chain3Step24.M'.d114 then Chain3Step24.M'.d29 else d8 else if Chain3Step24.M'.d26 then Chain3Step24.M'.d74 else false
        d45 : if false then if true then Bool else Bool else if true then Bool else Bool
        d45 = if if d5 then Chain3Step24.M'.d36 else Chain3Step24.M'.d44 then if Chain3Step24.M'.d44 then p3 else Chain3Step24.M'.d96 else if Chain3Step24.M'.d11 then d30 else d20
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else Bool ) ) ) $ ( if true then Bool else Bool )
        d46 = if if Chain3Step24.M'.d118 then d20 else true then if true then Chain3Step24.M'.d70 else Chain3Step24.M'.d113 else if d30 then p3 else Chain3Step24.M'.d40
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if d5 then p3 else Chain3Step24.M'.d96 ) ) ) $ ( if true then d46 else Chain3Step24.M'.d79 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> x52 ) ) ) $ ( x51 ) ) ) ) $ ( if p3 then d42 else false )
        d55 : if true then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if p3 then true else Chain3Step24.M'.d26 then if d14 then d15 else false else if d31 then p1 else Chain3Step24.M'.d75
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if true then x58 else Bool ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if Chain3Step24.M'.d12 then Chain3Step24.M'.d118 else p1 ) ) ) $ ( if Chain3Step24.M'.d30 then p1 else d48 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then x60 else x60 ) ) ) $ ( if false then Bool else Bool )
        d59 = if if false then p3 else Chain3Step24.M'.d71 then if Chain3Step24.M'.d61 then d38 else Chain3Step24.M'.d78 else if Chain3Step24.M'.d30 then true else Chain3Step24.M'.d24
        d61 : if false then if true then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if false then Chain3Step24.M'.d24 else p3 ) ) ) $ ( if false then true else p1 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> Chain3Step24.M'.d97 ) ) ) $ ( d32 ) ) ) ) $ ( if p3 then Chain3Step24.M'.d65 else true )
        d67 : if false then if false then Bool else Bool else if false then Bool else Bool
        d67 = if if Chain3Step24.M'.d7 then p3 else p1 then if d15 then d45 else d55 else if Chain3Step24.M'.d105 then false else d48
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d68 = if if Chain3Step24.M'.d109 then Chain3Step24.M'.d114 else Chain3Step24.M'.d111 then if Chain3Step24.M'.d85 then d46 else Chain3Step24.M'.d24 else if d11 then Chain3Step24.M'.d95 else Chain3Step24.M'.d73
        d70 : if false then if false then Bool else Bool else if true then Bool else Bool
        d70 = if if p1 then Chain3Step24.M'.d36 else d38 then if Chain3Step24.M'.d70 then d32 else Chain3Step24.M'.d45 else if p3 then Chain3Step24.M'.d16 else Chain3Step24.M'.d73
        d71 : if false then if true then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if false then d46 else Chain3Step24.M'.d117 ) ) ) $ ( if true then Chain3Step24.M'.d97 else d56 )
        d73 : if true then if true then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if Chain3Step24.M'.d107 then false else x74 ) ) ) $ ( if p3 then d46 else Chain3Step24.M'.d99 )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if Chain3Step24.M'.d99 then true else d68 then if d48 then Chain3Step24.M'.d36 else Chain3Step24.M'.d79 else if Chain3Step24.M'.d33 then Chain3Step24.M'.d79 else Chain3Step24.M'.d111
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d42 then Chain3Step24.M'.d36 else Chain3Step24.M'.d79 ) ) ) $ ( if Chain3Step24.M'.d26 then true else false )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if Chain3Step24.M'.d45 then Chain3Step24.M'.d30 else Chain3Step24.M'.d74 ) ) ) $ ( if d8 then Chain3Step24.M'.d26 else d71 )
        d81 : if false then if true then Bool else Bool else if false then Bool else Bool
        d81 = if if d73 then d68 else Chain3Step24.M'.d45 then if true then d73 else p1 else if Chain3Step24.M'.d105 then Chain3Step24.M'.d117 else d15
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if true then Chain3Step24.M'.d12 else false then if Chain3Step24.M'.d59 then Chain3Step24.M'.d86 else true else if p3 then p3 else Chain3Step24.M'.d51
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d85 = if if Chain3Step24.M'.d105 then Chain3Step24.M'.d79 else d20 then if Chain3Step24.M'.d44 then d8 else Chain3Step24.M'.d68 else if p1 then p1 else p3
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x88 ) ) ) $ ( x88 ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if if Chain3Step24.M'.d33 then Chain3Step24.M'.d85 else d48 then if Chain3Step24.M'.d61 then d75 else Chain3Step24.M'.d73 else if d78 then false else Chain3Step24.M'.d79
        d90 : if false then if false then Bool else Bool else if false then Bool else Bool
        d90 = if if d81 then d30 else Chain3Step24.M'.d73 then if Chain3Step24.M'.d90 then true else false else if Chain3Step24.M'.d71 then Chain3Step24.M'.d99 else p3
        d91 : if true then if true then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if Chain3Step24.M'.d68 then false else p3 ) ) ) $ ( if Chain3Step24.M'.d24 then Chain3Step24.M'.d118 else Chain3Step24.M'.d78 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = if if true then p3 else Chain3Step24.M'.d88 then if d25 then Chain3Step24.M'.d33 else p3 else if Chain3Step24.M'.d114 then d31 else Chain3Step24.M'.d107
        d95 : if true then if false then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> d61 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p3 else d90 )
        d98 : if true then if true then Bool else Bool else if false then Bool else Bool
        d98 = if if d50 then true else false then if Chain3Step24.M'.d47 then true else false else if false then Chain3Step24.M'.d95 else d15
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then Bool else x102 ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( d31 ) ) ) ) $ ( if d31 then d14 else Chain3Step24.M'.d96 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( x104 ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if Chain3Step24.M'.d97 then Chain3Step24.M'.d118 else Chain3Step24.M'.d59 then if Chain3Step24.M'.d15 then Chain3Step24.M'.d101 else p1 else if false then Chain3Step24.M'.d26 else false
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
        d106 = if if Chain3Step24.M'.d73 then p1 else true then if d25 then p3 else Chain3Step24.M'.d117 else if Chain3Step24.M'.d93 then Chain3Step24.M'.d68 else Chain3Step24.M'.d114
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> false ) ) ) $ ( true ) ) ) ) $ ( if d8 then Chain3Step24.M'.d47 else Chain3Step24.M'.d65 )
        d113 : if true then if false then Bool else Bool else if true then Bool else Bool
        d113 = if if Chain3Step24.M'.d86 then d8 else d95 then if Chain3Step24.M'.d99 then Chain3Step24.M'.d33 else p1 else if Chain3Step24.M'.d78 then Chain3Step24.M'.d54 else true
        d114 : if false then if false then Bool else Bool else if false then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if Chain3Step24.M'.d30 then Chain3Step24.M'.d7 else true ) ) ) $ ( if Chain3Step24.M'.d54 then Chain3Step24.M'.d90 else d32 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else Bool ) ) ) $ ( if true then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( Chain3Step24.M'.d51 ) ) ) ) $ ( if Chain3Step24.M'.d64 then Chain3Step24.M'.d26 else d56 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if true then x121 else Bool ) ) ) $ ( if false then Bool else Bool )
        d120 = if if true then Chain3Step24.M'.d74 else d28 then if Chain3Step24.M'.d59 then p3 else d63 else if true then d32 else p3
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then x124 else x124 ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if d46 then Chain3Step24.M'.d111 else d76 ) ) ) $ ( if Chain3Step24.M'.d59 then d93 else d106 )
        d125 : if false then if true then Bool else Bool else if true then Bool else Bool
        d125 = if if p1 then Chain3Step24.M'.d105 else Chain3Step24.M'.d45 then if Chain3Step24.M'.d95 then true else Chain3Step24.M'.d90 else if p1 then p3 else d8