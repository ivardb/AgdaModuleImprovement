module Chain1Test9  where
    import Chain1Base9
    open import Chain1Base9 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool )
        d3 = ( Chain1Base9.M.d24 ) $ ( if if false then p1 else Chain1Base9.M'.d127 then if p2 then Chain1Base9.M'.d30 else Chain1Base9.M'.d8 else if Chain1Base9.M'.d84 then p2 else p1 )
        d6 : if true then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( Chain1Base9.M.d57 ) $ ( if if p1 then Chain1Base9.M'.d80 else Chain1Base9.M'.d62 then if d3 then Chain1Base9.M'.d78 else false else if p2 then Chain1Base9.M'.d80 else Chain1Base9.M'.d119 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then Bool else x8 ) ) ) $ ( if true then Bool else Bool )
        d7 = if if Chain1Base9.M'.d47 then Chain1Base9.M'.d51 else d6 then if Chain1Base9.M'.d127 then Chain1Base9.M'.d30 else Chain1Base9.M'.d47 else if d3 then Chain1Base9.M'.d35 else p2
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( Chain1Base9.M.d10 ) $ ( ( Chain1Base9.M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> p2 ) ) ) $ ( Chain1Base9.M'.d97 ) ) ) ) $ ( if d6 then false else Chain1Base9.M'.d51 ) ) )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else x14 ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( Chain1Base9.M.d8 ) $ ( ( Chain1Base9.M.d42 ) $ ( if Chain1Base9.M'.d127 then Chain1Base9.M'.d73 else Chain1Base9.M'.d59 ) ) ) ) ) $ ( if true then false else Chain1Base9.M'.d76 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( Chain1Base9.M.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x17 -> Chain1Base9.M'.d68 ) ) ) $ ( p1 ) ) ) ) ) $ ( if Chain1Base9.M'.d89 then Chain1Base9.M'.d10 else Chain1Base9.M'.d57 )
        d19 : if false then if false then Bool else Bool else if false then Bool else Bool
        d19 = if if Chain1Base9.M'.d116 then p2 else Chain1Base9.M'.d65 then if p1 then Chain1Base9.M'.d6 else d12 else if d9 then Chain1Base9.M'.d38 else d6
        d20 : if true then if false then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( Chain1Base9.M.d112 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x22 -> Chain1Base9.M'.d93 ) ) ) $ ( false ) ) ) ) ) $ ( if Chain1Base9.M'.d89 then Chain1Base9.M'.d63 else Chain1Base9.M'.d127 )
        d23 : if false then if false then Bool else Bool else if false then Bool else Bool
        d23 = ( Chain1Base9.M.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( Chain1Base9.M.d70 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d6 ) ) ) $ ( false ) ) ) ) ) $ ( if p2 then Chain1Base9.M'.d93 else Chain1Base9.M'.d51 ) )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d26 = if if Chain1Base9.M'.d56 then Chain1Base9.M'.d35 else Chain1Base9.M'.d125 then if p1 then p2 else Chain1Base9.M'.d97 else if d6 then Chain1Base9.M'.d38 else p1
        d28 : if true then if false then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> ( Chain1Base9.M.d116 ) $ ( if Chain1Base9.M'.d54 then p2 else d23 ) ) ) ) $ ( if true then Chain1Base9.M'.d6 else Chain1Base9.M'.d125 )
        d30 : if true then if true then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d3 then Chain1Base9.M'.d65 else true ) ) ) $ ( if Chain1Base9.M'.d30 then d9 else Chain1Base9.M'.d57 )
        d32 : if true then if false then Bool else Bool else if false then Bool else Bool
        d32 = if if false then d26 else d6 then if Chain1Base9.M'.d7 then d19 else true else if true then d12 else false
        d33 : if false then if true then Bool else Bool else if false then Bool else Bool
        d33 = ( Chain1Base9.M.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if Chain1Base9.M'.d95 then Chain1Base9.M'.d10 else false ) ) ) $ ( if Chain1Base9.M'.d95 then Chain1Base9.M'.d95 else d30 ) )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( x37 ) ) ) ) $ ( if false then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if Chain1Base9.M'.d34 then true else d3 ) ) ) $ ( if Chain1Base9.M'.d102 then d6 else d20 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if p1 then true else d33 then if Chain1Base9.M'.d129 then p1 else p1 else if Chain1Base9.M'.d73 then p2 else Chain1Base9.M'.d54
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x44 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( Chain1Base9.M.d125 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if Chain1Base9.M'.d122 then d23 else p2 ) ) ) $ ( if Chain1Base9.M'.d62 then true else Chain1Base9.M'.d35 ) )
        d46 : if true then if true then Bool else Bool else if true then Bool else Bool
        d46 = if if d15 then Chain1Base9.M'.d68 else Chain1Base9.M'.d6 then if d33 then Chain1Base9.M'.d10 else Chain1Base9.M'.d63 else if d26 then Chain1Base9.M'.d19 else Chain1Base9.M'.d99
        d47 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> d35 ) ) ) $ ( Chain1Base9.M'.d24 ) ) ) ) $ ( if p2 then true else true )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( x52 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if Chain1Base9.M'.d102 then p2 else d42 then if p2 then true else d30 else if Chain1Base9.M'.d8 then Chain1Base9.M'.d5 else false
        d54 : if true then if false then Bool else Bool else if false then Bool else Bool
        d54 = if if false then true else Chain1Base9.M'.d89 then if Chain1Base9.M'.d99 then d47 else p1 else if d51 then d35 else Chain1Base9.M'.d99
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( x57 ) ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if p2 then false else Chain1Base9.M'.d50 ) ) ) $ ( if d6 then p1 else Chain1Base9.M'.d47 )
        d59 : if true then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( Chain1Base9.M.d7 ) $ ( ( Chain1Base9.M.d99 ) $ ( ( Chain1Base9.M.d125 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if Chain1Base9.M'.d2 then Chain1Base9.M'.d70 else Chain1Base9.M'.d10 ) ) ) $ ( if p1 then Chain1Base9.M'.d2 else Chain1Base9.M'.d63 ) ) ) )
        d61 : if true then if true then Bool else Bool else if false then Bool else Bool
        d61 = if if Chain1Base9.M'.d10 then true else d59 then if p2 then Chain1Base9.M'.d47 else Chain1Base9.M'.d102 else if d55 then Chain1Base9.M'.d127 else Chain1Base9.M'.d85
        d62 : if false then if false then Bool else Bool else if false then Bool else Bool
        d62 = if if true then p2 else p1 then if Chain1Base9.M'.d67 then true else Chain1Base9.M'.d63 else if p2 then p2 else Chain1Base9.M'.d70
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then x65 else Bool ) ) ) $ ( if true then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( Chain1Base9.M.d57 ) $ ( if true then p1 else d28 ) ) ) ) $ ( if p2 then Chain1Base9.M'.d116 else d35 )
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( Chain1Base9.M.d47 ) $ ( ( Chain1Base9.M.d116 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then Chain1Base9.M'.d105 else d47 ) ) )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( Chain1Base9.M.d67 ) $ ( ( Chain1Base9.M.d6 ) $ ( ( Chain1Base9.M.d93 ) $ ( ( Chain1Base9.M.d2 ) $ ( ( Chain1Base9.M.d5 ) $ ( if false then p2 else Chain1Base9.M'.d7 ) ) ) ) ) ) ) ) $ ( if Chain1Base9.M'.d27 then d6 else true )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( Chain1Base9.M.d59 ) $ ( if d7 then d54 else d35 ) ) ) ) $ ( if d59 then true else true )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> x79 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d76 = ( Chain1Base9.M.d65 ) $ ( ( Chain1Base9.M.d116 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if false then Chain1Base9.M'.d59 else d19 ) ) ) $ ( if d62 then Chain1Base9.M'.d112 else Chain1Base9.M'.d8 ) ) )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then Bool else x81 ) ) ) $ ( if false then Bool else Bool )
        d80 = ( Chain1Base9.M.d70 ) $ ( ( Chain1Base9.M.d85 ) $ ( if if Chain1Base9.M'.d76 then false else Chain1Base9.M'.d5 then if p2 then false else true else if d55 then p1 else d42 ) )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x84 ) ) ) $ ( x84 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( Chain1Base9.M.d70 ) $ ( ( Chain1Base9.M.d8 ) $ ( ( Chain1Base9.M.d116 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( Chain1Base9.M.d5 ) $ ( if d66 then Chain1Base9.M'.d105 else x83 ) ) ) ) $ ( if Chain1Base9.M'.d42 then d55 else Chain1Base9.M'.d122 ) ) ) )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = if if Chain1Base9.M'.d112 then p2 else d12 then if Chain1Base9.M'.d65 then Chain1Base9.M'.d129 else Chain1Base9.M'.d47 else if Chain1Base9.M'.d35 then Chain1Base9.M'.d15 else p2
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( Chain1Base9.M.d85 ) $ ( ( Chain1Base9.M.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if d33 then true else Chain1Base9.M'.d10 ) ) )
        d91 : if false then if false then Bool else Bool else if true then Bool else Bool
        d91 = ( Chain1Base9.M.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if Chain1Base9.M'.d109 then Chain1Base9.M'.d119 else d55 ) ) ) $ ( if Chain1Base9.M'.d38 then true else Chain1Base9.M'.d89 ) )
        d93 : if true then if false then Bool else Bool else if false then Bool else Bool
        d93 = ( Chain1Base9.M.d84 ) $ ( if if Chain1Base9.M'.d38 then true else false then if true then false else p2 else if d20 then p1 else p1 )
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if Chain1Base9.M'.d57 then true else d39 then if d82 then p1 else Chain1Base9.M'.d116 else if Chain1Base9.M'.d102 then d33 else p2
        d95 : if true then if false then Bool else Bool else if true then Bool else Bool
        d95 = if if false then d51 else Chain1Base9.M'.d57 then if Chain1Base9.M'.d125 then Chain1Base9.M'.d105 else true else if p1 then true else Chain1Base9.M'.d65
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( x99 ) ) ) ) $ ( if false then Bool else Bool )
        d96 = ( Chain1Base9.M.d30 ) $ ( ( Chain1Base9.M.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> Chain1Base9.M'.d38 ) ) ) $ ( Chain1Base9.M'.d105 ) ) ) ) $ ( if p2 then true else Chain1Base9.M'.d116 ) ) )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d101 = if if p2 then d35 else d62 then if d9 then Chain1Base9.M'.d97 else p1 else if Chain1Base9.M'.d95 then d23 else false
        d103 : if true then if true then Bool else Bool else if false then Bool else Bool
        d103 = ( Chain1Base9.M.d129 ) $ ( ( Chain1Base9.M.d8 ) $ ( if if false then Chain1Base9.M'.d78 else d62 then if p1 then d69 else false else if d93 then p1 else true ) )
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = if if p1 then d82 else p1 then if false then Chain1Base9.M'.d5 else p1 else if Chain1Base9.M'.d24 then p1 else true
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d105 = if if d54 then false else true then if Chain1Base9.M'.d50 then Chain1Base9.M'.d127 else d30 else if Chain1Base9.M'.d65 then Chain1Base9.M'.d112 else p2
        d108 : if true then if false then Bool else Bool else if true then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if d59 then true else d91 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if Chain1Base9.M'.d84 then Chain1Base9.M'.d42 else true )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( x117 ) ) ) ) $ ( if true then Bool else Bool )
        d116 = ( Chain1Base9.M.d97 ) $ ( if if false then Chain1Base9.M'.d10 else false then if d55 then p2 else Chain1Base9.M'.d30 else if Chain1Base9.M'.d42 then Chain1Base9.M'.d93 else Chain1Base9.M'.d15 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( x120 ) ) ) ) $ ( if false then Bool else Bool )
        d119 = if if false then p2 else true then if d12 then p2 else d116 else if d91 then true else d35
        d122 : if true then if true then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if true then true else p2 ) ) ) $ ( if d88 then Chain1Base9.M'.d6 else p2 )
        d124 : if false then if false then Bool else Bool else if false then Bool else Bool
        d124 = ( Chain1Base9.M.d76 ) $ ( ( Chain1Base9.M.d119 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x125 -> ( Chain1Base9.M.d65 ) $ ( if p2 then d95 else d108 ) ) ) ) $ ( if d72 then Chain1Base9.M'.d56 else Chain1Base9.M'.d80 ) ) )
        d126 : if false then if false then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( Chain1Base9.M.d122 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x128 -> Chain1Base9.M'.d105 ) ) ) $ ( p2 ) ) ) ) ) $ ( if false then false else Chain1Base9.M'.d122 )