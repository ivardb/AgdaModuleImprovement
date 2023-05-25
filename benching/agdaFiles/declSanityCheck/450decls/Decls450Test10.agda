module Decls450Test10  where
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

    module M  where
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then Bool else Bool ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> true ) ) ) $ ( false ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( false )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d6 = if ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( false ) then if d1 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x80 -> d1 ) ) ) $ ( d1 )
        d10 : if true then ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( Bool )
        d10 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x110 -> false ) ) ) $ ( false ) else if false then d6 else d1
        d14 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then x160 else x160 ) ) ) $ ( if true then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if x150 then x150 else d6 ) ) ) $ ( if true then false else d10 )
        d17 : if true then ( ( Set -> Set ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d17 = if if d10 then true else false then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x180 -> true ) ) ) $ ( true )
        d20 : if false then ( ( Set -> Set ) ∋ ( ( λ x230 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if false then d1 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d10 else true )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if false then Bool else x260 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if ( ( Bool -> Bool ) ∋ ( ( λ x250 -> false ) ) ) $ ( d20 ) then if false then false else d10 else if d14 then d1 else d14
        d28 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if true then x320 else Bool ) ) ) $ ( if true then Bool else Bool )
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d10 ) ) ) $ ( d24 ) then ( ( Bool -> Bool ) ∋ ( ( λ x300 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( false )
        d33 : if false then ( ( Set -> Set ) ∋ ( ( λ x350 -> x350 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d33 = if ( ( Bool -> Bool ) ∋ ( ( λ x340 -> d17 ) ) ) $ ( true ) then if d17 then d24 else d20 else if d20 then false else d14
        d36 : if true then ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( Bool )
        d36 = if if true then true else false then if d17 then true else d6 else if false then d20 else true
        d39 : if false then ( ( Set -> Set ) ∋ ( ( λ x420 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if x410 then d10 else x410 ) ) ) $ ( x400 ) ) ) ) $ ( if false then false else false )
        d43 : if false then ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d43 = if if false then false else d39 then ( ( Bool -> Bool ) ∋ ( ( λ x440 -> false ) ) ) $ ( false ) else if false then true else d33
        d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if true then x490 else Bool ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if d6 then x480 else d24 ) ) ) $ ( d28 ) ) ) ) $ ( if true then true else d33 )
        d50 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if d6 then d24 else d43 ) ) ) $ ( if true then d1 else false )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if true then x540 else x540 ) ) ) $ ( x540 ) ) ) ) $ ( if false then false else d28 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then x610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( d36 ) then if d6 then true else d43 else if false then d28 else false
        d62 : ( ( Set -> Set ) ∋ ( ( λ x660 -> ( ( Set -> Set ) ∋ ( ( λ x670 -> if true then Bool else x670 ) ) ) $ ( x660 ) ) ) ) $ ( if true then Bool else Bool )
        d62 = if ( ( Bool -> Bool ) ∋ ( ( λ x630 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d17 ) ) ) $ ( d24 ) else ( ( Bool -> Bool ) ∋ ( ( λ x650 -> true ) ) ) $ ( false )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if true then Bool else x700 ) ) ) $ ( if true then Bool else Bool )
        d68 = if if d36 then false else d20 then if d28 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d43 ) ) ) $ ( d39 )
        d71 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool )
        d71 = if ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d36 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( d68 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x790 -> if false then Bool else x790 ) ) ) $ ( if false then Bool else Bool )
        d76 = if ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d50 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( d58 ) else if true then d46 else d58
        d80 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then Bool else x830 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if x810 then true else d76 ) ) ) $ ( d68 ) ) ) ) $ ( if d24 then true else d43 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> if false then x880 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if true then d6 else x860 ) ) ) $ ( if false then d20 else d28 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then Bool else x910 ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if d76 then d68 else x900 ) ) ) $ ( if false then d68 else d43 )
        d92 : if true then ( ( Set -> Set ) ∋ ( ( λ x950 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> true ) ) ) $ ( d33 ) then if d1 then true else d80 else ( ( Bool -> Bool ) ∋ ( ( λ x940 -> true ) ) ) $ ( true )
        d96 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if x970 then d10 else false ) ) ) $ ( if false then true else true )
        d99 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if d85 then x1000 else false ) ) ) $ ( if true then false else true )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if true then Bool else x1030 ) ) ) $ ( if false then Bool else Bool )
        d102 = if if true then d89 else false then if d53 then true else d76 else if false then false else true
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then x1070 else x1070 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if x1050 then d24 else true ) ) ) $ ( if false then d17 else d10 )
        d108 : if true then ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool )
        d108 = if if true then true else false then if d62 then d99 else d14 else if true then d102 else false
        d111 : if true then ( ( Set -> Set ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if x1130 then x1120 else d17 ) ) ) $ ( false ) ) ) ) $ ( if true then d10 else true )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d115 = if if true then d24 else d68 then if d58 then d10 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> true ) ) ) $ ( d33 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> if true then x1210 else Bool ) ) ) $ ( if false then Bool else Bool )
        d119 = if ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> d62 ) ) ) $ ( d50 ) then if d80 then false else d96 else if true then true else false
        d122 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> if true then x1260 else x1260 ) ) ) $ ( x1250 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if x1230 then d17 else false ) ) ) $ ( d39 ) ) ) ) $ ( if d71 then false else true )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> ( ( Set -> Set ) ∋ ( ( λ x1300 -> if false then Bool else x1290 ) ) ) $ ( x1290 ) ) ) ) $ ( if true then Bool else Bool )
        d127 = if if d58 then true else false then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> true ) ) ) $ ( d111 )
        d131 : if false then ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if false then d96 else x1320 ) ) ) $ ( if d17 then true else true )
        d134 : if false then ( ( Set -> Set ) ∋ ( ( λ x1370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1380 -> x1380 ) ) ) $ ( Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> if false then x1350 else x1350 ) ) ) $ ( x1350 ) ) ) ) $ ( if d80 then d111 else d62 )
        d139 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> ( ( Set -> Set ) ∋ ( ( λ x1420 -> if false then x1420 else x1420 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d139 = if ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( true ) then if d71 then d20 else true else if false then d76 else d131
        d143 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> ( ( Set -> Set ) ∋ ( ( λ x1460 -> if true then Bool else x1450 ) ) ) $ ( x1450 ) ) ) ) $ ( if false then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> if x1440 then true else false ) ) ) $ ( if d80 then d71 else true )
        d147 : if false then if true then Bool else Bool else if false then Bool else Bool
        d147 = if if d96 then true else true then if true then d89 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> d28 ) ) ) $ ( d143 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> if false then Bool else x1520 ) ) ) $ ( if false then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( true ) then if d131 then false else d53 else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d68 ) ) ) $ ( true )
        d153 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then x1560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d1 then d53 else true ) ) ) $ ( false ) ) ) ) $ ( if d6 then d139 else d147 )
        d157 : if true then ( ( Set -> Set ) ∋ ( ( λ x1600 -> x1600 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d157 = if if d134 then d76 else d89 then ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> true ) ) ) $ ( d58 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d99 ) ) ) $ ( true )
        d161 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> if true then x1640 else Bool ) ) ) $ ( if true then Bool else Bool )
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> if false then false else d92 ) ) ) $ ( d36 ) ) ) ) $ ( if d149 then d89 else true )
        d165 : if true then ( ( Set -> Set ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1690 -> Bool ) ) ) $ ( Bool )
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if false then false else d122 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d157 )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> ( ( Set -> Set ) ∋ ( ( λ x1730 -> if true then x1720 else x1730 ) ) ) $ ( x1720 ) ) ) ) $ ( if true then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if d119 then x1710 else d33 ) ) ) $ ( if d104 then d36 else false )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1770 -> if true then x1770 else x1770 ) ) ) $ ( if true then Bool else Bool )
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if d122 then d28 else d127 ) ) ) $ ( x1750 ) ) ) ) $ ( if true then d92 else true )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then x1800 else Bool ) ) ) $ ( if false then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if d58 then false else x1790 ) ) ) $ ( if d80 then false else true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then x1840 else x1840 ) ) ) $ ( if false then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if true then d28 else d111 ) ) ) $ ( x1820 ) ) ) ) $ ( if true then true else true )
        d185 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> if false then x1880 else x1880 ) ) ) $ ( x1880 ) ) ) ) $ ( if true then Bool else Bool )
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> if true then d80 else x1870 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d190 : if false then if true then Bool else Bool else if true then Bool else Bool
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if d85 then false else false ) ) ) $ ( d181 ) ) ) ) $ ( if d33 then true else d24 )
        d193 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1960 -> Bool ) ) ) $ ( Bool )
        d193 = if ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( d62 ) then if false then d92 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> d96 ) ) ) $ ( false )
        d197 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> ( ( Set -> Set ) ∋ ( ( λ x2010 -> if true then x2010 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if d39 then d108 else d58 ) ) ) $ ( x1980 ) ) ) ) $ ( if d108 then d68 else true )
        d202 : if true then ( ( Set -> Set ) ∋ ( ( λ x2040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2050 -> Bool ) ) ) $ ( Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> if false then x2030 else d193 ) ) ) $ ( if d197 then true else false )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x2070 -> ( ( Set -> Set ) ∋ ( ( λ x2080 -> if false then Bool else x2070 ) ) ) $ ( x2070 ) ) ) ) $ ( if false then Bool else Bool )
        d206 = if if d178 then d193 else false then if d28 then true else true else if false then d127 else d165
        d209 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d209 = ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> if d178 then x2110 else d76 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if true then x2150 else x2150 ) ) ) $ ( x2140 ) ) ) ) $ ( if true then Bool else Bool )
        d213 = if if true then d111 else true then if true then true else true else if false then d122 else d190
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> if true then true else x2180 ) ) ) $ ( d153 ) ) ) ) $ ( if d39 then d119 else false )
        d220 : if false then ( ( Set -> Set ) ∋ ( ( λ x2230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2240 -> x2240 ) ) ) $ ( Bool )
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> if true then d85 else true ) ) ) $ ( false ) ) ) ) $ ( if d174 then d108 else false )
        d225 : ( ( Set -> Set ) ∋ ( ( λ x2290 -> if false then x2290 else x2290 ) ) ) $ ( if false then Bool else Bool )
        d225 = if ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> d206 ) ) ) $ ( d96 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> d143 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> x2280 ) ) ) $ ( true )
        d230 : if false then if true then Bool else Bool else if true then Bool else Bool
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> if false then d220 else true ) ) ) $ ( d50 ) ) ) ) $ ( if d216 then false else false )
        d233 : if true then ( ( Set -> Set ) ∋ ( ( λ x2350 -> x2350 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2360 -> Bool ) ) ) $ ( Bool )
        d233 = ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> if x2340 then d139 else true ) ) ) $ ( if d197 then true else true )
        d237 : ( ( Set -> Set ) ∋ ( ( λ x2390 -> ( ( Set -> Set ) ∋ ( ( λ x2400 -> if false then x2400 else Bool ) ) ) $ ( x2390 ) ) ) ) $ ( if true then Bool else Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> if d24 then x2380 else false ) ) ) $ ( if d28 then false else d14 )
        d241 : ( ( Set -> Set ) ∋ ( ( λ x2430 -> ( ( Set -> Set ) ∋ ( ( λ x2440 -> if true then x2430 else x2440 ) ) ) $ ( x2430 ) ) ) ) $ ( if true then Bool else Bool )
        d241 = if ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> d197 ) ) ) $ ( true ) then if false then d68 else false else if d53 then d190 else true
        d245 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> if true then x2480 else Bool ) ) ) $ ( if true then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> if true then x2470 else true ) ) ) $ ( false ) ) ) ) $ ( if d149 then true else d58 )
        d249 : if true then if false then Bool else Bool else if false then Bool else Bool
        d249 = if ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> x2500 ) ) ) $ ( d127 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> x2510 ) ) ) $ ( true ) else if d20 then d197 else d147
        d252 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2550 -> Bool ) ) ) $ ( Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if x2530 then d122 else true ) ) ) $ ( d209 ) ) ) ) $ ( if true then true else false )
        d256 : if false then ( ( Set -> Set ) ∋ ( ( λ x2580 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2590 -> x2590 ) ) ) $ ( Bool )
        d256 = if ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> true ) ) ) $ ( d147 ) then if false then true else d252 else if d225 then true else false
        d260 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2620 -> Bool ) ) ) $ ( Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> if x2610 then d206 else x2610 ) ) ) $ ( if false then d14 else false )
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2660 -> if false then x2660 else x2660 ) ) ) $ ( if true then Bool else Bool )
        d263 = if if false then d39 else d260 then ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> x2640 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> true ) ) ) $ ( d134 )
        d267 : ( ( Set -> Set ) ∋ ( ( λ x2690 -> if true then x2690 else x2690 ) ) ) $ ( if true then Bool else Bool )
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> if x2680 then true else x2680 ) ) ) $ ( if true then d24 else true )
        d270 : ( ( Set -> Set ) ∋ ( ( λ x2730 -> ( ( Set -> Set ) ∋ ( ( λ x2740 -> if true then Bool else x2740 ) ) ) $ ( x2730 ) ) ) ) $ ( if true then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> if d71 then d139 else true ) ) ) $ ( d80 ) ) ) ) $ ( if d220 then d165 else true )
        d275 : ( ( Set -> Set ) ∋ ( ( λ x2780 -> ( ( Set -> Set ) ∋ ( ( λ x2790 -> if true then x2780 else x2780 ) ) ) $ ( x2780 ) ) ) ) $ ( if true then Bool else Bool )
        d275 = ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> if d149 then false else x2760 ) ) ) $ ( x2760 ) ) ) ) $ ( if d241 then d209 else false )
        d280 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( Bool )
        d280 = if ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> x2810 ) ) ) $ ( false ) then if d104 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> false ) ) ) $ ( true )
        d284 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2860 -> Bool ) ) ) $ ( Bool )
        d284 = if if d202 then d245 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> false ) ) ) $ ( true ) else if d174 then d43 else d249
        d287 : if false then if false then Bool else Bool else if true then Bool else Bool
        d287 = if ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> x2880 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> true ) ) ) $ ( true ) else if d139 then d43 else d233
        d290 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> if false then x2930 else Bool ) ) ) $ ( if false then Bool else Bool )
        d290 = if ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> d104 ) ) ) $ ( d233 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> true ) ) ) $ ( d10 ) else if d252 then d249 else d139
        d294 : if false then ( ( Set -> Set ) ∋ ( ( λ x2960 -> x2960 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d294 = if if true then d89 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> d280 ) ) ) $ ( d127 ) else if d36 then d213 else d157
        d297 : if true then ( ( Set -> Set ) ∋ ( ( λ x2990 -> x2990 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d297 = if if d122 then d161 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> true ) ) ) $ ( d20 ) else if false then true else false
        d300 : ( ( Set -> Set ) ∋ ( ( λ x3030 -> ( ( Set -> Set ) ∋ ( ( λ x3040 -> if false then x3030 else x3040 ) ) ) $ ( x3030 ) ) ) ) $ ( if true then Bool else Bool )
        d300 = ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> if x3020 then d153 else false ) ) ) $ ( true ) ) ) ) $ ( if d80 then d275 else d76 )
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3080 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if x3070 then true else d80 ) ) ) $ ( false ) ) ) ) $ ( if d275 then d76 else d161 )
        d309 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3120 -> Bool ) ) ) $ ( Bool )
        d309 = if ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> d305 ) ) ) $ ( d46 ) then if false then d39 else d267 else ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( false )
        d313 : ( ( Set -> Set ) ∋ ( ( λ x3160 -> ( ( Set -> Set ) ∋ ( ( λ x3170 -> if true then x3170 else x3170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> if false then d284 else x3150 ) ) ) $ ( d1 ) ) ) ) $ ( if true then d181 else false )
        d318 : if false then ( ( Set -> Set ) ∋ ( ( λ x3200 -> x3200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3210 -> Bool ) ) ) $ ( Bool )
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> if d149 then x3190 else d157 ) ) ) $ ( if false then d290 else false )
        d322 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> ( ( Set -> Set ) ∋ ( ( λ x3250 -> if true then x3250 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> if x3230 then x3230 else false ) ) ) $ ( if d76 then false else d157 )
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> ( ( Set -> Set ) ∋ ( ( λ x3300 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> if x3270 then true else d80 ) ) ) $ ( false ) ) ) ) $ ( if d24 then true else d53 )
        d331 : if false then ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3340 -> Bool ) ) ) $ ( Bool )
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if true then d249 else x3320 ) ) ) $ ( if true then true else true )
        d335 : ( ( Set -> Set ) ∋ ( ( λ x3370 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> if x3360 then d178 else x3360 ) ) ) $ ( if true then false else true )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3400 -> if false then x3400 else x3400 ) ) ) $ ( if true then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> if false then x3390 else false ) ) ) $ ( if d43 then d14 else false )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> if false then Bool else x3440 ) ) ) $ ( if false then Bool else Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if d260 then true else d99 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d99 )
        d345 : if true then ( ( Set -> Set ) ∋ ( ( λ x3480 -> x3480 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3490 -> Bool ) ) ) $ ( Bool )
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> if false then d139 else x3460 ) ) ) $ ( x3460 ) ) ) ) $ ( if true then false else false )
        d350 : if false then ( ( Set -> Set ) ∋ ( ( λ x3540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3550 -> x3550 ) ) ) $ ( Bool )
        d350 = if ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> d58 ) ) ) $ ( d122 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> d96 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> false ) ) ) $ ( d213 )
        d356 : if false then ( ( Set -> Set ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> if false then true else false ) ) ) $ ( if false then false else true )
        d359 : ( ( Set -> Set ) ∋ ( ( λ x3620 -> ( ( Set -> Set ) ∋ ( ( λ x3630 -> if true then x3630 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d359 = ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if d36 then true else d96 ) ) ) $ ( false ) ) ) ) $ ( if d249 then true else d131 )
        d364 : if false then ( ( Set -> Set ) ∋ ( ( λ x3660 -> x3660 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( Bool )
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> if d313 then false else d10 ) ) ) $ ( if d185 then true else false )
        d368 : if true then ( ( Set -> Set ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3720 -> x3720 ) ) ) $ ( Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> if true then d157 else x3700 ) ) ) $ ( x3690 ) ) ) ) $ ( if true then true else true )
        d373 : ( ( Set -> Set ) ∋ ( ( λ x3760 -> ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> if true then d209 else x3740 ) ) ) $ ( d10 ) ) ) ) $ ( if false then d280 else false )
        d378 : if false then ( ( Set -> Set ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if x3800 then d297 else d14 ) ) ) $ ( d17 ) ) ) ) $ ( if d178 then d131 else false )
        d382 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( Bool )
        d382 = if if d284 then d43 else d294 then ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> d318 ) ) ) $ ( false ) else if d193 then d300 else false
        d385 : if false then ( ( Set -> Set ) ∋ ( ( λ x3870 -> x3870 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3880 -> x3880 ) ) ) $ ( Bool )
        d385 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> x3860 ) ) ) $ ( d92 ) else if d96 then true else true
        d389 : ( ( Set -> Set ) ∋ ( ( λ x3910 -> if false then Bool else x3910 ) ) ) $ ( if false then Bool else Bool )
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> if d62 then d68 else d318 ) ) ) $ ( if d85 then true else d131 )
        d392 : if false then if true then Bool else Bool else if true then Bool else Bool
        d392 = if ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> d206 ) ) ) $ ( true ) then if true then d294 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> d139 ) ) ) $ ( true )
        d395 : ( ( Set -> Set ) ∋ ( ( λ x3980 -> if true then Bool else x3980 ) ) ) $ ( if false then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if x3960 then false else d309 ) ) ) $ ( d305 ) ) ) ) $ ( if d326 then d206 else false )
        d399 : ( ( Set -> Set ) ∋ ( ( λ x4000 -> ( ( Set -> Set ) ∋ ( ( λ x4010 -> if true then Bool else x4000 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d399 = if if true then d284 else false then if d33 then d53 else d233 else if d245 then false else d245
        d402 : if true then ( ( Set -> Set ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if false then true else x4030 ) ) ) $ ( false ) ) ) ) $ ( if d305 then d284 else true )
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4100 -> if true then Bool else x4100 ) ) ) $ ( if true then Bool else Bool )
        d406 = if ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> d127 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> x4080 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> d149 ) ) ) $ ( d96 )
        d411 : if false then if false then Bool else Bool else if false then Bool else Bool
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> if x4120 then true else true ) ) ) $ ( true ) ) ) ) $ ( if d6 then true else d10 )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> ( ( Set -> Set ) ∋ ( ( λ x4180 -> if true then x4180 else Bool ) ) ) $ ( x4170 ) ) ) ) $ ( if false then Bool else Bool )
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> if true then x4150 else x4150 ) ) ) $ ( true ) ) ) ) $ ( if false then d68 else false )
        d419 : ( ( Set -> Set ) ∋ ( ( λ x4220 -> if false then x4220 else x4220 ) ) ) $ ( if true then Bool else Bool )
        d419 = if if d197 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> d256 ) ) ) $ ( true )
        d423 : if true then ( ( Set -> Set ) ∋ ( ( λ x4260 -> x4260 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d423 = if ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> d263 ) ) ) $ ( true ) then if d206 then d119 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> false ) ) ) $ ( true )
        d427 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> ( ( Set -> Set ) ∋ ( ( λ x4310 -> if true then Bool else Bool ) ) ) $ ( x4300 ) ) ) ) $ ( if false then Bool else Bool )
        d427 = if ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> x4290 ) ) ) $ ( true ) else if d275 then d17 else d131
        d432 : if false then ( ( Set -> Set ) ∋ ( ( λ x4330 -> x4330 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d432 = if if true then true else true then if d102 then false else d402 else if true then true else true
        d434 : ( ( Set -> Set ) ∋ ( ( λ x4370 -> ( ( Set -> Set ) ∋ ( ( λ x4380 -> if false then x4380 else Bool ) ) ) $ ( x4370 ) ) ) ) $ ( if true then Bool else Bool )
        d434 = ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> if true then x4350 else x4360 ) ) ) $ ( x4350 ) ) ) ) $ ( if d24 then true else false )
        d439 : if true then ( ( Set -> Set ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d439 = if if d33 then d153 else false then if d6 then false else false else if false then false else d17
        d441 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if false then x4440 else x4440 ) ) ) $ ( if true then Bool else Bool )
        d441 = if if false then d233 else d256 then ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> x4420 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> x4430 ) ) ) $ ( true )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> ( ( Set -> Set ) ∋ ( ( λ x4490 -> if true then x4480 else x4480 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> if false then d24 else false ) ) ) $ ( x4460 ) ) ) ) $ ( if d225 then d345 else false )
        d450 : if false then ( ( Set -> Set ) ∋ ( ( λ x4520 -> x4520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d450 = if ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> x4510 ) ) ) $ ( false ) then if d414 then false else true else if d190 then false else false
        d453 : if true then ( ( Set -> Set ) ∋ ( ( λ x4550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4560 -> x4560 ) ) ) $ ( Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if x4540 then d10 else false ) ) ) $ ( if d385 then d382 else d385 )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> if x4580 then d206 else false ) ) ) $ ( if true then true else false )
        d460 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4620 -> Bool ) ) ) $ ( Bool )
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if x4610 then d335 else false ) ) ) $ ( if d209 then d453 else false )
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4660 -> ( ( Set -> Set ) ∋ ( ( λ x4670 -> if false then Bool else x4670 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> if x4640 then d364 else false ) ) ) $ ( true ) ) ) ) $ ( if d305 then false else false )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4710 -> if true then Bool else x4710 ) ) ) $ ( if false then Bool else Bool )
        d468 = if if false then d115 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> x4690 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> d233 ) ) ) $ ( d170 )
        d472 : if true then if true then Bool else Bool else if true then Bool else Bool
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if x4730 then d39 else d350 ) ) ) $ ( x4730 ) ) ) ) $ ( if false then false else true )
        d475 : if false then ( ( Set -> Set ) ∋ ( ( λ x4770 -> x4770 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d475 = if if false then true else d153 then if d359 then d92 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> x4760 ) ) ) $ ( false )
        d478 : if true then if true then Bool else Bool else if true then Bool else Bool
        d478 = if ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> false ) ) ) $ ( d267 ) then if d475 then d53 else d326 else if d300 then d157 else d345
        d480 : if false then if true then Bool else Bool else if true then Bool else Bool
        d480 = if if false then d345 else d76 then if true then true else d475 else ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> false ) ) ) $ ( d190 )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x4850 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> if x4840 then true else x4830 ) ) ) $ ( x4830 ) ) ) ) $ ( if d96 then false else true )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4880 -> ( ( Set -> Set ) ∋ ( ( λ x4890 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> if x4870 then true else d165 ) ) ) $ ( if d190 then false else d322 )
        d490 : if true then ( ( Set -> Set ) ∋ ( ( λ x4930 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d490 = ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> if false then x4910 else x4920 ) ) ) $ ( x4910 ) ) ) ) $ ( if true then d28 else false )
        d494 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4960 -> x4960 ) ) ) $ ( Bool )
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> if d439 then true else x4950 ) ) ) $ ( if d475 then d147 else d6 )
        d497 : if true then if false then Bool else Bool else if true then Bool else Bool
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> if d127 then x4980 else true ) ) ) $ ( if d402 then d450 else false )
        d499 : if false then ( ( Set -> Set ) ∋ ( ( λ x5020 -> x5020 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d499 = if ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> true ) ) ) $ ( d6 ) then if true then d36 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> false ) ) ) $ ( true )
        d503 : if false then ( ( Set -> Set ) ∋ ( ( λ x5040 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d503 = if if d216 then d245 else d220 then if true then true else false else if d134 then true else d165
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> ( ( Set -> Set ) ∋ ( ( λ x5090 -> if true then Bool else x5090 ) ) ) $ ( x5080 ) ) ) ) $ ( if true then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> if false then true else x5070 ) ) ) $ ( x5060 ) ) ) ) $ ( if d331 then false else d102 )
        d510 : ( ( Set -> Set ) ∋ ( ( λ x5130 -> ( ( Set -> Set ) ∋ ( ( λ x5140 -> if false then Bool else x5130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d510 = ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> if x5110 then d233 else x5110 ) ) ) $ ( d427 ) ) ) ) $ ( if d326 then false else true )
        d515 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d515 = if ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> false ) ) ) $ ( d468 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> x5180 ) ) ) $ ( false )
        d520 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5210 -> Bool ) ) ) $ ( Bool )
        d520 = if if true then d335 else d402 then if false then true else d111 else if d53 then d480 else d389
        d522 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> if true then x5250 else x5250 ) ) ) $ ( if false then Bool else Bool )
        d522 = if ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> d256 ) ) ) $ ( false ) then if true then d490 else d475 else ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> x5240 ) ) ) $ ( false )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x5280 -> ( ( Set -> Set ) ∋ ( ( λ x5290 -> if true then x5290 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d526 = ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if d233 then false else true ) ) ) $ ( if false then d237 else d89 )
        d530 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> ( ( Set -> Set ) ∋ ( ( λ x5340 -> if true then x5330 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if d153 then x5310 else x5310 ) ) ) $ ( false ) ) ) ) $ ( if d202 then d526 else d20 )
        d535 : if true then ( ( Set -> Set ) ∋ ( ( λ x5380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5390 -> Bool ) ) ) $ ( Bool )
        d535 = if ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( d510 ) then if true then true else d378 else ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> true ) ) ) $ ( d411 )
        d540 : if true then ( ( Set -> Set ) ∋ ( ( λ x5430 -> x5430 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> if x5420 then false else d472 ) ) ) $ ( x5410 ) ) ) ) $ ( if d225 then true else true )
        d544 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> ( ( Set -> Set ) ∋ ( ( λ x5470 -> if false then Bool else x5470 ) ) ) $ ( x5460 ) ) ) ) $ ( if true then Bool else Bool )
        d544 = if ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> d233 ) ) ) $ ( false ) then if d414 then true else true else if false then d345 else d131
        d548 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> if true then false else d309 ) ) ) $ ( if d24 then d28 else true )
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5540 -> if true then Bool else x5540 ) ) ) $ ( if false then Bool else Bool )
        d551 = if ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> d480 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> d478 ) ) ) $ ( d119 ) else if d439 then false else true
        d555 : if false then ( ( Set -> Set ) ∋ ( ( λ x5580 -> x5580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d555 = if ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> false ) ) ) $ ( true ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> d402 ) ) ) $ ( d494 )
        d559 : if false then if true then Bool else Bool else if true then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if false then false else x5600 ) ) ) $ ( if d209 then false else true )
        d561 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5630 -> Bool ) ) ) $ ( Bool )
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> if d373 then x5620 else x5620 ) ) ) $ ( if false then d139 else true )
        d564 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5670 -> x5670 ) ) ) $ ( Bool )
        d564 = if ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> x5650 ) ) ) $ ( true ) then if d24 then d256 else d206 else ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> x5660 ) ) ) $ ( d10 )
        d568 : if false then if false then Bool else Bool else if false then Bool else Bool
        d568 = if ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> x5690 ) ) ) $ ( d58 ) then if false then d453 else d486 else if false then true else true
        d570 : ( ( Set -> Set ) ∋ ( ( λ x5720 -> ( ( Set -> Set ) ∋ ( ( λ x5730 -> if false then Bool else x5720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if x5710 then d245 else d564 ) ) ) $ ( if d53 then d463 else false )
        d574 : ( ( Set -> Set ) ∋ ( ( λ x5780 -> ( ( Set -> Set ) ∋ ( ( λ x5790 -> if true then x5780 else x5780 ) ) ) $ ( x5780 ) ) ) ) $ ( if true then Bool else Bool )
        d574 = if ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> x5760 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> x5770 ) ) ) $ ( true )
        d580 : if false then ( ( Set -> Set ) ∋ ( ( λ x5830 -> x5830 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> ( ( Bool -> Bool ) ∋ ( ( λ x5820 -> if x5810 then x5810 else x5810 ) ) ) $ ( d378 ) ) ) ) $ ( if false then d497 else d245 )
        d584 : ( ( Set -> Set ) ∋ ( ( λ x5860 -> ( ( Set -> Set ) ∋ ( ( λ x5870 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> if d80 then d341 else x5850 ) ) ) $ ( if false then false else d331 )
        d588 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5910 -> x5910 ) ) ) $ ( Bool )
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> if d80 then d402 else d486 ) ) ) $ ( true ) ) ) ) $ ( if d122 then d326 else d284 )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x5940 -> ( ( Set -> Set ) ∋ ( ( λ x5950 -> if false then Bool else Bool ) ) ) $ ( x5940 ) ) ) ) $ ( if true then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> if d472 then false else d544 ) ) ) $ ( if d544 then d570 else false )
        d596 : if false then if false then Bool else Bool else if false then Bool else Bool
        d596 = if if true then true else true then if d300 then false else false else if d263 then d252 else true
        d597 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6010 -> x6010 ) ) ) $ ( Bool )
        d597 = if ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> d378 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> d36 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> false ) ) ) $ ( true )
        d602 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6040 -> x6040 ) ) ) $ ( Bool )
        d602 = if ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> x6030 ) ) ) $ ( true ) then if false then d193 else true else if false then true else d58
        d605 : ( ( Set -> Set ) ∋ ( ( λ x6070 -> ( ( Set -> Set ) ∋ ( ( λ x6080 -> if false then x6080 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d605 = if ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> x6060 ) ) ) $ ( d499 ) then if d406 then d389 else true else if false then d540 else true
        d609 : if true then ( ( Set -> Set ) ∋ ( ( λ x6120 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d609 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x6100 -> x6100 ) ) ) $ ( d472 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> x6110 ) ) ) $ ( true )
        d613 : ( ( Set -> Set ) ∋ ( ( λ x6160 -> ( ( Set -> Set ) ∋ ( ( λ x6170 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d613 = if ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> x6140 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> d520 ) ) ) $ ( false ) else if d249 then false else true
        d618 : ( ( Set -> Set ) ∋ ( ( λ x6210 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d618 = if ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> false ) ) ) $ ( true ) then if d131 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> true ) ) ) $ ( d389 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x6250 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> if d350 then x6240 else d17 ) ) ) $ ( false ) ) ) ) $ ( if false then d505 else d111 )
        d626 : ( ( Set -> Set ) ∋ ( ( λ x6270 -> ( ( Set -> Set ) ∋ ( ( λ x6280 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d626 = if if false then true else false then if d602 then d161 else true else if true then d58 else d482
        d629 : ( ( Set -> Set ) ∋ ( ( λ x6320 -> ( ( Set -> Set ) ∋ ( ( λ x6330 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> ( ( Bool -> Bool ) ∋ ( ( λ x6310 -> if x6300 then true else x6300 ) ) ) $ ( false ) ) ) ) $ ( if d53 then d197 else d356 )
        d634 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6360 -> Bool ) ) ) $ ( Bool )
        d634 = if if false then d622 else d368 then ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> false ) ) ) $ ( d230 ) else if d280 then false else d102
        d637 : ( ( Set -> Set ) ∋ ( ( λ x6400 -> if true then x6400 else Bool ) ) ) $ ( if false then Bool else Bool )
        d637 = if if false then false else d157 then ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6390 -> d46 ) ) ) $ ( false )
        d641 : ( ( Set -> Set ) ∋ ( ( λ x6430 -> if false then Bool else x6430 ) ) ) $ ( if true then Bool else Bool )
        d641 = ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> if x6420 then true else false ) ) ) $ ( if d237 then false else d602 )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x6470 -> if true then Bool else x6470 ) ) ) $ ( if false then Bool else Bool )
        d644 = ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> if x6460 then x6450 else x6450 ) ) ) $ ( false ) ) ) ) $ ( if false then d580 else d634 )
        d648 : ( ( Set -> Set ) ∋ ( ( λ x6510 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d648 = if ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> d555 ) ) ) $ ( d39 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> x6500 ) ) ) $ ( d284 ) else if false then d256 else d85
        d652 : if true then ( ( Set -> Set ) ∋ ( ( λ x6540 -> x6540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6550 -> x6550 ) ) ) $ ( Bool )
        d652 = if if d510 then d280 else false then if d161 then d522 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6530 -> d131 ) ) ) $ ( d439 )
        d656 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6580 -> x6580 ) ) ) $ ( Bool )
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x6570 -> if x6570 then d637 else true ) ) ) $ ( if true then d439 else false )
        d659 : if true then ( ( Set -> Set ) ∋ ( ( λ x6620 -> x6620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6630 -> x6630 ) ) ) $ ( Bool )
        d659 = if ( ( Bool -> Bool ) ∋ ( ( λ x6600 -> x6600 ) ) ) $ ( d17 ) then if false then false else d10 else ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> x6610 ) ) ) $ ( d526 )
        d664 : ( ( Set -> Set ) ∋ ( ( λ x6660 -> if false then x6660 else x6660 ) ) ) $ ( if true then Bool else Bool )
        d664 = if if d149 then d652 else false then if false then true else d233 else ( ( Bool -> Bool ) ∋ ( ( λ x6650 -> x6650 ) ) ) $ ( d609 )
        d667 : ( ( Set -> Set ) ∋ ( ( λ x6700 -> if true then Bool else x6700 ) ) ) $ ( if false then Bool else Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> if x6680 then x6680 else false ) ) ) $ ( x6680 ) ) ) ) $ ( if false then true else d596 )
        d671 : ( ( Set -> Set ) ∋ ( ( λ x6730 -> if true then x6730 else Bool ) ) ) $ ( if false then Bool else Bool )
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> if false then d503 else d574 ) ) ) $ ( if d356 then d122 else d609 )
        d674 : if true then if true then Bool else Bool else if true then Bool else Bool
        d674 = if ( ( Bool -> Bool ) ∋ ( ( λ x6750 -> true ) ) ) $ ( true ) then if d472 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> x6760 ) ) ) $ ( false )
        d677 : ( ( Set -> Set ) ∋ ( ( λ x6790 -> ( ( Set -> Set ) ∋ ( ( λ x6800 -> if true then x6800 else x6790 ) ) ) $ ( x6790 ) ) ) ) $ ( if true then Bool else Bool )
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> if d290 then x6780 else x6780 ) ) ) $ ( if d99 then d584 else true )
        d681 : if false then ( ( Set -> Set ) ∋ ( ( λ x6830 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d681 = if if false then d515 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> x6820 ) ) ) $ ( false ) else if d475 then false else d482
        d684 : if true then ( ( Set -> Set ) ∋ ( ( λ x6850 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d684 = if if d280 then true else d427 then if d399 then d441 else true else if d28 then d561 else d475
        d686 : ( ( Set -> Set ) ∋ ( ( λ x6870 -> if true then x6870 else x6870 ) ) ) $ ( if false then Bool else Bool )
        d686 = if if d17 then d637 else d297 then if false then d637 else false else if false then false else d681
        d688 : ( ( Set -> Set ) ∋ ( ( λ x6920 -> if false then Bool else x6920 ) ) ) $ ( if false then Bool else Bool )
        d688 = if ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> d475 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> d450 ) ) ) $ ( d290 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> d592 ) ) ) $ ( d99 )
        d693 : ( ( Set -> Set ) ∋ ( ( λ x6940 -> if false then x6940 else x6940 ) ) ) $ ( if false then Bool else Bool )
        d693 = if if d220 then true else d460 then if d555 then d225 else false else if false then true else false
        d695 : ( ( Set -> Set ) ∋ ( ( λ x6980 -> ( ( Set -> Set ) ∋ ( ( λ x6990 -> if false then x6980 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d695 = ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> if x6970 then false else true ) ) ) $ ( x6960 ) ) ) ) $ ( if true then d364 else d209 )
        d700 : ( ( Set -> Set ) ∋ ( ( λ x7030 -> ( ( Set -> Set ) ∋ ( ( λ x7040 -> if true then Bool else Bool ) ) ) $ ( x7030 ) ) ) ) $ ( if false then Bool else Bool )
        d700 = if if false then d50 else d170 then ( ( Bool -> Bool ) ∋ ( ( λ x7010 -> d252 ) ) ) $ ( d96 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> false ) ) ) $ ( true )
        d705 : ( ( Set -> Set ) ∋ ( ( λ x7080 -> if false then Bool else x7080 ) ) ) $ ( if true then Bool else Bool )
        d705 = if if d165 then false else d520 then ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> true ) ) ) $ ( d185 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7070 -> x7070 ) ) ) $ ( true )
        d709 : if true then ( ( Set -> Set ) ∋ ( ( λ x7120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7130 -> Bool ) ) ) $ ( Bool )
        d709 = if ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> x7100 ) ) ) $ ( d62 ) then if d395 then d399 else d305 else ( ( Bool -> Bool ) ∋ ( ( λ x7110 -> true ) ) ) $ ( d482 )
        d714 : if true then ( ( Set -> Set ) ∋ ( ( λ x7160 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d714 = if ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> true ) ) ) $ ( d202 ) then if false then d602 else false else if d399 then d202 else false
        d717 : ( ( Set -> Set ) ∋ ( ( λ x7200 -> if false then x7200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d717 = if ( ( Bool -> Bool ) ∋ ( ( λ x7180 -> false ) ) ) $ ( d644 ) then if true then d540 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> true ) ) ) $ ( d53 )
        d721 : if false then ( ( Set -> Set ) ∋ ( ( λ x7230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d721 = if ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> true ) ) ) $ ( false ) then if d119 then false else false else if d499 then d463 else d39
        d724 : ( ( Set -> Set ) ∋ ( ( λ x7260 -> if false then x7260 else Bool ) ) ) $ ( if true then Bool else Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> if d368 then d605 else d641 ) ) ) $ ( if false then d392 else false )
        d727 : ( ( Set -> Set ) ∋ ( ( λ x7290 -> ( ( Set -> Set ) ∋ ( ( λ x7300 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> if x7280 then x7280 else true ) ) ) $ ( if d92 then d43 else d385 )
        d731 : if false then if true then Bool else Bool else if false then Bool else Bool
        d731 = if ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7340 -> false ) ) ) $ ( d686 )
        d735 : if true then ( ( Set -> Set ) ∋ ( ( λ x7370 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> if x7360 then true else x7360 ) ) ) $ ( if false then d535 else false )
        d738 : if true then ( ( Set -> Set ) ∋ ( ( λ x7390 -> x7390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7400 -> Bool ) ) ) $ ( Bool )
        d738 = if if d526 then true else false then if true then true else d695 else if true then false else true
        d741 : if false then ( ( Set -> Set ) ∋ ( ( λ x7440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7450 -> Bool ) ) ) $ ( Bool )
        d741 = ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> if x7430 then x7430 else x7430 ) ) ) $ ( false ) ) ) ) $ ( if d335 then true else d686 )
        d746 : ( ( Set -> Set ) ∋ ( ( λ x7470 -> ( ( Set -> Set ) ∋ ( ( λ x7480 -> if false then x7470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d746 = if if d494 then d108 else d71 then if d318 then d695 else true else if d659 then d161 else d20
        d749 : if false then ( ( Set -> Set ) ∋ ( ( λ x7510 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7520 -> Bool ) ) ) $ ( Bool )
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> if d139 then true else true ) ) ) $ ( if false then d6 else d419 )
        d753 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7560 -> x7560 ) ) ) $ ( Bool )
        d753 = if ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> x7540 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7550 -> false ) ) ) $ ( d629 ) else if d648 then d43 else d399
        d757 : if false then ( ( Set -> Set ) ∋ ( ( λ x7590 -> x7590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7600 -> x7600 ) ) ) $ ( Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> if true then x7580 else d659 ) ) ) $ ( if true then false else false )
        d761 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7650 -> x7650 ) ) ) $ ( Bool )
        d761 = if ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> d580 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> x7630 ) ) ) $ ( d503 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> true ) ) ) $ ( true )
        d766 : if true then ( ( Set -> Set ) ∋ ( ( λ x7680 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> if true then x7670 else d656 ) ) ) $ ( if d241 then d104 else d414 )
        d769 : if true then if false then Bool else Bool else if false then Bool else Bool
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> if d561 then x7700 else false ) ) ) $ ( x7700 ) ) ) ) $ ( if d53 then d674 else false )
        d772 : ( ( Set -> Set ) ∋ ( ( λ x7740 -> if true then x7740 else x7740 ) ) ) $ ( if false then Bool else Bool )
        d772 = if ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> false ) ) ) $ ( true ) then if true then true else d68 else if false then d637 else false
        d775 : if true then ( ( Set -> Set ) ∋ ( ( λ x7770 -> x7770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7780 -> Bool ) ) ) $ ( Bool )
        d775 = ( ( Bool -> Bool ) ∋ ( ( λ x7760 -> if d256 then x7760 else x7760 ) ) ) $ ( if true then false else d267 )
        d779 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7820 -> x7820 ) ) ) $ ( Bool )
        d779 = ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> if d252 then d76 else d441 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d783 : ( ( Set -> Set ) ∋ ( ( λ x7860 -> if false then x7860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d783 = ( ( Bool -> Bool ) ∋ ( ( λ x7840 -> ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> if x7840 then true else d174 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d787 : ( ( Set -> Set ) ∋ ( ( λ x7890 -> if false then x7890 else Bool ) ) ) $ ( if true then Bool else Bool )
        d787 = if ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> d555 ) ) ) $ ( false ) then if d364 then true else true else if true then true else d368
        d790 : if false then if false then Bool else Bool else if true then Bool else Bool
        d790 = ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> if d104 then false else x7910 ) ) ) $ ( if true then false else false )
        d792 : ( ( Set -> Set ) ∋ ( ( λ x7940 -> ( ( Set -> Set ) ∋ ( ( λ x7950 -> if true then Bool else x7940 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d792 = if if true then d441 else d568 then if d153 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> x7930 ) ) ) $ ( d131 )
        d796 : ( ( Set -> Set ) ∋ ( ( λ x7970 -> if true then x7970 else x7970 ) ) ) $ ( if false then Bool else Bool )
        d796 = if if d385 then false else false then if d170 then d206 else false else if true then d104 else d626
        d798 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8010 -> x8010 ) ) ) $ ( Bool )
        d798 = if ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> x7990 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> x8000 ) ) ) $ ( d359 ) else if true then true else true
        d802 : ( ( Set -> Set ) ∋ ( ( λ x8060 -> ( ( Set -> Set ) ∋ ( ( λ x8070 -> if true then x8060 else x8060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d802 = if ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> d341 ) ) ) $ ( d294 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8050 -> d36 ) ) ) $ ( d395 )
        d808 : ( ( Set -> Set ) ∋ ( ( λ x8100 -> ( ( Set -> Set ) ∋ ( ( λ x8110 -> if true then x8100 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d808 = ( ( Bool -> Bool ) ∋ ( ( λ x8090 -> if d792 then d134 else true ) ) ) $ ( if d463 then false else d1 )
        d812 : if true then if false then Bool else Bool else if true then Bool else Bool
        d812 = ( ( Bool -> Bool ) ∋ ( ( λ x8130 -> if d540 then d677 else false ) ) ) $ ( if true then true else d338 )
        d814 : if true then if false then Bool else Bool else if false then Bool else Bool
        d814 = ( ( Bool -> Bool ) ∋ ( ( λ x8150 -> ( ( Bool -> Bool ) ∋ ( ( λ x8160 -> if x8160 then true else false ) ) ) $ ( d637 ) ) ) ) $ ( if d510 then true else d441 )
        d817 : if false then ( ( Set -> Set ) ∋ ( ( λ x8200 -> x8200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8210 -> x8210 ) ) ) $ ( Bool )
        d817 = if ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> d503 ) ) ) $ ( true ) then if d584 then d356 else d548 else ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> x8190 ) ) ) $ ( d345 )
        d822 : if false then if false then Bool else Bool else if false then Bool else Bool
        d822 = ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> if false then false else d36 ) ) ) $ ( if d143 then false else false )
        d824 : if true then ( ( Set -> Set ) ∋ ( ( λ x8270 -> x8270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8280 -> Bool ) ) ) $ ( Bool )
        d824 = if ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> false ) ) ) $ ( d510 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8260 -> x8260 ) ) ) $ ( true ) else if true then false else d139
        d829 : if true then if false then Bool else Bool else if true then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> if d96 then x8300 else true ) ) ) $ ( x8300 ) ) ) ) $ ( if true then d588 else true )
        d832 : ( ( Set -> Set ) ∋ ( ( λ x8350 -> if false then Bool else x8350 ) ) ) $ ( if true then Bool else Bool )
        d832 = ( ( Bool -> Bool ) ∋ ( ( λ x8330 -> ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> if x8330 then d131 else d766 ) ) ) $ ( d419 ) ) ) ) $ ( if true then false else false )
        d836 : ( ( Set -> Set ) ∋ ( ( λ x8390 -> ( ( Set -> Set ) ∋ ( ( λ x8400 -> if true then x8400 else Bool ) ) ) $ ( x8390 ) ) ) ) $ ( if false then Bool else Bool )
        d836 = ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> if true then d406 else x8380 ) ) ) $ ( d749 ) ) ) ) $ ( if d331 then false else false )
        d841 : if true then ( ( Set -> Set ) ∋ ( ( λ x8430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8440 -> Bool ) ) ) $ ( Bool )
        d841 = if if true then false else d71 then ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> true ) ) ) $ ( true ) else if true then d402 else d497
        d845 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8480 -> x8480 ) ) ) $ ( Bool )
        d845 = ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> ( ( Bool -> Bool ) ∋ ( ( λ x8470 -> if x8460 then false else x8460 ) ) ) $ ( false ) ) ) ) $ ( if d80 then d540 else false )
        d849 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8510 -> Bool ) ) ) $ ( Bool )
        d849 = if if true then d147 else d10 then if true then false else d829 else ( ( Bool -> Bool ) ∋ ( ( λ x8500 -> x8500 ) ) ) $ ( d423 )
        d852 : if true then if true then Bool else Bool else if true then Bool else Bool
        d852 = if if true then d220 else true then if true then d300 else false else if true then false else false
        d853 : if true then if false then Bool else Bool else if true then Bool else Bool
        d853 = ( ( Bool -> Bool ) ∋ ( ( λ x8540 -> if d275 then d174 else x8540 ) ) ) $ ( if d561 then d588 else d220 )
        d855 : ( ( Set -> Set ) ∋ ( ( λ x8580 -> ( ( Set -> Set ) ∋ ( ( λ x8590 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d855 = ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> if x8560 then x8560 else d829 ) ) ) $ ( x8560 ) ) ) ) $ ( if false then false else d787 )
        d860 : ( ( Set -> Set ) ∋ ( ( λ x8620 -> ( ( Set -> Set ) ∋ ( ( λ x8630 -> if false then x8630 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> if false then d686 else d468 ) ) ) $ ( if d17 then false else true )
        d864 : if true then ( ( Set -> Set ) ∋ ( ( λ x8660 -> x8660 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d864 = if ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> x8650 ) ) ) $ ( false ) then if d845 then true else d157 else if d688 then d741 else true
        d867 : ( ( Set -> Set ) ∋ ( ( λ x8700 -> ( ( Set -> Set ) ∋ ( ( λ x8710 -> if false then Bool else Bool ) ) ) $ ( x8700 ) ) ) ) $ ( if true then Bool else Bool )
        d867 = if ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> d122 ) ) ) $ ( d709 ) then if false then d717 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> x8690 ) ) ) $ ( false )
        d872 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8740 -> x8740 ) ) ) $ ( Bool )
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x8730 -> if x8730 then x8730 else false ) ) ) $ ( if d17 then true else d659 )
        d875 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8780 -> x8780 ) ) ) $ ( Bool )
        d875 = ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> if false then d206 else d331 ) ) ) $ ( d855 ) ) ) ) $ ( if false then d439 else d860 )
        d879 : if false then if false then Bool else Bool else if false then Bool else Bool
        d879 = ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> if x8800 then d832 else d596 ) ) ) $ ( if d392 then d724 else false )
        d881 : if false then ( ( Set -> Set ) ∋ ( ( λ x8840 -> x8840 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8850 -> x8850 ) ) ) $ ( Bool )
        d881 = if if false then d674 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8820 -> d385 ) ) ) $ ( d50 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8830 -> x8830 ) ) ) $ ( true )
        d886 : if false then ( ( Set -> Set ) ∋ ( ( λ x8890 -> x8890 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d886 = if ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> x8870 ) ) ) $ ( d836 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( d122 ) else if true then d76 else false
        d890 : if false then if true then Bool else Bool else if true then Bool else Bool
        d890 = if ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> x8910 ) ) ) $ ( true ) then if true then true else false else if d414 then true else true
        d892 : ( ( Set -> Set ) ∋ ( ( λ x8950 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d892 = ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> if d812 then x8940 else true ) ) ) $ ( true ) ) ) ) $ ( if d686 then d270 else true )
        d896 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8990 -> x8990 ) ) ) $ ( Bool )
        d896 = ( ( Bool -> Bool ) ∋ ( ( λ x8970 -> ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> if true then false else d522 ) ) ) $ ( x8970 ) ) ) ) $ ( if d445 then d216 else true )
        d900 : ( ( Set -> Set ) ∋ ( ( λ x9040 -> ( ( Set -> Set ) ∋ ( ( λ x9050 -> if true then Bool else x9040 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d900 = if ( ( Bool -> Bool ) ∋ ( ( λ x9010 -> x9010 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9020 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> d772 ) ) ) $ ( false )
        d906 : if false then if true then Bool else Bool else if false then Bool else Bool
        d906 = ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> if true then d241 else false ) ) ) $ ( if d275 then d161 else d584 )
        d908 : if false then ( ( Set -> Set ) ∋ ( ( λ x9120 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d908 = if ( ( Bool -> Bool ) ∋ ( ( λ x9090 -> d216 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9100 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9110 -> d300 ) ) ) $ ( false )
        d913 : ( ( Set -> Set ) ∋ ( ( λ x9150 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d913 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> x9140 ) ) ) $ ( false ) else if d411 then d43 else d134
        d916 : ( ( Set -> Set ) ∋ ( ( λ x9190 -> if true then x9190 else x9190 ) ) ) $ ( if false then Bool else Bool )
        d916 = if ( ( Bool -> Bool ) ∋ ( ( λ x9170 -> d783 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9180 -> d535 ) ) ) $ ( true ) else if d147 then true else true
        d920 : if false then if false then Bool else Bool else if false then Bool else Bool
        d920 = if ( ( Bool -> Bool ) ∋ ( ( λ x9210 -> false ) ) ) $ ( d209 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> true ) ) ) $ ( d411 ) else if d667 then false else false
        d923 : ( ( Set -> Set ) ∋ ( ( λ x9250 -> if true then x9250 else Bool ) ) ) $ ( if false then Bool else Bool )
        d923 = ( ( Bool -> Bool ) ∋ ( ( λ x9240 -> if x9240 then false else d746 ) ) ) $ ( if true then d864 else true )
        d926 : ( ( Set -> Set ) ∋ ( ( λ x9300 -> if true then x9300 else x9300 ) ) ) $ ( if false then Bool else Bool )
        d926 = if ( ( Bool -> Bool ) ∋ ( ( λ x9270 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> true ) ) ) $ ( d256 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> x9290 ) ) ) $ ( d637 )
        d931 : ( ( Set -> Set ) ∋ ( ( λ x9350 -> if false then x9350 else x9350 ) ) ) $ ( if false then Bool else Bool )
        d931 = if ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> d674 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9330 -> d746 ) ) ) $ ( d522 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9340 -> x9340 ) ) ) $ ( true )
        d936 : ( ( Set -> Set ) ∋ ( ( λ x9400 -> if false then x9400 else x9400 ) ) ) $ ( if true then Bool else Bool )
        d936 = if ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> d875 ) ) ) $ ( d305 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> d535 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9390 -> d860 ) ) ) $ ( d225 )
        d941 : ( ( Set -> Set ) ∋ ( ( λ x9420 -> if false then x9420 else Bool ) ) ) $ ( if false then Bool else Bool )
        d941 = if if false then true else true then if d131 then false else false else if true then true else d798
        d943 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9450 -> Bool ) ) ) $ ( Bool )
        d943 = if if false then d705 else d190 then ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> d287 ) ) ) $ ( d170 ) else if true then d923 else d709
        d946 : ( ( Set -> Set ) ∋ ( ( λ x9480 -> ( ( Set -> Set ) ∋ ( ( λ x9490 -> if true then x9480 else x9490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d946 = if if false then d605 else d382 then ( ( Bool -> Bool ) ∋ ( ( λ x9470 -> d267 ) ) ) $ ( d772 ) else if false then false else true
        d950 : ( ( Set -> Set ) ∋ ( ( λ x9510 -> if true then x9510 else x9510 ) ) ) $ ( if true then Bool else Bool )
        d950 = if if false then false else false then if d875 then true else d237 else if false then false else d936
        d952 : ( ( Set -> Set ) ∋ ( ( λ x9540 -> if false then x9540 else x9540 ) ) ) $ ( if false then Bool else Bool )
        d952 = ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> if true then false else true ) ) ) $ ( if false then d453 else d92 )
        d955 : if false then ( ( Set -> Set ) ∋ ( ( λ x9570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9580 -> Bool ) ) ) $ ( Bool )
        d955 = ( ( Bool -> Bool ) ∋ ( ( λ x9560 -> if x9560 then d395 else x9560 ) ) ) $ ( if d641 then true else false )
        d959 : ( ( Set -> Set ) ∋ ( ( λ x9620 -> ( ( Set -> Set ) ∋ ( ( λ x9630 -> if true then Bool else x9620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d959 = ( ( Bool -> Bool ) ∋ ( ( λ x9600 -> ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> if d814 then x9610 else true ) ) ) $ ( d76 ) ) ) ) $ ( if false then true else false )
        d964 : ( ( Set -> Set ) ∋ ( ( λ x9660 -> ( ( Set -> Set ) ∋ ( ( λ x9670 -> if false then Bool else x9660 ) ) ) $ ( x9660 ) ) ) ) $ ( if true then Bool else Bool )
        d964 = if if d445 then d389 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> false ) ) ) $ ( d252 ) else if d402 then true else d530
        d968 : if true then ( ( Set -> Set ) ∋ ( ( λ x9710 -> x9710 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d968 = ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> if d439 then false else true ) ) ) $ ( x9690 ) ) ) ) $ ( if d402 then d382 else d338 )
        d972 : ( ( Set -> Set ) ∋ ( ( λ x9730 -> ( ( Set -> Set ) ∋ ( ( λ x9740 -> if false then Bool else x9730 ) ) ) $ ( x9730 ) ) ) ) $ ( if false then Bool else Bool )
        d972 = if if false then false else d395 then if true then d249 else true else if d808 then d568 else d10
        d975 : ( ( Set -> Set ) ∋ ( ( λ x9780 -> ( ( Set -> Set ) ∋ ( ( λ x9790 -> if true then Bool else x9780 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d975 = if ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> d735 ) ) ) $ ( d36 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9770 -> false ) ) ) $ ( true ) else if false then true else true
        d980 : ( ( Set -> Set ) ∋ ( ( λ x9830 -> ( ( Set -> Set ) ∋ ( ( λ x9840 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d980 = if ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> d855 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> d225 ) ) ) $ ( true ) else if d33 then d564 else false
        d985 : if false then ( ( Set -> Set ) ∋ ( ( λ x9880 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d985 = ( ( Bool -> Bool ) ∋ ( ( λ x9860 -> ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> if d959 then d900 else d946 ) ) ) $ ( false ) ) ) ) $ ( if d772 then d434 else d480 )
        d989 : ( ( Set -> Set ) ∋ ( ( λ x9910 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d989 = if if d350 then true else true then if d535 then d206 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9900 -> x9900 ) ) ) $ ( true )
        d992 : if true then ( ( Set -> Set ) ∋ ( ( λ x9930 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d992 = if if false then d686 else d510 then if d588 then true else d313 else if true then d216 else d99
        d994 : ( ( Set -> Set ) ∋ ( ( λ x9960 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d994 = ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> if x9950 then d510 else false ) ) ) $ ( if true then false else false )
        d997 : ( ( Set -> Set ) ∋ ( ( λ x10000 -> if false then Bool else x10000 ) ) ) $ ( if true then Bool else Bool )
        d997 = if ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> x9980 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> true ) ) ) $ ( false ) else if false then d936 else true
        d1001 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10040 -> x10040 ) ) ) $ ( Bool )
        d1001 = ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> ( ( Bool -> Bool ) ∋ ( ( λ x10030 -> if x10020 then x10020 else false ) ) ) $ ( true ) ) ) ) $ ( if d503 then false else true )
        d1005 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1005 = ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> if x10060 then false else false ) ) ) $ ( if d618 then true else d540 )
        d1007 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10100 -> Bool ) ) ) $ ( Bool )
        d1007 = ( ( Bool -> Bool ) ∋ ( ( λ x10080 -> ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> if true then x10090 else x10090 ) ) ) $ ( x10080 ) ) ) ) $ ( if d926 then true else true )
        d1011 : ( ( Set -> Set ) ∋ ( ( λ x10140 -> if true then x10140 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> if d33 then d757 else d849 ) ) ) $ ( d808 ) ) ) ) $ ( if false then false else d822 )
        d1015 : ( ( Set -> Set ) ∋ ( ( λ x10170 -> ( ( Set -> Set ) ∋ ( ( λ x10180 -> if false then Bool else x10170 ) ) ) $ ( x10170 ) ) ) ) $ ( if true then Bool else Bool )
        d1015 = if if false then d260 else false then ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> true ) ) ) $ ( true ) else if false then d802 else true
        d1019 : ( ( Set -> Set ) ∋ ( ( λ x10210 -> if false then x10210 else x10210 ) ) ) $ ( if true then Bool else Bool )
        d1019 = ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> if x10200 then true else true ) ) ) $ ( if false then false else false )
        d1022 : if false then ( ( Set -> Set ) ∋ ( ( λ x10250 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1022 = if ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> d735 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10240 -> true ) ) ) $ ( d824 ) else if false then d522 else d395
        d1026 : if true then ( ( Set -> Set ) ∋ ( ( λ x10300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10310 -> x10310 ) ) ) $ ( Bool )
        d1026 = if ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10280 -> x10280 ) ) ) $ ( d824 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> false ) ) ) $ ( d787 )
        d1032 : if false then ( ( Set -> Set ) ∋ ( ( λ x10350 -> x10350 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1032 = ( ( Bool -> Bool ) ∋ ( ( λ x10330 -> ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> if x10330 then true else false ) ) ) $ ( d411 ) ) ) ) $ ( if true then d127 else d994 )
        d1036 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10390 -> Bool ) ) ) $ ( Bool )
        d1036 = ( ( Bool -> Bool ) ∋ ( ( λ x10370 -> ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> if x10370 then true else true ) ) ) $ ( d881 ) ) ) ) $ ( if d209 then false else d275 )
        d1040 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> ( ( Set -> Set ) ∋ ( ( λ x10440 -> if true then x10430 else x10440 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1040 = ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> if x10420 then d626 else d652 ) ) ) $ ( d193 ) ) ) ) $ ( if d714 then d341 else true )
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x10470 -> ( ( Set -> Set ) ∋ ( ( λ x10480 -> if true then Bool else Bool ) ) ) $ ( x10470 ) ) ) ) $ ( if true then Bool else Bool )
        d1045 = ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> if true then true else x10460 ) ) ) $ ( if true then d24 else true )
        d1049 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1049 = if if d923 then d1007 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> false ) ) ) $ ( d309 )
        d1052 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1052 = if if false then true else d561 then ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> d475 ) ) ) $ ( true ) else if false then false else d331
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x10550 -> if false then x10550 else x10550 ) ) ) $ ( if true then Bool else Bool )
        d1054 = if if d122 then d153 else d648 then if d822 then d574 else false else if d373 then d463 else d402
        d1056 : ( ( Set -> Set ) ∋ ( ( λ x10580 -> if false then x10580 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1056 = ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> if x10570 then false else d385 ) ) ) $ ( if d968 then d102 else d237 )
        d1059 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1059 = ( ( Bool -> Bool ) ∋ ( ( λ x10600 -> if x10600 then true else x10600 ) ) ) $ ( if true then true else d122 )
        d1061 : if true then ( ( Set -> Set ) ∋ ( ( λ x10650 -> x10650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10660 -> Bool ) ) ) $ ( Bool )
        d1061 = if ( ( Bool -> Bool ) ∋ ( ( λ x10620 -> d626 ) ) ) $ ( d695 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> true ) ) ) $ ( d423 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10640 -> x10640 ) ) ) $ ( d165 )
        d1067 : ( ( Set -> Set ) ∋ ( ( λ x10700 -> ( ( Set -> Set ) ∋ ( ( λ x10710 -> if true then Bool else x10710 ) ) ) $ ( x10700 ) ) ) ) $ ( if true then Bool else Bool )
        d1067 = if if d597 then d618 else d256 then ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> x10690 ) ) ) $ ( d131 )
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> if true then x10740 else x10740 ) ) ) $ ( if false then Bool else Bool )
        d1072 = if if false then d472 else d693 then if d530 then false else d618 else ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> true ) ) ) $ ( d867 )
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x10780 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1075 = if ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> false ) ) ) $ ( d80 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> x10770 ) ) ) $ ( d39 ) else if d20 then d920 else d769
        d1079 : ( ( Set -> Set ) ∋ ( ( λ x10820 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1079 = ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> if x10810 then d972 else false ) ) ) $ ( d414 ) ) ) ) $ ( if d406 then d950 else false )
        d1083 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1083 = if ( ( Bool -> Bool ) ∋ ( ( λ x10840 -> x10840 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> x10850 ) ) ) $ ( d955 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> x10860 ) ) ) $ ( false )
        d1087 : ( ( Set -> Set ) ∋ ( ( λ x10890 -> ( ( Set -> Set ) ∋ ( ( λ x10900 -> if false then Bool else x10890 ) ) ) $ ( x10890 ) ) ) ) $ ( if false then Bool else Bool )
        d1087 = if if true then true else true then if true then d245 else d596 else ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> x10880 ) ) ) $ ( false )
        d1091 : ( ( Set -> Set ) ∋ ( ( λ x10930 -> ( ( Set -> Set ) ∋ ( ( λ x10940 -> if false then x10930 else x10940 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> if false then d955 else x10920 ) ) ) $ ( if d71 then d926 else d900 )
        d1095 : ( ( Set -> Set ) ∋ ( ( λ x10960 -> if false then Bool else x10960 ) ) ) $ ( if true then Bool else Bool )
        d1095 = if if true then false else d879 then if d165 then false else d43 else if d62 then false else d104
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x10990 -> ( ( Set -> Set ) ∋ ( ( λ x11000 -> if true then Bool else x11000 ) ) ) $ ( x10990 ) ) ) ) $ ( if true then Bool else Bool )
        d1097 = ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> if d441 then x10980 else d115 ) ) ) $ ( if true then true else d300 )
        d1101 : if true then ( ( Set -> Set ) ∋ ( ( λ x11040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11050 -> x11050 ) ) ) $ ( Bool )
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> ( ( Bool -> Bool ) ∋ ( ( λ x11030 -> if d326 then d439 else true ) ) ) $ ( x11020 ) ) ) ) $ ( if true then d174 else d17 )
        d1106 : if true then ( ( Set -> Set ) ∋ ( ( λ x11080 -> x11080 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1106 = ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> if true then x11070 else true ) ) ) $ ( if d817 then d50 else true )
        d1109 : if true then ( ( Set -> Set ) ∋ ( ( λ x11120 -> x11120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11130 -> Bool ) ) ) $ ( Bool )
        d1109 = ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> if true then false else d174 ) ) ) $ ( x11100 ) ) ) ) $ ( if false then true else d385 )
        d1114 : if false then ( ( Set -> Set ) ∋ ( ( λ x11170 -> x11170 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1114 = if if d644 then false else d920 then ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> x11160 ) ) ) $ ( d190 )
        d1118 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> if false then d193 else d814 ) ) ) $ ( if d959 then false else false )
        d1120 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1120 = ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> if d1045 then d738 else true ) ) ) $ ( if true then false else true )
        d1122 : ( ( Set -> Set ) ∋ ( ( λ x11250 -> if true then x11250 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1122 = if ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> x11230 ) ) ) $ ( true ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> d832 ) ) ) $ ( d1095 )
        d1126 : ( ( Set -> Set ) ∋ ( ( λ x11280 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1126 = if if d287 then true else d131 then ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> x11270 ) ) ) $ ( true ) else if d836 then d178 else d139
        d1129 : if true then ( ( Set -> Set ) ∋ ( ( λ x11320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11330 -> x11330 ) ) ) $ ( Bool )
        d1129 = if ( ( Bool -> Bool ) ∋ ( ( λ x11300 -> d731 ) ) ) $ ( d260 ) then if d681 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x11310 -> false ) ) ) $ ( d335 )
        d1134 : if false then ( ( Set -> Set ) ∋ ( ( λ x11360 -> x11360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11370 -> Bool ) ) ) $ ( Bool )
        d1134 = if if d494 then d406 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> x11350 ) ) ) $ ( true ) else if true then d39 else false
        d1138 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11400 -> x11400 ) ) ) $ ( Bool )
        d1138 = ( ( Bool -> Bool ) ∋ ( ( λ x11390 -> if true then false else x11390 ) ) ) $ ( if false then true else false )
        d1141 : ( ( Set -> Set ) ∋ ( ( λ x11430 -> ( ( Set -> Set ) ∋ ( ( λ x11440 -> if false then x11440 else x11430 ) ) ) $ ( x11430 ) ) ) ) $ ( if true then Bool else Bool )
        d1141 = ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> if true then d559 else x11420 ) ) ) $ ( if d941 then true else d39 )
        d1145 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11490 -> Bool ) ) ) $ ( Bool )
        d1145 = if ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> true ) ) ) $ ( d997 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> d867 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> false ) ) ) $ ( d497 )
        d1150 : ( ( Set -> Set ) ∋ ( ( λ x11510 -> if true then Bool else x11510 ) ) ) $ ( if false then Bool else Bool )
        d1150 = if if d267 then d684 else d588 then if d216 then d1072 else true else if d472 then false else d644
        d1152 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11540 -> Bool ) ) ) $ ( Bool )
        d1152 = if ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> x11530 ) ) ) $ ( true ) then if true then d368 else d245 else if false then d1106 else d1118
        d1155 : if true then ( ( Set -> Set ) ∋ ( ( λ x11570 -> x11570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11580 -> x11580 ) ) ) $ ( Bool )
        d1155 = ( ( Bool -> Bool ) ∋ ( ( λ x11560 -> if x11560 then false else d287 ) ) ) $ ( if d540 then d1087 else false )
        d1159 : ( ( Set -> Set ) ∋ ( ( λ x11620 -> ( ( Set -> Set ) ∋ ( ( λ x11630 -> if true then Bool else Bool ) ) ) $ ( x11620 ) ) ) ) $ ( if false then Bool else Bool )
        d1159 = if if false then d515 else true then ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> false ) ) ) $ ( d671 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> x11610 ) ) ) $ ( true )
        d1164 : ( ( Set -> Set ) ∋ ( ( λ x11670 -> if false then x11670 else x11670 ) ) ) $ ( if false then Bool else Bool )
        d1164 = if ( ( Bool -> Bool ) ∋ ( ( λ x11650 -> d345 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> x11660 ) ) ) $ ( true ) else if false then false else false
        d1168 : ( ( Set -> Set ) ∋ ( ( λ x11690 -> ( ( Set -> Set ) ∋ ( ( λ x11700 -> if false then Bool else x11690 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1168 = if if false then true else d864 then if true then false else false else if d757 then true else d318
        d1171 : ( ( Set -> Set ) ∋ ( ( λ x11730 -> if false then x11730 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1171 = if ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> true ) ) ) $ ( d686 ) then if d406 then d143 else false else if true then d1045 else false
        d1174 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11750 -> x11750 ) ) ) $ ( Bool )
        d1174 = if if false then d510 else d494 then if true then false else false else if d1059 then d597 else true
        d1176 : ( ( Set -> Set ) ∋ ( ( λ x11780 -> if false then Bool else x11780 ) ) ) $ ( if false then Bool else Bool )
        d1176 = if ( ( Bool -> Bool ) ∋ ( ( λ x11770 -> d209 ) ) ) $ ( d618 ) then if d378 then d641 else d1091 else if true then false else d161
        d1179 : ( ( Set -> Set ) ∋ ( ( λ x11830 -> ( ( Set -> Set ) ∋ ( ( λ x11840 -> if false then x11840 else x11840 ) ) ) $ ( x11830 ) ) ) ) $ ( if false then Bool else Bool )
        d1179 = if ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> true ) ) ) $ ( d1049 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11810 -> x11810 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11820 -> x11820 ) ) ) $ ( d256 )
        d1185 : ( ( Set -> Set ) ∋ ( ( λ x11870 -> if false then x11870 else x11870 ) ) ) $ ( if false then Bool else Bool )
        d1185 = if ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> d787 ) ) ) $ ( d1168 ) then if d731 then false else true else if false then d959 else d626
        d1188 : ( ( Set -> Set ) ∋ ( ( λ x11900 -> ( ( Set -> Set ) ∋ ( ( λ x11910 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1188 = ( ( Bool -> Bool ) ∋ ( ( λ x11890 -> if d322 then x11890 else x11890 ) ) ) $ ( if true then false else false )
        d1192 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1192 = if if false then true else true then if true then true else d161 else ( ( Bool -> Bool ) ∋ ( ( λ x11930 -> x11930 ) ) ) $ ( false )
        d1194 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1194 = if if true then false else false then if d50 then d457 else d406 else if d746 then d867 else false
        d1195 : ( ( Set -> Set ) ∋ ( ( λ x11980 -> ( ( Set -> Set ) ∋ ( ( λ x11990 -> if true then Bool else x11980 ) ) ) $ ( x11980 ) ) ) ) $ ( if true then Bool else Bool )
        d1195 = ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> ( ( Bool -> Bool ) ∋ ( ( λ x11970 -> if d115 then d260 else d480 ) ) ) $ ( x11960 ) ) ) ) $ ( if true then true else true )
        d1200 : if false then ( ( Set -> Set ) ∋ ( ( λ x12040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12050 -> Bool ) ) ) $ ( Bool )
        d1200 = if ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> x12010 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> true ) ) ) $ ( d24 )
        d1206 : ( ( Set -> Set ) ∋ ( ( λ x12080 -> ( ( Set -> Set ) ∋ ( ( λ x12090 -> if false then Bool else Bool ) ) ) $ ( x12080 ) ) ) ) $ ( if false then Bool else Bool )
        d1206 = ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> if x12070 then x12070 else x12070 ) ) ) $ ( if d1079 then true else false )
        d1210 : if true then ( ( Set -> Set ) ∋ ( ( λ x12140 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12150 -> x12150 ) ) ) $ ( Bool )
        d1210 = if ( ( Bool -> Bool ) ∋ ( ( λ x12110 -> x12110 ) ) ) $ ( d373 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> x12120 ) ) ) $ ( d1005 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12130 -> x12130 ) ) ) $ ( false )
        d1216 : ( ( Set -> Set ) ∋ ( ( λ x12190 -> if false then x12190 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1216 = if if false then d10 else true then ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> x12170 ) ) ) $ ( d674 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12180 -> d460 ) ) ) $ ( false )
        d1220 : ( ( Set -> Set ) ∋ ( ( λ x12230 -> ( ( Set -> Set ) ∋ ( ( λ x12240 -> if true then x12230 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1220 = ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> if true then d749 else d769 ) ) ) $ ( false ) ) ) ) $ ( if d202 then false else d309 )
        d1225 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12270 -> x12270 ) ) ) $ ( Bool )
        d1225 = ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> if x12260 then false else false ) ) ) $ ( if d596 then true else d886 )
        d1228 : if false then ( ( Set -> Set ) ∋ ( ( λ x12310 -> x12310 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1228 = if ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> d1138 ) ) ) $ ( d955 ) then if d975 then d230 else false else ( ( Bool -> Bool ) ∋ ( ( λ x12300 -> true ) ) ) $ ( false )
        d1232 : ( ( Set -> Set ) ∋ ( ( λ x12340 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1232 = ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> if false then false else d783 ) ) ) $ ( if false then d1022 else d39 )
        d1235 : ( ( Set -> Set ) ∋ ( ( λ x12370 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1235 = ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> if x12360 then x12360 else x12360 ) ) ) $ ( if d326 then d62 else d941 )
        d1238 : ( ( Set -> Set ) ∋ ( ( λ x12410 -> if true then Bool else x12410 ) ) ) $ ( if true then Bool else Bool )
        d1238 = if ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> d886 ) ) ) $ ( true ) then if d677 then true else d290 else ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> false ) ) ) $ ( d605 )
        d1242 : ( ( Set -> Set ) ∋ ( ( λ x12430 -> ( ( Set -> Set ) ∋ ( ( λ x12440 -> if false then x12430 else x12430 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1242 = if if d597 then false else d1145 then if d216 then d561 else d220 else if d1022 then false else d472
        d1245 : ( ( Set -> Set ) ∋ ( ( λ x12480 -> ( ( Set -> Set ) ∋ ( ( λ x12490 -> if true then x12480 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1245 = ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> if false then x12460 else false ) ) ) $ ( d368 ) ) ) ) $ ( if d994 then true else d434 )
        d1250 : ( ( Set -> Set ) ∋ ( ( λ x12520 -> if false then x12520 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1250 = if ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> true ) ) ) $ ( false ) then if false then true else true else if true then d503 else false
        d1253 : ( ( Set -> Set ) ∋ ( ( λ x12550 -> ( ( Set -> Set ) ∋ ( ( λ x12560 -> if true then x12550 else Bool ) ) ) $ ( x12550 ) ) ) ) $ ( if true then Bool else Bool )
        d1253 = if if true then d104 else d1176 then if true then true else d62 else ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> x12540 ) ) ) $ ( d1032 )
        d1257 : ( ( Set -> Set ) ∋ ( ( λ x12600 -> ( ( Set -> Set ) ∋ ( ( λ x12610 -> if false then x12610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1257 = ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> ( ( Bool -> Bool ) ∋ ( ( λ x12590 -> if true then d50 else d602 ) ) ) $ ( true ) ) ) ) $ ( if d331 then d1150 else true )
        d1262 : ( ( Set -> Set ) ∋ ( ( λ x12640 -> if false then x12640 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1262 = if if d356 then d1056 else false then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> x12630 ) ) ) $ ( d389 )
        d1265 : if false then ( ( Set -> Set ) ∋ ( ( λ x12670 -> x12670 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12680 -> Bool ) ) ) $ ( Bool )
        d1265 = ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> if x12660 then true else x12660 ) ) ) $ ( if d943 then d808 else d641 )
        d1269 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12720 -> x12720 ) ) ) $ ( Bool )
        d1269 = if ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> x12700 ) ) ) $ ( d943 ) then if d486 then d104 else false else ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> x12710 ) ) ) $ ( d814 )
        d1273 : ( ( Set -> Set ) ∋ ( ( λ x12760 -> ( ( Set -> Set ) ∋ ( ( λ x12770 -> if false then x12770 else Bool ) ) ) $ ( x12760 ) ) ) ) $ ( if false then Bool else Bool )
        d1273 = ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> if d139 then false else d104 ) ) ) $ ( x12740 ) ) ) ) $ ( if d952 then true else false )
        d1278 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1278 = if if true then d486 else d855 then if true then true else false else if d14 then d1164 else d313
        d1279 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1279 = if ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> x12800 ) ) ) $ ( d867 ) then if d941 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x12810 -> x12810 ) ) ) $ ( d564 )
        d1282 : if true then ( ( Set -> Set ) ∋ ( ( λ x12850 -> x12850 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12860 -> Bool ) ) ) $ ( Bool )
        d1282 = if ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> d478 ) ) ) $ ( d860 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> x12840 ) ) ) $ ( true ) else if d968 then false else false
        d1287 : if false then ( ( Set -> Set ) ∋ ( ( λ x12890 -> x12890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12900 -> Bool ) ) ) $ ( Bool )
        d1287 = if if d423 then d790 else true then if d757 then d656 else true else ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> x12880 ) ) ) $ ( d1087 )
        d1291 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1291 = if if d535 then d20 else false then if d1120 then d992 else d705 else ( ( Bool -> Bool ) ∋ ( ( λ x12920 -> d746 ) ) ) $ ( true )
        d1293 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12950 -> Bool ) ) ) $ ( Bool )
        d1293 = ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> if x12940 then false else d373 ) ) ) $ ( if d206 then false else d950 )
        d1296 : ( ( Set -> Set ) ∋ ( ( λ x12980 -> ( ( Set -> Set ) ∋ ( ( λ x12990 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1296 = if if true then false else d674 then ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> d510 ) ) ) $ ( d490 ) else if false then true else d717
        d1300 : ( ( Set -> Set ) ∋ ( ( λ x13040 -> if true then x13040 else x13040 ) ) ) $ ( if false then Bool else Bool )
        d1300 = if ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13020 -> x13020 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> true ) ) ) $ ( d1179 )
        d1305 : ( ( Set -> Set ) ∋ ( ( λ x13070 -> if false then x13070 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1305 = ( ( Bool -> Bool ) ∋ ( ( λ x13060 -> if d6 then false else false ) ) ) $ ( if d190 then false else true )
        d1308 : if false then ( ( Set -> Set ) ∋ ( ( λ x13120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13130 -> Bool ) ) ) $ ( Bool )
        d1308 = if ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13100 -> x13100 ) ) ) $ ( d700 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> d1216 ) ) ) $ ( d671 )
        d1314 : if true then ( ( Set -> Set ) ∋ ( ( λ x13170 -> x13170 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1314 = ( ( Bool -> Bool ) ∋ ( ( λ x13150 -> ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> if d220 then false else x13150 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d681 )
        d1318 : if true then ( ( Set -> Set ) ∋ ( ( λ x13200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13210 -> Bool ) ) ) $ ( Bool )
        d1318 = ( ( Bool -> Bool ) ∋ ( ( λ x13190 -> if d886 then true else false ) ) ) $ ( if d20 then true else d548 )
        d1322 : ( ( Set -> Set ) ∋ ( ( λ x13250 -> if true then x13250 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1322 = ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> if true then true else false ) ) ) $ ( x13230 ) ) ) ) $ ( if d1232 then true else d127 )
        d1326 : ( ( Set -> Set ) ∋ ( ( λ x13280 -> ( ( Set -> Set ) ∋ ( ( λ x13290 -> if false then x13280 else x13280 ) ) ) $ ( x13280 ) ) ) ) $ ( if true then Bool else Bool )
        d1326 = ( ( Bool -> Bool ) ∋ ( ( λ x13270 -> if x13270 then x13270 else x13270 ) ) ) $ ( if false then false else d959 )
        d1330 : ( ( Set -> Set ) ∋ ( ( λ x13330 -> ( ( Set -> Set ) ∋ ( ( λ x13340 -> if false then Bool else x13340 ) ) ) $ ( x13330 ) ) ) ) $ ( if false then Bool else Bool )
        d1330 = if ( ( Bool -> Bool ) ∋ ( ( λ x13310 -> d613 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> d1150 ) ) ) $ ( true ) else if false then false else d131
        d1335 : ( ( Set -> Set ) ∋ ( ( λ x13380 -> if true then Bool else x13380 ) ) ) $ ( if true then Bool else Bool )
        d1335 = if if d634 then d731 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> x13360 ) ) ) $ ( d1054 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> true ) ) ) $ ( d913 )
        d1339 : ( ( Set -> Set ) ∋ ( ( λ x13410 -> if false then x13410 else x13410 ) ) ) $ ( if false then Bool else Bool )
        d1339 = ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> if false then true else true ) ) ) $ ( if false then d71 else true )
        d1342 : if true then ( ( Set -> Set ) ∋ ( ( λ x13440 -> x13440 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1342 = if if true then d33 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> d634 ) ) ) $ ( d505 ) else if d1126 then d305 else true
        d1345 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13470 -> Bool ) ) ) $ ( Bool )
        d1345 = ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> if true then x13460 else d249 ) ) ) $ ( if false then d900 else true )
        d1348 : if true then ( ( Set -> Set ) ∋ ( ( λ x13500 -> x13500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1348 = if if false then d1250 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13490 -> x13490 ) ) ) $ ( d622 ) else if true then true else d964
        d1351 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1351 = ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> if false then true else x13520 ) ) ) $ ( if d480 then true else d1293 )
        d1353 : ( ( Set -> Set ) ∋ ( ( λ x13560 -> if true then x13560 else x13560 ) ) ) $ ( if false then Bool else Bool )
        d1353 = if ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> d111 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> x13550 ) ) ) $ ( d836 ) else if false then false else d1138
        d1357 : if false then ( ( Set -> Set ) ∋ ( ( λ x13590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1357 = ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> if true then x13580 else d684 ) ) ) $ ( if true then d867 else true )
        d1360 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13630 -> Bool ) ) ) $ ( Bool )
        d1360 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> x13610 ) ) ) $ ( d626 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> d875 ) ) ) $ ( false )
        d1364 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13680 -> x13680 ) ) ) $ ( Bool )
        d1364 = if ( ( Bool -> Bool ) ∋ ( ( λ x13650 -> x13650 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( false )
        d1369 : if false then ( ( Set -> Set ) ∋ ( ( λ x13710 -> x13710 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1369 = ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> if false then true else x13700 ) ) ) $ ( if d864 then d908 else true )
        d1372 : ( ( Set -> Set ) ∋ ( ( λ x13740 -> ( ( Set -> Set ) ∋ ( ( λ x13750 -> if false then x13740 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1372 = ( ( Bool -> Bool ) ∋ ( ( λ x13730 -> if x13730 then false else x13730 ) ) ) $ ( if d1360 then false else d1287 )
        d1376 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1376 = if if d648 then d1155 else d482 then ( ( Bool -> Bool ) ∋ ( ( λ x13770 -> d190 ) ) ) $ ( true ) else if d867 then d659 else false
        d1378 : ( ( Set -> Set ) ∋ ( ( λ x13810 -> if true then x13810 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1378 = if ( ( Bool -> Bool ) ∋ ( ( λ x13790 -> d875 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> d10 ) ) ) $ ( d181 ) else if d540 then true else false
        d1382 : ( ( Set -> Set ) ∋ ( ( λ x13850 -> ( ( Set -> Set ) ∋ ( ( λ x13860 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1382 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> d58 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13840 -> false ) ) ) $ ( false )
        d1387 : ( ( Set -> Set ) ∋ ( ( λ x13890 -> if true then x13890 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1387 = ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> if true then false else false ) ) ) $ ( if false then true else d772 )
        d1390 : if false then ( ( Set -> Set ) ∋ ( ( λ x13920 -> x13920 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1390 = ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> if true then d1238 else x13910 ) ) ) $ ( if false then d746 else true )
        d1393 : ( ( Set -> Set ) ∋ ( ( λ x13950 -> ( ( Set -> Set ) ∋ ( ( λ x13960 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1393 = if if d216 then d989 else d1159 then if d886 then d102 else false else ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> x13940 ) ) ) $ ( d1279 )
        d1397 : ( ( Set -> Set ) ∋ ( ( λ x14010 -> if false then Bool else x14010 ) ) ) $ ( if false then Bool else Bool )
        d1397 = if ( ( Bool -> Bool ) ∋ ( ( λ x13980 -> d1265 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13990 -> false ) ) ) $ ( d992 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> true ) ) ) $ ( d540 )
        d1402 : if false then ( ( Set -> Set ) ∋ ( ( λ x14040 -> x14040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14050 -> Bool ) ) ) $ ( Bool )
        d1402 = ( ( Bool -> Bool ) ∋ ( ( λ x14030 -> if x14030 then d39 else d322 ) ) ) $ ( if true then true else d1083 )
        d1406 : ( ( Set -> Set ) ∋ ( ( λ x14080 -> ( ( Set -> Set ) ∋ ( ( λ x14090 -> if true then Bool else x14090 ) ) ) $ ( x14080 ) ) ) ) $ ( if false then Bool else Bool )
        d1406 = ( ( Bool -> Bool ) ∋ ( ( λ x14070 -> if true then x14070 else true ) ) ) $ ( if d1335 then d841 else d1087 )
        d1410 : ( ( Set -> Set ) ∋ ( ( λ x14110 -> ( ( Set -> Set ) ∋ ( ( λ x14120 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1410 = if if false then true else d1011 then if false then true else false else if true then d1339 else false
        d1413 : ( ( Set -> Set ) ∋ ( ( λ x14140 -> ( ( Set -> Set ) ∋ ( ( λ x14150 -> if true then Bool else x14140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1413 = if if d85 then false else false then if d62 then false else true else if false then false else false
        d1416 : if true then ( ( Set -> Set ) ∋ ( ( λ x14180 -> x14180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14190 -> Bool ) ) ) $ ( Bool )
        d1416 = ( ( Bool -> Bool ) ∋ ( ( λ x14170 -> if false then x14170 else true ) ) ) $ ( if d43 then true else d230 )
        d1420 : if false then ( ( Set -> Set ) ∋ ( ( λ x14220 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14230 -> x14230 ) ) ) $ ( Bool )
        d1420 = if if d596 then d1326 else d1265 then ( ( Bool -> Bool ) ∋ ( ( λ x14210 -> true ) ) ) $ ( true ) else if false then d1011 else d378
        d1424 : ( ( Set -> Set ) ∋ ( ( λ x14260 -> if false then Bool else x14260 ) ) ) $ ( if false then Bool else Bool )
        d1424 = ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> if d139 then d134 else d626 ) ) ) $ ( if d1174 then false else d313 )
        d1427 : if true then ( ( Set -> Set ) ∋ ( ( λ x14290 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1427 = ( ( Bool -> Bool ) ∋ ( ( λ x14280 -> if x14280 then x14280 else d1059 ) ) ) $ ( if true then true else d92 )
        d1430 : ( ( Set -> Set ) ∋ ( ( λ x14330 -> if false then Bool else x14330 ) ) ) $ ( if false then Bool else Bool )
        d1430 = ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> ( ( Bool -> Bool ) ∋ ( ( λ x14320 -> if x14320 then d305 else x14310 ) ) ) $ ( x14310 ) ) ) ) $ ( if false then true else true )
        d1434 : ( ( Set -> Set ) ∋ ( ( λ x14370 -> if false then x14370 else x14370 ) ) ) $ ( if false then Bool else Bool )
        d1434 = ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> if false then true else x14360 ) ) ) $ ( d950 ) ) ) ) $ ( if false then d190 else false )
        d1438 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14400 -> Bool ) ) ) $ ( Bool )
        d1438 = ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> if false then false else x14390 ) ) ) $ ( if false then true else d972 )
        d1441 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1441 = ( ( Bool -> Bool ) ∋ ( ( λ x14420 -> ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> if false then x14420 else false ) ) ) $ ( d134 ) ) ) ) $ ( if d230 then d1402 else false )
        d1444 : ( ( Set -> Set ) ∋ ( ( λ x14460 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1444 = if ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> x14450 ) ) ) $ ( true ) then if false then false else d382 else if d890 then true else d6
        d1447 : ( ( Set -> Set ) ∋ ( ( λ x14500 -> if true then x14500 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1447 = ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> ( ( Bool -> Bool ) ∋ ( ( λ x14490 -> if x14480 then d931 else d439 ) ) ) $ ( x14480 ) ) ) ) $ ( if d275 then true else d6 )
        d1451 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14540 -> Bool ) ) ) $ ( Bool )
        d1451 = if ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> d1022 ) ) ) $ ( d364 ) then if d892 then d540 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> x14530 ) ) ) $ ( false )
        d1455 : ( ( Set -> Set ) ∋ ( ( λ x14570 -> if true then x14570 else x14570 ) ) ) $ ( if false then Bool else Bool )
        d1455 = if ( ( Bool -> Bool ) ∋ ( ( λ x14560 -> x14560 ) ) ) $ ( true ) then if d305 then true else d836 else if d1444 then false else d564
        d1458 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1458 = if if false then d641 else d284 then if true then d1072 else false else if d331 then true else true
        d1459 : ( ( Set -> Set ) ∋ ( ( λ x14610 -> ( ( Set -> Set ) ∋ ( ( λ x14620 -> if true then Bool else Bool ) ) ) $ ( x14610 ) ) ) ) $ ( if true then Bool else Bool )
        d1459 = ( ( Bool -> Bool ) ∋ ( ( λ x14600 -> if d1451 then true else x14600 ) ) ) $ ( if d345 then true else false )
        d1463 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14650 -> Bool ) ) ) $ ( Bool )
        d1463 = ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> if false then x14640 else false ) ) ) $ ( if d688 then d1451 else true )
        d1466 : ( ( Set -> Set ) ∋ ( ( λ x14700 -> ( ( Set -> Set ) ∋ ( ( λ x14710 -> if false then x14700 else x14710 ) ) ) $ ( x14700 ) ) ) ) $ ( if true then Bool else Bool )
        d1466 = if ( ( Bool -> Bool ) ∋ ( ( λ x14670 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14680 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> false ) ) ) $ ( d297 )
        d1472 : ( ( Set -> Set ) ∋ ( ( λ x14750 -> if true then x14750 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1472 = if ( ( Bool -> Bool ) ∋ ( ( λ x14730 -> x14730 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> x14740 ) ) ) $ ( true ) else if d68 then d1216 else true
        d1476 : ( ( Set -> Set ) ∋ ( ( λ x14780 -> ( ( Set -> Set ) ∋ ( ( λ x14790 -> if false then x14780 else x14790 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1476 = if if true then d39 else d80 then ( ( Bool -> Bool ) ∋ ( ( λ x14770 -> d1036 ) ) ) $ ( d1015 ) else if false then d972 else d24
        d1480 : if true then ( ( Set -> Set ) ∋ ( ( λ x14830 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1480 = ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> if true then d131 else false ) ) ) $ ( x14810 ) ) ) ) $ ( if d1015 then false else false )
        d1484 : ( ( Set -> Set ) ∋ ( ( λ x14860 -> if true then x14860 else x14860 ) ) ) $ ( if true then Bool else Bool )
        d1484 = if if true then d1120 else d814 then ( ( Bool -> Bool ) ∋ ( ( λ x14850 -> x14850 ) ) ) $ ( true ) else if d879 then d989 else false
        d1487 : if false then ( ( Set -> Set ) ∋ ( ( λ x14880 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1487 = if if d908 then d641 else true then if d879 then d1369 else d886 else if d892 then d1118 else false
        d1489 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14910 -> x14910 ) ) ) $ ( Bool )
        d1489 = if if true then d197 else false then if d202 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> x14900 ) ) ) $ ( true )
        d1492 : ( ( Set -> Set ) ∋ ( ( λ x14930 -> ( ( Set -> Set ) ∋ ( ( λ x14940 -> if false then Bool else x14930 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1492 = if if true then d1026 else true then if true then true else d1122 else if true then false else true
        d1495 : ( ( Set -> Set ) ∋ ( ( λ x14980 -> if true then x14980 else x14980 ) ) ) $ ( if false then Bool else Bool )
        d1495 = ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> if x14960 then d1194 else false ) ) ) $ ( d972 ) ) ) ) $ ( if true then false else d916 )
        d1499 : if true then ( ( Set -> Set ) ∋ ( ( λ x15030 -> x15030 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1499 = if ( ( Bool -> Bool ) ∋ ( ( λ x15000 -> true ) ) ) $ ( d1072 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> d829 ) ) ) $ ( d634 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> d445 ) ) ) $ ( d368 )
        d1504 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15070 -> x15070 ) ) ) $ ( Bool )
        d1504 = ( ( Bool -> Bool ) ∋ ( ( λ x15050 -> ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> if false then d468 else true ) ) ) $ ( true ) ) ) ) $ ( if d432 then d364 else d482 )
        d1508 : ( ( Set -> Set ) ∋ ( ( λ x15100 -> ( ( Set -> Set ) ∋ ( ( λ x15110 -> if true then Bool else x15100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1508 = if ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> d432 ) ) ) $ ( false ) then if true then d338 else false else if true then d185 else false
        d1512 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15130 -> Bool ) ) ) $ ( Bool )
        d1512 = if if false then d1079 else true then if d530 then false else false else if true then true else true
        d1514 : ( ( Set -> Set ) ∋ ( ( λ x15160 -> if true then Bool else x15160 ) ) ) $ ( if false then Bool else Bool )
        d1514 = ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> if d411 then d602 else x15150 ) ) ) $ ( if d216 then true else d1305 )
        d1517 : ( ( Set -> Set ) ∋ ( ( λ x15200 -> if false then x15200 else x15200 ) ) ) $ ( if true then Bool else Bool )
        d1517 = ( ( Bool -> Bool ) ∋ ( ( λ x15180 -> ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> if d102 then true else true ) ) ) $ ( d309 ) ) ) ) $ ( if d153 then true else d1357 )
        d1521 : ( ( Set -> Set ) ∋ ( ( λ x15230 -> ( ( Set -> Set ) ∋ ( ( λ x15240 -> if false then x15230 else x15230 ) ) ) $ ( x15230 ) ) ) ) $ ( if false then Bool else Bool )
        d1521 = ( ( Bool -> Bool ) ∋ ( ( λ x15220 -> if false then d626 else false ) ) ) $ ( if d872 then true else true )
        d1525 : ( ( Set -> Set ) ∋ ( ( λ x15270 -> ( ( Set -> Set ) ∋ ( ( λ x15280 -> if false then Bool else x15270 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1525 = ( ( Bool -> Bool ) ∋ ( ( λ x15260 -> if d1427 then d24 else true ) ) ) $ ( if d267 then d335 else false )
        d1529 : ( ( Set -> Set ) ∋ ( ( λ x15320 -> ( ( Set -> Set ) ∋ ( ( λ x15330 -> if true then x15330 else x15330 ) ) ) $ ( x15320 ) ) ) ) $ ( if false then Bool else Bool )
        d1529 = if ( ( Bool -> Bool ) ∋ ( ( λ x15300 -> d1005 ) ) ) $ ( d147 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> d313 ) ) ) $ ( true ) else if d1067 then false else true
        d1534 : if false then ( ( Set -> Set ) ∋ ( ( λ x15360 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1534 = if if true then d1480 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> x15350 ) ) ) $ ( d10 ) else if true then d6 else false
        d1537 : ( ( Set -> Set ) ∋ ( ( λ x15390 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1537 = ( ( Bool -> Bool ) ∋ ( ( λ x15380 -> if d626 then false else d99 ) ) ) $ ( if false then false else d468 )
        d1540 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1540 = ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> if true then x15410 else false ) ) ) $ ( if d1287 then true else false )
        d1542 : if false then ( ( Set -> Set ) ∋ ( ( λ x15440 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1542 = if ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> x15430 ) ) ) $ ( d284 ) then if true then true else d515 else if false then false else d439
        d1545 : if false then ( ( Set -> Set ) ∋ ( ( λ x15480 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15490 -> x15490 ) ) ) $ ( Bool )
        d1545 = ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> ( ( Bool -> Bool ) ∋ ( ( λ x15470 -> if d1424 then false else d170 ) ) ) $ ( true ) ) ) ) $ ( if true then d356 else true )
        d1550 : ( ( Set -> Set ) ∋ ( ( λ x15540 -> if true then Bool else x15540 ) ) ) $ ( if true then Bool else Bool )
        d1550 = if ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> x15510 ) ) ) $ ( d472 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> true ) ) ) $ ( true )
        d1555 : ( ( Set -> Set ) ∋ ( ( λ x15580 -> ( ( Set -> Set ) ∋ ( ( λ x15590 -> if true then Bool else Bool ) ) ) $ ( x15580 ) ) ) ) $ ( if false then Bool else Bool )
        d1555 = ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> if x15570 then x15570 else false ) ) ) $ ( d1466 ) ) ) ) $ ( if d331 then true else true )
        d1560 : ( ( Set -> Set ) ∋ ( ( λ x15620 -> if false then x15620 else x15620 ) ) ) $ ( if true then Bool else Bool )
        d1560 = ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> if d1372 then d1351 else false ) ) ) $ ( if d783 then false else d326 )
        d1563 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15660 -> x15660 ) ) ) $ ( Bool )
        d1563 = ( ( Bool -> Bool ) ∋ ( ( λ x15640 -> ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> if x15640 then x15640 else x15640 ) ) ) $ ( x15640 ) ) ) ) $ ( if d1382 then d294 else d714 )
        d1567 : if true then ( ( Set -> Set ) ∋ ( ( λ x15700 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1567 = ( ( Bool -> Bool ) ∋ ( ( λ x15680 -> ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> if d1296 then d684 else d486 ) ) ) $ ( d1459 ) ) ) ) $ ( if true then false else d980 )
        d1571 : ( ( Set -> Set ) ∋ ( ( λ x15730 -> ( ( Set -> Set ) ∋ ( ( λ x15740 -> if true then x15730 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1571 = ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> if false then x15720 else false ) ) ) $ ( if d1097 then d975 else d119 )
        d1575 : ( ( Set -> Set ) ∋ ( ( λ x15790 -> if false then Bool else x15790 ) ) ) $ ( if false then Bool else Bool )
        d1575 = if ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> x15760 ) ) ) $ ( d280 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> x15770 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15780 -> d705 ) ) ) $ ( false )
        d1580 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15820 -> Bool ) ) ) $ ( Bool )
        d1580 = ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> if x15810 then d1416 else d89 ) ) ) $ ( if false then true else d50 )
        d1583 : if false then ( ( Set -> Set ) ∋ ( ( λ x15850 -> x15850 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1583 = ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> if d968 then d709 else x15840 ) ) ) $ ( if d209 then d1145 else d1364 )
        d1586 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1586 = if ( ( Bool -> Bool ) ∋ ( ( λ x15870 -> false ) ) ) $ ( d626 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> d1052 ) ) ) $ ( d1245 ) else if true then true else false
        d1589 : ( ( Set -> Set ) ∋ ( ( λ x15930 -> ( ( Set -> Set ) ∋ ( ( λ x15940 -> if true then x15930 else x15930 ) ) ) $ ( x15930 ) ) ) ) $ ( if false then Bool else Bool )
        d1589 = if ( ( Bool -> Bool ) ∋ ( ( λ x15900 -> x15900 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15910 -> d1145 ) ) ) $ ( d681 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> d157 ) ) ) $ ( false )
        d1595 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1595 = if ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> x15960 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> x15970 ) ) ) $ ( d741 ) else if true then d731 else false
        d1598 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1598 = ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> if false then x15990 else x16000 ) ) ) $ ( d165 ) ) ) ) $ ( if d111 then true else d1364 )
        d1601 : ( ( Set -> Set ) ∋ ( ( λ x16040 -> ( ( Set -> Set ) ∋ ( ( λ x16050 -> if true then Bool else Bool ) ) ) $ ( x16040 ) ) ) ) $ ( if true then Bool else Bool )
        d1601 = if if d1155 then true else d143 then ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> d926 ) ) ) $ ( d139 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16030 -> x16030 ) ) ) $ ( d1083 )
        d1606 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1606 = ( ( Bool -> Bool ) ∋ ( ( λ x16070 -> if true then false else d787 ) ) ) $ ( if d441 then true else d220 )
        d1608 : if false then ( ( Set -> Set ) ∋ ( ( λ x16100 -> x16100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16110 -> x16110 ) ) ) $ ( Bool )
        d1608 = ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> if false then x16090 else x16090 ) ) ) $ ( if true then false else false )
        d1612 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16140 -> x16140 ) ) ) $ ( Bool )
        d1612 = if if true then true else d896 then if d634 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> x16130 ) ) ) $ ( false )
        d1615 : ( ( Set -> Set ) ∋ ( ( λ x16170 -> ( ( Set -> Set ) ∋ ( ( λ x16180 -> if false then x16170 else x16170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1615 = if if d202 then d1232 else false then ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> x16160 ) ) ) $ ( false ) else if d14 then d1484 else true
        d1619 : if true then ( ( Set -> Set ) ∋ ( ( λ x16220 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1619 = ( ( Bool -> Bool ) ∋ ( ( λ x16200 -> ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> if d522 then true else d775 ) ) ) $ ( true ) ) ) ) $ ( if d1305 then d906 else false )
        d1623 : ( ( Set -> Set ) ∋ ( ( λ x16260 -> ( ( Set -> Set ) ∋ ( ( λ x16270 -> if false then x16260 else Bool ) ) ) $ ( x16260 ) ) ) ) $ ( if true then Bool else Bool )
        d1623 = if ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> x16240 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> d434 ) ) ) $ ( d419 ) else if false then d284 else true
        d1628 : ( ( Set -> Set ) ∋ ( ( λ x16300 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1628 = if ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> d1045 ) ) ) $ ( true ) then if false then d727 else true else if d1095 then d1134 else false
        d1631 : ( ( Set -> Set ) ∋ ( ( λ x16330 -> ( ( Set -> Set ) ∋ ( ( λ x16340 -> if false then x16330 else x16340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1631 = ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> if x16320 then x16320 else d1466 ) ) ) $ ( if d1291 then false else false )
        d1635 : ( ( Set -> Set ) ∋ ( ( λ x16380 -> ( ( Set -> Set ) ∋ ( ( λ x16390 -> if true then x16390 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1635 = if if d817 then d783 else d1571 then ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> x16360 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> x16370 ) ) ) $ ( d626 )
        d1640 : if true then ( ( Set -> Set ) ∋ ( ( λ x16430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16440 -> x16440 ) ) ) $ ( Bool )
        d1640 = if ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> d561 ) ) ) $ ( false ) then if true then true else d1052 else ( ( Bool -> Bool ) ∋ ( ( λ x16420 -> x16420 ) ) ) $ ( d395 )
        d1645 : if true then ( ( Set -> Set ) ∋ ( ( λ x16470 -> x16470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16480 -> x16480 ) ) ) $ ( Bool )
        d1645 = ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> if x16460 then false else x16460 ) ) ) $ ( if false then d1601 else d359 )
        d1649 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16520 -> Bool ) ) ) $ ( Bool )
        d1649 = ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> if true then x16500 else x16500 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d294 )
        d1653 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16540 -> x16540 ) ) ) $ ( Bool )
        d1653 = if if d644 then d1537 else d1631 then if false then false else d499 else if false then d1615 else true
        d1655 : ( ( Set -> Set ) ∋ ( ( λ x16570 -> ( ( Set -> Set ) ∋ ( ( λ x16580 -> if false then Bool else Bool ) ) ) $ ( x16570 ) ) ) ) $ ( if false then Bool else Bool )
        d1655 = ( ( Bool -> Bool ) ∋ ( ( λ x16560 -> if d1504 then false else true ) ) ) $ ( if false then false else d1314 )
        d1659 : ( ( Set -> Set ) ∋ ( ( λ x16620 -> ( ( Set -> Set ) ∋ ( ( λ x16630 -> if false then x16620 else Bool ) ) ) $ ( x16620 ) ) ) ) $ ( if true then Bool else Bool )
        d1659 = ( ( Bool -> Bool ) ∋ ( ( λ x16600 -> ( ( Bool -> Bool ) ∋ ( ( λ x16610 -> if x16600 then d1106 else x16600 ) ) ) $ ( x16600 ) ) ) ) $ ( if d1011 then d1458 else d802 )
        d1664 : if true then ( ( Set -> Set ) ∋ ( ( λ x16660 -> x16660 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16670 -> x16670 ) ) ) $ ( Bool )
        d1664 = if if false then d936 else false then ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> true ) ) ) $ ( true ) else if false then true else false
        d1668 : if true then ( ( Set -> Set ) ∋ ( ( λ x16710 -> x16710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16720 -> x16720 ) ) ) $ ( Bool )
        d1668 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x16690 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> d1168 ) ) ) $ ( true )
        d1673 : ( ( Set -> Set ) ∋ ( ( λ x16740 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1673 = if if false then d1206 else d989 then if true then true else d749 else if d1351 then d1045 else true
        d1675 : ( ( Set -> Set ) ∋ ( ( λ x16770 -> if false then Bool else x16770 ) ) ) $ ( if false then Bool else Bool )
        d1675 = ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> if d622 then x16760 else x16760 ) ) ) $ ( if d688 then true else d263 )
        d1678 : if true then ( ( Set -> Set ) ∋ ( ( λ x16810 -> x16810 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1678 = ( ( Bool -> Bool ) ∋ ( ( λ x16790 -> ( ( Bool -> Bool ) ∋ ( ( λ x16800 -> if d677 then x16790 else d931 ) ) ) $ ( x16790 ) ) ) ) $ ( if false then d1416 else false )