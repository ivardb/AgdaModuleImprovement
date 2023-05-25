module Decl50Test2  where
    import Decl50Base2
    open import Decl50Base2 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if false then Bool else x2 ) ) ) $ ( if true then Bool else Bool )
        d1 = if if true then false else Decl50Base2.M.d14 then if true then Decl50Base2.M.d116 else Decl50Base2.M.d78 else if Decl50Base2.M.d6 then true else Decl50Base2.M.d29
        d3 : if true then if true then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> ( ( Bool -> Bool ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( x4 ) ) ) ) $ ( if false then Decl50Base2.M.d3 else Decl50Base2.M.d52 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then x8 else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if Decl50Base2.M.d55 then Decl50Base2.M.d45 else Decl50Base2.M.d98 ) ) ) $ ( if Decl50Base2.M.d75 then Decl50Base2.M.d10 else d1 )
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if true then x10 else d3 ) ) ) $ ( if Decl50Base2.M.d92 then Decl50Base2.M.d57 else Decl50Base2.M.d78 )
        d11 : if false then if true then Bool else Bool else if true then Bool else Bool
        d11 = if if Decl50Base2.M.d72 then Decl50Base2.M.d1 else d1 then if true then Decl50Base2.M.d131 else Decl50Base2.M.d96 else if false then false else Decl50Base2.M.d108
        d12 : if false then if false then Bool else Bool else if false then Bool else Bool
        d12 = if if false then Decl50Base2.M.d36 else false then if Decl50Base2.M.d103 then Decl50Base2.M.d106 else Decl50Base2.M.d117 else if d9 then d9 else Decl50Base2.M.d21
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> ( ( Bool -> Bool ) ∋ ( ( λ x15 -> Decl50Base2.M.d1 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base2.M.d67 then Decl50Base2.M.d52 else Decl50Base2.M.d70 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if false then x19 else Bool ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> d6 ) ) ) $ ( x17 ) ) ) ) $ ( if Decl50Base2.M.d64 then d1 else false )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then Bool else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if true then Decl50Base2.M.d45 else true then if Decl50Base2.M.d18 then Decl50Base2.M.d6 else d1 else if Decl50Base2.M.d70 then true else Decl50Base2.M.d33
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x25 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if Decl50Base2.M.d120 then Decl50Base2.M.d78 else d6 ) ) ) $ ( if Decl50Base2.M.d117 then true else Decl50Base2.M.d60 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( x27 ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if d22 then true else Decl50Base2.M.d78 then if d6 then Decl50Base2.M.d69 else d22 else if Decl50Base2.M.d96 then d1 else Decl50Base2.M.d29
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> Decl50Base2.M.d116 ) ) ) $ ( true ) ) ) ) $ ( if d22 then false else Decl50Base2.M.d48 )
        d33 : if true then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if d6 then Decl50Base2.M.d60 else Decl50Base2.M.d72 then if d13 then false else false else if true then d29 else Decl50Base2.M.d116
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if Decl50Base2.M.d21 then Decl50Base2.M.d78 else false then if d20 then false else Decl50Base2.M.d36 else if true then d26 else Decl50Base2.M.d100
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if d29 then x36 else Decl50Base2.M.d6 ) ) ) $ ( if false then false else false )
        d39 : if false then if false then Bool else Bool else if true then Bool else Bool
        d39 = if if d20 then true else true then if Decl50Base2.M.d45 then d34 else d16 else if Decl50Base2.M.d57 then Decl50Base2.M.d70 else d16
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if false then Bool else x43 ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> false ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base2.M.d81 then Decl50Base2.M.d45 else Decl50Base2.M.d69 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then x46 else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if true then Decl50Base2.M.d36 else Decl50Base2.M.d45 ) ) ) $ ( if true then Decl50Base2.M.d106 else true )
        d47 : if false then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if Decl50Base2.M.d67 then d6 else false ) ) ) $ ( if Decl50Base2.M.d115 then d1 else d6 )
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> x51 ) ) ) $ ( x50 ) ) ) ) $ ( if Decl50Base2.M.d139 then false else d1 )
        d52 : if true then if false then Bool else Bool else if true then Bool else Bool
        d52 = if if Decl50Base2.M.d100 then d3 else d33 then if d34 then d6 else true else if Decl50Base2.M.d92 then d33 else d9
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if Decl50Base2.M.d81 then Decl50Base2.M.d54 else d9 ) ) ) $ ( if d6 then Decl50Base2.M.d137 else Decl50Base2.M.d36 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x59 ) ) ) $ ( x59 ) ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> if Decl50Base2.M.d70 then x58 else false ) ) ) $ ( if d44 then true else Decl50Base2.M.d123 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x62 -> ( ( Set -> Set ) ∋ ( ( λ x63 -> x63 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d61 = if if d52 then d40 else d40 then if d39 then d34 else d52 else if false then false else Decl50Base2.M.d93
        d64 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d64 = if if d34 then Decl50Base2.M.d21 else d26 then if d16 then d9 else true else if d52 then Decl50Base2.M.d98 else Decl50Base2.M.d115
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> Decl50Base2.M.d131 ) ) ) $ ( x68 ) ) ) ) $ ( if d53 then true else false )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d72 = if if d49 then Decl50Base2.M.d81 else d34 then if Decl50Base2.M.d29 then d1 else true else if Decl50Base2.M.d72 then d39 else true
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> Bool ) ) ) $ ( x75 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if if Decl50Base2.M.d52 then Decl50Base2.M.d49 else d20 then if false then d53 else false else if Decl50Base2.M.d45 then Decl50Base2.M.d84 else Decl50Base2.M.d75
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> Decl50Base2.M.d106 ) ) ) $ ( Decl50Base2.M.d81 ) ) ) ) $ ( if Decl50Base2.M.d75 then d39 else true )
        d82 : if false then if true then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if true then d16 else d35 ) ) ) $ ( if false then false else true )
        d84 : if true then if true then Bool else Bool else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> false ) ) ) $ ( d34 ) ) ) ) $ ( if d35 then Decl50Base2.M.d117 else Decl50Base2.M.d10 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d87 = if if true then Decl50Base2.M.d75 else false then if Decl50Base2.M.d26 then Decl50Base2.M.d70 else Decl50Base2.M.d115 else if Decl50Base2.M.d120 then Decl50Base2.M.d103 else Decl50Base2.M.d93
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = if if Decl50Base2.M.d134 then d84 else d11 then if Decl50Base2.M.d70 then Decl50Base2.M.d113 else Decl50Base2.M.d64 else if Decl50Base2.M.d21 then false else Decl50Base2.M.d3
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if false then Bool else x91 ) ) ) $ ( if false then Bool else Bool )
        d90 = if if false then Decl50Base2.M.d41 else Decl50Base2.M.d127 then if Decl50Base2.M.d14 then Decl50Base2.M.d93 else d47 else if Decl50Base2.M.d117 then true else Decl50Base2.M.d26
        d92 : if false then if true then Bool else Bool else if true then Bool else Bool
        d92 = if if Decl50Base2.M.d26 then Decl50Base2.M.d113 else Decl50Base2.M.d10 then if Decl50Base2.M.d70 then d29 else d11 else if false then Decl50Base2.M.d75 else true
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d3 then Decl50Base2.M.d117 else d92 ) ) ) $ ( if d29 then Decl50Base2.M.d127 else d40 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else x97 ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> if true then d12 else d6 ) ) ) $ ( if d20 then Decl50Base2.M.d48 else d84 )
        d98 : if false then if false then Bool else Bool else if true then Bool else Bool
        d98 = if if false then false else Decl50Base2.M.d41 then if d9 then false else d53 else if Decl50Base2.M.d139 then Decl50Base2.M.d48 else true
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( x102 ) ) ) ) $ ( if false then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d89 ) ) ) $ ( Decl50Base2.M.d93 ) ) ) ) $ ( if Decl50Base2.M.d84 then Decl50Base2.M.d93 else d52 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> true ) ) ) $ ( x105 ) ) ) ) $ ( if d3 then Decl50Base2.M.d115 else Decl50Base2.M.d21 )
        d108 : if true then if false then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> Decl50Base2.M.d120 ) ) ) $ ( Decl50Base2.M.d64 ) ) ) ) $ ( if false then d104 else true )
        d111 : if false then if true then Bool else Bool else if false then Bool else Bool
        d111 = if if Decl50Base2.M.d116 then Decl50Base2.M.d106 else false then if Decl50Base2.M.d33 then d77 else false else if Decl50Base2.M.d10 then Decl50Base2.M.d103 else true
        d112 : if false then if false then Bool else Bool else if false then Bool else Bool
        d112 = if if false then Decl50Base2.M.d103 else false then if true then true else Decl50Base2.M.d89 else if Decl50Base2.M.d18 then Decl50Base2.M.d6 else true
        d113 : if true then if true then Bool else Bool else if false then Bool else Bool
        d113 = if if Decl50Base2.M.d75 then d3 else d44 then if Decl50Base2.M.d116 then Decl50Base2.M.d57 else Decl50Base2.M.d100 else if false then Decl50Base2.M.d33 else d112
        d114 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if false then Bool else x117 ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> Decl50Base2.M.d123 ) ) ) $ ( true ) ) ) ) $ ( if Decl50Base2.M.d92 then Decl50Base2.M.d134 else true )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( x119 ) ) ) ) $ ( if false then Bool else Bool )
        d118 = if if false then Decl50Base2.M.d139 else Decl50Base2.M.d55 then if true then Decl50Base2.M.d29 else Decl50Base2.M.d45 else if false then false else Decl50Base2.M.d36
        d121 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if false then x123 else Bool ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if Decl50Base2.M.d70 then Decl50Base2.M.d96 else d44 ) ) ) $ ( if true then true else Decl50Base2.M.d98 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( x126 ) ) ) ) $ ( if true then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if x125 then x125 else Decl50Base2.M.d36 ) ) ) $ ( if Decl50Base2.M.d14 then true else false )
        d128 : if true then if false then Bool else Bool else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> if Decl50Base2.M.d26 then Decl50Base2.M.d96 else d121 ) ) ) $ ( if true then Decl50Base2.M.d134 else d35 )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d130 = if if true then d104 else Decl50Base2.M.d33 then if Decl50Base2.M.d45 then Decl50Base2.M.d6 else Decl50Base2.M.d106 else if false then d93 else Decl50Base2.M.d92