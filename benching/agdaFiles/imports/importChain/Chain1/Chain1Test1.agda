module Chain1Test1  where
    import Chain1Base1
    open import Chain1Base1 using (Bool; true; false; ⊤; tt) public
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x5 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d3 = if if Chain1Base1.M'.d56 then Chain1Base1.M'.d45 else Chain1Base1.M'.d6 then if Chain1Base1.M'.d128 then true else Chain1Base1.M'.d102 else if p1 then p2 else Chain1Base1.M'.d80
        d6 : if false then if false then Bool else Bool else if true then Bool else Bool
        d6 = if if Chain1Base1.M'.d78 then d3 else Chain1Base1.M'.d124 then if d3 then false else p1 else if Chain1Base1.M'.d119 then p1 else false
        d7 : if false then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( Chain1Base1.M.d120 ) $ ( if if Chain1Base1.M'.d90 then Chain1Base1.M'.d99 else false then if Chain1Base1.M'.d59 then Chain1Base1.M'.d6 else Chain1Base1.M'.d107 else if d3 then false else Chain1Base1.M'.d68 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( Chain1Base1.M.d67 ) $ ( if if false then Chain1Base1.M'.d11 else p2 then if d7 then d3 else p2 else if p2 then p1 else Chain1Base1.M'.d75 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then Bool else x14 ) ) ) $ ( if false then Bool else Bool )
        d11 = ( Chain1Base1.M.d120 ) $ ( ( Chain1Base1.M.d80 ) $ ( ( Chain1Base1.M.d106 ) $ ( ( Chain1Base1.M.d83 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( Chain1Base1.M.d17 ) $ ( ( Chain1Base1.M.d113 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x13 -> d7 ) ) ) $ ( d8 ) ) ) ) ) ) $ ( if false then Chain1Base1.M'.d45 else Chain1Base1.M'.d65 ) ) ) ) )
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( Chain1Base1.M.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( Chain1Base1.M.d99 ) $ ( ( Chain1Base1.M.d65 ) $ ( ( Chain1Base1.M.d3 ) $ ( ( Chain1Base1.M.d80 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x17 -> d8 ) ) ) $ ( p1 ) ) ) ) ) ) ) ) $ ( if Chain1Base1.M'.d96 then Chain1Base1.M'.d20 else Chain1Base1.M'.d103 ) )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = ( Chain1Base1.M.d6 ) $ ( if if d11 then true else d8 then if Chain1Base1.M'.d35 then false else true else if Chain1Base1.M'.d87 then false else d15 )
        d20 : if true then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( Chain1Base1.M.d110 ) $ ( if if p1 then false else d7 then if p2 then Chain1Base1.M'.d96 else d11 else if Chain1Base1.M'.d45 then d6 else p1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> Chain1Base1.M'.d67 ) ) ) $ ( true ) ) ) ) $ ( if Chain1Base1.M'.d80 then true else Chain1Base1.M'.d36 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x26 ) ) ) $ ( x26 ) ) ) ) $ ( if false then Bool else Bool )
        d25 = if if d11 then d18 else d8 then if Chain1Base1.M'.d45 then Chain1Base1.M'.d56 else Chain1Base1.M'.d87 else if p2 then p2 else Chain1Base1.M'.d85
        d28 : if false then if false then Bool else Bool else if true then Bool else Bool
        d28 = if if Chain1Base1.M'.d50 then Chain1Base1.M'.d120 else false then if Chain1Base1.M'.d36 then Chain1Base1.M'.d58 else Chain1Base1.M'.d38 else if true then Chain1Base1.M'.d124 else d8
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( Chain1Base1.M.d110 ) $ ( if Chain1Base1.M'.d45 then d7 else Chain1Base1.M'.d110 ) ) ) ) $ ( if p1 then Chain1Base1.M'.d116 else false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then Bool else x35 ) ) ) $ ( if true then Bool else Bool )
        d33 = ( Chain1Base1.M.d72 ) $ ( ( Chain1Base1.M.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if Chain1Base1.M'.d107 then Chain1Base1.M'.d102 else false ) ) ) $ ( if p2 then Chain1Base1.M'.d120 else true ) ) )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( x37 ) ) ) ) $ ( if false then Bool else Bool )
        d36 = ( Chain1Base1.M.d10 ) $ ( ( Chain1Base1.M.d103 ) $ ( if if d28 then d6 else d3 then if Chain1Base1.M'.d47 then Chain1Base1.M'.d119 else Chain1Base1.M'.d124 else if Chain1Base1.M'.d41 then p2 else true ) )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if true then x41 else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( Chain1Base1.M.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( Chain1Base1.M.d116 ) $ ( if Chain1Base1.M'.d124 then Chain1Base1.M'.d68 else Chain1Base1.M'.d106 ) ) ) ) $ ( if Chain1Base1.M'.d10 then false else p1 ) )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = ( Chain1Base1.M.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if true then Chain1Base1.M'.d93 else Chain1Base1.M'.d58 ) ) ) $ ( if d11 then Chain1Base1.M'.d58 else Chain1Base1.M'.d103 ) )
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( Chain1Base1.M.d131 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> Chain1Base1.M'.d38 ) ) ) $ ( Chain1Base1.M'.d56 ) ) ) ) $ ( if Chain1Base1.M'.d67 then Chain1Base1.M'.d90 else p2 ) )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( Chain1Base1.M.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> Chain1Base1.M'.d17 ) ) ) $ ( d36 ) ) ) ) $ ( if Chain1Base1.M'.d53 then true else p1 ) )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else Bool ) ) ) $ ( if true then Bool else Bool )
        d51 = ( Chain1Base1.M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if d7 then true else Chain1Base1.M'.d124 ) ) ) $ ( if Chain1Base1.M'.d10 then d28 else Chain1Base1.M'.d3 ) )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else x55 ) ) ) $ ( if false then Bool else Bool )
        d54 = ( Chain1Base1.M.d16 ) $ ( if if p2 then d51 else false then if d39 then p2 else p1 else if Chain1Base1.M'.d16 then d11 else Chain1Base1.M'.d53 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if true then x58 else Bool ) ) ) $ ( if true then Bool else Bool )
        d56 = ( Chain1Base1.M.d119 ) $ ( ( Chain1Base1.M.d3 ) $ ( ( Chain1Base1.M.d116 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if true then false else d18 ) ) ) $ ( if true then true else Chain1Base1.M'.d110 ) ) ) )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then Bool else x60 ) ) ) $ ( if false then Bool else Bool )
        d59 = if if Chain1Base1.M'.d50 then d56 else Chain1Base1.M'.d41 then if Chain1Base1.M'.d25 then Chain1Base1.M'.d85 else Chain1Base1.M'.d16 else if Chain1Base1.M'.d56 then Chain1Base1.M'.d31 else d28
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( Chain1Base1.M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> d7 ) ) ) $ ( Chain1Base1.M'.d62 ) ) ) ) $ ( if Chain1Base1.M'.d75 then false else Chain1Base1.M'.d10 ) )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( Chain1Base1.M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> Chain1Base1.M'.d38 ) ) ) $ ( Chain1Base1.M'.d68 ) ) ) ) $ ( if true then d39 else d59 ) )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x73 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = ( Chain1Base1.M.d90 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( Chain1Base1.M.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x71 -> false ) ) ) $ ( Chain1Base1.M'.d11 ) ) ) ) ) $ ( if Chain1Base1.M'.d113 then d3 else Chain1Base1.M'.d58 ) )
        d74 : if true then if false then Bool else Bool else if true then Bool else Bool
        d74 = ( Chain1Base1.M.d110 ) $ ( if if false then d64 else Chain1Base1.M'.d41 then if Chain1Base1.M'.d116 then Chain1Base1.M'.d41 else Chain1Base1.M'.d45 else if Chain1Base1.M'.d116 then false else true )
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( Chain1Base1.M.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x77 -> false ) ) ) $ ( x76 ) ) ) ) ) $ ( if p1 then d61 else true )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then x81 else x81 ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( Chain1Base1.M.d65 ) $ ( ( Chain1Base1.M.d128 ) $ ( ( Chain1Base1.M.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x80 -> Chain1Base1.M'.d72 ) ) ) $ ( d18 ) ) ) ) ) ) ) $ ( if Chain1Base1.M'.d135 then p1 else d45 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> d54 ) ) ) $ ( Chain1Base1.M'.d28 ) ) ) ) $ ( if p1 then d33 else Chain1Base1.M'.d53 )
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( Chain1Base1.M.d65 ) $ ( ( Chain1Base1.M.d119 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> d33 ) ) ) $ ( d64 ) ) ) ) $ ( if false then p2 else d36 ) ) )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then x91 else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = ( Chain1Base1.M.d128 ) $ ( if if d33 then p2 else Chain1Base1.M'.d45 then if Chain1Base1.M'.d75 then Chain1Base1.M'.d3 else Chain1Base1.M'.d56 else if d21 then true else Chain1Base1.M'.d72 )
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = ( Chain1Base1.M.d47 ) $ ( ( Chain1Base1.M.d116 ) $ ( ( Chain1Base1.M.d58 ) $ ( if if Chain1Base1.M'.d3 then p1 else Chain1Base1.M'.d11 then if Chain1Base1.M'.d62 then true else p2 else if p2 then d74 else Chain1Base1.M'.d62 ) ) )
        d93 : if true then if true then Bool else Bool else if true then Bool else Bool
        d93 = ( Chain1Base1.M.d107 ) $ ( if if Chain1Base1.M'.d28 then p2 else p1 then if true then p1 else Chain1Base1.M'.d106 else if true then Chain1Base1.M'.d6 else d21 )
        d94 : if false then if true then Bool else Bool else if false then Bool else Bool
        d94 = if if Chain1Base1.M'.d87 then Chain1Base1.M'.d116 else d36 then if d48 then false else p1 else if true then false else Chain1Base1.M'.d20
        d95 : if true then if true then Bool else Bool else if false then Bool else Bool
        d95 = if if d39 then p1 else true then if Chain1Base1.M'.d67 then p1 else d25 else if false then Chain1Base1.M'.d75 else false
        d96 : if false then if true then Bool else Bool else if true then Bool else Bool
        d96 = ( Chain1Base1.M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if p2 then d61 else Chain1Base1.M'.d83 ) ) ) $ ( if d29 then Chain1Base1.M'.d135 else d94 ) )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = ( Chain1Base1.M.d131 ) $ ( if if Chain1Base1.M'.d119 then d92 else true then if Chain1Base1.M'.d36 then d42 else p1 else if Chain1Base1.M'.d41 then Chain1Base1.M'.d35 else d95 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then x102 else Bool ) ) ) $ ( if false then Bool else Bool )
        d101 = if if Chain1Base1.M'.d25 then Chain1Base1.M'.d45 else d45 then if d7 then p1 else p1 else if d59 then Chain1Base1.M'.d78 else p2
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if Chain1Base1.M'.d116 then p1 else Chain1Base1.M'.d135 ) ) ) $ ( if true then d96 else d28 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( x107 ) ) ) ) $ ( if true then Bool else Bool )
        d105 = ( Chain1Base1.M.d80 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( Chain1Base1.M.d110 ) $ ( if Chain1Base1.M'.d45 then Chain1Base1.M'.d113 else false ) ) ) ) $ ( if d56 then true else d15 ) )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = ( Chain1Base1.M.d78 ) $ ( if if Chain1Base1.M'.d102 then Chain1Base1.M'.d10 else d87 then if d8 then true else d36 else if Chain1Base1.M'.d27 then Chain1Base1.M'.d72 else d33 )
        d112 : if true then if false then Bool else Bool else if true then Bool else Bool
        d112 = ( Chain1Base1.M.d96 ) $ ( ( Chain1Base1.M.d25 ) $ ( ( Chain1Base1.M.d53 ) $ ( ( Chain1Base1.M.d11 ) $ ( if if Chain1Base1.M'.d50 then Chain1Base1.M'.d31 else Chain1Base1.M'.d120 then if true then p1 else Chain1Base1.M'.d16 else if true then p2 else Chain1Base1.M'.d58 ) ) ) )
        d113 : if true then if false then Bool else Bool else if true then Bool else Bool
        d113 = if if Chain1Base1.M'.d124 then true else p2 then if d64 then Chain1Base1.M'.d53 else Chain1Base1.M'.d128 else if d98 then d87 else d28
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else x115 ) ) ) $ ( if true then Bool else Bool )
        d114 = if if Chain1Base1.M'.d53 then d51 else false then if d92 then Chain1Base1.M'.d3 else Chain1Base1.M'.d128 else if d18 then false else false
        d116 : if false then if true then Bool else Bool else if false then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> if Chain1Base1.M'.d6 then Chain1Base1.M'.d85 else false ) ) ) $ ( if false then p1 else d51 )
        d118 : if true then if false then Bool else Bool else if true then Bool else Bool
        d118 = ( Chain1Base1.M.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d6 ) ) ) $ ( d29 ) ) ) ) $ ( if p2 then Chain1Base1.M'.d3 else Chain1Base1.M'.d93 ) )
        d121 : if false then if true then Bool else Bool else if true then Bool else Bool
        d121 = ( Chain1Base1.M.d62 ) $ ( ( Chain1Base1.M.d56 ) $ ( ( Chain1Base1.M.d116 ) $ ( ( Chain1Base1.M.d28 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if true then x122 else d39 ) ) ) $ ( if d6 then true else d96 ) ) ) ) )
        d123 : if true then if true then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> true ) ) ) $ ( d109 ) ) ) ) $ ( if p2 then d109 else Chain1Base1.M'.d17 )
        d126 : if false then if false then Bool else Bool else if true then Bool else Bool
        d126 = ( Chain1Base1.M.d110 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( Chain1Base1.M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x128 -> d15 ) ) ) $ ( Chain1Base1.M'.d6 ) ) ) ) ) $ ( if p2 then Chain1Base1.M'.d116 else Chain1Base1.M'.d87 ) )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> x131 ) ) ) $ ( false ) ) ) ) $ ( if Chain1Base1.M'.d93 then d61 else p2 )