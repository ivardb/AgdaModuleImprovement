module Chain1Test3  where
    import Chain1Base3
    open import Chain1Base3 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then x3 else Bool ) ) ) $ ( Bool ) )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else x6 ) ) ) $ ( if false then Bool else Bool )
        d4 = ( Chain1Base3.M.d3 ) $ ( ( Chain1Base3.M.d108 ) $ ( ( Chain1Base3.M.d19 ) $ ( ( Chain1Base3.M.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( Chain1Base3.M.d108 ) $ ( if false then p1 else Chain1Base3.M'.d86 ) ) ) ) $ ( if false then Chain1Base3.M'.d43 else p2 ) ) ) ) )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then x9 else Bool ) ) ) $ ( if true then Bool else Bool )
        d7 = ( Chain1Base3.M.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( Chain1Base3.M.d82 ) $ ( ( Chain1Base3.M.d17 ) $ ( if false then d4 else d4 ) ) ) ) ) $ ( if Chain1Base3.M'.d75 then d4 else d4 ) )
        d10 : if true then if false then Bool else Bool else if false then Bool else Bool
        d10 = if if d4 then d4 else d4 then if d4 then Chain1Base3.M'.d75 else d4 else if d7 then Chain1Base3.M'.d75 else Chain1Base3.M'.d66
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = ( Chain1Base3.M.d115 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> d7 ) ) ) $ ( true ) ) ) ) $ ( if Chain1Base3.M'.d71 then true else false ) )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x15 ) ) ) $ ( x15 ) ) ) ) $ ( if true then Bool else Bool )
        d14 = ( Chain1Base3.M.d28 ) $ ( ( Chain1Base3.M.d108 ) $ ( if if false then true else Chain1Base3.M'.d111 then if true then d7 else true else if true then Chain1Base3.M'.d42 else Chain1Base3.M'.d103 ) )
        d17 : if false then if true then Bool else Bool else if true then Bool else Bool
        d17 = if if false then p1 else false then if Chain1Base3.M'.d68 then d10 else d4 else if Chain1Base3.M'.d115 then p1 else d4
        d18 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else x21 ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( Chain1Base3.M.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x20 -> Chain1Base3.M'.d46 ) ) ) $ ( Chain1Base3.M'.d32 ) ) ) ) ) $ ( if p1 then p1 else true )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = ( Chain1Base3.M.d108 ) $ ( if if d17 then p1 else true then if d18 then d10 else Chain1Base3.M'.d76 else if p2 then Chain1Base3.M'.d23 else true )
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if Chain1Base3.M'.d3 then d11 else Chain1Base3.M'.d89 then if Chain1Base3.M'.d86 then false else false else if d10 then true else p1
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if false then p2 else true then if Chain1Base3.M'.d108 then d10 else false else if Chain1Base3.M'.d23 then d10 else Chain1Base3.M'.d17
        d26 : if true then if true then Bool else Bool else if true then Bool else Bool
        d26 = if if Chain1Base3.M'.d41 then Chain1Base3.M'.d93 else p1 then if Chain1Base3.M'.d44 then p1 else Chain1Base3.M'.d76 else if Chain1Base3.M'.d118 then false else p2
        d27 : if true then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if Chain1Base3.M'.d80 then Chain1Base3.M'.d71 else p1 then if Chain1Base3.M'.d62 then Chain1Base3.M'.d10 else p2 else if false then d4 else Chain1Base3.M'.d50
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if true then Chain1Base3.M'.d19 else Chain1Base3.M'.d103 then if d11 then p1 else d11 else if p2 then p1 else Chain1Base3.M'.d44
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = if if Chain1Base3.M'.d112 then true else true then if true then d7 else Chain1Base3.M'.d105 else if Chain1Base3.M'.d23 then p1 else p1
        d30 : if true then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( Chain1Base3.M.d71 ) $ ( if if d17 then p1 else Chain1Base3.M'.d72 then if d10 then p2 else Chain1Base3.M'.d80 else if p1 then d10 else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if false then x34 else x34 ) ) ) $ ( if true then Bool else Bool )
        d31 = ( Chain1Base3.M.d86 ) $ ( ( Chain1Base3.M.d31 ) $ ( ( Chain1Base3.M.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> Chain1Base3.M'.d89 ) ) ) $ ( d27 ) ) ) ) $ ( if p2 then p2 else Chain1Base3.M'.d105 ) ) ) )
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( Chain1Base3.M.d111 ) $ ( ( Chain1Base3.M.d43 ) $ ( if d27 then Chain1Base3.M'.d23 else Chain1Base3.M'.d22 ) ) ) ) ) $ ( if p2 then Chain1Base3.M'.d22 else Chain1Base3.M'.d82 )
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( Chain1Base3.M.d118 ) $ ( if p2 then p1 else false ) ) ) ) $ ( if Chain1Base3.M'.d23 then Chain1Base3.M'.d42 else p1 )
        d39 : if true then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if Chain1Base3.M'.d118 then p2 else p1 ) ) ) $ ( if Chain1Base3.M'.d80 then Chain1Base3.M'.d108 else p2 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( Chain1Base3.M.d111 ) $ ( ( Chain1Base3.M.d3 ) $ ( ( Chain1Base3.M.d69 ) $ ( ( Chain1Base3.M.d80 ) $ ( ( Chain1Base3.M.d75 ) $ ( ( Chain1Base3.M.d49 ) $ ( ( Chain1Base3.M.d82 ) $ ( ( Chain1Base3.M.d80 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( Chain1Base3.M'.d68 ) ) ) ) ) ) ) ) ) ) ) ) $ ( if d28 then Chain1Base3.M'.d44 else false )
        d46 : if true then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( Chain1Base3.M.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if true then Chain1Base3.M'.d32 else Chain1Base3.M'.d81 ) ) ) $ ( if Chain1Base3.M'.d65 then Chain1Base3.M'.d59 else Chain1Base3.M'.d112 ) )
        d48 : if false then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( Chain1Base3.M.d34 ) $ ( if if Chain1Base3.M'.d41 then d10 else p1 then if p2 then p2 else Chain1Base3.M'.d56 else if true then Chain1Base3.M'.d118 else Chain1Base3.M'.d14 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d49 = ( Chain1Base3.M.d98 ) $ ( ( Chain1Base3.M.d34 ) $ ( ( Chain1Base3.M.d71 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( Chain1Base3.M.d5 ) $ ( ( Chain1Base3.M.d86 ) $ ( ( Chain1Base3.M.d19 ) $ ( ( Chain1Base3.M.d28 ) $ ( if false then p2 else p1 ) ) ) ) ) ) ) $ ( if p2 then p1 else Chain1Base3.M'.d53 ) ) ) )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else x53 ) ) ) $ ( if true then Bool else Bool )
        d52 = if if Chain1Base3.M'.d22 then Chain1Base3.M'.d35 else Chain1Base3.M'.d31 then if true then true else p1 else if p2 then d17 else Chain1Base3.M'.d65
        d54 : if false then if true then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> false ) ) ) $ ( d27 ) ) ) ) $ ( if Chain1Base3.M'.d118 then Chain1Base3.M'.d75 else d4 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d57 = if if d52 then d30 else p2 then if Chain1Base3.M'.d76 then false else Chain1Base3.M'.d20 else if Chain1Base3.M'.d65 then Chain1Base3.M'.d38 else d11
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then x62 else Bool ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if true then p2 else Chain1Base3.M'.d60 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if Chain1Base3.M'.d111 then d4 else x64 ) ) ) $ ( if p1 then d28 else Chain1Base3.M'.d42 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else x67 ) ) ) $ ( if false then Bool else Bool )
        d66 = ( Chain1Base3.M.d68 ) $ ( if if Chain1Base3.M'.d72 then Chain1Base3.M'.d43 else Chain1Base3.M'.d62 then if true then Chain1Base3.M'.d71 else Chain1Base3.M'.d115 else if Chain1Base3.M'.d89 then Chain1Base3.M'.d82 else Chain1Base3.M'.d19 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if if d39 then p1 else true then if Chain1Base3.M'.d66 then Chain1Base3.M'.d14 else Chain1Base3.M'.d66 else if true then true else p2
        d71 : if false then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( Chain1Base3.M.d66 ) $ ( ( Chain1Base3.M.d19 ) $ ( ( Chain1Base3.M.d50 ) $ ( if if p1 then Chain1Base3.M'.d49 else Chain1Base3.M'.d86 then if d17 then Chain1Base3.M'.d93 else Chain1Base3.M'.d19 else if Chain1Base3.M'.d72 then Chain1Base3.M'.d20 else Chain1Base3.M'.d42 ) ) )
        d72 : if true then if true then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if d39 then x73 else p2 ) ) ) $ ( if p1 then Chain1Base3.M'.d20 else p2 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then x75 else Bool ) ) ) $ ( if true then Bool else Bool )
        d74 = ( Chain1Base3.M.d62 ) $ ( if if Chain1Base3.M'.d66 then d68 else Chain1Base3.M'.d89 then if true then d63 else true else if Chain1Base3.M'.d22 then p2 else Chain1Base3.M'.d59 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( Chain1Base3.M.d92 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x78 -> p2 ) ) ) $ ( x77 ) ) ) ) ) $ ( if Chain1Base3.M'.d22 then d18 else Chain1Base3.M'.d14 )
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( Chain1Base3.M.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x82 -> false ) ) ) $ ( x81 ) ) ) ) ) $ ( if Chain1Base3.M'.d82 then true else Chain1Base3.M'.d92 )
        d83 : if false then if true then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if p2 then Chain1Base3.M'.d32 else Chain1Base3.M'.d82 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d86 = if if d57 then false else p2 then if Chain1Base3.M'.d23 then d57 else p2 else if p1 then Chain1Base3.M'.d68 else true
        d88 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then x91 else Bool ) ) ) $ ( if true then Bool else Bool )
        d88 = ( Chain1Base3.M.d98 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( Chain1Base3.M.d35 ) $ ( ( Chain1Base3.M.d35 ) $ ( ( Chain1Base3.M.d89 ) $ ( ( Chain1Base3.M.d108 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x90 -> Chain1Base3.M'.d80 ) ) ) $ ( false ) ) ) ) ) ) ) ) $ ( if Chain1Base3.M'.d22 then p1 else d54 ) )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x96 ) ) ) $ ( x95 ) ) ) ) $ ( if false then Bool else Bool )
        d92 = ( Chain1Base3.M.d43 ) $ ( ( Chain1Base3.M.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( Chain1Base3.M.d65 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x94 -> d52 ) ) ) $ ( true ) ) ) ) ) $ ( if false then true else Chain1Base3.M'.d14 ) ) )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d97 = if if p2 then Chain1Base3.M'.d38 else true then if d86 then p1 else Chain1Base3.M'.d50 else if Chain1Base3.M'.d3 then d63 else p2
        d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( x101 ) ) ) ) $ ( if false then Bool else Bool )
        d99 = ( Chain1Base3.M.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( Chain1Base3.M.d82 ) $ ( ( Chain1Base3.M.d81 ) $ ( if Chain1Base3.M'.d75 then true else Chain1Base3.M'.d71 ) ) ) ) ) $ ( if d63 then Chain1Base3.M'.d89 else Chain1Base3.M'.d108 ) )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( x104 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = ( Chain1Base3.M.d111 ) $ ( ( Chain1Base3.M.d80 ) $ ( ( Chain1Base3.M.d20 ) $ ( ( Chain1Base3.M.d103 ) $ ( ( Chain1Base3.M.d32 ) $ ( ( Chain1Base3.M.d38 ) $ ( if if false then Chain1Base3.M'.d31 else Chain1Base3.M'.d111 then if true then p2 else false else if d68 then d25 else p2 ) ) ) ) ) )
        d106 : if true then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if Chain1Base3.M'.d22 then Chain1Base3.M'.d82 else false then if true then true else Chain1Base3.M'.d81 else if Chain1Base3.M'.d5 then Chain1Base3.M'.d111 else Chain1Base3.M'.d44
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if if false then false else Chain1Base3.M'.d42 then if Chain1Base3.M'.d53 then true else Chain1Base3.M'.d75 else if d41 then d66 else true
        d110 : if true then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( Chain1Base3.M.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( Chain1Base3.M.d34 ) $ ( ( Chain1Base3.M.d86 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> false ) ) ) $ ( d72 ) ) ) ) ) ) $ ( if Chain1Base3.M'.d60 then Chain1Base3.M'.d82 else d80 ) )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if true then Chain1Base3.M'.d81 else d10 ) ) ) $ ( if p1 then true else true )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then Bool else x120 ) ) ) $ ( if true then Bool else Bool )
        d117 = ( Chain1Base3.M.d59 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( Chain1Base3.M.d17 ) $ ( ( Chain1Base3.M.d46 ) $ ( ( Chain1Base3.M.d19 ) $ ( ( Chain1Base3.M.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> Chain1Base3.M'.d71 ) ) ) $ ( p1 ) ) ) ) ) ) ) ) $ ( if false then p1 else false ) )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( Chain1Base3.M.d112 ) $ ( ( Chain1Base3.M.d60 ) $ ( ( Chain1Base3.M.d105 ) $ ( if Chain1Base3.M'.d49 then false else p2 ) ) ) ) ) ) $ ( if d83 then p1 else Chain1Base3.M'.d23 )
        d124 : if false then if false then Bool else Bool else if false then Bool else Bool
        d124 = ( Chain1Base3.M.d81 ) $ ( if if p2 then Chain1Base3.M'.d3 else p2 then if d14 then Chain1Base3.M'.d41 else d29 else if true then Chain1Base3.M'.d31 else d7 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d125 = ( Chain1Base3.M.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( Chain1Base3.M.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x127 -> true ) ) ) $ ( d49 ) ) ) ) ) $ ( if d66 then Chain1Base3.M'.d41 else Chain1Base3.M'.d53 ) )