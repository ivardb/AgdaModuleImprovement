module Decl450Test10  where
    import Decl450Base10
    open import Decl450Base10 using (Bool; true; false; ⊤; tt) public
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl450Base10.M.d251 ) ) ) $ ( x2 ) ) ) ) $ ( if false then Decl450Base10.M.d456 else true )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then x5 else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = if if Decl450Base10.M.d536 then d1 else Decl450Base10.M.d720 then if Decl450Base10.M.d846 then Decl450Base10.M.d902 else Decl450Base10.M.d419 else if false then d1 else Decl450Base10.M.d658
        d6 : if false then if false then Bool else Bool else if false then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> Decl450Base10.M.d581 ) ) ) $ ( true ) ) ) ) $ ( if d4 then Decl450Base10.M.d142 else false )
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( x15 ) ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> ( ( Bool -> Bool ) ∋ ( ( λ x14 -> true ) ) ) $ ( d4 ) ) ) ) $ ( if true then Decl450Base10.M.d133 else d4 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else x20 ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> Decl450Base10.M.d274 ) ) ) $ ( d4 ) ) ) ) $ ( if Decl450Base10.M.d702 then true else true )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x22 ) ) ) $ ( x22 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if d12 then d12 else Decl450Base10.M.d564 then if Decl450Base10.M.d687 then Decl450Base10.M.d31 else d1 else if Decl450Base10.M.d142 then Decl450Base10.M.d402 else Decl450Base10.M.d96
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x25 ) ) ) $ ( x25 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if if Decl450Base10.M.d852 then true else Decl450Base10.M.d702 then if false then d1 else d4 else if Decl450Base10.M.d822 then false else Decl450Base10.M.d9
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if Decl450Base10.M.d569 then Decl450Base10.M.d116 else true then if true then d6 else d12 else if Decl450Base10.M.d329 then d24 else false
        d28 : if true then if true then Bool else Bool else if false then Bool else Bool
        d28 = if if Decl450Base10.M.d446 then Decl450Base10.M.d170 else true then if false then Decl450Base10.M.d917 else Decl450Base10.M.d396 else if d9 then d21 else false
        d29 : if true then if true then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( false ) ) ) ) $ ( if true then Decl450Base10.M.d75 else true )
        d32 : if false then if true then Bool else Bool else if false then Bool else Bool
        d32 = if if true then true else Decl450Base10.M.d60 then if Decl450Base10.M.d465 then Decl450Base10.M.d459 else d9 else if Decl450Base10.M.d541 then Decl450Base10.M.d868 else d12
        d33 : ( ( Set -> Set ) ∋ ( ( λ x35 -> ( ( Set -> Set ) ∋ ( ( λ x36 -> x36 ) ) ) $ ( x35 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if Decl450Base10.M.d823 then d28 else false ) ) ) $ ( if d28 then d1 else true )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> Bool ) ) ) $ ( x38 ) ) ) ) $ ( if false then Bool else Bool )
        d37 = if if true then Decl450Base10.M.d1124 else true then if Decl450Base10.M.d588 then Decl450Base10.M.d979 else true else if Decl450Base10.M.d163 then d17 else d24
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then Bool else x41 ) ) ) $ ( if true then Bool else Bool )
        d40 = if if Decl450Base10.M.d729 then Decl450Base10.M.d1093 else Decl450Base10.M.d427 then if d32 then Decl450Base10.M.d849 else false else if Decl450Base10.M.d470 then Decl450Base10.M.d443 else Decl450Base10.M.d79
        d42 : if false then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if d28 then Decl450Base10.M.d1060 else Decl450Base10.M.d1111 then if true then Decl450Base10.M.d907 else Decl450Base10.M.d692 else if true then Decl450Base10.M.d96 else Decl450Base10.M.d407
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then d32 else Decl450Base10.M.d340 ) ) ) $ ( if d24 then d42 else false )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> true ) ) ) $ ( Decl450Base10.M.d564 ) ) ) ) $ ( if d17 then true else Decl450Base10.M.d590 )
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if d46 then d9 else Decl450Base10.M.d1068 ) ) ) $ ( if true then false else true )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if true then d17 else d42 ) ) ) $ ( if d9 then d29 else true )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x59 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> Decl450Base10.M.d1045 ) ) ) $ ( Decl450Base10.M.d266 ) ) ) ) $ ( if d9 then d52 else true )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x62 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d60 = if if d52 then Decl450Base10.M.d354 else d6 then if Decl450Base10.M.d213 then d4 else Decl450Base10.M.d206 else if false then false else true
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if true then Decl450Base10.M.d658 else false then if Decl450Base10.M.d1087 then Decl450Base10.M.d952 else Decl450Base10.M.d541 else if d50 then d50 else d50
        d66 : ( ( Set -> Set ) ∋ ( ( λ x69 -> if false then x69 else x69 ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> Decl450Base10.M.d163 ) ) ) $ ( d27 ) ) ) ) $ ( if false then Decl450Base10.M.d647 else true )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> if false then x71 else Bool ) ) ) $ ( if false then Bool else Bool )
        d70 = if if Decl450Base10.M.d386 then d50 else Decl450Base10.M.d451 then if Decl450Base10.M.d1030 then true else false else if true then Decl450Base10.M.d784 else d17
        d72 : if false then if true then Bool else Bool else if false then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> d1 ) ) ) $ ( d28 ) ) ) ) $ ( if Decl450Base10.M.d1101 then Decl450Base10.M.d774 else Decl450Base10.M.d852 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = if if Decl450Base10.M.d96 then Decl450Base10.M.d157 else d33 then if d37 then d43 else false else if Decl450Base10.M.d354 then Decl450Base10.M.d47 else Decl450Base10.M.d624
        d78 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> x81 ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d24 then Decl450Base10.M.d945 else true ) ) ) $ ( if false then Decl450Base10.M.d567 else Decl450Base10.M.d421 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if if true then Decl450Base10.M.d1129 else Decl450Base10.M.d386 then if Decl450Base10.M.d470 then Decl450Base10.M.d905 else true else if false then true else Decl450Base10.M.d1141
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( x86 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = if if Decl450Base10.M.d581 then Decl450Base10.M.d903 else d70 then if false then false else d17 else if Decl450Base10.M.d443 then d4 else Decl450Base10.M.d871
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> Decl450Base10.M.d152 ) ) ) $ ( d55 ) ) ) ) $ ( if d27 then Decl450Base10.M.d969 else Decl450Base10.M.d429 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> ( ( Set -> Set ) ∋ ( ( λ x94 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if d75 then Decl450Base10.M.d463 else Decl450Base10.M.d365 ) ) ) $ ( if Decl450Base10.M.d441 then true else d82 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( x98 ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x96 -> ( ( Bool -> Bool ) ∋ ( ( λ x97 -> Decl450Base10.M.d678 ) ) ) $ ( Decl450Base10.M.d1027 ) ) ) ) $ ( if d4 then Decl450Base10.M.d1087 else Decl450Base10.M.d842 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then Bool else x101 ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d60 then true else Decl450Base10.M.d945 then if d78 then d43 else d91 else if d46 then Decl450Base10.M.d782 else Decl450Base10.M.d287
        d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
        d102 = if if Decl450Base10.M.d35 then Decl450Base10.M.d193 else d95 then if true then d33 else Decl450Base10.M.d823 else if false then d33 else false
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> Decl450Base10.M.d984 ) ) ) $ ( false ) ) ) ) $ ( if Decl450Base10.M.d725 then Decl450Base10.M.d366 else false )
        d110 : if true then if false then Bool else Bool else if true then Bool else Bool
        d110 = if if d29 then true else Decl450Base10.M.d1130 then if Decl450Base10.M.d687 then d42 else Decl450Base10.M.d314 else if d70 then Decl450Base10.M.d924 else false
        d111 : if true then if true then Bool else Bool else if true then Bool else Bool
        d111 = if if Decl450Base10.M.d1014 then Decl450Base10.M.d961 else Decl450Base10.M.d704 then if false then true else true else if Decl450Base10.M.d958 then Decl450Base10.M.d816 else Decl450Base10.M.d90
        d112 : if true then if true then Bool else Bool else if true then Bool else Bool
        d112 = if if Decl450Base10.M.d600 then d4 else Decl450Base10.M.d1133 then if false then Decl450Base10.M.d976 else d66 else if Decl450Base10.M.d589 then Decl450Base10.M.d811 else Decl450Base10.M.d699
        d113 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if true then false else Decl450Base10.M.d487 ) ) ) $ ( if Decl450Base10.M.d145 then Decl450Base10.M.d274 else Decl450Base10.M.d221 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> ( ( Set -> Set ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d117 = if if Decl450Base10.M.d90 then Decl450Base10.M.d504 else Decl450Base10.M.d629 then if d50 then Decl450Base10.M.d516 else false else if Decl450Base10.M.d137 then Decl450Base10.M.d1149 else d27
        d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( x123 ) ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> Decl450Base10.M.d897 ) ) ) $ ( x121 ) ) ) ) $ ( if Decl450Base10.M.d170 then Decl450Base10.M.d844 else Decl450Base10.M.d446 )
        d125 : if true then if true then Bool else Bool else if true then Bool else Bool
        d125 = if if Decl450Base10.M.d107 then false else Decl450Base10.M.d368 then if false then d17 else Decl450Base10.M.d678 else if Decl450Base10.M.d932 then Decl450Base10.M.d107 else Decl450Base10.M.d1016
        d126 : if false then if false then Bool else Bool else if false then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> false ) ) ) $ ( d43 ) ) ) ) $ ( if Decl450Base10.M.d427 then Decl450Base10.M.d252 else d33 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if true then x131 else x131 ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d60 then x130 else d24 ) ) ) $ ( if d125 then Decl450Base10.M.d757 else true )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x133 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d132 = if if false then Decl450Base10.M.d551 else Decl450Base10.M.d365 then if d112 then d111 else true else if d102 then Decl450Base10.M.d311 else Decl450Base10.M.d1096
        d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> if true then Decl450Base10.M.d343 else true ) ) ) $ ( if d105 then Decl450Base10.M.d252 else d52 )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if false then x139 else Bool ) ) ) $ ( if false then Bool else Bool )
        d138 = if if Decl450Base10.M.d788 then d28 else d17 then if true then Decl450Base10.M.d980 else true else if false then d132 else Decl450Base10.M.d909
        d140 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> x143 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( Bool -> Bool ) ∋ ( ( λ x142 -> true ) ) ) $ ( false ) ) ) ) $ ( if Decl450Base10.M.d421 then d52 else Decl450Base10.M.d661 )
        d145 : if false then if false then Bool else Bool else if false then Bool else Bool
        d145 = if if d33 then Decl450Base10.M.d530 else d1 then if d138 then Decl450Base10.M.d266 else d50 else if false then Decl450Base10.M.d43 else Decl450Base10.M.d478