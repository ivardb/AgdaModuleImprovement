module Decl50Test11  where
    import Decl50Base11
    open import Decl50Base11 using (Bool; true; false; ⊤; tt) public
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if true then Decl50Base11.M.d115 else Decl50Base11.M.d99 ) ) ) $ ( if false then Decl50Base11.M.d61 else true )
        d3 : if true then if true then Bool else Bool else if true then Bool else Bool
        d3 = if if Decl50Base11.M.d13 then false else Decl50Base11.M.d34 then if d1 then Decl50Base11.M.d5 else false else if Decl50Base11.M.d47 then Decl50Base11.M.d102 else d1
        d4 : ( ( Set -> Set ) ∋ ( ( λ x6 -> ( ( Set -> Set ) ∋ ( ( λ x7 -> Bool ) ) ) $ ( x6 ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if x5 then Decl50Base11.M.d29 else Decl50Base11.M.d53 ) ) ) $ ( if Decl50Base11.M.d29 then Decl50Base11.M.d123 else Decl50Base11.M.d47 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( x9 ) ) ) ) $ ( if true then Bool else Bool )
        d8 = if if Decl50Base11.M.d9 then Decl50Base11.M.d72 else d1 then if Decl50Base11.M.d58 then Decl50Base11.M.d45 else Decl50Base11.M.d76 else if d4 then Decl50Base11.M.d58 else Decl50Base11.M.d129
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if true then Bool else Bool )
        d11 = if if Decl50Base11.M.d53 then Decl50Base11.M.d106 else d3 then if Decl50Base11.M.d32 then Decl50Base11.M.d95 else Decl50Base11.M.d112 else if Decl50Base11.M.d69 then Decl50Base11.M.d58 else Decl50Base11.M.d13
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if Decl50Base11.M.d34 then d11 else x15 ) ) ) $ ( if Decl50Base11.M.d26 then false else Decl50Base11.M.d108 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d18 = if if Decl50Base11.M.d19 then Decl50Base11.M.d9 else true then if Decl50Base11.M.d99 then true else false else if Decl50Base11.M.d61 then Decl50Base11.M.d102 else Decl50Base11.M.d21
        d21 : if true then if true then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if Decl50Base11.M.d102 then d14 else true ) ) ) $ ( if Decl50Base11.M.d76 then Decl50Base11.M.d123 else false )
        d23 : if true then if true then Bool else Bool else if true then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> d3 ) ) ) $ ( d4 ) ) ) ) $ ( if true then true else Decl50Base11.M.d95 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> x29 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> Decl50Base11.M.d106 ) ) ) $ ( Decl50Base11.M.d103 ) ) ) ) $ ( if d3 then d3 else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then x34 else Bool ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> d26 ) ) ) $ ( Decl50Base11.M.d102 ) ) ) ) $ ( if Decl50Base11.M.d106 then Decl50Base11.M.d7 else Decl50Base11.M.d64 )
        d35 : if false then if false then Bool else Bool else if false then Bool else Bool
        d35 = if if false then true else Decl50Base11.M.d103 then if true then Decl50Base11.M.d29 else d18 else if d3 then d4 else Decl50Base11.M.d36
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then x37 else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = if if Decl50Base11.M.d76 then d23 else Decl50Base11.M.d106 then if Decl50Base11.M.d112 then false else false else if false then Decl50Base11.M.d36 else Decl50Base11.M.d42
        d38 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then Bool else x41 ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> d31 ) ) ) $ ( x39 ) ) ) ) $ ( if d36 then Decl50Base11.M.d59 else Decl50Base11.M.d21 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> ( ( Set -> Set ) ∋ ( ( λ x45 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if Decl50Base11.M.d61 then Decl50Base11.M.d4 else false ) ) ) $ ( if Decl50Base11.M.d29 then d18 else Decl50Base11.M.d95 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> x49 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> Decl50Base11.M.d59 ) ) ) $ ( Decl50Base11.M.d13 ) ) ) ) $ ( if Decl50Base11.M.d72 then Decl50Base11.M.d12 else Decl50Base11.M.d64 )
        d51 : if false then if true then Bool else Bool else if false then Bool else Bool
        d51 = if if Decl50Base11.M.d42 then true else d38 then if Decl50Base11.M.d36 then Decl50Base11.M.d5 else Decl50Base11.M.d32 else if Decl50Base11.M.d90 then true else Decl50Base11.M.d57
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if d35 then Decl50Base11.M.d116 else Decl50Base11.M.d38 then if d23 then Decl50Base11.M.d29 else Decl50Base11.M.d12 else if Decl50Base11.M.d5 then false else Decl50Base11.M.d125
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = if if d42 then d4 else Decl50Base11.M.d1 then if Decl50Base11.M.d5 then Decl50Base11.M.d42 else Decl50Base11.M.d95 else if true then Decl50Base11.M.d107 else Decl50Base11.M.d79
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if d46 then Decl50Base11.M.d7 else Decl50Base11.M.d59 then if Decl50Base11.M.d1 then Decl50Base11.M.d19 else Decl50Base11.M.d32 else if true then Decl50Base11.M.d68 else true
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d57 = if if Decl50Base11.M.d120 then true else true then if Decl50Base11.M.d99 then Decl50Base11.M.d52 else d35 else if Decl50Base11.M.d85 then Decl50Base11.M.d102 else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> d23 ) ) ) $ ( Decl50Base11.M.d13 ) ) ) ) $ ( if d3 then Decl50Base11.M.d58 else Decl50Base11.M.d106 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then x67 else x67 ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( x65 ) ) ) ) $ ( if d21 then Decl50Base11.M.d26 else Decl50Base11.M.d26 )
        d68 : if false then if true then Bool else Bool else if true then Bool else Bool
        d68 = if if Decl50Base11.M.d116 then d14 else Decl50Base11.M.d123 then if true then Decl50Base11.M.d4 else Decl50Base11.M.d1 else if Decl50Base11.M.d38 then false else Decl50Base11.M.d47
        d69 : if false then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x70 then x70 else x70 ) ) ) $ ( if d38 then false else false )
        d71 : if false then if true then Bool else Bool else if false then Bool else Bool
        d71 = if if Decl50Base11.M.d42 then d60 else true then if Decl50Base11.M.d115 then d26 else Decl50Base11.M.d85 else if Decl50Base11.M.d58 then d57 else d57
        d72 : if false then if true then Bool else Bool else if false then Bool else Bool
        d72 = if if Decl50Base11.M.d1 then d42 else Decl50Base11.M.d99 then if Decl50Base11.M.d59 then Decl50Base11.M.d59 else Decl50Base11.M.d116 else if Decl50Base11.M.d129 then d71 else d18
        d73 : if true then if false then Bool else Bool else if false then Bool else Bool
        d73 = if if Decl50Base11.M.d99 then true else true then if Decl50Base11.M.d123 then d3 else Decl50Base11.M.d7 else if Decl50Base11.M.d26 then true else d18
        d74 : if true then if true then Bool else Bool else if true then Bool else Bool
        d74 = if if d1 then true else Decl50Base11.M.d120 then if Decl50Base11.M.d24 then d46 else Decl50Base11.M.d47 else if true then false else true
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> Decl50Base11.M.d123 ) ) ) $ ( d14 ) ) ) ) $ ( if Decl50Base11.M.d129 then d51 else Decl50Base11.M.d52 )
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = if if d68 then Decl50Base11.M.d69 else Decl50Base11.M.d36 then if Decl50Base11.M.d7 then d73 else Decl50Base11.M.d108 else if Decl50Base11.M.d85 then Decl50Base11.M.d42 else Decl50Base11.M.d115
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = if if d3 then d54 else Decl50Base11.M.d21 then if true then Decl50Base11.M.d47 else Decl50Base11.M.d54 else if d78 then Decl50Base11.M.d106 else false
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if Decl50Base11.M.d1 then d8 else false ) ) ) $ ( if false then d78 else Decl50Base11.M.d79 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d86 = if if d42 then Decl50Base11.M.d42 else Decl50Base11.M.d129 then if Decl50Base11.M.d64 then Decl50Base11.M.d52 else Decl50Base11.M.d68 else if d35 then Decl50Base11.M.d129 else d71
        d89 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d89 = if if Decl50Base11.M.d59 then Decl50Base11.M.d99 else Decl50Base11.M.d19 then if d26 then Decl50Base11.M.d32 else false else if d57 then Decl50Base11.M.d53 else Decl50Base11.M.d90
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then false else d75 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if true then Bool else x98 ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> Decl50Base11.M.d76 ) ) ) $ ( x96 ) ) ) ) $ ( if Decl50Base11.M.d52 then Decl50Base11.M.d90 else d60 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
        d99 = if if Decl50Base11.M.d24 then Decl50Base11.M.d106 else Decl50Base11.M.d53 then if d42 then Decl50Base11.M.d45 else Decl50Base11.M.d85 else if Decl50Base11.M.d5 then Decl50Base11.M.d103 else Decl50Base11.M.d85
        d102 : if true then if false then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( Bool -> Bool ) ∋ ( ( λ x104 -> false ) ) ) $ ( x103 ) ) ) ) $ ( if Decl50Base11.M.d64 then Decl50Base11.M.d26 else Decl50Base11.M.d82 )
        d105 : if true then if true then Bool else Bool else if true then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if true then x106 else Decl50Base11.M.d69 ) ) ) $ ( if Decl50Base11.M.d85 then Decl50Base11.M.d79 else Decl50Base11.M.d108 )
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = if if Decl50Base11.M.d42 then false else d51 then if d53 then d86 else Decl50Base11.M.d24 else if Decl50Base11.M.d58 then true else d71
        d108 : if false then if false then Bool else Bool else if true then Bool else Bool
        d108 = if if d60 then Decl50Base11.M.d125 else Decl50Base11.M.d76 then if Decl50Base11.M.d61 then d54 else Decl50Base11.M.d29 else if Decl50Base11.M.d47 then Decl50Base11.M.d26 else Decl50Base11.M.d53
        d109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then Decl50Base11.M.d54 else true ) ) ) $ ( if Decl50Base11.M.d32 then Decl50Base11.M.d99 else d31 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else x114 ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d14 ) ) ) $ ( x112 ) ) ) ) $ ( if false then Decl50Base11.M.d69 else d52 )
        d115 : if true then if false then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if d74 then false else false ) ) ) $ ( if Decl50Base11.M.d54 then Decl50Base11.M.d76 else Decl50Base11.M.d12 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d117 = if if Decl50Base11.M.d82 then Decl50Base11.M.d13 else true then if false then true else d111 else if Decl50Base11.M.d13 then false else d109
        d120 : if false then if false then Bool else Bool else if false then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> true ) ) ) $ ( x121 ) ) ) ) $ ( if true then Decl50Base11.M.d90 else Decl50Base11.M.d123 )
        d123 : if true then if false then Bool else Bool else if false then Bool else Bool
        d123 = if if true then d38 else Decl50Base11.M.d54 then if true then Decl50Base11.M.d95 else d105 else if Decl50Base11.M.d58 then false else Decl50Base11.M.d5
        d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then x125 else Bool ) ) ) $ ( if false then Bool else Bool )
        d124 = if if d73 then Decl50Base11.M.d116 else true then if Decl50Base11.M.d45 then Decl50Base11.M.d26 else Decl50Base11.M.d54 else if Decl50Base11.M.d123 then d52 else false
        d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> x128 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if Decl50Base11.M.d102 then d51 else d82 ) ) ) $ ( if d52 then Decl50Base11.M.d125 else Decl50Base11.M.d26 )