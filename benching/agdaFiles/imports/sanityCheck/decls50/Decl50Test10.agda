module Decl50Test10  where
    import Decl50Base10
    open import Decl50Base10 using (Bool; true; false; ⊤; tt) public
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
        d1 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl50Base10.M.d49 ) ) ) $ ( Decl50Base10.M.d1 ) ) ) ) $ ( if Decl50Base10.M.d111 then Decl50Base10.M.d48 else Decl50Base10.M.d62 )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then x7 else x7 ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> false ) ) ) $ ( true ) ) ) ) $ ( if d1 then d1 else d1 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if Decl50Base10.M.d17 then false else d1 then if Decl50Base10.M.d48 then true else Decl50Base10.M.d44 else if d1 then d1 else false
        d11 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then x13 else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if x12 then false else Decl50Base10.M.d2 ) ) ) $ ( if false then d1 else true )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( x17 ) ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> false ) ) ) $ ( x15 ) ) ) ) $ ( if d11 then false else d4 )
        d19 : if true then if false then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if x20 then false else d1 ) ) ) $ ( if Decl50Base10.M.d92 then Decl50Base10.M.d52 else Decl50Base10.M.d111 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then x22 else x22 ) ) ) $ ( if false then Bool else Bool )
        d21 = if if true then Decl50Base10.M.d111 else d8 then if false then false else false else if d11 then true else false
        d23 : if false then if false then Bool else Bool else if true then Bool else Bool
        d23 = if if d4 then Decl50Base10.M.d16 else Decl50Base10.M.d116 then if d1 then d14 else Decl50Base10.M.d30 else if d14 then false else d8
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x27 ) ) ) $ ( x26 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if d11 then x25 else Decl50Base10.M.d1 ) ) ) $ ( if Decl50Base10.M.d53 then d11 else true )
        d28 : if false then if false then Bool else Bool else if false then Bool else Bool
        d28 = if if Decl50Base10.M.d49 then true else Decl50Base10.M.d123 then if Decl50Base10.M.d99 then Decl50Base10.M.d69 else true else if Decl50Base10.M.d76 then d1 else d21
        d29 : if false then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if Decl50Base10.M.d52 then Decl50Base10.M.d27 else d14 then if true then d19 else Decl50Base10.M.d52 else if d24 then true else Decl50Base10.M.d13
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then x32 else x32 ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if d21 then d11 else false ) ) ) $ ( if false then Decl50Base10.M.d108 else false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if x34 then d24 else true ) ) ) $ ( if Decl50Base10.M.d20 then d29 else true )
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = if if Decl50Base10.M.d67 then false else Decl50Base10.M.d93 then if d19 then Decl50Base10.M.d55 else Decl50Base10.M.d92 else if Decl50Base10.M.d63 then Decl50Base10.M.d48 else d4
        d37 : if false then if true then Bool else Bool else if false then Bool else Bool
        d37 = if if d24 then true else Decl50Base10.M.d27 then if Decl50Base10.M.d76 then d24 else true else if Decl50Base10.M.d55 then Decl50Base10.M.d13 else d11
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else x39 ) ) ) $ ( if false then Bool else Bool )
        d38 = if if d36 then false else false then if Decl50Base10.M.d120 then Decl50Base10.M.d123 else Decl50Base10.M.d15 else if d37 then Decl50Base10.M.d37 else Decl50Base10.M.d117
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x43 ) ) ) $ ( x42 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if Decl50Base10.M.d37 then Decl50Base10.M.d6 else Decl50Base10.M.d30 ) ) ) $ ( if false then Decl50Base10.M.d23 else d14 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> x45 ) ) ) $ ( x45 ) ) ) ) $ ( if true then d28 else Decl50Base10.M.d23 )
        d48 : if false then if true then Bool else Bool else if true then Bool else Bool
        d48 = if if Decl50Base10.M.d117 then false else d23 then if false then Decl50Base10.M.d32 else Decl50Base10.M.d57 else if Decl50Base10.M.d32 then false else d4
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if Decl50Base10.M.d59 then false else false then if d23 then true else Decl50Base10.M.d50 else if d4 then false else d1
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if true then d38 else Decl50Base10.M.d40 ) ) ) $ ( if Decl50Base10.M.d6 then Decl50Base10.M.d69 else d8 )
        d52 : if true then if false then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if true then false else x53 ) ) ) $ ( if false then d30 else false )
        d54 : if false then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if Decl50Base10.M.d76 then Decl50Base10.M.d78 else d48 then if false then d23 else d28 else if Decl50Base10.M.d117 then false else Decl50Base10.M.d53
        d55 : if false then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if true then Decl50Base10.M.d62 else Decl50Base10.M.d99 then if Decl50Base10.M.d27 then d8 else Decl50Base10.M.d111 else if false then d4 else Decl50Base10.M.d99
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if false then x57 else Bool ) ) ) $ ( if true then Bool else Bool )
        d56 = if if Decl50Base10.M.d50 then Decl50Base10.M.d92 else false then if true then Decl50Base10.M.d67 else Decl50Base10.M.d34 else if true then d24 else Decl50Base10.M.d48
        d58 : if false then if false then Bool else Bool else if true then Bool else Bool
        d58 = if if d36 then Decl50Base10.M.d77 else false then if Decl50Base10.M.d37 then Decl50Base10.M.d99 else d33 else if d14 then Decl50Base10.M.d23 else d54
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x60 else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = if if Decl50Base10.M.d57 then Decl50Base10.M.d99 else true then if Decl50Base10.M.d49 then Decl50Base10.M.d93 else Decl50Base10.M.d71 else if Decl50Base10.M.d52 then Decl50Base10.M.d105 else d40
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x65 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> Decl50Base10.M.d77 ) ) ) $ ( x62 ) ) ) ) $ ( if d59 then Decl50Base10.M.d16 else false )
        d66 : if true then if true then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> false ) ) ) $ ( d49 ) ) ) ) $ ( if Decl50Base10.M.d59 then d28 else d8 )
        d69 : if false then if false then Bool else Bool else if false then Bool else Bool
        d69 = if if Decl50Base10.M.d48 then Decl50Base10.M.d25 else false then if Decl50Base10.M.d69 then Decl50Base10.M.d111 else Decl50Base10.M.d36 else if false then d24 else Decl50Base10.M.d17
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then x73 else x73 ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> Decl50Base10.M.d69 ) ) ) $ ( d33 ) ) ) ) $ ( if d37 then Decl50Base10.M.d111 else d66 )
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = if if true then d66 else true then if d4 then true else Decl50Base10.M.d1 else if false then d58 else false
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = if if Decl50Base10.M.d25 then d14 else d49 then if true then true else d56 else if d33 then false else false
        d76 : if true then if false then Bool else Bool else if true then Bool else Bool
        d76 = if if Decl50Base10.M.d83 then Decl50Base10.M.d15 else false then if d21 then Decl50Base10.M.d57 else Decl50Base10.M.d67 else if false then d37 else true
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d77 = if if false then d11 else true then if d1 then d54 else Decl50Base10.M.d55 else if Decl50Base10.M.d59 then Decl50Base10.M.d83 else Decl50Base10.M.d55
        d80 : if true then if false then Bool else Bool else if false then Bool else Bool
        d80 = if if Decl50Base10.M.d40 then Decl50Base10.M.d27 else true then if Decl50Base10.M.d20 then Decl50Base10.M.d99 else d52 else if d29 then d48 else false
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> Bool ) ) ) $ ( x82 ) ) ) ) $ ( if true then Bool else Bool )
        d81 = if if d61 then d58 else d38 then if Decl50Base10.M.d10 then false else Decl50Base10.M.d77 else if d33 then true else Decl50Base10.M.d50
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> d14 ) ) ) $ ( Decl50Base10.M.d80 ) ) ) ) $ ( if d36 then false else Decl50Base10.M.d50 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if false then x89 else x89 ) ) ) $ ( if false then Bool else Bool )
        d88 = if if Decl50Base10.M.d71 then true else Decl50Base10.M.d117 then if Decl50Base10.M.d55 then true else d77 else if Decl50Base10.M.d62 then d4 else false
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = if if d40 then Decl50Base10.M.d57 else Decl50Base10.M.d102 then if Decl50Base10.M.d15 then Decl50Base10.M.d44 else Decl50Base10.M.d20 else if Decl50Base10.M.d116 then Decl50Base10.M.d57 else true
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then Bool else x93 ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if Decl50Base10.M.d40 then Decl50Base10.M.d59 else Decl50Base10.M.d23 ) ) ) $ ( if Decl50Base10.M.d53 then d88 else false )
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if false then true else Decl50Base10.M.d34 then if d44 then Decl50Base10.M.d55 else d69 else if Decl50Base10.M.d71 then Decl50Base10.M.d17 else false
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> true ) ) ) $ ( Decl50Base10.M.d2 ) ) ) ) $ ( if d56 then d81 else Decl50Base10.M.d77 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> false ) ) ) $ ( d90 ) ) ) ) $ ( if true then d61 else Decl50Base10.M.d59 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> Decl50Base10.M.d55 ) ) ) $ ( d58 ) ) ) ) $ ( if d69 then d58 else Decl50Base10.M.d87 )
        d107 : if false then if false then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if false then d8 else Decl50Base10.M.d49 ) ) ) $ ( if d59 then true else Decl50Base10.M.d27 )
        d109 : if false then if false then Bool else Bool else if false then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then Decl50Base10.M.d69 else d23 ) ) ) $ ( if Decl50Base10.M.d16 then Decl50Base10.M.d83 else Decl50Base10.M.d23 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if true then x112 else Bool ) ) ) $ ( if true then Bool else Bool )
        d111 = if if d52 then Decl50Base10.M.d30 else d59 then if Decl50Base10.M.d67 then false else Decl50Base10.M.d25 else if Decl50Base10.M.d96 then Decl50Base10.M.d50 else Decl50Base10.M.d93
        d113 : if true then if false then Bool else Bool else if true then Bool else Bool
        d113 = if if Decl50Base10.M.d92 then d75 else false then if Decl50Base10.M.d93 then Decl50Base10.M.d40 else d102 else if d66 then Decl50Base10.M.d23 else d95
        d114 : if true then if true then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if d1 then false else x115 ) ) ) $ ( if Decl50Base10.M.d120 then Decl50Base10.M.d2 else d61 )