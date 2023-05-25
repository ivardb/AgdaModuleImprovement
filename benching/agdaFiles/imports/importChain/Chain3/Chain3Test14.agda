module Chain3Test14  where
    import Chain3Step214
    open import Chain3Step214 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if true then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then Bool else x3 ) ) ) $ ( Bool ) )  where
        d4 : if false then if false then Bool else Bool else if false then Bool else Bool
        d4 = if if Chain3Step214.M'.d102 then Chain3Step214.M'.d29 else p2 then if false then Chain3Step214.M'.d27 else true else if p2 then Chain3Step214.M'.d7 else Chain3Step214.M'.d90
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if true then Chain3Step214.M'.d120 else Chain3Step214.M'.d131 ) ) ) $ ( if p2 then Chain3Step214.M'.d98 else p2 )
        d7 : if false then if true then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if Chain3Step214.M'.d53 then x8 else x8 ) ) ) $ ( if p2 then Chain3Step214.M'.d17 else Chain3Step214.M'.d27 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( x11 ) ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if d5 then Chain3Step214.M'.d17 else Chain3Step214.M'.d52 ) ) ) $ ( if d5 then Chain3Step214.M'.d36 else p2 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then x15 else x15 ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if Chain3Step214.M'.d42 then d5 else x14 ) ) ) $ ( if d7 then Chain3Step214.M'.d111 else p2 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( x19 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( d7 ) ) ) ) $ ( if Chain3Step214.M'.d45 then p1 else true )
        d21 : if true then if true then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> Chain3Step214.M'.d29 ) ) ) $ ( Chain3Step214.M'.d84 ) ) ) ) $ ( if d7 then Chain3Step214.M'.d63 else Chain3Step214.M'.d77 )
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if false then Chain3Step214.M'.d39 else d7 ) ) ) $ ( if d7 then d7 else true )
        d26 : if false then if false then Bool else Bool else if true then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> Chain3Step214.M'.d77 ) ) ) $ ( Chain3Step214.M'.d97 ) ) ) ) $ ( if false then true else Chain3Step214.M'.d51 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> Bool ) ) ) $ ( x31 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then true else d24 ) ) ) $ ( if d24 then Chain3Step214.M'.d102 else p1 )
        d33 : if true then if false then Bool else Bool else if true then Bool else Bool
        d33 = if if Chain3Step214.M'.d27 then p2 else Chain3Step214.M'.d7 then if false then p2 else Chain3Step214.M'.d90 else if true then d21 else p1
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then x35 else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = if if Chain3Step214.M'.d123 then Chain3Step214.M'.d45 else Chain3Step214.M'.d74 then if d33 then d29 else d29 else if d26 then true else p2
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( x39 ) ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> p1 ) ) ) $ ( Chain3Step214.M'.d107 ) ) ) ) $ ( if true then Chain3Step214.M'.d39 else true )
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = if if p2 then Chain3Step214.M'.d20 else Chain3Step214.M'.d36 then if Chain3Step214.M'.d54 then p2 else Chain3Step214.M'.d54 else if p1 then Chain3Step214.M'.d36 else d9
        d42 : if true then if true then Bool else Bool else if false then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if Chain3Step214.M'.d93 then Chain3Step214.M'.d17 else Chain3Step214.M'.d131 ) ) ) $ ( if d26 then d24 else Chain3Step214.M'.d108 )
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> x46 ) ) ) $ ( Chain3Step214.M'.d64 ) ) ) ) $ ( if p2 then d13 else Chain3Step214.M'.d45 )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = if if p1 then d16 else false then if d13 then p1 else Chain3Step214.M'.d53 else if Chain3Step214.M'.d13 then true else p2
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x49 ) ) ) $ ( x49 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = if if false then true else Chain3Step214.M'.d136 then if Chain3Step214.M'.d71 then false else Chain3Step214.M'.d80 else if d13 then Chain3Step214.M'.d130 else d42
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else Bool ) ) ) $ ( if false then Bool else Bool )
        d51 = if if p2 then d9 else Chain3Step214.M'.d99 then if false then p2 else false else if Chain3Step214.M'.d126 then Chain3Step214.M'.d29 else Chain3Step214.M'.d63
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( x56 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> true ) ) ) $ ( d4 ) ) ) ) $ ( if p1 then true else p1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( x59 ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if if d24 then Chain3Step214.M'.d63 else d33 then if Chain3Step214.M'.d102 then Chain3Step214.M'.d77 else Chain3Step214.M'.d28 else if d53 then Chain3Step214.M'.d108 else true
        d61 : if false then if false then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( d33 ) ) ) ) $ ( if false then p1 else Chain3Step214.M'.d58 )
        d64 : if false then if false then Bool else Bool else if false then Bool else Bool
        d64 = if if Chain3Step214.M'.d84 then d61 else p1 then if Chain3Step214.M'.d107 then false else p1 else if Chain3Step214.M'.d54 then Chain3Step214.M'.d51 else Chain3Step214.M'.d98
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = if if p2 then p2 else Chain3Step214.M'.d123 then if Chain3Step214.M'.d99 then false else d48 else if Chain3Step214.M'.d108 then p1 else d48
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = if if p1 then p1 else Chain3Step214.M'.d29 then if true then Chain3Step214.M'.d45 else Chain3Step214.M'.d23 else if p2 then p2 else Chain3Step214.M'.d17
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if Chain3Step214.M'.d48 then Chain3Step214.M'.d31 else true ) ) ) $ ( if d4 then Chain3Step214.M'.d105 else false )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if true then x74 else x74 ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> Chain3Step214.M'.d54 ) ) ) $ ( Chain3Step214.M'.d42 ) ) ) ) $ ( if true then Chain3Step214.M'.d45 else p1 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then x78 else Bool ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> d53 ) ) ) $ ( x76 ) ) ) ) $ ( if d44 then Chain3Step214.M'.d83 else true )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( x81 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if Chain3Step214.M'.d105 then false else d65 ) ) ) $ ( if Chain3Step214.M'.d28 then false else p2 )
        d83 : if false then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if Chain3Step214.M'.d17 then p1 else Chain3Step214.M'.d58 then if true then d24 else p1 else if false then d42 else Chain3Step214.M'.d68
        d84 : if true then if false then Bool else Bool else if false then Bool else Bool
        d84 = if if Chain3Step214.M'.d27 then d5 else Chain3Step214.M'.d105 then if Chain3Step214.M'.d84 then Chain3Step214.M'.d42 else Chain3Step214.M'.d63 else if p2 then d16 else Chain3Step214.M'.d97
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = if if Chain3Step214.M'.d93 then p2 else Chain3Step214.M'.d58 then if d48 then Chain3Step214.M'.d93 else false else if d61 then Chain3Step214.M'.d97 else false
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then x87 else x87 ) ) ) $ ( if false then Bool else Bool )
        d86 = if if Chain3Step214.M'.d10 then p1 else false then if d41 then Chain3Step214.M'.d52 else p2 else if d47 then Chain3Step214.M'.d71 else false
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if true then d26 else p2 then if Chain3Step214.M'.d105 then d53 else p1 else if p1 then Chain3Step214.M'.d36 else Chain3Step214.M'.d45
        d91 : if true then if true then Bool else Bool else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if Chain3Step214.M'.d120 then Chain3Step214.M'.d115 else d84 ) ) ) $ ( if Chain3Step214.M'.d53 then p2 else d44 )
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> Chain3Step214.M'.d39 ) ) ) $ ( d58 ) ) ) ) $ ( if p2 then p1 else Chain3Step214.M'.d51 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d96 = if if p1 then Chain3Step214.M'.d28 else true then if d61 then false else d21 else if Chain3Step214.M'.d83 then p1 else false
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( x99 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = if if Chain3Step214.M'.d27 then false else p1 then if d67 then p1 else Chain3Step214.M'.d108 else if true then p1 else Chain3Step214.M'.d108
        d101 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if true then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if Chain3Step214.M'.d139 then p1 else Chain3Step214.M'.d131 ) ) ) $ ( if false then d29 else true )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then x106 else x106 ) ) ) $ ( if true then Bool else Bool )
        d105 = if if Chain3Step214.M'.d31 then Chain3Step214.M'.d120 else Chain3Step214.M'.d39 then if d75 then Chain3Step214.M'.d130 else false else if false then Chain3Step214.M'.d126 else Chain3Step214.M'.d24
        d107 : if false then if false then Bool else Bool else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if p1 then d53 else Chain3Step214.M'.d52 ) ) ) $ ( if d88 then true else Chain3Step214.M'.d119 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
        d109 = if if Chain3Step214.M'.d139 then Chain3Step214.M'.d17 else false then if Chain3Step214.M'.d53 then p1 else false else if d41 then false else Chain3Step214.M'.d99
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then x113 else Bool ) ) ) $ ( if true then Bool else Bool )
        d112 = if if p2 then Chain3Step214.M'.d97 else true then if p2 then Chain3Step214.M'.d23 else d36 else if Chain3Step214.M'.d17 then true else Chain3Step214.M'.d123
        d114 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if true then x117 else Bool ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> Chain3Step214.M'.d63 ) ) ) $ ( d107 ) ) ) ) $ ( if Chain3Step214.M'.d39 then Chain3Step214.M'.d90 else Chain3Step214.M'.d119 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> true ) ) ) $ ( Chain3Step214.M'.d10 ) ) ) ) $ ( if true then false else false )
        d123 : if false then if false then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> Chain3Step214.M'.d48 ) ) ) $ ( Chain3Step214.M'.d42 ) ) ) ) $ ( if p1 then p1 else Chain3Step214.M'.d39 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> x129 ) ) ) $ ( x129 ) ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> false ) ) ) $ ( Chain3Step214.M'.d68 ) ) ) ) $ ( if d118 then false else p2 )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if false then x132 else Bool ) ) ) $ ( if true then Bool else Bool )
        d131 = if if true then p1 else d21 then if true then Chain3Step214.M'.d87 else d5 else if false then Chain3Step214.M'.d45 else false
        d133 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d133 = if if d85 then d34 else true then if p1 then Chain3Step214.M'.d39 else Chain3Step214.M'.d74 else if d61 then true else d7
        d136 : if false then if true then Bool else Bool else if true then Bool else Bool
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( Bool -> Bool ) ∋ ( ( λ x138 -> d44 ) ) ) $ ( d67 ) ) ) ) $ ( if true then p1 else p2 )