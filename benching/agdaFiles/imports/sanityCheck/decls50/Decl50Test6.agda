module Decl50Test6  where
    import Decl50Base6
    open import Decl50Base6 using (Bool; true; false; ⊤; tt) public
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
        d1 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl50Base6.M.d113 ) ) ) $ ( Decl50Base6.M.d107 ) ) ) ) $ ( if Decl50Base6.M.d23 then true else true )
        d4 : if false then if true then Bool else Bool else if true then Bool else Bool
        d4 = if if Decl50Base6.M.d106 then true else Decl50Base6.M.d50 then if d1 then Decl50Base6.M.d35 else Decl50Base6.M.d62 else if Decl50Base6.M.d74 then Decl50Base6.M.d116 else Decl50Base6.M.d60
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then x7 else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if x6 then Decl50Base6.M.d77 else x6 ) ) ) $ ( if d4 then Decl50Base6.M.d71 else false )
        d8 : if false then if false then Bool else Bool else if true then Bool else Bool
        d8 = if if d5 then d4 else Decl50Base6.M.d33 then if Decl50Base6.M.d26 then false else d5 else if Decl50Base6.M.d51 then d1 else Decl50Base6.M.d9
        d9 : if true then if false then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if false then Decl50Base6.M.d42 else false ) ) ) $ ( if d4 then true else d8 )
        d11 : if false then if true then Bool else Bool else if true then Bool else Bool
        d11 = if if Decl50Base6.M.d89 then d5 else true then if false then Decl50Base6.M.d42 else d9 else if d4 then Decl50Base6.M.d74 else Decl50Base6.M.d109
        d12 : if true then if true then Bool else Bool else if true then Bool else Bool
        d12 = if if false then Decl50Base6.M.d109 else Decl50Base6.M.d47 then if d1 then Decl50Base6.M.d108 else true else if Decl50Base6.M.d30 then false else Decl50Base6.M.d65
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( x14 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = if if Decl50Base6.M.d94 then Decl50Base6.M.d98 else Decl50Base6.M.d51 then if Decl50Base6.M.d116 then Decl50Base6.M.d56 else Decl50Base6.M.d30 else if Decl50Base6.M.d48 then Decl50Base6.M.d117 else false
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if Decl50Base6.M.d71 then Decl50Base6.M.d9 else Decl50Base6.M.d74 then if true then false else Decl50Base6.M.d91 else if Decl50Base6.M.d113 then Decl50Base6.M.d42 else Decl50Base6.M.d94
        d19 : if false then if true then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if Decl50Base6.M.d6 then false else Decl50Base6.M.d39 ) ) ) $ ( if Decl50Base6.M.d91 then Decl50Base6.M.d74 else d5 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if false then x24 else Bool ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> Decl50Base6.M.d23 ) ) ) $ ( x22 ) ) ) ) $ ( if Decl50Base6.M.d56 then d13 else Decl50Base6.M.d30 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then x26 else Bool ) ) ) $ ( if true then Bool else Bool )
        d25 = if if Decl50Base6.M.d82 then Decl50Base6.M.d52 else Decl50Base6.M.d94 then if true then true else Decl50Base6.M.d83 else if false then Decl50Base6.M.d52 else Decl50Base6.M.d47
        d27 : if true then if true then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if d5 then x28 else false ) ) ) $ ( if Decl50Base6.M.d94 then false else true )
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = if if Decl50Base6.M.d42 then Decl50Base6.M.d117 else Decl50Base6.M.d18 then if false then Decl50Base6.M.d6 else false else if d12 then true else true
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if Decl50Base6.M.d23 then Decl50Base6.M.d26 else false ) ) ) $ ( if false then Decl50Base6.M.d56 else Decl50Base6.M.d56 )
        d32 : if false then if false then Bool else Bool else if false then Bool else Bool
        d32 = if if d29 then d4 else d30 then if Decl50Base6.M.d52 then false else Decl50Base6.M.d9 else if d30 then d13 else d9
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if true then false else Decl50Base6.M.d51 then if d27 then d12 else false else if Decl50Base6.M.d23 then false else d12
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if x37 then Decl50Base6.M.d108 else x37 ) ) ) $ ( if Decl50Base6.M.d116 then Decl50Base6.M.d35 else Decl50Base6.M.d25 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> ( ( Set -> Set ) ∋ ( ( λ x42 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if if Decl50Base6.M.d94 then Decl50Base6.M.d48 else false then if d30 then Decl50Base6.M.d82 else Decl50Base6.M.d50 else if Decl50Base6.M.d89 then Decl50Base6.M.d26 else Decl50Base6.M.d80
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = if if Decl50Base6.M.d33 then true else false then if true then Decl50Base6.M.d74 else Decl50Base6.M.d113 else if Decl50Base6.M.d38 then d21 else true
        d44 : if true then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if Decl50Base6.M.d117 then d27 else false ) ) ) $ ( if Decl50Base6.M.d54 then Decl50Base6.M.d108 else Decl50Base6.M.d35 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if false then x47 else Bool ) ) ) $ ( if true then Bool else Bool )
        d46 = if if Decl50Base6.M.d89 then d5 else Decl50Base6.M.d51 then if Decl50Base6.M.d101 then Decl50Base6.M.d89 else Decl50Base6.M.d26 else if Decl50Base6.M.d9 then Decl50Base6.M.d23 else Decl50Base6.M.d96
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d48 = if if false then Decl50Base6.M.d14 else Decl50Base6.M.d47 then if d21 then false else Decl50Base6.M.d101 else if Decl50Base6.M.d98 then true else d1
        d50 : if false then if false then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if x51 then d36 else Decl50Base6.M.d39 ) ) ) $ ( if d29 then d5 else d36 )
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if d11 then Decl50Base6.M.d83 else false then if d19 then true else true else if d25 then Decl50Base6.M.d96 else Decl50Base6.M.d98
        d53 : if true then if false then Bool else Bool else if false then Bool else Bool
        d53 = if if Decl50Base6.M.d83 then Decl50Base6.M.d80 else d21 then if Decl50Base6.M.d72 then Decl50Base6.M.d18 else Decl50Base6.M.d83 else if d48 then false else Decl50Base6.M.d33
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if true then Decl50Base6.M.d35 else Decl50Base6.M.d47 then if d4 then Decl50Base6.M.d83 else Decl50Base6.M.d72 else if d19 then Decl50Base6.M.d82 else Decl50Base6.M.d30
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if Decl50Base6.M.d65 then Decl50Base6.M.d30 else true then if Decl50Base6.M.d33 then true else d53 else if Decl50Base6.M.d54 then false else true
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if Decl50Base6.M.d42 then d50 else false then if Decl50Base6.M.d77 then Decl50Base6.M.d18 else true else if Decl50Base6.M.d47 then Decl50Base6.M.d35 else d11
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = if if Decl50Base6.M.d33 then false else Decl50Base6.M.d80 then if d32 then d43 else false else if Decl50Base6.M.d1 then Decl50Base6.M.d18 else d9
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if true then Decl50Base6.M.d74 else true ) ) ) $ ( if false then d25 else d25 )
        d64 : if true then if false then Bool else Bool else if false then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> if false then false else Decl50Base6.M.d23 ) ) ) $ ( if true then false else false )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then Bool else x69 ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> d9 ) ) ) $ ( Decl50Base6.M.d96 ) ) ) ) $ ( if d54 then Decl50Base6.M.d18 else Decl50Base6.M.d101 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then x73 else Bool ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d53 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base6.M.d33 then d8 else Decl50Base6.M.d101 )
        d74 : if false then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if false then Decl50Base6.M.d77 else d30 ) ) ) $ ( if Decl50Base6.M.d1 then Decl50Base6.M.d47 else Decl50Base6.M.d33 )
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if false then Decl50Base6.M.d51 else true then if Decl50Base6.M.d96 then d32 else Decl50Base6.M.d25 else if Decl50Base6.M.d108 then true else true
        d77 : if true then if false then Bool else Bool else if true then Bool else Bool
        d77 = if if Decl50Base6.M.d51 then true else false then if Decl50Base6.M.d94 then Decl50Base6.M.d106 else Decl50Base6.M.d116 else if Decl50Base6.M.d79 then Decl50Base6.M.d52 else Decl50Base6.M.d94
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if Decl50Base6.M.d107 then d12 else x79 ) ) ) $ ( if true then false else true )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if false then x84 else x84 ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if true then true else Decl50Base6.M.d103 ) ) ) $ ( if Decl50Base6.M.d71 then d66 else d74 )
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if false then Decl50Base6.M.d39 else x86 ) ) ) $ ( if Decl50Base6.M.d60 then Decl50Base6.M.d106 else d64 )
        d87 : if true then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> Decl50Base6.M.d69 ) ) ) $ ( x88 ) ) ) ) $ ( if Decl50Base6.M.d96 then Decl50Base6.M.d71 else d64 )
        d90 : if false then if false then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> x91 ) ) ) $ ( x91 ) ) ) ) $ ( if d46 then Decl50Base6.M.d56 else d13 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x95 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if true then Decl50Base6.M.d39 else Decl50Base6.M.d101 ) ) ) $ ( if d29 then false else Decl50Base6.M.d56 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( x98 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = if if true then Decl50Base6.M.d117 else true then if false then d93 else true else if Decl50Base6.M.d80 then d19 else Decl50Base6.M.d80
        d100 : if true then if false then Bool else Bool else if false then Bool else Bool
        d100 = if if Decl50Base6.M.d116 then Decl50Base6.M.d54 else Decl50Base6.M.d106 then if Decl50Base6.M.d14 then d87 else d66 else if d44 then d33 else d9
        d101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d101 = if if Decl50Base6.M.d42 then Decl50Base6.M.d39 else false then if Decl50Base6.M.d6 then Decl50Base6.M.d26 else d66 else if Decl50Base6.M.d14 then d5 else Decl50Base6.M.d18
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if true then x104 else x104 ) ) ) $ ( if true then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if x103 then Decl50Base6.M.d48 else false ) ) ) $ ( if true then Decl50Base6.M.d116 else Decl50Base6.M.d65 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( x108 ) ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> Decl50Base6.M.d33 ) ) ) $ ( Decl50Base6.M.d38 ) ) ) ) $ ( if true then true else d4 )
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> false ) ) ) $ ( Decl50Base6.M.d23 ) ) ) ) $ ( if Decl50Base6.M.d51 then Decl50Base6.M.d96 else false )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( x114 ) ) ) ) $ ( if true then Bool else Bool )
        d113 = if if Decl50Base6.M.d60 then Decl50Base6.M.d74 else Decl50Base6.M.d109 then if Decl50Base6.M.d26 then false else d60 else if d43 then false else Decl50Base6.M.d42