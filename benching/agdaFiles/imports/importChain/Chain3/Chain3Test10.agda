module Chain3Test10  where
    import Chain3Step210
    open import Chain3Step210 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else x3 ) ) ) $ ( Bool ) )  where
        d4 : if true then if true then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if Chain3Step210.M'.d102 then p2 else Chain3Step210.M'.d50 ) ) ) $ ( if true then Chain3Step210.M'.d39 else Chain3Step210.M'.d72 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then x7 else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = if if p2 then Chain3Step210.M'.d27 else false then if Chain3Step210.M'.d78 then true else Chain3Step210.M'.d59 else if d4 then d4 else p1
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if false then Bool else x10 ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if p1 then p2 else Chain3Step210.M'.d87 ) ) ) $ ( if true then Chain3Step210.M'.d9 else d4 )
        d11 : if true then if true then Bool else Bool else if false then Bool else Bool
        d11 = if if Chain3Step210.M'.d45 then Chain3Step210.M'.d82 else Chain3Step210.M'.d82 then if Chain3Step210.M'.d93 then d8 else Chain3Step210.M'.d112 else if d6 then Chain3Step210.M'.d9 else d8
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> d6 ) ) ) $ ( p2 ) ) ) ) $ ( if Chain3Step210.M'.d89 then Chain3Step210.M'.d35 else p2 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( x19 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if Chain3Step210.M'.d14 then p1 else Chain3Step210.M'.d87 ) ) ) $ ( if p2 then Chain3Step210.M'.d14 else Chain3Step210.M'.d10 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( x22 ) ) ) ) $ ( if true then Bool else Bool )
        d21 = if if p2 then p2 else Chain3Step210.M'.d16 then if Chain3Step210.M'.d65 then Chain3Step210.M'.d93 else Chain3Step210.M'.d119 else if Chain3Step210.M'.d62 then Chain3Step210.M'.d102 else p1
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then x25 else x25 ) ) ) $ ( if false then Bool else Bool )
        d24 = if if d4 then true else Chain3Step210.M'.d13 then if p2 then false else Chain3Step210.M'.d27 else if p1 then true else true
        d26 : if true then if false then Bool else Bool else if false then Bool else Bool
        d26 = if if p2 then Chain3Step210.M'.d68 else p1 then if Chain3Step210.M'.d45 then Chain3Step210.M'.d24 else Chain3Step210.M'.d23 else if p1 then p1 else d4
        d27 : if false then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if false then p2 else d21 then if d24 then d8 else Chain3Step210.M'.d55 else if Chain3Step210.M'.d113 then d11 else Chain3Step210.M'.d119
        d28 : if false then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if Chain3Step210.M'.d65 then true else p2 then if Chain3Step210.M'.d93 then d24 else p2 else if true then p2 else Chain3Step210.M'.d45
        d29 : if false then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if true then false else p1 then if Chain3Step210.M'.d45 then Chain3Step210.M'.d49 else false else if Chain3Step210.M'.d14 then p2 else false
        d30 : if true then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if Chain3Step210.M'.d108 then x31 else p2 ) ) ) $ ( if true then p1 else p2 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then x34 else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if Chain3Step210.M'.d119 then false else p2 ) ) ) $ ( if false then Chain3Step210.M'.d54 else d24 )
        d35 : if false then if false then Bool else Bool else if false then Bool else Bool
        d35 = if if Chain3Step210.M'.d68 then Chain3Step210.M'.d55 else Chain3Step210.M'.d78 then if p2 then false else Chain3Step210.M'.d51 else if Chain3Step210.M'.d52 then false else Chain3Step210.M'.d51
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x39 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if x37 then d4 else d12 ) ) ) $ ( if p1 then Chain3Step210.M'.d58 else d28 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then x41 else x41 ) ) ) $ ( if true then Bool else Bool )
        d40 = if if Chain3Step210.M'.d10 then d35 else true then if Chain3Step210.M'.d96 then d35 else p1 else if Chain3Step210.M'.d111 then false else d28
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if Chain3Step210.M'.d49 then p1 else Chain3Step210.M'.d10 then if p2 then Chain3Step210.M'.d9 else Chain3Step210.M'.d10 else if Chain3Step210.M'.d39 then true else false
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> Chain3Step210.M'.d54 ) ) ) $ ( d24 ) ) ) ) $ ( if Chain3Step210.M'.d117 then Chain3Step210.M'.d19 else Chain3Step210.M'.d112 )
        d50 : if true then if false then Bool else Bool else if true then Bool else Bool
        d50 = if if Chain3Step210.M'.d59 then true else Chain3Step210.M'.d50 then if Chain3Step210.M'.d96 then d30 else true else if Chain3Step210.M'.d35 then true else true
        d51 : if true then if true then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if p1 then p2 else true ) ) ) $ ( if Chain3Step210.M'.d105 then true else p1 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d53 = if if p1 then d26 else true then if p2 then p1 else p1 else if Chain3Step210.M'.d24 then d29 else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d55 = if if Chain3Step210.M'.d9 then p2 else d4 then if true then d4 else p2 else if Chain3Step210.M'.d10 then p1 else d53
        d57 : if true then if false then Bool else Bool else if false then Bool else Bool
        d57 = if if Chain3Step210.M'.d10 then Chain3Step210.M'.d14 else Chain3Step210.M'.d113 then if Chain3Step210.M'.d5 then Chain3Step210.M'.d32 else Chain3Step210.M'.d52 else if d27 then p1 else p2
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if x59 then x59 else Chain3Step210.M'.d9 ) ) ) $ ( if p2 then d30 else d29 )
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if true then Chain3Step210.M'.d91 else Chain3Step210.M'.d19 then if Chain3Step210.M'.d35 then p1 else false else if Chain3Step210.M'.d16 then false else false
        d63 : if true then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> false ) ) ) $ ( d58 ) ) ) ) $ ( if Chain3Step210.M'.d54 then p1 else Chain3Step210.M'.d32 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> d50 ) ) ) $ ( Chain3Step210.M'.d113 ) ) ) ) $ ( if Chain3Step210.M'.d89 then false else true )
        d71 : if true then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if false then Chain3Step210.M'.d24 else true then if p1 then Chain3Step210.M'.d19 else p2 else if Chain3Step210.M'.d111 then p1 else Chain3Step210.M'.d91
        d72 : if true then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if Chain3Step210.M'.d39 then true else Chain3Step210.M'.d27 then if Chain3Step210.M'.d50 then p2 else Chain3Step210.M'.d98 else if Chain3Step210.M'.d52 then d4 else d45
        d73 : if true then if false then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d29 ) ) ) $ ( p1 ) ) ) ) $ ( if d35 then p2 else p2 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = if if Chain3Step210.M'.d107 then true else true then if d71 then Chain3Step210.M'.d86 else Chain3Step210.M'.d55 else if d63 then Chain3Step210.M'.d32 else p2
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then Bool else x79 ) ) ) $ ( if false then Bool else Bool )
        d78 = if if Chain3Step210.M'.d9 then Chain3Step210.M'.d52 else true then if Chain3Step210.M'.d82 then Chain3Step210.M'.d117 else Chain3Step210.M'.d107 else if Chain3Step210.M'.d32 then d76 else true
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then Bool else x82 ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if d66 then d58 else Chain3Step210.M'.d87 ) ) ) $ ( if p1 then false else Chain3Step210.M'.d93 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if false then d8 else d71 ) ) ) $ ( if true then d55 else p1 )
        d87 : if true then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> Chain3Step210.M'.d105 ) ) ) $ ( Chain3Step210.M'.d119 ) ) ) ) $ ( if Chain3Step210.M'.d49 then Chain3Step210.M'.d5 else Chain3Step210.M'.d28 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( x92 ) ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if Chain3Step210.M'.d5 then Chain3Step210.M'.d107 else Chain3Step210.M'.d59 ) ) ) $ ( if d30 then true else Chain3Step210.M'.d19 )
        d94 : if false then if false then Bool else Bool else if true then Bool else Bool
        d94 = if if d72 then d28 else Chain3Step210.M'.d112 then if Chain3Step210.M'.d41 then d6 else false else if Chain3Step210.M'.d72 then p2 else Chain3Step210.M'.d111
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> x97 ) ) ) $ ( x97 ) ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d17 then p2 else Chain3Step210.M'.d105 ) ) ) $ ( if true then true else true )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
        d99 = if if Chain3Step210.M'.d105 then true else Chain3Step210.M'.d87 then if Chain3Step210.M'.d58 then d32 else p1 else if d72 then Chain3Step210.M'.d108 else p1
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then x103 else x103 ) ) ) $ ( if false then Bool else Bool )
        d102 = if if false then d55 else Chain3Step210.M'.d35 then if d21 then Chain3Step210.M'.d111 else p1 else if true then Chain3Step210.M'.d9 else d17
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then x107 else Bool ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( d87 ) ) ) ) $ ( if d94 then Chain3Step210.M'.d107 else Chain3Step210.M'.d41 )
        d108 : if true then if true then Bool else Bool else if true then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d80 ) ) ) $ ( Chain3Step210.M'.d65 ) ) ) ) $ ( if p1 then false else true )
        d111 : if true then if false then Bool else Bool else if false then Bool else Bool
        d111 = if if p2 then true else d42 then if Chain3Step210.M'.d113 then d66 else p1 else if p1 then p2 else Chain3Step210.M'.d41
        d112 : if true then if true then Bool else Bool else if false then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if Chain3Step210.M'.d16 then p1 else p1 ) ) ) $ ( if Chain3Step210.M'.d65 then p1 else d87 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( x116 ) ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if Chain3Step210.M'.d99 then d6 else d32 ) ) ) $ ( if d95 then p2 else Chain3Step210.M'.d62 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else x119 ) ) ) $ ( if false then Bool else Bool )
        d118 = if if true then Chain3Step210.M'.d82 else p1 then if false then Chain3Step210.M'.d50 else Chain3Step210.M'.d86 else if false then Chain3Step210.M'.d87 else p2
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = if if true then Chain3Step210.M'.d52 else p1 then if p2 then false else Chain3Step210.M'.d6 else if p1 then Chain3Step210.M'.d86 else Chain3Step210.M'.d78
        d121 : if false then if true then Bool else Bool else if false then Bool else Bool
        d121 = if if p1 then Chain3Step210.M'.d78 else d12 then if Chain3Step210.M'.d78 then Chain3Step210.M'.d10 else false else if p1 then d108 else d114
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( x123 ) ) ) ) $ ( if true then Bool else Bool )
        d122 = if if d24 then Chain3Step210.M'.d51 else Chain3Step210.M'.d102 then if Chain3Step210.M'.d9 then p1 else Chain3Step210.M'.d24 else if Chain3Step210.M'.d93 then true else Chain3Step210.M'.d10