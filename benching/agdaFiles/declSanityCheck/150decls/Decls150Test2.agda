module Decls150Test2  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else x40 ) ) ) $ ( if false then Bool else Bool )
        d1 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( true )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then Bool else x60 ) ) ) $ ( if true then Bool else Bool )
        d5 = if if false then d1 else d1 then if d1 then d1 else d1 else if d1 then d1 else false
        d7 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x80 else Bool ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d7 = if if d5 then true else true then if d5 then d1 else true else if false then true else true
        d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d1 then false else true ) ) ) $ ( if d7 then d7 else d1 )
        d13 : if true then ( ( Set -> Set ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if d1 then x140 else x150 ) ) ) $ ( d10 ) ) ) ) $ ( if d5 then false else d7 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then x200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if false then d13 else x190 ) ) ) $ ( if d13 then d13 else d10 )
        d21 : if true then if true then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if d18 then false else d13 ) ) ) $ ( x220 ) ) ) ) $ ( if false then true else false )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x280 -> if true then x280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d24 = if ( ( Bool -> Bool ) ∋ ( ( λ x250 -> d21 ) ) ) $ ( d13 ) then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( d18 ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( false )
        d29 : if false then if true then Bool else Bool else if true then Bool else Bool
        d29 = if ( ( Bool -> Bool ) ∋ ( ( λ x300 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( false ) else if true then d18 else false
        d32 : ( ( Set -> Set ) ∋ ( ( λ x350 -> if true then x350 else x350 ) ) ) $ ( if true then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d24 then true else false ) ) ) $ ( d29 ) ) ) ) $ ( if false then d7 else false )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if false then Bool else x390 ) ) ) $ ( if true then Bool else Bool )
        d36 = if ( ( Bool -> Bool ) ∋ ( ( λ x370 -> d18 ) ) ) $ ( false ) then if d24 then d7 else false else ( ( Bool -> Bool ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( d13 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x430 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if if false then d10 else true then if d1 then false else d29 else ( ( Bool -> Bool ) ∋ ( ( λ x410 -> false ) ) ) $ ( d13 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then Bool else x470 ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d21 then x460 else d1 ) ) ) $ ( d40 ) ) ) ) $ ( if true then d32 else false )
        d48 : if false then if true then Bool else Bool else if false then Bool else Bool
        d48 = if if d10 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( false ) else if d13 then d29 else true
        d50 : if false then if true then Bool else Bool else if false then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if d13 then true else d1 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d53 : if false then ( ( Set -> Set ) ∋ ( ( λ x550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( Bool )
        d53 = if ( ( Bool -> Bool ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( d18 ) then if false then d48 else true else if false then true else false
        d57 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then Bool else x610 ) ) ) $ ( x600 ) ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if d32 then d24 else x590 ) ) ) $ ( d24 ) ) ) ) $ ( if true then d24 else false )
        d62 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool )
        d62 = if ( ( Bool -> Bool ) ∋ ( ( λ x630 -> false ) ) ) $ ( d40 ) then if true then d53 else false else if d32 then false else true
        d65 : ( ( Set -> Set ) ∋ ( ( λ x690 -> if false then Bool else x690 ) ) ) $ ( if false then Bool else Bool )
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x670 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d21 ) ) ) $ ( d18 )
        d70 : if false then if false then Bool else Bool else if true then Bool else Bool
        d70 = if ( ( Bool -> Bool ) ∋ ( ( λ x710 -> true ) ) ) $ ( false ) then if d50 then false else true else if d50 then d18 else d13
        d72 : if false then ( ( Set -> Set ) ∋ ( ( λ x740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool )
        d72 = if ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d50 ) ) ) $ ( d48 ) then if false then true else false else if d24 then d36 else true
        d76 : ( ( Set -> Set ) ∋ ( ( λ x770 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> if false then x770 else x770 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d76 = if if d18 then d48 else d1 then if true then false else false else if false then d7 else d36
        d79 : if true then ( ( Set -> Set ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d79 = if if d5 then true else false then if d65 then false else true else if true then true else true
        d81 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then x840 else x850 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if x830 then true else x820 ) ) ) $ ( x820 ) ) ) ) $ ( if d44 then d10 else d65 )
        d86 : if true then ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d86 = if if d10 then d65 else d65 then if false then true else true else if d62 then d57 else d21
        d88 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool )
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d1 ) ) ) $ ( true ) else if d57 then d7 else d40
        d92 : if false then ( ( Set -> Set ) ∋ ( ( λ x950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if x940 then d1 else x930 ) ) ) $ ( false ) ) ) ) $ ( if d79 then d1 else d88 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if true then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d72 )
        d102 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( Bool )
        d102 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> x1030 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> true ) ) ) $ ( false )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> ( ( Set -> Set ) ∋ ( ( λ x1100 -> if false then Bool else x1100 ) ) ) $ ( x1090 ) ) ) ) $ ( if false then Bool else Bool )
        d106 = if if d18 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> true ) ) ) $ ( d50 )
        d111 : if false then ( ( Set -> Set ) ∋ ( ( λ x1130 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d111 = if if d81 then false else d7 then if d106 then d40 else d50 else ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d81 ) ) ) $ ( true )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> if true then x1170 else x1170 ) ) ) $ ( if false then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if true then d92 else true ) ) ) $ ( false ) ) ) ) $ ( if d79 then false else d10 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if true then Bool else x1200 ) ) ) $ ( if true then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if x1190 then x1190 else x1190 ) ) ) $ ( if false then d32 else true )
        d121 : if true then ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d121 = if ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( false ) then if d1 then false else d18 else ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> d102 ) ) ) $ ( false )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d125 = if ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d48 ) ) ) $ ( d7 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> false ) ) ) $ ( d57 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( false )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> if false then x1330 else x1330 ) ) ) $ ( if false then Bool else Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d29 ) ) ) $ ( d40 ) then if false then false else d111 else ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> d79 ) ) ) $ ( true )
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> ( ( Set -> Set ) ∋ ( ( λ x1370 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d134 = if if d36 then d76 else true then if d7 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> true ) ) ) $ ( d32 )
        d138 : if true then if true then Bool else Bool else if false then Bool else Bool
        d138 = if ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> d44 ) ) ) $ ( d36 ) then if false then true else d13 else if d48 then d76 else d21
        d140 : if true then if false then Bool else Bool else if false then Bool else Bool
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if true then true else true ) ) ) $ ( true ) ) ) ) $ ( if d48 then d44 else d48 )
        d143 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then Bool else x1450 ) ) ) $ ( if false then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> if false then x1440 else true ) ) ) $ ( if false then d79 else false )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> if false then x1490 else Bool ) ) ) $ ( if true then Bool else Bool )
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> if x1470 then d125 else true ) ) ) $ ( x1470 ) ) ) ) $ ( if d32 then d111 else d1 )
        d150 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then x1530 else Bool ) ) ) $ ( if false then Bool else Bool )
        d150 = if if d21 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> d21 ) ) ) $ ( true )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then x1560 else x1560 ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if true then x1550 else x1550 ) ) ) $ ( if true then false else d138 )
        d157 : if true then ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d157 = if if d24 then false else d44 then if d1 then d13 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> d102 ) ) ) $ ( d150 )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then x1630 else Bool ) ) ) $ ( if true then Bool else Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if x1610 then false else d106 ) ) ) $ ( d106 ) ) ) ) $ ( if d134 then d121 else d1 )
        d164 : if true then if false then Bool else Bool else if false then Bool else Bool
        d164 = if if true then d50 else true then if true then d92 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( false )
        d166 : if true then if true then Bool else Bool else if true then Bool else Bool
        d166 = if ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> d36 ) ) ) $ ( d65 ) then if d88 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( d118 )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> ( ( Set -> Set ) ∋ ( ( λ x1730 -> if false then Bool else Bool ) ) ) $ ( x1720 ) ) ) ) $ ( if true then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if false then x1710 else false ) ) ) $ ( d40 ) ) ) ) $ ( if false then true else false )
        d174 : if false then if true then Bool else Bool else if false then Bool else Bool
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if d114 then d111 else false ) ) ) $ ( false ) ) ) ) $ ( if d48 then d114 else true )
        d177 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( Bool )
        d177 = if if false then true else true then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> d50 ) ) ) $ ( true )
        d180 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> if false then Bool else x1830 ) ) ) $ ( if true then Bool else Bool )
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if x1820 then true else false ) ) ) $ ( d114 ) ) ) ) $ ( if false then d111 else d138 )
        d184 : if true then ( ( Set -> Set ) ∋ ( ( λ x1860 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if true then false else false ) ) ) $ ( if true then false else true )
        d187 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1890 -> Bool ) ) ) $ ( Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if false then x1880 else x1880 ) ) ) $ ( if d166 then true else false )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> if true then x1920 else x1930 ) ) ) $ ( x1920 ) ) ) ) $ ( if false then Bool else Bool )
        d190 = if if d174 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> x1910 ) ) ) $ ( false ) else if d134 then d44 else d138
        d194 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> if true then x1970 else Bool ) ) ) $ ( x1970 ) ) ) ) $ ( if false then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if x1950 then x1950 else x1950 ) ) ) $ ( d97 ) ) ) ) $ ( if d57 then false else true )
        d199 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> ( ( Set -> Set ) ∋ ( ( λ x2020 -> if true then x2010 else x2010 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if true then x2000 else x2000 ) ) ) $ ( if true then true else d5 )
        d203 : if false then ( ( Set -> Set ) ∋ ( ( λ x2060 -> x2060 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> if true then d65 else x2040 ) ) ) $ ( x2040 ) ) ) ) $ ( if true then d102 else d164 )
        d207 : if false then ( ( Set -> Set ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d207 = if ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> x2080 ) ) ) $ ( d5 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> d62 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( d72 )
        d212 : if true then ( ( Set -> Set ) ∋ ( ( λ x2140 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> if true then d121 else d21 ) ) ) $ ( if d111 then false else d7 )
        d215 : ( ( Set -> Set ) ∋ ( ( λ x2170 -> if false then x2170 else Bool ) ) ) $ ( if true then Bool else Bool )
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> if false then d50 else x2160 ) ) ) $ ( if true then true else false )
        d218 : ( ( Set -> Set ) ∋ ( ( λ x2210 -> if true then x2210 else x2210 ) ) ) $ ( if false then Bool else Bool )
        d218 = if ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> true ) ) ) $ ( false ) then if false then d114 else d40 else ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> true ) ) ) $ ( true )
        d222 : if true then ( ( Set -> Set ) ∋ ( ( λ x2240 -> x2240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2250 -> Bool ) ) ) $ ( Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> if true then true else true ) ) ) $ ( if false then false else d207 )
        d226 : if true then ( ( Set -> Set ) ∋ ( ( λ x2290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2300 -> Bool ) ) ) $ ( Bool )
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> if true then true else false ) ) ) $ ( x2270 ) ) ) ) $ ( if d215 then d92 else true )
        d231 : if false then ( ( Set -> Set ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( Bool )
        d231 = if ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> x2320 ) ) ) $ ( d88 ) then if d32 then false else d7 else if true then false else d143
        d235 : if false then ( ( Set -> Set ) ∋ ( ( λ x2370 -> x2370 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> if x2360 then true else true ) ) ) $ ( if d88 then false else d146 )
        d238 : ( ( Set -> Set ) ∋ ( ( λ x2420 -> ( ( Set -> Set ) ∋ ( ( λ x2430 -> if true then x2420 else Bool ) ) ) $ ( x2420 ) ) ) ) $ ( if false then Bool else Bool )
        d238 = if ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( d207 )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then x2480 else Bool ) ) ) $ ( x2480 ) ) ) ) $ ( if false then Bool else Bool )
        d244 = if ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( d140 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> d48 ) ) ) $ ( d48 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> d199 ) ) ) $ ( d121 )
        d250 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2530 -> Bool ) ) ) $ ( Bool )
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if d199 then d212 else false ) ) ) $ ( x2510 ) ) ) ) $ ( if d7 then true else d24 )
        d254 : if false then ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2580 -> x2580 ) ) ) $ ( Bool )
        d254 = if ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> d111 ) ) ) $ ( d207 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( false ) else if d24 then d1 else d169
        d259 : if false then ( ( Set -> Set ) ∋ ( ( λ x2610 -> x2610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2620 -> x2620 ) ) ) $ ( Bool )
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> if d160 then x2600 else x2600 ) ) ) $ ( if d121 then true else true )
        d263 : if false then ( ( Set -> Set ) ∋ ( ( λ x2650 -> x2650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2660 -> Bool ) ) ) $ ( Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if x2640 then x2640 else d222 ) ) ) $ ( if true then d72 else false )
        d267 : if true then ( ( Set -> Set ) ∋ ( ( λ x2700 -> x2700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2710 -> Bool ) ) ) $ ( Bool )
        d267 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> d134 ) ) ) $ ( false )
        d272 : ( ( Set -> Set ) ∋ ( ( λ x2750 -> ( ( Set -> Set ) ∋ ( ( λ x2760 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d272 = ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> if d212 then x2740 else x2730 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d18 )
        d277 : ( ( Set -> Set ) ∋ ( ( λ x2790 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if d114 then x2780 else false ) ) ) $ ( if false then d160 else true )
        d280 : if true then ( ( Set -> Set ) ∋ ( ( λ x2830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2840 -> Bool ) ) ) $ ( Bool )
        d280 = if if d79 then d18 else d154 then ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> d13 ) ) ) $ ( d194 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> d169 ) ) ) $ ( false )
        d285 : if false then ( ( Set -> Set ) ∋ ( ( λ x2880 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2890 -> x2890 ) ) ) $ ( Bool )
        d285 = if ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> d118 ) ) ) $ ( true ) else if d13 then d254 else d277
        d290 : ( ( Set -> Set ) ∋ ( ( λ x2920 -> if false then x2920 else x2920 ) ) ) $ ( if false then Bool else Bool )
        d290 = if if true then d231 else d21 then ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> false ) ) ) $ ( false ) else if d29 then false else d277
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2940 -> if false then x2940 else Bool ) ) ) $ ( if false then Bool else Bool )
        d293 = if if d121 then d79 else true then if true then true else d199 else if d218 then d290 else d5
        d295 : if false then if false then Bool else Bool else if false then Bool else Bool
        d295 = if ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> d143 ) ) ) $ ( d21 ) then if false then false else true else if true then d180 else true
        d297 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3000 -> Bool ) ) ) $ ( Bool )
        d297 = if ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> d65 ) ) ) $ ( d277 ) then if d138 then d143 else d140 else ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> x2990 ) ) ) $ ( false )
        d301 : if true then ( ( Set -> Set ) ∋ ( ( λ x3040 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> if false then true else false ) ) ) $ ( x3020 ) ) ) ) $ ( if false then false else true )
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> if true then x3090 else Bool ) ) ) $ ( if true then Bool else Bool )
        d305 = if ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> true ) ) ) $ ( d5 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> x3070 ) ) ) $ ( d157 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> false ) ) ) $ ( d76 )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> ( ( Set -> Set ) ∋ ( ( λ x3140 -> if false then x3140 else x3140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d310 = if ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> d301 ) ) ) $ ( true ) else if d187 then d215 else d57
        d315 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> if x3170 then true else d215 ) ) ) $ ( x3160 ) ) ) ) $ ( if true then d18 else true )
        d319 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> if false then false else d174 ) ) ) $ ( false ) ) ) ) $ ( if d199 then false else true )
        d323 : ( ( Set -> Set ) ∋ ( ( λ x3250 -> ( ( Set -> Set ) ∋ ( ( λ x3260 -> if false then Bool else x3260 ) ) ) $ ( x3250 ) ) ) ) $ ( if true then Bool else Bool )
        d323 = if if d143 then d215 else d184 then ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> d272 ) ) ) $ ( false ) else if d194 then d53 else false
        d327 : if false then ( ( Set -> Set ) ∋ ( ( λ x3290 -> x3290 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d327 = if if true then false else false then if d70 then d194 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> d53 ) ) ) $ ( false )
        d330 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool )
        d330 = if if d305 then d184 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( true )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> if true then x3350 else x3350 ) ) ) $ ( if true then Bool else Bool )
        d334 = if if d32 then d267 else false then if d244 then d36 else d293 else if true then false else d207
        d336 : ( ( Set -> Set ) ∋ ( ( λ x3370 -> ( ( Set -> Set ) ∋ ( ( λ x3380 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d336 = if if d212 then d164 else true then if true then d244 else d235 else if d48 then d263 else d280
        d339 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3410 -> x3410 ) ) ) $ ( Bool )
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> if true then d92 else true ) ) ) $ ( if d102 then false else d138 )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> ( ( Set -> Set ) ∋ ( ( λ x3470 -> if true then x3460 else x3470 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d342 = if ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> d102 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> false ) ) ) $ ( false )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> if false then x3510 else Bool ) ) ) $ ( if false then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> if d238 then false else d194 ) ) ) $ ( d199 ) ) ) ) $ ( if true then d174 else false )
        d352 : if true then if true then Bool else Bool else if false then Bool else Bool
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> if d143 then x3530 else true ) ) ) $ ( true ) ) ) ) $ ( if d50 then d5 else d218 )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x3570 -> if false then x3570 else x3570 ) ) ) $ ( if false then Bool else Bool )
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> if d267 then x3560 else d330 ) ) ) $ ( if true then d184 else false )
        d358 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> if false then x3600 else x3600 ) ) ) $ ( if false then Bool else Bool )
        d358 = ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if d154 then d65 else d267 ) ) ) $ ( if true then d111 else d86 )
        d361 : if false then ( ( Set -> Set ) ∋ ( ( λ x3640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3650 -> x3650 ) ) ) $ ( Bool )
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> d194 ) ) ) $ ( true ) then if d18 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> d97 ) ) ) $ ( d114 )
        d366 : if false then ( ( Set -> Set ) ∋ ( ( λ x3680 -> x3680 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3690 -> Bool ) ) ) $ ( Bool )
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> if false then x3670 else d295 ) ) ) $ ( if d361 then false else d106 )
        d370 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3720 -> Bool ) ) ) $ ( Bool )
        d370 = ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> if d226 then x3710 else false ) ) ) $ ( if d72 then false else d267 )
        d373 : ( ( Set -> Set ) ∋ ( ( λ x3760 -> if true then Bool else x3760 ) ) ) $ ( if true then Bool else Bool )
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> if d76 then d111 else x3740 ) ) ) $ ( d81 ) ) ) ) $ ( if d352 then d97 else d361 )
        d377 : ( ( Set -> Set ) ∋ ( ( λ x3800 -> ( ( Set -> Set ) ∋ ( ( λ x3810 -> if false then x3800 else Bool ) ) ) $ ( x3800 ) ) ) ) $ ( if false then Bool else Bool )
        d377 = if ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> d10 ) ) ) $ ( true ) then if false then false else d310 else ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> true ) ) ) $ ( d263 )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x3840 -> ( ( Set -> Set ) ∋ ( ( λ x3850 -> if false then x3850 else x3850 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d382 = if if d238 then true else d203 then ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> d106 ) ) ) $ ( d187 ) else if d1 then d180 else d238
        d386 : if true then ( ( Set -> Set ) ∋ ( ( λ x3870 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3880 -> Bool ) ) ) $ ( Bool )
        d386 = if if false then true else d40 then if false then false else d263 else if true then d157 else d218
        d389 : ( ( Set -> Set ) ∋ ( ( λ x3910 -> if false then x3910 else x3910 ) ) ) $ ( if true then Bool else Bool )
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> if false then x3900 else d277 ) ) ) $ ( if d157 then false else d29 )
        d392 : if true then ( ( Set -> Set ) ∋ ( ( λ x3950 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d392 = if ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> d290 ) ) ) $ ( d187 ) then if d327 then d106 else d114 else ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> d250 ) ) ) $ ( d62 )
        d396 : if true then ( ( Set -> Set ) ∋ ( ( λ x3990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4000 -> x4000 ) ) ) $ ( Bool )
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if x3970 then true else x3970 ) ) ) $ ( false ) ) ) ) $ ( if d297 then false else d212 )
        d401 : if false then ( ( Set -> Set ) ∋ ( ( λ x4040 -> x4040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4050 -> Bool ) ) ) $ ( Bool )
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> if d323 then x4020 else d32 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d226 )
        d406 : if false then if true then Bool else Bool else if true then Bool else Bool
        d406 = if if false then d263 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> d231 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> d238 ) ) ) $ ( d348 )
        d409 : if true then ( ( Set -> Set ) ∋ ( ( λ x4120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4130 -> Bool ) ) ) $ ( Bool )
        d409 = if ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( d62 ) then if d263 then d315 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( d327 )
        d414 : if true then if true then Bool else Bool else if false then Bool else Bool
        d414 = if ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> x4150 ) ) ) $ ( d111 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( d290 ) else if d1 then false else false
        d417 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> if true then d7 else d259 ) ) ) $ ( false ) ) ) ) $ ( if d169 then false else true )
        d421 : if false then ( ( Set -> Set ) ∋ ( ( λ x4240 -> x4240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4250 -> Bool ) ) ) $ ( Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> if d290 then true else x4230 ) ) ) $ ( x4220 ) ) ) ) $ ( if true then false else true )
        d426 : ( ( Set -> Set ) ∋ ( ( λ x4280 -> ( ( Set -> Set ) ∋ ( ( λ x4290 -> if true then Bool else x4290 ) ) ) $ ( x4280 ) ) ) ) $ ( if false then Bool else Bool )
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> if true then d190 else d212 ) ) ) $ ( if d10 then d377 else d358 )
        d430 : ( ( Set -> Set ) ∋ ( ( λ x4320 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d430 = if if d426 then false else d21 then ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> false ) ) ) $ ( d125 ) else if d187 then d218 else false
        d433 : ( ( Set -> Set ) ∋ ( ( λ x4360 -> if false then x4360 else x4360 ) ) ) $ ( if false then Bool else Bool )
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> if x4350 then x4340 else d301 ) ) ) $ ( x4340 ) ) ) ) $ ( if false then true else true )
        d437 : if false then if false then Bool else Bool else if false then Bool else Bool
        d437 = if if d235 then false else d212 then if true then d121 else true else if d355 then true else true
        d438 : if true then ( ( Set -> Set ) ∋ ( ( λ x4400 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d438 = ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> if false then x4390 else false ) ) ) $ ( if d414 then true else true )
        d441 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> ( ( Set -> Set ) ∋ ( ( λ x4450 -> if false then x4440 else Bool ) ) ) $ ( x4440 ) ) ) ) $ ( if false then Bool else Bool )
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if x4430 then d226 else x4430 ) ) ) $ ( x4420 ) ) ) ) $ ( if d32 then d433 else true )
        d446 : if false then if true then Bool else Bool else if false then Bool else Bool
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> if false then d36 else d76 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d449 = if if true then d184 else true then if true then true else d92 else ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> d396 ) ) ) $ ( d140 )
        d452 : if true then if false then Bool else Bool else if true then Bool else Bool
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if true then false else x4530 ) ) ) $ ( d352 ) ) ) ) $ ( if false then true else d267 )
        d455 : ( ( Set -> Set ) ∋ ( ( λ x4570 -> ( ( Set -> Set ) ∋ ( ( λ x4580 -> if true then Bool else x4570 ) ) ) $ ( x4570 ) ) ) ) $ ( if true then Bool else Bool )
        d455 = if ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> d421 ) ) ) $ ( d293 ) then if d190 then false else false else if false then d97 else true
        d459 : if true then ( ( Set -> Set ) ∋ ( ( λ x4620 -> x4620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4630 -> x4630 ) ) ) $ ( Bool )
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if d86 then x4610 else true ) ) ) $ ( x4600 ) ) ) ) $ ( if d44 then true else false )
        d464 : if false then ( ( Set -> Set ) ∋ ( ( λ x4660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4670 -> x4670 ) ) ) $ ( Bool )
        d464 = if ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> false ) ) ) $ ( d277 ) then if true then d140 else false else if false then true else true
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> if false then x4690 else Bool ) ) ) $ ( if true then Bool else Bool )
        d468 = if if d5 then false else true then if true then true else true else if d409 then true else d121
        d470 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> ( ( Set -> Set ) ∋ ( ( λ x4730 -> if true then Bool else x4730 ) ) ) $ ( x4720 ) ) ) ) $ ( if true then Bool else Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> if x4710 then false else x4710 ) ) ) $ ( if d305 then true else true )
        d474 : if true then if true then Bool else Bool else if false then Bool else Bool
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if d366 then d352 else d114 ) ) ) $ ( if false then true else false )
        d476 : if true then if false then Bool else Bool else if false then Bool else Bool
        d476 = if ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> d277 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> d218 ) ) ) $ ( d166 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> x4790 ) ) ) $ ( false )
        d480 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4830 -> Bool ) ) ) $ ( Bool )
        d480 = if ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> false ) ) ) $ ( true ) then if d222 then true else d406 else ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( d44 )
        d484 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( Bool )
        d484 = if if d169 then false else d1 then if false then d272 else false else if d446 then d449 else d414
        d486 : if false then ( ( Set -> Set ) ∋ ( ( λ x4890 -> x4890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4900 -> Bool ) ) ) $ ( Bool )
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if false then false else x4870 ) ) ) $ ( true ) ) ) ) $ ( if d70 then d62 else d169 )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4930 -> ( ( Set -> Set ) ∋ ( ( λ x4940 -> if false then Bool else Bool ) ) ) $ ( x4930 ) ) ) ) $ ( if false then Bool else Bool )
        d491 = if if false then d150 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> d446 ) ) ) $ ( false ) else if d146 then true else true
        d495 : ( ( Set -> Set ) ∋ ( ( λ x4980 -> ( ( Set -> Set ) ∋ ( ( λ x4990 -> if true then Bool else x4990 ) ) ) $ ( x4980 ) ) ) ) $ ( if false then Bool else Bool )
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> if x4960 then false else true ) ) ) $ ( d97 ) ) ) ) $ ( if true then d377 else d259 )
        d500 : ( ( Set -> Set ) ∋ ( ( λ x5030 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> if x5010 then x5010 else d305 ) ) ) $ ( x5010 ) ) ) ) $ ( if d401 then d48 else true )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> if true then Bool else x5070 ) ) ) $ ( if true then Bool else Bool )
        d504 = if ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> d373 ) ) ) $ ( d24 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> d323 ) ) ) $ ( false ) else if d468 then false else d373
        d508 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5100 -> x5100 ) ) ) $ ( Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> if x5090 then d231 else true ) ) ) $ ( if true then d40 else d290 )
        d511 : ( ( Set -> Set ) ∋ ( ( λ x5130 -> if false then Bool else x5130 ) ) ) $ ( if false then Bool else Bool )
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> if x5120 then d327 else false ) ) ) $ ( if false then false else d140 )
        d514 : ( ( Set -> Set ) ∋ ( ( λ x5170 -> if false then x5170 else Bool ) ) ) $ ( if true then Bool else Bool )
        d514 = if ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( d218 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> d130 ) ) ) $ ( false ) else if true then d177 else d169
        d518 : if false then ( ( Set -> Set ) ∋ ( ( λ x5200 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> if d7 then d430 else false ) ) ) $ ( if false then d134 else false )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x5240 -> ( ( Set -> Set ) ∋ ( ( λ x5250 -> if false then Bool else x5240 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if x5220 then d421 else d293 ) ) ) $ ( true ) ) ) ) $ ( if true then d310 else true )
        d526 : if false then ( ( Set -> Set ) ∋ ( ( λ x5280 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d526 = if ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> d290 ) ) ) $ ( true ) then if d382 then true else false else if d267 then d495 else false
        d529 : ( ( Set -> Set ) ∋ ( ( λ x5310 -> ( ( Set -> Set ) ∋ ( ( λ x5320 -> if false then Bool else Bool ) ) ) $ ( x5310 ) ) ) ) $ ( if true then Bool else Bool )
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> if false then d97 else false ) ) ) $ ( if d44 then true else false )
        d533 : if false then ( ( Set -> Set ) ∋ ( ( λ x5370 -> x5370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d533 = if ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> x5340 ) ) ) $ ( d7 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> x5350 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( true )
        d538 : ( ( Set -> Set ) ∋ ( ( λ x5410 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d538 = if ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> true ) ) ) $ ( d389 ) then if true then d480 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> d114 ) ) ) $ ( d430 )
        d542 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5460 -> x5460 ) ) ) $ ( Bool )
        d542 = if ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> d134 ) ) ) $ ( d342 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> d504 ) ) ) $ ( d433 )
        d547 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> ( ( Set -> Set ) ∋ ( ( λ x5510 -> if true then x5510 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d547 = if ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( false ) then if false then d21 else d86 else ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> true ) ) ) $ ( true )
        d552 : if true then ( ( Set -> Set ) ∋ ( ( λ x5530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( Bool )
        d552 = if if false then d526 else true then if d547 then true else d207 else if d180 then true else false
        d555 : if true then ( ( Set -> Set ) ∋ ( ( λ x5580 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5590 -> x5590 ) ) ) $ ( Bool )
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> if x5570 then false else x5560 ) ) ) $ ( true ) ) ) ) $ ( if true then d310 else d441 )
        d560 : if false then ( ( Set -> Set ) ∋ ( ( λ x5620 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d560 = ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> if false then false else x5610 ) ) ) $ ( if true then d81 else true )
        d563 : if false then ( ( Set -> Set ) ∋ ( ( λ x5660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5670 -> Bool ) ) ) $ ( Bool )
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> if false then true else false ) ) ) $ ( d86 ) ) ) ) $ ( if d401 then false else true )