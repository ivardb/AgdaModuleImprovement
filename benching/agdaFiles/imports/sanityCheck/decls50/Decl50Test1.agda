module Decl50Test1  where
    import Decl50Base1
    open import Decl50Base1 using (Bool; true; false; ⊤; tt) public
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M  where
        d1 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1 = if if false then Decl50Base1.M.d39 else Decl50Base1.M.d73 then if true then Decl50Base1.M.d15 else Decl50Base1.M.d93 else if Decl50Base1.M.d79 then Decl50Base1.M.d59 else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if false then Bool else x3 ) ) ) $ ( if false then Bool else Bool )
        d2 = if if true then Decl50Base1.M.d32 else Decl50Base1.M.d101 then if false then true else Decl50Base1.M.d20 else if d1 then Decl50Base1.M.d32 else Decl50Base1.M.d53
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> x6 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if Decl50Base1.M.d1 then false else Decl50Base1.M.d63 ) ) ) $ ( if Decl50Base1.M.d4 then Decl50Base1.M.d4 else d1 )
        d8 : if false then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if Decl50Base1.M.d4 then Decl50Base1.M.d84 else Decl50Base1.M.d64 then if d4 then Decl50Base1.M.d73 else true else if Decl50Base1.M.d68 then Decl50Base1.M.d58 else Decl50Base1.M.d70
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else x12 ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> d1 ) ) ) $ ( x10 ) ) ) ) $ ( if d2 then Decl50Base1.M.d58 else Decl50Base1.M.d55 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = if if Decl50Base1.M.d77 then Decl50Base1.M.d31 else true then if Decl50Base1.M.d1 then Decl50Base1.M.d79 else Decl50Base1.M.d10 else if Decl50Base1.M.d101 then Decl50Base1.M.d26 else Decl50Base1.M.d65
        d16 : if true then if true then Bool else Bool else if true then Bool else Bool
        d16 = if if Decl50Base1.M.d32 then Decl50Base1.M.d117 else Decl50Base1.M.d32 then if false then Decl50Base1.M.d101 else true else if Decl50Base1.M.d36 then Decl50Base1.M.d26 else Decl50Base1.M.d126
        d17 : if true then if true then Bool else Bool else if true then Bool else Bool
        d17 = if if true then Decl50Base1.M.d32 else Decl50Base1.M.d126 then if false then d2 else d4 else if Decl50Base1.M.d6 then Decl50Base1.M.d45 else Decl50Base1.M.d77
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then Bool else x19 ) ) ) $ ( if false then Bool else Bool )
        d18 = if if Decl50Base1.M.d73 then true else Decl50Base1.M.d12 then if false then Decl50Base1.M.d110 else false else if d4 then false else d16
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> Decl50Base1.M.d42 ) ) ) $ ( Decl50Base1.M.d96 ) ) ) ) $ ( if Decl50Base1.M.d52 then false else d2 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if if Decl50Base1.M.d55 then d4 else true then if Decl50Base1.M.d10 then Decl50Base1.M.d55 else d8 else if Decl50Base1.M.d88 then d4 else false
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d27 = if if Decl50Base1.M.d69 then true else Decl50Base1.M.d117 then if true then d4 else false else if Decl50Base1.M.d101 then Decl50Base1.M.d1 else d4
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> Decl50Base1.M.d88 ) ) ) $ ( d20 ) ) ) ) $ ( if d18 then true else d9 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> true ) ) ) $ ( d20 ) ) ) ) $ ( if Decl50Base1.M.d96 then d24 else Decl50Base1.M.d69 )
        d38 : if false then if false then Bool else Bool else if false then Bool else Bool
        d38 = if if false then false else d8 then if Decl50Base1.M.d69 then d27 else Decl50Base1.M.d97 else if true then true else Decl50Base1.M.d114
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if Decl50Base1.M.d126 then d16 else d20 then if true then Decl50Base1.M.d118 else false else if d1 then Decl50Base1.M.d12 else Decl50Base1.M.d87
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> x42 ) ) ) $ ( Decl50Base1.M.d58 ) ) ) ) $ ( if Decl50Base1.M.d22 then Decl50Base1.M.d6 else d17 )
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = if if d27 then d39 else Decl50Base1.M.d70 then if Decl50Base1.M.d121 then d8 else Decl50Base1.M.d26 else if Decl50Base1.M.d69 then Decl50Base1.M.d130 else Decl50Base1.M.d53
        d44 : if false then if true then Bool else Bool else if true then Bool else Bool
        d44 = if if Decl50Base1.M.d48 then false else d20 then if Decl50Base1.M.d69 then d40 else Decl50Base1.M.d117 else if true then d17 else Decl50Base1.M.d12
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x49 ) ) ) $ ( x48 ) ) ) ) $ ( if false then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> Decl50Base1.M.d87 ) ) ) $ ( d17 ) ) ) ) $ ( if d27 then Decl50Base1.M.d4 else Decl50Base1.M.d52 )
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> Decl50Base1.M.d22 ) ) ) $ ( d17 ) ) ) ) $ ( if Decl50Base1.M.d64 then d20 else Decl50Base1.M.d65 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x56 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> ( ( Bool -> Bool ) ∋ ( ( λ x55 -> Decl50Base1.M.d58 ) ) ) $ ( d45 ) ) ) ) $ ( if d4 then Decl50Base1.M.d32 else Decl50Base1.M.d29 )
        d57 : if false then if true then Bool else Bool else if false then Bool else Bool
        d57 = if if d16 then false else true then if Decl50Base1.M.d97 then Decl50Base1.M.d126 else true else if d17 then Decl50Base1.M.d84 else false
        d58 : if false then if false then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if Decl50Base1.M.d25 then false else x59 ) ) ) $ ( if Decl50Base1.M.d15 then Decl50Base1.M.d87 else true )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then x62 else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d33 then d40 else false ) ) ) $ ( if Decl50Base1.M.d96 then Decl50Base1.M.d68 else d39 )
        d63 : if false then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if Decl50Base1.M.d55 then d16 else Decl50Base1.M.d55 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> x69 ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> false ) ) ) $ ( Decl50Base1.M.d117 ) ) ) ) $ ( if d38 then false else Decl50Base1.M.d64 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( x74 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> Decl50Base1.M.d77 ) ) ) $ ( Decl50Base1.M.d79 ) ) ) ) $ ( if Decl50Base1.M.d58 then Decl50Base1.M.d93 else Decl50Base1.M.d88 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d76 = if if Decl50Base1.M.d110 then Decl50Base1.M.d29 else Decl50Base1.M.d130 then if false then Decl50Base1.M.d96 else true else if d50 then Decl50Base1.M.d105 else d2
        d79 : if true then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> Decl50Base1.M.d36 ) ) ) $ ( x80 ) ) ) ) $ ( if true then d44 else true )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> Decl50Base1.M.d52 ) ) ) $ ( false ) ) ) ) $ ( if false then d8 else true )
        d87 : if false then if true then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d1 then d60 else x88 ) ) ) $ ( if true then false else Decl50Base1.M.d130 )
        d89 : if false then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if false then d40 else Decl50Base1.M.d6 then if Decl50Base1.M.d58 then true else true else if d40 then Decl50Base1.M.d126 else Decl50Base1.M.d42
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if false then Decl50Base1.M.d53 else Decl50Base1.M.d114 then if Decl50Base1.M.d1 then true else false else if Decl50Base1.M.d42 then Decl50Base1.M.d20 else Decl50Base1.M.d77
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> Bool ) ) ) $ ( x95 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if x94 then Decl50Base1.M.d73 else d29 ) ) ) $ ( if d13 then true else false )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if false then true else Decl50Base1.M.d97 then if false then Decl50Base1.M.d79 else d43 else if true then true else Decl50Base1.M.d70
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if true then x103 else x103 ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then Decl50Base1.M.d100 else Decl50Base1.M.d84 )
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = if if Decl50Base1.M.d31 then d44 else true then if d79 then d97 else Decl50Base1.M.d25 else if true then Decl50Base1.M.d105 else d100
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if Decl50Base1.M.d101 then d9 else x106 ) ) ) $ ( if Decl50Base1.M.d114 then Decl50Base1.M.d58 else Decl50Base1.M.d130 )
        d109 : if false then if true then Bool else Bool else if false then Bool else Bool
        d109 = if if Decl50Base1.M.d77 then d29 else d87 then if false then false else Decl50Base1.M.d110 else if d89 then true else true
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then Bool else x112 ) ) ) $ ( if false then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if true then false else x111 ) ) ) $ ( if d24 then Decl50Base1.M.d12 else Decl50Base1.M.d79 )
        d113 : if false then if true then Bool else Bool else if false then Bool else Bool
        d113 = if if false then false else false then if Decl50Base1.M.d69 then Decl50Base1.M.d18 else false else if d2 then Decl50Base1.M.d64 else true
        d114 : if false then if false then Bool else Bool else if false then Bool else Bool
        d114 = if if d53 then Decl50Base1.M.d64 else true then if Decl50Base1.M.d84 then false else Decl50Base1.M.d130 else if Decl50Base1.M.d10 then Decl50Base1.M.d22 else false
        d115 : if false then if true then Bool else Bool else if false then Bool else Bool
        d115 = if if Decl50Base1.M.d31 then Decl50Base1.M.d18 else Decl50Base1.M.d22 then if d18 then Decl50Base1.M.d42 else d29 else if Decl50Base1.M.d68 then Decl50Base1.M.d6 else Decl50Base1.M.d126
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if Decl50Base1.M.d52 then Decl50Base1.M.d118 else true then if d1 then d20 else Decl50Base1.M.d26 else if false then Decl50Base1.M.d26 else Decl50Base1.M.d39
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = if if true then Decl50Base1.M.d105 else true then if d115 then d58 else Decl50Base1.M.d64 else if Decl50Base1.M.d73 then true else Decl50Base1.M.d42
        d120 : if true then if false then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( Decl50Base1.M.d53 ) ) ) ) $ ( if true then Decl50Base1.M.d4 else false )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d123 = if if Decl50Base1.M.d117 then d8 else Decl50Base1.M.d69 then if Decl50Base1.M.d55 then Decl50Base1.M.d96 else d44 else if false then Decl50Base1.M.d18 else Decl50Base1.M.d29
        d125 : if true then if true then Bool else Bool else if true then Bool else Bool
        d125 = if if Decl50Base1.M.d69 then d8 else Decl50Base1.M.d101 then if Decl50Base1.M.d105 then Decl50Base1.M.d1 else true else if true then Decl50Base1.M.d97 else Decl50Base1.M.d4
        d126 : if true then if false then Bool else Bool else if true then Bool else Bool
        d126 = if if Decl50Base1.M.d4 then d53 else Decl50Base1.M.d59 then if d87 then d90 else Decl50Base1.M.d42 else if d100 then Decl50Base1.M.d107 else Decl50Base1.M.d105