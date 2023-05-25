module Chain1Test6  where
    import Chain1Base6
    open import Chain1Base6 using (Bool; true; false; ⊤; tt) public
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
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x6 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( Chain1Base6.M.d116 ) $ ( ( Chain1Base6.M.d44 ) $ ( if x5 then true else Chain1Base6.M'.d97 ) ) ) ) ) $ ( if true then p2 else p1 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( x10 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = ( Chain1Base6.M.d121 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( Chain1Base6.M.d77 ) $ ( if Chain1Base6.M'.d50 then p2 else Chain1Base6.M'.d8 ) ) ) ) $ ( if p1 then d4 else Chain1Base6.M'.d102 ) )
        d12 : if true then if true then Bool else Bool else if false then Bool else Bool
        d12 = ( Chain1Base6.M.d31 ) $ ( if if Chain1Base6.M'.d37 then d4 else Chain1Base6.M'.d111 then if d4 then Chain1Base6.M'.d44 else false else if true then false else d4 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( x14 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = ( Chain1Base6.M.d68 ) $ ( ( Chain1Base6.M.d18 ) $ ( if if p1 then d8 else p2 then if Chain1Base6.M'.d23 then d12 else Chain1Base6.M'.d116 else if d4 then p1 else Chain1Base6.M'.d97 ) )
        d16 : if false then if false then Bool else Bool else if false then Bool else Bool
        d16 = ( Chain1Base6.M.d72 ) $ ( ( Chain1Base6.M.d6 ) $ ( if if Chain1Base6.M'.d61 then d12 else d4 then if true then Chain1Base6.M'.d108 else d8 else if true then Chain1Base6.M'.d37 else d4 ) )
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( Chain1Base6.M.d18 ) $ ( ( Chain1Base6.M.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( Chain1Base6.M.d40 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x19 -> Chain1Base6.M'.d76 ) ) ) $ ( p2 ) ) ) ) ) $ ( if d12 then p1 else Chain1Base6.M'.d97 ) ) )
        d20 : if true then if true then Bool else Bool else if true then Bool else Bool
        d20 = if if p2 then Chain1Base6.M'.d15 else p2 then if Chain1Base6.M'.d40 then true else false else if p2 then d16 else p2
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d21 = ( Chain1Base6.M.d11 ) $ ( ( Chain1Base6.M.d108 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( Chain1Base6.M.d30 ) $ ( ( Chain1Base6.M.d72 ) $ ( if d13 then d16 else Chain1Base6.M'.d92 ) ) ) ) ) $ ( if Chain1Base6.M'.d22 then d16 else d16 ) ) )
        d25 : if true then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if Chain1Base6.M'.d22 then false else d4 then if Chain1Base6.M'.d17 then Chain1Base6.M'.d26 else Chain1Base6.M'.d72 else if Chain1Base6.M'.d81 then d16 else Chain1Base6.M'.d72
        d26 : if true then if false then Bool else Bool else if true then Bool else Bool
        d26 = if if false then Chain1Base6.M'.d87 else Chain1Base6.M'.d33 then if d13 then p2 else Chain1Base6.M'.d11 else if Chain1Base6.M'.d11 then d17 else p2
        d27 : if false then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( Chain1Base6.M.d24 ) $ ( ( Chain1Base6.M.d81 ) $ ( ( Chain1Base6.M.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( Chain1Base6.M.d102 ) $ ( ( Chain1Base6.M.d83 ) $ ( if d21 then p2 else Chain1Base6.M'.d14 ) ) ) ) ) $ ( if false then p2 else d4 ) ) ) )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = ( Chain1Base6.M.d30 ) $ ( if if p1 then Chain1Base6.M'.d26 else Chain1Base6.M'.d15 then if Chain1Base6.M'.d2 then d16 else Chain1Base6.M'.d45 else if p1 then p1 else Chain1Base6.M'.d8 )
        d31 : if true then if false then Bool else Bool else if false then Bool else Bool
        d31 = ( Chain1Base6.M.d22 ) $ ( ( Chain1Base6.M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if false then p1 else Chain1Base6.M'.d121 ) ) ) $ ( if d27 then Chain1Base6.M'.d120 else Chain1Base6.M'.d72 ) ) )
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = ( Chain1Base6.M.d48 ) $ ( if if d27 then Chain1Base6.M'.d30 else p2 then if false then p2 else Chain1Base6.M'.d45 else if Chain1Base6.M'.d81 then p2 else Chain1Base6.M'.d64 )
        d34 : if true then if false then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( Chain1Base6.M.d18 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x36 -> d27 ) ) ) $ ( Chain1Base6.M'.d72 ) ) ) ) ) $ ( if Chain1Base6.M'.d81 then d26 else false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( x39 ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( Chain1Base6.M.d43 ) $ ( ( Chain1Base6.M.d6 ) $ ( if p1 then Chain1Base6.M'.d76 else Chain1Base6.M'.d48 ) ) ) ) ) $ ( if Chain1Base6.M'.d68 then Chain1Base6.M'.d58 else p1 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then x43 else x43 ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if true then true else false ) ) ) $ ( if p1 then Chain1Base6.M'.d37 else p1 )
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( Chain1Base6.M.d123 ) $ ( if if d25 then true else true then if Chain1Base6.M'.d33 then p2 else Chain1Base6.M'.d33 else if d37 then Chain1Base6.M'.d50 else d4 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x46 ) ) ) $ ( x46 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = if if false then Chain1Base6.M'.d83 else Chain1Base6.M'.d77 then if Chain1Base6.M'.d116 then p2 else Chain1Base6.M'.d68 else if Chain1Base6.M'.d72 then p2 else p1
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then x49 else Bool ) ) ) $ ( if false then Bool else Bool )
        d48 = if if d20 then d12 else d34 then if d29 then Chain1Base6.M'.d66 else Chain1Base6.M'.d11 else if false then d41 else d37
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( Chain1Base6.M.d43 ) $ ( ( Chain1Base6.M.d61 ) $ ( ( Chain1Base6.M.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> p2 ) ) ) $ ( Chain1Base6.M'.d50 ) ) ) ) $ ( if false then Chain1Base6.M'.d123 else p2 ) ) ) )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> d16 ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then Chain1Base6.M'.d102 else d27 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( Chain1Base6.M.d24 ) $ ( ( Chain1Base6.M.d68 ) $ ( if if Chain1Base6.M'.d7 then Chain1Base6.M'.d11 else Chain1Base6.M'.d7 then if p1 then d21 else Chain1Base6.M'.d92 else if Chain1Base6.M'.d50 then Chain1Base6.M'.d120 else Chain1Base6.M'.d44 ) )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x62 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d61 = ( Chain1Base6.M.d99 ) $ ( ( Chain1Base6.M.d58 ) $ ( ( Chain1Base6.M.d48 ) $ ( if if false then p1 else Chain1Base6.M'.d22 then if p1 then Chain1Base6.M'.d121 else d21 else if false then Chain1Base6.M'.d8 else false ) ) )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( Chain1Base6.M.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x66 -> p2 ) ) ) $ ( Chain1Base6.M'.d64 ) ) ) ) ) $ ( if p1 then Chain1Base6.M'.d83 else Chain1Base6.M'.d22 )
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( Chain1Base6.M.d108 ) $ ( if Chain1Base6.M'.d77 then true else Chain1Base6.M'.d75 ) ) ) ) $ ( if true then p1 else false )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( Chain1Base6.M.d121 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( Chain1Base6.M.d111 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x72 -> false ) ) ) $ ( d33 ) ) ) ) ) $ ( if d4 then Chain1Base6.M'.d23 else Chain1Base6.M'.d97 ) )
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = if if Chain1Base6.M'.d92 then p2 else d8 then if d25 then p1 else p2 else if false then Chain1Base6.M'.d120 else Chain1Base6.M'.d68
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( Chain1Base6.M.d24 ) $ ( if if true then Chain1Base6.M'.d33 else true then if Chain1Base6.M'.d11 then p1 else Chain1Base6.M'.d53 else if true then d17 else d70 )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if p2 then p2 else d12 ) ) ) $ ( if p1 then Chain1Base6.M'.d22 else p2 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d79 = ( Chain1Base6.M.d30 ) $ ( ( Chain1Base6.M.d44 ) $ ( ( Chain1Base6.M.d64 ) $ ( if if p1 then true else d21 then if p2 then Chain1Base6.M'.d61 else false else if Chain1Base6.M'.d81 then Chain1Base6.M'.d92 else p1 ) ) )
        d81 : if false then if false then Bool else Bool else if false then Bool else Bool
        d81 = ( Chain1Base6.M.d33 ) $ ( if if p2 then Chain1Base6.M'.d92 else d64 then if Chain1Base6.M'.d108 then Chain1Base6.M'.d22 else p2 else if false then d77 else Chain1Base6.M'.d92 )
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( Chain1Base6.M.d11 ) $ ( ( Chain1Base6.M.d6 ) $ ( ( Chain1Base6.M.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x84 -> Chain1Base6.M'.d24 ) ) ) $ ( false ) ) ) ) ) ) ) $ ( if Chain1Base6.M'.d114 then p1 else Chain1Base6.M'.d83 )
        d85 : if true then if true then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> Chain1Base6.M'.d58 ) ) ) $ ( Chain1Base6.M'.d114 ) ) ) ) $ ( if d68 then d26 else Chain1Base6.M'.d11 )
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = if if p1 then p2 else true then if d26 then true else d17 else if d26 then Chain1Base6.M'.d111 else false
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else x90 ) ) ) $ ( if true then Bool else Bool )
        d89 = if if true then p1 else Chain1Base6.M'.d24 then if Chain1Base6.M'.d81 then d4 else false else if true then false else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else Bool ) ) ) $ ( if true then Bool else Bool )
        d91 = ( Chain1Base6.M.d14 ) $ ( if if Chain1Base6.M'.d11 then p1 else d50 then if p1 then false else d20 else if Chain1Base6.M'.d6 then p1 else true )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( x96 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( Chain1Base6.M.d102 ) $ ( ( Chain1Base6.M.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> d58 ) ) ) $ ( d53 ) ) ) ) $ ( if p1 then d17 else p2 ) ) )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = ( Chain1Base6.M.d108 ) $ ( ( Chain1Base6.M.d41 ) $ ( ( Chain1Base6.M.d75 ) $ ( if if Chain1Base6.M'.d81 then p1 else false then if true then d68 else d20 else if d58 then d53 else d12 ) ) )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d101 = ( Chain1Base6.M.d102 ) $ ( if if d16 then Chain1Base6.M'.d24 else Chain1Base6.M'.d30 then if d81 then true else true else if true then d91 else Chain1Base6.M'.d31 )
        d104 : if false then if true then Bool else Bool else if false then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> true ) ) ) $ ( Chain1Base6.M'.d99 ) ) ) ) $ ( if d45 then Chain1Base6.M'.d68 else p1 )
        d107 : if true then if false then Bool else Bool else if true then Bool else Bool
        d107 = if if false then p1 else Chain1Base6.M'.d53 then if d89 then Chain1Base6.M'.d6 else Chain1Base6.M'.d26 else if false then p2 else Chain1Base6.M'.d76
        d108 : if false then if true then Bool else Bool else if true then Bool else Bool
        d108 = ( Chain1Base6.M.d121 ) $ ( ( Chain1Base6.M.d99 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( Chain1Base6.M.d99 ) $ ( if Chain1Base6.M'.d72 then p1 else true ) ) ) ) $ ( if Chain1Base6.M'.d61 then Chain1Base6.M'.d37 else false ) ) )
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( Chain1Base6.M.d41 ) $ ( if d12 then Chain1Base6.M'.d114 else Chain1Base6.M'.d58 ) ) ) ) $ ( if Chain1Base6.M'.d83 then Chain1Base6.M'.d83 else p1 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d112 = ( Chain1Base6.M.d77 ) $ ( if if p2 then p1 else d61 then if false then p1 else p1 else if d44 then d4 else Chain1Base6.M'.d17 )
        d115 : if false then if true then Bool else Bool else if false then Bool else Bool
        d115 = if if false then false else Chain1Base6.M'.d22 then if p2 then p2 else d31 else if p1 then p1 else false
        d116 : if true then if false then Bool else Bool else if true then Bool else Bool
        d116 = if if p1 then p1 else Chain1Base6.M'.d68 then if Chain1Base6.M'.d72 then Chain1Base6.M'.d105 else p2 else if p1 then d61 else p1
        d117 : if true then if false then Bool else Bool else if false then Bool else Bool
        d117 = ( Chain1Base6.M.d11 ) $ ( if if Chain1Base6.M'.d8 then Chain1Base6.M'.d79 else false then if false then false else p2 else if p2 then Chain1Base6.M'.d11 else Chain1Base6.M'.d45 )
        d118 : if false then if false then Bool else Bool else if true then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d25 ) ) ) $ ( d41 ) ) ) ) $ ( if d70 then p2 else Chain1Base6.M'.d37 )
        d121 : if true then if true then Bool else Bool else if false then Bool else Bool
        d121 = ( Chain1Base6.M.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> ( Chain1Base6.M.d17 ) $ ( ( Chain1Base6.M.d75 ) $ ( ( Chain1Base6.M.d18 ) $ ( ( Chain1Base6.M.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x123 -> Chain1Base6.M'.d121 ) ) ) $ ( d91 ) ) ) ) ) ) ) ) $ ( if p1 then false else Chain1Base6.M'.d44 ) )