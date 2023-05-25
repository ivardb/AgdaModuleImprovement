module Decl50Test15  where
    import Decl50Base15
    open import Decl50Base15 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> x3 ) ) ) $ ( x3 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if Decl50Base15.M.d76 then Decl50Base15.M.d65 else Decl50Base15.M.d95 ) ) ) $ ( if Decl50Base15.M.d50 then false else Decl50Base15.M.d95 )
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = if if d1 then Decl50Base15.M.d80 else true then if d1 then Decl50Base15.M.d115 else true else if Decl50Base15.M.d22 then false else Decl50Base15.M.d135
        d6 : if true then if false then Bool else Bool else if false then Bool else Bool
        d6 = if if Decl50Base15.M.d13 then Decl50Base15.M.d33 else d5 then if Decl50Base15.M.d68 then true else Decl50Base15.M.d33 else if d1 then true else Decl50Base15.M.d16
        d7 : if false then if false then Bool else Bool else if true then Bool else Bool
        d7 = if if Decl50Base15.M.d9 then Decl50Base15.M.d21 else Decl50Base15.M.d124 then if Decl50Base15.M.d85 then false else false else if false then Decl50Base15.M.d68 else Decl50Base15.M.d115
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x9 ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if Decl50Base15.M.d123 then true else true then if Decl50Base15.M.d13 then true else Decl50Base15.M.d42 else if Decl50Base15.M.d101 then false else Decl50Base15.M.d111
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if false then Bool else x14 ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( Decl50Base15.M.d45 ) ) ) ) $ ( if Decl50Base15.M.d111 then false else Decl50Base15.M.d30 )
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if false then true else Decl50Base15.M.d68 then if d5 then Decl50Base15.M.d119 else true else if true then Decl50Base15.M.d22 else Decl50Base15.M.d124
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> if true then x17 else x17 ) ) ) $ ( if true then Bool else Bool )
        d16 = if if d15 then d15 else false then if d11 then false else Decl50Base15.M.d61 else if Decl50Base15.M.d65 then Decl50Base15.M.d80 else Decl50Base15.M.d18
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if x19 then d8 else Decl50Base15.M.d18 ) ) ) $ ( if Decl50Base15.M.d53 then d15 else d7 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else x23 ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if true then Decl50Base15.M.d80 else false ) ) ) $ ( if true then Decl50Base15.M.d65 else Decl50Base15.M.d38 )
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> Decl50Base15.M.d39 ) ) ) $ ( x25 ) ) ) ) $ ( if Decl50Base15.M.d1 then true else d18 )
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if d5 then Decl50Base15.M.d73 else Decl50Base15.M.d100 then if Decl50Base15.M.d50 then Decl50Base15.M.d13 else Decl50Base15.M.d21 else if false then d15 else d5
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then x29 else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = if if false then d24 else Decl50Base15.M.d89 then if false then Decl50Base15.M.d30 else Decl50Base15.M.d56 else if d7 then false else Decl50Base15.M.d39
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if x31 then d7 else d11 ) ) ) $ ( if Decl50Base15.M.d73 then false else Decl50Base15.M.d68 )
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if Decl50Base15.M.d53 then Decl50Base15.M.d129 else Decl50Base15.M.d126 ) ) ) $ ( if d5 then d8 else Decl50Base15.M.d18 )
        d35 : if true then if false then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d11 then Decl50Base15.M.d126 else d8 ) ) ) $ ( if true then Decl50Base15.M.d39 else d33 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then x39 else Bool ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if true then d24 else false ) ) ) $ ( if false then Decl50Base15.M.d73 else false )
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = if if d1 then d21 else false then if Decl50Base15.M.d71 then d30 else d8 else if false then Decl50Base15.M.d1 else d16
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if Decl50Base15.M.d33 then Decl50Base15.M.d13 else Decl50Base15.M.d89 ) ) ) $ ( if Decl50Base15.M.d76 then Decl50Base15.M.d90 else Decl50Base15.M.d115 )
        d45 : if true then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> Decl50Base15.M.d124 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base15.M.d76 then Decl50Base15.M.d58 else d27 )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if false then Decl50Base15.M.d21 else Decl50Base15.M.d5 then if false then d7 else Decl50Base15.M.d101 else if true then Decl50Base15.M.d4 else true
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d49 = if if d18 then false else Decl50Base15.M.d101 then if Decl50Base15.M.d121 then Decl50Base15.M.d98 else d7 else if true then Decl50Base15.M.d119 else Decl50Base15.M.d68
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if if true then Decl50Base15.M.d53 else Decl50Base15.M.d111 then if Decl50Base15.M.d56 then Decl50Base15.M.d49 else d1 else if Decl50Base15.M.d131 then Decl50Base15.M.d95 else d1
        d55 : if true then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if Decl50Base15.M.d121 then true else Decl50Base15.M.d33 then if d18 then true else true else if false then d48 else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( d1 ) ) ) ) $ ( if false then d18 else d52 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if d5 then d41 else Decl50Base15.M.d33 then if false then d15 else d24 else if Decl50Base15.M.d56 then d11 else Decl50Base15.M.d6
        d63 : if false then if true then Bool else Bool else if true then Bool else Bool
        d63 = if if Decl50Base15.M.d53 then true else Decl50Base15.M.d1 then if d6 then Decl50Base15.M.d80 else Decl50Base15.M.d135 else if d56 then d7 else false
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base15.M.d42 then true else Decl50Base15.M.d100 )
        d69 : if false then if true then Bool else Bool else if true then Bool else Bool
        d69 = if if Decl50Base15.M.d4 then true else true then if false then Decl50Base15.M.d115 else Decl50Base15.M.d73 else if d1 then Decl50Base15.M.d76 else Decl50Base15.M.d1
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then x73 else Bool ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> Decl50Base15.M.d42 ) ) ) $ ( d6 ) ) ) ) $ ( if Decl50Base15.M.d90 then Decl50Base15.M.d6 else true )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d52 ) ) ) $ ( d16 ) ) ) ) $ ( if d49 then d60 else Decl50Base15.M.d135 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( x79 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = if if Decl50Base15.M.d61 then false else Decl50Base15.M.d71 then if Decl50Base15.M.d58 then true else Decl50Base15.M.d30 else if d35 then Decl50Base15.M.d124 else Decl50Base15.M.d115
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if d37 then false else x82 ) ) ) $ ( if d28 then false else Decl50Base15.M.d124 )
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> x87 ) ) ) $ ( Decl50Base15.M.d101 ) ) ) ) $ ( if false then Decl50Base15.M.d6 else false )
        d88 : if true then if false then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if Decl50Base15.M.d119 then d15 else Decl50Base15.M.d50 ) ) ) $ ( if Decl50Base15.M.d98 then d15 else d55 )
        d90 : if true then if true then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if x91 then Decl50Base15.M.d22 else true ) ) ) $ ( if true then Decl50Base15.M.d49 else Decl50Base15.M.d6 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = if if Decl50Base15.M.d85 then Decl50Base15.M.d22 else d27 then if d24 then Decl50Base15.M.d131 else Decl50Base15.M.d80 else if d63 then d16 else Decl50Base15.M.d42
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if Decl50Base15.M.d119 then Decl50Base15.M.d1 else Decl50Base15.M.d71 then if Decl50Base15.M.d80 then true else true else if Decl50Base15.M.d135 then Decl50Base15.M.d58 else Decl50Base15.M.d106
        d95 : if true then if true then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if d49 then d81 else Decl50Base15.M.d131 ) ) ) $ ( if d78 then Decl50Base15.M.d22 else Decl50Base15.M.d42 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> Decl50Base15.M.d25 ) ) ) $ ( Decl50Base15.M.d103 ) ) ) ) $ ( if Decl50Base15.M.d90 then false else Decl50Base15.M.d18 )
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = if if Decl50Base15.M.d4 then true else true then if Decl50Base15.M.d101 then Decl50Base15.M.d45 else Decl50Base15.M.d13 else if Decl50Base15.M.d6 then Decl50Base15.M.d56 else d18
        d103 : if false then if true then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> Decl50Base15.M.d49 ) ) ) $ ( d102 ) ) ) ) $ ( if Decl50Base15.M.d4 then Decl50Base15.M.d76 else Decl50Base15.M.d65 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then x107 else x107 ) ) ) $ ( if true then Bool else Bool )
        d106 = if if false then true else Decl50Base15.M.d9 then if Decl50Base15.M.d65 then d41 else Decl50Base15.M.d5 else if Decl50Base15.M.d49 then true else Decl50Base15.M.d4
        d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d108 = if if d92 then Decl50Base15.M.d58 else Decl50Base15.M.d9 then if d16 then Decl50Base15.M.d33 else Decl50Base15.M.d68 else if true then d37 else Decl50Base15.M.d95
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( x112 ) ) ) ) $ ( if false then Bool else Bool )
        d111 = if if Decl50Base15.M.d71 then d35 else Decl50Base15.M.d49 then if d35 then d45 else Decl50Base15.M.d39 else if Decl50Base15.M.d111 then Decl50Base15.M.d76 else true
        d114 : if true then if true then Bool else Bool else if false then Bool else Bool
        d114 = if if Decl50Base15.M.d56 then Decl50Base15.M.d135 else Decl50Base15.M.d103 then if false then Decl50Base15.M.d95 else Decl50Base15.M.d115 else if Decl50Base15.M.d100 then Decl50Base15.M.d50 else true
        d115 : if true then if false then Bool else Bool else if true then Bool else Bool
        d115 = if if true then true else false then if Decl50Base15.M.d115 then d103 else d111 else if Decl50Base15.M.d9 then true else false
        d116 : if false then if false then Bool else Bool else if false then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> false ) ) ) $ ( x117 ) ) ) ) $ ( if true then Decl50Base15.M.d76 else Decl50Base15.M.d18 )
        d119 : if true then if true then Bool else Bool else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> Decl50Base15.M.d6 ) ) ) $ ( true ) ) ) ) $ ( if true then Decl50Base15.M.d38 else Decl50Base15.M.d25 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d122 = if if Decl50Base15.M.d106 then false else d45 then if false then Decl50Base15.M.d45 else true else if Decl50Base15.M.d13 then Decl50Base15.M.d129 else false