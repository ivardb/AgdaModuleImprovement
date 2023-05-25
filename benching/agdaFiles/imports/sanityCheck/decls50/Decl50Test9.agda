module Decl50Test9  where
    import Decl50Base9
    open import Decl50Base9 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl50Base9.M.d123 ) ) ) $ ( Decl50Base9.M.d73 ) ) ) ) $ ( if Decl50Base9.M.d97 then Decl50Base9.M.d76 else Decl50Base9.M.d12 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d6 = if if d1 then Decl50Base9.M.d64 else false then if true then Decl50Base9.M.d110 else d1 else if true then d1 else d1
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then Bool else x10 ) ) ) $ ( if true then Bool else Bool )
        d9 = if if Decl50Base9.M.d97 then Decl50Base9.M.d96 else Decl50Base9.M.d45 then if Decl50Base9.M.d34 then d6 else d6 else if Decl50Base9.M.d76 then Decl50Base9.M.d97 else Decl50Base9.M.d107
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if true then Bool else Bool )
        d11 = if if true then true else Decl50Base9.M.d117 then if d9 then Decl50Base9.M.d68 else Decl50Base9.M.d117 else if true then Decl50Base9.M.d37 else d6
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> false ) ) ) $ ( Decl50Base9.M.d77 ) ) ) ) $ ( if Decl50Base9.M.d38 then false else Decl50Base9.M.d91 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then Bool else x18 ) ) ) $ ( if false then Bool else Bool )
        d17 = if if Decl50Base9.M.d95 then d9 else true then if d11 then Decl50Base9.M.d68 else false else if false then d9 else d14
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else x20 ) ) ) $ ( if true then Bool else Bool )
        d19 = if if Decl50Base9.M.d94 then d14 else Decl50Base9.M.d46 then if false then d6 else true else if Decl50Base9.M.d91 then true else Decl50Base9.M.d19
        d21 : if true then if false then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( true ) ) ) ) $ ( if true then false else Decl50Base9.M.d50 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then x25 else x25 ) ) ) $ ( if false then Bool else Bool )
        d24 = if if false then true else Decl50Base9.M.d78 then if Decl50Base9.M.d15 then false else false else if Decl50Base9.M.d25 then false else Decl50Base9.M.d50
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> Decl50Base9.M.d25 ) ) ) $ ( Decl50Base9.M.d57 ) ) ) ) $ ( if Decl50Base9.M.d97 then Decl50Base9.M.d60 else d1 )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if Decl50Base9.M.d46 then false else Decl50Base9.M.d29 ) ) ) $ ( if Decl50Base9.M.d12 then Decl50Base9.M.d120 else Decl50Base9.M.d91 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if true then x33 else Bool ) ) ) $ ( if true then Bool else Bool )
        d32 = if if true then d6 else Decl50Base9.M.d113 then if Decl50Base9.M.d52 then false else true else if true then true else d21
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then x35 else x35 ) ) ) $ ( if true then Bool else Bool )
        d34 = if if d19 then true else d6 then if true then false else d11 else if Decl50Base9.M.d19 then false else Decl50Base9.M.d22
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> Decl50Base9.M.d116 ) ) ) $ ( x37 ) ) ) ) $ ( if Decl50Base9.M.d77 then d6 else d32 )
        d39 : if true then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( x40 ) ) ) ) $ ( if Decl50Base9.M.d120 then Decl50Base9.M.d41 else Decl50Base9.M.d9 )
        d42 : if false then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if d21 then d14 else Decl50Base9.M.d38 then if false then Decl50Base9.M.d43 else Decl50Base9.M.d45 else if true then false else Decl50Base9.M.d4
        d43 : if true then if true then Bool else Bool else if true then Bool else Bool
        d43 = if if true then true else Decl50Base9.M.d100 then if true then Decl50Base9.M.d77 else Decl50Base9.M.d64 else if Decl50Base9.M.d96 then Decl50Base9.M.d52 else Decl50Base9.M.d66
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then Bool else x46 ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if d29 then Decl50Base9.M.d4 else Decl50Base9.M.d120 ) ) ) $ ( if false then true else Decl50Base9.M.d57 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d47 = if if true then Decl50Base9.M.d45 else Decl50Base9.M.d45 then if Decl50Base9.M.d77 then Decl50Base9.M.d123 else d14 else if d21 then Decl50Base9.M.d73 else true
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( x50 ) ) ) ) $ ( if true then Bool else Bool )
        d49 = if if d26 then true else Decl50Base9.M.d50 then if true then false else Decl50Base9.M.d50 else if Decl50Base9.M.d60 then Decl50Base9.M.d77 else d26
        d52 : if false then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if Decl50Base9.M.d4 then Decl50Base9.M.d116 else x53 ) ) ) $ ( if d34 then false else Decl50Base9.M.d45 )
        d54 : if true then if false then Bool else Bool else if false then Bool else Bool
        d54 = if if Decl50Base9.M.d68 then Decl50Base9.M.d74 else d6 then if Decl50Base9.M.d46 then d26 else d11 else if true then Decl50Base9.M.d53 else Decl50Base9.M.d95
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> Bool ) ) ) $ ( x58 ) ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> d52 ) ) ) $ ( x56 ) ) ) ) $ ( if false then Decl50Base9.M.d9 else Decl50Base9.M.d116 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then x63 else x63 ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( false ) ) ) ) $ ( if false then d14 else false )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( x65 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = if if Decl50Base9.M.d104 then Decl50Base9.M.d1 else true then if Decl50Base9.M.d68 then d54 else Decl50Base9.M.d52 else if d17 then Decl50Base9.M.d56 else false
        d67 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if d6 then Decl50Base9.M.d66 else Decl50Base9.M.d97 ) ) ) $ ( if Decl50Base9.M.d43 then false else Decl50Base9.M.d53 )
        d71 : if false then if true then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> Decl50Base9.M.d19 ) ) ) $ ( d44 ) ) ) ) $ ( if Decl50Base9.M.d113 then Decl50Base9.M.d113 else true )
        d74 : if true then if false then Bool else Bool else if true then Bool else Bool
        d74 = if if true then true else Decl50Base9.M.d107 then if Decl50Base9.M.d61 then d11 else Decl50Base9.M.d97 else if Decl50Base9.M.d86 then Decl50Base9.M.d19 else d6
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x78 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if Decl50Base9.M.d91 then false else Decl50Base9.M.d68 ) ) ) $ ( if false then Decl50Base9.M.d21 else Decl50Base9.M.d64 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if true then x81 else x81 ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if d44 then d55 else Decl50Base9.M.d95 ) ) ) $ ( if false then false else false )
        d82 : if false then if false then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if false then true else x83 ) ) ) $ ( if Decl50Base9.M.d91 then Decl50Base9.M.d70 else true )
        d84 : if true then if false then Bool else Bool else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( true ) ) ) ) $ ( if false then d55 else Decl50Base9.M.d9 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if false then x88 else x88 ) ) ) $ ( if false then Bool else Bool )
        d87 = if if Decl50Base9.M.d81 then d52 else d11 then if Decl50Base9.M.d57 then d74 else Decl50Base9.M.d38 else if d19 then Decl50Base9.M.d81 else Decl50Base9.M.d104
        d89 : if true then if true then Bool else Bool else if false then Bool else Bool
        d89 = if if d84 then Decl50Base9.M.d19 else d36 then if Decl50Base9.M.d19 then Decl50Base9.M.d29 else Decl50Base9.M.d22 else if d42 then Decl50Base9.M.d19 else Decl50Base9.M.d64
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then Bool else x93 ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> Decl50Base9.M.d21 ) ) ) $ ( d43 ) ) ) ) $ ( if d87 then Decl50Base9.M.d50 else d14 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x95 ) ) ) $ ( x95 ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if Decl50Base9.M.d45 then Decl50Base9.M.d45 else true then if Decl50Base9.M.d78 then Decl50Base9.M.d95 else false else if Decl50Base9.M.d64 then Decl50Base9.M.d104 else Decl50Base9.M.d53
        d97 : if true then if false then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if true then false else x98 ) ) ) $ ( if d52 then Decl50Base9.M.d81 else Decl50Base9.M.d77 )
        d99 : if true then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if Decl50Base9.M.d95 then d89 else Decl50Base9.M.d66 then if d39 then false else d39 else if false then d34 else Decl50Base9.M.d50
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if if false then Decl50Base9.M.d66 else Decl50Base9.M.d19 then if false then true else d64 else if true then true else Decl50Base9.M.d81
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else x104 ) ) ) $ ( if false then Bool else Bool )
        d103 = if if Decl50Base9.M.d107 then d26 else false then if false then d44 else Decl50Base9.M.d45 else if d34 then d67 else d47
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then x106 else Bool ) ) ) $ ( if true then Bool else Bool )
        d105 = if if Decl50Base9.M.d81 then Decl50Base9.M.d113 else false then if Decl50Base9.M.d78 then d32 else Decl50Base9.M.d25 else if d26 then true else d9
        d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( x108 ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if if true then false else Decl50Base9.M.d38 then if true then d60 else Decl50Base9.M.d52 else if Decl50Base9.M.d60 then Decl50Base9.M.d61 else d42
        d110 : if true then if true then Bool else Bool else if true then Bool else Bool
        d110 = if if true then Decl50Base9.M.d70 else d11 then if Decl50Base9.M.d100 then Decl50Base9.M.d97 else true else if d100 then Decl50Base9.M.d97 else true
        d111 : if true then if true then Bool else Bool else if false then Bool else Bool
        d111 = if if Decl50Base9.M.d104 then Decl50Base9.M.d34 else d9 then if false then Decl50Base9.M.d12 else Decl50Base9.M.d78 else if true then Decl50Base9.M.d37 else d79
        d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then x113 else Bool ) ) ) $ ( if true then Bool else Bool )
        d112 = if if d67 then Decl50Base9.M.d123 else Decl50Base9.M.d96 then if d87 then true else Decl50Base9.M.d9 else if true then true else d49
        d114 : if true then if true then Bool else Bool else if true then Bool else Bool
        d114 = if if Decl50Base9.M.d77 then d44 else d55 then if d34 then d100 else true else if Decl50Base9.M.d46 then Decl50Base9.M.d104 else Decl50Base9.M.d46
        d115 : if false then if false then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if Decl50Base9.M.d107 then x116 else true ) ) ) $ ( if d21 then true else Decl50Base9.M.d34 )
        d117 : if true then if false then Bool else Bool else if true then Bool else Bool
        d117 = if if true then Decl50Base9.M.d37 else true then if true then false else Decl50Base9.M.d68 else if Decl50Base9.M.d38 then Decl50Base9.M.d70 else Decl50Base9.M.d73
        d118 : if true then if true then Bool else Bool else if true then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> if false then d54 else true ) ) ) $ ( if Decl50Base9.M.d68 then d110 else Decl50Base9.M.d96 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> if false then x121 else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = if if Decl50Base9.M.d12 then d54 else false then if Decl50Base9.M.d43 then Decl50Base9.M.d19 else Decl50Base9.M.d52 else if false then d11 else Decl50Base9.M.d60