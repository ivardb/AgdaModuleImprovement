module Decls150Test9  where
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
        d1 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool )
        d1 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( true )
        d5 : if false then ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if d1 then x70 else x70 ) ) ) $ ( false ) ) ) ) $ ( if false then d1 else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then Bool else x110 ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if if d1 then true else d1 then if d5 then d5 else d1 else if true then d1 else d1
        d13 : if true then if true then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if d1 then d5 else x140 ) ) ) $ ( if d5 then d1 else d10 )
        d15 : if true then if false then Bool else Bool else if true then Bool else Bool
        d15 = if if d5 then d5 else d10 then ( ( Bool -> Bool ) ∋ ( ( λ x160 -> d13 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> true ) ) ) $ ( d5 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if true then x210 else x210 ) ) ) $ ( if false then Bool else Bool )
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x200 -> true ) ) ) $ ( true ) else if d1 then true else d1
        d22 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x260 -> Bool ) ) ) $ ( Bool )
        d22 = if ( ( Bool -> Bool ) ∋ ( ( λ x230 -> x230 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x240 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x250 -> false ) ) ) $ ( d10 )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = if ( ( Bool -> Bool ) ∋ ( ( λ x280 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x300 -> d10 ) ) ) $ ( d10 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x330 -> ( ( Set -> Set ) ∋ ( ( λ x340 -> if true then x330 else Bool ) ) ) $ ( x330 ) ) ) ) $ ( if false then Bool else Bool )
        d31 = if ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d22 ) ) ) $ ( true ) then if d18 then false else d5 else if true then true else d5
        d35 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if x360 then d15 else false ) ) ) $ ( false ) ) ) ) $ ( if d15 then d31 else false )
        d39 : if false then ( ( Set -> Set ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if true then x400 else d13 ) ) ) $ ( if d1 then true else d15 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x440 -> if true then Bool else x440 ) ) ) $ ( if false then Bool else Bool )
        d42 = if if d22 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( d31 ) else if d10 then d39 else d35
        d45 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x470 -> Bool ) ) ) $ ( Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if x460 then x460 else x460 ) ) ) $ ( if d39 then d22 else false )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then Bool else x510 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if true then d10 else d35 ) ) ) $ ( if d27 then d13 else true )
        d52 : if true then ( ( Set -> Set ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d13 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x540 -> false ) ) ) $ ( d48 ) else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( true )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then x600 else x600 ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if true then x590 else d15 ) ) ) $ ( if true then false else false )
        d61 : if true then ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if x630 then d5 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d48 else d31 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then x690 else Bool ) ) ) $ ( x680 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if d39 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d42 then d27 else d61 )
        d70 : if true then ( ( Set -> Set ) ∋ ( ( λ x720 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x730 -> Bool ) ) ) $ ( Bool )
        d70 = if if d48 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( d27 ) else if d61 then true else false
        d74 : ( ( Set -> Set ) ∋ ( ( λ x770 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> if false then x770 else Bool ) ) ) $ ( x770 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if false then d35 else x760 ) ) ) $ ( x750 ) ) ) ) $ ( if true then d22 else false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x830 -> if false then Bool else Bool ) ) ) $ ( x820 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> if x800 then false else d39 ) ) ) $ ( x800 ) ) ) ) $ ( if true then false else d31 )
        d84 : if true then ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x880 -> Bool ) ) ) $ ( Bool )
        d84 = if ( ( Bool -> Bool ) ∋ ( ( λ x850 -> d39 ) ) ) $ ( true ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x860 -> d74 ) ) ) $ ( false )
        d89 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if true then d84 else x900 ) ) ) $ ( if false then false else d74 )
        d92 : if true then ( ( Set -> Set ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( Bool )
        d92 = if if true then d42 else d89 then if d79 then d15 else d70 else ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d39 ) ) ) $ ( d15 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> if false then x990 else x990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if false then x970 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d52 else d15 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then Bool else x1040 ) ) ) $ ( x1030 ) ) ) ) $ ( if true then Bool else Bool )
        d101 = if ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> d70 ) ) ) $ ( d1 ) then if false then d39 else false else if true then d15 else d5
        d105 : if true then ( ( Set -> Set ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if d96 then false else d45 ) ) ) $ ( d89 ) ) ) ) $ ( if true then d10 else false )
        d109 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool )
        d109 = if if false then d79 else true then if d101 then false else true else if d15 then d42 else d65
        d111 : if false then ( ( Set -> Set ) ∋ ( ( λ x1140 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if true then true else d45 ) ) ) $ ( x1120 ) ) ) ) $ ( if d27 then true else true )
        d116 : if true then ( ( Set -> Set ) ∋ ( ( λ x1190 -> x1190 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d116 = if ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> x1180 ) ) ) $ ( false ) else if d15 then d45 else d58
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> if false then x1230 else x1230 ) ) ) $ ( x1220 ) ) ) ) $ ( if true then Bool else Bool )
        d120 = if if true then true else true then if false then d61 else d22 else ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> d116 ) ) ) $ ( d31 )
        d124 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1260 -> Bool ) ) ) $ ( Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if x1250 then x1250 else x1250 ) ) ) $ ( if d79 then true else false )
        d127 : if false then ( ( Set -> Set ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d127 = if ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( true ) then if d84 then false else d27 else if true then false else true
        d130 : if true then if false then Bool else Bool else if false then Bool else Bool
        d130 = if if d127 then d109 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d74 ) ) ) $ ( false ) else if true then d124 else d35
        d132 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> ( ( Set -> Set ) ∋ ( ( λ x1350 -> if true then Bool else x1340 ) ) ) $ ( x1340 ) ) ) ) $ ( if true then Bool else Bool )
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if false then false else true ) ) ) $ ( if true then d15 else d105 )
        d136 : if true then ( ( Set -> Set ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if true then true else x1370 ) ) ) $ ( x1370 ) ) ) ) $ ( if d5 then d65 else d92 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then x1450 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d141 = if if d22 then d136 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( d18 )
        d146 : if true then ( ( Set -> Set ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d146 = if ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> false ) ) ) $ ( d84 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( d48 )
        d151 : if true then if true then Bool else Bool else if false then Bool else Bool
        d151 = if ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> true ) ) ) $ ( true ) then if false then true else d42 else if d96 then true else false
        d153 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> if true then Bool else Bool ) ) ) $ ( x1550 ) ) ) ) $ ( if false then Bool else Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> if d13 then false else false ) ) ) $ ( if d101 then d58 else false )
        d157 : if false then if false then Bool else Bool else if false then Bool else Bool
        d157 = if if d65 then true else true then if d58 then true else d48 else ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( true )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then Bool else x1630 ) ) ) $ ( x1620 ) ) ) ) $ ( if false then Bool else Bool )
        d159 = if ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> true ) ) ) $ ( true ) then if false then false else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> false ) ) ) $ ( false )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> if false then Bool else x1650 ) ) ) $ ( x1650 ) ) ) ) $ ( if true then Bool else Bool )
        d164 = if if d124 then false else false then if true then d130 else d109 else if true then false else false
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> if false then Bool else Bool ) ) ) $ ( x1700 ) ) ) ) $ ( if true then Bool else Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if false then d151 else x1690 ) ) ) $ ( false ) ) ) ) $ ( if d74 then d141 else d164 )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> if false then Bool else x1750 ) ) ) $ ( x1750 ) ) ) ) $ ( if true then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if d31 then x1730 else false ) ) ) $ ( x1730 ) ) ) ) $ ( if true then false else true )
        d177 : if false then ( ( Set -> Set ) ∋ ( ( λ x1790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1800 -> Bool ) ) ) $ ( Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if d89 then x1780 else d61 ) ) ) $ ( if false then d101 else false )
        d181 : if true then ( ( Set -> Set ) ∋ ( ( λ x1830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1840 -> x1840 ) ) ) $ ( Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if false then d157 else true ) ) ) $ ( if false then true else false )
        d185 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> ( ( Set -> Set ) ∋ ( ( λ x1880 -> if false then x1880 else x1880 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if d172 then false else d22 ) ) ) $ ( if true then d96 else true )
        d189 : if true then ( ( Set -> Set ) ∋ ( ( λ x1920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1930 -> x1930 ) ) ) $ ( Bool )
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if false then x1900 else x1910 ) ) ) $ ( true ) ) ) ) $ ( if d167 then d39 else d130 )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> if true then x1960 else Bool ) ) ) $ ( if true then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> if false then d42 else true ) ) ) $ ( if d42 then false else d153 )
        d197 : if false then if true then Bool else Bool else if false then Bool else Bool
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> if d84 then d177 else d35 ) ) ) $ ( if false then d70 else true )
        d199 : if false then if false then Bool else Bool else if true then Bool else Bool
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> if d89 then true else d127 ) ) ) $ ( d39 ) ) ) ) $ ( if false then d130 else d130 )
        d202 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then x2050 else x2050 ) ) ) $ ( if false then Bool else Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if d42 then true else d164 ) ) ) $ ( false ) ) ) ) $ ( if d141 then d96 else d157 )
        d206 : if false then ( ( Set -> Set ) ∋ ( ( λ x2090 -> x2090 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> if true then d65 else d157 ) ) ) $ ( d111 ) ) ) ) $ ( if d120 then true else d52 )
        d210 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2110 -> Bool ) ) ) $ ( Bool )
        d210 = if if false then true else d65 then if false then true else true else if true then false else false
        d212 : ( ( Set -> Set ) ∋ ( ( λ x2150 -> if false then x2150 else x2150 ) ) ) $ ( if true then Bool else Bool )
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> if d132 then true else x2130 ) ) ) $ ( d210 ) ) ) ) $ ( if d31 then d151 else true )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then x2180 else Bool ) ) ) $ ( if true then Bool else Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if d202 then d74 else x2170 ) ) ) $ ( if false then true else false )
        d219 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> ( ( Set -> Set ) ∋ ( ( λ x2230 -> if false then x2230 else Bool ) ) ) $ ( x2220 ) ) ) ) $ ( if true then Bool else Bool )
        d219 = ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> if false then d84 else x2200 ) ) ) $ ( d74 ) ) ) ) $ ( if d120 then false else false )
        d224 : ( ( Set -> Set ) ∋ ( ( λ x2270 -> if false then x2270 else Bool ) ) ) $ ( if true then Bool else Bool )
        d224 = ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> if d92 then false else true ) ) ) $ ( true ) ) ) ) $ ( if true then d202 else d31 )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x2310 -> if true then x2310 else Bool ) ) ) $ ( if false then Bool else Bool )
        d228 = if if d197 then d157 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> true ) ) ) $ ( d189 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> x2300 ) ) ) $ ( false )
        d232 : if true then ( ( Set -> Set ) ∋ ( ( λ x2350 -> x2350 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> if d199 then true else d224 ) ) ) $ ( x2330 ) ) ) ) $ ( if false then d177 else true )
        d236 : ( ( Set -> Set ) ∋ ( ( λ x2400 -> ( ( Set -> Set ) ∋ ( ( λ x2410 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d236 = if ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> x2370 ) ) ) $ ( d116 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> true ) ) ) $ ( d224 )
        d242 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> ( ( Set -> Set ) ∋ ( ( λ x2450 -> if true then x2450 else x2440 ) ) ) $ ( x2440 ) ) ) ) $ ( if true then Bool else Bool )
        d242 = if ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> false ) ) ) $ ( false ) then if d181 then true else false else if d228 then false else d35
        d246 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> ( ( Set -> Set ) ∋ ( ( λ x2500 -> if true then x2500 else x2500 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d246 = ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> if true then d206 else d141 ) ) ) $ ( d224 ) ) ) ) $ ( if d22 then d79 else d242 )
        d251 : if false then ( ( Set -> Set ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2540 -> x2540 ) ) ) $ ( Bool )
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if d48 then x2520 else d242 ) ) ) $ ( if d35 then false else false )
        d255 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> ( ( Set -> Set ) ∋ ( ( λ x2590 -> if false then x2580 else Bool ) ) ) $ ( x2580 ) ) ) ) $ ( if true then Bool else Bool )
        d255 = if ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( false ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( d65 )
        d260 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2630 -> Bool ) ) ) $ ( Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if x2610 then d212 else x2620 ) ) ) $ ( x2610 ) ) ) ) $ ( if d116 then false else d210 )
        d264 : if true then if false then Bool else Bool else if false then Bool else Bool
        d264 = if ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> x2650 ) ) ) $ ( true ) then if d61 then d228 else true else if true then d74 else true
        d266 : ( ( Set -> Set ) ∋ ( ( λ x2690 -> if true then x2690 else x2690 ) ) ) $ ( if true then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> if d92 then x2670 else true ) ) ) $ ( d92 ) ) ) ) $ ( if false then d159 else d10 )
        d270 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if x2710 then d109 else d65 ) ) ) $ ( if d202 then false else d153 )
        d273 : ( ( Set -> Set ) ∋ ( ( λ x2740 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d273 = if if d13 then true else true then if true then d5 else d70 else if true then true else false
        d275 : if false then if false then Bool else Bool else if true then Bool else Bool
        d275 = if ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> d48 ) ) ) $ ( d96 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( true ) else if d185 then false else d92
        d278 : ( ( Set -> Set ) ∋ ( ( λ x2820 -> if false then x2820 else Bool ) ) ) $ ( if false then Bool else Bool )
        d278 = if ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> false ) ) ) $ ( d264 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> x2810 ) ) ) $ ( d270 )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> ( ( Set -> Set ) ∋ ( ( λ x2860 -> if false then Bool else x2860 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> if true then d224 else true ) ) ) $ ( if false then true else d159 )
        d287 : if false then ( ( Set -> Set ) ∋ ( ( λ x2900 -> x2900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2910 -> x2910 ) ) ) $ ( Bool )
        d287 = if ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> d70 ) ) ) $ ( d199 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> d199 ) ) ) $ ( true ) else if d74 then false else false
        d292 : if true then ( ( Set -> Set ) ∋ ( ( λ x2950 -> x2950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2960 -> x2960 ) ) ) $ ( Bool )
        d292 = if ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> d124 ) ) ) $ ( d224 ) then if true then d172 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> false ) ) ) $ ( d45 )
        d297 : if false then ( ( Set -> Set ) ∋ ( ( λ x3000 -> x3000 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> if x2990 then true else d189 ) ) ) $ ( x2980 ) ) ) ) $ ( if d202 then false else false )
        d301 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if true then x3050 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> if x3030 then false else false ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d306 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> ( ( Set -> Set ) ∋ ( ( λ x3100 -> if true then Bool else x3100 ) ) ) $ ( x3090 ) ) ) ) $ ( if false then Bool else Bool )
        d306 = if if true then true else d270 then ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> d42 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> d89 ) ) ) $ ( d216 )
        d311 : if true then if false then Bool else Bool else if true then Bool else Bool
        d311 = if ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> x3120 ) ) ) $ ( d120 ) then if true then d242 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> x3130 ) ) ) $ ( d120 )
        d314 : if true then ( ( Set -> Set ) ∋ ( ( λ x3170 -> x3170 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> if d35 then x3150 else x3160 ) ) ) $ ( d153 ) ) ) ) $ ( if true then false else true )
        d318 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3210 -> Bool ) ) ) $ ( Bool )
        d318 = if ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> false ) ) ) $ ( false ) then if false then d127 else d301 else ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> d306 ) ) ) $ ( d275 )
        d322 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> ( ( Set -> Set ) ∋ ( ( λ x3250 -> if true then Bool else Bool ) ) ) $ ( x3240 ) ) ) ) $ ( if true then Bool else Bool )
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> if x3230 then x3230 else d318 ) ) ) $ ( if d1 then d197 else true )
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then x3300 else Bool ) ) ) $ ( if false then Bool else Bool )
        d326 = if ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> true ) ) ) $ ( d236 )
        d331 : if true then ( ( Set -> Set ) ∋ ( ( λ x3350 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d331 = if ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> d45 ) ) ) $ ( d127 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> x3340 ) ) ) $ ( d141 )
        d336 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> if true then x3380 else x3380 ) ) ) $ ( if false then Bool else Bool )
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if x3370 then x3370 else d10 ) ) ) $ ( if true then d172 else d70 )
        d339 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> if false then x3410 else Bool ) ) ) $ ( if true then Bool else Bool )
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> if d212 then d275 else d331 ) ) ) $ ( if d65 then false else false )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x3450 -> ( ( Set -> Set ) ∋ ( ( λ x3460 -> if true then x3450 else x3450 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> if d5 then d339 else d326 ) ) ) $ ( x3430 ) ) ) ) $ ( if d132 then false else true )
        d347 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> if true then x3500 else Bool ) ) ) $ ( if true then Bool else Bool )
        d347 = ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if x3490 then x3490 else false ) ) ) $ ( true ) ) ) ) $ ( if d216 then d61 else true )
        d351 : if true then if true then Bool else Bool else if false then Bool else Bool
        d351 = if ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> x3520 ) ) ) $ ( d318 ) then if true then d48 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> false ) ) ) $ ( d297 )
        d354 : ( ( Set -> Set ) ∋ ( ( λ x3570 -> if false then Bool else x3570 ) ) ) $ ( if true then Bool else Bool )
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> if d74 then true else false ) ) ) $ ( x3550 ) ) ) ) $ ( if true then d136 else d206 )
        d358 : if true then ( ( Set -> Set ) ∋ ( ( λ x3610 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3620 -> Bool ) ) ) $ ( Bool )
        d358 = if ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> x3590 ) ) ) $ ( d275 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> d194 ) ) ) $ ( false ) else if d105 then false else false
        d363 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3660 -> x3660 ) ) ) $ ( Bool )
        d363 = ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> if d109 then d358 else true ) ) ) $ ( true ) ) ) ) $ ( if d270 then d181 else true )
        d367 : if true then ( ( Set -> Set ) ∋ ( ( λ x3690 -> x3690 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> if d153 then true else true ) ) ) $ ( if true then true else true )
        d370 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3720 -> Bool ) ) ) $ ( Bool )
        d370 = if ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( d92 ) then if true then true else false else if d79 then d189 else false
        d373 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3760 -> Bool ) ) ) $ ( Bool )
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> if x3740 then x3740 else d177 ) ) ) $ ( true ) ) ) ) $ ( if true then d141 else false )
        d377 : ( ( Set -> Set ) ∋ ( ( λ x3800 -> ( ( Set -> Set ) ∋ ( ( λ x3810 -> if false then x3810 else x3810 ) ) ) $ ( x3800 ) ) ) ) $ ( if false then Bool else Bool )
        d377 = ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> if x3790 then d189 else d141 ) ) ) $ ( false ) ) ) ) $ ( if d42 then d79 else true )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x3850 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> true ) ) ) $ ( false ) then if d27 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> d27 ) ) ) $ ( true )
        d386 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3900 -> Bool ) ) ) $ ( Bool )
        d386 = if ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> d351 ) ) ) $ ( d199 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> d197 ) ) ) $ ( d101 )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x3930 -> ( ( Set -> Set ) ∋ ( ( λ x3940 -> if false then Bool else x3930 ) ) ) $ ( x3930 ) ) ) ) $ ( if true then Bool else Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if false then x3920 else true ) ) ) $ ( if d65 then d373 else d275 )
        d395 : ( ( Set -> Set ) ∋ ( ( λ x3970 -> if true then x3970 else x3970 ) ) ) $ ( if false then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> if d109 then x3960 else d210 ) ) ) $ ( if d185 then true else false )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x4000 -> ( ( Set -> Set ) ∋ ( ( λ x4010 -> if true then Bool else x4000 ) ) ) $ ( x4000 ) ) ) ) $ ( if false then Bool else Bool )
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> if x3990 then x3990 else true ) ) ) $ ( if true then true else d266 )
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4050 -> if false then Bool else x4050 ) ) ) $ ( if false then Bool else Bool )
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if x4030 then x4040 else x4040 ) ) ) $ ( x4030 ) ) ) ) $ ( if true then true else d202 )
        d406 : if false then ( ( Set -> Set ) ∋ ( ( λ x4090 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d406 = if ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> false ) ) ) $ ( d373 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> true ) ) ) $ ( d181 ) else if d45 then d120 else false
        d410 : ( ( Set -> Set ) ∋ ( ( λ x4130 -> ( ( Set -> Set ) ∋ ( ( λ x4140 -> if true then Bool else Bool ) ) ) $ ( x4130 ) ) ) ) $ ( if true then Bool else Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> if d111 then x4110 else false ) ) ) $ ( x4110 ) ) ) ) $ ( if d251 then d363 else false )
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4180 -> ( ( Set -> Set ) ∋ ( ( λ x4190 -> if false then x4190 else x4180 ) ) ) $ ( x4180 ) ) ) ) $ ( if false then Bool else Bool )
        d415 = if if false then d18 else d236 then ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> false ) ) ) $ ( d270 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> d264 ) ) ) $ ( false )
        d420 : if true then ( ( Set -> Set ) ∋ ( ( λ x4230 -> x4230 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4240 -> x4240 ) ) ) $ ( Bool )
        d420 = if if d61 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> d141 ) ) ) $ ( false )
        d425 : ( ( Set -> Set ) ∋ ( ( λ x4280 -> ( ( Set -> Set ) ∋ ( ( λ x4290 -> if false then x4280 else x4290 ) ) ) $ ( x4280 ) ) ) ) $ ( if false then Bool else Bool )
        d425 = if if true then true else d89 then ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> d318 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> true ) ) ) $ ( true )
        d430 : if true then if false then Bool else Bool else if false then Bool else Bool
        d430 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> d331 ) ) ) $ ( d61 )
        d433 : if false then ( ( Set -> Set ) ∋ ( ( λ x4360 -> x4360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4370 -> x4370 ) ) ) $ ( Bool )
        d433 = if if true then true else d10 then ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> d322 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> x4350 ) ) ) $ ( d70 )
        d438 : if false then if true then Bool else Bool else if false then Bool else Bool
        d438 = if if d61 then false else d61 then if d105 then d74 else d219 else if false then d283 else d146
        d439 : if false then if false then Bool else Bool else if false then Bool else Bool
        d439 = if if d301 then false else d314 then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> d354 ) ) ) $ ( d391 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> x4410 ) ) ) $ ( false )
        d442 : if true then if false then Bool else Bool else if false then Bool else Bool
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> if d202 then d185 else x4430 ) ) ) $ ( d292 ) ) ) ) $ ( if true then false else false )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d445 = if ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> x4460 ) ) ) $ ( d228 ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> d212 ) ) ) $ ( d92 )
        d449 : if true then if false then Bool else Bool else if true then Bool else Bool
        d449 = if ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> false ) ) ) $ ( false ) then if false then true else false else if false then d339 else false
        d451 : ( ( Set -> Set ) ∋ ( ( λ x4530 -> if false then Bool else x4530 ) ) ) $ ( if true then Bool else Bool )
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> if x4520 then true else d402 ) ) ) $ ( if true then d22 else d278 )
        d454 : if true then ( ( Set -> Set ) ∋ ( ( λ x4570 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> if x4550 then false else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d260 )
        d458 : if false then if true then Bool else Bool else if false then Bool else Bool
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> if d370 then x4590 else d420 ) ) ) $ ( x4590 ) ) ) ) $ ( if true then false else true )
        d461 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4630 -> x4630 ) ) ) $ ( Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> if d297 then x4620 else x4620 ) ) ) $ ( if false then d454 else d136 )
        d464 : ( ( Set -> Set ) ∋ ( ( λ x4650 -> if true then x4650 else Bool ) ) ) $ ( if true then Bool else Bool )
        d464 = if if true then true else d1 then if false then d370 else false else if d172 then d61 else true
        d466 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4690 -> x4690 ) ) ) $ ( Bool )
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> if x4680 then x4670 else d130 ) ) ) $ ( x4670 ) ) ) ) $ ( if false then true else true )
        d470 : if false then ( ( Set -> Set ) ∋ ( ( λ x4730 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> if true then d153 else x4720 ) ) ) $ ( d236 ) ) ) ) $ ( if true then true else false )
        d474 : ( ( Set -> Set ) ∋ ( ( λ x4760 -> if true then Bool else x4760 ) ) ) $ ( if false then Bool else Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if x4750 then false else x4750 ) ) ) $ ( if d445 then false else false )
        d477 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4780 -> x4780 ) ) ) $ ( Bool )
        d477 = if if d232 then true else false then if true then false else false else if d270 then d116 else false
        d479 : if true then ( ( Set -> Set ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d479 = if ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> true ) ) ) $ ( d255 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> d124 ) ) ) $ ( true ) else if true then d101 else false
        d483 : if true then ( ( Set -> Set ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d483 = if ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> x4840 ) ) ) $ ( true ) then if true then d425 else false else if true then d22 else false
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4890 -> if false then x4890 else Bool ) ) ) $ ( if false then Bool else Bool )
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if x4870 then d373 else true ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d490 : ( ( Set -> Set ) ∋ ( ( λ x4930 -> if true then x4930 else x4930 ) ) ) $ ( if true then Bool else Bool )
        d490 = if if d251 then d92 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> d322 ) ) ) $ ( true )
        d494 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> ( ( Set -> Set ) ∋ ( ( λ x4980 -> if true then x4980 else x4970 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> if true then true else x4950 ) ) ) $ ( true ) ) ) ) $ ( if d189 then d197 else d410 )
        d499 : if true then if false then Bool else Bool else if true then Bool else Bool
        d499 = if if true then d22 else d433 then ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> true ) ) ) $ ( true ) else if d494 then false else false
        d501 : ( ( Set -> Set ) ∋ ( ( λ x5030 -> ( ( Set -> Set ) ∋ ( ( λ x5040 -> if false then x5030 else Bool ) ) ) $ ( x5030 ) ) ) ) $ ( if false then Bool else Bool )
        d501 = if if d130 then true else false then if d120 then d454 else d494 else ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> d470 ) ) ) $ ( d445 )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> if false then x5080 else x5080 ) ) ) $ ( if true then Bool else Bool )
        d505 = if if d141 then true else d470 then ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> x5070 ) ) ) $ ( d61 )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x5110 -> ( ( Set -> Set ) ∋ ( ( λ x5120 -> if true then Bool else x5120 ) ) ) $ ( x5110 ) ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if false then false else d391 ) ) ) $ ( if d84 then d101 else d370 )
        d513 : if true then ( ( Set -> Set ) ∋ ( ( λ x5160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5170 -> x5170 ) ) ) $ ( Bool )
        d513 = ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> if d347 then d358 else x5150 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d486 )
        d518 : if true then ( ( Set -> Set ) ∋ ( ( λ x5210 -> x5210 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d518 = if if true then d260 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> x5190 ) ) ) $ ( d370 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> true ) ) ) $ ( true )
        d522 : if false then ( ( Set -> Set ) ∋ ( ( λ x5250 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> if d395 then true else x5230 ) ) ) $ ( d331 ) ) ) ) $ ( if true then d311 else true )
        d526 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5300 -> Bool ) ) ) $ ( Bool )
        d526 = if ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> d13 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> false ) ) ) $ ( d35 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> true ) ) ) $ ( false )
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5340 -> if true then Bool else x5340 ) ) ) $ ( if true then Bool else Bool )
        d531 = if if true then false else d61 then ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> x5320 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> true ) ) ) $ ( d501 )
        d535 : if true then ( ( Set -> Set ) ∋ ( ( λ x5390 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d535 = if ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> x5370 ) ) ) $ ( d232 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> false ) ) ) $ ( true )
        d540 : ( ( Set -> Set ) ∋ ( ( λ x5420 -> ( ( Set -> Set ) ∋ ( ( λ x5430 -> if false then Bool else x5420 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if x5410 then x5410 else true ) ) ) $ ( if false then true else true )
        d544 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5470 -> x5470 ) ) ) $ ( Bool )
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> if d264 then x5460 else true ) ) ) $ ( d116 ) ) ) ) $ ( if d391 then d526 else d314 )
        d548 : ( ( Set -> Set ) ∋ ( ( λ x5520 -> ( ( Set -> Set ) ∋ ( ( λ x5530 -> if true then x5520 else x5520 ) ) ) $ ( x5520 ) ) ) ) $ ( if true then Bool else Bool )
        d548 = if ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> x5490 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> false ) ) ) $ ( d494 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> x5510 ) ) ) $ ( d136 )
        d554 : ( ( Set -> Set ) ∋ ( ( λ x5570 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d554 = if if false then true else d74 then ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> true ) ) ) $ ( d402 )
        d558 : if false then if false then Bool else Bool else if true then Bool else Bool
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if d151 then d540 else d246 ) ) ) $ ( d445 ) ) ) ) $ ( if true then true else d206 )
        d561 : if true then ( ( Set -> Set ) ∋ ( ( λ x5630 -> x5630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5640 -> x5640 ) ) ) $ ( Bool )
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> if true then x5620 else d141 ) ) ) $ ( if d242 then d377 else d206 )
        d565 : ( ( Set -> Set ) ∋ ( ( λ x5680 -> ( ( Set -> Set ) ∋ ( ( λ x5690 -> if true then Bool else x5680 ) ) ) $ ( x5680 ) ) ) ) $ ( if true then Bool else Bool )
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> if true then d494 else true ) ) ) $ ( d406 ) ) ) ) $ ( if false then d354 else d326 )
        d570 : if false then if false then Bool else Bool else if true then Bool else Bool
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if true then x5710 else d189 ) ) ) $ ( if true then false else true )
        d572 : ( ( Set -> Set ) ∋ ( ( λ x5750 -> ( ( Set -> Set ) ∋ ( ( λ x5760 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d572 = if ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> false ) ) ) $ ( d342 ) then if false then d483 else d120 else ( ( Bool -> Bool ) ∋ ( ( λ x5740 -> true ) ) ) $ ( d351 )
        d577 : if true then ( ( Set -> Set ) ∋ ( ( λ x5800 -> x5800 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d577 = ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> ( ( Bool -> Bool ) ∋ ( ( λ x5790 -> if x5790 then d439 else true ) ) ) $ ( d548 ) ) ) ) $ ( if false then true else true )
        d581 : ( ( Set -> Set ) ∋ ( ( λ x5840 -> ( ( Set -> Set ) ∋ ( ( λ x5850 -> if false then x5850 else x5840 ) ) ) $ ( x5840 ) ) ) ) $ ( if true then Bool else Bool )
        d581 = ( ( Bool -> Bool ) ∋ ( ( λ x5820 -> ( ( Bool -> Bool ) ∋ ( ( λ x5830 -> if false then x5820 else x5820 ) ) ) $ ( d185 ) ) ) ) $ ( if true then d577 else true )