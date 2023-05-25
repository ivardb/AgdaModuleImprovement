module Chain3Test8  where
    import Chain3Step28
    open import Chain3Step28 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else Bool ) ) ) $ ( Bool ) )  where
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = if if Chain3Step28.M'.d76 then true else p3 then if Chain3Step28.M'.d24 then Chain3Step28.M'.d53 else true else if Chain3Step28.M'.d87 then p3 else p3
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d5 then Chain3Step28.M'.d101 else true ) ) ) $ ( if Chain3Step28.M'.d5 then Chain3Step28.M'.d53 else p1 )
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> Chain3Step28.M'.d16 ) ) ) $ ( true ) ) ) ) $ ( if d6 then p1 else Chain3Step28.M'.d87 )
        d12 : if false then if false then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if d9 then d9 else Chain3Step28.M'.d66 ) ) ) $ ( if d9 then true else Chain3Step28.M'.d137 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d14 = if if d6 then Chain3Step28.M'.d87 else Chain3Step28.M'.d78 then if Chain3Step28.M'.d9 then Chain3Step28.M'.d66 else p3 else if d6 then p1 else p3
        d16 : if true then if false then Bool else Bool else if true then Bool else Bool
        d16 = if if d9 then d12 else p1 then if p1 then p1 else false else if d12 then p1 else Chain3Step28.M'.d62
        d17 : if false then if true then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if false then Chain3Step28.M'.d24 else false ) ) ) $ ( if true then p1 else Chain3Step28.M'.d122 )
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = if if Chain3Step28.M'.d66 then Chain3Step28.M'.d98 else p1 then if Chain3Step28.M'.d35 then Chain3Step28.M'.d107 else false else if p1 then p3 else d5
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then Bool else x22 ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if x21 then Chain3Step28.M'.d62 else d14 ) ) ) $ ( if false then Chain3Step28.M'.d66 else p1 )
        d23 : if true then if true then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if Chain3Step28.M'.d72 then p1 else Chain3Step28.M'.d26 ) ) ) $ ( if p3 then p1 else false )
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if Chain3Step28.M'.d71 then Chain3Step28.M'.d48 else Chain3Step28.M'.d119 ) ) ) $ ( if true then Chain3Step28.M'.d14 else Chain3Step28.M'.d10 )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if d16 then Chain3Step28.M'.d129 else Chain3Step28.M'.d48 ) ) ) $ ( if false then true else Chain3Step28.M'.d132 )
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = if if Chain3Step28.M'.d78 then Chain3Step28.M'.d73 else d16 then if p3 then Chain3Step28.M'.d76 else false else if Chain3Step28.M'.d68 then p1 else false
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then Bool else x31 ) ) ) $ ( if true then Bool else Bool )
        d30 = if if Chain3Step28.M'.d101 then p3 else Chain3Step28.M'.d33 then if Chain3Step28.M'.d48 then d14 else d12 else if Chain3Step28.M'.d66 then d20 else d16
        d32 : if true then if true then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if true then Chain3Step28.M'.d30 else Chain3Step28.M'.d127 ) ) ) $ ( if d6 then p3 else Chain3Step28.M'.d34 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x37 ) ) ) $ ( x37 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> Chain3Step28.M'.d76 ) ) ) $ ( Chain3Step28.M'.d55 ) ) ) ) $ ( if p3 then false else d12 )
        d39 : if true then if false then Bool else Bool else if true then Bool else Bool
        d39 = if if Chain3Step28.M'.d76 then Chain3Step28.M'.d35 else false then if d19 then Chain3Step28.M'.d53 else Chain3Step28.M'.d73 else if p3 then d12 else false
        d40 : if false then if true then Bool else Bool else if true then Bool else Bool
        d40 = if if Chain3Step28.M'.d107 then true else d19 then if Chain3Step28.M'.d87 then true else d25 else if d14 then p3 else Chain3Step28.M'.d107
        d41 : if false then if true then Bool else Bool else if true then Bool else Bool
        d41 = if if true then false else Chain3Step28.M'.d98 then if d39 then p1 else p3 else if p3 then Chain3Step28.M'.d35 else p3
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if false then p1 else Chain3Step28.M'.d62 ) ) ) $ ( if true then p1 else p3 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> Bool ) ) ) $ ( x46 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if false then p1 else Chain3Step28.M'.d122 ) ) ) $ ( if Chain3Step28.M'.d25 then d34 else false )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d34 ) ) ) $ ( p3 ) ) ) ) $ ( if p1 then false else true )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( x52 ) ) ) ) $ ( if true then Bool else Bool )
        d51 = if if Chain3Step28.M'.d110 then Chain3Step28.M'.d26 else p3 then if Chain3Step28.M'.d105 then Chain3Step28.M'.d137 else p1 else if Chain3Step28.M'.d72 then false else Chain3Step28.M'.d98
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> Chain3Step28.M'.d114 ) ) ) $ ( d30 ) ) ) ) $ ( if Chain3Step28.M'.d13 then Chain3Step28.M'.d84 else true )
        d57 : if false then if false then Bool else Bool else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if Chain3Step28.M'.d34 then Chain3Step28.M'.d53 else Chain3Step28.M'.d55 ) ) ) $ ( if Chain3Step28.M'.d38 then d20 else p3 )
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if d29 then Chain3Step28.M'.d105 else p1 then if d51 then Chain3Step28.M'.d24 else p3 else if p1 then Chain3Step28.M'.d16 else Chain3Step28.M'.d16
        d60 : if true then if false then Bool else Bool else if false then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> p1 ) ) ) $ ( d19 ) ) ) ) $ ( if Chain3Step28.M'.d98 then true else p1 )
        d63 : if true then if false then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> d5 ) ) ) $ ( Chain3Step28.M'.d114 ) ) ) ) $ ( if d32 then d5 else Chain3Step28.M'.d68 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then Chain3Step28.M'.d53 else p1 )
        d71 : if false then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if d57 then true else p1 then if Chain3Step28.M'.d129 then d16 else Chain3Step28.M'.d84 else if d34 then false else false
        d72 : if false then if true then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( p1 ) ) ) ) $ ( if true then true else p1 )
        d75 : if true then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if p3 then d19 else false then if d63 then false else Chain3Step28.M'.d93 else if Chain3Step28.M'.d34 then p1 else Chain3Step28.M'.d66
        d76 : if true then if true then Bool else Bool else if true then Bool else Bool
        d76 = if if false then p1 else p1 then if Chain3Step28.M'.d68 then Chain3Step28.M'.d5 else Chain3Step28.M'.d39 else if Chain3Step28.M'.d16 then d41 else false
        d77 : if true then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if Chain3Step28.M'.d39 then p1 else d19 then if Chain3Step28.M'.d91 then d42 else p1 else if p3 then false else Chain3Step28.M'.d6
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( x81 ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> Chain3Step28.M'.d34 ) ) ) $ ( true ) ) ) ) $ ( if d17 then false else p1 )
        d83 : if false then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if Chain3Step28.M'.d10 then p1 else Chain3Step28.M'.d43 then if Chain3Step28.M'.d13 then true else Chain3Step28.M'.d114 else if p1 then false else true
        d84 : if true then if true then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> if Chain3Step28.M'.d132 then true else Chain3Step28.M'.d48 ) ) ) $ ( if Chain3Step28.M'.d84 then Chain3Step28.M'.d127 else Chain3Step28.M'.d33 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then Bool else x89 ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> Chain3Step28.M'.d105 ) ) ) $ ( d63 ) ) ) ) $ ( if p3 then p1 else Chain3Step28.M'.d81 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = if if Chain3Step28.M'.d39 then p1 else d27 then if Chain3Step28.M'.d33 then Chain3Step28.M'.d30 else p1 else if d23 then Chain3Step28.M'.d127 else d83
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> Chain3Step28.M'.d33 ) ) ) $ ( Chain3Step28.M'.d81 ) ) ) ) $ ( if p3 then true else Chain3Step28.M'.d30 )
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> Chain3Step28.M'.d38 ) ) ) $ ( Chain3Step28.M'.d53 ) ) ) ) $ ( if d75 then Chain3Step28.M'.d30 else Chain3Step28.M'.d68 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then Bool else x103 ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> d40 ) ) ) $ ( Chain3Step28.M'.d13 ) ) ) ) $ ( if Chain3Step28.M'.d6 then Chain3Step28.M'.d72 else true )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else x105 ) ) ) $ ( if true then Bool else Bool )
        d104 = if if d71 then p3 else d40 then if true then p3 else p1 else if Chain3Step28.M'.d10 then p3 else Chain3Step28.M'.d26
        d106 : if false then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if Chain3Step28.M'.d73 then Chain3Step28.M'.d101 else d32 then if d6 then p1 else d34 else if p1 then Chain3Step28.M'.d73 else p1
        d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then Bool else x109 ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if p3 then p3 else p3 ) ) ) $ ( if false then d6 else p1 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if true then Chain3Step28.M'.d129 else x111 ) ) ) $ ( if d19 then p1 else true )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d114 = if if d63 then d41 else false then if true then Chain3Step28.M'.d91 else p3 else if Chain3Step28.M'.d16 then Chain3Step28.M'.d16 else Chain3Step28.M'.d93
        d117 : if true then if false then Bool else Bool else if false then Bool else Bool
        d117 = if if Chain3Step28.M'.d9 then d107 else Chain3Step28.M'.d33 then if d34 then Chain3Step28.M'.d71 else p3 else if Chain3Step28.M'.d101 then d16 else Chain3Step28.M'.d71
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> x119 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d118 = if if false then Chain3Step28.M'.d59 else d6 then if d110 then Chain3Step28.M'.d105 else Chain3Step28.M'.d5 else if p3 then Chain3Step28.M'.d81 else true
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d121 = if if Chain3Step28.M'.d34 then Chain3Step28.M'.d30 else Chain3Step28.M'.d14 then if p1 then Chain3Step28.M'.d39 else Chain3Step28.M'.d34 else if d30 then p1 else true