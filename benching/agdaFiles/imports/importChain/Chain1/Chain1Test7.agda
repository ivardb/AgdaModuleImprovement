module Chain1Test7  where
    import Chain1Base7
    open import Chain1Base7 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then x2 else x2 ) ) ) $ ( Bool ) ) ( p3 : if false then Bool else Bool )  where
        d4 : if false then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( Chain1Base7.M.d58 ) $ ( if if p3 then Chain1Base7.M'.d78 else Chain1Base7.M'.d10 then if Chain1Base7.M'.d25 then Chain1Base7.M'.d61 else p1 else if Chain1Base7.M'.d68 then Chain1Base7.M'.d93 else true )
        d5 : if true then if false then Bool else Bool else if false then Bool else Bool
        d5 = if if true then Chain1Base7.M'.d87 else d4 then if p3 then p1 else d4 else if p3 then true else d4
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then x7 else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = if if Chain1Base7.M'.d60 then Chain1Base7.M'.d61 else d4 then if true then Chain1Base7.M'.d46 else d4 else if Chain1Base7.M'.d100 then d4 else p1
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if p1 then d4 else Chain1Base7.M'.d57 ) ) ) $ ( if d6 then Chain1Base7.M'.d96 else false )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d12 = ( Chain1Base7.M.d101 ) $ ( ( Chain1Base7.M.d3 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( Chain1Base7.M.d12 ) $ ( if true then true else Chain1Base7.M'.d120 ) ) ) ) $ ( if Chain1Base7.M'.d108 then p3 else d8 ) ) )
        d15 : if false then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if p3 then false else d5 then if d4 then Chain1Base7.M'.d120 else d5 else if p1 then Chain1Base7.M'.d24 else Chain1Base7.M'.d10
        d16 : if true then if false then Bool else Bool else if false then Bool else Bool
        d16 = ( Chain1Base7.M.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> false ) ) ) $ ( Chain1Base7.M'.d90 ) ) ) ) $ ( if p1 then Chain1Base7.M'.d10 else true ) )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d19 = ( Chain1Base7.M.d38 ) $ ( if if p1 then Chain1Base7.M'.d71 else false then if d15 then d4 else Chain1Base7.M'.d115 else if Chain1Base7.M'.d69 then Chain1Base7.M'.d108 else Chain1Base7.M'.d37 )
        d21 : if true then if false then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( Chain1Base7.M.d101 ) $ ( if Chain1Base7.M'.d73 then d12 else true ) ) ) ) $ ( if p1 then Chain1Base7.M'.d90 else Chain1Base7.M'.d97 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d23 = ( Chain1Base7.M.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d5 ) ) ) $ ( Chain1Base7.M'.d7 ) ) ) ) $ ( if Chain1Base7.M'.d51 then Chain1Base7.M'.d17 else Chain1Base7.M'.d51 ) )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then x28 else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = ( Chain1Base7.M.d51 ) $ ( ( Chain1Base7.M.d29 ) $ ( ( Chain1Base7.M.d22 ) $ ( if if p3 then false else Chain1Base7.M'.d22 then if Chain1Base7.M'.d69 then d12 else d19 else if Chain1Base7.M'.d42 then p3 else Chain1Base7.M'.d68 ) ) )
        d29 : if true then if false then Bool else Bool else if false then Bool else Bool
        d29 = ( Chain1Base7.M.d6 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( Chain1Base7.M.d101 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x31 -> Chain1Base7.M'.d100 ) ) ) $ ( true ) ) ) ) ) $ ( if Chain1Base7.M'.d60 then d21 else d8 ) )
        d32 : if false then if false then Bool else Bool else if false then Bool else Bool
        d32 = if if Chain1Base7.M'.d25 then true else p3 then if d15 then p3 else Chain1Base7.M'.d79 else if Chain1Base7.M'.d21 then Chain1Base7.M'.d108 else false
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if p1 then d29 else d5 then if false then Chain1Base7.M'.d6 else true else if d27 then true else false
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( x35 ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( Chain1Base7.M.d54 ) $ ( if if p3 then p3 else Chain1Base7.M'.d22 then if d15 then Chain1Base7.M'.d37 else d4 else if Chain1Base7.M'.d38 then d4 else false )
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = if if Chain1Base7.M'.d110 then false else Chain1Base7.M'.d57 then if p1 then d32 else p1 else if true then Chain1Base7.M'.d49 else Chain1Base7.M'.d120
        d38 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( Chain1Base7.M.d36 ) $ ( ( Chain1Base7.M.d108 ) $ ( ( Chain1Base7.M.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x40 -> false ) ) ) $ ( true ) ) ) ) ) ) ) $ ( if Chain1Base7.M'.d24 then true else d27 )
        d42 : if false then if false then Bool else Bool else if false then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if Chain1Base7.M'.d37 then x43 else d33 ) ) ) $ ( if d23 then d33 else p3 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( Chain1Base7.M.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( Chain1Base7.M.d120 ) $ ( ( Chain1Base7.M.d101 ) $ ( ( Chain1Base7.M.d57 ) $ ( ( Chain1Base7.M.d68 ) $ ( ( Chain1Base7.M.d12 ) $ ( if Chain1Base7.M'.d34 then p1 else false ) ) ) ) ) ) ) ) $ ( if p3 then d15 else Chain1Base7.M'.d101 ) )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( x49 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( Chain1Base7.M.d110 ) $ ( if if Chain1Base7.M'.d78 then d16 else Chain1Base7.M'.d37 then if Chain1Base7.M'.d22 then Chain1Base7.M'.d96 else Chain1Base7.M'.d49 else if Chain1Base7.M'.d79 then true else true )
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( Chain1Base7.M.d64 ) $ ( ( Chain1Base7.M.d42 ) $ ( ( Chain1Base7.M.d100 ) $ ( if if Chain1Base7.M'.d83 then d12 else Chain1Base7.M'.d123 then if Chain1Base7.M'.d51 then Chain1Base7.M'.d22 else p1 else if d16 then Chain1Base7.M'.d58 else d42 ) ) )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then Bool else x55 ) ) ) $ ( if false then Bool else Bool )
        d52 = ( Chain1Base7.M.d39 ) $ ( ( Chain1Base7.M.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( Chain1Base7.M.d78 ) $ ( ( Chain1Base7.M.d123 ) $ ( ( Chain1Base7.M.d96 ) $ ( ( Chain1Base7.M.d24 ) $ ( ( Chain1Base7.M.d103 ) $ ( ( Chain1Base7.M.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x54 -> d12 ) ) ) $ ( d42 ) ) ) ) ) ) ) ) ) ) $ ( if Chain1Base7.M'.d34 then Chain1Base7.M'.d78 else d48 ) ) )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d56 = ( Chain1Base7.M.d51 ) $ ( ( Chain1Base7.M.d42 ) $ ( ( Chain1Base7.M.d103 ) $ ( if if Chain1Base7.M'.d60 then d23 else Chain1Base7.M'.d79 then if d6 then Chain1Base7.M'.d22 else Chain1Base7.M'.d36 else if Chain1Base7.M'.d57 then false else Chain1Base7.M'.d36 ) ) )
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( Chain1Base7.M.d108 ) $ ( ( Chain1Base7.M.d87 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d29 ) ) ) $ ( d38 ) ) ) ) ) ) $ ( if Chain1Base7.M'.d17 then false else Chain1Base7.M'.d68 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if p1 then Chain1Base7.M'.d37 else Chain1Base7.M'.d12 ) ) ) $ ( if p3 then p1 else Chain1Base7.M'.d39 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x68 ) ) ) $ ( x68 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> Chain1Base7.M'.d58 ) ) ) $ ( p3 ) ) ) ) $ ( if p3 then d51 else Chain1Base7.M'.d123 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d70 = ( Chain1Base7.M.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> true ) ) ) $ ( Chain1Base7.M'.d3 ) ) ) ) $ ( if p3 then p3 else Chain1Base7.M'.d113 ) )
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = if if Chain1Base7.M'.d17 then p1 else d37 then if Chain1Base7.M'.d113 then p1 else true else if Chain1Base7.M'.d24 then Chain1Base7.M'.d60 else d33
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = if if p1 then Chain1Base7.M'.d42 else Chain1Base7.M'.d113 then if Chain1Base7.M'.d3 then d70 else Chain1Base7.M'.d34 else if d34 then Chain1Base7.M'.d38 else false
        d78 : if false then if true then Bool else Bool else if false then Bool else Bool
        d78 = ( Chain1Base7.M.d83 ) $ ( ( Chain1Base7.M.d123 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> Chain1Base7.M'.d49 ) ) ) $ ( d51 ) ) ) ) $ ( if true then false else d65 ) ) )
        d81 : if false then if false then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( Chain1Base7.M.d10 ) $ ( ( Chain1Base7.M.d6 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x83 -> Chain1Base7.M'.d120 ) ) ) $ ( p1 ) ) ) ) ) ) $ ( if d52 then p3 else Chain1Base7.M'.d96 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x88 ) ) ) $ ( x87 ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( Chain1Base7.M.d78 ) $ ( ( Chain1Base7.M.d113 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> Chain1Base7.M'.d60 ) ) ) $ ( Chain1Base7.M'.d54 ) ) ) ) $ ( if Chain1Base7.M'.d21 then Chain1Base7.M'.d110 else Chain1Base7.M'.d7 ) ) )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then x92 else x92 ) ) ) $ ( if false then Bool else Bool )
        d89 = ( Chain1Base7.M.d100 ) $ ( ( Chain1Base7.M.d87 ) $ ( ( Chain1Base7.M.d54 ) $ ( ( Chain1Base7.M.d54 ) $ ( ( Chain1Base7.M.d101 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> false ) ) ) $ ( d5 ) ) ) ) $ ( if Chain1Base7.M'.d69 then Chain1Base7.M'.d7 else Chain1Base7.M'.d14 ) ) ) ) ) )
        d93 : if false then if true then Bool else Bool else if true then Bool else Bool
        d93 = ( Chain1Base7.M.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if p3 then d8 else Chain1Base7.M'.d10 ) ) ) $ ( if d75 then Chain1Base7.M'.d39 else false ) )
        d95 : if false then if true then Bool else Bool else if false then Bool else Bool
        d95 = ( Chain1Base7.M.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> Chain1Base7.M'.d110 ) ) ) $ ( d19 ) ) ) ) $ ( if Chain1Base7.M'.d22 then Chain1Base7.M'.d123 else p3 ) )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( x101 ) ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d12 ) ) ) $ ( true ) ) ) ) $ ( if false then true else Chain1Base7.M'.d71 )
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( Chain1Base7.M.d123 ) $ ( if if true then d98 else Chain1Base7.M'.d42 then if Chain1Base7.M'.d103 then Chain1Base7.M'.d71 else Chain1Base7.M'.d51 else if d32 then Chain1Base7.M'.d37 else Chain1Base7.M'.d103 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> Bool ) ) ) $ ( x105 ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( Chain1Base7.M.d102 ) $ ( if if true then Chain1Base7.M'.d93 else p3 then if Chain1Base7.M'.d102 then false else true else if Chain1Base7.M'.d113 then true else d62 )
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = if if Chain1Base7.M'.d39 then p1 else false then if true then Chain1Base7.M'.d10 else false else if false then Chain1Base7.M'.d58 else p3
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then x109 else x109 ) ) ) $ ( if true then Bool else Bool )
        d108 = if if p1 then Chain1Base7.M'.d73 else Chain1Base7.M'.d49 then if true then true else d56 else if Chain1Base7.M'.d90 then Chain1Base7.M'.d54 else true
        d110 : if true then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( Chain1Base7.M.d79 ) $ ( ( Chain1Base7.M.d60 ) $ ( if if Chain1Base7.M'.d57 then Chain1Base7.M'.d17 else Chain1Base7.M'.d61 then if Chain1Base7.M'.d108 then Chain1Base7.M'.d22 else true else if Chain1Base7.M'.d24 then d52 else d75 ) )
        d111 : if true then if false then Bool else Bool else if true then Bool else Bool
        d111 = ( Chain1Base7.M.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( Chain1Base7.M.d79 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x113 -> false ) ) ) $ ( Chain1Base7.M'.d103 ) ) ) ) ) $ ( if Chain1Base7.M'.d57 then Chain1Base7.M'.d46 else Chain1Base7.M'.d74 ) )
        d114 : if false then if false then Bool else Bool else if true then Bool else Bool
        d114 = if if p1 then false else Chain1Base7.M'.d87 then if Chain1Base7.M'.d97 then true else true else if d98 then d78 else false
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then x116 else Bool ) ) ) $ ( if true then Bool else Bool )
        d115 = ( Chain1Base7.M.d10 ) $ ( ( Chain1Base7.M.d71 ) $ ( if if true then false else false then if p3 then true else Chain1Base7.M'.d69 else if Chain1Base7.M'.d25 then d5 else d5 ) )
        d117 : if false then if false then Bool else Bool else if true then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( Chain1Base7.M.d103 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> p1 ) ) ) $ ( Chain1Base7.M'.d12 ) ) ) ) ) $ ( if Chain1Base7.M'.d110 then Chain1Base7.M'.d96 else false )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( x121 ) ) ) ) $ ( if false then Bool else Bool )
        d120 = ( Chain1Base7.M.d14 ) $ ( if if false then Chain1Base7.M'.d36 else true then if p3 then Chain1Base7.M'.d3 else Chain1Base7.M'.d42 else if Chain1Base7.M'.d25 then d29 else false )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then x125 else x125 ) ) ) $ ( if false then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if true then Chain1Base7.M'.d87 else d12 ) ) ) $ ( if d51 then p3 else Chain1Base7.M'.d60 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if false then x127 else x127 ) ) ) $ ( if false then Bool else Bool )
        d126 = if if true then Chain1Base7.M'.d14 else p1 then if Chain1Base7.M'.d49 then d89 else true else if Chain1Base7.M'.d22 then Chain1Base7.M'.d61 else d111
        d128 : if true then if true then Bool else Bool else if true then Bool else Bool
        d128 = ( Chain1Base7.M.d25 ) $ ( ( Chain1Base7.M.d64 ) $ ( ( Chain1Base7.M.d113 ) $ ( ( Chain1Base7.M.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( Chain1Base7.M.d12 ) $ ( ( Chain1Base7.M.d12 ) $ ( ( Chain1Base7.M.d38 ) $ ( if p3 then Chain1Base7.M'.d110 else p3 ) ) ) ) ) ) $ ( if p1 then Chain1Base7.M'.d110 else p1 ) ) ) ) )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if Chain1Base7.M'.d51 then d48 else p1 ) ) ) $ ( if Chain1Base7.M'.d60 then Chain1Base7.M'.d113 else p1 )