module Chain3Test5  where
    import Chain3Step25
    open import Chain3Step25 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else Bool ) ) ) $ ( if true then Bool else Bool )
        d3 = if if false then true else p2 then if Chain3Step25.M'.d106 then p2 else Chain3Step25.M'.d86 else if true then p1 else p1
        d5 : if true then if true then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if Chain3Step25.M'.d106 then x6 else Chain3Step25.M'.d21 ) ) ) $ ( if p1 then Chain3Step25.M'.d120 else Chain3Step25.M'.d21 )
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> Chain3Step25.M'.d30 ) ) ) $ ( false ) ) ) ) $ ( if Chain3Step25.M'.d46 then d5 else Chain3Step25.M'.d64 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if p2 then d3 else Chain3Step25.M'.d43 then if d3 then Chain3Step25.M'.d106 else d3 else if p2 then Chain3Step25.M'.d21 else Chain3Step25.M'.d116
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else Bool ) ) ) $ ( if true then Bool else Bool )
        d13 = if if false then true else Chain3Step25.M'.d33 then if Chain3Step25.M'.d33 then Chain3Step25.M'.d13 else Chain3Step25.M'.d27 else if Chain3Step25.M'.d62 then Chain3Step25.M'.d86 else p1
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if d7 then true else d10 then if Chain3Step25.M'.d9 then true else Chain3Step25.M'.d103 else if Chain3Step25.M'.d36 then p1 else p2
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if true then x18 else x18 ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if Chain3Step25.M'.d21 then d7 else x17 ) ) ) $ ( if d3 then d10 else Chain3Step25.M'.d59 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if d10 then d13 else Chain3Step25.M'.d13 then if Chain3Step25.M'.d79 then Chain3Step25.M'.d27 else d3 else if false then true else Chain3Step25.M'.d116
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then x24 else x24 ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if Chain3Step25.M'.d106 then Chain3Step25.M'.d30 else p1 ) ) ) $ ( if Chain3Step25.M'.d77 then d13 else d13 )
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> d13 ) ) ) $ ( Chain3Step25.M'.d36 ) ) ) ) $ ( if p1 then true else true )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d28 = if if Chain3Step25.M'.d24 then Chain3Step25.M'.d98 else Chain3Step25.M'.d101 then if d19 then Chain3Step25.M'.d33 else Chain3Step25.M'.d118 else if true then p2 else d10
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if true then x33 else x33 ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> d15 ) ) ) $ ( Chain3Step25.M'.d19 ) ) ) ) $ ( if Chain3Step25.M'.d120 then Chain3Step25.M'.d30 else Chain3Step25.M'.d89 )
        d34 : if true then if false then Bool else Bool else if false then Bool else Bool
        d34 = if if true then Chain3Step25.M'.d21 else d28 then if Chain3Step25.M'.d30 then false else Chain3Step25.M'.d52 else if Chain3Step25.M'.d41 then p1 else p2
        d35 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if false then Bool else x38 ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> Chain3Step25.M'.d89 ) ) ) $ ( false ) ) ) ) $ ( if d22 then p1 else p1 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = if if d3 then Chain3Step25.M'.d49 else Chain3Step25.M'.d120 then if Chain3Step25.M'.d120 then Chain3Step25.M'.d90 else Chain3Step25.M'.d90 else if Chain3Step25.M'.d106 then d28 else p2
        d42 : if false then if true then Bool else Bool else if true then Bool else Bool
        d42 = if if Chain3Step25.M'.d113 then p2 else p2 then if p1 then Chain3Step25.M'.d89 else Chain3Step25.M'.d90 else if Chain3Step25.M'.d70 then false else p2
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then x45 else x45 ) ) ) $ ( if true then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if d22 then true else true ) ) ) $ ( if d15 then p2 else d34 )
        d46 : if true then if false then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> if Chain3Step25.M'.d70 then true else Chain3Step25.M'.d46 ) ) ) $ ( if p1 then p2 else false )
        d48 : if true then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if false then false else d3 ) ) ) $ ( if p2 then d34 else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then x52 else Bool ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if d34 then x51 else false ) ) ) $ ( if true then p2 else false )
        d53 : if false then if true then Bool else Bool else if false then Bool else Bool
        d53 = if if Chain3Step25.M'.d120 then Chain3Step25.M'.d94 else d48 then if d48 then Chain3Step25.M'.d75 else d46 else if Chain3Step25.M'.d67 then Chain3Step25.M'.d46 else Chain3Step25.M'.d70
        d54 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( x56 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> if false then d42 else Chain3Step25.M'.d67 ) ) ) $ ( if false then d35 else Chain3Step25.M'.d106 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if d50 then d28 else true then if d30 then Chain3Step25.M'.d62 else false else if p1 then Chain3Step25.M'.d70 else p2
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if false then x64 else Bool ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> Chain3Step25.M'.d43 ) ) ) $ ( d7 ) ) ) ) $ ( if false then Chain3Step25.M'.d17 else true )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d65 = if if Chain3Step25.M'.d46 then d54 else d5 then if Chain3Step25.M'.d36 then Chain3Step25.M'.d41 else true else if Chain3Step25.M'.d17 then d34 else Chain3Step25.M'.d115
        d67 : if true then if false then Bool else Bool else if true then Bool else Bool
        d67 = if if Chain3Step25.M'.d120 then p1 else Chain3Step25.M'.d78 then if p2 then p2 else true else if p2 then Chain3Step25.M'.d36 else Chain3Step25.M'.d118
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else Bool ) ) ) $ ( if false then Bool else Bool )
        d68 = if if true then p1 else d35 then if Chain3Step25.M'.d116 then d46 else d65 else if p2 then p2 else d67
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then x73 else Bool ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if Chain3Step25.M'.d73 then Chain3Step25.M'.d120 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( x77 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d15 ) ) ) $ ( Chain3Step25.M'.d17 ) ) ) ) $ ( if Chain3Step25.M'.d36 then false else d16 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if Chain3Step25.M'.d92 then Chain3Step25.M'.d21 else d43 then if Chain3Step25.M'.d79 then false else Chain3Step25.M'.d21 else if true then false else false
        d82 : if false then if false then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> Chain3Step25.M'.d13 ) ) ) $ ( Chain3Step25.M'.d79 ) ) ) ) $ ( if false then Chain3Step25.M'.d46 else false )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if Chain3Step25.M'.d33 then p2 else p2 then if p1 then Chain3Step25.M'.d9 else Chain3Step25.M'.d86 else if true then Chain3Step25.M'.d89 else Chain3Step25.M'.d106
        d88 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( Chain3Step25.M'.d67 ) ) ) ) $ ( if p2 then p2 else d5 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> if true then x94 else x94 ) ) ) $ ( if true then Bool else Bool )
        d93 = if if Chain3Step25.M'.d54 then Chain3Step25.M'.d86 else Chain3Step25.M'.d109 then if d67 then Chain3Step25.M'.d73 else Chain3Step25.M'.d118 else if Chain3Step25.M'.d116 then Chain3Step25.M'.d9 else d13
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else x98 ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> Chain3Step25.M'.d103 ) ) ) $ ( Chain3Step25.M'.d113 ) ) ) ) $ ( if p2 then Chain3Step25.M'.d57 else Chain3Step25.M'.d41 )
        d99 : if true then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if Chain3Step25.M'.d70 then p1 else false then if d19 then d65 else Chain3Step25.M'.d70 else if true then d19 else p2
        d100 : if false then if false then Bool else Bool else if true then Bool else Bool
        d100 = if if d95 then p2 else p2 then if d25 then Chain3Step25.M'.d21 else Chain3Step25.M'.d9 else if p1 then Chain3Step25.M'.d64 else Chain3Step25.M'.d52
        d101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if Chain3Step25.M'.d42 then p1 else Chain3Step25.M'.d27 ) ) ) $ ( if Chain3Step25.M'.d116 then Chain3Step25.M'.d42 else true )
        d103 : if false then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then Chain3Step25.M'.d91 else false ) ) ) $ ( if p1 then true else Chain3Step25.M'.d92 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else Bool ) ) ) $ ( if true then Bool else Bool )
        d105 = if if Chain3Step25.M'.d19 then false else false then if Chain3Step25.M'.d28 then Chain3Step25.M'.d42 else d3 else if false then d35 else Chain3Step25.M'.d38
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( x108 ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if if false then d54 else false then if d22 then d82 else false else if Chain3Step25.M'.d49 then p1 else true
        d110 : if true then if true then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if x111 then true else d42 ) ) ) $ ( if p2 then true else Chain3Step25.M'.d27 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> Bool ) ) ) $ ( x113 ) ) ) ) $ ( if false then Bool else Bool )
        d112 = if if Chain3Step25.M'.d103 then d5 else p1 then if Chain3Step25.M'.d19 then d46 else d3 else if Chain3Step25.M'.d17 then false else true
        d115 : if false then if true then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if x116 then Chain3Step25.M'.d17 else Chain3Step25.M'.d92 ) ) ) $ ( if true then d93 else Chain3Step25.M'.d80 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d117 = if if Chain3Step25.M'.d75 then Chain3Step25.M'.d13 else Chain3Step25.M'.d46 then if false then Chain3Step25.M'.d120 else false else if p1 then Chain3Step25.M'.d24 else true
        d120 : if false then if false then Bool else Bool else if true then Bool else Bool
        d120 = if if Chain3Step25.M'.d106 then Chain3Step25.M'.d70 else d88 then if p1 then Chain3Step25.M'.d115 else false else if true then d54 else Chain3Step25.M'.d78
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then x122 else x122 ) ) ) $ ( if true then Bool else Bool )
        d121 = if if d99 then Chain3Step25.M'.d67 else Chain3Step25.M'.d90 then if d25 then p1 else Chain3Step25.M'.d103 else if p2 then true else d67
        d123 : if true then if true then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if Chain3Step25.M'.d78 then false else x124 ) ) ) $ ( if Chain3Step25.M'.d28 then p2 else p2 )
        d125 : if true then if false then Bool else Bool else if false then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if d67 then Chain3Step25.M'.d38 else d3 ) ) ) $ ( if d25 then p1 else Chain3Step25.M'.d73 )
        d127 : if true then if false then Bool else Bool else if false then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if p2 then Chain3Step25.M'.d92 else p2 ) ) ) $ ( if Chain3Step25.M'.d91 then d103 else Chain3Step25.M'.d38 )