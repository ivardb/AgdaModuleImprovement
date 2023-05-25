module Chain2Test4  where
    import Chain2Step14
    open import Chain2Step14 using (Bool; true; false; ⊤; tt) public
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
        d3 : if true then if false then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if Chain2Step14.M'.d47 then Chain2Step14.M'.d28 else p1 ) ) ) $ ( if Chain2Step14.M'.d40 then p1 else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if p2 then d3 else Chain2Step14.M'.d78 ) ) ) $ ( if d3 then d3 else d3 )
        d8 : if false then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if Chain2Step14.M'.d60 then p2 else true then if Chain2Step14.M'.d52 then d5 else d5 else if p1 then p1 else d5
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( x11 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if d3 then d5 else Chain2Step14.M'.d56 ) ) ) $ ( if Chain2Step14.M'.d68 then p1 else Chain2Step14.M'.d84 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if false then d9 else true )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if Chain2Step14.M'.d22 then d3 else Chain2Step14.M'.d13 ) ) ) $ ( if Chain2Step14.M'.d32 then Chain2Step14.M'.d122 else true )
        d22 : if false then if true then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if x23 then false else false ) ) ) $ ( if d3 then d5 else d13 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if d13 then p2 else Chain2Step14.M'.d106 ) ) ) $ ( if Chain2Step14.M'.d44 then Chain2Step14.M'.d11 else Chain2Step14.M'.d56 )
        d28 : if true then if true then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d22 then x29 else Chain2Step14.M'.d126 ) ) ) $ ( if Chain2Step14.M'.d47 then false else d18 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if if d9 then d5 else Chain2Step14.M'.d81 then if p1 then d8 else Chain2Step14.M'.d108 else if p1 then Chain2Step14.M'.d31 else Chain2Step14.M'.d87
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if Chain2Step14.M'.d47 then true else d9 then if false then false else Chain2Step14.M'.d23 else if Chain2Step14.M'.d15 then true else d24
        d36 : if false then if false then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if Chain2Step14.M'.d35 then x37 else false ) ) ) $ ( if p1 then Chain2Step14.M'.d32 else d8 )
        d38 : if true then if false then Bool else Bool else if true then Bool else Bool
        d38 = if if Chain2Step14.M'.d63 then d5 else true then if Chain2Step14.M'.d122 then false else d30 else if Chain2Step14.M'.d93 then d24 else p1
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if d33 then Chain2Step14.M'.d104 else false then if Chain2Step14.M'.d63 then d13 else d30 else if Chain2Step14.M'.d41 then Chain2Step14.M'.d120 else Chain2Step14.M'.d40
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> Chain2Step14.M'.d115 ) ) ) $ ( false ) ) ) ) $ ( if d28 then p1 else d13 )
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = if if d8 then Chain2Step14.M'.d68 else Chain2Step14.M'.d52 then if Chain2Step14.M'.d70 then false else d5 else if true then Chain2Step14.M'.d11 else true
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> true ) ) ) $ ( true ) ) ) ) $ ( if d30 then true else Chain2Step14.M'.d5 )
        d49 : if true then if false then Bool else Bool else if true then Bool else Bool
        d49 = if if d13 then true else d36 then if d3 then true else Chain2Step14.M'.d6 else if Chain2Step14.M'.d68 then Chain2Step14.M'.d15 else Chain2Step14.M'.d71
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if true then Bool else x51 ) ) ) $ ( if false then Bool else Bool )
        d50 = if if d42 then Chain2Step14.M'.d111 else Chain2Step14.M'.d90 then if false then Chain2Step14.M'.d120 else true else if p2 then p1 else Chain2Step14.M'.d56
        d52 : if true then if true then Bool else Bool else if true then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> Chain2Step14.M'.d40 ) ) ) $ ( Chain2Step14.M'.d108 ) ) ) ) $ ( if d38 then d22 else p1 )
        d55 : if true then if true then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> Chain2Step14.M'.d130 ) ) ) $ ( d50 ) ) ) ) $ ( if Chain2Step14.M'.d81 then Chain2Step14.M'.d35 else false )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else p2 )
        d63 : if false then if false then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if d50 then false else true ) ) ) $ ( if p1 then Chain2Step14.M'.d126 else Chain2Step14.M'.d84 )
        d65 : if false then if true then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> Chain2Step14.M'.d111 ) ) ) $ ( Chain2Step14.M'.d40 ) ) ) ) $ ( if d39 then true else d46 )
        d68 : if true then if true then Bool else Bool else if false then Bool else Bool
        d68 = if if Chain2Step14.M'.d93 then false else Chain2Step14.M'.d6 then if true then Chain2Step14.M'.d56 else p1 else if false then d50 else true
        d69 : if true then if false then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if p2 then d46 else Chain2Step14.M'.d99 ) ) ) $ ( if d63 then Chain2Step14.M'.d52 else Chain2Step14.M'.d81 )
        d71 : if true then if false then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if true then Chain2Step14.M'.d32 else Chain2Step14.M'.d25 ) ) ) $ ( if d65 then Chain2Step14.M'.d111 else p1 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then x76 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> Chain2Step14.M'.d13 ) ) ) $ ( Chain2Step14.M'.d99 ) ) ) ) $ ( if false then p2 else true )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = if if d5 then true else d39 then if p2 then d73 else p2 else if d69 then p2 else d58
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d18 then Chain2Step14.M'.d111 else Chain2Step14.M'.d84 ) ) ) $ ( if Chain2Step14.M'.d71 then p1 else Chain2Step14.M'.d99 )
        d82 : if false then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if Chain2Step14.M'.d115 then Chain2Step14.M'.d115 else p1 then if Chain2Step14.M'.d31 then Chain2Step14.M'.d41 else d52 else if Chain2Step14.M'.d52 then Chain2Step14.M'.d96 else d45
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then x84 else x84 ) ) ) $ ( if true then Bool else Bool )
        d83 = if if true then Chain2Step14.M'.d90 else true then if d36 then Chain2Step14.M'.d44 else Chain2Step14.M'.d47 else if Chain2Step14.M'.d53 then false else d69
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( d30 ) ) ) ) $ ( if d22 then Chain2Step14.M'.d51 else Chain2Step14.M'.d76 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d89 = if if false then false else p2 then if d69 then Chain2Step14.M'.d6 else d65 else if Chain2Step14.M'.d11 then p1 else d28
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d91 = if if Chain2Step14.M'.d6 then d69 else Chain2Step14.M'.d130 then if p2 then Chain2Step14.M'.d20 else p1 else if p1 then false else p1
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then x95 else Bool ) ) ) $ ( if false then Bool else Bool )
        d94 = if if p1 then Chain2Step14.M'.d130 else d85 then if true then d91 else Chain2Step14.M'.d11 else if false then p2 else Chain2Step14.M'.d115
        d96 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then x99 else Bool ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> d83 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then p1 else true )
        d100 : if true then if true then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> x102 ) ) ) $ ( x101 ) ) ) ) $ ( if Chain2Step14.M'.d44 then Chain2Step14.M'.d55 else Chain2Step14.M'.d78 )
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then Chain2Step14.M'.d6 else Chain2Step14.M'.d90 ) ) ) $ ( if Chain2Step14.M'.d28 then true else false )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then Bool else x107 ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if Chain2Step14.M'.d70 then true else Chain2Step14.M'.d90 ) ) ) $ ( if p1 then Chain2Step14.M'.d46 else false )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( x109 ) ) ) ) $ ( if false then Bool else Bool )
        d108 = if if Chain2Step14.M'.d130 then Chain2Step14.M'.d41 else p2 then if d65 then d45 else p1 else if Chain2Step14.M'.d87 then Chain2Step14.M'.d32 else p2
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if Chain2Step14.M'.d126 then Chain2Step14.M'.d106 else d55 ) ) ) $ ( if true then p1 else true )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then x117 else x117 ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if Chain2Step14.M'.d52 then Chain2Step14.M'.d93 else Chain2Step14.M'.d52 ) ) ) $ ( if Chain2Step14.M'.d13 then p2 else d13 )
        d118 : if true then if false then Bool else Bool else if false then Bool else Bool
        d118 = if if d42 then Chain2Step14.M'.d8 else Chain2Step14.M'.d5 then if d5 then p1 else Chain2Step14.M'.d13 else if Chain2Step14.M'.d108 then false else d49
        d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d119 = if if Chain2Step14.M'.d63 then p2 else p2 then if Chain2Step14.M'.d104 then Chain2Step14.M'.d5 else true else if Chain2Step14.M'.d25 then Chain2Step14.M'.d78 else true
        d122 : if false then if true then Bool else Bool else if false then Bool else Bool
        d122 = if if d58 then Chain2Step14.M'.d23 else d85 then if Chain2Step14.M'.d17 then Chain2Step14.M'.d130 else d39 else if Chain2Step14.M'.d106 then false else d73
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d123 = if if false then Chain2Step14.M'.d76 else d68 then if p1 then d30 else true else if Chain2Step14.M'.d37 then d82 else Chain2Step14.M'.d32
        d126 : if false then if false then Bool else Bool else if true then Bool else Bool
        d126 = if if true then Chain2Step14.M'.d93 else false then if Chain2Step14.M'.d106 then true else d108 else if p1 then Chain2Step14.M'.d23 else Chain2Step14.M'.d5
        d127 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else x130 ) ) ) $ ( if false then Bool else Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> d39 ) ) ) $ ( d33 ) ) ) ) $ ( if true then p1 else false )
        d131 : if true then if true then Bool else Bool else if false then Bool else Bool
        d131 = if if true then false else p1 then if d52 then p1 else d5 else if Chain2Step14.M'.d20 then Chain2Step14.M'.d71 else d69