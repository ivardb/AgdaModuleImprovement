module Chain1Test12  where
    import Chain1Base12
    open import Chain1Base12 using (Bool; true; false; ⊤; tt) public
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
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if Chain1Base12.M'.d47 then Chain1Base12.M'.d20 else Chain1Base12.M'.d11 ) ) ) $ ( if Chain1Base12.M'.d7 then p1 else p3 )
        d7 : if false then if true then Bool else Bool else if false then Bool else Bool
        d7 = ( Chain1Base12.M.d64 ) $ ( ( Chain1Base12.M.d42 ) $ ( if if d5 then d5 else Chain1Base12.M'.d13 then if false then true else Chain1Base12.M'.d38 else if d5 then d5 else Chain1Base12.M'.d87 ) )
        d8 : if true then if true then Bool else Bool else if false then Bool else Bool
        d8 = ( Chain1Base12.M.d94 ) $ ( ( Chain1Base12.M.d41 ) $ ( ( Chain1Base12.M.d88 ) $ ( ( Chain1Base12.M.d41 ) $ ( ( Chain1Base12.M.d42 ) $ ( if if d7 then d5 else Chain1Base12.M'.d94 then if p1 then Chain1Base12.M'.d104 else false else if d5 then Chain1Base12.M'.d83 else d5 ) ) ) ) )
        d9 : if true then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( Chain1Base12.M.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( Chain1Base12.M.d108 ) $ ( ( Chain1Base12.M.d75 ) $ ( ( Chain1Base12.M.d71 ) $ ( ( Chain1Base12.M.d72 ) $ ( ( Chain1Base12.M.d4 ) $ ( if Chain1Base12.M'.d30 then p3 else d5 ) ) ) ) ) ) ) ) $ ( if Chain1Base12.M'.d34 then p1 else p1 ) )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( x12 ) ) ) ) $ ( if false then Bool else Bool )
        d11 = ( Chain1Base12.M.d108 ) $ ( ( Chain1Base12.M.d47 ) $ ( ( Chain1Base12.M.d30 ) $ ( ( Chain1Base12.M.d47 ) $ ( if if false then Chain1Base12.M'.d100 else p1 then if d8 then d7 else d7 else if Chain1Base12.M'.d55 then Chain1Base12.M'.d71 else true ) ) ) )
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if d8 then false else d8 ) ) ) $ ( if d7 then Chain1Base12.M'.d30 else Chain1Base12.M'.d81 )
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( Chain1Base12.M.d88 ) $ ( ( Chain1Base12.M.d42 ) $ ( ( Chain1Base12.M.d81 ) $ ( if Chain1Base12.M'.d14 then false else Chain1Base12.M'.d104 ) ) ) ) ) ) $ ( if Chain1Base12.M'.d63 then Chain1Base12.M'.d7 else false )
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( Chain1Base12.M.d38 ) $ ( ( Chain1Base12.M.d80 ) $ ( if if true then Chain1Base12.M'.d30 else d7 then if d16 then d7 else Chain1Base12.M'.d73 else if Chain1Base12.M'.d55 then p1 else Chain1Base12.M'.d94 ) )
        d19 : if true then if true then Bool else Bool else if false then Bool else Bool
        d19 = if if d9 then Chain1Base12.M'.d60 else true then if p1 then Chain1Base12.M'.d81 else Chain1Base12.M'.d107 else if p1 then p3 else p1
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = if if p3 then d18 else p1 then if Chain1Base12.M'.d79 then Chain1Base12.M'.d60 else Chain1Base12.M'.d72 else if false then Chain1Base12.M'.d63 else false
        d22 : if true then if true then Bool else Bool else if true then Bool else Bool
        d22 = ( Chain1Base12.M.d20 ) $ ( if if true then Chain1Base12.M'.d83 else Chain1Base12.M'.d75 then if d11 then d18 else Chain1Base12.M'.d75 else if false then true else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else x24 ) ) ) $ ( if false then Bool else Bool )
        d23 = if if d9 then d11 else true then if false then Chain1Base12.M'.d17 else Chain1Base12.M'.d108 else if true then d11 else p1
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then Bool else x26 ) ) ) $ ( if false then Bool else Bool )
        d25 = ( Chain1Base12.M.d4 ) $ ( if if d9 then d9 else d5 then if Chain1Base12.M'.d107 then true else d16 else if d7 then Chain1Base12.M'.d89 else Chain1Base12.M'.d29 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if Chain1Base12.M'.d83 then p1 else p1 then if Chain1Base12.M'.d63 then p1 else Chain1Base12.M'.d34 else if Chain1Base12.M'.d109 then true else Chain1Base12.M'.d72
        d30 : if false then if true then Bool else Bool else if false then Bool else Bool
        d30 = if if false then p1 else d14 then if true then p1 else p3 else if Chain1Base12.M'.d88 then d14 else Chain1Base12.M'.d71
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( Chain1Base12.M.d7 ) $ ( ( Chain1Base12.M.d72 ) $ ( ( Chain1Base12.M.d72 ) $ ( if Chain1Base12.M'.d26 then true else d22 ) ) ) ) ) ) $ ( if p1 then d7 else Chain1Base12.M'.d97 )
        d35 : if true then if true then Bool else Bool else if false then Bool else Bool
        d35 = if if Chain1Base12.M'.d81 then d18 else p3 then if p1 then d27 else true else if false then true else d14
        d36 : if false then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if d18 then Chain1Base12.M'.d63 else Chain1Base12.M'.d94 then if Chain1Base12.M'.d30 then d11 else p3 else if true then false else p1
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( Chain1Base12.M.d38 ) $ ( if if Chain1Base12.M'.d2 then p1 else p3 then if true then true else d5 else if Chain1Base12.M'.d94 then d35 else Chain1Base12.M'.d107 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if Chain1Base12.M'.d69 then Chain1Base12.M'.d42 else true ) ) ) $ ( if Chain1Base12.M'.d71 then Chain1Base12.M'.d69 else true )
        d41 : if false then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( Chain1Base12.M.d7 ) $ ( if if true then d18 else false then if p3 then p3 else Chain1Base12.M'.d20 else if Chain1Base12.M'.d13 then d19 else true )
        d42 : if false then if true then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> false ) ) ) $ ( d38 ) ) ) ) $ ( if p1 then Chain1Base12.M'.d97 else d41 )
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( Chain1Base12.M.d89 ) $ ( ( Chain1Base12.M.d8 ) $ ( ( Chain1Base12.M.d53 ) $ ( if Chain1Base12.M'.d2 then p1 else Chain1Base12.M'.d87 ) ) ) ) ) ) $ ( if Chain1Base12.M'.d107 then Chain1Base12.M'.d42 else p1 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> true ) ) ) $ ( Chain1Base12.M'.d41 ) ) ) ) $ ( if d20 then false else Chain1Base12.M'.d7 )
        d51 : if false then if false then Bool else Bool else if false then Bool else Bool
        d51 = ( Chain1Base12.M.d50 ) $ ( ( Chain1Base12.M.d63 ) $ ( ( Chain1Base12.M.d60 ) $ ( ( Chain1Base12.M.d81 ) $ ( if if true then p1 else Chain1Base12.M'.d38 then if p1 then d27 else false else if Chain1Base12.M'.d73 then Chain1Base12.M'.d41 else d38 ) ) ) )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if false then x55 else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = ( Chain1Base12.M.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( Chain1Base12.M.d53 ) $ ( ( Chain1Base12.M.d83 ) $ ( ( Chain1Base12.M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x54 -> Chain1Base12.M'.d30 ) ) ) $ ( Chain1Base12.M'.d23 ) ) ) ) ) ) ) $ ( if p3 then Chain1Base12.M'.d54 else Chain1Base12.M'.d41 ) )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then Bool else x57 ) ) ) $ ( if true then Bool else Bool )
        d56 = ( Chain1Base12.M.d26 ) $ ( if if Chain1Base12.M'.d64 then Chain1Base12.M'.d29 else p1 then if d42 then Chain1Base12.M'.d60 else Chain1Base12.M'.d55 else if Chain1Base12.M'.d79 then p1 else Chain1Base12.M'.d50 )
        d58 : if false then if true then Bool else Bool else if false then Bool else Bool
        d58 = ( Chain1Base12.M.d47 ) $ ( if if Chain1Base12.M'.d34 then Chain1Base12.M'.d38 else Chain1Base12.M'.d88 then if Chain1Base12.M'.d23 then d36 else p1 else if p1 then true else d37 )
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( Chain1Base12.M.d91 ) $ ( if if d41 then Chain1Base12.M'.d75 else true then if Chain1Base12.M'.d81 then Chain1Base12.M'.d73 else false else if d8 then Chain1Base12.M'.d100 else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = ( Chain1Base12.M.d72 ) $ ( if if false then true else false then if p1 then d35 else Chain1Base12.M'.d11 else if d25 then Chain1Base12.M'.d100 else true )
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = ( Chain1Base12.M.d78 ) $ ( if if true then p1 else Chain1Base12.M'.d60 then if p1 then false else d18 else if p1 then Chain1Base12.M'.d38 else Chain1Base12.M'.d108 )
        d63 : if false then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if p3 then d30 else Chain1Base12.M'.d78 ) ) ) $ ( if Chain1Base12.M'.d63 then p1 else false )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( Chain1Base12.M.d71 ) $ ( if d16 then Chain1Base12.M'.d73 else Chain1Base12.M'.d14 ) ) ) ) $ ( if false then p1 else d25 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then x70 else Bool ) ) ) $ ( if true then Bool else Bool )
        d69 = ( Chain1Base12.M.d50 ) $ ( ( Chain1Base12.M.d2 ) $ ( if if d62 then p3 else d41 then if d8 then true else true else if false then true else d27 ) )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if false then x72 else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = if if false then true else false then if d45 then false else d38 else if Chain1Base12.M'.d45 then Chain1Base12.M'.d4 else false
        d73 : if true then if false then Bool else Bool else if true then Bool else Bool
        d73 = if if d65 then true else p1 then if d7 then Chain1Base12.M'.d69 else d51 else if true then Chain1Base12.M'.d75 else d60
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( Chain1Base12.M.d81 ) $ ( ( Chain1Base12.M.d93 ) $ ( ( Chain1Base12.M.d20 ) $ ( ( Chain1Base12.M.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( Chain1Base12.M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d31 ) ) ) $ ( d73 ) ) ) ) ) $ ( if Chain1Base12.M'.d109 then p3 else Chain1Base12.M'.d41 ) ) ) ) )
        d77 : if false then if true then Bool else Bool else if false then Bool else Bool
        d77 = ( Chain1Base12.M.d97 ) $ ( ( Chain1Base12.M.d87 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( Chain1Base12.M.d68 ) $ ( ( Chain1Base12.M.d83 ) $ ( ( Chain1Base12.M.d109 ) $ ( ( Chain1Base12.M.d64 ) $ ( ( Chain1Base12.M.d8 ) $ ( ( Chain1Base12.M.d60 ) $ ( ( Chain1Base12.M.d14 ) $ ( if Chain1Base12.M'.d64 then Chain1Base12.M'.d60 else Chain1Base12.M'.d2 ) ) ) ) ) ) ) ) ) ) $ ( if p3 then Chain1Base12.M'.d38 else Chain1Base12.M'.d104 ) ) )
        d79 : if true then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( Chain1Base12.M.d81 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( Chain1Base12.M.d63 ) $ ( ( Chain1Base12.M.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d22 ) ) ) $ ( true ) ) ) ) ) ) $ ( if Chain1Base12.M'.d69 then p1 else false ) )
        d82 : if false then if true then Bool else Bool else if true then Bool else Bool
        d82 = ( Chain1Base12.M.d87 ) $ ( if if Chain1Base12.M'.d50 then true else true then if Chain1Base12.M'.d8 then true else p3 else if Chain1Base12.M'.d2 then Chain1Base12.M'.d73 else d35 )
        d83 : if true then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if d20 then true else Chain1Base12.M'.d2 then if Chain1Base12.M'.d2 then d45 else true else if Chain1Base12.M'.d13 then false else d25
        d84 : if false then if true then Bool else Bool else if false then Bool else Bool
        d84 = ( Chain1Base12.M.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( Chain1Base12.M.d86 ) $ ( ( Chain1Base12.M.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x86 -> false ) ) ) $ ( p3 ) ) ) ) ) ) $ ( if Chain1Base12.M'.d64 then false else d83 ) )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> Chain1Base12.M'.d47 ) ) ) $ ( Chain1Base12.M'.d69 ) ) ) ) $ ( if d83 then d63 else p1 )
        d92 : if false then if true then Bool else Bool else if true then Bool else Bool
        d92 = ( Chain1Base12.M.d87 ) $ ( ( Chain1Base12.M.d69 ) $ ( ( Chain1Base12.M.d91 ) $ ( ( Chain1Base12.M.d73 ) $ ( ( Chain1Base12.M.d42 ) $ ( ( Chain1Base12.M.d75 ) $ ( ( Chain1Base12.M.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( Chain1Base12.M.d79 ) $ ( ( Chain1Base12.M.d34 ) $ ( ( Chain1Base12.M.d38 ) $ ( ( Chain1Base12.M.d64 ) $ ( ( Chain1Base12.M.d72 ) $ ( ( Chain1Base12.M.d108 ) $ ( if Chain1Base12.M'.d94 then p3 else Chain1Base12.M'.d81 ) ) ) ) ) ) ) ) ) $ ( if Chain1Base12.M'.d88 then p3 else Chain1Base12.M'.d104 ) ) ) ) ) ) ) )
        d94 : if true then if false then Bool else Bool else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( Chain1Base12.M.d64 ) $ ( ( Chain1Base12.M.d108 ) $ ( if d59 then Chain1Base12.M'.d73 else d60 ) ) ) ) ) $ ( if p1 then Chain1Base12.M'.d64 else p3 )
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = ( Chain1Base12.M.d91 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> p3 ) ) ) $ ( p1 ) ) ) ) $ ( if d69 then true else p1 ) )
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = ( Chain1Base12.M.d60 ) $ ( if if p1 then true else d71 then if Chain1Base12.M'.d104 then Chain1Base12.M'.d97 else d19 else if Chain1Base12.M'.d13 then p3 else Chain1Base12.M'.d64 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d100 = if if p3 then d36 else p1 then if Chain1Base12.M'.d26 then Chain1Base12.M'.d71 else d83 else if Chain1Base12.M'.d41 then d14 else Chain1Base12.M'.d20
        d102 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d102 = ( Chain1Base12.M.d17 ) $ ( ( Chain1Base12.M.d60 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> d100 ) ) ) $ ( false ) ) ) ) $ ( if p1 then Chain1Base12.M'.d80 else p1 ) ) )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d107 = ( Chain1Base12.M.d104 ) $ ( ( Chain1Base12.M.d93 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> true ) ) ) $ ( Chain1Base12.M'.d72 ) ) ) ) $ ( if p3 then Chain1Base12.M'.d100 else true ) ) )