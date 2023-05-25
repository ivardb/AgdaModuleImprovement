module Chain3Test6  where
    import Chain3Step26
    open import Chain3Step26 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else x4 ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = if if p3 then p1 else Chain3Step26.M'.d71 then if p3 then p1 else Chain3Step26.M'.d30 else if Chain3Step26.M'.d5 then Chain3Step26.M'.d45 else true
        d7 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> false ) ) ) $ ( true ) ) ) ) $ ( if d5 then p1 else Chain3Step26.M'.d119 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if Chain3Step26.M'.d49 then true else d7 then if d5 then Chain3Step26.M'.d54 else d5 else if p3 then p3 else Chain3Step26.M'.d18
        d14 : if false then if false then Bool else Bool else if true then Bool else Bool
        d14 = if if Chain3Step26.M'.d5 then p1 else p3 then if Chain3Step26.M'.d54 then p1 else d7 else if Chain3Step26.M'.d40 then Chain3Step26.M'.d24 else d11
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then x16 else Bool ) ) ) $ ( if false then Bool else Bool )
        d15 = if if true then Chain3Step26.M'.d52 else true then if d11 then true else Chain3Step26.M'.d83 else if Chain3Step26.M'.d18 then true else Chain3Step26.M'.d89
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = if if Chain3Step26.M'.d51 then Chain3Step26.M'.d89 else Chain3Step26.M'.d31 then if true then p3 else Chain3Step26.M'.d24 else if Chain3Step26.M'.d50 then Chain3Step26.M'.d71 else Chain3Step26.M'.d24
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = if if Chain3Step26.M'.d110 then Chain3Step26.M'.d78 else d7 then if d11 then Chain3Step26.M'.d52 else false else if true then p3 else Chain3Step26.M'.d61
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then x22 else Bool ) ) ) $ ( if true then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> Chain3Step26.M'.d89 ) ) ) $ ( true ) ) ) ) $ ( if Chain3Step26.M'.d29 then d7 else Chain3Step26.M'.d5 )
        d23 : if false then if false then Bool else Bool else if true then Bool else Bool
        d23 = if if p3 then p1 else p3 then if d7 then false else p1 else if p1 then Chain3Step26.M'.d8 else Chain3Step26.M'.d37
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> d17 ) ) ) $ ( d23 ) ) ) ) $ ( if d5 then Chain3Step26.M'.d45 else Chain3Step26.M'.d116 )
        d27 : if true then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if true then true else Chain3Step26.M'.d58 then if true then Chain3Step26.M'.d80 else true else if Chain3Step26.M'.d10 then p3 else false
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d5 then d18 else false ) ) ) $ ( if true then d15 else d24 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then x35 else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> d28 ) ) ) $ ( Chain3Step26.M'.d61 ) ) ) ) $ ( if Chain3Step26.M'.d91 then p1 else Chain3Step26.M'.d111 )
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = if if d24 then d11 else Chain3Step26.M'.d50 then if true then Chain3Step26.M'.d51 else Chain3Step26.M'.d24 else if d14 then p1 else Chain3Step26.M'.d8
        d37 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> false ) ) ) $ ( Chain3Step26.M'.d49 ) ) ) ) $ ( if d14 then Chain3Step26.M'.d114 else Chain3Step26.M'.d76 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d42 = if if true then false else Chain3Step26.M'.d49 then if Chain3Step26.M'.d119 then Chain3Step26.M'.d116 else Chain3Step26.M'.d5 else if true then p3 else Chain3Step26.M'.d81
        d45 : if true then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> p1 ) ) ) $ ( Chain3Step26.M'.d29 ) ) ) ) $ ( if d24 then d14 else d24 )
        d48 : if false then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if x49 then Chain3Step26.M'.d31 else Chain3Step26.M'.d50 ) ) ) $ ( if true then Chain3Step26.M'.d47 else Chain3Step26.M'.d119 )
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = if if Chain3Step26.M'.d21 then p1 else p1 then if Chain3Step26.M'.d91 then p1 else Chain3Step26.M'.d74 else if false then Chain3Step26.M'.d119 else d18
        d51 : if false then if true then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> Chain3Step26.M'.d21 ) ) ) $ ( Chain3Step26.M'.d109 ) ) ) ) $ ( if Chain3Step26.M'.d37 then p1 else d18 )
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if false then Chain3Step26.M'.d71 else d51 then if p1 then d23 else Chain3Step26.M'.d116 else if Chain3Step26.M'.d96 then Chain3Step26.M'.d30 else d27
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else x56 ) ) ) $ ( if false then Bool else Bool )
        d55 = if if Chain3Step26.M'.d45 then Chain3Step26.M'.d108 else d5 then if p3 then true else d24 else if Chain3Step26.M'.d47 then d27 else p3
        d57 : if false then if true then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if Chain3Step26.M'.d52 then p3 else false ) ) ) $ ( if d37 then Chain3Step26.M'.d54 else Chain3Step26.M'.d91 )
        d59 : if true then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if Chain3Step26.M'.d45 then d24 else p3 ) ) ) $ ( if d23 then true else Chain3Step26.M'.d52 )
        d61 : if false then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if p3 then Chain3Step26.M'.d37 else Chain3Step26.M'.d68 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> p1 ) ) ) $ ( Chain3Step26.M'.d81 ) ) ) ) $ ( if Chain3Step26.M'.d61 then Chain3Step26.M'.d109 else true )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x71 ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if if Chain3Step26.M'.d97 then p3 else true then if Chain3Step26.M'.d37 then false else false else if Chain3Step26.M'.d114 then Chain3Step26.M'.d55 else p1
        d72 : if true then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if d42 then Chain3Step26.M'.d55 else true then if Chain3Step26.M'.d37 then Chain3Step26.M'.d30 else false else if Chain3Step26.M'.d80 then Chain3Step26.M'.d50 else p1
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = if if Chain3Step26.M'.d91 then false else false then if Chain3Step26.M'.d55 then true else Chain3Step26.M'.d54 else if p1 then true else Chain3Step26.M'.d78
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( x77 ) ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if d64 then false else Chain3Step26.M'.d49 ) ) ) $ ( if d64 then p1 else Chain3Step26.M'.d108 )
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if p1 then x80 else Chain3Step26.M'.d5 ) ) ) $ ( if Chain3Step26.M'.d89 then d37 else p1 )
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = if if p3 then Chain3Step26.M'.d10 else Chain3Step26.M'.d102 then if d19 then p1 else p1 else if d19 then Chain3Step26.M'.d58 else false
        d82 : if true then if false then Bool else Bool else if false then Bool else Bool
        d82 = if if false then Chain3Step26.M'.d49 else p3 then if d57 then p1 else false else if Chain3Step26.M'.d13 then p3 else Chain3Step26.M'.d78
        d83 : if false then if false then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if Chain3Step26.M'.d119 then x84 else d37 ) ) ) $ ( if d45 then Chain3Step26.M'.d97 else d61 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then x88 else x88 ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> x87 ) ) ) $ ( Chain3Step26.M'.d108 ) ) ) ) $ ( if p1 then p1 else Chain3Step26.M'.d45 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> x92 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> false ) ) ) $ ( Chain3Step26.M'.d74 ) ) ) ) $ ( if false then p1 else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if d11 then d27 else Chain3Step26.M'.d71 then if false then p1 else d36 else if d64 then d23 else Chain3Step26.M'.d64
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( x99 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if Chain3Step26.M'.d8 then p3 else d14 ) ) ) $ ( if Chain3Step26.M'.d54 then Chain3Step26.M'.d108 else p1 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> Chain3Step26.M'.d119 ) ) ) $ ( d89 ) ) ) ) $ ( if false then Chain3Step26.M'.d75 else false )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if p3 then d51 else p1 ) ) ) $ ( if Chain3Step26.M'.d81 then true else Chain3Step26.M'.d80 )
        d108 : if false then if false then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if Chain3Step26.M'.d100 then x109 else Chain3Step26.M'.d104 ) ) ) $ ( if p1 then p1 else d36 )
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> Chain3Step26.M'.d104 ) ) ) $ ( false ) ) ) ) $ ( if d108 then p3 else Chain3Step26.M'.d71 )
        d113 : if true then if false then Bool else Bool else if true then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> p1 ) ) ) $ ( p1 ) ) ) ) $ ( if d17 then d7 else Chain3Step26.M'.d10 )
        d116 : if false then if false then Bool else Bool else if true then Bool else Bool
        d116 = if if d89 then Chain3Step26.M'.d71 else Chain3Step26.M'.d104 then if Chain3Step26.M'.d5 then false else d83 else if Chain3Step26.M'.d83 then Chain3Step26.M'.d33 else true
        d117 : if false then if true then Bool else Bool else if true then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if p1 then Chain3Step26.M'.d47 else p1 ) ) ) $ ( if true then true else true )
        d119 : if true then if true then Bool else Bool else if true then Bool else Bool
        d119 = if if d45 then false else d82 then if d75 then true else p1 else if false then Chain3Step26.M'.d10 else p1
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if false then Bool else Bool )
        d120 = if if false then p1 else Chain3Step26.M'.d29 then if Chain3Step26.M'.d49 then Chain3Step26.M'.d75 else true else if Chain3Step26.M'.d29 then Chain3Step26.M'.d59 else d5
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if true then x124 else Bool ) ) ) $ ( if true then Bool else Bool )
        d123 = if if Chain3Step26.M'.d50 then d61 else Chain3Step26.M'.d54 then if p1 then Chain3Step26.M'.d74 else Chain3Step26.M'.d119 else if Chain3Step26.M'.d109 then Chain3Step26.M'.d5 else Chain3Step26.M'.d103
        d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if false then x127 else x127 ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if Chain3Step26.M'.d116 then p3 else false ) ) ) $ ( if p1 then d108 else Chain3Step26.M'.d49 )
        d128 : if false then if true then Bool else Bool else if false then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if true then Chain3Step26.M'.d61 else d19 ) ) ) $ ( if p3 then true else d82 )