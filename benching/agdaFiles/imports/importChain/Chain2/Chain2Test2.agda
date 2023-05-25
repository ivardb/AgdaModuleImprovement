module Chain2Test2  where
    import Chain2Step12
    open import Chain2Step12 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if p1 then true else false ) ) ) $ ( if true then Chain2Step12.M'.d103 else p2 )
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if Chain2Step12.M'.d126 then Chain2Step12.M'.d4 else Chain2Step12.M'.d52 ) ) ) $ ( if true then d4 else p2 )
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if Chain2Step12.M'.d114 then Chain2Step12.M'.d100 else Chain2Step12.M'.d55 ) ) ) $ ( if p1 then false else d7 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> x15 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> Chain2Step12.M'.d31 ) ) ) $ ( Chain2Step12.M'.d74 ) ) ) ) $ ( if d9 then Chain2Step12.M'.d124 else p1 )
        d16 : if false then if false then Bool else Bool else if false then Bool else Bool
        d16 = if if Chain2Step12.M'.d79 then Chain2Step12.M'.d28 else d9 then if false then Chain2Step12.M'.d60 else Chain2Step12.M'.d124 else if p1 then d11 else d7
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( x18 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = if if false then Chain2Step12.M'.d41 else Chain2Step12.M'.d71 then if p1 then Chain2Step12.M'.d57 else d4 else if false then d7 else Chain2Step12.M'.d126
        d20 : if false then if true then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> Chain2Step12.M'.d106 ) ) ) $ ( d17 ) ) ) ) $ ( if false then d17 else Chain2Step12.M'.d100 )
        d23 : if false then if false then Bool else Bool else if true then Bool else Bool
        d23 = if if Chain2Step12.M'.d126 then Chain2Step12.M'.d103 else Chain2Step12.M'.d57 then if Chain2Step12.M'.d41 then false else p2 else if d4 then Chain2Step12.M'.d31 else Chain2Step12.M'.d126
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if p2 then Chain2Step12.M'.d59 else Chain2Step12.M'.d31 ) ) ) $ ( if false then d4 else p1 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if Chain2Step12.M'.d125 then Chain2Step12.M'.d74 else Chain2Step12.M'.d95 then if true then Chain2Step12.M'.d34 else Chain2Step12.M'.d23 else if Chain2Step12.M'.d57 then Chain2Step12.M'.d23 else p1
        d29 : if true then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if d11 then p1 else true then if Chain2Step12.M'.d97 then d11 else false else if Chain2Step12.M'.d34 then Chain2Step12.M'.d13 else Chain2Step12.M'.d68
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then x33 else x33 ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> Chain2Step12.M'.d22 ) ) ) $ ( Chain2Step12.M'.d127 ) ) ) ) $ ( if d7 then true else Chain2Step12.M'.d41 )
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if Chain2Step12.M'.d68 then x35 else true ) ) ) $ ( if Chain2Step12.M'.d23 then Chain2Step12.M'.d28 else Chain2Step12.M'.d131 )
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = if if Chain2Step12.M'.d22 then d7 else true then if d7 then p2 else p1 else if Chain2Step12.M'.d65 then Chain2Step12.M'.d97 else d23
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if true then x38 else x38 ) ) ) $ ( if false then Bool else Bool )
        d37 = if if true then false else Chain2Step12.M'.d59 then if Chain2Step12.M'.d126 then false else d24 else if Chain2Step12.M'.d4 then Chain2Step12.M'.d23 else Chain2Step12.M'.d65
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( if true then Bool else Bool )
        d39 = if if p2 then true else Chain2Step12.M'.d53 then if Chain2Step12.M'.d34 then d17 else p2 else if p2 then p1 else p2
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x42 ) ) ) $ ( x42 ) ) ) ) $ ( if true then Bool else Bool )
        d41 = if if true then true else d39 then if Chain2Step12.M'.d22 then true else Chain2Step12.M'.d74 else if false then Chain2Step12.M'.d88 else Chain2Step12.M'.d57
        d44 : if true then if true then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if Chain2Step12.M'.d26 then d24 else Chain2Step12.M'.d4 ) ) ) $ ( if d34 then d20 else false )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then Bool else x49 ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> Chain2Step12.M'.d125 ) ) ) $ ( true ) ) ) ) $ ( if Chain2Step12.M'.d19 then p2 else p1 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then x51 else Bool ) ) ) $ ( if true then Bool else Bool )
        d50 = if if d36 then Chain2Step12.M'.d31 else false then if d30 then p2 else Chain2Step12.M'.d31 else if d11 then Chain2Step12.M'.d88 else Chain2Step12.M'.d74
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = if if Chain2Step12.M'.d103 then true else d30 then if d46 then Chain2Step12.M'.d22 else Chain2Step12.M'.d7 else if Chain2Step12.M'.d70 then true else p2
        d54 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( Chain2Step12.M'.d19 ) ) ) ) $ ( if Chain2Step12.M'.d57 then p2 else true )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then x60 else Bool ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if x59 then Chain2Step12.M'.d52 else Chain2Step12.M'.d97 ) ) ) $ ( if Chain2Step12.M'.d43 then Chain2Step12.M'.d43 else Chain2Step12.M'.d60 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then Bool else x62 ) ) ) $ ( if false then Bool else Bool )
        d61 = if if Chain2Step12.M'.d131 then d29 else Chain2Step12.M'.d34 then if Chain2Step12.M'.d60 then d44 else p1 else if false then d7 else d46
        d63 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> Bool ) ) ) $ ( x66 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( true ) ) ) ) $ ( if d9 then Chain2Step12.M'.d41 else Chain2Step12.M'.d51 )
        d68 : if false then if true then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( Chain2Step12.M'.d114 ) ) ) ) $ ( if d46 then p2 else d46 )
        d71 : if false then if false then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( false ) ) ) ) $ ( if Chain2Step12.M'.d57 then d68 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then Bool else x76 ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if Chain2Step12.M'.d37 then Chain2Step12.M'.d16 else Chain2Step12.M'.d11 ) ) ) $ ( if Chain2Step12.M'.d70 then true else Chain2Step12.M'.d60 )
        d77 : if true then if false then Bool else Bool else if true then Bool else Bool
        d77 = if if d11 then false else false then if p2 then Chain2Step12.M'.d23 else false else if Chain2Step12.M'.d124 then Chain2Step12.M'.d65 else true
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if true then Chain2Step12.M'.d74 else true ) ) ) $ ( if d58 then d52 else Chain2Step12.M'.d103 )
        d82 : if false then if false then Bool else Bool else if true then Bool else Bool
        d82 = if if true then p1 else d61 then if Chain2Step12.M'.d44 then p2 else false else if Chain2Step12.M'.d37 then d63 else Chain2Step12.M'.d22
        d83 : if true then if true then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then p2 else Chain2Step12.M'.d53 )
        d86 : if false then if true then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> Chain2Step12.M'.d55 ) ) ) $ ( d50 ) ) ) ) $ ( if false then d44 else d16 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d89 = if if p2 then Chain2Step12.M'.d74 else p2 then if false then false else p1 else if false then Chain2Step12.M'.d22 else Chain2Step12.M'.d60
        d91 : if false then if true then Bool else Bool else if true then Bool else Bool
        d91 = if if Chain2Step12.M'.d120 then Chain2Step12.M'.d23 else true then if false then Chain2Step12.M'.d13 else p2 else if Chain2Step12.M'.d88 then d23 else p1
        d92 : if true then if false then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> Chain2Step12.M'.d43 ) ) ) $ ( p1 ) ) ) ) $ ( if Chain2Step12.M'.d34 then Chain2Step12.M'.d126 else false )
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = if if d61 then p1 else true then if Chain2Step12.M'.d129 then true else true else if p2 then Chain2Step12.M'.d94 else true
        d96 : if false then if true then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> false ) ) ) $ ( false ) ) ) ) $ ( if p2 then true else Chain2Step12.M'.d37 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d99 = if if d82 then Chain2Step12.M'.d111 else Chain2Step12.M'.d43 then if p2 then Chain2Step12.M'.d13 else Chain2Step12.M'.d26 else if false then true else Chain2Step12.M'.d92
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( x104 ) ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if Chain2Step12.M'.d94 then Chain2Step12.M'.d8 else Chain2Step12.M'.d55 ) ) ) $ ( if Chain2Step12.M'.d8 then false else true )
        d106 : if false then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if Chain2Step12.M'.d119 then Chain2Step12.M'.d129 else Chain2Step12.M'.d131 then if p1 then Chain2Step12.M'.d124 else Chain2Step12.M'.d106 else if Chain2Step12.M'.d44 then d82 else Chain2Step12.M'.d103
        d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if Chain2Step12.M'.d124 then Chain2Step12.M'.d95 else p2 ) ) ) $ ( if Chain2Step12.M'.d51 then p1 else true )
        d110 : if false then if false then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> p2 ) ) ) $ ( Chain2Step12.M'.d97 ) ) ) ) $ ( if p2 then Chain2Step12.M'.d46 else true )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then x116 else x116 ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d44 ) ) ) $ ( false ) ) ) ) $ ( if Chain2Step12.M'.d57 then d107 else Chain2Step12.M'.d52 )
        d117 : if false then if false then Bool else Bool else if true then Bool else Bool
        d117 = if if Chain2Step12.M'.d100 then d95 else Chain2Step12.M'.d74 then if p2 then Chain2Step12.M'.d4 else true else if d82 then p1 else Chain2Step12.M'.d97
        d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> true ) ) ) $ ( x119 ) ) ) ) $ ( if p2 then Chain2Step12.M'.d51 else true )
        d122 : if true then if false then Bool else Bool else if false then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> Chain2Step12.M'.d59 ) ) ) $ ( Chain2Step12.M'.d79 ) ) ) ) $ ( if d58 then false else p2 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( x127 ) ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if d20 then p2 else Chain2Step12.M'.d106 ) ) ) $ ( if Chain2Step12.M'.d119 then true else Chain2Step12.M'.d44 )
        d129 : if true then if true then Bool else Bool else if false then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d17 ) ) ) $ ( Chain2Step12.M'.d103 ) ) ) ) $ ( if d46 then false else false )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> Bool ) ) ) $ ( x134 ) ) ) ) $ ( if true then Bool else Bool )
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> if false then true else Chain2Step12.M'.d8 ) ) ) $ ( if p1 then d106 else Chain2Step12.M'.d126 )