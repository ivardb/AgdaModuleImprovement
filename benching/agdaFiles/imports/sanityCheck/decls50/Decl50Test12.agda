module Decl50Test12  where
    import Decl50Base12
    open import Decl50Base12 using (Bool; true; false; ⊤; tt) public
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
        d1 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl50Base12.M.d19 ) ) ) $ ( Decl50Base12.M.d127 ) ) ) ) $ ( if Decl50Base12.M.d54 then Decl50Base12.M.d57 else Decl50Base12.M.d12 )
        d4 : if false then if false then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> x6 ) ) ) $ ( Decl50Base12.M.d74 ) ) ) ) $ ( if Decl50Base12.M.d79 then Decl50Base12.M.d50 else Decl50Base12.M.d10 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else x8 ) ) ) $ ( if false then Bool else Bool )
        d7 = if if Decl50Base12.M.d89 then Decl50Base12.M.d95 else true then if Decl50Base12.M.d89 then Decl50Base12.M.d81 else Decl50Base12.M.d29 else if Decl50Base12.M.d13 then d4 else Decl50Base12.M.d63
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> false ) ) ) $ ( Decl50Base12.M.d6 ) ) ) ) $ ( if Decl50Base12.M.d130 then Decl50Base12.M.d63 else d7 )
        d14 : if true then if false then Bool else Bool else if false then Bool else Bool
        d14 = if if d7 then Decl50Base12.M.d110 else false then if Decl50Base12.M.d89 then Decl50Base12.M.d60 else Decl50Base12.M.d36 else if true then Decl50Base12.M.d122 else Decl50Base12.M.d92
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if Decl50Base12.M.d36 then false else d4 then if true then Decl50Base12.M.d79 else false else if Decl50Base12.M.d54 then true else false
        d16 : if false then if false then Bool else Bool else if true then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if Decl50Base12.M.d40 then Decl50Base12.M.d105 else d9 ) ) ) $ ( if Decl50Base12.M.d12 then d4 else true )
        d18 : if false then if false then Bool else Bool else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( d15 ) ) ) ) $ ( if Decl50Base12.M.d50 then d4 else d16 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x24 ) ) ) $ ( x24 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> Decl50Base12.M.d86 ) ) ) $ ( x22 ) ) ) ) $ ( if Decl50Base12.M.d92 then Decl50Base12.M.d46 else Decl50Base12.M.d19 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if Decl50Base12.M.d130 then Decl50Base12.M.d75 else d16 ) ) ) $ ( if true then false else Decl50Base12.M.d76 )
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = if if Decl50Base12.M.d122 then Decl50Base12.M.d86 else Decl50Base12.M.d113 then if d21 then true else Decl50Base12.M.d127 else if d16 then Decl50Base12.M.d15 else Decl50Base12.M.d19
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> Bool ) ) ) $ ( x32 ) ) ) ) $ ( if false then Bool else Bool )
        d31 = if if d14 then false else Decl50Base12.M.d116 then if Decl50Base12.M.d85 then Decl50Base12.M.d26 else Decl50Base12.M.d70 else if false then Decl50Base12.M.d74 else false
        d34 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = if if d14 then Decl50Base12.M.d92 else true then if Decl50Base12.M.d107 then Decl50Base12.M.d79 else Decl50Base12.M.d97 else if true then false else Decl50Base12.M.d76
        d36 : if false then if true then Bool else Bool else if false then Bool else Bool
        d36 = if if Decl50Base12.M.d47 then Decl50Base12.M.d65 else Decl50Base12.M.d63 then if false then Decl50Base12.M.d130 else d4 else if false then Decl50Base12.M.d122 else Decl50Base12.M.d13
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if false then Bool else Bool )
        d37 = if if d1 then d30 else Decl50Base12.M.d16 then if d15 then d34 else false else if false then d4 else Decl50Base12.M.d116
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( x43 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> Decl50Base12.M.d80 ) ) ) $ ( Decl50Base12.M.d95 ) ) ) ) $ ( if Decl50Base12.M.d63 then d36 else Decl50Base12.M.d125 )
        d45 : if false then if true then Bool else Bool else if false then Bool else Bool
        d45 = if if Decl50Base12.M.d91 then Decl50Base12.M.d127 else false then if false then Decl50Base12.M.d93 else Decl50Base12.M.d75 else if Decl50Base12.M.d125 then false else d16
        d46 : if true then if true then Bool else Bool else if false then Bool else Bool
        d46 = if if Decl50Base12.M.d113 then Decl50Base12.M.d105 else false then if Decl50Base12.M.d118 then Decl50Base12.M.d13 else d4 else if Decl50Base12.M.d81 then d26 else Decl50Base12.M.d89
        d47 : if false then if false then Bool else Bool else if false then Bool else Bool
        d47 = if if true then d4 else true then if Decl50Base12.M.d24 then Decl50Base12.M.d105 else Decl50Base12.M.d26 else if Decl50Base12.M.d60 then Decl50Base12.M.d36 else Decl50Base12.M.d36
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if Decl50Base12.M.d12 then d16 else Decl50Base12.M.d60 then if Decl50Base12.M.d97 then d14 else d18 else if d47 then Decl50Base12.M.d116 else false
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x51 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d49 = if if true then Decl50Base12.M.d15 else Decl50Base12.M.d40 then if true then Decl50Base12.M.d47 else true else if Decl50Base12.M.d91 then Decl50Base12.M.d1 else d21
        d52 : if false then if true then Bool else Bool else if true then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> Decl50Base12.M.d93 ) ) ) $ ( Decl50Base12.M.d15 ) ) ) ) $ ( if Decl50Base12.M.d130 then d49 else Decl50Base12.M.d70 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if x56 then Decl50Base12.M.d15 else true ) ) ) $ ( if Decl50Base12.M.d113 then Decl50Base12.M.d6 else false )
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if Decl50Base12.M.d105 then d48 else Decl50Base12.M.d36 ) ) ) $ ( if true then Decl50Base12.M.d19 else true )
        d61 : if true then if false then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> true ) ) ) $ ( Decl50Base12.M.d1 ) ) ) ) $ ( if Decl50Base12.M.d50 then Decl50Base12.M.d1 else false )
        d64 : if true then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if Decl50Base12.M.d100 then Decl50Base12.M.d95 else true then if d15 then Decl50Base12.M.d125 else d14 else if Decl50Base12.M.d10 then d31 else Decl50Base12.M.d1
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if d49 then x66 else d49 ) ) ) $ ( if false then Decl50Base12.M.d33 else Decl50Base12.M.d65 )
        d67 : if false then if false then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> Decl50Base12.M.d92 ) ) ) $ ( Decl50Base12.M.d63 ) ) ) ) $ ( if Decl50Base12.M.d13 then d52 else d46 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if true then x71 else x71 ) ) ) $ ( if false then Bool else Bool )
        d70 = if if Decl50Base12.M.d16 then Decl50Base12.M.d113 else Decl50Base12.M.d113 then if Decl50Base12.M.d74 then Decl50Base12.M.d29 else Decl50Base12.M.d93 else if Decl50Base12.M.d89 then Decl50Base12.M.d54 else Decl50Base12.M.d116
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = if if Decl50Base12.M.d118 then Decl50Base12.M.d36 else true then if d46 then false else Decl50Base12.M.d97 else if true then d52 else Decl50Base12.M.d110
        d74 : if false then if false then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d61 ) ) ) $ ( Decl50Base12.M.d125 ) ) ) ) $ ( if d26 then d40 else Decl50Base12.M.d19 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if false then x79 else x79 ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if Decl50Base12.M.d95 then d55 else Decl50Base12.M.d19 ) ) ) $ ( if Decl50Base12.M.d80 then d14 else Decl50Base12.M.d122 )
        d80 : if false then if true then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if false then Decl50Base12.M.d79 else true ) ) ) $ ( if d36 then d15 else Decl50Base12.M.d12 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x84 ) ) ) $ ( x83 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if true then true else Decl50Base12.M.d80 then if Decl50Base12.M.d105 then Decl50Base12.M.d91 else false else if Decl50Base12.M.d12 then Decl50Base12.M.d36 else true
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if d72 then Decl50Base12.M.d16 else Decl50Base12.M.d125 then if false then Decl50Base12.M.d24 else false else if Decl50Base12.M.d43 then d26 else Decl50Base12.M.d79
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if Decl50Base12.M.d76 then Decl50Base12.M.d92 else d74 then if false then d34 else Decl50Base12.M.d127 else if d34 then d1 else Decl50Base12.M.d75
        d91 : if true then if true then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if x92 then false else false ) ) ) $ ( if Decl50Base12.M.d130 then Decl50Base12.M.d130 else d14 )
        d93 : if false then if false then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> ( ( Bool -> Bool ) ∋ ( ( λ x95 -> false ) ) ) $ ( d34 ) ) ) ) $ ( if false then Decl50Base12.M.d105 else d72 )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if Decl50Base12.M.d46 then d16 else Decl50Base12.M.d116 ) ) ) $ ( if d74 then Decl50Base12.M.d86 else true )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> x101 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> false ) ) ) $ ( true ) ) ) ) $ ( if d45 then d47 else Decl50Base12.M.d1 )
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if Decl50Base12.M.d127 then Decl50Base12.M.d110 else d46 then if d21 then d91 else d64 else if Decl50Base12.M.d125 then true else false
        d104 : if true then if true then Bool else Bool else if false then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if d88 then false else Decl50Base12.M.d12 ) ) ) $ ( if Decl50Base12.M.d33 then Decl50Base12.M.d122 else true )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d106 = if if Decl50Base12.M.d89 then true else d36 then if false then true else d103 else if Decl50Base12.M.d74 then d96 else Decl50Base12.M.d95
        d108 : if false then if false then Bool else Bool else if false then Bool else Bool
        d108 = if if Decl50Base12.M.d63 then false else d98 then if true then true else d82 else if d72 then d21 else Decl50Base12.M.d24
        d109 : if true then if false then Bool else Bool else if false then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d52 then false else Decl50Base12.M.d46 ) ) ) $ ( if Decl50Base12.M.d24 then Decl50Base12.M.d75 else Decl50Base12.M.d79 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then x113 else x113 ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if x112 then x112 else d31 ) ) ) $ ( if Decl50Base12.M.d130 then Decl50Base12.M.d26 else false )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d114 = if if Decl50Base12.M.d85 then d108 else false then if Decl50Base12.M.d91 then true else Decl50Base12.M.d12 else if d45 then Decl50Base12.M.d100 else d31
        d116 : if false then if false then Bool else Bool else if true then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> Decl50Base12.M.d26 ) ) ) $ ( Decl50Base12.M.d110 ) ) ) ) $ ( if Decl50Base12.M.d91 then false else Decl50Base12.M.d74 )
        d119 : if false then if true then Bool else Bool else if false then Bool else Bool
        d119 = if if Decl50Base12.M.d15 then d40 else Decl50Base12.M.d95 then if Decl50Base12.M.d122 then false else false else if Decl50Base12.M.d26 then Decl50Base12.M.d107 else true
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if false then x123 else Bool ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( Decl50Base12.M.d65 ) ) ) ) $ ( if false then false else Decl50Base12.M.d47 )