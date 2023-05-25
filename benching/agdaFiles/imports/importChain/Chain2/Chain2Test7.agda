module Chain2Test7  where
    import Chain2Step17
    open import Chain2Step17 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else x4 ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then x7 else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if p3 then true else p1 ) ) ) $ ( if Chain2Step17.M'.d85 then Chain2Step17.M'.d94 else Chain2Step17.M'.d65 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if Chain2Step17.M'.d6 then false else false then if Chain2Step17.M'.d84 then p1 else Chain2Step17.M'.d5 else if d5 then false else Chain2Step17.M'.d5
        d11 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if true then x13 else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if p1 then p3 else Chain2Step17.M'.d35 ) ) ) $ ( if d5 then Chain2Step17.M'.d3 else p1 )
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if true then p1 else true then if true then Chain2Step17.M'.d116 else d5 else if p1 then true else p3
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if d5 then p1 else Chain2Step17.M'.d55 then if false then false else Chain2Step17.M'.d93 else if p3 then p1 else false
        d18 : if true then if true then Bool else Bool else if false then Bool else Bool
        d18 = if if Chain2Step17.M'.d5 then true else p1 then if Chain2Step17.M'.d24 then Chain2Step17.M'.d44 else Chain2Step17.M'.d86 else if Chain2Step17.M'.d9 then d14 else p1
        d19 : if true then if false then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if d11 then false else p1 ) ) ) $ ( if false then false else true )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then x23 else x23 ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if x22 then Chain2Step17.M'.d64 else false ) ) ) $ ( if false then d18 else Chain2Step17.M'.d29 )
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if d15 then false else Chain2Step17.M'.d34 then if Chain2Step17.M'.d70 then Chain2Step17.M'.d55 else d14 else if d19 then Chain2Step17.M'.d85 else Chain2Step17.M'.d83
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> Chain2Step17.M'.d86 ) ) ) $ ( Chain2Step17.M'.d94 ) ) ) ) $ ( if d24 then d8 else d5 )
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if Chain2Step17.M'.d65 then false else Chain2Step17.M'.d76 ) ) ) $ ( if Chain2Step17.M'.d74 then Chain2Step17.M'.d10 else Chain2Step17.M'.d108 )
        d31 : if false then if true then Bool else Bool else if true then Bool else Bool
        d31 = if if p1 then d14 else d18 then if p3 then Chain2Step17.M'.d111 else d15 else if d18 then true else Chain2Step17.M'.d75
        d32 : if false then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if Chain2Step17.M'.d21 then x33 else Chain2Step17.M'.d38 ) ) ) $ ( if p3 then d25 else Chain2Step17.M'.d59 )
        d34 : if true then if false then Bool else Bool else if false then Bool else Bool
        d34 = if if false then Chain2Step17.M'.d51 else Chain2Step17.M'.d108 then if false then false else Chain2Step17.M'.d68 else if d31 then p1 else Chain2Step17.M'.d93
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x36 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if if p1 then true else Chain2Step17.M'.d9 then if Chain2Step17.M'.d86 then d31 else d8 else if true then Chain2Step17.M'.d79 else d32
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if false then Chain2Step17.M'.d3 else Chain2Step17.M'.d26 ) ) ) $ ( if Chain2Step17.M'.d64 then Chain2Step17.M'.d84 else d15 )
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if true then d31 else Chain2Step17.M'.d56 then if d18 then d14 else true else if d21 then p3 else Chain2Step17.M'.d74
        d43 : if true then if true then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if d32 then Chain2Step17.M'.d15 else true ) ) ) $ ( if Chain2Step17.M'.d100 then d5 else true )
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> Chain2Step17.M'.d48 ) ) ) $ ( false ) ) ) ) $ ( if p3 then true else true )
        d48 : if false then if true then Bool else Bool else if true then Bool else Bool
        d48 = if if Chain2Step17.M'.d15 then d5 else Chain2Step17.M'.d83 then if Chain2Step17.M'.d34 then false else Chain2Step17.M'.d84 else if Chain2Step17.M'.d5 then Chain2Step17.M'.d52 else Chain2Step17.M'.d65
        d49 : if true then if true then Bool else Bool else if true then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then Chain2Step17.M'.d12 else true ) ) ) $ ( if p3 then false else Chain2Step17.M'.d11 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x54 ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if Chain2Step17.M'.d98 then p3 else false ) ) ) $ ( if p3 then false else false )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d55 = if if false then Chain2Step17.M'.d98 else Chain2Step17.M'.d12 then if d15 then Chain2Step17.M'.d38 else p1 else if Chain2Step17.M'.d68 then false else false
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( x61 ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> Chain2Step17.M'.d105 ) ) ) $ ( Chain2Step17.M'.d108 ) ) ) ) $ ( if Chain2Step17.M'.d34 then Chain2Step17.M'.d24 else true )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else x64 ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p1 then Chain2Step17.M'.d70 else d49 then if p3 then Chain2Step17.M'.d94 else Chain2Step17.M'.d84 else if p3 then false else Chain2Step17.M'.d55
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if false then x67 else Bool ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if false then Chain2Step17.M'.d10 else d5 ) ) ) $ ( if false then false else Chain2Step17.M'.d112 )
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> false ) ) ) $ ( false ) ) ) ) $ ( if d25 then d49 else Chain2Step17.M'.d38 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> x75 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> Chain2Step17.M'.d5 ) ) ) $ ( d15 ) ) ) ) $ ( if Chain2Step17.M'.d44 then Chain2Step17.M'.d68 else d65 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if true then x77 else x77 ) ) ) $ ( if false then Bool else Bool )
        d76 = if if false then p3 else Chain2Step17.M'.d21 then if p3 then p3 else d48 else if p1 then d24 else false
        d78 : if false then if true then Bool else Bool else if true then Bool else Bool
        d78 = if if Chain2Step17.M'.d93 then false else Chain2Step17.M'.d76 then if Chain2Step17.M'.d86 then d5 else d45 else if Chain2Step17.M'.d76 then true else Chain2Step17.M'.d34
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x82 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> Chain2Step17.M'.d63 ) ) ) $ ( d55 ) ) ) ) $ ( if d58 then Chain2Step17.M'.d44 else d48 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then x87 else x87 ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if Chain2Step17.M'.d56 then true else false )
        d88 : if true then if true then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> false ) ) ) $ ( false ) ) ) ) $ ( if Chain2Step17.M'.d75 then Chain2Step17.M'.d85 else p3 )
        d91 : if true then if true then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d25 then d78 else p1 ) ) ) $ ( if true then false else Chain2Step17.M'.d12 )
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if false then d15 else d48 ) ) ) $ ( if d5 then Chain2Step17.M'.d90 else p3 )
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if p3 then Chain2Step17.M'.d3 else d71 then if d63 then Chain2Step17.M'.d94 else d14 else if true then p1 else Chain2Step17.M'.d75
        d96 : if false then if false then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if Chain2Step17.M'.d26 then d38 else p1 ) ) ) $ ( if Chain2Step17.M'.d26 then d25 else p1 )
        d98 : if false then if true then Bool else Bool else if false then Bool else Bool
        d98 = if if p1 then Chain2Step17.M'.d29 else false then if Chain2Step17.M'.d88 then d29 else p1 else if d63 then true else Chain2Step17.M'.d105
        d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if false then x101 else Bool ) ) ) $ ( if false then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if true then d29 else d76 ) ) ) $ ( if d79 then false else false )
        d102 : if true then if true then Bool else Bool else if false then Bool else Bool
        d102 = if if d79 then p3 else Chain2Step17.M'.d88 then if p3 then Chain2Step17.M'.d56 else true else if p3 then Chain2Step17.M'.d9 else d38
        d103 : if false then if false then Bool else Bool else if false then Bool else Bool
        d103 = if if d15 then d55 else Chain2Step17.M'.d34 then if true then p1 else Chain2Step17.M'.d84 else if p3 then false else Chain2Step17.M'.d94
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> Chain2Step17.M'.d21 ) ) ) $ ( p3 ) ) ) ) $ ( if d96 then Chain2Step17.M'.d98 else p3 )
        d109 : if true then if true then Bool else Bool else if false then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d76 then Chain2Step17.M'.d41 else Chain2Step17.M'.d41 ) ) ) $ ( if false then d95 else Chain2Step17.M'.d79 )
        d111 : if true then if false then Bool else Bool else if true then Bool else Bool
        d111 = if if p3 then d11 else false then if d18 then p1 else Chain2Step17.M'.d88 else if true then Chain2Step17.M'.d75 else d15
        d112 : if false then if true then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if Chain2Step17.M'.d9 then true else d88 ) ) ) $ ( if d11 then d32 else Chain2Step17.M'.d90 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else x115 ) ) ) $ ( if true then Bool else Bool )
        d114 = if if Chain2Step17.M'.d76 then true else Chain2Step17.M'.d38 then if true then p3 else d32 else if Chain2Step17.M'.d63 then d34 else Chain2Step17.M'.d10
        d116 : if false then if true then Bool else Bool else if false then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if Chain2Step17.M'.d5 then d35 else d102 ) ) ) $ ( if Chain2Step17.M'.d59 then p1 else Chain2Step17.M'.d26 )
        d118 : if false then if false then Bool else Bool else if true then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if true then p3 else false ) ) ) $ ( if true then p3 else d63 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> Chain2Step17.M'.d9 ) ) ) $ ( Chain2Step17.M'.d48 ) ) ) ) $ ( if Chain2Step17.M'.d98 then d49 else Chain2Step17.M'.d90 )
        d124 : if true then if false then Bool else Bool else if false then Bool else Bool
        d124 = if if Chain2Step17.M'.d112 then p3 else Chain2Step17.M'.d84 then if p3 then true else p3 else if false then d95 else Chain2Step17.M'.d35