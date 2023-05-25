module Decl450Test4  where
    import Decl450Base4
    open import Decl450Base4 using (Bool; true; false; ⊤; tt) public
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
        d1 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl450Base4.M.d208 ) ) ) $ ( x2 ) ) ) ) $ ( if Decl450Base4.M.d238 then Decl450Base4.M.d1131 else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if true then Bool else x5 ) ) ) $ ( if true then Bool else Bool )
        d4 = if if false then false else d1 then if Decl450Base4.M.d881 then true else d1 else if Decl450Base4.M.d1098 then Decl450Base4.M.d830 else Decl450Base4.M.d14
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = if if d1 then false else false then if Decl450Base4.M.d900 then Decl450Base4.M.d888 else true else if true then true else Decl450Base4.M.d1087
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = if if Decl450Base4.M.d1077 then d4 else d4 then if Decl450Base4.M.d1131 then true else Decl450Base4.M.d1017 else if d6 then false else Decl450Base4.M.d179
        d10 : if true then if true then Bool else Bool else if true then Bool else Bool
        d10 = if if Decl450Base4.M.d593 then Decl450Base4.M.d15 else d9 then if d1 then true else Decl450Base4.M.d780 else if true then true else true
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then x12 else x12 ) ) ) $ ( if true then Bool else Bool )
        d11 = if if true then Decl450Base4.M.d896 else Decl450Base4.M.d15 then if false then false else d9 else if Decl450Base4.M.d791 then Decl450Base4.M.d629 else Decl450Base4.M.d593
        d13 : if true then if true then Bool else Bool else if false then Bool else Bool
        d13 = if if d10 then Decl450Base4.M.d218 else Decl450Base4.M.d220 then if Decl450Base4.M.d334 then Decl450Base4.M.d107 else Decl450Base4.M.d75 else if Decl450Base4.M.d143 then d6 else true
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if x15 then false else x15 ) ) ) $ ( if d11 then Decl450Base4.M.d150 else Decl450Base4.M.d750 )
        d16 : if false then if true then Bool else Bool else if true then Bool else Bool
        d16 = if if Decl450Base4.M.d1116 then Decl450Base4.M.d84 else d6 then if Decl450Base4.M.d848 then Decl450Base4.M.d441 else d4 else if Decl450Base4.M.d794 then Decl450Base4.M.d917 else Decl450Base4.M.d401
        d17 : if false then if true then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( d16 ) ) ) ) $ ( if false then d4 else false )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if true then x23 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( d16 ) ) ) ) $ ( if d9 then Decl450Base4.M.d417 else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if Decl450Base4.M.d1029 then true else Decl450Base4.M.d198 ) ) ) $ ( if false then false else Decl450Base4.M.d137 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> Bool ) ) ) $ ( x29 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if if false then d20 else Decl450Base4.M.d15 then if d11 then Decl450Base4.M.d1017 else true else if d17 then Decl450Base4.M.d945 else d1
        d31 : if false then if false then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if x32 then d6 else Decl450Base4.M.d368 ) ) ) $ ( if d24 then true else d17 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x34 ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if false then Decl450Base4.M.d965 else Decl450Base4.M.d428 then if Decl450Base4.M.d995 then Decl450Base4.M.d240 else Decl450Base4.M.d222 else if d1 then Decl450Base4.M.d447 else true
        d36 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> if Decl450Base4.M.d559 then true else x37 ) ) ) $ ( if d20 then d10 else true )
        d39 : if false then if true then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if Decl450Base4.M.d11 then Decl450Base4.M.d678 else d33 ) ) ) $ ( if Decl450Base4.M.d742 then Decl450Base4.M.d527 else Decl450Base4.M.d1065 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x42 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d41 = if if d13 then Decl450Base4.M.d38 else d6 then if false then false else d9 else if d36 then Decl450Base4.M.d220 else Decl450Base4.M.d267
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( Decl450Base4.M.d780 ) ) ) ) $ ( if d16 then Decl450Base4.M.d640 else false )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( x49 ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> d43 ) ) ) $ ( Decl450Base4.M.d179 ) ) ) ) $ ( if Decl450Base4.M.d318 then Decl450Base4.M.d990 else d14 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if x52 then d17 else Decl450Base4.M.d900 ) ) ) $ ( if Decl450Base4.M.d474 then Decl450Base4.M.d676 else d14 )
        d55 : if true then if true then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if true then Decl450Base4.M.d227 else x56 ) ) ) $ ( if true then d10 else Decl450Base4.M.d161 )
        d57 : if true then if true then Bool else Bool else if true then Bool else Bool
        d57 = if if false then d20 else true then if true then Decl450Base4.M.d940 else false else if d9 then true else d16
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = if if d14 then Decl450Base4.M.d994 else true then if Decl450Base4.M.d921 then true else d20 else if d39 then Decl450Base4.M.d35 else Decl450Base4.M.d283
        d59 : if true then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d6 ) ) ) $ ( Decl450Base4.M.d844 ) ) ) ) $ ( if false then true else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then Bool else x65 ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d9 ) ) ) $ ( x63 ) ) ) ) $ ( if d14 then Decl450Base4.M.d163 else false )
        d66 : if true then if true then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> Decl450Base4.M.d386 ) ) ) $ ( false ) ) ) ) $ ( if Decl450Base4.M.d968 then Decl450Base4.M.d783 else Decl450Base4.M.d393 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then x70 else x70 ) ) ) $ ( if true then Bool else Bool )
        d69 = if if false then Decl450Base4.M.d30 else Decl450Base4.M.d174 then if d28 then Decl450Base4.M.d244 else Decl450Base4.M.d604 else if Decl450Base4.M.d1031 then Decl450Base4.M.d907 else Decl450Base4.M.d84
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> ( ( Set -> Set ) ∋ ( ( λ x73 -> x72 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if d24 then d66 else false then if Decl450Base4.M.d85 then true else Decl450Base4.M.d311 else if Decl450Base4.M.d565 then Decl450Base4.M.d275 else Decl450Base4.M.d723
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if x75 then false else Decl450Base4.M.d980 ) ) ) $ ( if false then Decl450Base4.M.d853 else Decl450Base4.M.d685 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then Bool else x77 ) ) ) $ ( if false then Bool else Bool )
        d76 = if if d36 then Decl450Base4.M.d510 else Decl450Base4.M.d1096 then if d51 then d39 else Decl450Base4.M.d233 else if false then true else d9
        d78 : if false then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if Decl450Base4.M.d96 then Decl450Base4.M.d256 else false ) ) ) $ ( if d16 then Decl450Base4.M.d310 else d62 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( x81 ) ) ) ) $ ( if true then Bool else Bool )
        d80 = if if d1 then false else Decl450Base4.M.d825 then if Decl450Base4.M.d230 then d46 else true else if Decl450Base4.M.d629 then Decl450Base4.M.d978 else true
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then x85 else x85 ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if true then x84 else d55 ) ) ) $ ( if Decl450Base4.M.d194 then d46 else true )
        d86 : if true then if true then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if Decl450Base4.M.d404 then Decl450Base4.M.d1073 else d16 ) ) ) $ ( if Decl450Base4.M.d1041 then Decl450Base4.M.d417 else d28 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if true then Decl450Base4.M.d135 else Decl450Base4.M.d327 ) ) ) $ ( if false then Decl450Base4.M.d619 else Decl450Base4.M.d747 )
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if d6 then d1 else d33 then if Decl450Base4.M.d853 then d46 else Decl450Base4.M.d92 else if Decl450Base4.M.d831 then Decl450Base4.M.d224 else Decl450Base4.M.d644
        d93 : if true then if false then Bool else Bool else if false then Bool else Bool
        d93 = if if Decl450Base4.M.d14 then true else Decl450Base4.M.d94 then if Decl450Base4.M.d633 then Decl450Base4.M.d158 else Decl450Base4.M.d830 else if Decl450Base4.M.d370 then true else true
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> ( ( Set -> Set ) ∋ ( ( λ x96 -> x96 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = if if Decl450Base4.M.d610 then Decl450Base4.M.d1100 else d58 then if true then Decl450Base4.M.d68 else d4 else if false then Decl450Base4.M.d84 else d20
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = if if d4 then false else d39 then if false then Decl450Base4.M.d91 else true else if Decl450Base4.M.d469 then d93 else Decl450Base4.M.d525
        d98 : if true then if true then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( d36 ) ) ) ) $ ( if Decl450Base4.M.d627 then false else false )
        d101 : if true then if false then Bool else Bool else if false then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if d58 then d1 else x102 ) ) ) $ ( if Decl450Base4.M.d442 then false else Decl450Base4.M.d810 )
        d103 : if true then if true then Bool else Bool else if true then Bool else Bool
        d103 = if if Decl450Base4.M.d218 then false else d43 then if d31 then Decl450Base4.M.d1049 else false else if Decl450Base4.M.d917 then true else true
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d104 = if if Decl450Base4.M.d466 then false else true then if d39 then Decl450Base4.M.d438 else false else if d62 then Decl450Base4.M.d640 else Decl450Base4.M.d769
        d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( x109 ) ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> d101 ) ) ) $ ( d41 ) ) ) ) $ ( if d6 then false else true )
        d111 : if true then if false then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( Decl450Base4.M.d504 ) ) ) ) $ ( if d46 then Decl450Base4.M.d252 else Decl450Base4.M.d1000 )
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = if if Decl450Base4.M.d318 then false else Decl450Base4.M.d179 then if Decl450Base4.M.d1049 then Decl450Base4.M.d370 else Decl450Base4.M.d694 else if Decl450Base4.M.d267 then Decl450Base4.M.d1127 else true
        d115 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if Decl450Base4.M.d1091 then x116 else false ) ) ) $ ( if d36 then d94 else d9 )
        d119 : if false then if true then Bool else Bool else if false then Bool else Bool
        d119 = if if Decl450Base4.M.d985 then d57 else d11 then if d69 then Decl450Base4.M.d650 else Decl450Base4.M.d131 else if d33 then d17 else true
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> Decl450Base4.M.d286 ) ) ) $ ( x121 ) ) ) ) $ ( if d76 then Decl450Base4.M.d56 else d98 )