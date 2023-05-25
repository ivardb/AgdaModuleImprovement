module TypeSize15Test10  where
    data Bool : Set where
       true false : Bool
    {-# BUILTIN BOOL  Bool  #-}
    {-# BUILTIN FALSE false #-}
    {-# BUILTIN TRUE  true  #-}
    
    record ⊤ : Set where
       instance constructor tt
    {-# BUILTIN UNIT ⊤ #-}
    
    infixl 0 _∋_
    _∋_ : ∀{i}(A : Set i) → A → A
    A ∋ x = x
    
    infix 0 if_then_else_
    if_then_else_ : ∀{i}{A : Set i} -> Bool → A → A → A
    if true  then t else f = t
    if false then t else f = f
    
    _$_ : ∀{i}{A B : Set i} -> (A -> B) -> A -> B
    f $ a = f a

    module M ( p10 : if true then Bool else Bool )  where
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then x30 else x30 ) ) ) $ ( Bool ) )  where
            d4 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if p10 then false else false ) ) ) $ ( if p10 then p10 else p10 )
            d8 : if false then if false then Bool else Bool else if true then Bool else Bool
            d8 = if if p10 then p20 else p10 then if false then p10 else p20 else if d4 then false else true
            d9 : if false then if false then Bool else Bool else if false then Bool else Bool
            d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( x100 ) ) ) ) $ ( if d8 then p10 else d4 )
            d12 : if true then if false then Bool else Bool else if true then Bool else Bool
            d12 = if if d4 then p10 else p10 then if d9 then p10 else p20 else if d9 then false else true
            d13 : if false then if false then Bool else Bool else if false then Bool else Bool
            d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> false ) ) ) $ ( false ) ) ) ) $ ( if d8 then p10 else false )
            d16 : if false then if true then Bool else Bool else if false then Bool else Bool
            d16 = if if p10 then p20 else d9 then if p10 then d4 else d9 else if d4 then false else true
            d17 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d17 = if if d16 then d4 else d13 then if false then p10 else false else if d4 then true else false
            d20 : if true then if false then Bool else Bool else if false then Bool else Bool
            d20 = if if p20 then true else true then if p20 then p20 else d13 else if true then true else p20
            d21 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> x240 ) ) ) $ ( x240 ) ) ) ) $ ( if true then Bool else Bool )
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> d17 ) ) ) $ ( d8 ) ) ) ) $ ( if true then d9 else p20 )
            d26 : ( ( Set -> Set ) ∋ ( ( λ x290 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( x290 ) ) ) ) $ ( if true then Bool else Bool )
            d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x280 -> x270 ) ) ) $ ( d8 ) ) ) ) $ ( if p20 then p10 else false )
            d31 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then Bool else x320 ) ) ) $ ( if false then Bool else Bool )
            d31 = if if true then d17 else d26 then if d26 then p20 else true else if false then true else d9
            d33 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d33 = if if true then p20 else d13 then if p20 then p10 else false else if false then false else true
            d35 : ( ( Set -> Set ) ∋ ( ( λ x360 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( x360 ) ) ) ) $ ( if false then Bool else Bool )
            d35 = if if d21 then true else false then if d12 then d4 else p20 else if p20 then d33 else true
            d38 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> x400 ) ) ) $ ( x400 ) ) ) ) $ ( if false then Bool else Bool )
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if p10 then p20 else p20 ) ) ) $ ( if true then true else d4 )
            d42 : ( ( Set -> Set ) ∋ ( ( λ x450 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> false ) ) ) $ ( p20 ) ) ) ) $ ( if d4 then p20 else p20 )
            d46 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then Bool else x470 ) ) ) $ ( if true then Bool else Bool )
            d46 = if if d16 then p10 else d33 then if d4 then true else true else if p10 then d33 else p20
            d48 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then Bool else x490 ) ) ) $ ( if false then Bool else Bool )
            d48 = if if d16 then false else p20 then if true then p10 else p10 else if d38 then d13 else d9
            d50 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then Bool else x510 ) ) ) $ ( if true then Bool else Bool )
            d50 = if if false then true else false then if d31 then d9 else p10 else if p20 then p20 else p20
            d52 : ( ( Set -> Set ) ∋ ( ( λ x550 -> if true then Bool else x550 ) ) ) $ ( if true then Bool else Bool )
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> ( ( Bool -> Bool ) ∋ ( ( λ x540 -> p20 ) ) ) $ ( x530 ) ) ) ) $ ( if p10 then true else p10 )
            d56 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d56 = if if d9 then false else p10 then if d12 then false else false else if p10 then p20 else true
            d58 : if false then if true then Bool else Bool else if false then Bool else Bool
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if true then x590 else d12 ) ) ) $ ( if p10 then true else true )
            d60 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then x620 else Bool ) ) ) $ ( if false then Bool else Bool )
            d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if d26 then x610 else d48 ) ) ) $ ( if true then d16 else true )
            d63 : ( ( Set -> Set ) ∋ ( ( λ x650 -> if false then Bool else x650 ) ) ) $ ( if false then Bool else Bool )
            d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if d50 then p20 else p20 ) ) ) $ ( if p10 then true else p20 )
            d66 : if true then if true then Bool else Bool else if true then Bool else Bool
            d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> x670 ) ) ) $ ( p20 ) ) ) ) $ ( if d35 then p20 else d9 )
            d69 : ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d69 = if if true then p10 else true then if d60 then d42 else false else if p20 then p20 else true
            d72 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then Bool else x740 ) ) ) $ ( if true then Bool else Bool )
            d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if false then false else false ) ) ) $ ( if true then p10 else p10 )
            d75 : if false then if true then Bool else Bool else if false then Bool else Bool
            d75 = if if true then true else p20 then if p10 then false else d38 else if d20 then false else d8
            d76 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x780 -> d66 ) ) ) $ ( false ) ) ) ) $ ( if p20 then p10 else p10 )
            d81 : if false then if true then Bool else Bool else if true then Bool else Bool
            d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if x820 then d50 else true ) ) ) $ ( if d20 then d50 else p10 )
            d83 : ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then Bool else x860 ) ) ) $ ( if true then Bool else Bool )
            d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> d35 ) ) ) $ ( true ) ) ) ) $ ( if false then p10 else true )
            d87 : if false then if false then Bool else Bool else if true then Bool else Bool
            d87 = if if d52 then true else d50 then if d46 then false else p10 else if d33 then p10 else true
            d88 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d88 = if if false then p20 else true then if true then d63 else true else if d4 then true else p10
            d90 : if true then if true then Bool else Bool else if false then Bool else Bool
            d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> d66 ) ) ) $ ( true ) ) ) ) $ ( if p20 then false else true )
            d93 : if false then if false then Bool else Bool else if false then Bool else Bool
            d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if d12 then p10 else d16 ) ) ) $ ( if p20 then p10 else false )
            d95 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x970 -> Bool ) ) ) $ ( x960 ) ) ) ) $ ( if true then Bool else Bool )
            d95 = if if p10 then false else p10 then if false then d35 else false else if true then d83 else d72
            d98 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if true then p10 else true ) ) ) $ ( if true then d50 else false )
            d101 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if d72 then p20 else p10 ) ) ) $ ( if false then p20 else d35 )
            d105 : if false then if false then Bool else Bool else if true then Bool else Bool
            d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if d31 then d33 else false ) ) ) $ ( if d95 then d26 else d50 )
            d107 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( x1100 ) ) ) ) $ ( if false then Bool else Bool )
            d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> false ) ) ) $ ( false ) ) ) ) $ ( if p10 then p20 else p10 )
            d112 : if true then if false then Bool else Bool else if true then Bool else Bool
            d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d63 ) ) ) $ ( d88 ) ) ) ) $ ( if d4 then d33 else p20 )
        module M1'  = M1 ( false ) 
    d115 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then Bool else x1160 ) ) ) $ ( if true then Bool else Bool )
    d115 = if if false then false else true then if true then true else true else if false then false else true
    d117 : if false then if false then Bool else Bool else if false then Bool else Bool
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> ( M.M1'.d50 ) $ ( ( ( M.M1.d21 ) $ ( if d115 then x1180 else d115 ) ) $ ( if true then true else d115 ) ) ) ) ) $ ( if false then false else false )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d119 = ( M.M1'.d105 ) $ ( if if false then false else true then if d117 then d117 else d117 else if false then d117 else false )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d122 = ( M.M1'.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> d115 ) ) ) $ ( true ) ) ) ) $ ( if d117 then d117 else false ) )
    d126 : if true then if true then Bool else Bool else if true then Bool else Bool
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( M.M1'.d98 ) $ ( if false then d117 else d122 ) ) ) ) $ ( if true then false else false )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> ( ( Set -> Set ) ∋ ( ( λ x1310 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> ( M.M1'.d8 ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d12 ) $ ( if false then d119 else x1290 ) ) $ ( if d117 then x1290 else d126 ) ) ) ) ) ) $ ( if d122 then d122 else false )
    d132 : if false then if true then Bool else Bool else if false then Bool else Bool
    d132 = ( M.M1'.d98 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> ( ( M.M1.d58 ) $ ( if d119 then false else true ) ) $ ( if x1330 then d115 else d119 ) ) ) ) $ ( if true then false else d115 ) )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> if false then x1350 else x1350 ) ) ) $ ( if false then Bool else Bool )
    d134 = if if true then d119 else d128 then if true then d115 else d119 else if d122 then false else d115
    d136 : if true then if false then Bool else Bool else if false then Bool else Bool
    d136 = ( M.M1'.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if true then false else d115 ) ) ) $ ( if d119 then d128 else true ) )
    d138 : if false then if true then Bool else Bool else if true then Bool else Bool
    d138 = ( M.M1'.d90 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> x1390 ) ) ) $ ( x1390 ) ) ) ) $ ( if d122 then false else false ) )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> if false then x1420 else x1420 ) ) ) $ ( if false then Bool else Bool )
    d141 = ( M.M1'.d9 ) $ ( if if d119 then true else d115 then if d138 then true else d126 else if true then false else false )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> x1450 ) ) ) $ ( x1440 ) ) ) ) $ ( if true then Bool else Bool )
    d143 = if if false then d115 else d119 then if d117 then d126 else d141 else if d132 then true else d134
    d146 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> x1480 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d146 = ( ( M.M1.d72 ) $ ( ( ( M.M1.d90 ) $ ( true ) ) $ ( true ) ) ) $ ( ( M.M1'.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> false ) ) ) $ ( d128 ) ) )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d150 = ( M.M1'.d60 ) $ ( if if false then false else d128 then if false then d122 else false else if d126 then true else d119 )
    d153 : if false then if true then Bool else Bool else if false then Bool else Bool
    d153 = ( M.M1'.d69 ) $ ( ( ( M.M1.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> false ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d21 ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d31 ) $ ( ( M.M1'.d16 ) $ ( if d138 then false else d115 ) ) ) ) ) )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then Bool else x1560 ) ) ) $ ( if true then Bool else Bool )
    d155 = ( M.M1'.d72 ) $ ( if if false then d115 else true then if false then false else false else if false then true else true )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d157 = if if d146 then d126 else d155 then if d153 then d117 else false else if true then d146 else true
    d160 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> if true then Bool else x1620 ) ) ) $ ( if false then Bool else Bool )
    d160 = ( M.M1'.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( M.M1'.d75 ) $ ( ( M.M1'.d12 ) $ ( if d136 then x1610 else x1610 ) ) ) ) ) $ ( if false then d117 else false ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> Bool ) ) ) $ ( x1650 ) ) ) ) $ ( if false then Bool else Bool )
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> ( M.M1'.d12 ) $ ( ( M.M1'.d17 ) $ ( ( ( M.M1.d76 ) $ ( if false then true else false ) ) $ ( if false then false else false ) ) ) ) ) ) $ ( if d128 then d134 else d122 )
    d167 : if true then if false then Bool else Bool else if true then Bool else Bool
    d167 = ( M.M1'.d31 ) $ ( ( ( M.M1.d12 ) $ ( ( ( M.M1.d16 ) $ ( false ) ) $ ( d115 ) ) ) $ ( if d126 then d134 else false ) )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( x1690 ) ) ) ) $ ( if true then Bool else Bool )
    d168 = if if true then d150 else d143 then if d115 then true else d138 else if d117 then d150 else d117
    d171 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> ( ( Set -> Set ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( x1720 ) ) ) ) $ ( if true then Bool else Bool )
    d171 = ( M.M1'.d4 ) $ ( ( M.M1'.d60 ) $ ( ( M.M1'.d21 ) $ ( ( ( M.M1.d90 ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d12 ) $ ( ( ( M.M1.d75 ) $ ( false ) ) $ ( d132 ) ) ) ) ) $ ( ( M.M1'.d33 ) $ ( ( M.M1'.d58 ) $ ( ( ( M.M1.d9 ) $ ( d160 ) ) $ ( false ) ) ) ) ) ) )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x1760 -> if true then x1760 else Bool ) ) ) $ ( if true then Bool else Bool )
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> if false then false else x1750 ) ) ) $ ( if d168 then false else false )
    d177 : if true then if true then Bool else Bool else if true then Bool else Bool
    d177 = ( M.M1'.d21 ) $ ( ( ( M.M1.d69 ) $ ( ( ( M.M1.d56 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( false ) ) )
    d179 : if false then if false then Bool else Bool else if false then Bool else Bool
    d179 = ( M.M1'.d50 ) $ ( ( M.M1'.d66 ) $ ( ( M.M1'.d9 ) $ ( ( ( M.M1.d112 ) $ ( ( M.M1'.d76 ) $ ( ( M.M1'.d21 ) $ ( ( M.M1'.d31 ) $ ( ( ( M.M1.d16 ) $ ( d168 ) ) $ ( false ) ) ) ) ) ) $ ( if false then true else true ) ) ) )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> if true then x1810 else x1810 ) ) ) $ ( if false then Bool else Bool )
    d180 = ( M.M1'.d50 ) $ ( if if true then d167 else false then if false then d167 else d122 else if d141 then d134 else true )
    d182 : if true then if false then Bool else Bool else if true then Bool else Bool
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if true then x1830 else x1830 ) ) ) $ ( if d180 then true else d134 )
    d184 : if true then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( M.M1.d35 ) $ ( if d115 then d160 else d163 ) ) $ ( ( ( M.M1.d46 ) $ ( true ) ) $ ( false ) )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> ( ( Set -> Set ) ∋ ( ( λ x1870 -> Bool ) ) ) $ ( x1860 ) ) ) ) $ ( if true then Bool else Bool )
    d185 = if if d174 then d167 else d157 then if true then d171 else d119 else if d117 then d134 else true
    d188 : ( ( Set -> Set ) ∋ ( ( λ x1910 -> ( ( Set -> Set ) ∋ ( ( λ x1920 -> x1910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d188 = ( M.M1'.d17 ) $ ( ( M.M1'.d52 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> ( M.M1'.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> d182 ) ) ) $ ( x1890 ) ) ) ) ) $ ( if true then true else d167 ) ) )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d193 = if if false then d167 else true then if d138 then false else d141 else if d138 then false else d168
    d195 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> if false then Bool else x1960 ) ) ) $ ( if true then Bool else Bool )
    d195 = ( ( M.M1.d9 ) $ ( ( M.M1'.d16 ) $ ( ( ( M.M1.d72 ) $ ( false ) ) $ ( d174 ) ) ) ) $ ( ( ( M.M1.d8 ) $ ( true ) ) $ ( d153 ) )
    d197 : ( ( Set -> Set ) ∋ ( ( λ x1980 -> ( ( Set -> Set ) ∋ ( ( λ x1990 -> x1980 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d197 = if if false then true else d150 then if d160 then d195 else d155 else if false then false else d182
    d200 : if false then if true then Bool else Bool else if false then Bool else Bool
    d200 = ( M.M1'.d112 ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d112 ) $ ( ( ( M.M1.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> d188 ) ) ) $ ( d174 ) ) ) $ ( if false then d117 else false ) ) ) )
    d202 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> if false then Bool else x2040 ) ) ) $ ( if true then Bool else Bool )
    d202 = ( ( M.M1.d56 ) $ ( ( M.M1'.d107 ) $ ( if d143 then d143 else true ) ) ) $ ( ( M.M1'.d90 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> false ) ) ) $ ( true ) ) )
    d205 : if false then if true then Bool else Bool else if true then Bool else Bool
    d205 = ( M.M1'.d38 ) $ ( ( M.M1'.d76 ) $ ( ( ( M.M1.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> d171 ) ) ) $ ( d185 ) ) ) $ ( ( M.M1'.d48 ) $ ( ( ( M.M1.d35 ) $ ( d115 ) ) $ ( d136 ) ) ) ) )
    d207 : if true then if true then Bool else Bool else if false then Bool else Bool
    d207 = if if true then true else true then if d188 then false else false else if false then d134 else false
    d208 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> ( ( Set -> Set ) ∋ ( ( λ x2100 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d208 = ( M.M1'.d83 ) $ ( if if false then true else false then if false then d119 else d153 else if false then d153 else d153 )
    d211 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> Bool ) ) ) $ ( x2140 ) ) ) ) $ ( if true then Bool else Bool )
    d211 = ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> x2120 ) ) ) $ ( d150 ) ) ) ) $ ( if d195 then d138 else d157 )
    d216 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> if false then Bool else x2190 ) ) ) $ ( if false then Bool else Bool )
    d216 = ( ( M.M1.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> false ) ) ) $ ( d177 ) ) ) $ ( ( M.M1'.d105 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> d171 ) ) ) $ ( d126 ) ) )
    d220 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> ( ( Set -> Set ) ∋ ( ( λ x2230 -> x2230 ) ) ) $ ( x2220 ) ) ) ) $ ( if false then Bool else Bool )
    d220 = ( M.M1'.d13 ) $ ( ( ( M.M1.d69 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d205 ) ) ) $ ( d202 ) ) ) $ ( if false then d132 else false ) )
    d224 : ( ( Set -> Set ) ∋ ( ( λ x2270 -> ( ( Set -> Set ) ∋ ( ( λ x2280 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d224 = ( M.M1'.d75 ) $ ( ( ( M.M1.d81 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> x2250 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> x2260 ) ) ) $ ( true ) ) )
    d229 : if true then if true then Bool else Bool else if true then Bool else Bool
    d229 = ( M.M1'.d12 ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d112 ) $ ( ( M.M1'.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( M.M1.d75 ) $ ( if x2300 then x2300 else x2300 ) ) $ ( if d195 then d197 else true ) ) ) ) $ ( if false then false else true ) ) ) ) )
    d231 : if false then if false then Bool else Bool else if true then Bool else Bool
    d231 = if if d134 then d216 else d220 then if false then true else false else if d220 then d136 else false
    d232 : if true then if false then Bool else Bool else if true then Bool else Bool
    d232 = ( M.M1'.d93 ) $ ( ( ( M.M1.d8 ) $ ( if d205 then d119 else false ) ) $ ( if d180 then d174 else d216 ) )
    d233 : if true then if true then Bool else Bool else if true then Bool else Bool
    d233 = ( M.M1'.d101 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> if d153 then d126 else d141 ) ) ) $ ( if d197 then false else d220 ) )
    d235 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d235 = ( M.M1'.d48 ) $ ( ( M.M1'.d81 ) $ ( ( M.M1'.d90 ) $ ( if if d205 then d231 else d179 then if d155 then true else true else if d200 then d167 else d229 ) ) )
    d237 : ( ( Set -> Set ) ∋ ( ( λ x2380 -> if true then Bool else x2380 ) ) ) $ ( if true then Bool else Bool )
    d237 = ( M.M1'.d56 ) $ ( if if true then false else false then if d132 then d119 else d138 else if d188 then false else d232 )
    d239 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> ( ( Set -> Set ) ∋ ( ( λ x2420 -> Bool ) ) ) $ ( x2410 ) ) ) ) $ ( if true then Bool else Bool )
    d239 = ( M.M1'.d52 ) $ ( ( M.M1'.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> ( ( M.M1.d90 ) $ ( if x2400 then x2400 else x2400 ) ) $ ( if d197 then x2400 else false ) ) ) ) $ ( if true then d150 else d202 ) ) )
    d243 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d243 = ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> x2440 ) ) ) $ ( d157 ) ) ) ) $ ( if false then d233 else d132 )