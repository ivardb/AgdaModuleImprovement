module Chain2Test12  where
    import Chain2Step112
    open import Chain2Step112 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else x2 ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then x4 else Bool ) ) ) $ ( Bool ) )  where
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = if if Chain2Step112.M'.d8 then Chain2Step112.M'.d24 else false then if Chain2Step112.M'.d24 then Chain2Step112.M'.d100 else p3 else if p3 then Chain2Step112.M'.d31 else Chain2Step112.M'.d62
        d6 : if false then if false then Bool else Bool else if true then Bool else Bool
        d6 = if if Chain2Step112.M'.d47 then p1 else p1 then if d5 then false else p3 else if p1 then p3 else Chain2Step112.M'.d12
        d7 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> d6 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then false else d6 )
        d12 : if true then if true then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d5 ) ) ) $ ( Chain2Step112.M'.d17 ) ) ) ) $ ( if d6 then p3 else d6 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if d5 then d5 else d6 then if false then d6 else d7 else if d7 then false else p1
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = if if Chain2Step112.M'.d98 then Chain2Step112.M'.d84 else d6 then if false then true else d12 else if p3 then Chain2Step112.M'.d8 else false
        d19 : if false then if false then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if Chain2Step112.M'.d17 then d7 else x20 ) ) ) $ ( if Chain2Step112.M'.d45 then Chain2Step112.M'.d81 else false )
        d21 : if true then if true then Bool else Bool else if true then Bool else Bool
        d21 = if if Chain2Step112.M'.d107 then p3 else d5 then if Chain2Step112.M'.d55 then d18 else Chain2Step112.M'.d52 else if p1 then false else d12
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( Chain2Step112.M'.d44 ) ) ) ) $ ( if d18 then Chain2Step112.M'.d113 else Chain2Step112.M'.d10 )
        d26 : if true then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> p1 ) ) ) $ ( Chain2Step112.M'.d67 ) ) ) ) $ ( if p1 then p1 else d21 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> d15 ) ) ) $ ( d15 ) ) ) ) $ ( if d6 then Chain2Step112.M'.d41 else false )
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if Chain2Step112.M'.d8 then p1 else Chain2Step112.M'.d100 then if Chain2Step112.M'.d113 then false else Chain2Step112.M'.d21 else if Chain2Step112.M'.d82 then Chain2Step112.M'.d65 else Chain2Step112.M'.d20
        d35 : if true then if false then Bool else Bool else if false then Bool else Bool
        d35 = if if Chain2Step112.M'.d65 then d19 else d15 then if Chain2Step112.M'.d89 then Chain2Step112.M'.d70 else Chain2Step112.M'.d79 else if d34 then p3 else d29
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = if if p1 then p3 else true then if p1 then Chain2Step112.M'.d79 else p1 else if d15 then p1 else Chain2Step112.M'.d10
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = if if p1 then Chain2Step112.M'.d88 else Chain2Step112.M'.d73 then if true then d15 else p1 else if Chain2Step112.M'.d94 then d12 else d5
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x42 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d41 = if if Chain2Step112.M'.d12 then Chain2Step112.M'.d60 else Chain2Step112.M'.d86 then if d5 then Chain2Step112.M'.d106 else true else if p3 then true else true
        d44 : if false then if true then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if Chain2Step112.M'.d68 then Chain2Step112.M'.d103 else true ) ) ) $ ( if true then p1 else Chain2Step112.M'.d41 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if Chain2Step112.M'.d37 then d18 else true ) ) ) $ ( if p3 then true else p3 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d49 = if if p1 then Chain2Step112.M'.d45 else Chain2Step112.M'.d47 then if p1 then Chain2Step112.M'.d57 else d38 else if Chain2Step112.M'.d73 then Chain2Step112.M'.d67 else true
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> Chain2Step112.M'.d98 ) ) ) $ ( x52 ) ) ) ) $ ( if Chain2Step112.M'.d20 then Chain2Step112.M'.d31 else Chain2Step112.M'.d31 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> Chain2Step112.M'.d91 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then d46 else d41 )
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if d36 then Chain2Step112.M'.d110 else true then if p3 then Chain2Step112.M'.d103 else Chain2Step112.M'.d98 else if Chain2Step112.M'.d89 then d34 else Chain2Step112.M'.d65
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> p3 ) ) ) $ ( p3 ) ) ) ) $ ( if true then d44 else true )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then x67 else Bool ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> Chain2Step112.M'.d60 ) ) ) $ ( Chain2Step112.M'.d10 ) ) ) ) $ ( if d51 then p3 else Chain2Step112.M'.d103 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> x69 ) ) ) $ ( x69 ) ) ) ) $ ( if Chain2Step112.M'.d106 then p1 else p3 )
        d73 : if false then if false then Bool else Bool else if true then Bool else Bool
        d73 = if if Chain2Step112.M'.d21 then p1 else Chain2Step112.M'.d52 then if Chain2Step112.M'.d62 then d41 else p1 else if Chain2Step112.M'.d10 then p1 else true
        d74 : if false then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if x75 then x75 else Chain2Step112.M'.d67 ) ) ) $ ( if p3 then false else p3 )
        d76 : if true then if true then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if x77 then Chain2Step112.M'.d65 else p1 ) ) ) $ ( if Chain2Step112.M'.d34 then d18 else Chain2Step112.M'.d89 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then x79 else Bool ) ) ) $ ( if false then Bool else Bool )
        d78 = if if p1 then d22 else Chain2Step112.M'.d21 then if Chain2Step112.M'.d98 then Chain2Step112.M'.d10 else Chain2Step112.M'.d52 else if Chain2Step112.M'.d25 then Chain2Step112.M'.d41 else Chain2Step112.M'.d34
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d80 = if if Chain2Step112.M'.d37 then Chain2Step112.M'.d44 else true then if Chain2Step112.M'.d81 then Chain2Step112.M'.d50 else Chain2Step112.M'.d25 else if true then Chain2Step112.M'.d62 else Chain2Step112.M'.d27
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( x83 ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if d73 then Chain2Step112.M'.d62 else p3 then if d51 then d5 else Chain2Step112.M'.d24 else if Chain2Step112.M'.d68 then Chain2Step112.M'.d10 else true
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if d12 then Chain2Step112.M'.d106 else true then if p1 then false else d74 else if true then Chain2Step112.M'.d100 else Chain2Step112.M'.d85
        d86 : if true then if true then Bool else Bool else if true then Bool else Bool
        d86 = if if false then Chain2Step112.M'.d73 else p1 then if Chain2Step112.M'.d58 then Chain2Step112.M'.d60 else p3 else if true then true else false
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> Chain2Step112.M'.d12 ) ) ) $ ( false ) ) ) ) $ ( if p3 then Chain2Step112.M'.d20 else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> x94 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> Chain2Step112.M'.d24 ) ) ) $ ( Chain2Step112.M'.d81 ) ) ) ) $ ( if p3 then Chain2Step112.M'.d85 else p1 )
        d95 : if true then if true then Bool else Bool else if true then Bool else Bool
        d95 = if if d80 then p1 else p1 then if false then d59 else false else if Chain2Step112.M'.d70 then Chain2Step112.M'.d20 else d44
        d96 : if true then if false then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> d68 ) ) ) $ ( d29 ) ) ) ) $ ( if false then false else Chain2Step112.M'.d70 )
        d99 : if true then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if false then d76 else p1 then if p1 then p1 else d64 else if Chain2Step112.M'.d84 then false else false
        d100 : if true then if false then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> d76 ) ) ) $ ( d15 ) ) ) ) $ ( if true then p3 else Chain2Step112.M'.d12 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d103 = if if d35 then Chain2Step112.M'.d73 else Chain2Step112.M'.d98 then if d18 then Chain2Step112.M'.d5 else d36 else if p1 then Chain2Step112.M'.d58 else d19
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d105 = if if false then Chain2Step112.M'.d12 else true then if Chain2Step112.M'.d17 then Chain2Step112.M'.d70 else p3 else if d78 then p3 else Chain2Step112.M'.d3
        d107 : if true then if false then Bool else Bool else if true then Bool else Bool
        d107 = if if d54 then p1 else false then if Chain2Step112.M'.d60 then p3 else d34 else if false then Chain2Step112.M'.d110 else p1
        d108 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if true then Bool else x111 ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( p3 ) ) ) ) $ ( if false then d80 else p1 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if false then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if true then x113 else true ) ) ) $ ( if Chain2Step112.M'.d68 then true else true )
        d116 : if true then if false then Bool else Bool else if false then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> true ) ) ) $ ( d112 ) ) ) ) $ ( if Chain2Step112.M'.d25 then p1 else p3 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then Bool else x120 ) ) ) $ ( if false then Bool else Bool )
        d119 = if if Chain2Step112.M'.d103 then false else Chain2Step112.M'.d3 then if Chain2Step112.M'.d17 then Chain2Step112.M'.d34 else false else if d90 then Chain2Step112.M'.d84 else Chain2Step112.M'.d81
        d121 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( x124 ) ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( ( Bool -> Bool ) ∋ ( ( λ x123 -> Chain2Step112.M'.d65 ) ) ) $ ( false ) ) ) ) $ ( if false then p3 else Chain2Step112.M'.d60 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> x129 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> Chain2Step112.M'.d82 ) ) ) $ ( d85 ) ) ) ) $ ( if false then Chain2Step112.M'.d55 else p3 )
        d131 : if true then if false then Bool else Bool else if true then Bool else Bool
        d131 = if if p1 then d76 else Chain2Step112.M'.d15 then if d100 then p1 else Chain2Step112.M'.d98 else if Chain2Step112.M'.d20 then Chain2Step112.M'.d12 else d35
        d132 : if true then if false then Bool else Bool else if false then Bool else Bool
        d132 = if if Chain2Step112.M'.d84 then Chain2Step112.M'.d86 else Chain2Step112.M'.d17 then if Chain2Step112.M'.d37 then p3 else Chain2Step112.M'.d82 else if Chain2Step112.M'.d94 then Chain2Step112.M'.d107 else p3