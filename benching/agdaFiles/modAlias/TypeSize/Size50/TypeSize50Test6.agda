module TypeSize50Test6  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else x20 ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else Bool ) ) ) $ ( Bool ) )  where
            d5 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
            d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> p30 ) ) ) $ ( p10 ) ) ) ) $ ( if true then p30 else p30 )
            d8 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else x90 ) ) ) $ ( Bool ) else if true then x90 else x90 ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d8 = if if false then d5 else d5 then if true then p10 else d5 else if true then p10 else d5
            d11 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then Bool else Bool ) ) ) $ ( x140 ) ) ) ) $ ( if false then x120 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d11 = if if false then true else p10 then if p10 then true else true else if p30 then false else p10
            d17 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then ( ( Set -> Set ) ∋ ( ( λ x210 -> if false then x200 else x210 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x220 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d11 ) ) ) $ ( d5 ) ) ) ) $ ( if true then d8 else true )
            d23 : ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then Bool else x260 ) ) ) $ ( x260 ) else if false then Bool else x260 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> true ) ) ) $ ( x240 ) ) ) ) $ ( if false then d17 else p10 )
            d30 : if false then ( ( Set -> Set ) ∋ ( ( λ x310 -> if false then x310 else x310 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x320 -> if true then x320 else Bool ) ) ) $ ( if true then Bool else Bool )
            d30 = if if true then true else true then if false then p30 else p30 else if d8 then d23 else p10
            d33 : ( ( Set -> Set ) ∋ ( ( λ x350 -> if false then ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then x360 else Bool ) ) ) $ ( x350 ) else if false then x350 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if p30 then p10 else p30 ) ) ) $ ( if d5 then p10 else p10 )
            d39 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then if true then x420 else Bool else if false then x420 else Bool ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> p10 ) ) ) $ ( true ) ) ) ) $ ( if true then p30 else d8 )
            d43 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x440 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d43 = if if false then false else false then if d30 then d11 else true else if p30 then d17 else p30
            d45 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then x480 else x480 ) ) ) $ ( if true then Bool else Bool )
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d33 ) ) ) $ ( false ) ) ) ) $ ( if true then false else p10 )
            d49 : if true then ( ( Set -> Set ) ∋ ( ( λ x500 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
            d49 = if if d45 then p30 else p30 then if p10 then d33 else true else if p10 then d45 else false
            d51 : ( ( Set -> Set ) ∋ ( ( λ x520 -> if true then if false then Bool else x520 else ( ( Set -> Set ) ∋ ( ( λ x530 -> if false then Bool else x530 ) ) ) $ ( x520 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d51 = if if p10 then p30 else d17 then if p30 then true else d49 else if p10 then false else p10
            d56 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then ( ( Set -> Set ) ∋ ( ( λ x580 -> if false then x570 else x570 ) ) ) $ ( x570 ) else ( ( Set -> Set ) ∋ ( ( λ x590 -> if false then x590 else x590 ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> x600 ) ) ) $ ( x600 ) ) ) ) $ ( if true then Bool else Bool ) )
            d56 = if if p10 then false else d30 then if false then d11 else true else if true then false else d45
            d62 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> x630 ) ) ) $ ( d11 ) ) ) ) $ ( if d23 then true else false )
            d67 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> if true then if true then Bool else x700 else if false then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x710 -> if true then x710 else x710 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( x720 ) ) ) ) $ ( if true then Bool else Bool ) )
            d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if true then p30 else p30 ) ) ) $ ( if false then p10 else true )
            d74 : if true then ( ( Set -> Set ) ∋ ( ( λ x770 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
            d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> d11 ) ) ) $ ( true ) ) ) ) $ ( if p10 then false else p10 )
            d78 : if false then ( ( Set -> Set ) ∋ ( ( λ x800 -> if true then x800 else x800 ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if p10 then true else false ) ) ) $ ( if d23 then p10 else false )
            d81 : if true then ( ( Set -> Set ) ∋ ( ( λ x820 -> if true then x820 else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( x830 ) ) ) ) $ ( if false then Bool else Bool )
            d81 = if if true then true else true then if false then false else d56 else if d43 then p30 else p10
            d85 : if true then ( ( Set -> Set ) ∋ ( ( λ x860 -> if true then x860 else Bool ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
            d85 = if if false then false else false then if d49 then true else true else if p30 then p10 else d49
            d87 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
            d87 = if if d49 then true else p10 then if true then p10 else p30 else if true then d49 else true
            d88 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if false then if true then x890 else x890 else if true then x890 else Bool ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d88 = if if d39 then d56 else d30 then if d78 then false else p30 else if d56 then d30 else false
            d90 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then x920 else Bool ) ) ) $ ( x920 ) ) ) ) $ ( if false then x930 else x930 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then x960 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if d33 then x910 else true ) ) ) $ ( if p10 then false else d43 )
            d97 : if true then ( ( Set -> Set ) ∋ ( ( λ x1000 -> if false then x1000 else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1010 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> Bool ) ) ) $ ( x1010 ) ) ) ) $ ( if false then Bool else Bool )
            d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x990 -> p30 ) ) ) $ ( d33 ) ) ) ) $ ( if true then false else p10 )
            d103 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then x1060 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else x1060 ) ) ) ) $ ( if false then Bool else x1050 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1090 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if true then true else true ) ) ) $ ( if d90 then d39 else p10 )
            d110 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1110 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d110 = if if p30 then p10 else false then if false then true else d74 else if p30 then d39 else true
            d112 : if true then ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1160 -> x1150 ) ) ) $ ( x1150 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1170 -> if true then x1170 else Bool ) ) ) $ ( if true then Bool else Bool )
            d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> false ) ) ) $ ( false ) ) ) ) $ ( if d67 then true else p10 )
            d118 : if false then if false then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if false then false else false ) ) ) $ ( if p10 then p30 else p30 )
            d122 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1260 -> if true then Bool else x1260 ) ) ) $ ( x1250 ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> p30 ) ) ) $ ( d23 ) ) ) ) $ ( if d30 then d90 else false )
            d127 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> x1280 ) ) ) $ ( x1280 ) ) ) ) $ ( if true then Bool else Bool )
            d127 = if if false then p10 else d56 then if false then false else false else if d112 then false else true
            d130 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1330 -> if true then Bool else x1330 ) ) ) $ ( if true then Bool else Bool )
            d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> d56 ) ) ) $ ( true ) ) ) ) $ ( if d110 then d85 else p30 )
            d134 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> ( ( Set -> Set ) ∋ ( ( λ x1370 -> if true then if true then x1370 else Bool else if false then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1380 -> if false then x1380 else x1380 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1390 -> ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( x1390 ) ) ) ) $ ( if true then Bool else Bool ) )
            d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if false then p10 else p10 ) ) ) $ ( if d30 then false else p10 )
            d141 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1420 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d141 = if if p10 then d49 else d43 then if d11 then d5 else false else if p30 then d122 else p30
            d143 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
            d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> x1450 ) ) ) $ ( false ) ) ) ) $ ( if true then d62 else p30 )
            d146 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1480 -> if false then Bool else Bool ) ) ) $ ( x1470 ) else ( ( Set -> Set ) ∋ ( ( λ x1490 -> if false then Bool else x1470 ) ) ) $ ( x1470 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1500 -> if true then Bool else x1500 ) ) ) $ ( if true then Bool else Bool ) )
            d146 = if if true then p10 else false then if false then d118 else p30 else if d122 then p10 else d62
            d151 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d151 = ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> if true then false else false ) ) ) $ ( if false then d103 else true )
            d154 : if false then if false then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
            d154 = if if d110 then true else false then if false then true else d143 else if p10 then p30 else true
            d155 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> ( ( Set -> Set ) ∋ ( ( λ x1580 -> if false then if true then Bool else x1570 else if true then x1570 else Bool ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1590 -> if true then Bool else x1590 ) ) ) $ ( if true then Bool else Bool ) )
            d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if d17 then d85 else true ) ) ) $ ( if d5 then true else false )
            d160 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
            d160 = if if p30 then true else false then if p10 then p10 else false else if p30 then false else true
            d161 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
            d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if d154 then p10 else false ) ) ) $ ( if p30 then d130 else true )
            d163 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then if true then x1670 else x1660 else if false then Bool else x1670 ) ) ) $ ( if false then x1660 else x1660 ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d163 = ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> false ) ) ) $ ( p30 ) ) ) ) $ ( if d161 then false else p10 )
        module M1'  = M1 ( false ) 
    d168 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> ( ( M.M1.d143 ) $ ( if x1690 then x1690 else false ) ) $ ( if false then x1690 else x1690 ) ) ) ) $ ( if false then false else true )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> ( ( Set -> Set ) ∋ ( ( λ x1720 -> if false then if true then x1720 else Bool else if true then Bool else x1710 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1730 -> if true then x1710 else x1730 ) ) ) $ ( x1710 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1740 -> ( ( Set -> Set ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d170 = if if false then false else d168 then if false then d168 else false else if false then d168 else d168
    d176 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then Bool else Bool ) ) ) $ ( Bool ) else if true then Bool else x1790 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then x1810 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d176 = ( M.M1'.d81 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> ( M.M1'.d155 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> false ) ) ) $ ( d168 ) ) ) ) ) $ ( if d168 then false else false ) )
    d182 : if true then ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> Bool ) ) ) $ ( x1830 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1850 -> ( ( Set -> Set ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d182 = ( M.M1'.d110 ) $ ( ( M.M1'.d122 ) $ ( if if d176 then true else d170 then if true then d168 else d170 else if false then false else d170 ) )
    d187 : if true then ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> Bool ) ) ) $ ( x1880 ) ) ) ) $ ( if false then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
    d187 = if if d176 then false else false then if d182 then d170 else false else if d168 then false else d182
    d190 : if false then ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
    d190 = if if true then d168 else true then if d176 then d176 else true else if d182 then false else false
    d192 : if false then ( ( Set -> Set ) ∋ ( ( λ x1940 -> if true then Bool else x1940 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1950 -> ( ( Set -> Set ) ∋ ( ( λ x1960 -> x1950 ) ) ) $ ( x1950 ) ) ) ) $ ( if true then Bool else Bool )
    d192 = ( M.M1'.d112 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> if x1930 then d176 else d182 ) ) ) $ ( if d168 then d182 else true ) )
    d197 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d197 = if if true then d168 else d192 then if d170 then false else d176 else if true then d176 else d192
    d198 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
    d198 = if if d176 then d176 else true then if d197 then true else true else if d168 then true else d192
    d199 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> ( ( Set -> Set ) ∋ ( ( λ x2020 -> ( ( Set -> Set ) ∋ ( ( λ x2030 -> if true then x2030 else Bool ) ) ) $ ( if false then x2010 else x2020 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2040 -> if true then Bool else Bool ) ) ) $ ( x2010 ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d199 = ( M.M1'.d30 ) $ ( ( M.M1'.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( M.M1'.d118 ) $ ( ( M.M1'.d33 ) $ ( if false then d176 else false ) ) ) ) ) $ ( if true then true else true ) ) )
    d205 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2070 -> if true then x2060 else x2060 ) ) ) $ ( Bool ) else if false then Bool else Bool ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d205 = if if d182 then d170 else d176 then if d182 then false else d187 else if d176 then d187 else false
    d208 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d208 = ( M.M1'.d51 ) $ ( ( ( M.M1.d130 ) $ ( ( M.M1'.d146 ) $ ( ( ( M.M1.d110 ) $ ( d176 ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d51 ) $ ( ( M.M1'.d11 ) $ ( ( M.M1'.d127 ) $ ( ( ( M.M1.d143 ) $ ( d199 ) ) $ ( false ) ) ) ) ) )
    d209 : if true then ( ( Set -> Set ) ∋ ( ( λ x2110 -> ( ( Set -> Set ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
    d209 = ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> ( ( M.M1.d78 ) $ ( if false then x2100 else x2100 ) ) $ ( if x2100 then true else d197 ) ) ) ) $ ( if d205 then true else true )
    d213 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
    d213 = ( M.M1'.d23 ) $ ( ( M.M1'.d143 ) $ ( if if false then d209 else false then if d199 then d197 else d209 else if d198 then false else true ) )
    d214 : ( ( Set -> Set ) ∋ ( ( λ x2150 -> if false then if false then Bool else Bool else if true then Bool else x2150 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2160 -> if false then Bool else x2160 ) ) ) $ ( if false then Bool else Bool ) )
    d214 = if if d198 then true else d170 then if d170 then false else true else if d197 then false else d168
    d217 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d217 = ( M.M1'.d103 ) $ ( ( ( M.M1.d161 ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d112 ) $ ( ( ( M.M1.d17 ) $ ( true ) ) $ ( d176 ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> false ) ) ) $ ( d192 ) ) )
    d219 : if false then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
    d219 = ( M.M1'.d62 ) $ ( ( ( M.M1.d163 ) $ ( ( M.M1'.d163 ) $ ( ( ( M.M1.d134 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( ( M.M1.d154 ) $ ( d182 ) ) $ ( true ) ) )
    d220 : if false then ( ( Set -> Set ) ∋ ( ( λ x2210 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2220 -> if false then x2220 else x2220 ) ) ) $ ( if true then Bool else Bool )
    d220 = ( M.M1'.d146 ) $ ( ( M.M1'.d11 ) $ ( if if d199 then d176 else true then if d198 then false else d168 else if d209 then false else true ) )
    d223 : ( ( Set -> Set ) ∋ ( ( λ x2260 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2270 -> if true then x2270 else x2260 ) ) ) $ ( x2260 ) else if true then x2260 else x2260 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2280 -> ( ( Set -> Set ) ∋ ( ( λ x2290 -> x2280 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d223 = ( M.M1'.d11 ) $ ( ( M.M1'.d11 ) $ ( ( M.M1'.d134 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> d197 ) ) ) $ ( x2240 ) ) ) ) $ ( if d192 then true else true ) ) ) )
    d230 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2310 -> ( ( Set -> Set ) ∋ ( ( λ x2320 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d230 = if if true then false else d198 then if false then true else true else if d190 then d209 else d192
    d233 : if true then ( ( Set -> Set ) ∋ ( ( λ x2350 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2360 -> if false then x2360 else Bool ) ) ) $ ( if false then Bool else Bool )
    d233 = ( M.M1'.d154 ) $ ( ( M.M1'.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> ( M.M1'.d67 ) $ ( ( ( M.M1.d118 ) $ ( if true then d213 else x2340 ) ) $ ( if d197 then d182 else d230 ) ) ) ) ) $ ( if d209 then d182 else false ) ) )
    d237 : if true then ( ( Set -> Set ) ∋ ( ( λ x2390 -> ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( x2390 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2410 -> if true then x2410 else x2410 ) ) ) $ ( if true then Bool else Bool )
    d237 = ( M.M1'.d49 ) $ ( ( ( M.M1.d81 ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d112 ) $ ( ( ( M.M1.d130 ) $ ( false ) ) $ ( d192 ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> d233 ) ) ) $ ( false ) ) )
    d242 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
    d242 = ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> ( M.M1'.d97 ) $ ( ( ( M.M1.d45 ) $ ( if d237 then true else true ) ) $ ( if x2430 then x2430 else true ) ) ) ) ) $ ( if d230 then false else d168 )
    d244 : if false then ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> x2460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d244 = ( M.M1'.d17 ) $ ( ( ( M.M1.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> d199 ) ) ) $ ( d214 ) ) ) $ ( ( ( M.M1.d110 ) $ ( d214 ) ) $ ( d198 ) ) )
    d248 : if false then ( ( Set -> Set ) ∋ ( ( λ x2500 -> ( ( Set -> Set ) ∋ ( ( λ x2510 -> x2500 ) ) ) $ ( x2500 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2520 -> ( ( Set -> Set ) ∋ ( ( λ x2530 -> Bool ) ) ) $ ( x2520 ) ) ) ) $ ( if true then Bool else Bool )
    d248 = ( ( M.M1.d130 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> d197 ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d30 ) $ ( false ) ) $ ( d190 ) )
    d254 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
    d254 = ( M.M1'.d134 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> ( ( M.M1.d163 ) $ ( if d190 then d217 else x2550 ) ) $ ( if false then x2550 else d199 ) ) ) ) $ ( if d230 then d230 else d237 ) )
    d256 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> if true then if true then x2580 else Bool else if true then x2580 else Bool ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d256 = ( M.M1'.d90 ) $ ( ( M.M1'.d85 ) $ ( ( M.M1'.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> ( M.M1'.d51 ) $ ( if d176 then false else false ) ) ) ) $ ( if true then d170 else true ) ) ) )
    d259 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2620 -> if false then Bool else x2620 ) ) ) $ ( x2610 ) else ( ( Set -> Set ) ∋ ( ( λ x2630 -> if true then x2610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d259 = ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> ( ( M.M1.d154 ) $ ( if d168 then false else d198 ) ) $ ( if x2600 then false else false ) ) ) ) $ ( if false then false else d176 )
    d264 : ( ( Set -> Set ) ∋ ( ( λ x2650 -> if true then if true then Bool else x2650 else if true then x2650 else x2650 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2660 -> if true then x2660 else x2660 ) ) ) $ ( if false then Bool else Bool ) )
    d264 = if if d170 then false else d220 then if d217 then false else false else if d187 then true else false
    d267 : ( ( Set -> Set ) ∋ ( ( λ x2700 -> if true then if false then x2700 else Bool else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2710 -> ( ( Set -> Set ) ∋ ( ( λ x2720 -> Bool ) ) ) $ ( x2710 ) ) ) ) $ ( if false then Bool else Bool ) )
    d267 = ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> d205 ) ) ) $ ( false ) ) ) ) $ ( if false then d237 else true ) )
    d273 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2750 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d273 = ( ( M.M1.d110 ) $ ( ( ( M.M1.d118 ) $ ( d267 ) ) $ ( false ) ) ) $ ( ( M.M1'.d134 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> d223 ) ) ) $ ( false ) ) )
    d276 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2780 -> if true then x2780 else x2780 ) ) ) $ ( if false then Bool else Bool )
    d276 = ( ( M.M1.d141 ) $ ( ( M.M1'.d97 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> d176 ) ) ) $ ( d267 ) ) ) ) $ ( if false then false else d244 )
    d279 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
    d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> ( ( M.M1.d161 ) $ ( if x2800 then d187 else x2800 ) ) $ ( if x2800 then d176 else d176 ) ) ) ) $ ( if true then false else d176 )
    d281 : ( ( Set -> Set ) ∋ ( ( λ x2830 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2840 -> if false then x2840 else Bool ) ) ) $ ( x2830 ) else ( ( Set -> Set ) ∋ ( ( λ x2850 -> if false then Bool else Bool ) ) ) $ ( x2830 ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> if false then false else x2820 ) ) ) $ ( if true then d214 else d176 )
    d286 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> ( ( Set -> Set ) ∋ ( ( λ x2890 -> ( ( Set -> Set ) ∋ ( ( λ x2900 -> if false then x2870 else x2880 ) ) ) $ ( x2880 ) ) ) ) $ ( if false then Bool else x2870 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2910 -> if false then Bool else x2870 ) ) ) $ ( x2870 ) ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d286 = ( M.M1'.d127 ) $ ( if if false then false else false then if true then true else d182 else if true then d256 else d214 )
    d292 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2940 -> if true then x2940 else x2940 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2950 -> if true then Bool else Bool ) ) ) $ ( x2930 ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d292 = ( ( M.M1.d88 ) $ ( if true then false else d259 ) ) $ ( ( M.M1'.d134 ) $ ( ( M.M1'.d87 ) $ ( ( ( M.M1.d134 ) $ ( d214 ) ) $ ( d220 ) ) ) )
    d296 : if true then ( ( Set -> Set ) ∋ ( ( λ x2970 -> ( ( Set -> Set ) ∋ ( ( λ x2980 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2990 -> if true then Bool else x2990 ) ) ) $ ( if true then Bool else Bool )
    d296 = ( ( M.M1.d154 ) $ ( if d286 then true else d214 ) ) $ ( if true then true else d233 )
    d300 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> ( ( Set -> Set ) ∋ ( ( λ x3020 -> ( ( Set -> Set ) ∋ ( ( λ x3030 -> ( ( Set -> Set ) ∋ ( ( λ x3040 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then x3020 else Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d300 = if if d286 then true else d248 then if d192 then d279 else d192 else if false then d190 else d233
    d305 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> if false then if false then x3070 else Bool else ( ( Set -> Set ) ∋ ( ( λ x3080 -> if true then x3080 else Bool ) ) ) $ ( x3070 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3090 -> if false then x3090 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> ( M.M1'.d97 ) $ ( if x3060 then true else true ) ) ) ) $ ( if true then true else false )
    d310 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d310 = ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> ( ( M.M1.d85 ) $ ( if d273 then x3110 else d259 ) ) $ ( if d254 then x3110 else x3110 ) ) ) ) $ ( if d264 then true else true )
    d312 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
    d312 = if if d217 then d198 else false then if false then d209 else d209 else if true then true else d242
    d313 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> ( ( Set -> Set ) ∋ ( ( λ x3160 -> ( ( Set -> Set ) ∋ ( ( λ x3170 -> ( ( Set -> Set ) ∋ ( ( λ x3180 -> if true then Bool else x3150 ) ) ) $ ( x3150 ) ) ) ) $ ( if true then Bool else x3160 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3190 -> if true then x3190 else Bool ) ) ) $ ( x3150 ) ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> ( ( M.M1.d39 ) $ ( if d248 then false else true ) ) $ ( if d209 then x3140 else d190 ) ) ) ) $ ( if d300 then false else d223 )
    d320 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3210 -> if false then x3210 else Bool ) ) ) $ ( if true then Bool else Bool )
    d320 = if if true then d281 else true then if true then d209 else true else if d279 then d300 else d219
    d322 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then if false then x3240 else Bool else ( ( Set -> Set ) ∋ ( ( λ x3250 -> if false then Bool else Bool ) ) ) $ ( x3240 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3260 -> if true then x3260 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d322 = ( ( M.M1.d5 ) $ ( if false then d237 else d230 ) ) $ ( ( M.M1'.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> true ) ) ) $ ( d199 ) ) )
    d327 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3280 -> if true then Bool else x3280 ) ) ) $ ( if true then Bool else Bool )
    d327 = ( M.M1'.d78 ) $ ( if if d233 then true else false then if false then true else d197 else if true then d205 else false )
    d329 : if false then ( ( Set -> Set ) ∋ ( ( λ x3320 -> ( ( Set -> Set ) ∋ ( ( λ x3330 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
    d329 = ( M.M1'.d134 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> true ) ) ) $ ( x3300 ) ) ) ) $ ( if false then false else d259 ) )
    d334 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3370 -> if false then Bool else x3370 ) ) ) $ ( Bool ) else if false then Bool else x3360 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3380 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d334 = ( M.M1'.d112 ) $ ( ( M.M1'.d74 ) $ ( ( M.M1'.d43 ) $ ( ( M.M1'.d141 ) $ ( ( M.M1'.d45 ) $ ( ( M.M1'.d87 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> ( M.M1'.d122 ) $ ( if d254 then d219 else d244 ) ) ) ) $ ( if d273 then false else false ) ) ) ) ) ) )
    d339 : ( ( Set -> Set ) ∋ ( ( λ x3420 -> ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> if true then Bool else Bool ) ) ) $ ( if false then x3430 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3450 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
    d346 : if true then ( ( Set -> Set ) ∋ ( ( λ x3470 -> ( ( Set -> Set ) ∋ ( ( λ x3480 -> Bool ) ) ) $ ( x3470 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3490 -> if true then x3490 else x3490 ) ) ) $ ( if false then Bool else Bool )
    d346 = ( M.M1'.d5 ) $ ( if if d305 then d313 else d273 then if d305 then false else false else if false then d187 else d329 )
    d350 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> ( ( Set -> Set ) ∋ ( ( λ x3520 -> if true then if false then Bool else Bool else if false then x3510 else x3510 ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d350 = if if d276 then d267 else d273 then if d286 then d237 else true else if true then d233 else true