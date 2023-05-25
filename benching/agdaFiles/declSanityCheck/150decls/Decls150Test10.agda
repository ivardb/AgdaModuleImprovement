module Decls150Test10  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x20 then x30 else true ) ) ) $ ( x20 ) ) ) ) $ ( if false then true else false )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else x80 ) ) ) $ ( if true then Bool else Bool )
        d6 = if if true then false else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x70 -> false ) ) ) $ ( d1 ) else if false then d1 else false
        d9 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then x120 else Bool ) ) ) $ ( if true then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then x100 else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then x150 else x150 ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if d9 then false else false ) ) ) $ ( if d1 then true else d1 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if d6 then d9 else false ) ) ) $ ( if d9 then d6 else d6 )
        d20 : if true then if true then Bool else Bool else if true then Bool else Bool
        d20 = if if true then true else d9 then ( ( Bool -> Bool ) ∋ ( ( λ x210 -> false ) ) ) $ ( d16 ) else if true then d16 else true
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then Bool else x250 ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d13 then d20 else d9 then ( ( Bool -> Bool ) ∋ ( ( λ x230 -> false ) ) ) $ ( d16 ) else ( ( Bool -> Bool ) ∋ ( ( λ x240 -> true ) ) ) $ ( false )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x280 -> if true then Bool else x280 ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if d13 then d22 else d16 ) ) ) $ ( if d16 then true else true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> if true then x320 else x310 ) ) ) $ ( x310 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = if ( ( Bool -> Bool ) ∋ ( ( λ x300 -> d1 ) ) ) $ ( false ) then if false then true else d13 else if d6 then true else d13
        d33 : ( ( Set -> Set ) ∋ ( ( λ x350 -> if false then x350 else Bool ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if x340 then x340 else x340 ) ) ) $ ( if d1 then d20 else false )
        d36 : if true then ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if false then true else x370 ) ) ) $ ( if d33 then d26 else true )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x410 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if d33 then true else true ) ) ) $ ( if true then true else d36 )
        d42 : if false then ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if x430 then d9 else x430 ) ) ) $ ( if d9 then true else d13 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if d39 then x480 else x480 ) ) ) $ ( d9 ) ) ) ) $ ( if false then d16 else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if false then x530 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if d26 then x510 else x510 ) ) ) $ ( if d36 then d22 else false )
        d54 : if true then ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x570 -> Bool ) ) ) $ ( Bool )
        d54 = if if true then d6 else d22 then ( ( Bool -> Bool ) ∋ ( ( λ x550 -> false ) ) ) $ ( false ) else if d36 then true else true
        d58 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( Bool )
        d58 = if if false then d20 else d36 then ( ( Bool -> Bool ) ∋ ( ( λ x590 -> false ) ) ) $ ( d39 ) else if d26 then true else true
        d61 : if false then ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if false then x620 else x630 ) ) ) $ ( true ) ) ) ) $ ( if d6 then d20 else d58 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if false then d22 else false ) ) ) $ ( x660 ) ) ) ) $ ( if false then d16 else false )
        d69 : if true then ( ( Set -> Set ) ∋ ( ( λ x710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x720 -> x720 ) ) ) $ ( Bool )
        d69 = if ( ( Bool -> Bool ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( true ) then if false then false else d26 else if false then d22 else d65
        d73 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if true then x760 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( d39 ) else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> d58 ) ) ) $ ( false )
        d77 : if false then ( ( Set -> Set ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d77 = if ( ( Bool -> Bool ) ∋ ( ( λ x780 -> d9 ) ) ) $ ( d50 ) then if false then true else d50 else ( ( Bool -> Bool ) ∋ ( ( λ x790 -> true ) ) ) $ ( true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then Bool else x850 ) ) ) $ ( if true then Bool else Bool )
        d81 = if ( ( Bool -> Bool ) ∋ ( ( λ x820 -> d33 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( d46 ) else ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( true )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> if true then x890 else Bool ) ) ) $ ( x890 ) ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if false then true else d33 ) ) ) $ ( d13 ) ) ) ) $ ( if d81 then d69 else d9 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> if true then Bool else x940 ) ) ) $ ( x930 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if false then x920 else x920 ) ) ) $ ( if d50 then d20 else true )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d95 = if ( ( Bool -> Bool ) ∋ ( ( λ x960 -> x960 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x970 -> d69 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d9 ) ) ) $ ( true )
        d101 : if false then ( ( Set -> Set ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if x1020 then true else x1030 ) ) ) $ ( x1020 ) ) ) ) $ ( if d81 then true else d61 )
        d106 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1080 -> Bool ) ) ) $ ( Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if true then d101 else d77 ) ) ) $ ( if d9 then d77 else d58 )
        d109 : if true then ( ( Set -> Set ) ∋ ( ( λ x1120 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if x1100 then true else d54 ) ) ) $ ( x1100 ) ) ) ) $ ( if d1 then true else false )
        d113 : if false then ( ( Set -> Set ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d113 = if if d109 then true else d50 then ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( d46 ) else if false then d95 else d86
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> ( ( Set -> Set ) ∋ ( ( λ x1200 -> if true then x1190 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> if x1170 then x1170 else d26 ) ) ) $ ( d61 ) ) ) ) $ ( if d13 then true else d81 )
        d121 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1240 -> Bool ) ) ) $ ( Bool )
        d121 = if ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> true ) ) ) $ ( d46 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> true ) ) ) $ ( d9 ) else if d116 then d29 else false
        d125 : if true then ( ( Set -> Set ) ∋ ( ( λ x1280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if x1260 then d46 else d65 ) ) ) $ ( d61 ) ) ) ) $ ( if true then false else d29 )
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1330 -> Bool ) ) ) $ ( Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> false ) ) ) $ ( d9 ) then if d58 then true else true else if d1 then true else d109
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> if true then x1370 else Bool ) ) ) $ ( if true then Bool else Bool )
        d134 = if if d54 then d33 else d130 then ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> d39 ) ) ) $ ( d69 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( d36 )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> ( ( Set -> Set ) ∋ ( ( λ x1430 -> if false then Bool else x1420 ) ) ) $ ( x1420 ) ) ) ) $ ( if true then Bool else Bool )
        d138 = if ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> false ) ) ) $ ( d36 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> true ) ) ) $ ( d26 )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then x1460 else x1470 ) ) ) $ ( x1460 ) ) ) ) $ ( if false then Bool else Bool )
        d144 = if if d116 then d91 else d69 then if d125 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> x1450 ) ) ) $ ( d101 )
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then x1510 else Bool ) ) ) $ ( x1500 ) ) ) ) $ ( if false then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> if true then x1490 else x1490 ) ) ) $ ( if d26 then false else true )
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> if true then x1550 else Bool ) ) ) $ ( if true then Bool else Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> if d113 then true else d91 ) ) ) $ ( x1530 ) ) ) ) $ ( if false then true else false )
        d156 : if true then ( ( Set -> Set ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1580 -> Bool ) ) ) $ ( Bool )
        d156 = if if false then false else d134 then if d121 then true else d109 else if d77 then true else d125
        d159 : if false then if false then Bool else Bool else if false then Bool else Bool
        d159 = if if false then true else d106 then if true then d20 else d54 else if d148 then d148 else false
        d160 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if x1610 then x1610 else d36 ) ) ) $ ( if false then false else true )
        d163 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then x1670 else x1670 ) ) ) $ ( if true then Bool else Bool )
        d163 = if ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> d46 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> d1 ) ) ) $ ( d101 )
        d168 : if true then ( ( Set -> Set ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( Bool )
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if d156 then true else x1690 ) ) ) $ ( if true then d91 else d138 )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> if false then x1750 else Bool ) ) ) $ ( x1750 ) ) ) ) $ ( if false then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if d13 then true else d77 ) ) ) $ ( x1730 ) ) ) ) $ ( if true then true else false )
        d177 : if true then if false then Bool else Bool else if true then Bool else Bool
        d177 = if if false then d1 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> d13 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( true )
        d180 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> ( ( Set -> Set ) ∋ ( ( λ x1830 -> if true then x1820 else x1820 ) ) ) $ ( x1820 ) ) ) ) $ ( if true then Bool else Bool )
        d180 = if if d13 then d125 else false then if d163 then d101 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> d20 ) ) ) $ ( d86 )
        d184 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> ( ( Set -> Set ) ∋ ( ( λ x1880 -> if false then Bool else x1880 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if d81 then x1850 else x1860 ) ) ) $ ( x1850 ) ) ) ) $ ( if d148 then d69 else false )
        d189 : if false then ( ( Set -> Set ) ∋ ( ( λ x1910 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> if false then x1900 else x1900 ) ) ) $ ( if false then d125 else d26 )
        d192 : if true then ( ( Set -> Set ) ∋ ( ( λ x1940 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( Bool )
        d192 = if if d39 then false else d144 then ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> false ) ) ) $ ( true ) else if d168 then true else d50
        d196 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1990 -> Bool ) ) ) $ ( Bool )
        d196 = if if d36 then d20 else d22 then ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> d9 ) ) ) $ ( d116 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> d134 ) ) ) $ ( false )
        d200 : if false then ( ( Set -> Set ) ∋ ( ( λ x2030 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d200 = if if d163 then false else d65 then ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> d65 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> d65 ) ) ) $ ( d101 )
        d204 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2060 -> Bool ) ) ) $ ( Bool )
        d204 = if if d113 then d156 else true then if d180 then false else d54 else ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> d29 ) ) ) $ ( false )
        d207 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2090 -> Bool ) ) ) $ ( Bool )
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> if d46 then x2080 else x2080 ) ) ) $ ( if d69 then false else d156 )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> if true then x2130 else Bool ) ) ) $ ( if false then Bool else Bool )
        d210 = ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> if true then d9 else d36 ) ) ) $ ( false ) ) ) ) $ ( if false then d168 else d13 )
        d214 : ( ( Set -> Set ) ∋ ( ( λ x2170 -> ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then x2180 else x2180 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d214 = if if false then d148 else d86 then ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> d50 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> d189 ) ) ) $ ( false )
        d219 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d219 = if ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> x2200 ) ) ) $ ( d148 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d1 ) ) ) $ ( true ) else if d16 then d81 else false
        d223 : if true then ( ( Set -> Set ) ∋ ( ( λ x2250 -> x2250 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d223 = if ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> d219 ) ) ) $ ( d6 ) then if d58 then true else d160 else if d163 then d138 else true
        d226 : if true then if true then Bool else Bool else if false then Bool else Bool
        d226 = if ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> false ) ) ) $ ( d196 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> d177 ) ) ) $ ( false ) else if true then d138 else d210
        d229 : if true then ( ( Set -> Set ) ∋ ( ( λ x2320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2330 -> Bool ) ) ) $ ( Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if x2300 then x2300 else d1 ) ) ) $ ( x2300 ) ) ) ) $ ( if true then d50 else d22 )
        d234 : if true then ( ( Set -> Set ) ∋ ( ( λ x2370 -> x2370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( Bool )
        d234 = if ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> d95 ) ) ) $ ( d144 ) then if false then d192 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> d160 ) ) ) $ ( d152 )
        d239 : ( ( Set -> Set ) ∋ ( ( λ x2420 -> ( ( Set -> Set ) ∋ ( ( λ x2430 -> if true then Bool else x2430 ) ) ) $ ( x2420 ) ) ) ) $ ( if false then Bool else Bool )
        d239 = if ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( false ) then if d9 then d125 else d77 else ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( d50 )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> if false then x2460 else x2460 ) ) ) $ ( x2460 ) ) ) ) $ ( if true then Bool else Bool )
        d244 = if ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> false ) ) ) $ ( true ) then if false then false else d26 else if true then d210 else d210
        d248 : ( ( Set -> Set ) ∋ ( ( λ x2510 -> if true then x2510 else Bool ) ) ) $ ( if true then Bool else Bool )
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if x2500 then d163 else x2490 ) ) ) $ ( d54 ) ) ) ) $ ( if d239 then d9 else true )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> ( ( Set -> Set ) ∋ ( ( λ x2550 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> if x2530 then true else d13 ) ) ) $ ( if d26 then true else true )
        d256 : ( ( Set -> Set ) ∋ ( ( λ x2590 -> ( ( Set -> Set ) ∋ ( ( λ x2600 -> if false then x2590 else x2590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if true then true else x2570 ) ) ) $ ( true ) ) ) ) $ ( if false then d168 else false )
        d261 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( Bool )
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if d9 then d200 else d192 ) ) ) $ ( if d156 then d256 else true )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x2660 -> ( ( Set -> Set ) ∋ ( ( λ x2670 -> if false then Bool else Bool ) ) ) $ ( x2660 ) ) ) ) $ ( if true then Bool else Bool )
        d264 = if if true then d116 else false then if true then false else d116 else ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> true ) ) ) $ ( d73 )
        d268 : if false then if true then Bool else Bool else if true then Bool else Bool
        d268 = if if d50 then d223 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> d109 ) ) ) $ ( d109 ) else if true then d256 else false
        d270 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2720 -> x2720 ) ) ) $ ( Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if d54 then false else true ) ) ) $ ( if d252 then d39 else true )
        d273 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( Bool )
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if false then x2740 else x2740 ) ) ) $ ( false ) ) ) ) $ ( if d261 then d177 else true )
        d277 : ( ( Set -> Set ) ∋ ( ( λ x2810 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d277 = if ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( d189 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> d159 ) ) ) $ ( d226 )
        d282 : if true then ( ( Set -> Set ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d282 = if if d29 then d1 else true then if d189 then false else d229 else if false then false else false
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> if false then x2880 else x2870 ) ) ) $ ( x2870 ) ) ) ) $ ( if false then Bool else Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if d86 then true else d125 ) ) ) $ ( d130 ) ) ) ) $ ( if true then true else false )
        d289 : if false then ( ( Set -> Set ) ∋ ( ( λ x2910 -> x2910 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if x2900 then x2900 else true ) ) ) $ ( if d144 then true else true )
        d292 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> if false then Bool else Bool ) ) ) $ ( x2950 ) ) ) ) $ ( if false then Bool else Bool )
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if true then d282 else d144 ) ) ) $ ( d261 ) ) ) ) $ ( if d184 then true else false )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x2980 -> ( ( Set -> Set ) ∋ ( ( λ x2990 -> if false then x2990 else x2990 ) ) ) $ ( x2980 ) ) ) ) $ ( if true then Bool else Bool )
        d297 = if if false then d130 else d226 then if d168 then true else true else if d39 then false else d180
        d300 : ( ( Set -> Set ) ∋ ( ( λ x3030 -> if false then x3030 else Bool ) ) ) $ ( if true then Bool else Bool )
        d300 = if ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> d125 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> false ) ) ) $ ( d270 ) else if d6 then false else true
        d304 : if true then if true then Bool else Bool else if false then Bool else Bool
        d304 = if if d270 then false else d125 then if d284 then d33 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> false ) ) ) $ ( true )
        d306 : if true then ( ( Set -> Set ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> if false then false else d95 ) ) ) $ ( x3070 ) ) ) ) $ ( if d33 then d42 else d204 )
        d310 : if false then ( ( Set -> Set ) ∋ ( ( λ x3120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3130 -> Bool ) ) ) $ ( Bool )
        d310 = if if false then d26 else d81 then ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> d86 ) ) ) $ ( d101 ) else if d144 then d33 else d229
        d314 : ( ( Set -> Set ) ∋ ( ( λ x3170 -> ( ( Set -> Set ) ∋ ( ( λ x3180 -> if false then x3180 else x3170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> if d81 then x3150 else false ) ) ) $ ( x3150 ) ) ) ) $ ( if true then true else d304 )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> if true then Bool else x3230 ) ) ) $ ( if true then Bool else Bool )
        d319 = if ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> d101 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> x3210 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( true )
        d324 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> if false then x3280 else x3280 ) ) ) $ ( if true then Bool else Bool )
        d324 = if ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> true ) ) ) $ ( d226 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> d184 ) ) ) $ ( d91 )
        d329 : ( ( Set -> Set ) ∋ ( ( λ x3310 -> if true then x3310 else Bool ) ) ) $ ( if false then Bool else Bool )
        d329 = if if true then false else false then if d261 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> x3300 ) ) ) $ ( false )
        d332 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3350 -> Bool ) ) ) $ ( Bool )
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> if false then x3330 else x3340 ) ) ) $ ( x3330 ) ) ) ) $ ( if true then false else d284 )
        d336 : ( ( Set -> Set ) ∋ ( ( λ x3390 -> ( ( Set -> Set ) ∋ ( ( λ x3400 -> if false then x3390 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d336 = if if d33 then d184 else d277 then ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> d196 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> true ) ) ) $ ( false )
        d341 : if true then ( ( Set -> Set ) ∋ ( ( λ x3440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3450 -> Bool ) ) ) $ ( Bool )
        d341 = if ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> true ) ) ) $ ( d152 ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> false ) ) ) $ ( d13 )
        d346 : ( ( Set -> Set ) ∋ ( ( λ x3490 -> if false then Bool else x3490 ) ) ) $ ( if true then Bool else Bool )
        d346 = if ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> false ) ) ) $ ( true ) then if true then d125 else d277 else ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> x3480 ) ) ) $ ( true )
        d350 : if false then ( ( Set -> Set ) ∋ ( ( λ x3520 -> x3520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d350 = ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> if false then x3510 else d160 ) ) ) $ ( if d219 then d101 else true )
        d353 : if true then ( ( Set -> Set ) ∋ ( ( λ x3550 -> x3550 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d353 = if ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> d130 ) ) ) $ ( d177 ) then if d244 then true else d306 else if d184 then true else false
        d356 : ( ( Set -> Set ) ∋ ( ( λ x3590 -> if false then Bool else x3590 ) ) ) $ ( if true then Bool else Bool )
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> if false then false else x3580 ) ) ) $ ( x3570 ) ) ) ) $ ( if true then d156 else false )
        d360 : if true then if true then Bool else Bool else if false then Bool else Bool
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if x3610 then x3610 else d61 ) ) ) $ ( if true then true else false )
        d362 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3640 -> Bool ) ) ) $ ( Bool )
        d362 = ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> if d86 then true else x3630 ) ) ) $ ( if true then true else true )
        d365 : ( ( Set -> Set ) ∋ ( ( λ x3680 -> if false then x3680 else x3680 ) ) ) $ ( if true then Bool else Bool )
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> if d207 then d336 else false ) ) ) $ ( d200 ) ) ) ) $ ( if true then false else true )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x3720 -> ( ( Set -> Set ) ∋ ( ( λ x3730 -> if true then x3720 else x3730 ) ) ) $ ( x3720 ) ) ) ) $ ( if false then Bool else Bool )
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> if x3700 then x3710 else x3710 ) ) ) $ ( x3700 ) ) ) ) $ ( if d264 then true else d163 )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then x3770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d374 = ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> if true then d42 else x3750 ) ) ) $ ( d65 ) ) ) ) $ ( if false then false else true )
        d378 : if true then if true then Bool else Bool else if false then Bool else Bool
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> if d252 then x3790 else d226 ) ) ) $ ( if d65 then d29 else d6 )
        d380 : if false then if false then Bool else Bool else if true then Bool else Bool
        d380 = if if true then d310 else d329 then if d20 then false else d314 else ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> d346 ) ) ) $ ( d109 )
        d382 : if false then ( ( Set -> Set ) ∋ ( ( λ x3850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3860 -> Bool ) ) ) $ ( Bool )
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> d277 ) ) ) $ ( d244 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( d207 ) else if false then true else d346
        d387 : if true then if true then Bool else Bool else if true then Bool else Bool
        d387 = if ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> x3880 ) ) ) $ ( d33 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> false ) ) ) $ ( false ) else if d214 then false else false
        d390 : if true then ( ( Set -> Set ) ∋ ( ( λ x3920 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> if true then false else true ) ) ) $ ( if d65 then false else d16 )
        d393 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3950 -> x3950 ) ) ) $ ( Bool )
        d393 = if if true then d156 else true then if true then true else d329 else ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> false ) ) ) $ ( true )
        d396 : if false then ( ( Set -> Set ) ∋ ( ( λ x3990 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if x3980 then x3970 else d297 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> if false then x4030 else Bool ) ) ) $ ( if true then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> if x4020 then true else d346 ) ) ) $ ( d172 ) ) ) ) $ ( if true then true else d252 )
        d404 : ( ( Set -> Set ) ∋ ( ( λ x4070 -> ( ( Set -> Set ) ∋ ( ( λ x4080 -> if false then Bool else x4080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> if false then x4050 else x4050 ) ) ) $ ( x4050 ) ) ) ) $ ( if d121 then true else false )
        d409 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> if true then Bool else x4120 ) ) ) $ ( if false then Bool else Bool )
        d409 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> d393 ) ) ) $ ( true )
        d413 : ( ( Set -> Set ) ∋ ( ( λ x4150 -> if false then x4150 else Bool ) ) ) $ ( if true then Bool else Bool )
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> if true then true else true ) ) ) $ ( if d362 then true else true )
        d416 : ( ( Set -> Set ) ∋ ( ( λ x4190 -> ( ( Set -> Set ) ∋ ( ( λ x4200 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d416 = if ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> false ) ) ) $ ( false ) else if d204 then true else d210
        d421 : if true then if false then Bool else Bool else if false then Bool else Bool
        d421 = if if true then true else d319 then if d304 then false else d226 else if true then d214 else false
        d422 : ( ( Set -> Set ) ∋ ( ( λ x4240 -> if true then x4240 else Bool ) ) ) $ ( if true then Bool else Bool )
        d422 = if if d310 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> x4230 ) ) ) $ ( d95 ) else if false then false else d29
        d425 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4270 -> x4270 ) ) ) $ ( Bool )
        d425 = if if false then d81 else d400 then ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> d172 ) ) ) $ ( false ) else if true then true else d69
        d428 : if true then ( ( Set -> Set ) ∋ ( ( λ x4300 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d428 = if if d101 then d73 else d387 then ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> d152 ) ) ) $ ( false ) else if false then false else d189
        d431 : if true then if true then Bool else Bool else if false then Bool else Bool
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if x4330 then false else false ) ) ) $ ( d248 ) ) ) ) $ ( if true then false else d244 )
        d434 : if false then ( ( Set -> Set ) ∋ ( ( λ x4360 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d434 = if ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> x4350 ) ) ) $ ( d163 ) then if d234 then d273 else true else if d73 then true else false
        d437 : ( ( Set -> Set ) ∋ ( ( λ x4400 -> if false then x4400 else x4400 ) ) ) $ ( if false then Bool else Bool )
        d437 = ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> if d248 then false else false ) ) ) $ ( d244 ) ) ) ) $ ( if false then false else d409 )
        d441 : if false then ( ( Set -> Set ) ∋ ( ( λ x4430 -> x4430 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4440 -> x4440 ) ) ) $ ( Bool )
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> if true then d20 else false ) ) ) $ ( if true then d189 else true )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> if true then x4480 else x4480 ) ) ) $ ( if true then Bool else Bool )
        d445 = if ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> d416 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> d219 ) ) ) $ ( false ) else if true then d116 else true
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d449 = if ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> x4500 ) ) ) $ ( d6 ) then if d282 then false else d289 else if d156 then d319 else d413
        d452 : if false then ( ( Set -> Set ) ∋ ( ( λ x4540 -> x4540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4550 -> Bool ) ) ) $ ( Bool )
        d452 = if ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> true ) ) ) $ ( false ) then if d319 then d106 else false else if d22 then false else d29
        d456 : if false then ( ( Set -> Set ) ∋ ( ( λ x4570 -> x4570 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d456 = if if true then d113 else d292 then if d329 then true else d9 else if false then d441 else d200
        d458 : if true then ( ( Set -> Set ) ∋ ( ( λ x4600 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4610 -> Bool ) ) ) $ ( Bool )
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if x4590 then true else x4590 ) ) ) $ ( if d219 then false else d306 )
        d462 : if false then if false then Bool else Bool else if false then Bool else Bool
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if d350 then false else false ) ) ) $ ( if d268 then false else true )
        d464 : if false then if false then Bool else Bool else if true then Bool else Bool
        d464 = if if d282 then d61 else d36 then ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( d6 ) else if d416 then d160 else d452
        d466 : if false then ( ( Set -> Set ) ∋ ( ( λ x4670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4680 -> x4680 ) ) ) $ ( Bool )
        d466 = if if false then false else d353 then if false then false else false else if false then d210 else true
        d469 : if false then ( ( Set -> Set ) ∋ ( ( λ x4720 -> x4720 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> if d306 then x4700 else false ) ) ) $ ( d86 ) ) ) ) $ ( if false then d378 else d138 )
        d473 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4750 -> Bool ) ) ) $ ( Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if false then x4740 else false ) ) ) $ ( if false then false else true )
        d476 : ( ( Set -> Set ) ∋ ( ( λ x4790 -> if true then Bool else x4790 ) ) ) $ ( if true then Bool else Bool )
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> if d204 then true else false ) ) ) $ ( x4770 ) ) ) ) $ ( if false then d473 else d22 )
        d480 : ( ( Set -> Set ) ∋ ( ( λ x4830 -> ( ( Set -> Set ) ∋ ( ( λ x4840 -> if true then Bool else x4830 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> if x4810 then x4820 else x4810 ) ) ) $ ( true ) ) ) ) $ ( if d54 then d256 else d380 )
        d485 : ( ( Set -> Set ) ∋ ( ( λ x4880 -> if true then x4880 else Bool ) ) ) $ ( if false then Bool else Bool )
        d485 = ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> if d300 then d437 else false ) ) ) $ ( d116 ) ) ) ) $ ( if d434 then false else d159 )
        d489 : ( ( Set -> Set ) ∋ ( ( λ x4920 -> ( ( Set -> Set ) ∋ ( ( λ x4930 -> if false then Bool else Bool ) ) ) $ ( x4920 ) ) ) ) $ ( if false then Bool else Bool )
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> if false then true else false ) ) ) $ ( x4900 ) ) ) ) $ ( if true then d270 else true )
        d494 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> ( ( Set -> Set ) ∋ ( ( λ x4980 -> if false then x4970 else x4980 ) ) ) $ ( x4970 ) ) ) ) $ ( if false then Bool else Bool )
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> if d270 then d26 else d42 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d499 : ( ( Set -> Set ) ∋ ( ( λ x5010 -> if false then x5010 else x5010 ) ) ) $ ( if false then Bool else Bool )
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> if d353 then x5000 else x5000 ) ) ) $ ( if d91 then true else d256 )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5050 -> if false then Bool else x5050 ) ) ) $ ( if false then Bool else Bool )
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> if false then false else d184 ) ) ) $ ( x5030 ) ) ) ) $ ( if false then false else d365 )
        d506 : ( ( Set -> Set ) ∋ ( ( λ x5100 -> ( ( Set -> Set ) ∋ ( ( λ x5110 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d506 = if ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> d6 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> x5080 ) ) ) $ ( d77 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> x5090 ) ) ) $ ( true )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> ( ( Set -> Set ) ∋ ( ( λ x5160 -> if false then Bool else x5150 ) ) ) $ ( x5150 ) ) ) ) $ ( if true then Bool else Bool )
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> if x5130 then d336 else d422 ) ) ) $ ( x5130 ) ) ) ) $ ( if true then d506 else d234 )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> ( ( Set -> Set ) ∋ ( ( λ x5200 -> if false then x5200 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d517 = if if true then true else d476 then if true then d382 else d77 else ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> d292 ) ) ) $ ( true )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x5240 -> ( ( Set -> Set ) ∋ ( ( λ x5250 -> if true then x5250 else x5240 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if x5230 then d273 else true ) ) ) $ ( d464 ) ) ) ) $ ( if d416 then false else false )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x5270 -> ( ( Set -> Set ) ∋ ( ( λ x5280 -> if false then x5270 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d526 = if if false then d125 else d130 then if true then true else d261 else if d200 then true else true
        d529 : ( ( Set -> Set ) ∋ ( ( λ x5310 -> if false then x5310 else x5310 ) ) ) $ ( if true then Bool else Bool )
        d529 = if ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> d144 ) ) ) $ ( d421 ) then if d413 then false else d404 else if d489 then false else false
        d532 : if true then ( ( Set -> Set ) ∋ ( ( λ x5340 -> x5340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d532 = if if true then true else d362 then ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> d374 ) ) ) $ ( d452 ) else if false then false else d356
        d535 : ( ( Set -> Set ) ∋ ( ( λ x5370 -> ( ( Set -> Set ) ∋ ( ( λ x5380 -> if false then Bool else Bool ) ) ) $ ( x5370 ) ) ) ) $ ( if false then Bool else Bool )
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> if d464 then false else x5360 ) ) ) $ ( if d160 then d226 else false )
        d539 : ( ( Set -> Set ) ∋ ( ( λ x5420 -> if false then x5420 else x5420 ) ) ) $ ( if false then Bool else Bool )
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if d73 then d277 else x5410 ) ) ) $ ( x5400 ) ) ) ) $ ( if d526 then false else true )
        d543 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5450 -> Bool ) ) ) $ ( Bool )
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if d422 then x5440 else x5440 ) ) ) $ ( if false then false else d324 )
        d546 : ( ( Set -> Set ) ∋ ( ( λ x5490 -> if true then x5490 else x5490 ) ) ) $ ( if true then Bool else Bool )
        d546 = if ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> false ) ) ) $ ( d458 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( false ) else if d159 then d324 else false
        d550 : if true then if true then Bool else Bool else if false then Bool else Bool
        d550 = ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> if d180 then x5520 else x5520 ) ) ) $ ( d356 ) ) ) ) $ ( if d219 then false else false )
        d553 : ( ( Set -> Set ) ∋ ( ( λ x5560 -> ( ( Set -> Set ) ∋ ( ( λ x5570 -> if true then Bool else x5570 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> if false then true else x5550 ) ) ) $ ( x5540 ) ) ) ) $ ( if d297 then true else d365 )
        d558 : if true then ( ( Set -> Set ) ∋ ( ( λ x5610 -> x5610 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if true then d319 else d378 ) ) ) $ ( false ) ) ) ) $ ( if d273 then d445 else false )
        d562 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5650 -> Bool ) ) ) $ ( Bool )
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> if true then true else x5640 ) ) ) $ ( d270 ) ) ) ) $ ( if false then d480 else false )
        d566 : ( ( Set -> Set ) ∋ ( ( λ x5690 -> ( ( Set -> Set ) ∋ ( ( λ x5700 -> if false then Bool else x5700 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d566 = if ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> d404 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> d350 ) ) ) $ ( true ) else if d6 then false else d39