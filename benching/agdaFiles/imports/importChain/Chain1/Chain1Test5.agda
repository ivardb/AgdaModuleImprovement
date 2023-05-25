module Chain1Test5  where
    import Chain1Base5
    open import Chain1Base5 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : if true then Bool else Bool )  where
        d4 : if true then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( Chain1Base5.M.d98 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( Chain1Base5.M.d40 ) $ ( if Chain1Base5.M'.d123 then false else Chain1Base5.M'.d8 ) ) ) ) $ ( if Chain1Base5.M'.d113 then p3 else Chain1Base5.M'.d79 ) )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then x7 else x7 ) ) ) $ ( if false then Bool else Bool )
        d6 = if if Chain1Base5.M'.d30 then d4 else Chain1Base5.M'.d114 then if Chain1Base5.M'.d122 then d4 else Chain1Base5.M'.d51 else if Chain1Base5.M'.d116 then Chain1Base5.M'.d23 else true
        d8 : if true then if false then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( Chain1Base5.M.d114 ) $ ( if x9 then x9 else Chain1Base5.M'.d38 ) ) ) ) $ ( if d6 then d6 else d6 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if true then x13 else x13 ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( p3 ) ) ) ) $ ( if Chain1Base5.M'.d117 then p1 else Chain1Base5.M'.d23 )
        d14 : if false then if false then Bool else Bool else if true then Bool else Bool
        d14 = ( Chain1Base5.M.d70 ) $ ( if if d8 then true else Chain1Base5.M'.d101 then if d8 then Chain1Base5.M'.d70 else d10 else if d4 then Chain1Base5.M'.d62 else true )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then x16 else x16 ) ) ) $ ( if false then Bool else Bool )
        d15 = ( Chain1Base5.M.d66 ) $ ( ( Chain1Base5.M.d14 ) $ ( if if Chain1Base5.M'.d40 then Chain1Base5.M'.d38 else false then if true then p3 else true else if p3 then p1 else true ) )
        d17 : if true then if false then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( Chain1Base5.M.d128 ) $ ( ( Chain1Base5.M.d106 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x19 -> true ) ) ) $ ( Chain1Base5.M'.d34 ) ) ) ) ) ) $ ( if d10 then Chain1Base5.M'.d48 else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = if if p1 then true else Chain1Base5.M'.d104 then if Chain1Base5.M'.d80 then p1 else p3 else if Chain1Base5.M'.d128 then true else Chain1Base5.M'.d30
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( x25 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( Chain1Base5.M'.d120 ) ) ) ) $ ( if p1 then Chain1Base5.M'.d80 else false )
        d27 : if true then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if p3 then d17 else Chain1Base5.M'.d40 then if Chain1Base5.M'.d123 then Chain1Base5.M'.d76 else Chain1Base5.M'.d40 else if p3 then Chain1Base5.M'.d40 else p1
        d28 : if false then if true then Bool else Bool else if true then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if Chain1Base5.M'.d54 then p3 else p1 ) ) ) $ ( if true then Chain1Base5.M'.d43 else Chain1Base5.M'.d66 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then x33 else Bool ) ) ) $ ( if true then Bool else Bool )
        d30 = ( Chain1Base5.M.d43 ) $ ( ( Chain1Base5.M.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( x31 ) ) ) ) $ ( if Chain1Base5.M'.d125 then false else p3 ) ) )
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = ( Chain1Base5.M.d53 ) $ ( if if p3 then d6 else Chain1Base5.M'.d120 then if true then true else p3 else if Chain1Base5.M'.d86 then d27 else true )
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = ( Chain1Base5.M.d120 ) $ ( ( Chain1Base5.M.d120 ) $ ( if if Chain1Base5.M'.d104 then p1 else Chain1Base5.M'.d117 then if d17 then Chain1Base5.M'.d86 else p1 else if Chain1Base5.M'.d54 then false else p3 ) )
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = if if d22 then p1 else p3 then if p1 then Chain1Base5.M'.d26 else Chain1Base5.M'.d2 else if false then Chain1Base5.M'.d72 else true
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( Chain1Base5.M.d90 ) $ ( if false then Chain1Base5.M'.d12 else true ) ) ) ) $ ( if Chain1Base5.M'.d62 then p3 else true )
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( Chain1Base5.M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( Chain1Base5.M.d114 ) $ ( ( Chain1Base5.M.d114 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( false ) ) ) ) ) ) $ ( if false then Chain1Base5.M'.d51 else p3 ) )
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if Chain1Base5.M'.d30 then false else d14 then if p1 then p3 else false else if d10 then Chain1Base5.M'.d123 else d34
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( x46 ) ) ) ) $ ( if false then Bool else Bool )
        d45 = ( Chain1Base5.M.d30 ) $ ( ( Chain1Base5.M.d86 ) $ ( ( Chain1Base5.M.d38 ) $ ( ( Chain1Base5.M.d94 ) $ ( if if true then Chain1Base5.M'.d117 else Chain1Base5.M'.d20 then if p3 then true else false else if d41 then true else d28 ) ) ) )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( x49 ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( Chain1Base5.M.d70 ) $ ( ( Chain1Base5.M.d80 ) $ ( if if Chain1Base5.M'.d20 then Chain1Base5.M'.d53 else p1 then if d44 then d22 else Chain1Base5.M'.d81 else if Chain1Base5.M'.d108 then false else false ) )
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = ( Chain1Base5.M.d105 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( Chain1Base5.M.d80 ) $ ( if Chain1Base5.M'.d108 then false else Chain1Base5.M'.d122 ) ) ) ) $ ( if true then true else Chain1Base5.M'.d123 ) )
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = ( Chain1Base5.M.d79 ) $ ( if if p3 then true else true then if d45 then Chain1Base5.M'.d81 else false else if d20 then true else d45 )
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = ( Chain1Base5.M.d122 ) $ ( if if d8 then Chain1Base5.M'.d43 else p3 then if Chain1Base5.M'.d14 then Chain1Base5.M'.d53 else p1 else if Chain1Base5.M'.d116 then d53 else Chain1Base5.M'.d120 )
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if p3 then false else Chain1Base5.M'.d128 ) ) ) $ ( if Chain1Base5.M'.d12 then Chain1Base5.M'.d62 else d36 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d57 = ( Chain1Base5.M.d120 ) $ ( ( Chain1Base5.M.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if d51 then false else d10 ) ) ) $ ( if d45 then Chain1Base5.M'.d76 else Chain1Base5.M'.d55 ) ) )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( Chain1Base5.M.d51 ) $ ( if Chain1Base5.M'.d70 then d53 else d15 ) ) ) ) $ ( if Chain1Base5.M'.d72 then false else Chain1Base5.M'.d106 )
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( Chain1Base5.M.d18 ) $ ( ( Chain1Base5.M.d23 ) $ ( ( Chain1Base5.M.d101 ) $ ( ( Chain1Base5.M.d104 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x66 -> true ) ) ) $ ( Chain1Base5.M'.d12 ) ) ) ) ) ) ) ) $ ( if p1 then false else p1 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if d4 then Chain1Base5.M'.d40 else false ) ) ) $ ( if d22 then d28 else Chain1Base5.M'.d26 )
        d71 : if false then if true then Bool else Bool else if true then Bool else Bool
        d71 = if if Chain1Base5.M'.d51 then Chain1Base5.M'.d34 else p1 then if Chain1Base5.M'.d54 then Chain1Base5.M'.d40 else Chain1Base5.M'.d46 else if true then d30 else p3
        d72 : if true then if false then Bool else Bool else if false then Bool else Bool
        d72 = if if p1 then d15 else true then if false then true else d45 else if p3 then Chain1Base5.M'.d12 else Chain1Base5.M'.d104
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if false then x76 else x76 ) ) ) $ ( if false then Bool else Bool )
        d73 = ( Chain1Base5.M.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> x75 ) ) ) $ ( Chain1Base5.M'.d54 ) ) ) ) $ ( if true then d41 else Chain1Base5.M'.d123 ) )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then x79 else Bool ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( Chain1Base5.M.d125 ) $ ( if d22 then p3 else x78 ) ) ) ) $ ( if true then d71 else Chain1Base5.M'.d23 )
        d80 : if true then if false then Bool else Bool else if true then Bool else Bool
        d80 = if if true then p3 else p1 then if Chain1Base5.M'.d104 then Chain1Base5.M'.d66 else p1 else if Chain1Base5.M'.d86 then true else p3
        d81 : if true then if true then Bool else Bool else if false then Bool else Bool
        d81 = ( Chain1Base5.M.d80 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if Chain1Base5.M'.d72 then Chain1Base5.M'.d72 else p3 ) ) ) $ ( if true then Chain1Base5.M'.d30 else true ) )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then Bool else x84 ) ) ) $ ( if true then Bool else Bool )
        d83 = if if Chain1Base5.M'.d98 then d81 else Chain1Base5.M'.d104 then if p1 then true else Chain1Base5.M'.d18 else if p3 then d55 else Chain1Base5.M'.d120
        d85 : if true then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( Chain1Base5.M.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x87 -> Chain1Base5.M'.d8 ) ) ) $ ( Chain1Base5.M'.d18 ) ) ) ) ) $ ( if Chain1Base5.M'.d114 then d44 else d81 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then x89 else Bool ) ) ) $ ( if false then Bool else Bool )
        d88 = ( Chain1Base5.M.d46 ) $ ( ( Chain1Base5.M.d94 ) $ ( ( Chain1Base5.M.d20 ) $ ( if if p1 then true else p1 then if true then Chain1Base5.M'.d105 else d8 else if Chain1Base5.M'.d117 then d48 else false ) ) )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( x92 ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if Chain1Base5.M'.d38 then d27 else true ) ) ) $ ( if false then true else p1 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( x96 ) ) ) ) $ ( if false then Bool else Bool )
        d94 = ( Chain1Base5.M.d48 ) $ ( ( Chain1Base5.M.d18 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( Chain1Base5.M.d18 ) $ ( ( Chain1Base5.M.d2 ) $ ( ( Chain1Base5.M.d51 ) $ ( ( Chain1Base5.M.d38 ) $ ( if Chain1Base5.M'.d38 then Chain1Base5.M'.d113 else Chain1Base5.M'.d5 ) ) ) ) ) ) ) $ ( if p3 then p1 else p3 ) ) )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if false then x99 else Bool ) ) ) $ ( if true then Bool else Bool )
        d98 = ( Chain1Base5.M.d76 ) $ ( if if Chain1Base5.M'.d113 then p3 else true then if Chain1Base5.M'.d114 then p3 else p3 else if p3 then p1 else p3 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> true ) ) ) $ ( d51 ) ) ) ) $ ( if Chain1Base5.M'.d92 then Chain1Base5.M'.d104 else d73 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> x105 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d104 = if if Chain1Base5.M'.d120 then d81 else d54 then if d6 then Chain1Base5.M'.d66 else d37 else if true then true else Chain1Base5.M'.d94
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> Chain1Base5.M'.d30 ) ) ) $ ( x108 ) ) ) ) $ ( if Chain1Base5.M'.d80 then false else Chain1Base5.M'.d53 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> ( ( Set -> Set ) ∋ ( ( λ x112 -> Bool ) ) ) $ ( x111 ) ) ) ) $ ( if true then Bool else Bool )
        d110 = if if p3 then d71 else d27 then if Chain1Base5.M'.d66 then false else p1 else if Chain1Base5.M'.d114 then p3 else p1
        d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if p1 then Chain1Base5.M'.d105 else p3 ) ) ) $ ( if false then Chain1Base5.M'.d12 else false )
        d117 : if true then if true then Bool else Bool else if true then Bool else Bool
        d117 = ( Chain1Base5.M.d55 ) $ ( ( Chain1Base5.M.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( Chain1Base5.M.d113 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> Chain1Base5.M'.d81 ) ) ) $ ( Chain1Base5.M'.d43 ) ) ) ) ) $ ( if p3 then p3 else Chain1Base5.M'.d43 ) ) )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if false then Bool else x123 ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( Chain1Base5.M.d12 ) $ ( ( Chain1Base5.M.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> Chain1Base5.M'.d43 ) ) ) $ ( Chain1Base5.M'.d76 ) ) ) ) ) ) $ ( if true then Chain1Base5.M'.d43 else d37 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then x126 else x126 ) ) ) $ ( if false then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> ( Chain1Base5.M.d116 ) $ ( ( Chain1Base5.M.d53 ) $ ( ( Chain1Base5.M.d14 ) $ ( if true then p3 else p3 ) ) ) ) ) ) $ ( if Chain1Base5.M'.d113 then Chain1Base5.M'.d26 else Chain1Base5.M'.d80 )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d127 = if if Chain1Base5.M'.d14 then Chain1Base5.M'.d117 else p3 then if false then p1 else Chain1Base5.M'.d14 else if p1 then true else true
        d129 : if true then if false then Bool else Bool else if true then Bool else Bool
        d129 = ( Chain1Base5.M.d90 ) $ ( ( Chain1Base5.M.d116 ) $ ( if if p3 then Chain1Base5.M'.d81 else Chain1Base5.M'.d12 then if p3 then false else Chain1Base5.M'.d58 else if p1 then p3 else Chain1Base5.M'.d108 ) )