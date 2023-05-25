module Chain1Test10  where
    import Chain1Base10
    open import Chain1Base10 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else x2 ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else Bool ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( Chain1Base10.M.d120 ) $ ( ( Chain1Base10.M.d50 ) $ ( ( Chain1Base10.M.d90 ) $ ( ( Chain1Base10.M.d110 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x7 -> Chain1Base10.M'.d83 ) ) ) $ ( x6 ) ) ) ) ) ) ) ) $ ( if true then Chain1Base10.M'.d87 else Chain1Base10.M'.d30 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if false then x12 else Bool ) ) ) $ ( if false then Bool else Bool )
        d9 = ( Chain1Base10.M.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( Chain1Base10.M.d106 ) $ ( ( Chain1Base10.M.d12 ) $ ( ( Chain1Base10.M.d119 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x11 -> d5 ) ) ) $ ( d5 ) ) ) ) ) ) ) $ ( if p3 then d5 else d5 ) )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then x14 else x14 ) ) ) $ ( if false then Bool else Bool )
        d13 = ( Chain1Base10.M.d49 ) $ ( if if p1 then p1 else p1 then if d9 then Chain1Base10.M'.d49 else Chain1Base10.M'.d96 else if Chain1Base10.M'.d89 then Chain1Base10.M'.d48 else d5 )
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = if if d13 then p1 else d5 then if p1 then d13 else d9 else if Chain1Base10.M'.d93 then p1 else Chain1Base10.M'.d108
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( x19 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( Chain1Base10.M.d5 ) $ ( ( Chain1Base10.M.d96 ) $ ( ( Chain1Base10.M.d53 ) $ ( ( Chain1Base10.M.d26 ) $ ( ( Chain1Base10.M.d87 ) $ ( ( Chain1Base10.M.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x18 -> p3 ) ) ) $ ( Chain1Base10.M'.d44 ) ) ) ) ) ) ) ) ) ) $ ( if d5 then p1 else d13 )
        d21 : if true then if false then Bool else Bool else if false then Bool else Bool
        d21 = if if Chain1Base10.M'.d102 then p1 else d16 then if Chain1Base10.M'.d106 then false else Chain1Base10.M'.d77 else if false then Chain1Base10.M'.d22 else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = ( Chain1Base10.M.d3 ) $ ( if if Chain1Base10.M'.d43 then true else false then if p3 then p1 else false else if p1 then Chain1Base10.M'.d98 else Chain1Base10.M'.d13 )
        d24 : if false then if false then Bool else Bool else if true then Bool else Bool
        d24 = ( Chain1Base10.M.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if d9 then Chain1Base10.M'.d30 else x25 ) ) ) $ ( if Chain1Base10.M'.d110 then Chain1Base10.M'.d83 else Chain1Base10.M'.d48 ) )
        d26 : if false then if false then Bool else Bool else if true then Bool else Bool
        d26 = ( Chain1Base10.M.d89 ) $ ( ( Chain1Base10.M.d74 ) $ ( ( Chain1Base10.M.d42 ) $ ( if if false then p3 else Chain1Base10.M'.d38 then if d21 then false else Chain1Base10.M'.d13 else if true then Chain1Base10.M'.d120 else Chain1Base10.M'.d26 ) ) )
        d27 : if true then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if p1 then Chain1Base10.M'.d44 else Chain1Base10.M'.d35 then if d9 then d13 else d21 else if d16 then d5 else Chain1Base10.M'.d50
        d28 : if true then if true then Bool else Bool else if false then Bool else Bool
        d28 = ( Chain1Base10.M.d121 ) $ ( ( Chain1Base10.M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d21 then false else Chain1Base10.M'.d38 ) ) ) $ ( if d26 then Chain1Base10.M'.d9 else Chain1Base10.M'.d62 ) ) )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x31 ) ) ) $ ( x31 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = ( Chain1Base10.M.d8 ) $ ( if if Chain1Base10.M'.d70 then p1 else p1 then if p3 then false else Chain1Base10.M'.d8 else if Chain1Base10.M'.d108 then true else Chain1Base10.M'.d66 )
        d33 : if false then if true then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( Chain1Base10.M.d8 ) $ ( ( Chain1Base10.M.d113 ) $ ( ( Chain1Base10.M.d121 ) $ ( if p1 then true else false ) ) ) ) ) ) $ ( if Chain1Base10.M'.d26 then p1 else p1 )
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( Chain1Base10.M.d62 ) $ ( if if Chain1Base10.M'.d5 then Chain1Base10.M'.d38 else Chain1Base10.M'.d98 then if p3 then p3 else p1 else if d30 then Chain1Base10.M'.d108 else p3 )
        d36 : if false then if true then Bool else Bool else if false then Bool else Bool
        d36 = ( Chain1Base10.M.d22 ) $ ( ( Chain1Base10.M.d56 ) $ ( ( Chain1Base10.M.d83 ) $ ( if if Chain1Base10.M'.d89 then Chain1Base10.M'.d89 else Chain1Base10.M'.d22 then if Chain1Base10.M'.d3 then p3 else false else if Chain1Base10.M'.d3 then Chain1Base10.M'.d8 else Chain1Base10.M'.d13 ) ) )
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if d22 then Chain1Base10.M'.d120 else Chain1Base10.M'.d49 then if Chain1Base10.M'.d49 then Chain1Base10.M'.d23 else Chain1Base10.M'.d116 else if Chain1Base10.M'.d83 then d15 else Chain1Base10.M'.d70
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else x40 ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if d13 then Chain1Base10.M'.d76 else p3 ) ) ) $ ( if p1 then d16 else Chain1Base10.M'.d51 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( x44 ) ) ) ) $ ( if true then Bool else Bool )
        d41 = ( Chain1Base10.M.d30 ) $ ( ( Chain1Base10.M.d113 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( Chain1Base10.M.d80 ) $ ( ( Chain1Base10.M.d98 ) $ ( ( Chain1Base10.M.d77 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x43 -> true ) ) ) $ ( true ) ) ) ) ) ) ) $ ( if false then d16 else Chain1Base10.M'.d89 ) ) )
        d46 : if false then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( Chain1Base10.M.d69 ) $ ( ( Chain1Base10.M.d13 ) $ ( if if false then Chain1Base10.M'.d3 else false then if p1 then Chain1Base10.M'.d53 else p3 else if true then p3 else Chain1Base10.M'.d35 ) )
        d47 : if true then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( Chain1Base10.M.d110 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x49 -> Chain1Base10.M'.d35 ) ) ) $ ( p1 ) ) ) ) ) $ ( if d15 then Chain1Base10.M'.d121 else Chain1Base10.M'.d71 )
        d50 : if true then if true then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( Chain1Base10.M.d116 ) $ ( if Chain1Base10.M'.d37 then true else Chain1Base10.M'.d74 ) ) ) ) $ ( if p3 then Chain1Base10.M'.d77 else p3 )
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( Chain1Base10.M.d37 ) $ ( ( Chain1Base10.M.d56 ) $ ( ( Chain1Base10.M.d17 ) $ ( if if Chain1Base10.M'.d48 then Chain1Base10.M'.d37 else Chain1Base10.M'.d69 then if d21 then p1 else Chain1Base10.M'.d116 else if false then false else Chain1Base10.M'.d87 ) ) )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x56 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( Chain1Base10.M.d50 ) $ ( ( Chain1Base10.M.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( Chain1Base10.M.d74 ) $ ( if Chain1Base10.M'.d116 then Chain1Base10.M'.d74 else false ) ) ) ) $ ( if Chain1Base10.M'.d69 then false else true ) ) )
        d57 : if true then if true then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( Chain1Base10.M.d9 ) $ ( ( Chain1Base10.M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x59 -> Chain1Base10.M'.d48 ) ) ) $ ( Chain1Base10.M'.d5 ) ) ) ) ) ) $ ( if Chain1Base10.M'.d74 then true else Chain1Base10.M'.d26 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if true then x63 else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( Chain1Base10.M.d62 ) $ ( ( Chain1Base10.M.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x62 -> Chain1Base10.M'.d56 ) ) ) $ ( p3 ) ) ) ) ) ) $ ( if d28 then Chain1Base10.M'.d38 else d37 )
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = ( Chain1Base10.M.d121 ) $ ( if if p3 then Chain1Base10.M'.d90 else false then if Chain1Base10.M'.d71 then p1 else Chain1Base10.M'.d50 else if true then Chain1Base10.M'.d96 else Chain1Base10.M'.d43 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if false then x67 else x67 ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if Chain1Base10.M'.d49 then x66 else p3 ) ) ) $ ( if d5 then d15 else p3 )
        d68 : if false then if false then Bool else Bool else if false then Bool else Bool
        d68 = ( Chain1Base10.M.d37 ) $ ( ( Chain1Base10.M.d69 ) $ ( ( Chain1Base10.M.d30 ) $ ( ( Chain1Base10.M.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( Chain1Base10.M.d51 ) $ ( ( Chain1Base10.M.d113 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x70 -> Chain1Base10.M'.d8 ) ) ) $ ( true ) ) ) ) ) ) $ ( if Chain1Base10.M'.d108 then Chain1Base10.M'.d5 else p3 ) ) ) ) )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = ( Chain1Base10.M.d110 ) $ ( if if Chain1Base10.M'.d82 then d52 else p1 then if p3 then Chain1Base10.M'.d70 else Chain1Base10.M'.d90 else if true then true else p3 )
        d73 : if true then if false then Bool else Bool else if true then Bool else Bool
        d73 = if if Chain1Base10.M'.d80 then false else p1 then if Chain1Base10.M'.d56 then d36 else p1 else if p3 then Chain1Base10.M'.d80 else Chain1Base10.M'.d51
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = ( Chain1Base10.M.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> x75 ) ) ) $ ( Chain1Base10.M'.d56 ) ) ) ) $ ( if Chain1Base10.M'.d98 then Chain1Base10.M'.d90 else true ) )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( Chain1Base10.M.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x81 -> p3 ) ) ) $ ( Chain1Base10.M'.d38 ) ) ) ) ) $ ( if Chain1Base10.M'.d116 then Chain1Base10.M'.d74 else Chain1Base10.M'.d37 )
        d83 : if true then if true then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> true ) ) ) $ ( false ) ) ) ) $ ( if Chain1Base10.M'.d42 then true else p1 )
        d86 : if true then if true then Bool else Bool else if false then Bool else Bool
        d86 = ( Chain1Base10.M.d102 ) $ ( ( Chain1Base10.M.d96 ) $ ( if if d9 then true else d46 then if true then d68 else true else if Chain1Base10.M'.d87 then Chain1Base10.M'.d93 else p1 ) )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( x89 ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( Chain1Base10.M.d98 ) $ ( ( Chain1Base10.M.d9 ) $ ( ( Chain1Base10.M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( Chain1Base10.M.d22 ) $ ( ( Chain1Base10.M.d69 ) $ ( if p3 then false else Chain1Base10.M'.d90 ) ) ) ) ) $ ( if d86 then false else p1 ) ) ) )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = if if false then d33 else Chain1Base10.M'.d87 then if Chain1Base10.M'.d56 then d24 else true else if true then Chain1Base10.M'.d71 else Chain1Base10.M'.d17
        d93 : if false then if false then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if x94 then d35 else Chain1Base10.M'.d3 ) ) ) $ ( if d41 then Chain1Base10.M'.d110 else Chain1Base10.M'.d59 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then x97 else x97 ) ) ) $ ( if false then Bool else Bool )
        d95 = ( Chain1Base10.M.d113 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( Chain1Base10.M.d116 ) $ ( ( Chain1Base10.M.d98 ) $ ( if x96 then d36 else true ) ) ) ) ) $ ( if d9 then Chain1Base10.M'.d71 else d71 ) )
        d98 : if true then if false then Bool else Bool else if true then Bool else Bool
        d98 = ( Chain1Base10.M.d17 ) $ ( if if false then Chain1Base10.M'.d22 else Chain1Base10.M'.d62 then if Chain1Base10.M'.d69 then true else d9 else if Chain1Base10.M'.d35 then d22 else Chain1Base10.M'.d106 )
        d99 : if true then if true then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if d91 then true else Chain1Base10.M'.d26 ) ) ) $ ( if Chain1Base10.M'.d8 then false else Chain1Base10.M'.d44 )
        d101 : if true then if false then Bool else Bool else if false then Bool else Bool
        d101 = ( Chain1Base10.M.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( Chain1Base10.M.d22 ) $ ( if Chain1Base10.M'.d80 then d68 else Chain1Base10.M'.d38 ) ) ) ) $ ( if Chain1Base10.M'.d76 then Chain1Base10.M'.d106 else Chain1Base10.M'.d23 ) )
        d103 : if true then if true then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if Chain1Base10.M'.d43 then Chain1Base10.M'.d42 else Chain1Base10.M'.d69 ) ) ) $ ( if Chain1Base10.M'.d76 then Chain1Base10.M'.d90 else Chain1Base10.M'.d43 )
        d105 : if false then if false then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( Chain1Base10.M.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x107 -> d103 ) ) ) $ ( false ) ) ) ) ) $ ( if p3 then false else Chain1Base10.M'.d89 )
        d108 : if false then if false then Bool else Bool else if true then Bool else Bool
        d108 = ( Chain1Base10.M.d12 ) $ ( ( Chain1Base10.M.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> Chain1Base10.M'.d96 ) ) ) $ ( p3 ) ) ) ) $ ( if false then p1 else Chain1Base10.M'.d98 ) ) )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( x112 ) ) ) ) $ ( if false then Bool else Bool )
        d111 = ( Chain1Base10.M.d37 ) $ ( if if Chain1Base10.M'.d49 then Chain1Base10.M'.d96 else Chain1Base10.M'.d8 then if false then p1 else d50 else if p1 then d27 else false )
        d114 : if true then if true then Bool else Bool else if false then Bool else Bool
        d114 = ( Chain1Base10.M.d8 ) $ ( if if d60 then d111 else Chain1Base10.M'.d121 then if Chain1Base10.M'.d53 then false else d41 else if d35 then Chain1Base10.M'.d38 else Chain1Base10.M'.d53 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if true then Bool else x117 ) ) ) $ ( if false then Bool else Bool )
        d115 = ( Chain1Base10.M.d80 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( Chain1Base10.M.d9 ) $ ( ( Chain1Base10.M.d62 ) $ ( ( Chain1Base10.M.d3 ) $ ( if p3 then true else Chain1Base10.M'.d76 ) ) ) ) ) ) $ ( if p1 then p1 else d41 ) )
        d118 : if true then if true then Bool else Bool else if false then Bool else Bool
        d118 = ( Chain1Base10.M.d44 ) $ ( ( Chain1Base10.M.d9 ) $ ( ( Chain1Base10.M.d22 ) $ ( if if false then Chain1Base10.M'.d30 else true then if Chain1Base10.M'.d119 then Chain1Base10.M'.d44 else false else if d99 then d93 else p3 ) ) )
        d119 : if false then if true then Bool else Bool else if true then Bool else Bool
        d119 = if if p1 then d41 else p1 then if p3 then false else d114 else if Chain1Base10.M'.d102 then p3 else p3
        d120 : if false then if false then Bool else Bool else if false then Bool else Bool
        d120 = if if true then Chain1Base10.M'.d53 else d74 then if Chain1Base10.M'.d119 then true else Chain1Base10.M'.d93 else if Chain1Base10.M'.d83 then d87 else p3