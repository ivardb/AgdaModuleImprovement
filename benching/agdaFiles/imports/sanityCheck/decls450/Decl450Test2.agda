module Decl450Test2  where
    import Decl450Base2
    open import Decl450Base2 using (Bool; true; false; ⊤; tt) public
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
        d1 = if if Decl450Base2.M.d126 then Decl450Base2.M.d774 else Decl450Base2.M.d892 then if Decl450Base2.M.d250 then Decl450Base2.M.d478 else true else if Decl450Base2.M.d574 then Decl450Base2.M.d421 else Decl450Base2.M.d421
        d2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then x3 else x3 ) ) ) $ ( if true then Bool else Bool )
        d2 = if if d1 then Decl450Base2.M.d307 else false then if Decl450Base2.M.d220 then Decl450Base2.M.d1009 else false else if Decl450Base2.M.d836 then d1 else Decl450Base2.M.d604
        d4 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> ( ( Bool -> Bool ) ∋ ( ( λ x6 -> false ) ) ) $ ( Decl450Base2.M.d877 ) ) ) ) $ ( if Decl450Base2.M.d144 then Decl450Base2.M.d71 else Decl450Base2.M.d892 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> x11 ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if Decl450Base2.M.d321 then d1 else d1 ) ) ) $ ( if Decl450Base2.M.d160 then d2 else d1 )
        d12 : if false then if false then Bool else Bool else if false then Bool else Bool
        d12 = if if true then true else Decl450Base2.M.d777 then if false then Decl450Base2.M.d710 else Decl450Base2.M.d251 else if Decl450Base2.M.d52 then d8 else Decl450Base2.M.d358
        d13 : if true then if false then Bool else Bool else if true then Bool else Bool
        d13 = if if Decl450Base2.M.d901 then Decl450Base2.M.d401 else Decl450Base2.M.d737 then if false then d2 else d8 else if false then Decl450Base2.M.d218 else true
        d14 : if true then if true then Bool else Bool else if false then Bool else Bool
        d14 = if if true then true else true then if true then true else Decl450Base2.M.d218 else if Decl450Base2.M.d701 then Decl450Base2.M.d113 else d1
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = if if Decl450Base2.M.d740 then Decl450Base2.M.d287 else d8 then if false then true else Decl450Base2.M.d793 else if Decl450Base2.M.d572 then d14 else false
        d18 : if false then if false then Bool else Bool else if true then Bool else Bool
        d18 = if if Decl450Base2.M.d1022 then true else d14 then if Decl450Base2.M.d82 then d15 else Decl450Base2.M.d564 else if false then Decl450Base2.M.d344 else false
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if Decl450Base2.M.d925 then d12 else Decl450Base2.M.d280 then if d4 then d8 else Decl450Base2.M.d803 else if true then d13 else Decl450Base2.M.d287
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else Bool ) ) ) $ ( if true then Bool else Bool )
        d22 = if if d8 then Decl450Base2.M.d698 else true then if Decl450Base2.M.d833 then true else Decl450Base2.M.d331 else if true then true else d8
        d24 : if true then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if Decl450Base2.M.d756 then Decl450Base2.M.d1062 else Decl450Base2.M.d137 then if false then d18 else d8 else if Decl450Base2.M.d1037 then false else d4
        d25 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> x27 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if false then d14 else Decl450Base2.M.d73 ) ) ) $ ( if true then Decl450Base2.M.d529 else false )
        d29 : if true then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if Decl450Base2.M.d4 then d1 else Decl450Base2.M.d569 then if d12 then d1 else Decl450Base2.M.d988 else if d12 then false else Decl450Base2.M.d546
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> ( ( Set -> Set ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if if false then d24 else true then if d12 then Decl450Base2.M.d864 else Decl450Base2.M.d339 else if true then false else Decl450Base2.M.d157
        d33 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then x34 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = if if d4 then false else d29 then if false then Decl450Base2.M.d259 else Decl450Base2.M.d509 else if Decl450Base2.M.d1100 then Decl450Base2.M.d170 else d29
        d35 : if false then if true then Bool else Bool else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> false ) ) ) $ ( true ) ) ) ) $ ( if d8 then Decl450Base2.M.d850 else d15 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then x39 else Bool ) ) ) $ ( if false then Bool else Bool )
        d38 = if if Decl450Base2.M.d198 then false else Decl450Base2.M.d1119 then if false then Decl450Base2.M.d26 else d8 else if d15 then false else Decl450Base2.M.d661
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> x43 ) ) ) $ ( x42 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if true then d24 else d2 ) ) ) $ ( if true then false else true )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> Decl450Base2.M.d385 ) ) ) $ ( Decl450Base2.M.d20 ) ) ) ) $ ( if d30 then Decl450Base2.M.d917 else Decl450Base2.M.d715 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x51 -> ( ( Set -> Set ) ∋ ( ( λ x52 -> x52 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if Decl450Base2.M.d560 then x50 else Decl450Base2.M.d643 ) ) ) $ ( if d29 then Decl450Base2.M.d394 else Decl450Base2.M.d412 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d53 = if if d1 then true else d19 then if true then Decl450Base2.M.d715 else Decl450Base2.M.d519 else if Decl450Base2.M.d843 then Decl450Base2.M.d671 else Decl450Base2.M.d606
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if Decl450Base2.M.d537 then d33 else true then if Decl450Base2.M.d199 then true else true else if true then Decl450Base2.M.d821 else d35
        d56 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if true then false else x57 ) ) ) $ ( if Decl450Base2.M.d392 then false else false )
        d60 : if true then if true then Bool else Bool else if true then Bool else Bool
        d60 = if if d1 then d12 else d38 then if d33 then false else Decl450Base2.M.d352 else if false then false else true
        d61 : if false then if false then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if x62 then Decl450Base2.M.d966 else Decl450Base2.M.d864 ) ) ) $ ( if Decl450Base2.M.d300 then Decl450Base2.M.d873 else Decl450Base2.M.d596 )
        d63 : if true then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( d60 ) ) ) ) $ ( if true then Decl450Base2.M.d100 else Decl450Base2.M.d1055 )
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if Decl450Base2.M.d220 then Decl450Base2.M.d860 else true ) ) ) $ ( if Decl450Base2.M.d920 then Decl450Base2.M.d11 else Decl450Base2.M.d1022 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> x69 ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if if Decl450Base2.M.d629 then d60 else false then if Decl450Base2.M.d544 then d35 else false else if false then false else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> Bool ) ) ) $ ( x73 ) ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if d25 then Decl450Base2.M.d601 else d13 ) ) ) $ ( if Decl450Base2.M.d380 then false else Decl450Base2.M.d1075 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> x78 ) ) ) $ ( x77 ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if x76 then x76 else d53 ) ) ) $ ( if d53 then true else Decl450Base2.M.d643 )
        d79 : if false then if true then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> true ) ) ) $ ( Decl450Base2.M.d911 ) ) ) ) $ ( if d55 then d24 else d66 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if false then false else Decl450Base2.M.d232 ) ) ) $ ( if d14 then Decl450Base2.M.d126 else Decl450Base2.M.d1053 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( x86 ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if Decl450Base2.M.d525 then false else false then if d44 then Decl450Base2.M.d746 else Decl450Base2.M.d440 else if true then Decl450Base2.M.d330 else Decl450Base2.M.d634
        d88 : ( ( Set -> Set ) ∋ ( ( λ x89 -> if true then Bool else x89 ) ) ) $ ( if false then Bool else Bool )
        d88 = if if Decl450Base2.M.d426 then d1 else true then if d25 then Decl450Base2.M.d858 else true else if Decl450Base2.M.d192 then Decl450Base2.M.d256 else Decl450Base2.M.d966
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if false then Decl450Base2.M.d1040 else d19 then if d2 then false else Decl450Base2.M.d985 else if Decl450Base2.M.d490 then d8 else Decl450Base2.M.d1070
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then x95 else Bool ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if true then x94 else false ) ) ) $ ( if Decl450Base2.M.d1044 then Decl450Base2.M.d682 else true )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if Decl450Base2.M.d979 then false else Decl450Base2.M.d458 then if Decl450Base2.M.d1028 then d44 else Decl450Base2.M.d458 else if Decl450Base2.M.d558 then Decl450Base2.M.d805 else Decl450Base2.M.d815
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if Decl450Base2.M.d117 then x98 else true ) ) ) $ ( if false then d25 else Decl450Base2.M.d529 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> d2 ) ) ) $ ( Decl450Base2.M.d250 ) ) ) ) $ ( if Decl450Base2.M.d931 then Decl450Base2.M.d109 else false )
        d105 : if true then if true then Bool else Bool else if false then Bool else Bool
        d105 = if if Decl450Base2.M.d720 then Decl450Base2.M.d303 else false then if Decl450Base2.M.d786 then d4 else d61 else if Decl450Base2.M.d85 then Decl450Base2.M.d82 else false
        d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then x109 else x109 ) ) ) $ ( if false then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> true ) ) ) $ ( Decl450Base2.M.d491 ) ) ) ) $ ( if false then d66 else Decl450Base2.M.d831 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( x113 ) ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( d75 ) ) ) ) $ ( if true then true else false )
        d115 : if false then if false then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> Decl450Base2.M.d96 ) ) ) $ ( x116 ) ) ) ) $ ( if true then Decl450Base2.M.d486 else Decl450Base2.M.d348 )
        d118 : if true then if false then Bool else Bool else if true then Bool else Bool
        d118 = if if Decl450Base2.M.d1096 then false else Decl450Base2.M.d11 then if d71 then Decl450Base2.M.d895 else d60 else if Decl450Base2.M.d218 then d1 else d38
        d119 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> x123 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> Decl450Base2.M.d585 ) ) ) $ ( Decl450Base2.M.d584 ) ) ) ) $ ( if d38 then d1 else Decl450Base2.M.d96 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if false then x126 else Bool ) ) ) $ ( if true then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if d35 then x125 else d40 ) ) ) $ ( if Decl450Base2.M.d1044 then Decl450Base2.M.d1093 else false )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> x131 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> Decl450Base2.M.d710 ) ) ) $ ( d35 ) ) ) ) $ ( if Decl450Base2.M.d464 then Decl450Base2.M.d669 else d4 )
        d132 : if false then if false then Bool else Bool else if true then Bool else Bool
        d132 = if if Decl450Base2.M.d188 then Decl450Base2.M.d287 else Decl450Base2.M.d1047 then if false then d49 else false else if true then d61 else d40
        d133 : if true then if true then Bool else Bool else if true then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if d132 then true else x134 ) ) ) $ ( if d85 then Decl450Base2.M.d474 else d2 )