module Chain3Test9  where
    import Chain3Step29
    open import Chain3Step29 using (Bool; true; false; ⊤; tt) public
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
        d3 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else x6 ) ) ) $ ( if true then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( Chain3Step29.M'.d125 ) ) ) ) $ ( if true then Chain3Step29.M'.d26 else p1 )
        d7 : if true then if false then Bool else Bool else if false then Bool else Bool
        d7 = if if d3 then p2 else d3 then if p1 then Chain3Step29.M'.d131 else d3 else if Chain3Step29.M'.d131 then Chain3Step29.M'.d34 else p2
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if p1 then Chain3Step29.M'.d111 else false ) ) ) $ ( if Chain3Step29.M'.d42 then true else true )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if true then x13 else x13 ) ) ) $ ( if false then Bool else Bool )
        d12 = if if d7 then d8 else true then if d3 then d8 else p1 else if true then p2 else d8
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if true then x16 else Bool ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d12 then d7 else d7 ) ) ) $ ( if Chain3Step29.M'.d10 then p2 else Chain3Step29.M'.d73 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> Chain3Step29.M'.d86 ) ) ) $ ( Chain3Step29.M'.d125 ) ) ) ) $ ( if p1 then p1 else Chain3Step29.M'.d39 )
        d21 : if false then if false then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> true ) ) ) $ ( Chain3Step29.M'.d10 ) ) ) ) $ ( if Chain3Step29.M'.d122 then Chain3Step29.M'.d7 else p1 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if if d12 then false else false then if Chain3Step29.M'.d31 then Chain3Step29.M'.d79 else false else if Chain3Step29.M'.d53 then false else d7
        d27 : if true then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if d8 then true else false then if Chain3Step29.M'.d35 then Chain3Step29.M'.d83 else d14 else if false then Chain3Step29.M'.d62 else false
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if false then false else Chain3Step29.M'.d111 then if p1 then p1 else d8 else if Chain3Step29.M'.d105 then Chain3Step29.M'.d38 else Chain3Step29.M'.d116
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if p1 then Chain3Step29.M'.d35 else false ) ) ) $ ( if false then d12 else d17 )
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = if if Chain3Step29.M'.d74 then d14 else false then if Chain3Step29.M'.d24 then Chain3Step29.M'.d66 else Chain3Step29.M'.d79 else if true then p2 else false
        d32 : if false then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if Chain3Step29.M'.d83 then Chain3Step29.M'.d39 else p2 ) ) ) $ ( if Chain3Step29.M'.d21 then d31 else true )
        d34 : if false then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> d7 ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then false else true )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then Bool else x40 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> d29 ) ) ) $ ( p1 ) ) ) ) $ ( if false then d34 else d28 )
        d41 : if false then if false then Bool else Bool else if true then Bool else Bool
        d41 = if if Chain3Step29.M'.d50 then Chain3Step29.M'.d34 else Chain3Step29.M'.d120 then if Chain3Step29.M'.d77 then Chain3Step29.M'.d31 else Chain3Step29.M'.d131 else if Chain3Step29.M'.d102 then d21 else Chain3Step29.M'.d63
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d42 = if if d14 then Chain3Step29.M'.d77 else Chain3Step29.M'.d104 then if p1 then Chain3Step29.M'.d99 else p1 else if d17 then Chain3Step29.M'.d128 else d28
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d45 = if if p2 then Chain3Step29.M'.d69 else Chain3Step29.M'.d27 then if d24 then true else p2 else if Chain3Step29.M'.d58 then d27 else Chain3Step29.M'.d73
        d48 : if false then if true then Bool else Bool else if false then Bool else Bool
        d48 = if if d24 then false else d12 then if Chain3Step29.M'.d45 then Chain3Step29.M'.d97 else d34 else if Chain3Step29.M'.d134 then true else Chain3Step29.M'.d104
        d49 : if true then if false then Bool else Bool else if true then Bool else Bool
        d49 = if if Chain3Step29.M'.d131 then Chain3Step29.M'.d79 else d8 then if d14 then Chain3Step29.M'.d94 else Chain3Step29.M'.d27 else if Chain3Step29.M'.d94 then true else Chain3Step29.M'.d128
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if p2 then false else Chain3Step29.M'.d63 ) ) ) $ ( if d21 then Chain3Step29.M'.d108 else p1 )
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> Chain3Step29.M'.d17 ) ) ) $ ( d49 ) ) ) ) $ ( if p1 then Chain3Step29.M'.d38 else true )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d55 = if if Chain3Step29.M'.d39 then Chain3Step29.M'.d77 else d24 then if d29 then Chain3Step29.M'.d42 else d29 else if p1 then Chain3Step29.M'.d13 else p1
        d58 : if false then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if p1 then Chain3Step29.M'.d128 else false then if p1 then p2 else true else if Chain3Step29.M'.d11 then true else true
        d59 : if true then if true then Bool else Bool else if false then Bool else Bool
        d59 = if if Chain3Step29.M'.d63 then Chain3Step29.M'.d58 else false then if Chain3Step29.M'.d77 then p2 else Chain3Step29.M'.d13 else if Chain3Step29.M'.d134 then d14 else p1
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( x63 ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> Chain3Step29.M'.d83 ) ) ) $ ( true ) ) ) ) $ ( if d58 then Chain3Step29.M'.d21 else d49 )
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if Chain3Step29.M'.d21 then Chain3Step29.M'.d120 else true ) ) ) $ ( if true then p1 else false )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x68 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d67 = if if Chain3Step29.M'.d86 then Chain3Step29.M'.d17 else true then if true then Chain3Step29.M'.d92 else Chain3Step29.M'.d27 else if d52 then p2 else Chain3Step29.M'.d50
        d70 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then Bool else x72 ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if x71 then false else p1 ) ) ) $ ( if false then Chain3Step29.M'.d105 else Chain3Step29.M'.d27 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then Bool else x76 ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> Chain3Step29.M'.d102 ) ) ) $ ( Chain3Step29.M'.d24 ) ) ) ) $ ( if Chain3Step29.M'.d39 then d58 else Chain3Step29.M'.d58 )
        d77 : if false then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if p2 then d28 else p1 then if false then d21 else false else if Chain3Step29.M'.d125 then p2 else true
        d78 : if false then if false then Bool else Bool else if true then Bool else Bool
        d78 = if if true then Chain3Step29.M'.d21 else p1 then if Chain3Step29.M'.d102 then d67 else Chain3Step29.M'.d79 else if Chain3Step29.M'.d31 then false else Chain3Step29.M'.d79
        d79 : if true then if false then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> Chain3Step29.M'.d31 ) ) ) $ ( Chain3Step29.M'.d53 ) ) ) ) $ ( if p2 then d65 else Chain3Step29.M'.d66 )
        d82 : if true then if true then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> true ) ) ) $ ( d37 ) ) ) ) $ ( if Chain3Step29.M'.d35 then Chain3Step29.M'.d125 else Chain3Step29.M'.d131 )
        d85 : if false then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if false then d7 else p2 )
        d88 : if false then if false then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if Chain3Step29.M'.d66 then true else true )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> Chain3Step29.M'.d35 ) ) ) $ ( false ) ) ) ) $ ( if Chain3Step29.M'.d86 then Chain3Step29.M'.d102 else d78 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then x97 else Bool ) ) ) $ ( if false then Bool else Bool )
        d96 = if if Chain3Step29.M'.d24 then false else Chain3Step29.M'.d120 then if Chain3Step29.M'.d83 then false else Chain3Step29.M'.d108 else if Chain3Step29.M'.d32 then Chain3Step29.M'.d131 else Chain3Step29.M'.d26
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> Chain3Step29.M'.d97 ) ) ) $ ( false ) ) ) ) $ ( if p2 then p1 else Chain3Step29.M'.d58 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( x104 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if Chain3Step29.M'.d97 then Chain3Step29.M'.d102 else Chain3Step29.M'.d31 then if true then true else d91 else if p1 then Chain3Step29.M'.d35 else Chain3Step29.M'.d118
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d106 = if if Chain3Step29.M'.d77 then p2 else true then if p1 then d17 else d60 else if false then true else Chain3Step29.M'.d102
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x109 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d108 = if if d70 then d65 else p2 then if false then Chain3Step29.M'.d34 else Chain3Step29.M'.d62 else if Chain3Step29.M'.d35 then p1 else d65
        d111 : if true then if false then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if Chain3Step29.M'.d74 then d8 else d41 ) ) ) $ ( if false then false else false )
        d113 : if false then if true then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if false then Chain3Step29.M'.d13 else Chain3Step29.M'.d118 ) ) ) $ ( if d82 then Chain3Step29.M'.d63 else false )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> Bool ) ) ) $ ( x116 ) ) ) ) $ ( if false then Bool else Bool )
        d115 = if if Chain3Step29.M'.d116 then true else Chain3Step29.M'.d94 then if Chain3Step29.M'.d58 then p2 else Chain3Step29.M'.d74 else if Chain3Step29.M'.d134 then Chain3Step29.M'.d21 else Chain3Step29.M'.d58
        d118 : if true then if true then Bool else Bool else if true then Bool else Bool
        d118 = if if p2 then p1 else Chain3Step29.M'.d11 then if d29 then Chain3Step29.M'.d79 else Chain3Step29.M'.d10 else if Chain3Step29.M'.d83 then true else Chain3Step29.M'.d39
        d119 : if true then if true then Bool else Bool else if true then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> Chain3Step29.M'.d58 ) ) ) $ ( Chain3Step29.M'.d39 ) ) ) ) $ ( if p1 then Chain3Step29.M'.d134 else Chain3Step29.M'.d50 )
        d122 : if true then if false then Bool else Bool else if false then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> Chain3Step29.M'.d27 ) ) ) $ ( Chain3Step29.M'.d104 ) ) ) ) $ ( if Chain3Step29.M'.d105 then Chain3Step29.M'.d125 else p2 )
        d125 : if false then if false then Bool else Bool else if false then Bool else Bool
        d125 = if if false then p1 else Chain3Step29.M'.d72 then if p2 then Chain3Step29.M'.d128 else d32 else if Chain3Step29.M'.d38 then Chain3Step29.M'.d38 else true
        d126 : if false then if true then Bool else Bool else if false then Bool else Bool
        d126 = if if p2 then p2 else true then if p2 then Chain3Step29.M'.d125 else Chain3Step29.M'.d39 else if p1 then d41 else Chain3Step29.M'.d92