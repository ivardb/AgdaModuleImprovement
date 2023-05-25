module Chain3Test15  where
    import Chain3Step215
    open import Chain3Step215 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then Bool else x3 ) ) ) $ ( Bool ) )  where
        d4 : if true then if true then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> false ) ) ) $ ( x5 ) ) ) ) $ ( if false then Chain3Step215.M'.d73 else Chain3Step215.M'.d73 )
        d7 : if false then if true then Bool else Bool else if false then Bool else Bool
        d7 = if if false then Chain3Step215.M'.d59 else Chain3Step215.M'.d104 then if p2 then Chain3Step215.M'.d57 else Chain3Step215.M'.d100 else if p1 then p1 else d4
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( x10 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if d4 then p1 else p2 ) ) ) $ ( if p1 then d4 else d4 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d12 = if if p2 then Chain3Step215.M'.d88 else Chain3Step215.M'.d100 then if p1 then p2 else p1 else if Chain3Step215.M'.d39 then p2 else Chain3Step215.M'.d54
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then Bool else x17 ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> Chain3Step215.M'.d33 ) ) ) $ ( Chain3Step215.M'.d29 ) ) ) ) $ ( if Chain3Step215.M'.d45 then Chain3Step215.M'.d90 else d7 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else x19 ) ) ) $ ( if false then Bool else Bool )
        d18 = if if Chain3Step215.M'.d24 then Chain3Step215.M'.d58 else d7 then if Chain3Step215.M'.d88 then p2 else d7 else if d8 then Chain3Step215.M'.d95 else Chain3Step215.M'.d93
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then x22 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if true then false else p2 ) ) ) $ ( if Chain3Step215.M'.d116 then p1 else d14 )
        d23 : if true then if false then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d14 ) ) ) $ ( d7 ) ) ) ) $ ( if Chain3Step215.M'.d28 then p1 else d18 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else x29 ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d4 ) ) ) $ ( Chain3Step215.M'.d9 ) ) ) ) $ ( if d8 then p1 else d14 )
        d30 : if true then if true then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if Chain3Step215.M'.d36 then p2 else d4 ) ) ) $ ( if Chain3Step215.M'.d61 then p2 else false )
        d32 : if false then if false then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if Chain3Step215.M'.d28 then p2 else d14 ) ) ) $ ( if true then Chain3Step215.M'.d55 else true )
        d34 : if true then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> false ) ) ) $ ( x35 ) ) ) ) $ ( if p1 then p2 else p1 )
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> Chain3Step215.M'.d31 ) ) ) $ ( Chain3Step215.M'.d82 ) ) ) ) $ ( if d20 then Chain3Step215.M'.d45 else d20 )
        d40 : if false then if true then Bool else Bool else if true then Bool else Bool
        d40 = if if p1 then Chain3Step215.M'.d28 else Chain3Step215.M'.d55 then if false then true else d4 else if Chain3Step215.M'.d61 then Chain3Step215.M'.d108 else d20
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then x42 else Bool ) ) ) $ ( if false then Bool else Bool )
        d41 = if if false then Chain3Step215.M'.d103 else false then if Chain3Step215.M'.d90 then p1 else false else if false then Chain3Step215.M'.d54 else p1
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if Chain3Step215.M'.d108 then false else Chain3Step215.M'.d12 then if Chain3Step215.M'.d33 then true else false else if p2 then Chain3Step215.M'.d111 else false
        d44 : if true then if true then Bool else Bool else if false then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d37 ) ) ) $ ( Chain3Step215.M'.d78 ) ) ) ) $ ( if d30 then d18 else p2 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> Chain3Step215.M'.d36 ) ) ) $ ( false ) ) ) ) $ ( if Chain3Step215.M'.d107 then Chain3Step215.M'.d59 else Chain3Step215.M'.d12 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if x53 then d32 else true ) ) ) $ ( if d26 then d20 else false )
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if Chain3Step215.M'.d85 then true else Chain3Step215.M'.d33 then if Chain3Step215.M'.d9 then Chain3Step215.M'.d46 else true else if false then Chain3Step215.M'.d78 else Chain3Step215.M'.d53
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d56 = if if Chain3Step215.M'.d103 then true else p1 then if p1 then p2 else p1 else if true then Chain3Step215.M'.d61 else d8
        d59 : if true then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> x60 ) ) ) $ ( Chain3Step215.M'.d76 ) ) ) ) $ ( if Chain3Step215.M'.d14 then d44 else d18 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then x63 else Bool ) ) ) $ ( if true then Bool else Bool )
        d62 = if if p1 then false else Chain3Step215.M'.d103 then if Chain3Step215.M'.d41 then Chain3Step215.M'.d14 else d43 else if false then p1 else Chain3Step215.M'.d78
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if false then p1 else p2 then if Chain3Step215.M'.d111 then false else p1 else if Chain3Step215.M'.d78 then p2 else d32
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if Chain3Step215.M'.d119 then Chain3Step215.M'.d90 else Chain3Step215.M'.d103 ) ) ) $ ( if Chain3Step215.M'.d107 then false else Chain3Step215.M'.d48 )
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = if if Chain3Step215.M'.d33 then true else p2 then if d64 then Chain3Step215.M'.d106 else true else if Chain3Step215.M'.d9 then p1 else Chain3Step215.M'.d24
        d70 : if true then if false then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( d69 ) ) ) ) $ ( if p2 then Chain3Step215.M'.d4 else d44 )
        d73 : if false then if false then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> Chain3Step215.M'.d81 ) ) ) $ ( p1 ) ) ) ) $ ( if Chain3Step215.M'.d46 then Chain3Step215.M'.d48 else p1 )
        d76 : if false then if true then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> d64 ) ) ) $ ( x77 ) ) ) ) $ ( if p2 then d40 else p1 )
        d79 : if true then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if x80 then Chain3Step215.M'.d104 else Chain3Step215.M'.d90 ) ) ) $ ( if d59 then d41 else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d81 = if if Chain3Step215.M'.d46 then d23 else Chain3Step215.M'.d48 then if Chain3Step215.M'.d82 then false else true else if Chain3Step215.M'.d9 then Chain3Step215.M'.d90 else Chain3Step215.M'.d9
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then x84 else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = if if p1 then p1 else d65 then if p2 then Chain3Step215.M'.d48 else Chain3Step215.M'.d58 else if p2 then Chain3Step215.M'.d31 else p1
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( x86 ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if Chain3Step215.M'.d33 then Chain3Step215.M'.d111 else Chain3Step215.M'.d48 then if d62 then Chain3Step215.M'.d116 else true else if Chain3Step215.M'.d118 then d83 else p2
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if d32 then Chain3Step215.M'.d100 else Chain3Step215.M'.d106 ) ) ) $ ( if Chain3Step215.M'.d62 then false else Chain3Step215.M'.d106 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> true ) ) ) $ ( d37 ) ) ) ) $ ( if d65 then Chain3Step215.M'.d111 else Chain3Step215.M'.d97 )
        d97 : if false then if true then Bool else Bool else if false then Bool else Bool
        d97 = if if Chain3Step215.M'.d46 then d92 else Chain3Step215.M'.d73 then if d47 then d47 else Chain3Step215.M'.d9 else if Chain3Step215.M'.d88 then Chain3Step215.M'.d33 else p2
        d98 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if Chain3Step215.M'.d55 then d43 else false ) ) ) $ ( if Chain3Step215.M'.d107 then Chain3Step215.M'.d88 else Chain3Step215.M'.d24 )
        d102 : if true then if true then Bool else Bool else if false then Bool else Bool
        d102 = if if p1 then Chain3Step215.M'.d29 else p2 then if d56 then Chain3Step215.M'.d119 else Chain3Step215.M'.d48 else if true then true else d59
        d103 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then x106 else x106 ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> true ) ) ) $ ( Chain3Step215.M'.d62 ) ) ) ) $ ( if p2 then Chain3Step215.M'.d53 else false )
        d107 : if false then if false then Bool else Bool else if false then Bool else Bool
        d107 = if if d41 then false else d59 then if Chain3Step215.M'.d53 then false else p1 else if d102 then p1 else p1
        d108 : if false then if false then Bool else Bool else if true then Bool else Bool
        d108 = if if d83 then Chain3Step215.M'.d53 else p2 then if Chain3Step215.M'.d116 then Chain3Step215.M'.d100 else Chain3Step215.M'.d58 else if Chain3Step215.M'.d67 then d52 else Chain3Step215.M'.d119
        d109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d109 = if if d44 then Chain3Step215.M'.d4 else p2 then if Chain3Step215.M'.d55 then true else d108 else if p1 then p1 else p1
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if Chain3Step215.M'.d58 then Chain3Step215.M'.d82 else d52 ) ) ) $ ( if Chain3Step215.M'.d88 then Chain3Step215.M'.d26 else p2 )
        d113 : if false then if false then Bool else Bool else if false then Bool else Bool
        d113 = if if Chain3Step215.M'.d97 then d64 else d23 then if Chain3Step215.M'.d119 then true else false else if Chain3Step215.M'.d90 then p1 else true
        d114 : if false then if false then Bool else Bool else if true then Bool else Bool
        d114 = if if Chain3Step215.M'.d73 then Chain3Step215.M'.d81 else Chain3Step215.M'.d28 then if p1 then d14 else d12 else if Chain3Step215.M'.d31 then p2 else Chain3Step215.M'.d19
        d115 : if false then if true then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if false then Chain3Step215.M'.d104 else Chain3Step215.M'.d46 ) ) ) $ ( if d103 then p2 else Chain3Step215.M'.d12 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if d81 then true else Chain3Step215.M'.d57 ) ) ) $ ( if p1 then p2 else Chain3Step215.M'.d12 )
        d121 : if true then if false then Bool else Bool else if false then Bool else Bool
        d121 = if if d41 then p2 else Chain3Step215.M'.d104 then if p2 then Chain3Step215.M'.d116 else Chain3Step215.M'.d85 else if Chain3Step215.M'.d17 then Chain3Step215.M'.d100 else Chain3Step215.M'.d17
        d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> Chain3Step215.M'.d55 ) ) ) $ ( Chain3Step215.M'.d78 ) ) ) ) $ ( if Chain3Step215.M'.d54 then Chain3Step215.M'.d85 else Chain3Step215.M'.d39 )
        d127 : if false then if false then Bool else Bool else if false then Bool else Bool
        d127 = if if false then true else p2 then if Chain3Step215.M'.d41 then Chain3Step215.M'.d116 else p1 else if d20 then Chain3Step215.M'.d107 else p2