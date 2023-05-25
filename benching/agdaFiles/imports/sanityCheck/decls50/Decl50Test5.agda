module Decl50Test5  where
    import Decl50Base5
    open import Decl50Base5 using (Bool; true; false; ⊤; tt) public
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
        d1 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1 = if if Decl50Base5.M.d53 then Decl50Base5.M.d26 else Decl50Base5.M.d77 then if Decl50Base5.M.d104 then Decl50Base5.M.d45 else true else if false then Decl50Base5.M.d18 else Decl50Base5.M.d26
        d2 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else Bool ) ) ) $ ( if true then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> ( ( Bool -> Bool ) ∋ ( ( λ x4 -> Decl50Base5.M.d64 ) ) ) $ ( Decl50Base5.M.d109 ) ) ) ) $ ( if Decl50Base5.M.d18 then false else Decl50Base5.M.d19 )
        d6 : if false then if false then Bool else Bool else if true then Bool else Bool
        d6 = if if Decl50Base5.M.d83 then d1 else Decl50Base5.M.d87 then if false then false else d2 else if Decl50Base5.M.d80 then d1 else Decl50Base5.M.d48
        d7 : if true then if true then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> false ) ) ) $ ( x8 ) ) ) ) $ ( if true then Decl50Base5.M.d49 else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then Bool else x11 ) ) ) $ ( if true then Bool else Bool )
        d10 = if if Decl50Base5.M.d18 then Decl50Base5.M.d72 else true then if Decl50Base5.M.d95 then d6 else true else if false then Decl50Base5.M.d76 else d6
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( x13 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = if if d1 then true else Decl50Base5.M.d73 then if d7 then Decl50Base5.M.d12 else Decl50Base5.M.d125 else if false then true else d10
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( true ) ) ) ) $ ( if d2 then true else Decl50Base5.M.d109 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if Decl50Base5.M.d125 then d6 else Decl50Base5.M.d120 ) ) ) $ ( if d1 then Decl50Base5.M.d56 else true )
        d22 : if false then if false then Bool else Bool else if false then Bool else Bool
        d22 = if if Decl50Base5.M.d66 then d18 else d18 then if Decl50Base5.M.d72 then Decl50Base5.M.d29 else false else if Decl50Base5.M.d120 then Decl50Base5.M.d3 else d10
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> Bool ) ) ) $ ( x24 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if if d2 then true else d2 then if Decl50Base5.M.d39 then d2 else true else if Decl50Base5.M.d19 then true else d1
        d26 : if true then if true then Bool else Bool else if true then Bool else Bool
        d26 = if if Decl50Base5.M.d49 then d7 else false then if d1 then Decl50Base5.M.d44 else true else if Decl50Base5.M.d44 then Decl50Base5.M.d64 else Decl50Base5.M.d76
        d27 : if false then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if Decl50Base5.M.d64 then Decl50Base5.M.d69 else d6 then if Decl50Base5.M.d44 then Decl50Base5.M.d19 else true else if Decl50Base5.M.d49 then Decl50Base5.M.d22 else Decl50Base5.M.d89
        d28 : if true then if false then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if Decl50Base5.M.d45 then Decl50Base5.M.d94 else Decl50Base5.M.d114 ) ) ) $ ( if d10 then false else Decl50Base5.M.d77 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( x32 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> if Decl50Base5.M.d80 then Decl50Base5.M.d46 else false ) ) ) $ ( if Decl50Base5.M.d84 then false else Decl50Base5.M.d46 )
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if d6 then true else false then if false then d26 else Decl50Base5.M.d109 else if Decl50Base5.M.d72 then Decl50Base5.M.d64 else d1
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = if if Decl50Base5.M.d104 then Decl50Base5.M.d48 else true then if d27 then false else true else if d28 then Decl50Base5.M.d98 else Decl50Base5.M.d6
        d36 : if true then if true then Bool else Bool else if true then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> Decl50Base5.M.d49 ) ) ) $ ( false ) ) ) ) $ ( if d6 then Decl50Base5.M.d69 else Decl50Base5.M.d69 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then x41 else x41 ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if x40 then Decl50Base5.M.d109 else Decl50Base5.M.d6 ) ) ) $ ( if Decl50Base5.M.d95 then true else false )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then x43 else x43 ) ) ) $ ( if false then Bool else Bool )
        d42 = if if Decl50Base5.M.d94 then d10 else false then if d26 then false else d30 else if d27 then Decl50Base5.M.d56 else Decl50Base5.M.d60
        d44 : if true then if true then Bool else Bool else if true then Bool else Bool
        d44 = if if Decl50Base5.M.d34 then Decl50Base5.M.d16 else Decl50Base5.M.d94 then if d39 then Decl50Base5.M.d6 else Decl50Base5.M.d83 else if Decl50Base5.M.d80 then Decl50Base5.M.d114 else Decl50Base5.M.d38
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then x46 else Bool ) ) ) $ ( if false then Bool else Bool )
        d45 = if if Decl50Base5.M.d80 then d39 else false then if Decl50Base5.M.d120 then d36 else Decl50Base5.M.d12 else if Decl50Base5.M.d64 then Decl50Base5.M.d38 else d44
        d47 : if true then if false then Bool else Bool else if false then Bool else Bool
        d47 = if if d7 then Decl50Base5.M.d45 else d45 then if d1 then d36 else Decl50Base5.M.d109 else if d15 then Decl50Base5.M.d18 else Decl50Base5.M.d95
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = if if Decl50Base5.M.d103 then Decl50Base5.M.d18 else Decl50Base5.M.d122 then if Decl50Base5.M.d49 then true else Decl50Base5.M.d44 else if d18 then Decl50Base5.M.d16 else Decl50Base5.M.d104
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x51 ) ) ) $ ( x51 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if Decl50Base5.M.d94 then false else Decl50Base5.M.d83 ) ) ) $ ( if Decl50Base5.M.d60 then d36 else Decl50Base5.M.d38 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then x54 else x54 ) ) ) $ ( if true then Bool else Bool )
        d53 = if if false then d27 else Decl50Base5.M.d89 then if false then Decl50Base5.M.d1 else Decl50Base5.M.d74 else if true then Decl50Base5.M.d80 else Decl50Base5.M.d34
        d55 : if false then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if Decl50Base5.M.d18 then d7 else d47 ) ) ) $ ( if true then false else Decl50Base5.M.d79 )
        d57 : if true then if true then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if Decl50Base5.M.d66 then Decl50Base5.M.d72 else x58 ) ) ) $ ( if Decl50Base5.M.d125 then Decl50Base5.M.d52 else false )
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = if if true then d30 else Decl50Base5.M.d117 then if d2 then Decl50Base5.M.d9 else d15 else if d44 then d48 else Decl50Base5.M.d39
        d60 : if false then if true then Bool else Bool else if true then Bool else Bool
        d60 = if if Decl50Base5.M.d16 then d47 else d12 then if Decl50Base5.M.d122 then false else true else if d45 then Decl50Base5.M.d9 else true
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d61 = if if Decl50Base5.M.d26 then Decl50Base5.M.d114 else d57 then if Decl50Base5.M.d67 then false else Decl50Base5.M.d19 else if d55 then true else d36
        d63 : if false then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if true then Decl50Base5.M.d109 else Decl50Base5.M.d98 then if Decl50Base5.M.d39 then Decl50Base5.M.d64 else true else if Decl50Base5.M.d80 then d42 else Decl50Base5.M.d114
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then x65 else Bool ) ) ) $ ( if false then Bool else Bool )
        d64 = if if true then Decl50Base5.M.d46 else Decl50Base5.M.d26 then if Decl50Base5.M.d22 then Decl50Base5.M.d60 else false else if true then d55 else true
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> Decl50Base5.M.d16 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base5.M.d74 then Decl50Base5.M.d53 else Decl50Base5.M.d103 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( Decl50Base5.M.d67 ) ) ) ) $ ( if true then true else d34 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x77 ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( x75 ) ) ) ) $ ( if Decl50Base5.M.d1 then Decl50Base5.M.d106 else false )
        d79 : if false then if true then Bool else Bool else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( Decl50Base5.M.d117 ) ) ) ) $ ( if false then d15 else d12 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if Decl50Base5.M.d6 then Decl50Base5.M.d94 else d22 then if Decl50Base5.M.d117 then d53 else false else if false then d15 else true
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> if true then Bool else x86 ) ) ) $ ( if true then Bool else Bool )
        d85 = if if Decl50Base5.M.d6 then Decl50Base5.M.d67 else Decl50Base5.M.d66 then if false then d7 else d57 else if d64 then Decl50Base5.M.d117 else Decl50Base5.M.d53
        d87 : if false then if false then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if x88 then Decl50Base5.M.d19 else true ) ) ) $ ( if Decl50Base5.M.d104 then true else d63 )
        d89 : if false then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if false then d64 else Decl50Base5.M.d103 then if d6 then Decl50Base5.M.d53 else true else if d70 then true else d44
        d90 : if false then if true then Bool else Bool else if false then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> if d61 then false else true ) ) ) $ ( if d27 then true else d34 )
        d92 : if true then if true then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if Decl50Base5.M.d3 then Decl50Base5.M.d122 else false ) ) ) $ ( if Decl50Base5.M.d49 then Decl50Base5.M.d66 else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = if if true then Decl50Base5.M.d79 else d23 then if Decl50Base5.M.d45 then true else Decl50Base5.M.d84 else if Decl50Base5.M.d12 then Decl50Base5.M.d52 else Decl50Base5.M.d83
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> Decl50Base5.M.d83 ) ) ) $ ( true ) ) ) ) $ ( if false then true else Decl50Base5.M.d64 )
        d99 : if false then if false then Bool else Bool else if true then Bool else Bool
        d99 = if if Decl50Base5.M.d98 then true else Decl50Base5.M.d45 then if Decl50Base5.M.d3 then Decl50Base5.M.d104 else Decl50Base5.M.d49 else if Decl50Base5.M.d74 then d39 else d55
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then x101 else x101 ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d23 then Decl50Base5.M.d60 else Decl50Base5.M.d45 then if d44 then Decl50Base5.M.d76 else d30 else if true then false else true
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if true then Bool else Bool )
        d102 = if if Decl50Base5.M.d104 then Decl50Base5.M.d64 else d1 then if true then Decl50Base5.M.d103 else true else if false then false else false
        d105 : if false then if true then Bool else Bool else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if Decl50Base5.M.d117 then Decl50Base5.M.d39 else Decl50Base5.M.d53 ) ) ) $ ( if false then Decl50Base5.M.d60 else false )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then x110 else x110 ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> Decl50Base5.M.d3 ) ) ) $ ( Decl50Base5.M.d34 ) ) ) ) $ ( if d28 then d26 else d48 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else Bool ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> Decl50Base5.M.d19 ) ) ) $ ( Decl50Base5.M.d52 ) ) ) ) $ ( if Decl50Base5.M.d79 then Decl50Base5.M.d19 else d96 )