module Decl450Test6  where
    import Decl450Base6
    open import Decl450Base6 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( x4 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( Decl450Base6.M.d701 ) ) ) ) $ ( if Decl450Base6.M.d322 then Decl450Base6.M.d847 else Decl450Base6.M.d1095 )
        d6 : if true then if false then Bool else Bool else if true then Bool else Bool
        d6 = if if Decl450Base6.M.d846 then Decl450Base6.M.d414 else true then if d1 then Decl450Base6.M.d996 else Decl450Base6.M.d508 else if true then d1 else false
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then x8 else Bool ) ) ) $ ( if true then Bool else Bool )
        d7 = if if true then d6 else false then if Decl450Base6.M.d34 then Decl450Base6.M.d461 else true else if d6 then false else true
        d9 : if false then if true then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> Decl450Base6.M.d428 ) ) ) $ ( Decl450Base6.M.d477 ) ) ) ) $ ( if Decl450Base6.M.d621 then Decl450Base6.M.d1023 else Decl450Base6.M.d119 )
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> true ) ) ) $ ( true ) ) ) ) $ ( if Decl450Base6.M.d178 then true else true )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d15 = if if d7 then Decl450Base6.M.d450 else d6 then if false then Decl450Base6.M.d299 else true else if false then Decl450Base6.M.d493 else Decl450Base6.M.d536
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if d7 then true else Decl450Base6.M.d956 ) ) ) $ ( if Decl450Base6.M.d458 then true else d12 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( x22 ) ) ) ) $ ( if true then Bool else Bool )
        d21 = if if Decl450Base6.M.d1008 then false else d15 then if Decl450Base6.M.d11 then Decl450Base6.M.d886 else Decl450Base6.M.d15 else if Decl450Base6.M.d911 then Decl450Base6.M.d38 else true
        d24 : if false then if true then Bool else Bool else if true then Bool else Bool
        d24 = if if true then Decl450Base6.M.d1145 else Decl450Base6.M.d442 then if d9 then true else Decl450Base6.M.d983 else if Decl450Base6.M.d91 then Decl450Base6.M.d514 else d21
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> Decl450Base6.M.d1056 ) ) ) $ ( d7 ) ) ) ) $ ( if Decl450Base6.M.d153 then Decl450Base6.M.d178 else d15 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if x29 then d6 else Decl450Base6.M.d105 ) ) ) $ ( if Decl450Base6.M.d34 then d15 else Decl450Base6.M.d838 )
        d31 : if false then if false then Bool else Bool else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if x32 then Decl450Base6.M.d730 else Decl450Base6.M.d740 ) ) ) $ ( if Decl450Base6.M.d376 then true else d7 )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> x34 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d33 = if if Decl450Base6.M.d353 then d28 else d6 then if Decl450Base6.M.d503 then Decl450Base6.M.d266 else d12 else if Decl450Base6.M.d1131 then true else Decl450Base6.M.d960
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> false ) ) ) $ ( Decl450Base6.M.d1166 ) ) ) ) $ ( if true then Decl450Base6.M.d322 else Decl450Base6.M.d31 )
        d39 : if true then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if Decl450Base6.M.d1136 then d6 else Decl450Base6.M.d1155 then if false then Decl450Base6.M.d66 else Decl450Base6.M.d178 else if d28 then Decl450Base6.M.d865 else d6
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if Decl450Base6.M.d955 then Decl450Base6.M.d934 else Decl450Base6.M.d625 ) ) ) $ ( if d7 then Decl450Base6.M.d846 else false )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d36 ) ) ) $ ( x43 ) ) ) ) $ ( if Decl450Base6.M.d965 then Decl450Base6.M.d996 else true )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d47 = if if d24 then false else Decl450Base6.M.d288 then if d28 then true else Decl450Base6.M.d648 else if Decl450Base6.M.d329 then d9 else Decl450Base6.M.d73
        d49 : if true then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if d36 then Decl450Base6.M.d15 else true then if d17 then Decl450Base6.M.d348 else false else if true then true else false
        d50 : if true then if false then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> Decl450Base6.M.d458 ) ) ) $ ( Decl450Base6.M.d999 ) ) ) ) $ ( if false then Decl450Base6.M.d440 else Decl450Base6.M.d925 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d53 = if if Decl450Base6.M.d911 then true else Decl450Base6.M.d391 then if d40 then Decl450Base6.M.d934 else d40 else if d21 then Decl450Base6.M.d132 else d50
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then x57 else x57 ) ) ) $ ( if false then Bool else Bool )
        d56 = if if d21 then true else d33 then if Decl450Base6.M.d191 then Decl450Base6.M.d288 else false else if Decl450Base6.M.d223 then d21 else Decl450Base6.M.d484
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d58 = if if false then d7 else d15 then if false then Decl450Base6.M.d226 else Decl450Base6.M.d57 else if Decl450Base6.M.d240 then Decl450Base6.M.d936 else false
        d60 : if true then if false then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> Decl450Base6.M.d577 ) ) ) $ ( d6 ) ) ) ) $ ( if false then Decl450Base6.M.d576 else Decl450Base6.M.d423 )
        d63 : if true then if true then Bool else Bool else if true then Bool else Bool
        d63 = if if true then Decl450Base6.M.d25 else d6 then if d15 then false else d12 else if d50 then false else Decl450Base6.M.d332
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> Decl450Base6.M.d316 ) ) ) $ ( x65 ) ) ) ) $ ( if Decl450Base6.M.d226 then Decl450Base6.M.d867 else true )
        d67 : if true then if false then Bool else Bool else if true then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> if Decl450Base6.M.d782 then Decl450Base6.M.d362 else d6 ) ) ) $ ( if d28 then Decl450Base6.M.d555 else Decl450Base6.M.d1077 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if if false then true else false then if Decl450Base6.M.d555 then d9 else d47 else if Decl450Base6.M.d257 then Decl450Base6.M.d943 else d40
        d72 : if true then if true then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if Decl450Base6.M.d1093 then d50 else Decl450Base6.M.d728 ) ) ) $ ( if true then Decl450Base6.M.d693 else d1 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then x75 else x75 ) ) ) $ ( if false then Bool else Bool )
        d74 = if if Decl450Base6.M.d26 then d39 else true then if d49 then Decl450Base6.M.d703 else Decl450Base6.M.d141 else if false then true else Decl450Base6.M.d257
        d76 : if false then if true then Bool else Bool else if true then Bool else Bool
        d76 = if if Decl450Base6.M.d820 then Decl450Base6.M.d1 else d39 then if d42 then Decl450Base6.M.d860 else d36 else if d1 then d31 else false
        d77 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d77 = if if Decl450Base6.M.d704 then false else Decl450Base6.M.d201 then if Decl450Base6.M.d522 then d33 else d15 else if d60 then Decl450Base6.M.d1109 else true
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( Decl450Base6.M.d732 ) ) ) ) $ ( if d76 then Decl450Base6.M.d235 else Decl450Base6.M.d55 )
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if true then Decl450Base6.M.d960 else Decl450Base6.M.d911 then if d74 then Decl450Base6.M.d236 else Decl450Base6.M.d1164 else if Decl450Base6.M.d26 then false else d24
        d86 : if true then if false then Bool else Bool else if false then Bool else Bool
        d86 = if if Decl450Base6.M.d397 then Decl450Base6.M.d477 else Decl450Base6.M.d778 then if Decl450Base6.M.d607 then Decl450Base6.M.d889 else true else if Decl450Base6.M.d530 then Decl450Base6.M.d161 else d33
        d87 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x90 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> d40 ) ) ) $ ( Decl450Base6.M.d404 ) ) ) ) $ ( if Decl450Base6.M.d555 then d31 else d28 )
        d92 : if true then if true then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if Decl450Base6.M.d640 then Decl450Base6.M.d496 else x93 ) ) ) $ ( if d7 then Decl450Base6.M.d785 else false )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if d58 then true else d28 ) ) ) $ ( if Decl450Base6.M.d721 then Decl450Base6.M.d48 else d77 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> if true then Bool else x99 ) ) ) $ ( if false then Bool else Bool )
        d98 = if if false then d67 else d33 then if false then false else Decl450Base6.M.d871 else if Decl450Base6.M.d162 then Decl450Base6.M.d269 else Decl450Base6.M.d168
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> Decl450Base6.M.d140 ) ) ) $ ( x101 ) ) ) ) $ ( if Decl450Base6.M.d498 then d42 else true )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then x108 else x108 ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> Decl450Base6.M.d844 ) ) ) $ ( d1 ) ) ) ) $ ( if Decl450Base6.M.d118 then d17 else true )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( x112 ) ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> d94 ) ) ) $ ( d98 ) ) ) ) $ ( if false then d28 else Decl450Base6.M.d344 )
        d114 : if true then if false then Bool else Bool else if false then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( d76 ) ) ) ) $ ( if Decl450Base6.M.d632 then d53 else false )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else x120 ) ) ) $ ( if true then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> false ) ) ) $ ( Decl450Base6.M.d150 ) ) ) ) $ ( if d80 then true else Decl450Base6.M.d1069 )
        d121 : if true then if false then Bool else Bool else if false then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if d63 then d47 else d56 ) ) ) $ ( if d7 then false else d49 )
        d123 : if true then if false then Bool else Bool else if true then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( Bool -> Bool ) ∋ ( ( λ x125 -> true ) ) ) $ ( d109 ) ) ) ) $ ( if Decl450Base6.M.d641 then Decl450Base6.M.d737 else d86 )
        d126 : if false then if false then Bool else Bool else if false then Bool else Bool
        d126 = if if Decl450Base6.M.d623 then Decl450Base6.M.d990 else Decl450Base6.M.d770 then if d31 then false else false else if false then Decl450Base6.M.d1103 else Decl450Base6.M.d746
        d127 : if true then if true then Bool else Bool else if false then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> d24 ) ) ) $ ( d60 ) ) ) ) $ ( if Decl450Base6.M.d348 then Decl450Base6.M.d25 else d6 )
        d130 : if true then if false then Bool else Bool else if true then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( Bool -> Bool ) ∋ ( ( λ x132 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then Decl450Base6.M.d857 else false )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if true then x135 else Bool ) ) ) $ ( if false then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if x134 then true else Decl450Base6.M.d414 ) ) ) $ ( if d17 then d9 else Decl450Base6.M.d981 )