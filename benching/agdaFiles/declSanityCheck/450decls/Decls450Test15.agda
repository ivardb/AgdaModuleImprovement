module Decls450Test15  where
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
        d1 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if false then x20 else x20 ) ) ) $ ( if false then false else false )
        d3 : if true then ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d3 = if ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( d1 ) then if false then d1 else false else if false then d1 else d1
        d6 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then x70 else x70 ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d6 = if if d1 then d3 else d1 then if d1 then d3 else d3 else if true then d3 else d3
        d9 : if true then ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( Bool )
        d9 = if ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( false ) then if d3 then false else false else if d1 then d6 else d6
        d13 : if false then ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x150 -> Bool ) ) ) $ ( Bool )
        d13 = if if d1 then true else d6 then if true then false else true else if d3 then true else true
        d16 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> if true then x200 else Bool ) ) ) $ ( x190 ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if true then false else d6 then ( ( Bool -> Bool ) ∋ ( ( λ x170 -> true ) ) ) $ ( d6 ) else ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d1 ) ) ) $ ( false )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then x230 else x230 ) ) ) $ ( x230 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if x220 then d3 else d3 ) ) ) $ ( if false then d6 else false )
        d25 : if true then ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x290 -> x290 ) ) ) $ ( Bool )
        d25 = if if true then d3 else true then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> d6 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> true ) ) ) $ ( d13 )
        d30 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if true then false else d3 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d34 : if false then ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if x360 then d1 else x360 ) ) ) $ ( x350 ) ) ) ) $ ( if d21 then true else d21 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then x420 else Bool ) ) ) $ ( x410 ) ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x400 then d6 else true ) ) ) $ ( if false then true else true )
        d43 : if true then if false then Bool else Bool else if false then Bool else Bool
        d43 = if if d39 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x440 -> d25 ) ) ) $ ( d16 ) else ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( true )
        d46 : if true then if false then Bool else Bool else if true then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if d1 then false else d13 ) ) ) $ ( if false then true else d6 )
        d48 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if true then x490 else x490 ) ) ) $ ( if d16 then true else true )
        d51 : if false then ( ( Set -> Set ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d51 = if if false then d25 else d21 then if true then d9 else d3 else ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d34 ) ) ) $ ( d30 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x560 -> if true then x560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if d6 then d48 else x550 ) ) ) $ ( if d39 then false else d16 )
        d57 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if d46 then x590 else false ) ) ) $ ( x580 ) ) ) ) $ ( if d6 then true else true )
        d61 : if true then ( ( Set -> Set ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if x620 then false else d1 ) ) ) $ ( if false then true else d1 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then x680 else x690 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if x670 then d46 else x670 ) ) ) $ ( true ) ) ) ) $ ( if true then d34 else d25 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d70 = if ( ( Bool -> Bool ) ∋ ( ( λ x710 -> d39 ) ) ) $ ( d34 ) then ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d48 ) ) ) $ ( d61 ) else ( ( Bool -> Bool ) ∋ ( ( λ x730 -> true ) ) ) $ ( d25 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x780 -> ( ( Set -> Set ) ∋ ( ( λ x790 -> if true then x790 else x780 ) ) ) $ ( x780 ) ) ) ) $ ( if true then Bool else Bool )
        d75 = if ( ( Bool -> Bool ) ∋ ( ( λ x760 -> true ) ) ) $ ( d16 ) then if true then d16 else true else ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d13 ) ) ) $ ( d70 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x830 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> if x810 then true else true ) ) ) $ ( if false then false else d1 )
        d84 : if true then ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if false then x860 else d54 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d88 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x900 -> Bool ) ) ) $ ( Bool )
        d88 = if if d57 then d3 else false then ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d84 ) ) ) $ ( false ) else if d48 then d21 else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x940 -> if true then x940 else x940 ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if x930 then x930 else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then Bool else x980 ) ) ) $ ( x980 ) ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if x960 then x960 else false ) ) ) $ ( x960 ) ) ) ) $ ( if d46 then true else true )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> if true then Bool else x1040 ) ) ) $ ( x1040 ) ) ) ) $ ( if true then Bool else Bool )
        d100 = if ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d25 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> false ) ) ) $ ( d25 )
        d106 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if x1080 then d46 else x1070 ) ) ) $ ( x1070 ) ) ) ) $ ( if d21 then d9 else false )
        d110 : if true then ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d110 = if if false then d6 else false then if true then true else d84 else if false then d106 else false
        d112 : if false then ( ( Set -> Set ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1160 -> Bool ) ) ) $ ( Bool )
        d112 = if ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d57 ) ) ) $ ( d54 ) then if false then d91 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( true )
        d117 : if false then ( ( Set -> Set ) ∋ ( ( λ x1200 -> x1200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if d88 then x1180 else d57 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d48 )
        d122 : if true then if true then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if d75 then x1230 else true ) ) ) $ ( if true then false else d57 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> if true then x1270 else Bool ) ) ) $ ( x1260 ) ) ) ) $ ( if true then Bool else Bool )
        d124 = if if d54 then false else d95 then if false then true else d75 else ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( d43 )
        d128 : if true then ( ( Set -> Set ) ∋ ( ( λ x1310 -> x1310 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d128 = if if d106 then d13 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> true ) ) ) $ ( d57 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d95 ) ) ) $ ( d122 )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> ( ( Set -> Set ) ∋ ( ( λ x1370 -> if false then Bool else x1370 ) ) ) $ ( x1360 ) ) ) ) $ ( if true then Bool else Bool )
        d132 = if ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> d54 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( d95 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( true )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then Bool else x1400 ) ) ) $ ( if true then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if x1390 then d80 else x1390 ) ) ) $ ( if d21 then true else d110 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then x1430 else Bool ) ) ) $ ( x1430 ) ) ) ) $ ( if false then Bool else Bool )
        d141 = if if true then true else d65 then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> d124 ) ) ) $ ( true )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then Bool else x1470 ) ) ) $ ( if false then Bool else Bool )
        d145 = if if d25 then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( true ) else if d61 then false else d138
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> if false then x1520 else x1520 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d148 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( d106 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( false )
        d153 : if false then ( ( Set -> Set ) ∋ ( ( λ x1560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( Bool )
        d153 = if ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> d16 ) ) ) $ ( d21 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> x1550 ) ) ) $ ( false ) else if true then d3 else d132
        d158 : if true then ( ( Set -> Set ) ∋ ( ( λ x1600 -> x1600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1610 -> Bool ) ) ) $ ( Bool )
        d158 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d106 ) ) ) $ ( true ) else if d80 then true else true
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d162 = if if d30 then d138 else false then if false then d148 else true else if true then d158 else true
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> if false then x1680 else x1670 ) ) ) $ ( x1670 ) ) ) ) $ ( if true then Bool else Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if x1650 then true else x1650 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d169 : if false then ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1710 -> x1710 ) ) ) $ ( Bool )
        d169 = if if d54 then false else false then if d162 then d84 else d43 else if true then false else true
        d172 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if x1730 then true else x1730 ) ) ) $ ( if d80 then true else d54 )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then Bool else Bool ) ) ) $ ( x1790 ) ) ) ) $ ( if true then Bool else Bool )
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> d13 ) ) ) $ ( d141 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d128 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> false ) ) ) $ ( true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then x1850 else Bool ) ) ) $ ( x1840 ) ) ) ) $ ( if false then Bool else Bool )
        d181 = if ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> d43 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( d95 ) else if d158 then true else false
        d186 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1890 -> Bool ) ) ) $ ( Bool )
        d186 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( d122 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> x1880 ) ) ) $ ( d65 )
        d190 : if false then ( ( Set -> Set ) ∋ ( ( λ x1930 -> x1930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1940 -> Bool ) ) ) $ ( Bool )
        d190 = if ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> true ) ) ) $ ( d122 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> d100 ) ) ) $ ( true ) else if false then false else false
        d195 : if true then ( ( Set -> Set ) ∋ ( ( λ x1970 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d195 = ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if d61 then x1960 else d164 ) ) ) $ ( if true then d16 else d61 )
        d198 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> if true then Bool else x2010 ) ) ) $ ( if true then Bool else Bool )
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if x1990 then d162 else d48 ) ) ) $ ( d181 ) ) ) ) $ ( if d16 then true else d6 )
        d202 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> ( ( Set -> Set ) ∋ ( ( λ x2060 -> if false then x2060 else x2050 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d202 = if ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( d54 ) then if d153 then d138 else d175 else ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> d39 ) ) ) $ ( d124 )
        d207 : if true then if false then Bool else Bool else if true then Bool else Bool
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> if d158 then x2080 else d6 ) ) ) $ ( if d145 then d190 else true )
        d209 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2120 -> Bool ) ) ) $ ( Bool )
        d209 = if ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> d181 ) ) ) $ ( true ) then if false then d100 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> d30 ) ) ) $ ( false )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x2160 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if d122 then x2150 else x2140 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d25 )
        d217 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2190 -> x2190 ) ) ) $ ( Bool )
        d217 = if ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> d88 ) ) ) $ ( false ) then if d164 then d175 else d190 else if false then d46 else d145
        d220 : if true then ( ( Set -> Set ) ∋ ( ( λ x2220 -> x2220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2230 -> Bool ) ) ) $ ( Bool )
        d220 = if ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> x2210 ) ) ) $ ( d153 ) then if d195 then true else d141 else if d21 then true else d70
        d224 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( Bool )
        d224 = if ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> x2250 ) ) ) $ ( false ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> d80 ) ) ) $ ( false )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x2310 -> if false then x2310 else Bool ) ) ) $ ( if true then Bool else Bool )
        d228 = if if d57 then d202 else d190 then ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> d80 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> true ) ) ) $ ( true )
        d232 : ( ( Set -> Set ) ∋ ( ( λ x2350 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> if false then d209 else false ) ) ) $ ( d117 ) ) ) ) $ ( if d138 then d110 else false )
        d236 : ( ( Set -> Set ) ∋ ( ( λ x2390 -> ( ( Set -> Set ) ∋ ( ( λ x2400 -> if false then x2400 else x2390 ) ) ) $ ( x2390 ) ) ) ) $ ( if true then Bool else Bool )
        d236 = if ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> true ) ) ) $ ( d164 ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> true ) ) ) $ ( d117 )
        d241 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> if true then Bool else x2440 ) ) ) $ ( if true then Bool else Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if x2430 then d228 else d88 ) ) ) $ ( false ) ) ) ) $ ( if d95 then true else true )
        d245 : if false then if false then Bool else Bool else if false then Bool else Bool
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> if x2460 then d172 else true ) ) ) $ ( if false then d106 else false )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then x2490 else Bool ) ) ) $ ( if true then Bool else Bool )
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> if d65 then false else d110 ) ) ) $ ( if true then false else d70 )
        d250 : if true then ( ( Set -> Set ) ∋ ( ( λ x2530 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if true then true else false ) ) ) $ ( d13 ) ) ) ) $ ( if false then true else d106 )
        d254 : if false then ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> if d213 then d30 else d34 ) ) ) $ ( x2550 ) ) ) ) $ ( if false then true else d6 )
        d258 : ( ( Set -> Set ) ∋ ( ( λ x2600 -> if false then Bool else x2600 ) ) ) $ ( if false then Bool else Bool )
        d258 = if if d21 then d224 else false then if d250 then d132 else d141 else ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> x2590 ) ) ) $ ( d61 )
        d261 : if true then ( ( Set -> Set ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if true then false else d39 ) ) ) $ ( if d172 then true else d162 )
        d264 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2670 -> Bool ) ) ) $ ( Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if d100 then true else x2650 ) ) ) $ ( x2650 ) ) ) ) $ ( if d88 then true else false )
        d268 : ( ( Set -> Set ) ∋ ( ( λ x2710 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> if x2700 then d61 else true ) ) ) $ ( x2690 ) ) ) ) $ ( if true then false else d250 )
        d272 : ( ( Set -> Set ) ∋ ( ( λ x2750 -> ( ( Set -> Set ) ∋ ( ( λ x2760 -> if true then x2750 else x2750 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d272 = ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> if d254 then d175 else false ) ) ) $ ( true ) ) ) ) $ ( if d169 then d124 else true )
        d277 : if true then ( ( Set -> Set ) ∋ ( ( λ x2800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2810 -> x2810 ) ) ) $ ( Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> if d6 then false else d16 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d272 )
        d282 : if false then if false then Bool else Bool else if false then Bool else Bool
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if d209 then d117 else x2830 ) ) ) $ ( if d232 then d209 else d13 )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> if true then x2870 else x2880 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if true then false else x2860 ) ) ) $ ( x2850 ) ) ) ) $ ( if d80 then d80 else d202 )
        d289 : ( ( Set -> Set ) ∋ ( ( λ x2920 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> if true then x2910 else x2900 ) ) ) $ ( true ) ) ) ) $ ( if d117 then false else d158 )
        d293 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2970 -> Bool ) ) ) $ ( Bool )
        d293 = if ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> d172 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> true ) ) ) $ ( d61 )
        d298 : if true then ( ( Set -> Set ) ∋ ( ( λ x3010 -> x3010 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3020 -> x3020 ) ) ) $ ( Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> if true then true else x2990 ) ) ) $ ( x2990 ) ) ) ) $ ( if d110 then d277 else true )
        d303 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if true then x3040 else Bool ) ) ) $ ( x3040 ) ) ) ) $ ( if false then Bool else Bool )
        d303 = if if d54 then d6 else d241 then if d209 then d70 else d80 else if d254 then d198 else d9
        d306 : if true then ( ( Set -> Set ) ∋ ( ( λ x3080 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d306 = if if d9 then d162 else d30 then ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> x3070 ) ) ) $ ( false ) else if true then d100 else true
        d309 : if true then ( ( Set -> Set ) ∋ ( ( λ x3130 -> x3130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d309 = if ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> d293 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> d172 ) ) ) $ ( true )
        d314 : ( ( Set -> Set ) ∋ ( ( λ x3160 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d314 = if if d51 then true else d110 then ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> false ) ) ) $ ( d309 ) else if d34 then d198 else true
        d317 : ( ( Set -> Set ) ∋ ( ( λ x3200 -> ( ( Set -> Set ) ∋ ( ( λ x3210 -> if false then Bool else x3200 ) ) ) $ ( x3200 ) ) ) ) $ ( if false then Bool else Bool )
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> if false then d1 else true ) ) ) $ ( x3180 ) ) ) ) $ ( if d141 then false else d298 )
        d322 : ( ( Set -> Set ) ∋ ( ( λ x3250 -> if true then Bool else x3250 ) ) ) $ ( if true then Bool else Bool )
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> if false then d162 else d220 ) ) ) $ ( x3230 ) ) ) ) $ ( if d202 then d293 else d110 )
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> ( ( Set -> Set ) ∋ ( ( λ x3290 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> if d247 then d258 else x3270 ) ) ) $ ( if false then d293 else true )
        d330 : if false then ( ( Set -> Set ) ∋ ( ( λ x3330 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d330 = if if d95 then false else d190 then ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> x3310 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> false ) ) ) $ ( d322 )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> ( ( Set -> Set ) ∋ ( ( λ x3370 -> if false then Bool else x3360 ) ) ) $ ( x3360 ) ) ) ) $ ( if false then Bool else Bool )
        d334 = if if d80 then true else d217 then if d122 then d245 else d247 else ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> d228 ) ) ) $ ( d148 )
        d338 : if false then if true then Bool else Bool else if false then Bool else Bool
        d338 = if ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> d209 ) ) ) $ ( false ) then if d236 then true else d95 else if true then true else d61
        d340 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3420 -> Bool ) ) ) $ ( Bool )
        d340 = if if true then d250 else false then if d236 then d282 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> false ) ) ) $ ( true )
        d343 : if true then ( ( Set -> Set ) ∋ ( ( λ x3460 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3470 -> Bool ) ) ) $ ( Bool )
        d343 = if ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> x3440 ) ) ) $ ( d6 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> d132 ) ) ) $ ( d181 ) else if true then d30 else false
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> ( ( Set -> Set ) ∋ ( ( λ x3510 -> if false then x3510 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if x3490 then d172 else d1 ) ) ) $ ( if d326 then true else d75 )
        d352 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> if true then x3540 else x3540 ) ) ) $ ( if false then Bool else Bool )
        d352 = if if d195 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> true ) ) ) $ ( d46 ) else if d54 then true else d314
        d355 : ( ( Set -> Set ) ∋ ( ( λ x3580 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> if x3560 then d3 else d247 ) ) ) $ ( x3560 ) ) ) ) $ ( if d106 then d141 else true )
        d359 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3620 -> Bool ) ) ) $ ( Bool )
        d359 = if ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> x3600 ) ) ) $ ( d80 ) then if d57 then true else d338 else ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> d181 ) ) ) $ ( d34 )
        d363 : ( ( Set -> Set ) ∋ ( ( λ x3660 -> ( ( Set -> Set ) ∋ ( ( λ x3670 -> if true then Bool else x3670 ) ) ) $ ( x3660 ) ) ) ) $ ( if true then Bool else Bool )
        d363 = if ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> d145 ) ) ) $ ( false ) then if d153 then false else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> d224 ) ) ) $ ( d241 )
        d368 : ( ( Set -> Set ) ∋ ( ( λ x3700 -> if false then x3700 else x3700 ) ) ) $ ( if true then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if d340 then x3690 else x3690 ) ) ) $ ( if true then d277 else true )
        d371 : if false then if true then Bool else Bool else if true then Bool else Bool
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> if x3720 then d250 else x3720 ) ) ) $ ( if false then d48 else d326 )
        d373 : if true then if true then Bool else Bool else if false then Bool else Bool
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> if d43 then d224 else x3740 ) ) ) $ ( d298 ) ) ) ) $ ( if true then d122 else d141 )
        d376 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> ( ( Set -> Set ) ∋ ( ( λ x3790 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d376 = if if d172 then true else false then if d228 then d306 else d186 else ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> x3770 ) ) ) $ ( true )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> ( ( Set -> Set ) ∋ ( ( λ x3830 -> if true then x3820 else x3830 ) ) ) $ ( x3820 ) ) ) ) $ ( if false then Bool else Bool )
        d380 = if ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( true ) then if false then d106 else d371 else if d169 then d43 else d124
        d384 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> ( ( Set -> Set ) ∋ ( ( λ x3870 -> if false then Bool else x3860 ) ) ) $ ( x3860 ) ) ) ) $ ( if false then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if d293 then d261 else d13 ) ) ) $ ( if false then true else true )
        d388 : if false then ( ( Set -> Set ) ∋ ( ( λ x3890 -> x3890 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d388 = if if false then d247 else d61 then if false then d268 else false else if d145 then d91 else d371
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3940 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d390 = if ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> d186 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> x3920 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( d198 )
        d395 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3970 -> x3970 ) ) ) $ ( Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> if false then false else d317 ) ) ) $ ( if true then false else d284 )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x4000 -> if true then Bool else x4000 ) ) ) $ ( if false then Bool else Bool )
        d398 = if if d209 then d91 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> false ) ) ) $ ( false ) else if true then false else d202
        d401 : ( ( Set -> Set ) ∋ ( ( λ x4040 -> if true then x4040 else x4040 ) ) ) $ ( if false then Bool else Bool )
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> if x4030 then x4030 else x4030 ) ) ) $ ( d186 ) ) ) ) $ ( if false then d293 else false )
        d405 : ( ( Set -> Set ) ∋ ( ( λ x4080 -> ( ( Set -> Set ) ∋ ( ( λ x4090 -> if true then Bool else x4080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d405 = if ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> d309 ) ) ) $ ( false ) then if d48 then d198 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> false ) ) ) $ ( d334 )
        d410 : if false then ( ( Set -> Set ) ∋ ( ( λ x4120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4130 -> Bool ) ) ) $ ( Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> if d224 then false else true ) ) ) $ ( if true then true else false )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x4150 -> ( ( Set -> Set ) ∋ ( ( λ x4160 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d414 = if if d338 then true else true then if true then true else d106 else if d317 then true else d410
        d417 : if true then ( ( Set -> Set ) ∋ ( ( λ x4190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4200 -> Bool ) ) ) $ ( Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if true then d198 else x4180 ) ) ) $ ( if false then false else false )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> ( ( Set -> Set ) ∋ ( ( λ x4240 -> if false then x4240 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d421 = if ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> x4220 ) ) ) $ ( true ) then if true then false else true else if true then true else d13
        d425 : if true then if true then Bool else Bool else if true then Bool else Bool
        d425 = if ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> x4270 ) ) ) $ ( d30 ) else if false then true else d368
        d428 : if true then if false then Bool else Bool else if false then Bool else Bool
        d428 = if ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> d359 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> false ) ) ) $ ( d84 ) else if d421 then true else true
        d431 : if true then ( ( Set -> Set ) ∋ ( ( λ x4340 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if true then x4330 else x4330 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d338 )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if false then x4380 else x4380 ) ) ) $ ( if true then Bool else Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> if x4360 then x4370 else d220 ) ) ) $ ( x4360 ) ) ) ) $ ( if false then false else false )
        d439 : ( ( Set -> Set ) ∋ ( ( λ x4410 -> if true then x4410 else x4410 ) ) ) $ ( if true then Bool else Bool )
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> if true then x4400 else x4400 ) ) ) $ ( if false then true else false )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4430 -> if false then x4430 else x4430 ) ) ) $ ( if false then Bool else Bool )
        d442 = if if false then false else d340 then if false then d309 else d153 else if d236 then d421 else d39
        d444 : ( ( Set -> Set ) ∋ ( ( λ x4460 -> if false then Bool else x4460 ) ) ) $ ( if false then Bool else Bool )
        d444 = if if false then true else false then if d207 then d258 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> d128 ) ) ) $ ( d48 )
        d447 : ( ( Set -> Set ) ∋ ( ( λ x4490 -> ( ( Set -> Set ) ∋ ( ( λ x4500 -> if true then Bool else x4500 ) ) ) $ ( x4490 ) ) ) ) $ ( if true then Bool else Bool )
        d447 = if if d289 then d112 else false then if d198 then d352 else d6 else ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> true ) ) ) $ ( false )
        d451 : ( ( Set -> Set ) ∋ ( ( λ x4520 -> ( ( Set -> Set ) ∋ ( ( λ x4530 -> if true then Bool else x4530 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d451 = if if false then d272 else true then if d80 then d172 else d352 else if d371 then true else d264
        d454 : if true then ( ( Set -> Set ) ∋ ( ( λ x4570 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d454 = if ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> true ) ) ) $ ( d317 ) then if d80 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> x4560 ) ) ) $ ( false )
        d458 : if false then ( ( Set -> Set ) ∋ ( ( λ x4610 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4620 -> Bool ) ) ) $ ( Bool )
        d458 = if if true then d355 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> true ) ) ) $ ( d398 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> x4600 ) ) ) $ ( d148 )
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4670 -> ( ( Set -> Set ) ∋ ( ( λ x4680 -> if true then x4670 else x4680 ) ) ) $ ( x4670 ) ) ) ) $ ( if false then Bool else Bool )
        d463 = if ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> d162 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> x4660 ) ) ) $ ( true )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> if false then x4720 else x4720 ) ) ) $ ( if true then Bool else Bool )
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> if x4700 then true else x4710 ) ) ) $ ( true ) ) ) ) $ ( if d414 then d247 else false )
        d473 : if true then if true then Bool else Bool else if true then Bool else Bool
        d473 = if ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> d454 ) ) ) $ ( d414 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> x4750 ) ) ) $ ( d213 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> x4760 ) ) ) $ ( d217 )
        d477 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4800 -> x4800 ) ) ) $ ( Bool )
        d477 = ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> if false then d293 else true ) ) ) $ ( x4780 ) ) ) ) $ ( if d352 then d46 else d80 )
        d481 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4830 -> x4830 ) ) ) $ ( Bool )
        d481 = if if d410 then false else d112 then ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( d169 ) else if false then true else d314
        d484 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4860 -> Bool ) ) ) $ ( Bool )
        d484 = if ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( false ) then if true then true else false else if d145 then d458 else d272
        d487 : ( ( Set -> Set ) ∋ ( ( λ x4900 -> ( ( Set -> Set ) ∋ ( ( λ x4910 -> if false then x4900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d487 = if ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> x4880 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> false ) ) ) $ ( d39 ) else if true then true else false
        d492 : if true then if false then Bool else Bool else if false then Bool else Bool
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> if d355 then d110 else d236 ) ) ) $ ( if d334 then d484 else false )
        d494 : if false then if false then Bool else Bool else if true then Bool else Bool
        d494 = if ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> false ) ) ) $ ( false ) then if true then d410 else false else if d122 then false else d207
        d496 : if true then ( ( Set -> Set ) ∋ ( ( λ x4970 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d496 = if if false then false else false then if false then false else false else if d51 then d352 else d48
        d498 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5010 -> x5010 ) ) ) $ ( Bool )
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> if d496 then x5000 else true ) ) ) $ ( x4990 ) ) ) ) $ ( if true then true else true )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5050 -> ( ( Set -> Set ) ∋ ( ( λ x5060 -> if false then x5050 else x5050 ) ) ) $ ( x5050 ) ) ) ) $ ( if false then Bool else Bool )
        d502 = if ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> x5030 ) ) ) $ ( true ) then if d209 then true else d348 else ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> x5040 ) ) ) $ ( d352 )
        d507 : ( ( Set -> Set ) ∋ ( ( λ x5100 -> if false then Bool else x5100 ) ) ) $ ( if true then Bool else Bool )
        d507 = if ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> d481 ) ) ) $ ( false ) else if true then d57 else d284
        d511 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5140 -> Bool ) ) ) $ ( Bool )
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> if x5130 then false else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d515 : ( ( Set -> Set ) ∋ ( ( λ x5180 -> ( ( Set -> Set ) ∋ ( ( λ x5190 -> if false then x5190 else Bool ) ) ) $ ( x5180 ) ) ) ) $ ( if false then Bool else Bool )
        d515 = ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> if d384 then x5160 else false ) ) ) $ ( x5160 ) ) ) ) $ ( if true then false else d390 )
        d520 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5220 -> Bool ) ) ) $ ( Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> if d84 then d284 else x5210 ) ) ) $ ( if d494 then false else true )
        d523 : if false then if false then Bool else Bool else if false then Bool else Bool
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> if x5240 then d371 else x5240 ) ) ) $ ( if d181 then d421 else d494 )
        d525 : ( ( Set -> Set ) ∋ ( ( λ x5280 -> ( ( Set -> Set ) ∋ ( ( λ x5290 -> if false then Bool else Bool ) ) ) $ ( x5280 ) ) ) ) $ ( if false then Bool else Bool )
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if false then x5260 else x5270 ) ) ) $ ( d181 ) ) ) ) $ ( if true then false else true )
        d530 : if false then ( ( Set -> Set ) ∋ ( ( λ x5330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if d277 then x5320 else true ) ) ) $ ( true ) ) ) ) $ ( if true then d247 else d186 )
        d534 : if false then ( ( Set -> Set ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5370 -> x5370 ) ) ) $ ( Bool )
        d534 = if if d213 then true else d334 then if d13 then d34 else d207 else ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> d132 ) ) ) $ ( d261 )
        d538 : if true then if false then Bool else Bool else if true then Bool else Bool
        d538 = if if d207 then false else d388 then ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> d425 ) ) ) $ ( d117 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> d268 ) ) ) $ ( true )
        d541 : ( ( Set -> Set ) ∋ ( ( λ x5440 -> ( ( Set -> Set ) ∋ ( ( λ x5450 -> if false then x5450 else Bool ) ) ) $ ( x5440 ) ) ) ) $ ( if true then Bool else Bool )
        d541 = if ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> true ) ) ) $ ( d334 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> d435 ) ) ) $ ( true ) else if true then false else false
        d546 : if true then ( ( Set -> Set ) ∋ ( ( λ x5480 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d546 = if if d54 then d117 else d25 then if d477 then true else d371 else ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> false ) ) ) $ ( false )
        d549 : if false then if false then Bool else Bool else if true then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> if false then x5500 else false ) ) ) $ ( if d496 then d546 else true )
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5550 -> if true then x5550 else x5550 ) ) ) $ ( if true then Bool else Bool )
        d551 = if ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> x5530 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( d186 )
        d556 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5600 -> x5600 ) ) ) $ ( Bool )
        d556 = if ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> d330 ) ) ) $ ( d145 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> x5580 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> true ) ) ) $ ( d530 )
        d561 : ( ( Set -> Set ) ∋ ( ( λ x5640 -> ( ( Set -> Set ) ∋ ( ( λ x5650 -> if false then Bool else Bool ) ) ) $ ( x5640 ) ) ) ) $ ( if true then Bool else Bool )
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> if false then false else d511 ) ) ) $ ( d477 ) ) ) ) $ ( if true then true else false )
        d566 : if false then ( ( Set -> Set ) ∋ ( ( λ x5690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5700 -> x5700 ) ) ) $ ( Bool )
        d566 = if ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> x5670 ) ) ) $ ( d268 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> x5680 ) ) ) $ ( false )
        d571 : ( ( Set -> Set ) ∋ ( ( λ x5740 -> ( ( Set -> Set ) ∋ ( ( λ x5750 -> if true then x5750 else Bool ) ) ) $ ( x5740 ) ) ) ) $ ( if false then Bool else Bool )
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> if false then false else d442 ) ) ) $ ( x5720 ) ) ) ) $ ( if false then true else d217 )
        d576 : ( ( Set -> Set ) ∋ ( ( λ x5800 -> ( ( Set -> Set ) ∋ ( ( λ x5810 -> if true then Bool else x5800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d576 = if ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> x5770 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5790 -> true ) ) ) $ ( true )
        d582 : if true then ( ( Set -> Set ) ∋ ( ( λ x5850 -> x5850 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5860 -> x5860 ) ) ) $ ( Bool )
        d582 = if if d498 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x5830 -> d525 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> d284 ) ) ) $ ( d95 )
        d587 : if false then ( ( Set -> Set ) ∋ ( ( λ x5900 -> x5900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5910 -> x5910 ) ) ) $ ( Bool )
        d587 = ( ( Bool -> Bool ) ∋ ( ( λ x5880 -> ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> if x5880 then d195 else d158 ) ) ) $ ( d106 ) ) ) ) $ ( if false then d334 else true )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x5950 -> ( ( Set -> Set ) ∋ ( ( λ x5960 -> if true then x5950 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d592 = if ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> d373 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> true ) ) ) $ ( d487 ) else if d21 then false else false
        d597 : ( ( Set -> Set ) ∋ ( ( λ x5990 -> if false then Bool else x5990 ) ) ) $ ( if false then Bool else Bool )
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> if x5980 then false else d138 ) ) ) $ ( if false then true else false )
        d600 : ( ( Set -> Set ) ∋ ( ( λ x6010 -> ( ( Set -> Set ) ∋ ( ( λ x6020 -> if false then Bool else Bool ) ) ) $ ( x6010 ) ) ) ) $ ( if false then Bool else Bool )
        d600 = if if d395 then d496 else false then if true then false else d469 else if d128 then d340 else d16
        d603 : ( ( Set -> Set ) ∋ ( ( λ x6070 -> if false then x6070 else Bool ) ) ) $ ( if true then Bool else Bool )
        d603 = if ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> d541 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6050 -> d498 ) ) ) $ ( d298 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> d463 ) ) ) $ ( false )
        d608 : ( ( Set -> Set ) ∋ ( ( λ x6100 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d608 = ( ( Bool -> Bool ) ∋ ( ( λ x6090 -> if x6090 then d141 else x6090 ) ) ) $ ( if d164 then false else d39 )
        d611 : ( ( Set -> Set ) ∋ ( ( λ x6130 -> ( ( Set -> Set ) ∋ ( ( λ x6140 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d611 = if ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> d444 ) ) ) $ ( d95 ) then if d498 then false else d175 else if d57 then false else false
        d615 : ( ( Set -> Set ) ∋ ( ( λ x6170 -> ( ( Set -> Set ) ∋ ( ( λ x6180 -> if true then x6170 else Bool ) ) ) $ ( x6170 ) ) ) ) $ ( if false then Bool else Bool )
        d615 = ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> if x6160 then d355 else false ) ) ) $ ( if true then d213 else d481 )
        d619 : if false then ( ( Set -> Set ) ∋ ( ( λ x6210 -> x6210 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> if d458 then d380 else x6200 ) ) ) $ ( if false then false else d232 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x6240 -> if true then Bool else x6240 ) ) ) $ ( if false then Bool else Bool )
        d622 = if ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> x6230 ) ) ) $ ( false ) then if d289 then d51 else true else if d232 then false else true
        d625 : if true then ( ( Set -> Set ) ∋ ( ( λ x6280 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d625 = if ( ( Bool -> Bool ) ∋ ( ( λ x6260 -> true ) ) ) $ ( false ) then if d338 then d13 else d439 else ( ( Bool -> Bool ) ∋ ( ( λ x6270 -> true ) ) ) $ ( d220 )
        d629 : if true then if true then Bool else Bool else if true then Bool else Bool
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> ( ( Bool -> Bool ) ∋ ( ( λ x6310 -> if x6310 then false else d608 ) ) ) $ ( d525 ) ) ) ) $ ( if d272 then d39 else d190 )
        d632 : if true then ( ( Set -> Set ) ∋ ( ( λ x6360 -> x6360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6370 -> Bool ) ) ) $ ( Bool )
        d632 = if ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> x6330 ) ) ) $ ( d202 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> false ) ) ) $ ( d469 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> true ) ) ) $ ( false )
        d638 : ( ( Set -> Set ) ∋ ( ( λ x6400 -> ( ( Set -> Set ) ∋ ( ( λ x6410 -> if true then Bool else x6410 ) ) ) $ ( x6400 ) ) ) ) $ ( if false then Bool else Bool )
        d638 = ( ( Bool -> Bool ) ∋ ( ( λ x6390 -> if d340 then true else x6390 ) ) ) $ ( if d224 then true else d371 )
        d642 : if false then ( ( Set -> Set ) ∋ ( ( λ x6440 -> x6440 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d642 = ( ( Bool -> Bool ) ∋ ( ( λ x6430 -> if x6430 then false else d289 ) ) ) $ ( if d254 then d57 else false )
        d645 : ( ( Set -> Set ) ∋ ( ( λ x6480 -> if true then x6480 else x6480 ) ) ) $ ( if true then Bool else Bool )
        d645 = ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> if false then d405 else x6470 ) ) ) $ ( true ) ) ) ) $ ( if d117 then false else false )
        d649 : ( ( Set -> Set ) ∋ ( ( λ x6520 -> ( ( Set -> Set ) ∋ ( ( λ x6530 -> if false then Bool else Bool ) ) ) $ ( x6520 ) ) ) ) $ ( if true then Bool else Bool )
        d649 = if ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> true ) ) ) $ ( d112 ) then if d417 then d447 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> true ) ) ) $ ( d232 )
        d654 : if false then ( ( Set -> Set ) ∋ ( ( λ x6560 -> x6560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d654 = ( ( Bool -> Bool ) ∋ ( ( λ x6550 -> if d494 then false else true ) ) ) $ ( if d51 then d138 else d245 )
        d657 : if true then ( ( Set -> Set ) ∋ ( ( λ x6590 -> x6590 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d657 = ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> if d556 then false else d611 ) ) ) $ ( if d487 then false else true )
        d660 : ( ( Set -> Set ) ∋ ( ( λ x6630 -> if false then x6630 else Bool ) ) ) $ ( if true then Bool else Bool )
        d660 = ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> if x6620 then x6620 else x6620 ) ) ) $ ( x6610 ) ) ) ) $ ( if true then true else false )
        d664 : if true then ( ( Set -> Set ) ∋ ( ( λ x6660 -> x6660 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6670 -> Bool ) ) ) $ ( Bool )
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x6650 -> if false then true else d425 ) ) ) $ ( if d525 then true else true )
        d668 : if true then ( ( Set -> Set ) ∋ ( ( λ x6710 -> x6710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6720 -> Bool ) ) ) $ ( Bool )
        d668 = if ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6700 -> true ) ) ) $ ( d228 ) else if true then d458 else d576
        d673 : if true then if true then Bool else Bool else if true then Bool else Bool
        d673 = ( ( Bool -> Bool ) ∋ ( ( λ x6740 -> ( ( Bool -> Bool ) ∋ ( ( λ x6750 -> if x6750 then d141 else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else d343 )
        d676 : ( ( Set -> Set ) ∋ ( ( λ x6790 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> if x6770 then d469 else x6780 ) ) ) $ ( true ) ) ) ) $ ( if d600 then d330 else d43 )
        d680 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6830 -> Bool ) ) ) $ ( Bool )
        d680 = if if true then d9 else d247 then ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> true ) ) ) $ ( d515 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> false ) ) ) $ ( d250 )
        d684 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6870 -> Bool ) ) ) $ ( Bool )
        d684 = ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> if true then false else x6850 ) ) ) $ ( d629 ) ) ) ) $ ( if d603 then true else true )
        d688 : if true then ( ( Set -> Set ) ∋ ( ( λ x6910 -> x6910 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> if false then x6890 else x6890 ) ) ) $ ( x6890 ) ) ) ) $ ( if d388 then d439 else false )
        d692 : if true then ( ( Set -> Set ) ∋ ( ( λ x6940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d692 = ( ( Bool -> Bool ) ∋ ( ( λ x6930 -> if false then true else x6930 ) ) ) $ ( if false then d435 else d668 )
        d695 : ( ( Set -> Set ) ∋ ( ( λ x6970 -> if true then x6970 else x6970 ) ) ) $ ( if false then Bool else Bool )
        d695 = if ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> false ) ) ) $ ( true ) then if true then false else d65 else if false then d334 else d34
        d698 : if false then ( ( Set -> Set ) ∋ ( ( λ x7000 -> x7000 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7010 -> x7010 ) ) ) $ ( Bool )
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> if d657 then false else false ) ) ) $ ( if true then true else d84 )
        d702 : ( ( Set -> Set ) ∋ ( ( λ x7050 -> ( ( Set -> Set ) ∋ ( ( λ x7060 -> if true then x7060 else x7050 ) ) ) $ ( x7050 ) ) ) ) $ ( if false then Bool else Bool )
        d702 = ( ( Bool -> Bool ) ∋ ( ( λ x7030 -> ( ( Bool -> Bool ) ∋ ( ( λ x7040 -> if d458 then d284 else d398 ) ) ) $ ( x7030 ) ) ) ) $ ( if true then false else d676 )
        d707 : ( ( Set -> Set ) ∋ ( ( λ x7110 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d707 = if ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> true ) ) ) $ ( d39 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> d702 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> x7100 ) ) ) $ ( false )
        d712 : if true then ( ( Set -> Set ) ∋ ( ( λ x7140 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d712 = ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> if true then false else x7130 ) ) ) $ ( if d303 then d551 else true )
        d715 : ( ( Set -> Set ) ∋ ( ( λ x7180 -> ( ( Set -> Set ) ∋ ( ( λ x7190 -> if true then Bool else x7190 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d715 = if if d502 then true else d638 then ( ( Bool -> Bool ) ∋ ( ( λ x7160 -> d439 ) ) ) $ ( d707 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7170 -> x7170 ) ) ) $ ( false )
        d720 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7220 -> x7220 ) ) ) $ ( Bool )
        d720 = ( ( Bool -> Bool ) ∋ ( ( λ x7210 -> if x7210 then x7210 else x7210 ) ) ) $ ( if true then d21 else true )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x7270 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d723 = if ( ( Bool -> Bool ) ∋ ( ( λ x7240 -> d638 ) ) ) $ ( d444 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> d695 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7260 -> x7260 ) ) ) $ ( true )
        d728 : if true then ( ( Set -> Set ) ∋ ( ( λ x7310 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d728 = if if d207 then d70 else false then ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7300 -> true ) ) ) $ ( true )
        d732 : if true then ( ( Set -> Set ) ∋ ( ( λ x7350 -> x7350 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d732 = if ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> x7330 ) ) ) $ ( false ) then if d502 then true else d463 else ( ( Bool -> Bool ) ∋ ( ( λ x7340 -> x7340 ) ) ) $ ( false )
        d736 : ( ( Set -> Set ) ∋ ( ( λ x7370 -> if false then x7370 else x7370 ) ) ) $ ( if false then Bool else Bool )
        d736 = if if true then false else true then if true then d622 else d306 else if false then d132 else d61
        d738 : if false then ( ( Set -> Set ) ∋ ( ( λ x7390 -> x7390 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d738 = if if d334 then true else d611 then if d224 then d241 else true else if false then d556 else false
        d740 : if false then ( ( Set -> Set ) ∋ ( ( λ x7430 -> x7430 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7440 -> x7440 ) ) ) $ ( Bool )
        d740 = ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> if d138 then x7420 else x7420 ) ) ) $ ( x7410 ) ) ) ) $ ( if false then d673 else d371 )
        d745 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7480 -> Bool ) ) ) $ ( Bool )
        d745 = if ( ( Bool -> Bool ) ∋ ( ( λ x7460 -> d91 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> x7470 ) ) ) $ ( d498 ) else if true then false else true
        d749 : ( ( Set -> Set ) ∋ ( ( λ x7510 -> if false then Bool else x7510 ) ) ) $ ( if true then Bool else Bool )
        d749 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> false ) ) ) $ ( d371 ) else if true then true else true
        d752 : ( ( Set -> Set ) ∋ ( ( λ x7550 -> if true then Bool else x7550 ) ) ) $ ( if false then Bool else Bool )
        d752 = if ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> true ) ) ) $ ( false ) else if true then d51 else d720
        d756 : if true then if false then Bool else Bool else if false then Bool else Bool
        d756 = ( ( Bool -> Bool ) ∋ ( ( λ x7570 -> if d740 then false else true ) ) ) $ ( if false then d317 else d502 )
        d758 : ( ( Set -> Set ) ∋ ( ( λ x7600 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d758 = ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> if false then d707 else false ) ) ) $ ( if false then false else d692 )
        d761 : if true then if false then Bool else Bool else if true then Bool else Bool
        d761 = ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> if false then false else d343 ) ) ) $ ( d359 ) ) ) ) $ ( if d195 then d112 else true )
        d764 : if false then ( ( Set -> Set ) ∋ ( ( λ x7660 -> x7660 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d764 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> d541 ) ) ) $ ( true ) else if false then false else d597
        d767 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7690 -> x7690 ) ) ) $ ( Bool )
        d767 = ( ( Bool -> Bool ) ∋ ( ( λ x7680 -> if false then false else d326 ) ) ) $ ( if true then d684 else d245 )
        d770 : ( ( Set -> Set ) ∋ ( ( λ x7730 -> if false then x7730 else x7730 ) ) ) $ ( if true then Bool else Bool )
        d770 = ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> ( ( Bool -> Bool ) ∋ ( ( λ x7720 -> if true then true else false ) ) ) $ ( x7710 ) ) ) ) $ ( if false then true else d611 )
        d774 : ( ( Set -> Set ) ∋ ( ( λ x7760 -> ( ( Set -> Set ) ∋ ( ( λ x7770 -> if true then Bool else Bool ) ) ) $ ( x7760 ) ) ) ) $ ( if false then Bool else Bool )
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> if false then x7750 else d611 ) ) ) $ ( if d232 then d247 else false )
        d778 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7800 -> x7800 ) ) ) $ ( Bool )
        d778 = if ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> true ) ) ) $ ( true ) then if false then d241 else true else if true then d289 else d322
        d781 : if true then ( ( Set -> Set ) ∋ ( ( λ x7830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7840 -> Bool ) ) ) $ ( Bool )
        d781 = ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> if x7820 then x7820 else d566 ) ) ) $ ( if true then d473 else false )
        d785 : ( ( Set -> Set ) ∋ ( ( λ x7870 -> if false then x7870 else Bool ) ) ) $ ( if true then Bool else Bool )
        d785 = ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> if x7860 then x7860 else true ) ) ) $ ( if d728 then false else false )
        d788 : ( ( Set -> Set ) ∋ ( ( λ x7910 -> ( ( Set -> Set ) ∋ ( ( λ x7920 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d788 = ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> ( ( Bool -> Bool ) ∋ ( ( λ x7900 -> if d556 then x7890 else d619 ) ) ) $ ( x7890 ) ) ) ) $ ( if true then d638 else false )
        d793 : if true then ( ( Set -> Set ) ∋ ( ( λ x7960 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7970 -> x7970 ) ) ) $ ( Bool )
        d793 = ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> if x7940 then true else x7940 ) ) ) $ ( x7940 ) ) ) ) $ ( if false then true else false )
        d798 : ( ( Set -> Set ) ∋ ( ( λ x8000 -> if true then x8000 else x8000 ) ) ) $ ( if false then Bool else Bool )
        d798 = if ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> d371 ) ) ) $ ( true ) then if d405 then false else d728 else if d363 then d507 else false
        d801 : if false then ( ( Set -> Set ) ∋ ( ( λ x8030 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8040 -> Bool ) ) ) $ ( Bool )
        d801 = ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> if x8020 then true else false ) ) ) $ ( if d764 then true else true )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x8070 -> ( ( Set -> Set ) ∋ ( ( λ x8080 -> if true then x8080 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> if true then false else x8060 ) ) ) $ ( if d245 then d556 else d380 )
        d809 : if false then if true then Bool else Bool else if true then Bool else Bool
        d809 = if ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> x8100 ) ) ) $ ( d571 ) then if d3 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> d745 ) ) ) $ ( d186 )
        d812 : ( ( Set -> Set ) ∋ ( ( λ x8140 -> ( ( Set -> Set ) ∋ ( ( λ x8150 -> if true then Bool else x8140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d812 = if if false then d388 else d158 then ( ( Bool -> Bool ) ∋ ( ( λ x8130 -> x8130 ) ) ) $ ( d756 ) else if d484 then d384 else d250
        d816 : ( ( Set -> Set ) ∋ ( ( λ x8180 -> if false then x8180 else x8180 ) ) ) $ ( if true then Bool else Bool )
        d816 = if ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> d723 ) ) ) $ ( false ) then if d715 then true else d88 else if d473 then false else d217
        d819 : ( ( Set -> Set ) ∋ ( ( λ x8220 -> if true then x8220 else Bool ) ) ) $ ( if true then Bool else Bool )
        d819 = ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> ( ( Bool -> Bool ) ∋ ( ( λ x8210 -> if true then false else d695 ) ) ) $ ( d213 ) ) ) ) $ ( if true then d306 else true )
        d823 : ( ( Set -> Set ) ∋ ( ( λ x8260 -> ( ( Set -> Set ) ∋ ( ( λ x8270 -> if false then Bool else x8270 ) ) ) $ ( x8260 ) ) ) ) $ ( if false then Bool else Bool )
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> if d54 then true else d487 ) ) ) $ ( false ) ) ) ) $ ( if d649 then false else false )
        d828 : ( ( Set -> Set ) ∋ ( ( λ x8310 -> ( ( Set -> Set ) ∋ ( ( λ x8320 -> if true then x8320 else Bool ) ) ) $ ( x8310 ) ) ) ) $ ( if true then Bool else Bool )
        d828 = if ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> x8290 ) ) ) $ ( d551 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> d371 ) ) ) $ ( d224 ) else if true then d428 else d534
        d833 : if false then ( ( Set -> Set ) ∋ ( ( λ x8350 -> x8350 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d833 = if if true then d812 else d625 then ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> false ) ) ) $ ( true ) else if true then d752 else true
        d836 : ( ( Set -> Set ) ∋ ( ( λ x8390 -> if true then x8390 else x8390 ) ) ) $ ( if false then Bool else Bool )
        d836 = if ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> x8370 ) ) ) $ ( d619 ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> d761 ) ) ) $ ( d611 )
        d840 : if true then if false then Bool else Bool else if true then Bool else Bool
        d840 = ( ( Bool -> Bool ) ∋ ( ( λ x8410 -> if true then true else x8410 ) ) ) $ ( if false then false else d684 )
        d842 : if true then ( ( Set -> Set ) ∋ ( ( λ x8430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8440 -> Bool ) ) ) $ ( Bool )
        d842 = if if d70 then true else false then if false then true else false else if d587 then d236 else d749
        d845 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8480 -> x8480 ) ) ) $ ( Bool )
        d845 = ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> ( ( Bool -> Bool ) ∋ ( ( λ x8470 -> if false then d340 else x8470 ) ) ) $ ( x8460 ) ) ) ) $ ( if d306 then true else true )
        d849 : if false then ( ( Set -> Set ) ∋ ( ( λ x8510 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d849 = if if d106 then d330 else true then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x8500 -> true ) ) ) $ ( false )
        d852 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8550 -> x8550 ) ) ) $ ( Bool )
        d852 = if ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> d220 ) ) ) $ ( false ) then if false then d348 else d761 else ( ( Bool -> Bool ) ∋ ( ( λ x8540 -> d16 ) ) ) $ ( false )
        d856 : ( ( Set -> Set ) ∋ ( ( λ x8580 -> ( ( Set -> Set ) ∋ ( ( λ x8590 -> if true then x8580 else x8580 ) ) ) $ ( x8580 ) ) ) ) $ ( if true then Bool else Bool )
        d856 = if if true then d473 else d507 then ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> true ) ) ) $ ( d458 ) else if true then true else d236
        d860 : if true then if true then Bool else Bool else if true then Bool else Bool
        d860 = if ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> x8610 ) ) ) $ ( d330 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8620 -> d39 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8630 -> x8630 ) ) ) $ ( true )
        d864 : ( ( Set -> Set ) ∋ ( ( λ x8660 -> if true then x8660 else x8660 ) ) ) $ ( if true then Bool else Bool )
        d864 = ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> if true then x8650 else x8650 ) ) ) $ ( if d245 then false else d767 )
        d867 : if false then ( ( Set -> Set ) ∋ ( ( λ x8700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8710 -> x8710 ) ) ) $ ( Bool )
        d867 = ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> if d498 then d202 else x8690 ) ) ) $ ( d417 ) ) ) ) $ ( if d477 then false else d395 )
        d872 : ( ( Set -> Set ) ∋ ( ( λ x8750 -> ( ( Set -> Set ) ∋ ( ( λ x8760 -> if false then Bool else Bool ) ) ) $ ( x8750 ) ) ) ) $ ( if true then Bool else Bool )
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x8730 -> ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> if d520 then d496 else true ) ) ) $ ( true ) ) ) ) $ ( if d561 then d707 else d442 )
        d877 : ( ( Set -> Set ) ∋ ( ( λ x8800 -> ( ( Set -> Set ) ∋ ( ( λ x8810 -> if true then x8800 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d877 = if ( ( Bool -> Bool ) ∋ ( ( λ x8780 -> true ) ) ) $ ( false ) then if d770 then false else d293 else ( ( Bool -> Bool ) ∋ ( ( λ x8790 -> d388 ) ) ) $ ( d758 )
        d882 : ( ( Set -> Set ) ∋ ( ( λ x8840 -> ( ( Set -> Set ) ∋ ( ( λ x8850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d882 = ( ( Bool -> Bool ) ∋ ( ( λ x8830 -> if x8830 then x8830 else true ) ) ) $ ( if d615 then d122 else d473 )
        d886 : ( ( Set -> Set ) ∋ ( ( λ x8870 -> if false then x8870 else Bool ) ) ) $ ( if false then Bool else Bool )
        d886 = if if d608 then d458 else true then if false then d224 else true else if d785 then false else d3
        d888 : if false then if false then Bool else Bool else if false then Bool else Bool
        d888 = ( ( Bool -> Bool ) ∋ ( ( λ x8890 -> if false then d619 else false ) ) ) $ ( if false then false else true )
        d890 : if true then if true then Bool else Bool else if true then Bool else Bool
        d890 = ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> if d258 then true else d660 ) ) ) $ ( true ) ) ) ) $ ( if true then d608 else d158 )
        d893 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8960 -> Bool ) ) ) $ ( Bool )
        d893 = ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> ( ( Bool -> Bool ) ∋ ( ( λ x8950 -> if false then d338 else true ) ) ) $ ( d551 ) ) ) ) $ ( if d417 then d395 else d293 )
        d897 : if true then ( ( Set -> Set ) ∋ ( ( λ x9000 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9010 -> Bool ) ) ) $ ( Bool )
        d897 = ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> if true then x8980 else d198 ) ) ) $ ( x8980 ) ) ) ) $ ( if d326 then d348 else d162 )
        d902 : if false then ( ( Set -> Set ) ∋ ( ( λ x9060 -> x9060 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d902 = if ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> d145 ) ) ) $ ( d477 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> d603 ) ) ) $ ( d872 )
        d907 : ( ( Set -> Set ) ∋ ( ( λ x9090 -> ( ( Set -> Set ) ∋ ( ( λ x9100 -> if true then Bool else x9100 ) ) ) $ ( x9090 ) ) ) ) $ ( if false then Bool else Bool )
        d907 = ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> if d745 then false else d51 ) ) ) $ ( if false then d600 else d695 )
        d911 : ( ( Set -> Set ) ∋ ( ( λ x9130 -> ( ( Set -> Set ) ∋ ( ( λ x9140 -> if false then Bool else x9130 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d911 = if ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> true ) ) ) $ ( false ) then if d376 then true else false else if d856 then d812 else d425
        d915 : ( ( Set -> Set ) ∋ ( ( λ x9170 -> ( ( Set -> Set ) ∋ ( ( λ x9180 -> if true then x9180 else x9180 ) ) ) $ ( x9170 ) ) ) ) $ ( if true then Bool else Bool )
        d915 = ( ( Bool -> Bool ) ∋ ( ( λ x9160 -> if true then x9160 else d515 ) ) ) $ ( if d566 then false else true )
        d919 : ( ( Set -> Set ) ∋ ( ( λ x9220 -> ( ( Set -> Set ) ∋ ( ( λ x9230 -> if false then x9230 else x9230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d919 = ( ( Bool -> Bool ) ∋ ( ( λ x9200 -> ( ( Bool -> Bool ) ∋ ( ( λ x9210 -> if d836 then true else x9210 ) ) ) $ ( x9200 ) ) ) ) $ ( if false then d852 else d43 )
        d924 : if true then ( ( Set -> Set ) ∋ ( ( λ x9270 -> x9270 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d924 = ( ( Bool -> Bool ) ∋ ( ( λ x9250 -> ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> if true then x9260 else x9260 ) ) ) $ ( d421 ) ) ) ) $ ( if false then true else d556 )
        d928 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9290 -> x9290 ) ) ) $ ( Bool )
        d928 = if if d190 then false else d785 then if false then false else true else if false then false else true
        d930 : if true then ( ( Set -> Set ) ∋ ( ( λ x9340 -> x9340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d930 = if ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> d761 ) ) ) $ ( d106 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> true ) ) ) $ ( d451 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9330 -> x9330 ) ) ) $ ( d181 )
        d935 : ( ( Set -> Set ) ∋ ( ( λ x9380 -> if true then x9380 else x9380 ) ) ) $ ( if false then Bool else Bool )
        d935 = ( ( Bool -> Bool ) ∋ ( ( λ x9360 -> ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> if d525 then d660 else x9360 ) ) ) $ ( x9360 ) ) ) ) $ ( if true then d186 else d728 )
        d939 : if true then ( ( Set -> Set ) ∋ ( ( λ x9420 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9430 -> x9430 ) ) ) $ ( Bool )
        d939 = if ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> d856 ) ) ) $ ( d124 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> x9410 ) ) ) $ ( false ) else if d100 then false else d21
        d944 : ( ( Set -> Set ) ∋ ( ( λ x9460 -> ( ( Set -> Set ) ∋ ( ( λ x9470 -> if false then x9460 else Bool ) ) ) $ ( x9460 ) ) ) ) $ ( if false then Bool else Bool )
        d944 = ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> if d330 then d657 else x9450 ) ) ) $ ( if true then d712 else d21 )
        d948 : ( ( Set -> Set ) ∋ ( ( λ x9520 -> if true then x9520 else x9520 ) ) ) $ ( if true then Bool else Bool )
        d948 = if ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> true ) ) ) $ ( d414 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9500 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9510 -> d141 ) ) ) $ ( false )
        d953 : if true then ( ( Set -> Set ) ∋ ( ( λ x9560 -> x9560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d953 = if if false then true else d496 then ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> d481 ) ) ) $ ( d911 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> false ) ) ) $ ( true )
        d957 : ( ( Set -> Set ) ∋ ( ( λ x9580 -> ( ( Set -> Set ) ∋ ( ( λ x9590 -> if false then x9590 else Bool ) ) ) $ ( x9580 ) ) ) ) $ ( if false then Bool else Bool )
        d957 = if if d625 then true else true then if d619 then false else d520 else if d454 then d54 else false
        d960 : ( ( Set -> Set ) ∋ ( ( λ x9610 -> ( ( Set -> Set ) ∋ ( ( λ x9620 -> if false then Bool else x9620 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d960 = if if d698 then false else d758 then if false then d893 else false else if false then true else false
        d963 : if true then ( ( Set -> Set ) ∋ ( ( λ x9650 -> x9650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9660 -> Bool ) ) ) $ ( Bool )
        d963 = if if false then d13 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> false ) ) ) $ ( false ) else if d852 then true else false
        d967 : ( ( Set -> Set ) ∋ ( ( λ x9700 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d967 = if ( ( Bool -> Bool ) ∋ ( ( λ x9680 -> x9680 ) ) ) $ ( d447 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> x9690 ) ) ) $ ( true ) else if true then d907 else false
        d971 : if true then ( ( Set -> Set ) ∋ ( ( λ x9740 -> x9740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9750 -> Bool ) ) ) $ ( Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> if true then x9720 else d767 ) ) ) $ ( d600 ) ) ) ) $ ( if d463 then false else d592 )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x9780 -> ( ( Set -> Set ) ∋ ( ( λ x9790 -> if false then x9790 else x9790 ) ) ) $ ( x9780 ) ) ) ) $ ( if true then Bool else Bool )
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x9770 -> if d745 then x9770 else d695 ) ) ) $ ( if true then true else false )
        d980 : ( ( Set -> Set ) ∋ ( ( λ x9820 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d980 = if if d298 then d100 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> x9810 ) ) ) $ ( true ) else if false then d186 else false
        d983 : ( ( Set -> Set ) ∋ ( ( λ x9860 -> if false then x9860 else Bool ) ) ) $ ( if true then Bool else Bool )
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> if d660 then d492 else true ) ) ) $ ( d587 ) ) ) ) $ ( if d284 then false else d664 )
        d987 : ( ( Set -> Set ) ∋ ( ( λ x9890 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> if d872 then false else d348 ) ) ) $ ( if true then false else true )
        d990 : if true then ( ( Set -> Set ) ∋ ( ( λ x9930 -> x9930 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d990 = if ( ( Bool -> Bool ) ∋ ( ( λ x9910 -> true ) ) ) $ ( d882 ) then if true then d454 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> x9920 ) ) ) $ ( false )
        d994 : if true then ( ( Set -> Set ) ∋ ( ( λ x9960 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d994 = ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> if true then x9950 else d664 ) ) ) $ ( if d110 then false else d164 )
        d997 : ( ( Set -> Set ) ∋ ( ( λ x9990 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d997 = if if false then d638 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> x9980 ) ) ) $ ( false ) else if d398 then d924 else false
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10020 -> ( ( Set -> Set ) ∋ ( ( λ x10030 -> if true then x10030 else x10030 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1000 = if ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> false ) ) ) $ ( true ) then if d494 then d463 else true else if d515 then true else d395
        d1004 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10060 -> x10060 ) ) ) $ ( Bool )
        d1004 = if if false then false else false then if true then false else d148 else ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> true ) ) ) $ ( true )
        d1007 : ( ( Set -> Set ) ∋ ( ( λ x10090 -> if true then x10090 else x10090 ) ) ) $ ( if true then Bool else Bool )
        d1007 = if if true then true else d100 then if true then true else d451 else ( ( Bool -> Bool ) ∋ ( ( λ x10080 -> x10080 ) ) ) $ ( d971 )
        d1010 : if false then ( ( Set -> Set ) ∋ ( ( λ x10130 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10140 -> x10140 ) ) ) $ ( Bool )
        d1010 = ( ( Bool -> Bool ) ∋ ( ( λ x10110 -> ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> if d611 then x10110 else false ) ) ) $ ( d494 ) ) ) ) $ ( if true then d371 else false )
        d1015 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1015 = ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> ( ( Bool -> Bool ) ∋ ( ( λ x10170 -> if x10160 then d840 else x10170 ) ) ) $ ( x10160 ) ) ) ) $ ( if d326 then false else true )
        d1018 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1018 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> d812 ) ) ) $ ( d338 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> x10200 ) ) ) $ ( d293 )
        d1021 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10240 -> Bool ) ) ) $ ( Bool )
        d1021 = ( ( Bool -> Bool ) ∋ ( ( λ x10220 -> ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> if false then false else d673 ) ) ) $ ( x10220 ) ) ) ) $ ( if d258 then true else true )
        d1025 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> if x10260 then false else d864 ) ) ) $ ( x10260 ) ) ) ) $ ( if true then false else true )
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x10310 -> ( ( Set -> Set ) ∋ ( ( λ x10320 -> if true then x10320 else x10310 ) ) ) $ ( x10310 ) ) ) ) $ ( if false then Bool else Bool )
        d1028 = if ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> d338 ) ) ) $ ( d158 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> x10300 ) ) ) $ ( false ) else if false then false else d654
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x10340 -> ( ( Set -> Set ) ∋ ( ( λ x10350 -> if true then x10340 else Bool ) ) ) $ ( x10340 ) ) ) ) $ ( if false then Bool else Bool )
        d1033 = if if d228 then d530 else false then if true then false else d587 else if d736 then false else d371
        d1036 : if true then ( ( Set -> Set ) ∋ ( ( λ x10390 -> x10390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10400 -> Bool ) ) ) $ ( Bool )
        d1036 = ( ( Bool -> Bool ) ∋ ( ( λ x10370 -> ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> if x10380 then d175 else d645 ) ) ) $ ( d1018 ) ) ) ) $ ( if true then d764 else false )
        d1041 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1041 = ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> if true then d673 else x10420 ) ) ) $ ( if d447 then true else d987 )
        d1043 : ( ( Set -> Set ) ∋ ( ( λ x10470 -> if false then x10470 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1043 = if ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> d953 ) ) ) $ ( d712 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> x10450 ) ) ) $ ( d928 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> x10460 ) ) ) $ ( d477 )
        d1048 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1048 = if ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> true ) ) ) $ ( true ) then if true then true else true else if d498 then d428 else false
        d1050 : if false then ( ( Set -> Set ) ∋ ( ( λ x10530 -> x10530 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10540 -> x10540 ) ) ) $ ( Bool )
        d1050 = ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> ( ( Bool -> Bool ) ∋ ( ( λ x10520 -> if d3 then d153 else true ) ) ) $ ( d749 ) ) ) ) $ ( if false then d421 else d484 )
        d1055 : ( ( Set -> Set ) ∋ ( ( λ x10590 -> ( ( Set -> Set ) ∋ ( ( λ x10600 -> if false then x10590 else x10600 ) ) ) $ ( x10590 ) ) ) ) $ ( if false then Bool else Bool )
        d1055 = if ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> d833 ) ) ) $ ( d1028 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10580 -> false ) ) ) $ ( true )
        d1061 : ( ( Set -> Set ) ∋ ( ( λ x10630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1061 = ( ( Bool -> Bool ) ∋ ( ( λ x10620 -> if x10620 then true else true ) ) ) $ ( if false then false else d939 )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x10670 -> ( ( Set -> Set ) ∋ ( ( λ x10680 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1064 = if ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> false ) ) ) $ ( true ) then if false then d511 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10660 -> false ) ) ) $ ( true )
        d1069 : ( ( Set -> Set ) ∋ ( ( λ x10710 -> if false then x10710 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1069 = if if true then false else false then if false then d322 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10700 -> d496 ) ) ) $ ( d442 )
        d1072 : if true then ( ( Set -> Set ) ∋ ( ( λ x10750 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1072 = if ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> false ) ) ) $ ( d384 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10740 -> false ) ) ) $ ( true ) else if false then true else false
        d1076 : if false then ( ( Set -> Set ) ∋ ( ( λ x10790 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1076 = ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> if d515 then d877 else d764 ) ) ) $ ( d84 ) ) ) ) $ ( if true then true else true )
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x10830 -> if true then x10830 else x10830 ) ) ) $ ( if true then Bool else Bool )
        d1080 = ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> ( ( Bool -> Bool ) ∋ ( ( λ x10820 -> if x10820 then d148 else d597 ) ) ) $ ( false ) ) ) ) $ ( if d645 then d1043 else false )
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x10870 -> ( ( Set -> Set ) ∋ ( ( λ x10880 -> if false then Bool else x10870 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1084 = if ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> x10850 ) ) ) $ ( d845 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> true ) ) ) $ ( true ) else if false then d684 else false
        d1089 : ( ( Set -> Set ) ∋ ( ( λ x10910 -> ( ( Set -> Set ) ∋ ( ( λ x10920 -> if false then x10920 else x10910 ) ) ) $ ( x10910 ) ) ) ) $ ( if false then Bool else Bool )
        d1089 = ( ( Bool -> Bool ) ∋ ( ( λ x10900 -> if x10900 then d414 else false ) ) ) $ ( if d343 then d138 else d431 )
        d1093 : if false then ( ( Set -> Set ) ∋ ( ( λ x10960 -> x10960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10970 -> x10970 ) ) ) $ ( Bool )
        d1093 = ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if d987 then false else d1 ) ) ) $ ( true ) ) ) ) $ ( if d963 then false else false )
        d1098 : ( ( Set -> Set ) ∋ ( ( λ x11000 -> ( ( Set -> Set ) ∋ ( ( λ x11010 -> if false then x11010 else x11010 ) ) ) $ ( x11000 ) ) ) ) $ ( if true then Bool else Bool )
        d1098 = ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> if true then d494 else x10990 ) ) ) $ ( if true then d638 else d833 )
        d1102 : if false then ( ( Set -> Set ) ∋ ( ( λ x11040 -> x11040 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1102 = ( ( Bool -> Bool ) ∋ ( ( λ x11030 -> if d592 then true else x11030 ) ) ) $ ( if d264 then false else d625 )
        d1105 : ( ( Set -> Set ) ∋ ( ( λ x11080 -> ( ( Set -> Set ) ∋ ( ( λ x11090 -> if false then Bool else x11080 ) ) ) $ ( x11080 ) ) ) ) $ ( if false then Bool else Bool )
        d1105 = if if true then false else d186 then ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> x11060 ) ) ) $ ( d692 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> false ) ) ) $ ( true )
        d1110 : if false then ( ( Set -> Set ) ∋ ( ( λ x11130 -> x11130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1110 = ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> if false then false else x11120 ) ) ) $ ( x11110 ) ) ) ) $ ( if d1098 then false else d660 )
        d1114 : if true then ( ( Set -> Set ) ∋ ( ( λ x11170 -> x11170 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11180 -> x11180 ) ) ) $ ( Bool )
        d1114 = ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> if x11150 then false else true ) ) ) $ ( x11150 ) ) ) ) $ ( if d141 then d284 else false )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x11210 -> ( ( Set -> Set ) ∋ ( ( λ x11220 -> if false then Bool else Bool ) ) ) $ ( x11210 ) ) ) ) $ ( if false then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x11200 -> if true then d1055 else false ) ) ) $ ( if false then d911 else true )
        d1123 : ( ( Set -> Set ) ∋ ( ( λ x11270 -> ( ( Set -> Set ) ∋ ( ( λ x11280 -> if false then Bool else x11280 ) ) ) $ ( x11270 ) ) ) ) $ ( if false then Bool else Bool )
        d1123 = if ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> x11240 ) ) ) $ ( d619 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11260 -> d749 ) ) ) $ ( false )
        d1129 : ( ( Set -> Set ) ∋ ( ( λ x11300 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1129 = if if false then true else false then if true then true else d629 else if false then false else true
        d1131 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> if false then true else d828 ) ) ) $ ( if d592 then true else d202 )
        d1133 : if false then ( ( Set -> Set ) ∋ ( ( λ x11360 -> x11360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11370 -> x11370 ) ) ) $ ( Bool )
        d1133 = if ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> x11340 ) ) ) $ ( true ) then if false then d619 else false else ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> false ) ) ) $ ( d872 )
        d1138 : ( ( Set -> Set ) ∋ ( ( λ x11420 -> if true then Bool else x11420 ) ) ) $ ( if true then Bool else Bool )
        d1138 = if ( ( Bool -> Bool ) ∋ ( ( λ x11390 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11400 -> x11400 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> d454 ) ) ) $ ( true )
        d1143 : ( ( Set -> Set ) ∋ ( ( λ x11440 -> if true then x11440 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1143 = if if d84 then true else d158 then if d284 then d911 else d250 else if d767 then false else false
        d1145 : if false then ( ( Set -> Set ) ∋ ( ( λ x11470 -> x11470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11480 -> x11480 ) ) ) $ ( Bool )
        d1145 = ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> if x11460 then x11460 else d228 ) ) ) $ ( if true then d1050 else false )
        d1149 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1149 = if if false then d520 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11500 -> d707 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11510 -> d546 ) ) ) $ ( true )
        d1152 : ( ( Set -> Set ) ∋ ( ( λ x11550 -> ( ( Set -> Set ) ∋ ( ( λ x11560 -> if false then x11550 else x11550 ) ) ) $ ( x11550 ) ) ) ) $ ( if false then Bool else Bool )
        d1152 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> d46 ) ) ) $ ( d761 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> x11540 ) ) ) $ ( true )
        d1157 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1157 = ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> if false then x11590 else true ) ) ) $ ( d608 ) ) ) ) $ ( if d778 then d340 else false )
        d1160 : if true then ( ( Set -> Set ) ∋ ( ( λ x11620 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1160 = ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> if d289 then true else true ) ) ) $ ( if true then d398 else d245 )
        d1163 : ( ( Set -> Set ) ∋ ( ( λ x11650 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1163 = ( ( Bool -> Bool ) ∋ ( ( λ x11640 -> if x11640 then d217 else d84 ) ) ) $ ( if d976 then false else d65 )
        d1166 : if true then ( ( Set -> Set ) ∋ ( ( λ x11670 -> x11670 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1166 = if if d608 then d587 else d209 then if true then d1123 else false else if d525 then true else d414
        d1168 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1168 = ( ( Bool -> Bool ) ∋ ( ( λ x11690 -> ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> if true then true else false ) ) ) $ ( x11690 ) ) ) ) $ ( if false then true else true )
        d1171 : if false then ( ( Set -> Set ) ∋ ( ( λ x11730 -> x11730 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1171 = ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> if d546 then x11720 else x11720 ) ) ) $ ( if d25 then false else d629 )
        d1174 : if false then ( ( Set -> Set ) ∋ ( ( λ x11760 -> x11760 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11770 -> Bool ) ) ) $ ( Bool )
        d1174 = ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> if d439 then d852 else false ) ) ) $ ( if d492 then true else d1102 )
        d1178 : ( ( Set -> Set ) ∋ ( ( λ x11810 -> ( ( Set -> Set ) ∋ ( ( λ x11820 -> if false then x11810 else x11810 ) ) ) $ ( x11810 ) ) ) ) $ ( if false then Bool else Bool )
        d1178 = ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> if x11790 then d819 else d25 ) ) ) $ ( true ) ) ) ) $ ( if true then d1048 else d117 )
        d1183 : if true then ( ( Set -> Set ) ∋ ( ( λ x11860 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1183 = ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> if d1 then d840 else d582 ) ) ) $ ( false ) ) ) ) $ ( if d816 then true else d924 )
        d1187 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11890 -> Bool ) ) ) $ ( Bool )
        d1187 = ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> if x11880 then d566 else false ) ) ) $ ( if d241 then true else true )
        d1190 : if false then ( ( Set -> Set ) ∋ ( ( λ x11930 -> x11930 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1190 = ( ( Bool -> Bool ) ∋ ( ( λ x11910 -> ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> if x11910 then x11920 else true ) ) ) $ ( x11910 ) ) ) ) $ ( if false then false else true )
        d1194 : ( ( Set -> Set ) ∋ ( ( λ x11970 -> ( ( Set -> Set ) ∋ ( ( λ x11980 -> if true then x11980 else x11970 ) ) ) $ ( x11970 ) ) ) ) $ ( if true then Bool else Bool )
        d1194 = ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> if x11950 then x11950 else d556 ) ) ) $ ( false ) ) ) ) $ ( if d1 then true else d224 )
        d1199 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1199 = ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> if d642 then true else true ) ) ) $ ( if d1069 then d477 else false )
        d1201 : ( ( Set -> Set ) ∋ ( ( λ x12040 -> ( ( Set -> Set ) ∋ ( ( λ x12050 -> if true then x12050 else Bool ) ) ) $ ( x12040 ) ) ) ) $ ( if true then Bool else Bool )
        d1201 = ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> if x12020 then d268 else false ) ) ) $ ( x12020 ) ) ) ) $ ( if d75 then true else true )
        d1206 : ( ( Set -> Set ) ∋ ( ( λ x12090 -> ( ( Set -> Set ) ∋ ( ( λ x12100 -> if true then x12090 else Bool ) ) ) $ ( x12090 ) ) ) ) $ ( if true then Bool else Bool )
        d1206 = if if d1145 then d405 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> x12070 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> false ) ) ) $ ( false )
        d1211 : ( ( Set -> Set ) ∋ ( ( λ x12140 -> ( ( Set -> Set ) ∋ ( ( λ x12150 -> if true then x12150 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1211 = ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> ( ( Bool -> Bool ) ∋ ( ( λ x12130 -> if true then d654 else d1093 ) ) ) $ ( x12120 ) ) ) ) $ ( if d1119 then d707 else d477 )
        d1216 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1216 = if if d1190 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> d752 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12180 -> x12180 ) ) ) $ ( d1018 )
        d1219 : if true then ( ( Set -> Set ) ∋ ( ( λ x12220 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12230 -> Bool ) ) ) $ ( Bool )
        d1219 = ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> if x12210 then d3 else x12210 ) ) ) $ ( x12200 ) ) ) ) $ ( if d809 then d1055 else false )
        d1224 : ( ( Set -> Set ) ∋ ( ( λ x12260 -> if true then x12260 else x12260 ) ) ) $ ( if true then Bool else Bool )
        d1224 = ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> if d688 then true else false ) ) ) $ ( if true then d241 else d963 )
        d1227 : if true then ( ( Set -> Set ) ∋ ( ( λ x12300 -> x12300 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1227 = ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> if true then d106 else true ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d1231 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12340 -> x12340 ) ) ) $ ( Bool )
        d1231 = ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> if false then x12330 else x12330 ) ) ) $ ( x12320 ) ) ) ) $ ( if d51 then true else d277 )
        d1235 : ( ( Set -> Set ) ∋ ( ( λ x12390 -> if true then Bool else x12390 ) ) ) $ ( if true then Bool else Bool )
        d1235 = if ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> x12360 ) ) ) $ ( d284 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> x12370 ) ) ) $ ( d477 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> false ) ) ) $ ( d241 )
        d1240 : ( ( Set -> Set ) ∋ ( ( λ x12420 -> if false then x12420 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1240 = ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> if x12410 then d515 else x12410 ) ) ) $ ( if false then d175 else d1123 )
        d1243 : ( ( Set -> Set ) ∋ ( ( λ x12450 -> ( ( Set -> Set ) ∋ ( ( λ x12460 -> if true then x12450 else Bool ) ) ) $ ( x12450 ) ) ) ) $ ( if true then Bool else Bool )
        d1243 = ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> if true then d496 else x12440 ) ) ) $ ( if d202 then false else true )
        d1247 : ( ( Set -> Set ) ∋ ( ( λ x12490 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1247 = if if d209 then d723 else false then if true then d740 else d707 else ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> x12480 ) ) ) $ ( true )
        d1250 : if false then ( ( Set -> Set ) ∋ ( ( λ x12520 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1250 = ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> if true then false else d980 ) ) ) $ ( if d877 then false else d75 )
        d1253 : ( ( Set -> Set ) ∋ ( ( λ x12560 -> ( ( Set -> Set ) ∋ ( ( λ x12570 -> if true then x12560 else Bool ) ) ) $ ( x12560 ) ) ) ) $ ( if true then Bool else Bool )
        d1253 = ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> if d282 then true else x12550 ) ) ) $ ( false ) ) ) ) $ ( if d148 then true else true )
        d1258 : if true then ( ( Set -> Set ) ∋ ( ( λ x12610 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1258 = if if d272 then d525 else d181 then ( ( Bool -> Bool ) ∋ ( ( λ x12590 -> d13 ) ) ) $ ( d732 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12600 -> d1025 ) ) ) $ ( d405 )
        d1262 : if true then ( ( Set -> Set ) ∋ ( ( λ x12660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12670 -> x12670 ) ) ) $ ( Bool )
        d1262 = if ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> false ) ) ) $ ( d39 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12650 -> d128 ) ) ) $ ( d994 )
        d1268 : ( ( Set -> Set ) ∋ ( ( λ x12710 -> if true then x12710 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1268 = ( ( Bool -> Bool ) ∋ ( ( λ x12690 -> ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> if x12690 then d1000 else false ) ) ) $ ( d84 ) ) ) ) $ ( if d141 then true else d534 )
        d1272 : ( ( Set -> Set ) ∋ ( ( λ x12740 -> if true then Bool else x12740 ) ) ) $ ( if true then Bool else Bool )
        d1272 = ( ( Bool -> Bool ) ∋ ( ( λ x12730 -> if x12730 then x12730 else true ) ) ) $ ( if d919 then true else true )
        d1275 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1275 = ( ( Bool -> Bool ) ∋ ( ( λ x12760 -> ( ( Bool -> Bool ) ∋ ( ( λ x12770 -> if true then false else x12760 ) ) ) $ ( true ) ) ) ) $ ( if true then d1240 else d963 )
        d1278 : ( ( Set -> Set ) ∋ ( ( λ x12800 -> ( ( Set -> Set ) ∋ ( ( λ x12810 -> if false then Bool else x12800 ) ) ) $ ( x12800 ) ) ) ) $ ( if true then Bool else Bool )
        d1278 = ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> if false then x12790 else x12790 ) ) ) $ ( if d496 then true else false )
        d1282 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1282 = ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> if d30 then x12830 else x12830 ) ) ) $ ( x12830 ) ) ) ) $ ( if false then d1114 else d65 )
        d1285 : ( ( Set -> Set ) ∋ ( ( λ x12880 -> ( ( Set -> Set ) ∋ ( ( λ x12890 -> if true then x12890 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1285 = ( ( Bool -> Bool ) ∋ ( ( λ x12860 -> ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> if x12870 then x12870 else x12860 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d1290 : ( ( Set -> Set ) ∋ ( ( λ x12920 -> if true then x12920 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1290 = if if false then true else d788 then if true then false else d1171 else ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> x12910 ) ) ) $ ( false )
        d1293 : ( ( Set -> Set ) ∋ ( ( λ x12960 -> ( ( Set -> Set ) ∋ ( ( λ x12970 -> if true then Bool else Bool ) ) ) $ ( x12960 ) ) ) ) $ ( if false then Bool else Bool )
        d1293 = ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> ( ( Bool -> Bool ) ∋ ( ( λ x12950 -> if true then x12940 else x12950 ) ) ) $ ( false ) ) ) ) $ ( if d1201 then d928 else d306 )
        d1298 : if true then ( ( Set -> Set ) ∋ ( ( λ x13000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1298 = ( ( Bool -> Bool ) ∋ ( ( λ x12990 -> if x12990 then d774 else false ) ) ) $ ( if true then true else d632 )
        d1301 : ( ( Set -> Set ) ∋ ( ( λ x13040 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1301 = ( ( Bool -> Bool ) ∋ ( ( λ x13020 -> ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> if x13020 then x13020 else x13020 ) ) ) $ ( x13020 ) ) ) ) $ ( if d1199 then d603 else d202 )
        d1305 : ( ( Set -> Set ) ∋ ( ( λ x13080 -> if false then Bool else x13080 ) ) ) $ ( if false then Bool else Bool )
        d1305 = ( ( Bool -> Bool ) ∋ ( ( λ x13060 -> ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> if false then false else d538 ) ) ) $ ( d695 ) ) ) ) $ ( if false then true else false )
        d1309 : ( ( Set -> Set ) ∋ ( ( λ x13100 -> ( ( Set -> Set ) ∋ ( ( λ x13110 -> if true then x13110 else x13110 ) ) ) $ ( x13100 ) ) ) ) $ ( if false then Bool else Bool )
        d1309 = if if d473 then false else false then if d128 then true else true else if false then false else false
        d1312 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1312 = if ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> x13130 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13140 -> d1190 ) ) ) $ ( false ) else if d812 then false else true
        d1315 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13180 -> x13180 ) ) ) $ ( Bool )
        d1315 = ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> if d477 then x13170 else true ) ) ) $ ( x13160 ) ) ) ) $ ( if true then true else false )
        d1319 : ( ( Set -> Set ) ∋ ( ( λ x13220 -> if true then x13220 else x13220 ) ) ) $ ( if false then Bool else Bool )
        d1319 = if if d484 then true else d122 then ( ( Bool -> Bool ) ∋ ( ( λ x13200 -> d798 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> d833 ) ) ) $ ( d13 )
        d1323 : if true then ( ( Set -> Set ) ∋ ( ( λ x13260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13270 -> Bool ) ) ) $ ( Bool )
        d1323 = if ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> x13240 ) ) ) $ ( d122 ) then if d314 then true else d1206 else ( ( Bool -> Bool ) ∋ ( ( λ x13250 -> true ) ) ) $ ( false )
        d1328 : if true then ( ( Set -> Set ) ∋ ( ( λ x13300 -> x13300 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1328 = if if false then false else d657 then if false then true else d511 else ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> d608 ) ) ) $ ( d525 )
        d1331 : ( ( Set -> Set ) ∋ ( ( λ x13330 -> ( ( Set -> Set ) ∋ ( ( λ x13340 -> if false then x13340 else Bool ) ) ) $ ( x13330 ) ) ) ) $ ( if true then Bool else Bool )
        d1331 = ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> if false then d425 else true ) ) ) $ ( if false then d1093 else d1250 )
        d1335 : if false then ( ( Set -> Set ) ∋ ( ( λ x13370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13380 -> x13380 ) ) ) $ ( Bool )
        d1335 = ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> if d164 then x13360 else true ) ) ) $ ( if false then true else d172 )
        d1339 : ( ( Set -> Set ) ∋ ( ( λ x13400 -> ( ( Set -> Set ) ∋ ( ( λ x13410 -> if true then Bool else x13410 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1339 = if if false then true else d976 then if false then d289 else d1036 else if false then false else false
        d1342 : ( ( Set -> Set ) ∋ ( ( λ x13440 -> if false then x13440 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1342 = if if d153 then true else false then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> true ) ) ) $ ( false )
        d1345 : ( ( Set -> Set ) ∋ ( ( λ x13470 -> ( ( Set -> Set ) ∋ ( ( λ x13480 -> if false then Bool else Bool ) ) ) $ ( x13470 ) ) ) ) $ ( if true then Bool else Bool )
        d1345 = ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> if x13460 then false else false ) ) ) $ ( if true then true else false )
        d1349 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1349 = ( ( Bool -> Bool ) ∋ ( ( λ x13500 -> if x13500 then true else d625 ) ) ) $ ( if d740 then d1258 else true )
        d1351 : ( ( Set -> Set ) ∋ ( ( λ x13540 -> if false then x13540 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1351 = ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> if x13530 then x13530 else true ) ) ) $ ( x13520 ) ) ) ) $ ( if true then d546 else true )
        d1355 : if false then ( ( Set -> Set ) ∋ ( ( λ x13580 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13590 -> Bool ) ) ) $ ( Bool )
        d1355 = ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> ( ( Bool -> Bool ) ∋ ( ( λ x13570 -> if d625 then d963 else x13570 ) ) ) $ ( x13560 ) ) ) ) $ ( if false then true else d220 )
        d1360 : ( ( Set -> Set ) ∋ ( ( λ x13630 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1360 = ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> if x13620 then d1285 else x13620 ) ) ) $ ( x13610 ) ) ) ) $ ( if d692 then false else false )
        d1364 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13670 -> Bool ) ) ) $ ( Bool )
        d1364 = ( ( Bool -> Bool ) ∋ ( ( λ x13650 -> ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> if x13650 then true else false ) ) ) $ ( d487 ) ) ) ) $ ( if true then d668 else true )
        d1368 : if false then ( ( Set -> Set ) ∋ ( ( λ x13690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13700 -> x13700 ) ) ) $ ( Bool )
        d1368 = if if d907 then false else d454 then if d809 then false else d752 else if d65 then true else d496
        d1371 : if true then ( ( Set -> Set ) ∋ ( ( λ x13730 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1371 = ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> if false then x13720 else true ) ) ) $ ( if d162 then true else true )
        d1374 : ( ( Set -> Set ) ∋ ( ( λ x13770 -> ( ( Set -> Set ) ∋ ( ( λ x13780 -> if false then x13770 else Bool ) ) ) $ ( x13770 ) ) ) ) $ ( if true then Bool else Bool )
        d1374 = ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> if d232 then x13750 else x13760 ) ) ) $ ( d1319 ) ) ) ) $ ( if d684 then true else d1072 )
        d1379 : ( ( Set -> Set ) ∋ ( ( λ x13810 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1379 = if if d953 then d1084 else true then if d615 then false else d224 else ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> false ) ) ) $ ( true )
        d1382 : ( ( Set -> Set ) ∋ ( ( λ x13850 -> ( ( Set -> Set ) ∋ ( ( λ x13860 -> if false then Bool else x13850 ) ) ) $ ( x13850 ) ) ) ) $ ( if false then Bool else Bool )
        d1382 = ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> ( ( Bool -> Bool ) ∋ ( ( λ x13840 -> if d546 then true else d668 ) ) ) $ ( true ) ) ) ) $ ( if false then d1119 else true )
        d1387 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1387 = if ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> x13880 ) ) ) $ ( false ) then if false then d712 else d141 else if true then false else false
        d1389 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13930 -> x13930 ) ) ) $ ( Bool )
        d1389 = if ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> d939 ) ) ) $ ( d1028 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> d421 ) ) ) $ ( d195 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> x13920 ) ) ) $ ( d619 )
        d1394 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13960 -> x13960 ) ) ) $ ( Bool )
        d1394 = ( ( Bool -> Bool ) ∋ ( ( λ x13950 -> if false then x13950 else true ) ) ) $ ( if d1272 then d702 else true )
        d1397 : if false then ( ( Set -> Set ) ∋ ( ( λ x13990 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1397 = ( ( Bool -> Bool ) ∋ ( ( λ x13980 -> if x13980 then false else true ) ) ) $ ( if false then false else d43 )
        d1400 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14030 -> Bool ) ) ) $ ( Bool )
        d1400 = ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> if d306 then d1152 else x14010 ) ) ) $ ( d224 ) ) ) ) $ ( if d70 then d128 else false )
        d1404 : ( ( Set -> Set ) ∋ ( ( λ x14060 -> ( ( Set -> Set ) ∋ ( ( λ x14070 -> if true then x14060 else Bool ) ) ) $ ( x14060 ) ) ) ) $ ( if false then Bool else Bool )
        d1404 = ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> if d46 then d1194 else x14050 ) ) ) $ ( if false then true else true )
        d1408 : if true then ( ( Set -> Set ) ∋ ( ( λ x14090 -> x14090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14100 -> x14100 ) ) ) $ ( Bool )
        d1408 = if if true then true else d1285 then if true then d924 else true else if false then d326 else d1243
        d1411 : if true then ( ( Set -> Set ) ∋ ( ( λ x14120 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1411 = if if false then false else d421 then if false then d556 else true else if d444 then d1089 else true
        d1413 : ( ( Set -> Set ) ∋ ( ( λ x14150 -> if false then Bool else x14150 ) ) ) $ ( if true then Bool else Bool )
        d1413 = if if false then true else d582 then if d645 then d629 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14140 -> d1272 ) ) ) $ ( false )
        d1416 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14180 -> x14180 ) ) ) $ ( Bool )
        d1416 = ( ( Bool -> Bool ) ∋ ( ( λ x14170 -> if false then false else d625 ) ) ) $ ( if d1114 then false else d888 )
        d1419 : ( ( Set -> Set ) ∋ ( ( λ x14220 -> ( ( Set -> Set ) ∋ ( ( λ x14230 -> if true then x14220 else Bool ) ) ) $ ( x14220 ) ) ) ) $ ( if false then Bool else Bool )
        d1419 = ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> ( ( Bool -> Bool ) ∋ ( ( λ x14210 -> if true then d608 else false ) ) ) $ ( x14200 ) ) ) ) $ ( if d395 then d1349 else d380 )
        d1424 : ( ( Set -> Set ) ∋ ( ( λ x14260 -> ( ( Set -> Set ) ∋ ( ( λ x14270 -> if true then x14260 else Bool ) ) ) $ ( x14260 ) ) ) ) $ ( if true then Bool else Bool )
        d1424 = if if true then false else d326 then if d371 then d1243 else d840 else ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> x14250 ) ) ) $ ( d340 )
        d1428 : if false then ( ( Set -> Set ) ∋ ( ( λ x14310 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14320 -> Bool ) ) ) $ ( Bool )
        d1428 = ( ( Bool -> Bool ) ∋ ( ( λ x14290 -> ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> if x14290 then false else x14300 ) ) ) $ ( d764 ) ) ) ) $ ( if d371 then d1301 else d1072 )
        d1433 : ( ( Set -> Set ) ∋ ( ( λ x14360 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1433 = if ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> d971 ) ) ) $ ( false ) else if d224 then d761 else d778
        d1437 : if true then ( ( Set -> Set ) ∋ ( ( λ x14390 -> x14390 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1437 = ( ( Bool -> Bool ) ∋ ( ( λ x14380 -> if false then d3 else x14380 ) ) ) $ ( if d551 then d43 else d128 )
        d1440 : ( ( Set -> Set ) ∋ ( ( λ x14420 -> if true then x14420 else x14420 ) ) ) $ ( if true then Bool else Bool )
        d1440 = ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> if x14410 then false else d805 ) ) ) $ ( if false then true else d1250 )
        d1443 : if false then ( ( Set -> Set ) ∋ ( ( λ x14450 -> x14450 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1443 = ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> if false then x14440 else false ) ) ) $ ( if d110 then true else false )
        d1446 : if false then ( ( Set -> Set ) ∋ ( ( λ x14480 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1446 = ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> if d664 then x14470 else d587 ) ) ) $ ( if false then d695 else true )
        d1449 : ( ( Set -> Set ) ∋ ( ( λ x14520 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1449 = if ( ( Bool -> Bool ) ∋ ( ( λ x14500 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14510 -> true ) ) ) $ ( true ) else if true then d405 else false
        d1453 : ( ( Set -> Set ) ∋ ( ( λ x14550 -> ( ( Set -> Set ) ∋ ( ( λ x14560 -> if true then Bool else x14550 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1453 = ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> if x14540 then x14540 else false ) ) ) $ ( if d767 then false else false )
        d1457 : if false then ( ( Set -> Set ) ∋ ( ( λ x14590 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1457 = if if false then d153 else false then if d1262 then d1453 else d1351 else ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> false ) ) ) $ ( d1437 )
        d1460 : ( ( Set -> Set ) ∋ ( ( λ x14610 -> ( ( Set -> Set ) ∋ ( ( λ x14620 -> if true then x14610 else x14620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1460 = if if d343 then false else true then if false then true else true else if false then d469 else true
        d1463 : ( ( Set -> Set ) ∋ ( ( λ x14640 -> if false then Bool else x14640 ) ) ) $ ( if false then Bool else Bool )
        d1463 = if if d836 then d890 else false then if true then d836 else d258 else if false then d1298 else true
        d1465 : ( ( Set -> Set ) ∋ ( ( λ x14680 -> ( ( Set -> Set ) ∋ ( ( λ x14690 -> if false then x14690 else x14680 ) ) ) $ ( x14680 ) ) ) ) $ ( if true then Bool else Bool )
        d1465 = if ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> false ) ) ) $ ( d657 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14670 -> x14670 ) ) ) $ ( d770 ) else if false then d600 else d1285
        d1470 : ( ( Set -> Set ) ∋ ( ( λ x14730 -> ( ( Set -> Set ) ∋ ( ( λ x14740 -> if true then x14740 else x14730 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1470 = ( ( Bool -> Bool ) ∋ ( ( λ x14710 -> ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> if d1093 then d95 else x14710 ) ) ) $ ( x14710 ) ) ) ) $ ( if d1036 then false else d261 )
        d1475 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14780 -> x14780 ) ) ) $ ( Bool )
        d1475 = if ( ( Bool -> Bool ) ∋ ( ( λ x14760 -> true ) ) ) $ ( d141 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x14770 -> false ) ) ) $ ( d1428 )
        d1479 : if true then ( ( Set -> Set ) ∋ ( ( λ x14810 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1479 = ( ( Bool -> Bool ) ∋ ( ( λ x14800 -> if d1145 then d1364 else x14800 ) ) ) $ ( if false then false else false )
        d1482 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1482 = ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> ( ( Bool -> Bool ) ∋ ( ( λ x14840 -> if x14840 then d660 else d1262 ) ) ) $ ( false ) ) ) ) $ ( if false then d1463 else false )
        d1485 : ( ( Set -> Set ) ∋ ( ( λ x14870 -> ( ( Set -> Set ) ∋ ( ( λ x14880 -> if false then Bool else x14870 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1485 = ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> if false then d1152 else d788 ) ) ) $ ( if false then true else false )
        d1489 : if true then ( ( Set -> Set ) ∋ ( ( λ x14930 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14940 -> Bool ) ) ) $ ( Bool )
        d1489 = if ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> d258 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> d1201 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> x14920 ) ) ) $ ( false )
        d1495 : if false then ( ( Set -> Set ) ∋ ( ( λ x14970 -> x14970 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1495 = ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> if x14960 then false else d217 ) ) ) $ ( if false then d65 else d611 )
        d1498 : if true then ( ( Set -> Set ) ∋ ( ( λ x15000 -> x15000 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1498 = if if true then true else true then if d258 then true else d1025 else ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> x14990 ) ) ) $ ( false )
        d1501 : ( ( Set -> Set ) ∋ ( ( λ x15030 -> ( ( Set -> Set ) ∋ ( ( λ x15040 -> if false then x15030 else x15030 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1501 = ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> if x15020 then true else d1272 ) ) ) $ ( if false then d54 else d619 )
        d1505 : ( ( Set -> Set ) ∋ ( ( λ x15080 -> if true then x15080 else x15080 ) ) ) $ ( if true then Bool else Bool )
        d1505 = ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> if false then d1105 else true ) ) ) $ ( x15060 ) ) ) ) $ ( if d774 then d1349 else true )
        d1509 : ( ( Set -> Set ) ∋ ( ( λ x15110 -> ( ( Set -> Set ) ∋ ( ( λ x15120 -> if false then x15120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1509 = ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> if d1319 then d812 else false ) ) ) $ ( if d484 then false else d1351 )
        d1513 : ( ( Set -> Set ) ∋ ( ( λ x15150 -> if false then Bool else x15150 ) ) ) $ ( if true then Bool else Bool )
        d1513 = ( ( Bool -> Bool ) ∋ ( ( λ x15140 -> if false then d849 else false ) ) ) $ ( if true then d990 else true )
        d1516 : ( ( Set -> Set ) ∋ ( ( λ x15180 -> ( ( Set -> Set ) ∋ ( ( λ x15190 -> if false then x15180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1516 = if if d492 then d250 else d1055 then if true then true else d1041 else ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> false ) ) ) $ ( d603 )
        d1520 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15240 -> x15240 ) ) ) $ ( Bool )
        d1520 = if ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> x15210 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15220 -> x15220 ) ) ) $ ( d61 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> d421 ) ) ) $ ( d770 )
        d1525 : if false then ( ( Set -> Set ) ∋ ( ( λ x15270 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1525 = if if d1145 then false else d16 then if d1293 then d664 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15260 -> x15260 ) ) ) $ ( false )
        d1528 : if false then ( ( Set -> Set ) ∋ ( ( λ x15290 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1528 = if if d788 then d110 else d298 then if false then true else d405 else if d338 then d473 else true
        d1530 : ( ( Set -> Set ) ∋ ( ( λ x15320 -> if false then x15320 else x15320 ) ) ) $ ( if false then Bool else Bool )
        d1530 = ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> if d30 then x15310 else false ) ) ) $ ( if true then true else d9 )
        d1533 : ( ( Set -> Set ) ∋ ( ( λ x15370 -> ( ( Set -> Set ) ∋ ( ( λ x15380 -> if false then x15370 else x15370 ) ) ) $ ( x15370 ) ) ) ) $ ( if true then Bool else Bool )
        d1533 = if ( ( Bool -> Bool ) ∋ ( ( λ x15340 -> d6 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> x15350 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> false ) ) ) $ ( d761 )
        d1539 : ( ( Set -> Set ) ∋ ( ( λ x15430 -> if true then x15430 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1539 = if ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> true ) ) ) $ ( d845 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15420 -> false ) ) ) $ ( d88 )
        d1544 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1544 = if ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> d758 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> d122 ) ) ) $ ( true ) else if false then d128 else true
        d1547 : if true then ( ( Set -> Set ) ∋ ( ( λ x15500 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1547 = ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> ( ( Bool -> Bool ) ∋ ( ( λ x15490 -> if d668 then true else true ) ) ) $ ( x15480 ) ) ) ) $ ( if d1131 then false else false )
        d1551 : if false then ( ( Set -> Set ) ∋ ( ( λ x15540 -> x15540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15550 -> x15550 ) ) ) $ ( Bool )
        d1551 = ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> if d723 then d384 else d833 ) ) ) $ ( d70 ) ) ) ) $ ( if true then true else d1168 )
        d1556 : ( ( Set -> Set ) ∋ ( ( λ x15590 -> if false then Bool else x15590 ) ) ) $ ( if true then Bool else Bool )
        d1556 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15580 -> x15580 ) ) ) $ ( false )
        d1560 : if true then ( ( Set -> Set ) ∋ ( ( λ x15640 -> x15640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1560 = if ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> x15610 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> d454 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> true ) ) ) $ ( d469 )
        d1565 : ( ( Set -> Set ) ∋ ( ( λ x15670 -> ( ( Set -> Set ) ∋ ( ( λ x15680 -> if true then Bool else Bool ) ) ) $ ( x15670 ) ) ) ) $ ( if false then Bool else Bool )
        d1565 = ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> if d100 then x15660 else d1211 ) ) ) $ ( if true then d1110 else false )
        d1569 : if false then ( ( Set -> Set ) ∋ ( ( λ x15710 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1569 = ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> if x15700 then false else x15700 ) ) ) $ ( if false then d1110 else d1460 )
        d1572 : if false then ( ( Set -> Set ) ∋ ( ( λ x15740 -> x15740 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1572 = ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> if x15730 then true else false ) ) ) $ ( if d1194 then true else true )
        d1575 : ( ( Set -> Set ) ∋ ( ( λ x15780 -> ( ( Set -> Set ) ∋ ( ( λ x15790 -> if false then Bool else x15780 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1575 = ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> if x15770 then true else d525 ) ) ) $ ( x15760 ) ) ) ) $ ( if true then d195 else true )
        d1580 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15830 -> x15830 ) ) ) $ ( Bool )
        d1580 = ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> ( ( Bool -> Bool ) ∋ ( ( λ x15820 -> if false then true else d788 ) ) ) $ ( false ) ) ) ) $ ( if d781 then d148 else false )
        d1584 : ( ( Set -> Set ) ∋ ( ( λ x15870 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1584 = ( ( Bool -> Bool ) ∋ ( ( λ x15850 -> ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> if true then d454 else d1278 ) ) ) $ ( d1364 ) ) ) ) $ ( if false then true else d498 )
        d1588 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15900 -> Bool ) ) ) $ ( Bool )
        d1588 = ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> if false then false else false ) ) ) $ ( if false then false else d245 )
        d1591 : ( ( Set -> Set ) ∋ ( ( λ x15940 -> ( ( Set -> Set ) ∋ ( ( λ x15950 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1591 = ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> if d1190 then false else x15930 ) ) ) $ ( d1282 ) ) ) ) $ ( if false then false else true )
        d1596 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1596 = ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> ( ( Bool -> Bool ) ∋ ( ( λ x15980 -> if d169 then x15980 else d1174 ) ) ) $ ( false ) ) ) ) $ ( if d723 then false else false )
        d1599 : ( ( Set -> Set ) ∋ ( ( λ x16020 -> ( ( Set -> Set ) ∋ ( ( λ x16030 -> if true then x16030 else x16030 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1599 = ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> if false then x16010 else x16000 ) ) ) $ ( x16000 ) ) ) ) $ ( if d6 then true else false )
        d1604 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16060 -> x16060 ) ) ) $ ( Bool )
        d1604 = ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> if false then d1433 else true ) ) ) $ ( if d698 then true else false )
        d1607 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16100 -> Bool ) ) ) $ ( Bool )
        d1607 = ( ( Bool -> Bool ) ∋ ( ( λ x16080 -> ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> if true then x16080 else d13 ) ) ) $ ( true ) ) ) ) $ ( if false then d414 else d1345 )
        d1611 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1611 = if if d1194 then d587 else d30 then ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> false ) ) ) $ ( d1560 ) else if d1457 then true else false
        d1613 : if false then ( ( Set -> Set ) ∋ ( ( λ x16160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16170 -> Bool ) ) ) $ ( Bool )
        d1613 = if if d124 then d241 else d190 then ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> true ) ) ) $ ( d148 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16150 -> true ) ) ) $ ( d676 )
        d1618 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16200 -> x16200 ) ) ) $ ( Bool )
        d1618 = ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> if true then x16190 else d1004 ) ) ) $ ( if true then true else d994 )
        d1621 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1621 = if ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> x16220 ) ) ) $ ( d619 ) then if d1305 then true else d43 else ( ( Bool -> Bool ) ∋ ( ( λ x16230 -> x16230 ) ) ) $ ( d245 )
        d1624 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1624 = if ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> d1479 ) ) ) $ ( d428 ) then if false then d21 else true else if d1355 then d632 else d128
        d1626 : ( ( Set -> Set ) ∋ ( ( λ x16280 -> ( ( Set -> Set ) ∋ ( ( λ x16290 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1626 = ( ( Bool -> Bool ) ∋ ( ( λ x16270 -> if false then d774 else x16270 ) ) ) $ ( if true then d673 else d1036 )
        d1630 : if false then ( ( Set -> Set ) ∋ ( ( λ x16330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1630 = ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> if false then false else false ) ) ) $ ( d1206 ) ) ) ) $ ( if false then false else d1360 )
        d1634 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16360 -> Bool ) ) ) $ ( Bool )
        d1634 = ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> if d600 then d106 else d186 ) ) ) $ ( if false then d202 else false )
        d1637 : ( ( Set -> Set ) ∋ ( ( λ x16390 -> ( ( Set -> Set ) ∋ ( ( λ x16400 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1637 = if ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> d538 ) ) ) $ ( true ) then if d91 then d232 else d1588 else if d654 then d34 else d515
        d1641 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16420 -> x16420 ) ) ) $ ( Bool )
        d1641 = if if true then true else true then if true then true else true else if false then false else d75
        d1643 : ( ( Set -> Set ) ∋ ( ( λ x16450 -> ( ( Set -> Set ) ∋ ( ( λ x16460 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1643 = ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> if true then false else false ) ) ) $ ( if d1102 then d1404 else d805 )
        d1647 : ( ( Set -> Set ) ∋ ( ( λ x16500 -> if true then Bool else x16500 ) ) ) $ ( if false then Bool else Bool )
        d1647 = if ( ( Bool -> Bool ) ∋ ( ( λ x16480 -> x16480 ) ) ) $ ( d1360 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16490 -> x16490 ) ) ) $ ( true ) else if d1569 then d128 else false
        d1651 : if true then ( ( Set -> Set ) ∋ ( ( λ x16530 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1651 = ( ( Bool -> Bool ) ∋ ( ( λ x16520 -> if d1520 then false else true ) ) ) $ ( if true then d1138 else d990 )
        d1654 : ( ( Set -> Set ) ∋ ( ( λ x16560 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1654 = ( ( Bool -> Bool ) ∋ ( ( λ x16550 -> if true then false else x16550 ) ) ) $ ( if d823 then true else d444 )
        d1657 : ( ( Set -> Set ) ∋ ( ( λ x16580 -> ( ( Set -> Set ) ∋ ( ( λ x16590 -> if false then Bool else x16590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1657 = if if d1463 then false else d95 then if d1591 then false else d852 else if d882 then true else d611
        d1660 : if true then ( ( Set -> Set ) ∋ ( ( λ x16630 -> x16630 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1660 = if if true then d245 else d987 then ( ( Bool -> Bool ) ∋ ( ( λ x16610 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16620 -> true ) ) ) $ ( true )
        d1664 : ( ( Set -> Set ) ∋ ( ( λ x16660 -> ( ( Set -> Set ) ∋ ( ( λ x16670 -> if false then x16660 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1664 = ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> if d597 then true else true ) ) ) $ ( if d25 then d95 else true )
        d1668 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1668 = ( ( Bool -> Bool ) ∋ ( ( λ x16690 -> if x16690 then d481 else x16690 ) ) ) $ ( if d1580 then d70 else d732 )
        d1670 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16730 -> Bool ) ) ) $ ( Bool )
        d1670 = ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> ( ( Bool -> Bool ) ∋ ( ( λ x16720 -> if false then d781 else d1374 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d1674 : if false then ( ( Set -> Set ) ∋ ( ( λ x16760 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1674 = if if d1530 then d1138 else false then if d997 then false else d561 else ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> x16750 ) ) ) $ ( true )
        d1677 : if false then ( ( Set -> Set ) ∋ ( ( λ x16790 -> x16790 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1677 = ( ( Bool -> Bool ) ∋ ( ( λ x16780 -> if x16780 then d1556 else d217 ) ) ) $ ( if false then false else true )
        d1680 : ( ( Set -> Set ) ∋ ( ( λ x16830 -> ( ( Set -> Set ) ∋ ( ( λ x16840 -> if false then x16830 else Bool ) ) ) $ ( x16830 ) ) ) ) $ ( if true then Bool else Bool )
        d1680 = if if d1482 then false else d343 then ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> x16810 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16820 -> true ) ) ) $ ( false )
        d1685 : ( ( Set -> Set ) ∋ ( ( λ x16880 -> if true then x16880 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1685 = ( ( Bool -> Bool ) ∋ ( ( λ x16860 -> ( ( Bool -> Bool ) ∋ ( ( λ x16870 -> if x16870 then d1630 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d1475 else d425 )
        d1689 : ( ( Set -> Set ) ∋ ( ( λ x16900 -> if true then x16900 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1689 = if if true then d164 else false then if d1654 then d1152 else true else if d642 then true else true
        d1691 : ( ( Set -> Set ) ∋ ( ( λ x16940 -> ( ( Set -> Set ) ∋ ( ( λ x16950 -> if true then x16950 else Bool ) ) ) $ ( x16940 ) ) ) ) $ ( if true then Bool else Bool )
        d1691 = ( ( Bool -> Bool ) ∋ ( ( λ x16920 -> ( ( Bool -> Bool ) ∋ ( ( λ x16930 -> if true then false else d1224 ) ) ) $ ( d1298 ) ) ) ) $ ( if d241 then d812 else d1174 )
        d1696 : if false then ( ( Set -> Set ) ∋ ( ( λ x16990 -> x16990 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1696 = if if d1143 then d1157 else d1607 then ( ( Bool -> Bool ) ∋ ( ( λ x16970 -> d1624 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16980 -> false ) ) ) $ ( true )
        d1700 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x17030 -> x17030 ) ) ) $ ( Bool )
        d1700 = ( ( Bool -> Bool ) ∋ ( ( λ x17010 -> ( ( Bool -> Bool ) ∋ ( ( λ x17020 -> if x17020 then x17010 else false ) ) ) $ ( false ) ) ) ) $ ( if true then false else d960 )
        d1704 : ( ( Set -> Set ) ∋ ( ( λ x17060 -> if true then x17060 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1704 = ( ( Bool -> Bool ) ∋ ( ( λ x17050 -> if d1110 then x17050 else false ) ) ) $ ( if d388 then true else d1231 )