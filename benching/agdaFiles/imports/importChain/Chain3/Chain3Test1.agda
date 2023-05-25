module Chain3Test1  where
    import Chain3Step21
    open import Chain3Step21 using (Bool; true; false; ⊤; tt) public
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
        d3 = if if p2 then Chain3Step21.M'.d7 else Chain3Step21.M'.d33 then if Chain3Step21.M'.d105 then p1 else Chain3Step21.M'.d88 else if true then true else Chain3Step21.M'.d17
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( x6 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if d3 then d3 else p2 then if Chain3Step21.M'.d90 then p1 else p2 else if Chain3Step21.M'.d59 then d3 else false
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d8 = if if d5 then Chain3Step21.M'.d54 else d5 then if d5 then Chain3Step21.M'.d30 else p1 else if Chain3Step21.M'.d92 then d3 else d3
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( x13 ) ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> Chain3Step21.M'.d37 ) ) ) $ ( Chain3Step21.M'.d18 ) ) ) ) $ ( if Chain3Step21.M'.d9 then Chain3Step21.M'.d18 else true )
        d15 : if false then if false then Bool else Bool else if false then Bool else Bool
        d15 = if if d5 then Chain3Step21.M'.d94 else p2 then if Chain3Step21.M'.d87 then false else p1 else if Chain3Step21.M'.d17 then true else Chain3Step21.M'.d34
        d16 : if false then if false then Bool else Bool else if false then Bool else Bool
        d16 = if if p2 then false else p2 then if Chain3Step21.M'.d132 then d3 else p2 else if true then p1 else false
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> x18 ) ) ) $ ( d16 ) ) ) ) $ ( if false then Chain3Step21.M'.d27 else Chain3Step21.M'.d111 )
        d21 : if false then if true then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if Chain3Step21.M'.d90 then d16 else p2 ) ) ) $ ( if d10 then Chain3Step21.M'.d22 else Chain3Step21.M'.d56 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then x26 else x26 ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> Chain3Step21.M'.d56 ) ) ) $ ( Chain3Step21.M'.d61 ) ) ) ) $ ( if Chain3Step21.M'.d8 then Chain3Step21.M'.d113 else Chain3Step21.M'.d44 )
        d27 : if false then if false then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if Chain3Step21.M'.d82 then true else p2 ) ) ) $ ( if Chain3Step21.M'.d73 then d15 else Chain3Step21.M'.d70 )
        d29 : if false then if true then Bool else Bool else if true then Bool else Bool
        d29 = if if p2 then p1 else d10 then if Chain3Step21.M'.d7 then Chain3Step21.M'.d54 else d3 else if false then p2 else Chain3Step21.M'.d132
        d30 : if true then if true then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> Chain3Step21.M'.d123 ) ) ) $ ( false ) ) ) ) $ ( if p1 then Chain3Step21.M'.d132 else Chain3Step21.M'.d44 )
        d33 : if true then if true then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if Chain3Step21.M'.d88 then true else d15 ) ) ) $ ( if Chain3Step21.M'.d65 then false else p1 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x38 ) ) ) $ ( x37 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d3 then Chain3Step21.M'.d132 else Chain3Step21.M'.d115 ) ) ) $ ( if p1 then d17 else Chain3Step21.M'.d8 )
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = if if p2 then Chain3Step21.M'.d77 else Chain3Step21.M'.d33 then if Chain3Step21.M'.d94 then p2 else d29 else if Chain3Step21.M'.d118 then Chain3Step21.M'.d107 else p2
        d40 : if true then if false then Bool else Bool else if true then Bool else Bool
        d40 = if if p1 then p2 else d23 then if Chain3Step21.M'.d70 then Chain3Step21.M'.d118 else Chain3Step21.M'.d77 else if false then Chain3Step21.M'.d44 else false
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = if if d40 then d16 else p1 then if d40 then Chain3Step21.M'.d44 else false else if Chain3Step21.M'.d132 then false else p1
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d42 = if if p2 then Chain3Step21.M'.d127 else d8 then if false then p1 else d27 else if false then Chain3Step21.M'.d90 else d5
        d44 : if true then if true then Bool else Bool else if true then Bool else Bool
        d44 = if if false then Chain3Step21.M'.d102 else Chain3Step21.M'.d78 then if true then p2 else Chain3Step21.M'.d83 else if false then d33 else d41
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> true ) ) ) $ ( Chain3Step21.M'.d49 ) ) ) ) $ ( if d3 then Chain3Step21.M'.d94 else p1 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( x49 ) ) ) ) $ ( if false then Bool else Bool )
        d48 = if if true then false else Chain3Step21.M'.d83 then if Chain3Step21.M'.d102 then p2 else d10 else if d27 then Chain3Step21.M'.d87 else p2
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if d23 then Chain3Step21.M'.d96 else Chain3Step21.M'.d127 ) ) ) $ ( if p1 then d42 else p1 )
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = if if Chain3Step21.M'.d82 then Chain3Step21.M'.d73 else p2 then if Chain3Step21.M'.d70 then d21 else false else if Chain3Step21.M'.d33 then Chain3Step21.M'.d9 else Chain3Step21.M'.d107
        d56 : if true then if true then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> Chain3Step21.M'.d92 ) ) ) $ ( d8 ) ) ) ) $ ( if false then p1 else d33 )
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if Chain3Step21.M'.d96 then false else d55 ) ) ) $ ( if Chain3Step21.M'.d117 then Chain3Step21.M'.d22 else d41 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> Chain3Step21.M'.d60 ) ) ) $ ( p1 ) ) ) ) $ ( if true then d10 else Chain3Step21.M'.d33 )
        d66 : if true then if true then Bool else Bool else if true then Bool else Bool
        d66 = if if Chain3Step21.M'.d53 then false else d10 then if p2 then true else Chain3Step21.M'.d65 else if d33 then Chain3Step21.M'.d101 else Chain3Step21.M'.d127
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else Bool ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> Chain3Step21.M'.d115 ) ) ) $ ( true ) ) ) ) $ ( if d41 then d3 else d8 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x73 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d71 = if if Chain3Step21.M'.d127 then p1 else d16 then if true then Chain3Step21.M'.d56 else p1 else if false then false else Chain3Step21.M'.d90
        d74 : if false then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d27 ) ) ) $ ( Chain3Step21.M'.d14 ) ) ) ) $ ( if Chain3Step21.M'.d77 then Chain3Step21.M'.d34 else false )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d77 = if if false then Chain3Step21.M'.d61 else d35 then if Chain3Step21.M'.d123 then true else Chain3Step21.M'.d33 else if Chain3Step21.M'.d14 then p1 else p2
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d80 = if if d15 then p1 else p2 then if Chain3Step21.M'.d54 then p1 else Chain3Step21.M'.d105 else if true then Chain3Step21.M'.d61 else d74
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x84 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if Chain3Step21.M'.d102 then d40 else d30 ) ) ) $ ( if Chain3Step21.M'.d70 then Chain3Step21.M'.d27 else true )
        d86 : if false then if false then Bool else Bool else if false then Bool else Bool
        d86 = if if Chain3Step21.M'.d28 then Chain3Step21.M'.d56 else Chain3Step21.M'.d14 then if Chain3Step21.M'.d90 then Chain3Step21.M'.d14 else p1 else if Chain3Step21.M'.d113 then true else true
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if x88 then p1 else Chain3Step21.M'.d123 ) ) ) $ ( if Chain3Step21.M'.d25 then d23 else Chain3Step21.M'.d117 )
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = if if d74 then Chain3Step21.M'.d113 else d67 then if d55 then false else Chain3Step21.M'.d9 else if p2 then Chain3Step21.M'.d117 else true
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x94 ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> Chain3Step21.M'.d115 ) ) ) $ ( true ) ) ) ) $ ( if d10 then true else d86 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else x97 ) ) ) $ ( if true then Bool else Bool )
        d96 = if if Chain3Step21.M'.d107 then d33 else p2 then if false then false else Chain3Step21.M'.d60 else if Chain3Step21.M'.d17 then Chain3Step21.M'.d56 else true
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( x99 ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if Chain3Step21.M'.d53 then Chain3Step21.M'.d83 else Chain3Step21.M'.d115 then if Chain3Step21.M'.d14 then Chain3Step21.M'.d25 else p2 else if true then Chain3Step21.M'.d73 else Chain3Step21.M'.d9
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( x102 ) ) ) ) $ ( if false then Bool else Bool )
        d101 = if if false then false else Chain3Step21.M'.d27 then if true then Chain3Step21.M'.d30 else Chain3Step21.M'.d41 else if p2 then Chain3Step21.M'.d61 else d66
        d104 : if false then if false then Bool else Bool else if false then Bool else Bool
        d104 = if if Chain3Step21.M'.d41 then Chain3Step21.M'.d65 else Chain3Step21.M'.d96 then if false then d45 else p2 else if true then false else Chain3Step21.M'.d34
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> x108 ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if true then d67 else d67 ) ) ) $ ( if Chain3Step21.M'.d90 then p1 else Chain3Step21.M'.d41 )
        d109 : if true then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then Chain3Step21.M'.d54 else d96 ) ) ) $ ( if d40 then d77 else false )
        d111 : if true then if false then Bool else Bool else if false then Bool else Bool
        d111 = if if Chain3Step21.M'.d61 then true else d67 then if false then p1 else false else if p1 then Chain3Step21.M'.d41 else p1
        d112 : if true then if false then Bool else Bool else if false then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if Chain3Step21.M'.d118 then Chain3Step21.M'.d28 else d33 ) ) ) $ ( if Chain3Step21.M'.d65 then Chain3Step21.M'.d123 else true )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then Bool else x116 ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if d44 then p1 else d80 ) ) ) $ ( if Chain3Step21.M'.d115 then d3 else d91 )
        d117 : if false then if false then Bool else Bool else if true then Bool else Bool
        d117 = if if false then Chain3Step21.M'.d73 else Chain3Step21.M'.d83 then if p2 then Chain3Step21.M'.d14 else Chain3Step21.M'.d101 else if Chain3Step21.M'.d22 then d77 else d74
        d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if false then d39 else d71 ) ) ) $ ( if Chain3Step21.M'.d101 then false else Chain3Step21.M'.d44 )
        d122 : if true then if false then Bool else Bool else if false then Bool else Bool
        d122 = if if p1 then Chain3Step21.M'.d65 else false then if p2 then true else Chain3Step21.M'.d44 else if false then p1 else d21
        d123 : if true then if true then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( d86 ) ) ) ) $ ( if Chain3Step21.M'.d54 then Chain3Step21.M'.d132 else p1 )