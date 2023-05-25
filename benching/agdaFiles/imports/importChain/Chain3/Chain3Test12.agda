module Chain3Test12  where
    import Chain3Step212
    open import Chain3Step212 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else x3 ) ) ) $ ( Bool ) )  where
        d4 : if true then if false then Bool else Bool else if false then Bool else Bool
        d4 = if if Chain3Step212.M'.d45 then p1 else Chain3Step212.M'.d68 then if p2 then false else Chain3Step212.M'.d58 else if p1 then false else Chain3Step212.M'.d68
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else x6 ) ) ) $ ( if true then Bool else Bool )
        d5 = if if p2 then Chain3Step212.M'.d50 else true then if p1 then d4 else Chain3Step212.M'.d18 else if p2 then p2 else d4
        d7 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> p1 ) ) ) $ ( p2 ) ) ) ) $ ( if d4 then Chain3Step212.M'.d90 else d4 )
        d12 : if false then if true then Bool else Bool else if false then Bool else Bool
        d12 = if if p1 then d4 else d7 then if p1 then d4 else d7 else if d4 then d4 else p2
        d13 : if false then if false then Bool else Bool else if true then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> true ) ) ) $ ( d12 ) ) ) ) $ ( if d12 then p2 else d5 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if false then x17 else x17 ) ) ) $ ( if true then Bool else Bool )
        d16 = if if true then p1 else d5 then if Chain3Step212.M'.d24 then Chain3Step212.M'.d30 else Chain3Step212.M'.d97 else if false then d7 else Chain3Step212.M'.d109
        d18 : if true then if true then Bool else Bool else if true then Bool else Bool
        d18 = if if d12 then p1 else p2 then if Chain3Step212.M'.d53 then Chain3Step212.M'.d9 else Chain3Step212.M'.d49 else if Chain3Step212.M'.d53 then p1 else p1
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> Chain3Step212.M'.d9 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else Chain3Step212.M'.d33 )
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if Chain3Step212.M'.d95 then false else d5 then if Chain3Step212.M'.d99 then p2 else Chain3Step212.M'.d74 else if Chain3Step212.M'.d98 then true else Chain3Step212.M'.d59
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if true then Chain3Step212.M'.d33 else p1 ) ) ) $ ( if p2 then d13 else d16 )
        d27 : if true then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if Chain3Step212.M'.d114 then Chain3Step212.M'.d27 else false ) ) ) $ ( if Chain3Step212.M'.d74 then true else p1 )
        d29 : if false then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> Chain3Step212.M'.d74 ) ) ) $ ( false ) ) ) ) $ ( if p1 then Chain3Step212.M'.d114 else Chain3Step212.M'.d78 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if x33 then Chain3Step212.M'.d74 else false ) ) ) $ ( if p1 then true else Chain3Step212.M'.d53 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x38 ) ) ) $ ( x37 ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if if Chain3Step212.M'.d104 then p2 else Chain3Step212.M'.d63 then if false then d25 else Chain3Step212.M'.d83 else if Chain3Step212.M'.d27 then Chain3Step212.M'.d74 else Chain3Step212.M'.d85
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else Bool ) ) ) $ ( if false then Bool else Bool )
        d39 = if if Chain3Step212.M'.d25 then d36 else Chain3Step212.M'.d56 then if true then Chain3Step212.M'.d45 else Chain3Step212.M'.d72 else if Chain3Step212.M'.d101 then p1 else p2
        d41 : if false then if true then Bool else Bool else if false then Bool else Bool
        d41 = if if p1 then Chain3Step212.M'.d12 else true then if false then Chain3Step212.M'.d63 else p2 else if Chain3Step212.M'.d13 then p2 else false
        d42 : if true then if true then Bool else Bool else if false then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> Chain3Step212.M'.d85 ) ) ) $ ( x43 ) ) ) ) $ ( if Chain3Step212.M'.d87 then p2 else true )
        d45 : if true then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> if p2 then p1 else p2 ) ) ) $ ( if Chain3Step212.M'.d34 then d16 else p1 )
        d47 : if false then if true then Bool else Bool else if false then Bool else Bool
        d47 = if if Chain3Step212.M'.d87 then d32 else Chain3Step212.M'.d18 then if p2 then d27 else p1 else if d29 then Chain3Step212.M'.d50 else p1
        d48 : if false then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> Chain3Step212.M'.d36 ) ) ) $ ( Chain3Step212.M'.d54 ) ) ) ) $ ( if false then Chain3Step212.M'.d97 else p1 )
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> Chain3Step212.M'.d45 ) ) ) $ ( p2 ) ) ) ) $ ( if Chain3Step212.M'.d87 then true else Chain3Step212.M'.d25 )
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if true then p2 else d5 then if d13 then false else true else if p2 then false else d12
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then x57 else Bool ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if false then false else Chain3Step212.M'.d72 ) ) ) $ ( if d12 then Chain3Step212.M'.d59 else p1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( x59 ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if p2 then p1 else p1 then if false then d48 else Chain3Step212.M'.d58 else if Chain3Step212.M'.d52 then d54 else p1
        d61 : if false then if false then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> Chain3Step212.M'.d44 ) ) ) $ ( false ) ) ) ) $ ( if d42 then p1 else Chain3Step212.M'.d94 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( x65 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = if if Chain3Step212.M'.d83 then false else p2 then if Chain3Step212.M'.d45 then false else Chain3Step212.M'.d90 else if Chain3Step212.M'.d85 then false else p1
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> false ) ) ) $ ( Chain3Step212.M'.d72 ) ) ) ) $ ( if false then true else p1 )
        d71 : if true then if false then Bool else Bool else if true then Bool else Bool
        d71 = if if Chain3Step212.M'.d112 then Chain3Step212.M'.d36 else true then if Chain3Step212.M'.d18 then Chain3Step212.M'.d116 else false else if p1 then Chain3Step212.M'.d94 else true
        d72 : if false then if true then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> d25 ) ) ) $ ( Chain3Step212.M'.d25 ) ) ) ) $ ( if p1 then p1 else Chain3Step212.M'.d53 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then x76 else Bool ) ) ) $ ( if false then Bool else Bool )
        d75 = if if p1 then p1 else Chain3Step212.M'.d53 then if Chain3Step212.M'.d24 then Chain3Step212.M'.d33 else p1 else if Chain3Step212.M'.d35 then d12 else Chain3Step212.M'.d109
        d77 : if false then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if false then p2 else p1 then if Chain3Step212.M'.d95 then Chain3Step212.M'.d83 else Chain3Step212.M'.d74 else if p2 then p2 else p2
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d78 = if if p1 then Chain3Step212.M'.d85 else p2 then if d24 then Chain3Step212.M'.d94 else false else if Chain3Step212.M'.d87 then Chain3Step212.M'.d36 else p2
        d80 : if true then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> false ) ) ) $ ( d58 ) ) ) ) $ ( if Chain3Step212.M'.d45 then Chain3Step212.M'.d50 else Chain3Step212.M'.d12 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then x85 else x85 ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if Chain3Step212.M'.d58 then Chain3Step212.M'.d27 else d67 ) ) ) $ ( if Chain3Step212.M'.d112 then true else p1 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( x88 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if Chain3Step212.M'.d90 then x87 else true ) ) ) $ ( if Chain3Step212.M'.d5 then d39 else Chain3Step212.M'.d101 )
        d90 : if true then if false then Bool else Bool else if false then Bool else Bool
        d90 = if if true then Chain3Step212.M'.d63 else Chain3Step212.M'.d20 then if p1 then d18 else true else if Chain3Step212.M'.d13 then true else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then x93 else x93 ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if false then Chain3Step212.M'.d78 else x92 ) ) ) $ ( if d64 then p2 else p1 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x97 ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> Chain3Step212.M'.d95 ) ) ) $ ( Chain3Step212.M'.d114 ) ) ) ) $ ( if Chain3Step212.M'.d30 then Chain3Step212.M'.d44 else p2 )
        d99 : if false then if false then Bool else Bool else if true then Bool else Bool
        d99 = if if Chain3Step212.M'.d12 then false else p2 then if Chain3Step212.M'.d112 then true else Chain3Step212.M'.d33 else if true then p2 else d25
        d100 : if false then if true then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if x101 then x101 else x101 ) ) ) $ ( if false then p1 else Chain3Step212.M'.d87 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if p1 then d4 else d100 ) ) ) $ ( if d41 then d75 else false )
        d106 : if true then if true then Bool else Bool else if false then Bool else Bool
        d106 = if if Chain3Step212.M'.d49 then false else Chain3Step212.M'.d40 then if Chain3Step212.M'.d56 then d13 else p2 else if Chain3Step212.M'.d114 then p1 else d42
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> Chain3Step212.M'.d104 ) ) ) $ ( Chain3Step212.M'.d104 ) ) ) ) $ ( if Chain3Step212.M'.d24 then Chain3Step212.M'.d68 else p1 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if x111 then d77 else d47 ) ) ) $ ( if p1 then Chain3Step212.M'.d98 else Chain3Step212.M'.d47 )
        d114 : if true then if false then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if Chain3Step212.M'.d99 then p2 else true )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else x120 ) ) ) $ ( if false then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> Chain3Step212.M'.d44 ) ) ) $ ( p2 ) ) ) ) $ ( if true then Chain3Step212.M'.d116 else d114 )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then x122 else x122 ) ) ) $ ( if true then Bool else Bool )
        d121 = if if Chain3Step212.M'.d83 then Chain3Step212.M'.d45 else d58 then if Chain3Step212.M'.d47 then Chain3Step212.M'.d50 else d27 else if p2 then d102 else Chain3Step212.M'.d85
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( x124 ) ) ) ) $ ( if false then Bool else Bool )
        d123 = if if Chain3Step212.M'.d103 then Chain3Step212.M'.d44 else p1 then if Chain3Step212.M'.d49 then true else Chain3Step212.M'.d50 else if p1 then p2 else p2
        d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d126 = if if Chain3Step212.M'.d24 then Chain3Step212.M'.d93 else false then if true then Chain3Step212.M'.d97 else p2 else if p1 then Chain3Step212.M'.d8 else p2
        d128 : if true then if true then Bool else Bool else if false then Bool else Bool
        d128 = if if true then Chain3Step212.M'.d36 else Chain3Step212.M'.d85 then if d121 then Chain3Step212.M'.d12 else true else if Chain3Step212.M'.d58 then Chain3Step212.M'.d95 else true