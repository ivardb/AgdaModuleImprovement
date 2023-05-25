module Decl50Test8  where
    import Decl50Base8
    open import Decl50Base8 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> x3 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if true then false else true ) ) ) $ ( if Decl50Base8.M.d69 then Decl50Base8.M.d1 else Decl50Base8.M.d18 )
        d5 : if true then if true then Bool else Bool else if false then Bool else Bool
        d5 = if if Decl50Base8.M.d126 then d1 else Decl50Base8.M.d88 then if true then Decl50Base8.M.d12 else d1 else if d1 then Decl50Base8.M.d123 else true
        d6 : if false then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d5 then Decl50Base8.M.d5 else d1 ) ) ) $ ( if d1 then d5 else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then x11 else x11 ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> d6 ) ) ) $ ( x9 ) ) ) ) $ ( if Decl50Base8.M.d19 then Decl50Base8.M.d123 else d5 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if true then Bool else x13 ) ) ) $ ( if false then Bool else Bool )
        d12 = if if Decl50Base8.M.d35 then d6 else Decl50Base8.M.d15 then if true then Decl50Base8.M.d42 else true else if d5 then Decl50Base8.M.d85 else Decl50Base8.M.d47
        d14 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( x16 ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if Decl50Base8.M.d112 then d6 else Decl50Base8.M.d1 ) ) ) $ ( if d6 then d12 else Decl50Base8.M.d18 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x19 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = if if true then Decl50Base8.M.d47 else Decl50Base8.M.d128 then if true then Decl50Base8.M.d47 else Decl50Base8.M.d123 else if Decl50Base8.M.d69 then true else false
        d21 : if true then if false then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( x22 ) ) ) ) $ ( if Decl50Base8.M.d28 then d6 else d14 )
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if Decl50Base8.M.d19 then d1 else true then if d1 then d1 else Decl50Base8.M.d38 else if Decl50Base8.M.d82 then false else Decl50Base8.M.d49
        d25 : if false then if false then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if x26 then x26 else Decl50Base8.M.d27 ) ) ) $ ( if Decl50Base8.M.d128 then Decl50Base8.M.d33 else false )
        d27 : if true then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if Decl50Base8.M.d58 then Decl50Base8.M.d61 else true then if Decl50Base8.M.d88 then Decl50Base8.M.d123 else Decl50Base8.M.d16 else if false then Decl50Base8.M.d25 else true
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x31 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if true then Decl50Base8.M.d77 else d12 ) ) ) $ ( if Decl50Base8.M.d88 then Decl50Base8.M.d1 else d18 )
        d32 : if false then if true then Bool else Bool else if false then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> Decl50Base8.M.d77 ) ) ) $ ( Decl50Base8.M.d54 ) ) ) ) $ ( if false then d12 else Decl50Base8.M.d61 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if Decl50Base8.M.d33 then Decl50Base8.M.d3 else Decl50Base8.M.d83 ) ) ) $ ( if Decl50Base8.M.d21 then false else false )
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if x40 then x40 else d1 ) ) ) $ ( if Decl50Base8.M.d49 then Decl50Base8.M.d94 else d35 )
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if d28 then x42 else d5 ) ) ) $ ( if Decl50Base8.M.d41 then true else d25 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> x45 ) ) ) $ ( x45 ) ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then Decl50Base8.M.d108 else Decl50Base8.M.d54 ) ) ) $ ( if d1 then Decl50Base8.M.d91 else true )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> Decl50Base8.M.d35 ) ) ) $ ( x48 ) ) ) ) $ ( if Decl50Base8.M.d137 then Decl50Base8.M.d133 else Decl50Base8.M.d12 )
        d51 : if true then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if true then Decl50Base8.M.d67 else d18 then if false then d18 else Decl50Base8.M.d72 else if Decl50Base8.M.d82 then Decl50Base8.M.d137 else false
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( x54 ) ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if Decl50Base8.M.d138 then d5 else Decl50Base8.M.d47 ) ) ) $ ( if Decl50Base8.M.d94 then Decl50Base8.M.d16 else d41 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( x59 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d18 ) ) ) $ ( true ) ) ) ) $ ( if d5 then d41 else d51 )
        d61 : if false then if false then Bool else Bool else if false then Bool else Bool
        d61 = if if d1 then Decl50Base8.M.d42 else Decl50Base8.M.d94 then if d25 then Decl50Base8.M.d98 else false else if false then Decl50Base8.M.d15 else Decl50Base8.M.d133
        d62 : if false then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if true then d52 else d12 then if true then Decl50Base8.M.d120 else d47 else if Decl50Base8.M.d82 then Decl50Base8.M.d137 else Decl50Base8.M.d12
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if d39 then Decl50Base8.M.d83 else x64 ) ) ) $ ( if d41 then d12 else Decl50Base8.M.d137 )
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> x66 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base8.M.d83 then true else Decl50Base8.M.d9 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if if false then true else Decl50Base8.M.d19 then if false then true else d39 else if Decl50Base8.M.d33 then Decl50Base8.M.d98 else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if d63 then true else d41 ) ) ) $ ( if true then d25 else d32 )
        d74 : if false then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if false then Decl50Base8.M.d69 else true ) ) ) $ ( if Decl50Base8.M.d27 then Decl50Base8.M.d15 else true )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d76 = if if d28 then true else Decl50Base8.M.d19 then if true then Decl50Base8.M.d27 else d24 else if d62 then d6 else Decl50Base8.M.d88
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else x82 ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if Decl50Base8.M.d5 then true else false )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> x86 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> ( ( Bool -> Bool ) ∋ ( ( λ x85 -> Decl50Base8.M.d63 ) ) ) $ ( x84 ) ) ) ) $ ( if false then false else d12 )
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if true then true else Decl50Base8.M.d137 ) ) ) $ ( if d83 then d28 else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then x91 else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = if if true then d65 else false then if false then Decl50Base8.M.d126 else d35 else if Decl50Base8.M.d21 then Decl50Base8.M.d1 else Decl50Base8.M.d63
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then x95 else x95 ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> d27 ) ) ) $ ( x93 ) ) ) ) $ ( if false then d21 else Decl50Base8.M.d58 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d96 = if if false then d8 else d18 then if Decl50Base8.M.d25 then Decl50Base8.M.d5 else true else if Decl50Base8.M.d108 then Decl50Base8.M.d70 else d18
        d98 : if true then if false then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> Decl50Base8.M.d94 ) ) ) $ ( Decl50Base8.M.d137 ) ) ) ) $ ( if false then Decl50Base8.M.d126 else Decl50Base8.M.d88 )
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = if if Decl50Base8.M.d51 then false else true then if Decl50Base8.M.d63 then Decl50Base8.M.d28 else false else if d51 then d71 else Decl50Base8.M.d133
        d102 : if false then if false then Bool else Bool else if true then Bool else Bool
        d102 = if if Decl50Base8.M.d27 then Decl50Base8.M.d98 else false then if Decl50Base8.M.d33 then false else Decl50Base8.M.d42 else if Decl50Base8.M.d112 then d21 else d62
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then x104 else Bool ) ) ) $ ( if true then Bool else Bool )
        d103 = if if Decl50Base8.M.d58 then Decl50Base8.M.d1 else Decl50Base8.M.d27 then if Decl50Base8.M.d21 then Decl50Base8.M.d116 else Decl50Base8.M.d49 else if true then Decl50Base8.M.d25 else d28
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then x107 else x107 ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if x106 then false else Decl50Base8.M.d117 ) ) ) $ ( if d47 then d8 else Decl50Base8.M.d18 )
        d108 : if false then if true then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> Decl50Base8.M.d28 ) ) ) $ ( Decl50Base8.M.d67 ) ) ) ) $ ( if Decl50Base8.M.d63 then Decl50Base8.M.d28 else Decl50Base8.M.d19 )
        d111 : if true then if false then Bool else Bool else if false then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d62 ) ) ) $ ( false ) ) ) ) $ ( if Decl50Base8.M.d33 then Decl50Base8.M.d77 else Decl50Base8.M.d54 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( x115 ) ) ) ) $ ( if true then Bool else Bool )
        d114 = if if d35 then Decl50Base8.M.d9 else false then if false then false else true else if Decl50Base8.M.d120 then Decl50Base8.M.d28 else d25
        d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> Decl50Base8.M.d105 ) ) ) $ ( d56 ) ) ) ) $ ( if Decl50Base8.M.d85 then d63 else Decl50Base8.M.d126 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then x123 else x123 ) ) ) $ ( if true then Bool else Bool )
        d122 = if if true then d39 else d25 then if false then d103 else Decl50Base8.M.d137 else if d47 then Decl50Base8.M.d38 else false
        d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if d62 then d52 else Decl50Base8.M.d63 ) ) ) $ ( if Decl50Base8.M.d41 then Decl50Base8.M.d94 else Decl50Base8.M.d69 )
        d127 : if false then if false then Bool else Bool else if true then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if true then Decl50Base8.M.d58 else Decl50Base8.M.d3 ) ) ) $ ( if d103 then d56 else Decl50Base8.M.d58 )
        d129 : if true then if true then Bool else Bool else if false then Bool else Bool
        d129 = if if Decl50Base8.M.d16 then false else true then if true then false else false else if Decl50Base8.M.d54 then true else true
        d130 : if false then if false then Bool else Bool else if true then Bool else Bool
        d130 = if if d79 then Decl50Base8.M.d123 else Decl50Base8.M.d51 then if Decl50Base8.M.d94 then d8 else false else if d68 then d92 else Decl50Base8.M.d41
        d131 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> x134 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> x132 ) ) ) $ ( Decl50Base8.M.d9 ) ) ) ) $ ( if Decl50Base8.M.d67 then d130 else Decl50Base8.M.d70 )