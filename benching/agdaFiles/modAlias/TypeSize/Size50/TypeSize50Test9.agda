module TypeSize50Test9  where
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

    module M ( p10 : if false then Bool else Bool )  where
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else x30 ) ) ) $ ( Bool ) )  where
            d4 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then if true then x60 else Bool else if true then x60 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else x80 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then Bool else x90 ) ) ) $ ( if false then Bool else Bool ) )
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if x50 then p10 else false ) ) ) $ ( if p20 then p20 else true )
            d10 : if true then ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> p10 ) ) ) $ ( x110 ) ) ) ) $ ( if false then d4 else d4 )
            d14 : if true then ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> x170 ) ) ) $ ( x170 ) ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( false ) ) ) ) $ ( if p20 then d10 else p20 )
            d19 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> ( ( Set -> Set ) ∋ ( ( λ x230 -> if false then x200 else x210 ) ) ) $ ( x220 ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if false then x200 else Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d19 = if if p20 then d10 else true then if false then p10 else true else if d10 then true else true
            d24 : if true then ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then Bool else x250 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> x260 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d24 = if if d10 then d10 else true then if false then p10 else d14 else if p20 then false else false
            d28 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then Bool else x320 ) ) ) $ ( if true then x310 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then Bool else x340 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( x350 ) ) ) ) $ ( if false then Bool else Bool ) )
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if p20 then true else false )
            d37 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
            d37 = if if p20 then true else d19 then if true then p10 else false else if d4 then d14 else d28
            d38 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if false then if true then x390 else Bool else ( ( Set -> Set ) ∋ ( ( λ x400 -> if true then Bool else Bool ) ) ) $ ( x390 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d38 = if if p20 then p20 else d14 then if d4 then false else d10 else if p10 then p10 else d37
            d43 : if false then ( ( Set -> Set ) ∋ ( ( λ x460 -> if true then Bool else x460 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x470 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> true ) ) ) $ ( false ) ) ) ) $ ( if p20 then p20 else d19 )
            d48 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
            d48 = if if d14 then p20 else d4 then if d19 then d37 else p20 else if true then false else p20
            d49 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if true then p20 else d14 ) ) ) $ ( if true then d4 else d28 )
            d51 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> x520 ) ) ) $ ( x520 ) ) ) ) $ ( if true then Bool else Bool )
            d51 = if if d10 then false else p20 then if p20 then false else d37 else if p10 then d37 else false
            d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then x580 else x570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( x600 ) ) ) ) $ ( if false then Bool else Bool ) )
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> true ) ) ) $ ( x550 ) ) ) ) $ ( if d24 then d24 else d51 )
            d62 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then Bool else x650 ) ) ) $ ( if false then x640 else x650 ) ) ) ) $ ( if false then x640 else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if x630 then d43 else true ) ) ) $ ( if p20 then p10 else d43 )
            d67 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
            d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if p20 then true else d51 ) ) ) $ ( if p20 then true else p10 )
            d69 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
            d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> true ) ) ) $ ( x700 ) ) ) ) $ ( if p20 then d38 else false )
            d72 : ( ( Set -> Set ) ∋ ( ( λ x730 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then if true then Bool else x740 else if false then x740 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x750 -> if false then Bool else x730 ) ) ) $ ( x730 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( x760 ) ) ) ) $ ( if false then Bool else Bool ) )
            d72 = if if p10 then false else p20 then if d48 then false else false else if p20 then d24 else p20
            d78 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if false then if false then x800 else Bool else ( ( Set -> Set ) ∋ ( ( λ x810 -> if true then Bool else x800 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if p10 then true else x790 ) ) ) $ ( if false then d24 else false )
            d82 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if false then if false then x850 else x850 else if true then x850 else x840 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x860 -> if true then Bool else x860 ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if false then d10 else x830 ) ) ) $ ( if d67 then d54 else p20 )
            d87 : if false then ( ( Set -> Set ) ∋ ( ( λ x880 -> ( ( Set -> Set ) ∋ ( ( λ x890 -> x880 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> x900 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d87 = if if p10 then p20 else d19 then if d19 then d54 else false else if true then d62 else true
            d92 : ( ( Set -> Set ) ∋ ( ( λ x940 -> if true then ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then Bool else Bool ) ) ) $ ( x940 ) else ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then Bool else x940 ) ) ) $ ( x940 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x970 -> ( ( Set -> Set ) ∋ ( ( λ x980 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if p20 then d54 else p10 ) ) ) $ ( if d62 then p20 else true )
            d99 : if true then ( ( Set -> Set ) ∋ ( ( λ x1000 -> if true then x1000 else x1000 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1010 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d99 = if if p20 then true else d87 then if true then false else true else if false then false else d48
            d102 : if true then ( ( Set -> Set ) ∋ ( ( λ x1050 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> true ) ) ) $ ( x1030 ) ) ) ) $ ( if d4 then true else d49 )
            d108 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then if true then Bool else Bool else if false then x1100 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if true then x1090 else false ) ) ) $ ( if p20 then d102 else d24 )
            d113 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> if true then if true then x1150 else x1150 else if false then x1150 else x1150 ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if false then true else x1140 ) ) ) $ ( if p10 then false else p10 )
            d116 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
            d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if d24 then d82 else p20 ) ) ) $ ( if p20 then false else false )
            d118 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1210 -> if true then Bool else Bool ) ) ) $ ( Bool ) else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if false then d108 else d87 ) ) ) $ ( if false then false else p20 )
            d124 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> Bool ) ) ) $ ( x1260 ) ) ) ) $ ( if false then Bool else Bool )
            d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if true then d54 else p10 ) ) ) $ ( if d62 then d4 else p20 )
            d128 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
            d128 = if if d43 then true else false then if p20 then d67 else d67 else if p20 then d82 else false
            d129 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> if false then if true then Bool else Bool else if true then Bool else x1320 ) ) ) $ ( if false then Bool else x1310 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> Bool ) ) ) $ ( x1330 ) ) ) ) $ ( if true then Bool else Bool ) )
            d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if true then d118 else x1300 ) ) ) $ ( if d118 then d49 else true )
            d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then Bool else x1390 ) ) ) $ ( if false then x1390 else x1390 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1410 -> if false then x1410 else Bool ) ) ) $ ( x1380 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1420 -> ( ( Set -> Set ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( x1420 ) ) ) ) $ ( if false then Bool else Bool ) )
            d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> true ) ) ) $ ( d108 ) ) ) ) $ ( if false then p10 else true )
            d144 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1460 -> ( ( Set -> Set ) ∋ ( ( λ x1470 -> Bool ) ) ) $ ( x1460 ) ) ) ) $ ( if true then Bool else Bool )
            d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if x1450 then d92 else d118 ) ) ) $ ( if false then d37 else d43 )
            d148 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1500 -> if false then x1490 else x1500 ) ) ) $ ( x1490 ) else ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then Bool else Bool ) ) ) $ ( x1490 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> Bool ) ) ) $ ( x1520 ) ) ) ) $ ( if false then Bool else Bool ) )
            d148 = if if true then d69 else p20 then if d48 then p20 else true else if false then d102 else p10
            d154 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( false ) ) ) ) $ ( if p10 then p10 else true )
            d157 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1580 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d157 = if if p10 then false else d135 then if d82 then d92 else d108 else if p20 then p20 else false
            d159 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
            d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> false ) ) ) $ ( p20 ) ) ) ) $ ( if p10 then p20 else false )
            d162 : if true then ( ( Set -> Set ) ∋ ( ( λ x1630 -> ( ( Set -> Set ) ∋ ( ( λ x1640 -> x1630 ) ) ) $ ( x1630 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then x1650 else Bool ) ) ) $ ( if false then Bool else Bool )
            d162 = if if p10 then d4 else p10 then if d48 then p10 else true else if p20 then d102 else p10
            d166 : if false then ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( x1670 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1690 -> ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( x1690 ) ) ) ) $ ( if true then Bool else Bool )
            d166 = if if d144 then d157 else d72 then if p10 then true else false else if false then d19 else d99
            d171 : if false then ( ( Set -> Set ) ∋ ( ( λ x1740 -> ( ( Set -> Set ) ∋ ( ( λ x1750 -> Bool ) ) ) $ ( x1740 ) ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> true ) ) ) $ ( d28 ) ) ) ) $ ( if false then d128 else false )
            d176 : if false then ( ( Set -> Set ) ∋ ( ( λ x1770 -> if false then Bool else x1770 ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
            d176 = if if p20 then d102 else p20 then if true then d148 else true else if d72 then d159 else d135
        module M1'  = M1 ( true ) 
    d178 : if false then ( ( Set -> Set ) ∋ ( ( λ x1800 -> ( ( Set -> Set ) ∋ ( ( λ x1810 -> x1800 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if false then x1790 else x1790 ) ) ) $ ( if true then true else true )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1840 -> if true then Bool else Bool ) ) ) $ ( x1830 ) else ( ( Set -> Set ) ∋ ( ( λ x1850 -> if false then x1850 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1860 -> if true then Bool else x1860 ) ) ) $ ( if false then Bool else Bool ) )
    d182 = ( M.M1'.d102 ) $ ( if if true then d178 else d178 then if false then d178 else true else if d178 then false else d178 )
    d187 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1880 -> if true then x1880 else x1880 ) ) ) $ ( if false then Bool else Bool )
    d187 = if if false then true else d178 then if true then false else d182 else if d182 then false else d178
    d189 : ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then if true then x1910 else x1910 else if false then Bool else x1910 ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> ( M.M1'.d113 ) $ ( ( M.M1'.d157 ) $ ( if x1900 then false else true ) ) ) ) ) $ ( if false then true else true )
    d192 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d192 = if if false then d187 else true then if true then d187 else d187 else if true then d182 else d187
    d193 : ( ( Set -> Set ) ∋ ( ( λ x1950 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1960 -> if false then x1950 else Bool ) ) ) $ ( x1950 ) else if true then Bool else x1950 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d193 = ( M.M1'.d129 ) $ ( ( M.M1'.d135 ) $ ( ( ( M.M1.d102 ) $ ( ( M.M1'.d19 ) $ ( if d189 then true else true ) ) ) $ ( ( M.M1'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( true ) ) ) ) )
    d199 : if false then ( ( Set -> Set ) ∋ ( ( λ x2000 -> ( ( Set -> Set ) ∋ ( ( λ x2010 -> Bool ) ) ) $ ( x2000 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2020 -> ( ( Set -> Set ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( x2020 ) ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( M.M1.d51 ) $ ( if false then d189 else false ) ) $ ( if d187 then d182 else false )
    d204 : if true then ( ( Set -> Set ) ∋ ( ( λ x2050 -> if true then x2050 else Bool ) ) ) $ ( if false then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d204 = ( M.M1'.d87 ) $ ( ( ( M.M1.d128 ) $ ( if d193 then d189 else false ) ) $ ( ( ( M.M1.d82 ) $ ( true ) ) $ ( false ) ) )
    d206 : if true then ( ( Set -> Set ) ∋ ( ( λ x2070 -> ( ( Set -> Set ) ∋ ( ( λ x2080 -> x2070 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
    d206 = if if false then true else d187 then if true then d204 else d189 else if d182 then d193 else d193
    d209 : ( ( Set -> Set ) ∋ ( ( λ x2110 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2120 -> if true then x2120 else Bool ) ) ) $ ( x2110 ) else if true then Bool else x2110 ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d209 = ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> ( ( M.M1.d38 ) $ ( if x2100 then x2100 else d178 ) ) $ ( if true then d199 else false ) ) ) ) $ ( if false then false else d187 )
    d213 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if false then if true then Bool else x2140 else if false then Bool else x2150 ) ) ) $ ( if false then x2140 else x2140 ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d213 = ( M.M1'.d162 ) $ ( ( M.M1'.d54 ) $ ( ( ( M.M1.d113 ) $ ( if true then true else true ) ) $ ( ( M.M1'.d128 ) $ ( ( ( M.M1.d148 ) $ ( true ) ) $ ( true ) ) ) ) )
    d216 : ( ( Set -> Set ) ∋ ( ( λ x2170 -> ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then if false then x2180 else x2170 else if false then Bool else x2170 ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d216 = ( M.M1'.d82 ) $ ( if if true then true else d193 then if true then true else d209 else if d206 then true else d204 )
    d219 : ( ( Set -> Set ) ∋ ( ( λ x2210 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2220 -> if true then x2210 else Bool ) ) ) $ ( x2210 ) else ( ( Set -> Set ) ∋ ( ( λ x2230 -> if false then Bool else x2230 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d219 = ( ( M.M1.d43 ) $ ( ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> false ) ) ) $ ( true ) ) ) ) $ ( if d192 then d213 else d193 )
    d224 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d224 = if if true then d193 else d178 then if d209 then true else true else if false then d209 else d204
    d225 : ( ( Set -> Set ) ∋ ( ( λ x2260 -> ( ( Set -> Set ) ∋ ( ( λ x2270 -> ( ( Set -> Set ) ∋ ( ( λ x2280 -> if true then x2270 else x2260 ) ) ) $ ( if true then x2260 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2290 -> if false then Bool else x2290 ) ) ) $ ( x2260 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2300 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d225 = ( M.M1'.d129 ) $ ( ( M.M1'.d116 ) $ ( ( M.M1'.d4 ) $ ( if if d206 then d216 else true then if true then d209 else d206 else if d189 then d213 else false ) ) )
    d231 : if true then ( ( Set -> Set ) ∋ ( ( λ x2320 -> ( ( Set -> Set ) ∋ ( ( λ x2330 -> Bool ) ) ) $ ( x2320 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2340 -> ( ( Set -> Set ) ∋ ( ( λ x2350 -> Bool ) ) ) $ ( x2340 ) ) ) ) $ ( if false then Bool else Bool )
    d231 = ( ( M.M1.d166 ) $ ( ( ( M.M1.d159 ) $ ( d219 ) ) $ ( d224 ) ) ) $ ( ( ( M.M1.d4 ) $ ( false ) ) $ ( false ) )
    d236 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2380 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d236 = ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> if x2370 then d209 else true ) ) ) $ ( if true then d192 else d204 )
    d239 : ( ( Set -> Set ) ∋ ( ( λ x2400 -> ( ( Set -> Set ) ∋ ( ( λ x2410 -> ( ( Set -> Set ) ∋ ( ( λ x2420 -> if false then x2400 else Bool ) ) ) $ ( if false then Bool else x2400 ) ) ) ) $ ( if true then x2400 else x2400 ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d239 = if if d199 then d231 else true then if true then d206 else false else if d206 then true else true
    d243 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> if false then if false then Bool else x2440 else ( ( Set -> Set ) ∋ ( ( λ x2450 -> if false then x2450 else Bool ) ) ) $ ( x2440 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2460 -> if false then x2460 else x2460 ) ) ) $ ( if false then Bool else Bool ) )
    d243 = ( ( M.M1.d128 ) $ ( ( ( M.M1.d159 ) $ ( d204 ) ) $ ( d192 ) ) ) $ ( if d193 then d216 else false )
    d247 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2500 -> if true then x2500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2510 -> ( ( Set -> Set ) ∋ ( ( λ x2520 -> x2510 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d247 = ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> ( M.M1'.d92 ) $ ( if true then x2480 else false ) ) ) ) $ ( if true then d243 else d193 )
    d253 : if false then ( ( Set -> Set ) ∋ ( ( λ x2540 -> if true then x2540 else x2540 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2550 -> ( ( Set -> Set ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d253 = if if false then d187 else d209 then if d247 then false else false else if false then false else false
    d257 : if true then ( ( Set -> Set ) ∋ ( ( λ x2590 -> ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d257 = ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> ( ( M.M1.d54 ) $ ( if d236 then x2580 else x2580 ) ) $ ( if d225 then false else x2580 ) ) ) ) $ ( if d213 then d224 else d216 )
    d261 : ( ( Set -> Set ) ∋ ( ( λ x2630 -> if true then if false then Bool else x2630 else ( ( Set -> Set ) ∋ ( ( λ x2640 -> if false then x2630 else Bool ) ) ) $ ( x2630 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2650 -> if true then x2650 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d261 = ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> ( M.M1'.d113 ) $ ( ( ( M.M1.d144 ) $ ( if false then true else false ) ) $ ( if x2620 then true else false ) ) ) ) ) $ ( if d204 then d209 else d192 )
    d266 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> ( ( Set -> Set ) ∋ ( ( λ x2690 -> ( ( Set -> Set ) ∋ ( ( λ x2700 -> ( ( Set -> Set ) ∋ ( ( λ x2710 -> if false then Bool else x2710 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else x2680 ) ) ) ) $ ( if true then Bool else x2680 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2720 -> if true then x2720 else x2720 ) ) ) $ ( if true then Bool else Bool ) )
    d266 = ( ( M.M1.d4 ) $ ( ( M.M1'.d129 ) $ ( ( M.M1'.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> x2670 ) ) ) $ ( d192 ) ) ) ) ) $ ( ( M.M1'.d69 ) $ ( ( ( M.M1.d162 ) $ ( d204 ) ) $ ( true ) ) )
    d273 : if false then ( ( Set -> Set ) ∋ ( ( λ x2740 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2750 -> ( ( Set -> Set ) ∋ ( ( λ x2760 -> Bool ) ) ) $ ( x2750 ) ) ) ) $ ( if false then Bool else Bool )
    d273 = ( ( M.M1.d19 ) $ ( if false then false else true ) ) $ ( ( M.M1'.d159 ) $ ( if d224 then false else d187 ) )
    d277 : if true then ( ( Set -> Set ) ∋ ( ( λ x2790 -> ( ( Set -> Set ) ∋ ( ( λ x2800 -> Bool ) ) ) $ ( x2790 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2810 -> if false then x2810 else x2810 ) ) ) $ ( if false then Bool else Bool )
    d277 = ( M.M1'.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> ( ( M.M1.d78 ) $ ( if false then d219 else d273 ) ) $ ( if false then false else true ) ) ) ) $ ( if d199 then true else true ) )
    d282 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> ( ( Set -> Set ) ∋ ( ( λ x2860 -> ( ( Set -> Set ) ∋ ( ( λ x2870 -> if false then Bool else x2850 ) ) ) $ ( if true then x2860 else Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2880 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d282 = ( M.M1'.d62 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> x2840 ) ) ) $ ( true ) ) ) ) $ ( if d182 then d236 else d225 ) ) ) )
    d289 : ( ( Set -> Set ) ∋ ( ( λ x2900 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2910 -> if true then Bool else x2910 ) ) ) $ ( Bool ) else if true then x2900 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2920 -> ( ( Set -> Set ) ∋ ( ( λ x2930 -> Bool ) ) ) $ ( x2920 ) ) ) ) $ ( if true then Bool else Bool ) )
    d289 = ( M.M1'.d154 ) $ ( if if d209 then false else d273 then if true then true else d239 else if d199 then d261 else d253 )
    d294 : ( ( Set -> Set ) ∋ ( ( λ x2960 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2970 -> if false then x2960 else x2970 ) ) ) $ ( x2960 ) else if true then x2960 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2980 -> if false then x2980 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d294 = ( M.M1'.d37 ) $ ( ( ( M.M1.d102 ) $ ( if d209 then false else d236 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> d247 ) ) ) $ ( d206 ) ) )
    d299 : ( ( Set -> Set ) ∋ ( ( λ x3000 -> if false then if false then x3000 else Bool else if false then Bool else x3000 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3010 -> if true then x3010 else x3010 ) ) ) $ ( if true then Bool else Bool ) )
    d299 = ( M.M1'.d176 ) $ ( if if d273 then d266 else d216 then if true then d257 else d182 else if true then d204 else d266 )
    d302 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if false then if true then Bool else x3050 else if false then x3050 else Bool ) ) ) $ ( if true then Bool else x3040 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3060 -> ( ( Set -> Set ) ∋ ( ( λ x3070 -> Bool ) ) ) $ ( x3060 ) ) ) ) $ ( if true then Bool else Bool ) )
    d302 = ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> ( ( M.M1.d148 ) $ ( if d182 then true else false ) ) $ ( if x3030 then false else true ) ) ) ) $ ( if d277 then d219 else d193 )
    d308 : if true then ( ( Set -> Set ) ∋ ( ( λ x3110 -> if false then x3110 else x3110 ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
    d308 = ( M.M1'.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> x3100 ) ) ) $ ( x3090 ) ) ) ) ) $ ( if d257 then true else false ) )
    d312 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3140 -> ( ( Set -> Set ) ∋ ( ( λ x3150 -> x3140 ) ) ) $ ( x3140 ) ) ) ) $ ( if true then Bool else Bool )
    d312 = ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> if x3130 then d216 else d239 ) ) ) $ ( if false then d302 else d189 )
    d316 : if false then ( ( Set -> Set ) ∋ ( ( λ x3180 -> if false then x3180 else Bool ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d316 = ( M.M1'.d14 ) $ ( ( M.M1'.d159 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> ( M.M1'.d102 ) $ ( ( M.M1'.d148 ) $ ( if x3170 then false else x3170 ) ) ) ) ) $ ( if false then false else d302 ) ) )
    d319 : ( ( Set -> Set ) ∋ ( ( λ x3200 -> if false then if false then Bool else x3200 else ( ( Set -> Set ) ∋ ( ( λ x3210 -> if true then x3210 else Bool ) ) ) $ ( x3200 ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d319 = ( M.M1'.d28 ) $ ( ( M.M1'.d37 ) $ ( ( M.M1'.d159 ) $ ( if if d192 then true else true then if d239 then d257 else true else if false then false else true ) ) )
    d322 : if false then ( ( Set -> Set ) ∋ ( ( λ x3230 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d322 = if if d225 then d277 else d302 then if true then d239 else d299 else if d299 then d308 else d219
    d324 : if true then ( ( Set -> Set ) ∋ ( ( λ x3250 -> ( ( Set -> Set ) ∋ ( ( λ x3260 -> x3250 ) ) ) $ ( x3250 ) ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
    d324 = if if false then d282 else d282 then if false then d204 else d206 else if d299 then false else false
    d327 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
    d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> ( M.M1'.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> x3280 ) ) ) $ ( x3280 ) ) ) ) ) $ ( if d289 then true else true )
    d330 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3320 -> ( ( Set -> Set ) ∋ ( ( λ x3330 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d330 = ( M.M1'.d116 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( M.M1'.d48 ) $ ( ( ( M.M1.d129 ) $ ( if false then x3310 else true ) ) $ ( if x3310 then d257 else x3310 ) ) ) ) ) $ ( if d277 then d299 else d182 ) )
    d334 : if true then ( ( Set -> Set ) ∋ ( ( λ x3360 -> if true then Bool else x3360 ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d334 = ( ( M.M1.d116 ) $ ( if false then true else d299 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> d239 ) ) ) $ ( d219 ) )
    d337 : if false then ( ( Set -> Set ) ∋ ( ( λ x3390 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d337 = ( M.M1'.d116 ) $ ( ( M.M1'.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> ( M.M1'.d135 ) $ ( if true then d312 else x3380 ) ) ) ) $ ( if true then d206 else d216 ) ) )
    d340 : if true then ( ( Set -> Set ) ∋ ( ( λ x3410 -> if false then x3410 else x3410 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3420 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d340 = ( M.M1'.d38 ) $ ( if if d337 then false else false then if d327 then true else d312 else if true then d236 else d206 )
    d343 : if true then ( ( Set -> Set ) ∋ ( ( λ x3440 -> ( ( Set -> Set ) ∋ ( ( λ x3450 -> Bool ) ) ) $ ( x3440 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3460 -> ( ( Set -> Set ) ∋ ( ( λ x3470 -> x3470 ) ) ) $ ( x3460 ) ) ) ) $ ( if true then Bool else Bool )
    d343 = if if true then d224 else true then if d243 then false else true else if false then d236 else false
    d348 : if false then ( ( Set -> Set ) ∋ ( ( λ x3500 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3510 -> ( ( Set -> Set ) ∋ ( ( λ x3520 -> Bool ) ) ) $ ( x3510 ) ) ) ) $ ( if false then Bool else Bool )
    d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if false then d273 else d312 ) ) ) $ ( if d322 then true else d239 )
    d353 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> if false then if true then x3540 else x3540 else if true then x3540 else x3540 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3550 -> if false then Bool else x3550 ) ) ) $ ( if false then Bool else Bool ) )
    d353 = ( M.M1'.d82 ) $ ( if if d231 then true else d199 then if true then d289 else d299 else if true then true else true )
    d356 : ( ( Set -> Set ) ∋ ( ( λ x3580 -> ( ( Set -> Set ) ∋ ( ( λ x3590 -> ( ( Set -> Set ) ∋ ( ( λ x3600 -> if true then x3600 else Bool ) ) ) $ ( if false then Bool else x3590 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3610 -> if false then x3580 else x3580 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3620 -> if true then x3620 else x3620 ) ) ) $ ( if false then Bool else Bool ) )
    d356 = ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> ( M.M1'.d92 ) $ ( ( M.M1'.d78 ) $ ( ( M.M1'.d62 ) $ ( if d289 then d261 else d302 ) ) ) ) ) ) $ ( if d340 then d178 else d302 )
    d363 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3650 -> if true then x3650 else Bool ) ) ) $ ( if true then Bool else Bool )
    d363 = ( M.M1'.d171 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> if x3640 then d187 else x3640 ) ) ) $ ( if d192 then d219 else d294 ) )
    d366 : if false then ( ( Set -> Set ) ∋ ( ( λ x3690 -> ( ( Set -> Set ) ∋ ( ( λ x3700 -> Bool ) ) ) $ ( x3690 ) ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
    d366 = ( M.M1'.d14 ) $ ( ( ( M.M1.d4 ) $ ( ( M.M1'.d108 ) $ ( ( M.M1'.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> d199 ) ) ) $ ( false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> x3680 ) ) ) $ ( true ) ) )
    d371 : if true then ( ( Set -> Set ) ∋ ( ( λ x3720 -> ( ( Set -> Set ) ∋ ( ( λ x3730 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d371 = ( M.M1'.d176 ) $ ( if if false then d231 else false then if false then true else false else if false then false else true )
    d374 : ( ( Set -> Set ) ∋ ( ( λ x3760 -> if true then if false then Bool else x3760 else if false then Bool else x3760 ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d374 = ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> ( ( M.M1.d166 ) $ ( if d187 then x3750 else x3750 ) ) $ ( if d330 then true else x3750 ) ) ) ) $ ( if true then true else true ) )