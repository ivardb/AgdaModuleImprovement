module Decls450Test6  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else x40 ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then true else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d6 : if true then ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x70 then x70 else x70 ) ) ) $ ( if d1 then true else true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then Bool else x120 ) ) ) $ ( if false then Bool else Bool )
        d10 = if if true then false else d1 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x110 -> true ) ) ) $ ( d6 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then Bool else x150 ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if x140 then d10 else true ) ) ) $ ( if d6 then false else d10 )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d16 = if ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d10 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( false )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then Bool else x240 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if false then x230 else x230 ) ) ) $ ( if d16 then d6 else d16 )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x290 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if x280 then false else d1 ) ) ) $ ( d16 ) ) ) ) $ ( if d6 then true else d6 )
        d31 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x340 -> x340 ) ) ) $ ( Bool )
        d31 = if if true then d6 else true then ( ( Bool -> Bool ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( false )
        d35 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if false then x370 else x370 ) ) ) $ ( x360 ) ) ) ) $ ( if d26 then d16 else true )
        d39 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( Bool )
        d39 = if if true then d22 else true then ( ( Bool -> Bool ) ∋ ( ( λ x400 -> d13 ) ) ) $ ( d31 ) else if true then d16 else d16
        d42 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> if true then Bool else x430 ) ) ) $ ( x430 ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if d31 then false else d16 then if d22 then false else false else if d13 then false else d35
        d45 : ( ( Set -> Set ) ∋ ( ( λ x480 -> ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then Bool else Bool ) ) ) $ ( x480 ) ) ) ) $ ( if false then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if false then x460 else x460 ) ) ) $ ( x460 ) ) ) ) $ ( if d39 then true else true )
        d50 : if false then ( ( Set -> Set ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if x510 then d6 else x510 ) ) ) $ ( if false then d42 else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then Bool else x580 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if false then x550 else x550 ) ) ) $ ( true ) ) ) ) $ ( if true then d42 else true )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then Bool else x620 ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if x610 then d45 else false ) ) ) $ ( d13 ) ) ) ) $ ( if false then d6 else d31 )
        d63 : if false then if false then Bool else Bool else if true then Bool else Bool
        d63 = if if d42 then false else d42 then if false then true else d16 else ( ( Bool -> Bool ) ∋ ( ( λ x640 -> true ) ) ) $ ( d50 )
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> true ) ) ) $ ( true ) then if d31 then d6 else d26 else ( ( Bool -> Bool ) ∋ ( ( λ x670 -> d35 ) ) ) $ ( d1 )
        d68 : if false then if false then Bool else Bool else if false then Bool else Bool
        d68 = if if true then d39 else true then ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d39 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x700 -> true ) ) ) $ ( false )
        d71 : if true then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if x720 then d65 else d59 ) ) ) $ ( if d65 then d35 else d13 )
        d73 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if true then d50 else d42 ) ) ) $ ( true ) ) ) ) $ ( if d50 then d10 else d16 )
        d77 : if true then if true then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if d13 then x790 else x780 ) ) ) $ ( x780 ) ) ) ) $ ( if false then false else d39 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x830 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d80 = if ( ( Bool -> Bool ) ∋ ( ( λ x810 -> true ) ) ) $ ( d13 ) then ( ( Bool -> Bool ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( true ) else if d73 then true else d31
        d84 : if true then ( ( Set -> Set ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d84 = if ( ( Bool -> Bool ) ∋ ( ( λ x850 -> d26 ) ) ) $ ( d31 ) then if d31 then d39 else true else if false then d63 else d6
        d87 : if true then ( ( Set -> Set ) ∋ ( ( λ x900 -> x900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if x890 then x880 else d73 ) ) ) $ ( true ) ) ) ) $ ( if true then d59 else d13 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d59 then true else true then if true then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x930 -> x930 ) ) ) $ ( d71 )
        d96 : if false then if false then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if d84 then x970 else true ) ) ) $ ( if d45 then true else false )
        d98 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if d13 then x990 else x990 ) ) ) $ ( if false then d26 else true )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then x1040 else x1040 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if d80 then d31 else true ) ) ) $ ( x1020 ) ) ) ) $ ( if d71 then d71 else d77 )
        d105 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1070 -> Bool ) ) ) $ ( Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if true then d71 else false ) ) ) $ ( if false then true else d80 )
        d108 : if false then ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if x1090 then true else x1090 ) ) ) $ ( if d31 then d10 else true )
        d112 : if false then if true then Bool else Bool else if false then Bool else Bool
        d112 = if ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d65 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d26 ) ) ) $ ( false ) else if false then true else true
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> if false then x1180 else x1190 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if d42 then false else d87 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> if false then x1220 else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1210 then x1210 else true ) ) ) $ ( if d87 then d54 else d112 )
        d123 : if false then ( ( Set -> Set ) ∋ ( ( λ x1260 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d123 = if ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> true ) ) ) $ ( d22 ) else if true then false else true
        d127 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1310 -> x1310 ) ) ) $ ( Bool )
        d127 = if ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> d39 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> false ) ) ) $ ( d108 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> x1300 ) ) ) $ ( d50 )
        d132 : if false then ( ( Set -> Set ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if d45 then true else false ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> if false then x1370 else x1370 ) ) ) $ ( if false then Bool else Bool )
        d136 = if if true then false else d127 then if d22 then true else false else if d6 then d84 else d123
        d138 : if false then ( ( Set -> Set ) ∋ ( ( λ x1390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1400 -> Bool ) ) ) $ ( Bool )
        d138 = if if true then d123 else d87 then if true then false else d73 else if d127 then false else d45
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then x1440 else x1440 ) ) ) $ ( if false then Bool else Bool )
        d141 = if ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> d45 ) ) ) $ ( false ) then if d42 then d92 else d87 else ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( d138 )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> ( ( Set -> Set ) ∋ ( ( λ x1480 -> if true then Bool else x1480 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> if d101 then d45 else d136 ) ) ) $ ( if d115 then d65 else d96 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then x1520 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if false then d123 else d105 ) ) ) $ ( x1500 ) ) ) ) $ ( if d80 then true else d105 )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if x1550 then false else true ) ) ) $ ( if false then true else d68 )
        d157 : ( ( Set -> Set ) ∋ ( ( λ x1600 -> ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then Bool else Bool ) ) ) $ ( x1600 ) ) ) ) $ ( if true then Bool else Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if d26 then false else false ) ) ) $ ( false ) ) ) ) $ ( if false then d65 else d154 )
        d162 : if true then if false then Bool else Bool else if false then Bool else Bool
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> if d77 then x1640 else d120 ) ) ) $ ( x1630 ) ) ) ) $ ( if d112 then d59 else d154 )
        d165 : if false then if false then Bool else Bool else if true then Bool else Bool
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if d154 then d120 else true ) ) ) $ ( x1660 ) ) ) ) $ ( if false then true else d154 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> if false then Bool else x1710 ) ) ) $ ( if false then Bool else Bool )
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if x1690 then false else false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d105 )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> if true then x1760 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if d162 then false else d16 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d141 )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then x1800 else x1800 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if false then x1780 else d42 ) ) ) $ ( if true then false else true )
        d181 : if true then ( ( Set -> Set ) ∋ ( ( λ x1830 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if x1820 then x1820 else d13 ) ) ) $ ( if true then true else true )
        d184 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> ( ( Set -> Set ) ∋ ( ( λ x1880 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if d63 then false else d71 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d189 : ( ( Set -> Set ) ∋ ( ( λ x1910 -> if true then x1910 else x1910 ) ) ) $ ( if true then Bool else Bool )
        d189 = if if d154 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> true ) ) ) $ ( true ) else if d145 then false else false
        d192 : if false then ( ( Set -> Set ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1960 -> Bool ) ) ) $ ( Bool )
        d192 = if ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> d73 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> false ) ) ) $ ( d145 ) else if true then d26 else false
        d197 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> ( ( Set -> Set ) ∋ ( ( λ x2010 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if x1990 then x1990 else d105 ) ) ) $ ( x1980 ) ) ) ) $ ( if d189 then d145 else d87 )
        d202 : if false then ( ( Set -> Set ) ∋ ( ( λ x2040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2050 -> x2050 ) ) ) $ ( Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> if d73 then true else true ) ) ) $ ( if d10 then true else false )
        d206 : if true then ( ( Set -> Set ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2110 -> Bool ) ) ) $ ( Bool )
        d206 = if ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( d145 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> d184 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> false ) ) ) $ ( d87 )
        d212 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2150 -> Bool ) ) ) $ ( Bool )
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> if true then d16 else false ) ) ) $ ( x2130 ) ) ) ) $ ( if d92 then d54 else true )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then Bool else x2180 ) ) ) $ ( if false then Bool else Bool )
        d216 = if if true then true else d54 then if true then true else d35 else ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> d54 ) ) ) $ ( d1 )
        d219 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2210 -> x2210 ) ) ) $ ( Bool )
        d219 = ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> if d123 then true else false ) ) ) $ ( if d162 then d87 else d31 )
        d222 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2240 -> x2240 ) ) ) $ ( Bool )
        d222 = if ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> false ) ) ) $ ( true ) then if d172 then d63 else true else if d123 then false else d98
        d225 : ( ( Set -> Set ) ∋ ( ( λ x2280 -> if false then Bool else x2280 ) ) ) $ ( if true then Bool else Bool )
        d225 = if ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( d101 ) else if d112 then d192 else true
        d229 : ( ( Set -> Set ) ∋ ( ( λ x2320 -> if false then x2320 else x2320 ) ) ) $ ( if true then Bool else Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if x2310 then d222 else x2300 ) ) ) $ ( d92 ) ) ) ) $ ( if true then true else d59 )
        d233 : ( ( Set -> Set ) ∋ ( ( λ x2350 -> ( ( Set -> Set ) ∋ ( ( λ x2360 -> if true then x2360 else x2360 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d233 = if ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( false ) then if d216 then d115 else true else if d77 then true else true
        d237 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> if true then d149 else false ) ) ) $ ( d42 ) ) ) ) $ ( if true then d222 else true )
        d241 : if false then if true then Bool else Bool else if false then Bool else Bool
        d241 = if ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> x2420 ) ) ) $ ( false ) then if d13 then d184 else d123 else if d92 then d87 else false
        d243 : ( ( Set -> Set ) ∋ ( ( λ x2450 -> ( ( Set -> Set ) ∋ ( ( λ x2460 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> if true then false else false ) ) ) $ ( if false then d222 else d73 )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then Bool else x2490 ) ) ) $ ( if false then Bool else Bool )
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> if d59 then x2480 else true ) ) ) $ ( if d39 then true else d197 )
        d250 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> if true then x2530 else x2530 ) ) ) $ ( if false then Bool else Bool )
        d250 = if ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> d184 ) ) ) $ ( false ) then if true then d243 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> d165 ) ) ) $ ( d35 )
        d254 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool )
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> if true then d202 else d250 ) ) ) $ ( d222 ) ) ) ) $ ( if d225 then d71 else false )
        d258 : if false then if true then Bool else Bool else if true then Bool else Bool
        d258 = if ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d96 ) ) ) $ ( d127 ) then if true then d181 else false else if false then d112 else d108
        d260 : if false then if true then Bool else Bool else if false then Bool else Bool
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if x2610 then d212 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d92 else d184 )
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> ( ( Set -> Set ) ∋ ( ( λ x2680 -> if true then Bool else x2670 ) ) ) $ ( x2670 ) ) ) ) $ ( if false then Bool else Bool )
        d263 = if ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> x2640 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> true ) ) ) $ ( d145 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> x2660 ) ) ) $ ( false )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x2710 -> ( ( Set -> Set ) ∋ ( ( λ x2720 -> if true then Bool else x2710 ) ) ) $ ( x2710 ) ) ) ) $ ( if true then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> if d225 then d1 else x2700 ) ) ) $ ( if d13 then false else d132 )
        d273 : ( ( Set -> Set ) ∋ ( ( λ x2750 -> if true then x2750 else x2750 ) ) ) $ ( if false then Bool else Bool )
        d273 = if ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> d112 ) ) ) $ ( false ) then if true then d269 else false else if true then false else false
        d276 : ( ( Set -> Set ) ∋ ( ( λ x2790 -> ( ( Set -> Set ) ∋ ( ( λ x2800 -> if false then x2800 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d276 = if ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( d237 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> d105 ) ) ) $ ( d42 ) else if d247 then true else d73
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then x2850 else Bool ) ) ) $ ( x2840 ) ) ) ) $ ( if true then Bool else Bool )
        d281 = if ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> false ) ) ) $ ( true ) then if d243 then d273 else d84 else ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( d6 )
        d286 : if true then if true then Bool else Bool else if true then Bool else Bool
        d286 = if ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> x2870 ) ) ) $ ( d77 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> d189 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> x2890 ) ) ) $ ( d63 )
        d290 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> ( ( Set -> Set ) ∋ ( ( λ x2920 -> if true then x2910 else x2920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d290 = if if false then true else d35 then if d233 then d286 else true else if d225 then d157 else true
        d293 : if false then ( ( Set -> Set ) ∋ ( ( λ x2950 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if x2940 then false else d98 ) ) ) $ ( if true then true else d120 )
        d296 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> ( ( Set -> Set ) ∋ ( ( λ x3000 -> if false then Bool else x3000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d296 = if ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> x2970 ) ) ) $ ( d154 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> d45 ) ) ) $ ( true ) else if true then d10 else d243
        d301 : ( ( Set -> Set ) ∋ ( ( λ x3030 -> if true then x3030 else Bool ) ) ) $ ( if false then Bool else Bool )
        d301 = if if d138 then false else d13 then if false then d192 else d168 else ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> d101 ) ) ) $ ( d276 )
        d304 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> ( ( Set -> Set ) ∋ ( ( λ x3070 -> if false then x3060 else Bool ) ) ) $ ( x3060 ) ) ) ) $ ( if false then Bool else Bool )
        d304 = ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> if true then x3050 else false ) ) ) $ ( if d26 then true else d222 )
        d308 : ( ( Set -> Set ) ∋ ( ( λ x3110 -> ( ( Set -> Set ) ∋ ( ( λ x3120 -> if true then x3110 else Bool ) ) ) $ ( x3110 ) ) ) ) $ ( if true then Bool else Bool )
        d308 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( d141 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> d184 ) ) ) $ ( d237 )
        d313 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> ( ( Set -> Set ) ∋ ( ( λ x3160 -> if false then x3160 else Bool ) ) ) $ ( x3150 ) ) ) ) $ ( if false then Bool else Bool )
        d313 = if ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> false ) ) ) $ ( d273 ) then if false then true else d197 else if d50 then true else d154
        d317 : if false then ( ( Set -> Set ) ∋ ( ( λ x3180 -> x3180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3190 -> x3190 ) ) ) $ ( Bool )
        d317 = if if true then false else true then if true then d84 else d219 else if d63 then d136 else false
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3220 -> ( ( Set -> Set ) ∋ ( ( λ x3230 -> if false then Bool else Bool ) ) ) $ ( x3220 ) ) ) ) $ ( if true then Bool else Bool )
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> if d59 then false else d301 ) ) ) $ ( if d254 then false else true )
        d324 : ( ( Set -> Set ) ∋ ( ( λ x3270 -> ( ( Set -> Set ) ∋ ( ( λ x3280 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d324 = if ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> x3250 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> false ) ) ) $ ( d197 ) else if true then d54 else d276
        d329 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> if true then x3320 else x3320 ) ) ) $ ( if false then Bool else Bool )
        d329 = if ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> d276 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> d31 ) ) ) $ ( true ) else if d233 then d206 else d216
        d333 : if true then ( ( Set -> Set ) ∋ ( ( λ x3360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3370 -> Bool ) ) ) $ ( Bool )
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> if d165 then d168 else d59 ) ) ) $ ( false ) ) ) ) $ ( if false then d101 else d165 )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> ( ( Set -> Set ) ∋ ( ( λ x3420 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> if false then d301 else x3390 ) ) ) $ ( x3390 ) ) ) ) $ ( if false then d77 else false )
        d343 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> ( ( Set -> Set ) ∋ ( ( λ x3470 -> if false then x3470 else x3460 ) ) ) $ ( x3460 ) ) ) ) $ ( if true then Bool else Bool )
        d343 = ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> if d6 then d313 else d216 ) ) ) $ ( d317 ) ) ) ) $ ( if d202 then d219 else true )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> if false then x3500 else x3500 ) ) ) $ ( if false then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if x3490 then d149 else x3490 ) ) ) $ ( if false then d101 else false )
        d351 : if true then if false then Bool else Bool else if false then Bool else Bool
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> if x3520 then true else false ) ) ) $ ( if true then true else d281 )
        d353 : ( ( Set -> Set ) ∋ ( ( λ x3550 -> if true then Bool else x3550 ) ) ) $ ( if true then Bool else Bool )
        d353 = if if false then false else false then if d313 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> d31 ) ) ) $ ( false )
        d356 : ( ( Set -> Set ) ∋ ( ( λ x3580 -> ( ( Set -> Set ) ∋ ( ( λ x3590 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d356 = if if true then d39 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> d22 ) ) ) $ ( d39 ) else if d243 then true else d317
        d360 : ( ( Set -> Set ) ∋ ( ( λ x3640 -> if false then Bool else x3640 ) ) ) $ ( if false then Bool else Bool )
        d360 = if ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> x3610 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> d149 ) ) ) $ ( d356 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> d63 ) ) ) $ ( d269 )
        d365 : ( ( Set -> Set ) ∋ ( ( λ x3670 -> ( ( Set -> Set ) ∋ ( ( λ x3680 -> if false then x3670 else Bool ) ) ) $ ( x3670 ) ) ) ) $ ( if false then Bool else Bool )
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> if x3660 then true else x3660 ) ) ) $ ( if d343 then d132 else d132 )
        d369 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( Bool )
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> if true then true else false ) ) ) $ ( if true then true else d356 )
        d372 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3740 -> x3740 ) ) ) $ ( Bool )
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> if x3730 then x3730 else false ) ) ) $ ( if d222 then false else true )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> if x3760 then d80 else d115 ) ) ) $ ( if d286 then d225 else d241 )
        d378 : ( ( Set -> Set ) ∋ ( ( λ x3810 -> if false then x3810 else Bool ) ) ) $ ( if true then Bool else Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if x3800 then false else d365 ) ) ) $ ( d22 ) ) ) ) $ ( if false then d269 else d73 )
        d382 : if true then ( ( Set -> Set ) ∋ ( ( λ x3850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3860 -> Bool ) ) ) $ ( Bool )
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> false ) ) ) $ ( d241 ) then if true then false else d73 else ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> d219 ) ) ) $ ( d372 )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> ( ( Set -> Set ) ∋ ( ( λ x3910 -> if true then x3910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if true then true else d120 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d269 )
        d392 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3960 -> Bool ) ) ) $ ( Bool )
        d392 = if ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> true ) ) ) $ ( d338 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> d372 ) ) ) $ ( d65 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> true ) ) ) $ ( d258 )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x3990 -> if false then x3990 else Bool ) ) ) $ ( if true then Bool else Bool )
        d397 = if if d241 then d356 else true then if false then d233 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> d1 ) ) ) $ ( d141 )
        d400 : if false then if false then Bool else Bool else if false then Bool else Bool
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> if d329 then true else true ) ) ) $ ( x4010 ) ) ) ) $ ( if d308 then true else false )
        d403 : if false then ( ( Set -> Set ) ∋ ( ( λ x4050 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d403 = if if d189 then d138 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> false ) ) ) $ ( false ) else if true then d96 else d212
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4090 -> ( ( Set -> Set ) ∋ ( ( λ x4100 -> if false then x4100 else x4100 ) ) ) $ ( x4090 ) ) ) ) $ ( if true then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> if d250 then x4070 else false ) ) ) $ ( x4070 ) ) ) ) $ ( if true then false else true )
        d411 : if false then ( ( Set -> Set ) ∋ ( ( λ x4140 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4150 -> x4150 ) ) ) $ ( Bool )
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> if d387 then d154 else false ) ) ) $ ( x4120 ) ) ) ) $ ( if false then d233 else false )
        d416 : ( ( Set -> Set ) ∋ ( ( λ x4190 -> ( ( Set -> Set ) ∋ ( ( λ x4200 -> if false then Bool else Bool ) ) ) $ ( x4190 ) ) ) ) $ ( if false then Bool else Bool )
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if d338 then d138 else true ) ) ) $ ( true ) ) ) ) $ ( if d45 then d39 else d105 )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> if false then x4230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d421 = if if false then d263 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> x4220 ) ) ) $ ( false ) else if d411 then true else false
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> ( ( Set -> Set ) ∋ ( ( λ x4280 -> if true then x4280 else x4270 ) ) ) $ ( x4270 ) ) ) ) $ ( if false then Bool else Bool )
        d424 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> false ) ) ) $ ( d286 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> x4260 ) ) ) $ ( d177 )
        d429 : if false then ( ( Set -> Set ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4320 -> Bool ) ) ) $ ( Bool )
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if x4300 then d177 else x4300 ) ) ) $ ( if d233 then false else true )
        d433 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4360 -> x4360 ) ) ) $ ( Bool )
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> if d276 then false else x4350 ) ) ) $ ( x4340 ) ) ) ) $ ( if d149 then d353 else d308 )
        d437 : ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then x4410 else x4410 ) ) ) $ ( if true then Bool else Bool )
        d437 = if ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> d26 ) ) ) $ ( d411 )
        d442 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4450 -> Bool ) ) ) $ ( Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> if d372 then x4440 else x4440 ) ) ) $ ( d127 ) ) ) ) $ ( if d338 then true else d212 )
        d446 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> ( ( Set -> Set ) ∋ ( ( λ x4490 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> if d260 then x4470 else true ) ) ) $ ( if true then d165 else false )
        d450 : if false then ( ( Set -> Set ) ∋ ( ( λ x4530 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d450 = if ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> d10 ) ) ) $ ( d421 ) then if true then d241 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> d421 ) ) ) $ ( d433 )
        d454 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4570 -> Bool ) ) ) $ ( Bool )
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> if d403 then false else d293 ) ) ) $ ( d243 ) ) ) ) $ ( if true then true else d141 )
        d458 : if true then if false then Bool else Bool else if false then Bool else Bool
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if d39 then x4590 else d42 ) ) ) $ ( if d138 then d77 else d442 )
        d460 : ( ( Set -> Set ) ∋ ( ( λ x4630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d460 = if if d16 then d123 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> x4610 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> d301 ) ) ) $ ( d42 )
        d464 : if false then if true then Bool else Bool else if false then Bool else Bool
        d464 = if if true then true else false then if d138 then false else d286 else ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( true )
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> if d80 then true else x4680 ) ) ) $ ( d365 ) ) ) ) $ ( if d442 then d16 else d222 )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x4730 -> if true then Bool else x4730 ) ) ) $ ( if true then Bool else Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> if true then true else d108 ) ) ) $ ( x4710 ) ) ) ) $ ( if d127 then true else d269 )
        d474 : ( ( Set -> Set ) ∋ ( ( λ x4760 -> if true then x4760 else x4760 ) ) ) $ ( if true then Bool else Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if true then true else false ) ) ) $ ( if d241 then false else false )
        d477 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4800 -> Bool ) ) ) $ ( Bool )
        d477 = if if false then d92 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> d276 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> false ) ) ) $ ( d324 )
        d481 : if true then ( ( Set -> Set ) ∋ ( ( λ x4840 -> x4840 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> if x4820 then x4830 else x4830 ) ) ) $ ( d308 ) ) ) ) $ ( if true then true else false )
        d486 : if false then ( ( Set -> Set ) ∋ ( ( λ x4890 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if d63 then true else true ) ) ) $ ( d437 ) ) ) ) $ ( if false then true else false )
        d490 : if true then if true then Bool else Bool else if true then Bool else Bool
        d490 = ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> if d411 then x4920 else x4920 ) ) ) $ ( x4910 ) ) ) ) $ ( if d424 then d212 else false )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4950 -> ( ( Set -> Set ) ∋ ( ( λ x4960 -> if true then x4960 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d493 = if if true then true else d293 then ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> d172 ) ) ) $ ( d115 ) else if false then d263 else false
        d497 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4990 -> x4990 ) ) ) $ ( Bool )
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> if x4980 then d486 else true ) ) ) $ ( if true then false else d458 )
        d500 : if true then ( ( Set -> Set ) ∋ ( ( λ x5020 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5030 -> x5030 ) ) ) $ ( Bool )
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> if d351 then d222 else x5010 ) ) ) $ ( if d222 then true else d165 )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if true then x5070 else x5070 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if true then d71 else x5060 ) ) ) $ ( x5050 ) ) ) ) $ ( if d108 then d39 else true )
        d509 : if false then ( ( Set -> Set ) ∋ ( ( λ x5110 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if x5100 then x5100 else false ) ) ) $ ( if false then d429 else d84 )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5160 -> ( ( Set -> Set ) ∋ ( ( λ x5170 -> if true then Bool else x5170 ) ) ) $ ( x5160 ) ) ) ) $ ( if true then Bool else Bool )
        d512 = if ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> d481 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> true ) ) ) $ ( d301 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> true ) ) ) $ ( true )
        d518 : if false then if false then Bool else Bool else if true then Bool else Bool
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> if d68 then d202 else d406 ) ) ) $ ( if d338 then d136 else d509 )
        d520 : ( ( Set -> Set ) ∋ ( ( λ x5240 -> if false then x5240 else x5240 ) ) ) $ ( if false then Bool else Bool )
        d520 = if ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> false ) ) ) $ ( d132 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> true ) ) ) $ ( d222 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> true ) ) ) $ ( d474 )
        d525 : ( ( Set -> Set ) ∋ ( ( λ x5280 -> ( ( Set -> Set ) ∋ ( ( λ x5290 -> if true then x5290 else Bool ) ) ) $ ( x5280 ) ) ) ) $ ( if false then Bool else Bool )
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if false then x5270 else d260 ) ) ) $ ( true ) ) ) ) $ ( if true then d247 else false )
        d530 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if x5320 then false else x5310 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d534 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> ( ( Set -> Set ) ∋ ( ( λ x5370 -> if false then Bool else Bool ) ) ) $ ( x5360 ) ) ) ) $ ( if false then Bool else Bool )
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if x5350 then x5350 else d241 ) ) ) $ ( if d273 then true else true )
        d538 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5390 -> x5390 ) ) ) $ ( Bool )
        d538 = if if true then d192 else d54 then if d360 then false else d115 else if d115 then d281 else d206
        d540 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5420 -> Bool ) ) ) $ ( Bool )
        d540 = if if false then d263 else d493 then ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> true ) ) ) $ ( d101 ) else if d356 then true else false
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> if true then Bool else x5450 ) ) ) $ ( if false then Bool else Bool )
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if d416 then d317 else d63 ) ) ) $ ( if false then false else false )
        d546 : if true then if false then Bool else Bool else if true then Bool else Bool
        d546 = if if false then true else d304 then if d313 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> x5470 ) ) ) $ ( true )
        d548 : ( ( Set -> Set ) ∋ ( ( λ x5510 -> ( ( Set -> Set ) ∋ ( ( λ x5520 -> if false then x5510 else Bool ) ) ) $ ( x5510 ) ) ) ) $ ( if false then Bool else Bool )
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> if d454 then x5490 else d458 ) ) ) $ ( false ) ) ) ) $ ( if d22 then d338 else d433 )
        d553 : if true then ( ( Set -> Set ) ∋ ( ( λ x5550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5560 -> Bool ) ) ) $ ( Bool )
        d553 = if if false then false else d105 then if d333 then d304 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( d308 )
        d557 : if false then if false then Bool else Bool else if false then Bool else Bool
        d557 = if if true then d87 else true then if true then false else false else if d258 then d454 else true
        d558 : if true then if true then Bool else Bool else if false then Bool else Bool
        d558 = if if true then d68 else false then if d112 then false else true else if d548 then true else false
        d559 : ( ( Set -> Set ) ∋ ( ( λ x5620 -> if true then x5620 else Bool ) ) ) $ ( if false then Bool else Bool )
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> if x5600 then d530 else d481 ) ) ) $ ( d558 ) ) ) ) $ ( if true then false else true )
        d563 : ( ( Set -> Set ) ∋ ( ( λ x5660 -> if true then x5660 else Bool ) ) ) $ ( if true then Bool else Bool )
        d563 = if ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> d372 ) ) ) $ ( d269 ) then if d481 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> false ) ) ) $ ( d400 )
        d567 : ( ( Set -> Set ) ∋ ( ( λ x5700 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d567 = if ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> d424 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> false ) ) ) $ ( d466 ) else if true then false else d243
        d571 : ( ( Set -> Set ) ∋ ( ( λ x5730 -> ( ( Set -> Set ) ∋ ( ( λ x5740 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d571 = if if false then d202 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> x5720 ) ) ) $ ( true ) else if d387 then d260 else true
        d575 : ( ( Set -> Set ) ∋ ( ( λ x5770 -> ( ( Set -> Set ) ∋ ( ( λ x5780 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> if false then true else true ) ) ) $ ( if false then true else true )
        d579 : if true then if true then Bool else Bool else if false then Bool else Bool
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> if false then d157 else x5800 ) ) ) $ ( if d132 then d65 else d375 )
        d581 : if true then ( ( Set -> Set ) ∋ ( ( λ x5820 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d581 = if if true then d500 else true then if d177 then d120 else false else if d530 then d154 else false
        d583 : ( ( Set -> Set ) ∋ ( ( λ x5870 -> ( ( Set -> Set ) ∋ ( ( λ x5880 -> if true then x5870 else x5870 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d583 = if ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> x5840 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> true ) ) ) $ ( d421 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5860 -> false ) ) ) $ ( d112 )
        d589 : if false then if true then Bool else Bool else if true then Bool else Bool
        d589 = ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> ( ( Bool -> Bool ) ∋ ( ( λ x5910 -> if x5910 then d181 else d101 ) ) ) $ ( d96 ) ) ) ) $ ( if false then d579 else true )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x5940 -> ( ( Set -> Set ) ∋ ( ( λ x5950 -> if false then x5940 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d592 = if if false then d534 else d387 then if false then d571 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> d197 ) ) ) $ ( d54 )
        d596 : if true then if false then Bool else Bool else if true then Bool else Bool
        d596 = if if false then true else d477 then ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> false ) ) ) $ ( false ) else if d493 then d442 else true
        d598 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6010 -> Bool ) ) ) $ ( Bool )
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> if false then d458 else d583 ) ) ) $ ( true ) ) ) ) $ ( if false then d575 else d50 )
        d602 : ( ( Set -> Set ) ∋ ( ( λ x6050 -> ( ( Set -> Set ) ∋ ( ( λ x6060 -> if false then Bool else Bool ) ) ) $ ( x6050 ) ) ) ) $ ( if true then Bool else Bool )
        d602 = ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> if d260 then d446 else d464 ) ) ) $ ( true ) ) ) ) $ ( if d177 then true else d424 )
        d607 : ( ( Set -> Set ) ∋ ( ( λ x6090 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> if x6080 then d583 else true ) ) ) $ ( if d216 then false else d437 )
        d610 : ( ( Set -> Set ) ∋ ( ( λ x6130 -> ( ( Set -> Set ) ∋ ( ( λ x6140 -> if false then Bool else x6140 ) ) ) $ ( x6130 ) ) ) ) $ ( if true then Bool else Bool )
        d610 = ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> if false then x6110 else x6120 ) ) ) $ ( x6110 ) ) ) ) $ ( if true then false else true )
        d615 : if false then ( ( Set -> Set ) ∋ ( ( λ x6170 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d615 = if if false then false else d429 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> x6160 ) ) ) $ ( d424 )
        d618 : ( ( Set -> Set ) ∋ ( ( λ x6200 -> ( ( Set -> Set ) ∋ ( ( λ x6210 -> if true then Bool else x6210 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> if x6190 then x6190 else x6190 ) ) ) $ ( if d530 then d219 else d22 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x6240 -> ( ( Set -> Set ) ∋ ( ( λ x6250 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> if d387 then true else false ) ) ) $ ( if true then d286 else true )
        d626 : if true then ( ( Set -> Set ) ∋ ( ( λ x6290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6300 -> x6300 ) ) ) $ ( Bool )
        d626 = if ( ( Bool -> Bool ) ∋ ( ( λ x6270 -> x6270 ) ) ) $ ( d290 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> d596 ) ) ) $ ( d424 ) else if true then true else false
        d631 : ( ( Set -> Set ) ∋ ( ( λ x6340 -> ( ( Set -> Set ) ∋ ( ( λ x6350 -> if false then x6350 else x6350 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d631 = ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> if false then d92 else x6320 ) ) ) $ ( true ) ) ) ) $ ( if d10 then false else d250 )
        d636 : if false then ( ( Set -> Set ) ∋ ( ( λ x6390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6400 -> Bool ) ) ) $ ( Bool )
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> if false then x6370 else d559 ) ) ) $ ( true ) ) ) ) $ ( if true then d105 else false )
        d641 : ( ( Set -> Set ) ∋ ( ( λ x6430 -> if true then Bool else x6430 ) ) ) $ ( if false then Bool else Bool )
        d641 = if if true then false else true then if d333 then false else d168 else ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> x6420 ) ) ) $ ( d421 )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x6470 -> ( ( Set -> Set ) ∋ ( ( λ x6480 -> if false then x6470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d644 = if ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> x6450 ) ) ) $ ( true ) then if false then d320 else false else ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> x6460 ) ) ) $ ( false )
        d649 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6510 -> Bool ) ) ) $ ( Bool )
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> if d286 then true else d269 ) ) ) $ ( if true then true else d304 )
        d652 : ( ( Set -> Set ) ∋ ( ( λ x6540 -> if false then x6540 else x6540 ) ) ) $ ( if true then Bool else Bool )
        d652 = if if false then false else false then if d26 then true else d84 else ( ( Bool -> Bool ) ∋ ( ( λ x6530 -> false ) ) ) $ ( d477 )
        d655 : ( ( Set -> Set ) ∋ ( ( λ x6570 -> ( ( Set -> Set ) ∋ ( ( λ x6580 -> if true then x6580 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d655 = if if false then d304 else d229 then ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> x6560 ) ) ) $ ( d509 ) else if true then d512 else true
        d659 : if false then ( ( Set -> Set ) ∋ ( ( λ x6600 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d659 = if if true then true else true then if false then true else true else if d553 then d115 else false
        d661 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6650 -> x6650 ) ) ) $ ( Bool )
        d661 = if ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> x6620 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> x6630 ) ) ) $ ( d192 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> x6640 ) ) ) $ ( true )
        d666 : ( ( Set -> Set ) ∋ ( ( λ x6700 -> if true then x6700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d666 = if ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> d1 ) ) ) $ ( d538 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> x6680 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( d241 )
        d671 : if false then if false then Bool else Bool else if false then Bool else Bool
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> if x6720 then false else true ) ) ) $ ( d308 ) ) ) ) $ ( if false then d241 else d39 )
        d674 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6770 -> x6770 ) ) ) $ ( Bool )
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x6750 -> ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> if false then x6750 else x6750 ) ) ) $ ( d397 ) ) ) ) $ ( if d666 then d450 else d477 )
        d678 : ( ( Set -> Set ) ∋ ( ( λ x6800 -> if true then Bool else x6800 ) ) ) $ ( if true then Bool else Bool )
        d678 = if if d655 then d333 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6790 -> x6790 ) ) ) $ ( false ) else if false then d581 else d477
        d681 : ( ( Set -> Set ) ∋ ( ( λ x6830 -> ( ( Set -> Set ) ∋ ( ( λ x6840 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d681 = if ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> false ) ) ) $ ( false ) then if false then false else d138 else if d387 then d392 else d592
        d685 : if false then if true then Bool else Bool else if true then Bool else Bool
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> if x6870 then d50 else d73 ) ) ) $ ( d641 ) ) ) ) $ ( if true then d212 else true )
        d688 : if true then if true then Bool else Bool else if true then Bool else Bool
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> if false then false else false ) ) ) $ ( d80 ) ) ) ) $ ( if false then d276 else d558 )
        d691 : if false then ( ( Set -> Set ) ∋ ( ( λ x6940 -> x6940 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6950 -> Bool ) ) ) $ ( Bool )
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> ( ( Bool -> Bool ) ∋ ( ( λ x6930 -> if true then true else true ) ) ) $ ( true ) ) ) ) $ ( if d581 then d241 else false )
        d696 : ( ( Set -> Set ) ∋ ( ( λ x6990 -> ( ( Set -> Set ) ∋ ( ( λ x7000 -> if false then x7000 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d696 = if if true then d421 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> x6970 ) ) ) $ ( d353 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6980 -> d138 ) ) ) $ ( d500 )
        d701 : if true then ( ( Set -> Set ) ∋ ( ( λ x7040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7050 -> Bool ) ) ) $ ( Bool )
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> ( ( Bool -> Bool ) ∋ ( ( λ x7030 -> if x7030 then d296 else x7020 ) ) ) $ ( x7020 ) ) ) ) $ ( if false then d424 else d421 )
        d706 : if true then ( ( Set -> Set ) ∋ ( ( λ x7090 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7100 -> x7100 ) ) ) $ ( Bool )
        d706 = ( ( Bool -> Bool ) ∋ ( ( λ x7070 -> ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> if false then d661 else true ) ) ) $ ( true ) ) ) ) $ ( if d243 then d168 else d101 )
        d711 : if false then if false then Bool else Bool else if true then Bool else Bool
        d711 = if if false then false else d269 then ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> x7120 ) ) ) $ ( d141 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> false ) ) ) $ ( true )
        d714 : ( ( Set -> Set ) ∋ ( ( λ x7160 -> ( ( Set -> Set ) ∋ ( ( λ x7170 -> if false then Bool else x7170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d714 = if if d622 then true else d481 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> false ) ) ) $ ( true )
        d718 : ( ( Set -> Set ) ∋ ( ( λ x7200 -> ( ( Set -> Set ) ∋ ( ( λ x7210 -> if false then Bool else x7200 ) ) ) $ ( x7200 ) ) ) ) $ ( if true then Bool else Bool )
        d718 = if ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> d575 ) ) ) $ ( d123 ) then if false then d607 else true else if d530 then false else false
        d722 : if true then ( ( Set -> Set ) ∋ ( ( λ x7230 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d722 = if if d296 then d222 else true then if false then d108 else d477 else if true then d509 else d225
        d724 : ( ( Set -> Set ) ∋ ( ( λ x7260 -> ( ( Set -> Set ) ∋ ( ( λ x7270 -> if true then Bool else Bool ) ) ) $ ( x7260 ) ) ) ) $ ( if true then Bool else Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> if d681 then false else x7250 ) ) ) $ ( if d649 then false else false )
        d728 : ( ( Set -> Set ) ∋ ( ( λ x7310 -> if true then x7310 else Bool ) ) ) $ ( if false then Bool else Bool )
        d728 = ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> ( ( Bool -> Bool ) ∋ ( ( λ x7300 -> if true then x7300 else d112 ) ) ) $ ( false ) ) ) ) $ ( if d375 then d706 else false )
        d732 : ( ( Set -> Set ) ∋ ( ( λ x7350 -> if false then Bool else x7350 ) ) ) $ ( if false then Bool else Bool )
        d732 = ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> ( ( Bool -> Bool ) ∋ ( ( λ x7340 -> if x7340 then x7340 else x7340 ) ) ) $ ( false ) ) ) ) $ ( if false then d123 else false )
        d736 : if true then if false then Bool else Bool else if false then Bool else Bool
        d736 = if ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> d273 ) ) ) $ ( false ) then if d567 then false else true else if d701 then true else d71
        d738 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7400 -> x7400 ) ) ) $ ( Bool )
        d738 = if if d68 then d263 else true then if d77 then d348 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7390 -> d338 ) ) ) $ ( d313 )
        d741 : ( ( Set -> Set ) ∋ ( ( λ x7440 -> ( ( Set -> Set ) ∋ ( ( λ x7450 -> if false then x7440 else x7450 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d741 = if ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> d22 ) ) ) $ ( false ) else if false then true else false
        d746 : if true then if true then Bool else Bool else if false then Bool else Bool
        d746 = if if false then false else d655 then ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> false ) ) ) $ ( false ) else if d437 then false else d206
        d748 : ( ( Set -> Set ) ∋ ( ( λ x7510 -> if false then x7510 else x7510 ) ) ) $ ( if false then Bool else Bool )
        d748 = if if false then d681 else d54 then ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> d429 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> x7500 ) ) ) $ ( false )
        d752 : if true then ( ( Set -> Set ) ∋ ( ( λ x7550 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d752 = if ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> d360 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> d728 ) ) ) $ ( d464 ) else if true then true else true
        d756 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7580 -> x7580 ) ) ) $ ( Bool )
        d756 = if ( ( Bool -> Bool ) ∋ ( ( λ x7570 -> x7570 ) ) ) $ ( d77 ) then if true then d652 else d141 else if d108 then true else true
        d759 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7620 -> Bool ) ) ) $ ( Bool )
        d759 = if ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> d77 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7610 -> d71 ) ) ) $ ( true ) else if d474 then d504 else false
        d763 : ( ( Set -> Set ) ∋ ( ( λ x7650 -> ( ( Set -> Set ) ∋ ( ( λ x7660 -> if true then x7660 else Bool ) ) ) $ ( x7650 ) ) ) ) $ ( if false then Bool else Bool )
        d763 = ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> if x7640 then d649 else true ) ) ) $ ( if false then d598 else d219 )
        d767 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7690 -> Bool ) ) ) $ ( Bool )
        d767 = ( ( Bool -> Bool ) ∋ ( ( λ x7680 -> if true then x7680 else d530 ) ) ) $ ( if d189 then true else d73 )
        d770 : ( ( Set -> Set ) ∋ ( ( λ x7730 -> if true then x7730 else x7730 ) ) ) $ ( if false then Bool else Bool )
        d770 = if if d497 then true else d636 then ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> d154 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7720 -> d685 ) ) ) $ ( true )
        d774 : ( ( Set -> Set ) ∋ ( ( λ x7780 -> ( ( Set -> Set ) ∋ ( ( λ x7790 -> if false then x7780 else x7780 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d774 = if ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7760 -> d59 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7770 -> x7770 ) ) ) $ ( d530 )
        d780 : ( ( Set -> Set ) ∋ ( ( λ x7830 -> ( ( Set -> Set ) ∋ ( ( λ x7840 -> if true then Bool else x7840 ) ) ) $ ( x7830 ) ) ) ) $ ( if true then Bool else Bool )
        d780 = ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> if d724 then d127 else x7810 ) ) ) $ ( d649 ) ) ) ) $ ( if d486 then false else false )
        d785 : ( ( Set -> Set ) ∋ ( ( λ x7870 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d785 = ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> if x7860 then d706 else d112 ) ) ) $ ( if d460 then d281 else false )
        d788 : ( ( Set -> Set ) ∋ ( ( λ x7890 -> if false then x7890 else x7890 ) ) ) $ ( if true then Bool else Bool )
        d788 = if if false then false else false then if d219 then true else true else if d132 then d387 else true
        d790 : ( ( Set -> Set ) ∋ ( ( λ x7920 -> if false then x7920 else x7920 ) ) ) $ ( if true then Bool else Bool )
        d790 = ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> if x7910 then d65 else x7910 ) ) ) $ ( if true then d655 else d63 )
        d793 : if false then ( ( Set -> Set ) ∋ ( ( λ x7960 -> x7960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7970 -> Bool ) ) ) $ ( Bool )
        d793 = ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> if true then d770 else true ) ) ) $ ( false ) ) ) ) $ ( if false then d77 else d59 )
        d798 : if true then ( ( Set -> Set ) ∋ ( ( λ x8000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d798 = if if false then d108 else d421 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> x7990 ) ) ) $ ( d644 )
        d801 : if false then if false then Bool else Bool else if true then Bool else Bool
        d801 = if ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> true ) ) ) $ ( true ) then if d598 then d258 else d671 else if false then true else d353
        d803 : if true then if false then Bool else Bool else if true then Bool else Bool
        d803 = ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> ( ( Bool -> Bool ) ∋ ( ( λ x8050 -> if x8050 then false else false ) ) ) $ ( d411 ) ) ) ) $ ( if d365 then true else true )
        d806 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8090 -> Bool ) ) ) $ ( Bool )
        d806 = if ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> true ) ) ) $ ( d154 ) then if true then false else d115 else ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> false ) ) ) $ ( d276 )
        d810 : if false then if true then Bool else Bool else if true then Bool else Bool
        d810 = ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> ( ( Bool -> Bool ) ∋ ( ( λ x8120 -> if x8110 then d403 else false ) ) ) $ ( d641 ) ) ) ) $ ( if true then true else false )
        d813 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8150 -> Bool ) ) ) $ ( Bool )
        d813 = ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> if true then false else true ) ) ) $ ( if false then d351 else d666 )
        d816 : ( ( Set -> Set ) ∋ ( ( λ x8190 -> ( ( Set -> Set ) ∋ ( ( λ x8200 -> if false then x8200 else Bool ) ) ) $ ( x8190 ) ) ) ) $ ( if true then Bool else Bool )
        d816 = ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> if false then x8180 else d557 ) ) ) $ ( x8170 ) ) ) ) $ ( if false then d50 else d592 )
        d821 : ( ( Set -> Set ) ∋ ( ( λ x8250 -> if true then x8250 else Bool ) ) ) $ ( if false then Bool else Bool )
        d821 = if ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> x8220 ) ) ) $ ( d115 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> d84 ) ) ) $ ( d559 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> d372 ) ) ) $ ( d219 )
        d826 : ( ( Set -> Set ) ∋ ( ( λ x8290 -> if false then x8290 else x8290 ) ) ) $ ( if true then Bool else Bool )
        d826 = ( ( Bool -> Bool ) ∋ ( ( λ x8270 -> ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> if true then d184 else x8280 ) ) ) $ ( x8270 ) ) ) ) $ ( if d13 then true else false )
        d830 : ( ( Set -> Set ) ∋ ( ( λ x8330 -> if false then x8330 else Bool ) ) ) $ ( if false then Bool else Bool )
        d830 = ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if true then x8320 else true ) ) ) $ ( x8310 ) ) ) ) $ ( if d387 then true else true )
        d834 : ( ( Set -> Set ) ∋ ( ( λ x8370 -> if false then x8370 else x8370 ) ) ) $ ( if true then Bool else Bool )
        d834 = ( ( Bool -> Bool ) ∋ ( ( λ x8350 -> ( ( Bool -> Bool ) ∋ ( ( λ x8360 -> if x8350 then d674 else d63 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d290 )
        d838 : ( ( Set -> Set ) ∋ ( ( λ x8400 -> if false then Bool else x8400 ) ) ) $ ( if false then Bool else Bool )
        d838 = ( ( Bool -> Bool ) ∋ ( ( λ x8390 -> if d356 then d22 else false ) ) ) $ ( if d225 then d540 else true )
        d841 : ( ( Set -> Set ) ∋ ( ( λ x8430 -> if false then x8430 else Bool ) ) ) $ ( if false then Bool else Bool )
        d841 = ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> if false then d10 else true ) ) ) $ ( if d641 then d290 else d641 )
        d844 : ( ( Set -> Set ) ∋ ( ( λ x8470 -> if false then Bool else x8470 ) ) ) $ ( if true then Bool else Bool )
        d844 = ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> if false then true else d92 ) ) ) $ ( x8450 ) ) ) ) $ ( if d397 then d424 else true )
        d848 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8500 -> x8500 ) ) ) $ ( Bool )
        d848 = if if true then d509 else d841 then ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> true ) ) ) $ ( d785 ) else if false then false else d678
        d851 : ( ( Set -> Set ) ∋ ( ( λ x8530 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x8520 -> if true then d442 else d816 ) ) ) $ ( if true then d530 else true )
        d854 : if true then if false then Bool else Bool else if false then Bool else Bool
        d854 = ( ( Bool -> Bool ) ∋ ( ( λ x8550 -> ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> if true then d728 else true ) ) ) $ ( x8550 ) ) ) ) $ ( if d260 then d286 else d652 )
        d857 : if false then if false then Bool else Bool else if false then Bool else Bool
        d857 = ( ( Bool -> Bool ) ∋ ( ( λ x8580 -> ( ( Bool -> Bool ) ∋ ( ( λ x8590 -> if d816 then x8590 else false ) ) ) $ ( x8580 ) ) ) ) $ ( if false then true else true )
        d860 : ( ( Set -> Set ) ∋ ( ( λ x8630 -> if false then Bool else x8630 ) ) ) $ ( if false then Bool else Bool )
        d860 = if if true then d35 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> x8610 ) ) ) $ ( d826 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8620 -> x8620 ) ) ) $ ( d301 )
        d864 : if false then ( ( Set -> Set ) ∋ ( ( λ x8660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8670 -> Bool ) ) ) $ ( Bool )
        d864 = if if false then d301 else d202 then ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> x8650 ) ) ) $ ( true ) else if d464 then true else true
        d868 : if true then ( ( Set -> Set ) ∋ ( ( λ x8710 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d868 = ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> ( ( Bool -> Bool ) ∋ ( ( λ x8700 -> if false then true else d610 ) ) ) $ ( d780 ) ) ) ) $ ( if d13 then d112 else d39 )
        d872 : ( ( Set -> Set ) ∋ ( ( λ x8740 -> if true then x8740 else Bool ) ) ) $ ( if false then Bool else Bool )
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x8730 -> if false then d618 else false ) ) ) $ ( if d276 then d73 else false )
        d875 : if true then if false then Bool else Bool else if true then Bool else Bool
        d875 = if if true then d558 else d54 then ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> d353 ) ) ) $ ( d138 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> true ) ) ) $ ( d780 )
        d878 : if true then if false then Bool else Bool else if false then Bool else Bool
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x8790 -> ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> if x8790 then x8790 else x8800 ) ) ) $ ( x8790 ) ) ) ) $ ( if d681 then true else false )
        d881 : ( ( Set -> Set ) ∋ ( ( λ x8840 -> ( ( Set -> Set ) ∋ ( ( λ x8850 -> if true then Bool else Bool ) ) ) $ ( x8840 ) ) ) ) $ ( if true then Bool else Bool )
        d881 = if ( ( Bool -> Bool ) ∋ ( ( λ x8820 -> d649 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8830 -> false ) ) ) $ ( true ) else if false then d63 else d375
        d886 : if false then if true then Bool else Bool else if true then Bool else Bool
        d886 = if ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> d343 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( d108 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8890 -> false ) ) ) $ ( false )
        d890 : ( ( Set -> Set ) ∋ ( ( λ x8920 -> if true then x8920 else Bool ) ) ) $ ( if false then Bool else Bool )
        d890 = ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> if x8910 then x8910 else d732 ) ) ) $ ( if d678 then false else false )
        d893 : ( ( Set -> Set ) ∋ ( ( λ x8950 -> ( ( Set -> Set ) ∋ ( ( λ x8960 -> if true then Bool else x8950 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d893 = if if false then d878 else d504 then ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> x8940 ) ) ) $ ( true ) else if d108 then d63 else d688
        d897 : ( ( Set -> Set ) ∋ ( ( λ x9000 -> ( ( Set -> Set ) ∋ ( ( λ x9010 -> if true then x9010 else Bool ) ) ) $ ( x9000 ) ) ) ) $ ( if false then Bool else Bool )
        d897 = if ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> x8980 ) ) ) $ ( d189 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> x8990 ) ) ) $ ( false ) else if true then true else d382
        d902 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( Bool )
        d902 = if if false then true else d254 then ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> d31 ) ) ) $ ( d416 ) else if d872 then d343 else d706
        d905 : ( ( Set -> Set ) ∋ ( ( λ x9080 -> ( ( Set -> Set ) ∋ ( ( λ x9090 -> if true then Bool else x9080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d905 = ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> if d392 then x9070 else true ) ) ) $ ( d254 ) ) ) ) $ ( if false then false else d80 )
        d910 : if false then ( ( Set -> Set ) ∋ ( ( λ x9120 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d910 = ( ( Bool -> Bool ) ∋ ( ( λ x9110 -> if x9110 then d360 else x9110 ) ) ) $ ( if d671 then true else false )
        d913 : if true then ( ( Set -> Set ) ∋ ( ( λ x9150 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9160 -> x9160 ) ) ) $ ( Bool )
        d913 = ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> if false then true else false ) ) ) $ ( if d674 then d688 else false )
        d917 : if false then ( ( Set -> Set ) ∋ ( ( λ x9190 -> x9190 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x9180 -> if true then x9180 else x9180 ) ) ) $ ( if d10 then d105 else true )
        d920 : ( ( Set -> Set ) ∋ ( ( λ x9220 -> ( ( Set -> Set ) ∋ ( ( λ x9230 -> if false then x9230 else Bool ) ) ) $ ( x9220 ) ) ) ) $ ( if false then Bool else Bool )
        d920 = ( ( Bool -> Bool ) ∋ ( ( λ x9210 -> if x9210 then x9210 else x9210 ) ) ) $ ( if true then d237 else true )
        d924 : ( ( Set -> Set ) ∋ ( ( λ x9270 -> ( ( Set -> Set ) ∋ ( ( λ x9280 -> if false then x9270 else x9280 ) ) ) $ ( x9270 ) ) ) ) $ ( if false then Bool else Bool )
        d924 = ( ( Bool -> Bool ) ∋ ( ( λ x9250 -> ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> if x9250 then d810 else x9250 ) ) ) $ ( false ) ) ) ) $ ( if d493 then d801 else true )
        d929 : if false then ( ( Set -> Set ) ∋ ( ( λ x9310 -> x9310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9320 -> x9320 ) ) ) $ ( Bool )
        d929 = ( ( Bool -> Bool ) ∋ ( ( λ x9300 -> if false then x9300 else false ) ) ) $ ( if false then true else false )
        d933 : if false then ( ( Set -> Set ) ∋ ( ( λ x9350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9360 -> x9360 ) ) ) $ ( Bool )
        d933 = if ( ( Bool -> Bool ) ∋ ( ( λ x9340 -> true ) ) ) $ ( d59 ) then if d897 then false else d893 else if true then true else false
        d937 : if true then if false then Bool else Bool else if false then Bool else Bool
        d937 = ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> if x9380 then d68 else x9380 ) ) ) $ ( if true then d671 else d714 )
        d939 : if false then if false then Bool else Bool else if true then Bool else Bool
        d939 = if ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> false ) ) ) $ ( false ) then if false then d748 else d360 else ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> x9410 ) ) ) $ ( d875 )
        d942 : if true then ( ( Set -> Set ) ∋ ( ( λ x9450 -> x9450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9460 -> x9460 ) ) ) $ ( Bool )
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x9430 -> ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> if false then x9440 else false ) ) ) $ ( false ) ) ) ) $ ( if d929 then false else d77 )
        d947 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9490 -> Bool ) ) ) $ ( Bool )
        d947 = ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> if false then x9480 else true ) ) ) $ ( if true then true else true )
        d950 : if true then if false then Bool else Bool else if true then Bool else Bool
        d950 = ( ( Bool -> Bool ) ∋ ( ( λ x9510 -> ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> if true then true else true ) ) ) $ ( d429 ) ) ) ) $ ( if true then false else d636 )
        d953 : ( ( Set -> Set ) ∋ ( ( λ x9570 -> if true then Bool else x9570 ) ) ) $ ( if false then Bool else Bool )
        d953 = if ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> d65 ) ) ) $ ( d254 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> d575 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9560 -> false ) ) ) $ ( false )
        d958 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9620 -> Bool ) ) ) $ ( Bool )
        d958 = if ( ( Bool -> Bool ) ∋ ( ( λ x9590 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9600 -> x9600 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> x9610 ) ) ) $ ( false )
        d963 : if true then ( ( Set -> Set ) ∋ ( ( λ x9660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9670 -> x9670 ) ) ) $ ( Bool )
        d963 = if if d108 then d181 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> x9640 ) ) ) $ ( d826 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> false ) ) ) $ ( true )
        d968 : if false then if false then Bool else Bool else if false then Bool else Bool
        d968 = if if false then d671 else d229 then ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> false ) ) ) $ ( d219 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> false ) ) ) $ ( true )
        d971 : if false then ( ( Set -> Set ) ∋ ( ( λ x9730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9740 -> x9740 ) ) ) $ ( Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> if false then d1 else true ) ) ) $ ( if d225 then d10 else d403 )
        d975 : if false then if true then Bool else Bool else if true then Bool else Bool
        d975 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> x9760 ) ) ) $ ( true ) else if true then true else false
        d977 : if false then ( ( Set -> Set ) ∋ ( ( λ x9800 -> x9800 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d977 = ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> if d375 then d810 else x9790 ) ) ) $ ( d286 ) ) ) ) $ ( if true then true else d958 )
        d981 : ( ( Set -> Set ) ∋ ( ( λ x9840 -> ( ( Set -> Set ) ∋ ( ( λ x9850 -> if false then x9850 else x9840 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d981 = if ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> true ) ) ) $ ( d181 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> false ) ) ) $ ( d958 ) else if false then true else d165
        d986 : ( ( Set -> Set ) ∋ ( ( λ x9890 -> if true then Bool else x9890 ) ) ) $ ( if true then Bool else Bool )
        d986 = ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> if true then x9870 else x9880 ) ) ) $ ( x9870 ) ) ) ) $ ( if true then true else true )
        d990 : ( ( Set -> Set ) ∋ ( ( λ x9920 -> if false then x9920 else x9920 ) ) ) $ ( if false then Bool else Bool )
        d990 = if if d724 then true else d59 then if true then d466 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9910 -> d790 ) ) ) $ ( d557 )
        d993 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9960 -> Bool ) ) ) $ ( Bool )
        d993 = if ( ( Bool -> Bool ) ∋ ( ( λ x9940 -> x9940 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> d197 ) ) ) $ ( d112 ) else if d518 then false else d157
        d997 : ( ( Set -> Set ) ∋ ( ( λ x9980 -> if false then x9980 else x9980 ) ) ) $ ( if false then Bool else Bool )
        d997 = if if d22 then d50 else false then if true then true else d154 else if true then d490 else d602
        d999 : ( ( Set -> Set ) ∋ ( ( λ x10010 -> if false then x10010 else x10010 ) ) ) $ ( if false then Bool else Bool )
        d999 = if if d115 then d583 else false then if true then d73 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10000 -> false ) ) ) $ ( d661 )
        d1002 : ( ( Set -> Set ) ∋ ( ( λ x10040 -> ( ( Set -> Set ) ∋ ( ( λ x10050 -> if false then Bool else x10040 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1002 = if if d738 then d348 else false then ( ( Bool -> Bool ) ∋ ( ( λ x10030 -> true ) ) ) $ ( true ) else if d454 then true else false
        d1006 : ( ( Set -> Set ) ∋ ( ( λ x10090 -> if false then x10090 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1006 = ( ( Bool -> Bool ) ∋ ( ( λ x10070 -> ( ( Bool -> Bool ) ∋ ( ( λ x10080 -> if x10070 then d477 else d706 ) ) ) $ ( true ) ) ) ) $ ( if d411 then false else d222 )
        d1010 : if false then ( ( Set -> Set ) ∋ ( ( λ x10120 -> x10120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10130 -> Bool ) ) ) $ ( Bool )
        d1010 = ( ( Bool -> Bool ) ∋ ( ( λ x10110 -> if x10110 then false else x10110 ) ) ) $ ( if true then true else false )
        d1014 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10150 -> x10150 ) ) ) $ ( Bool )
        d1014 = if if false then d748 else d10 then if false then d732 else d746 else if d860 then false else true
        d1016 : if true then ( ( Set -> Set ) ∋ ( ( λ x10190 -> x10190 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1016 = ( ( Bool -> Bool ) ∋ ( ( λ x10170 -> ( ( Bool -> Bool ) ∋ ( ( λ x10180 -> if d736 then x10180 else false ) ) ) $ ( x10170 ) ) ) ) $ ( if d470 then d375 else false )
        d1020 : ( ( Set -> Set ) ∋ ( ( λ x10220 -> ( ( Set -> Set ) ∋ ( ( λ x10230 -> if true then Bool else x10220 ) ) ) $ ( x10220 ) ) ) ) $ ( if true then Bool else Bool )
        d1020 = ( ( Bool -> Bool ) ∋ ( ( λ x10210 -> if d123 then x10210 else d897 ) ) ) $ ( if d31 then true else true )
        d1024 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1024 = ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> if d84 then x10250 else d1 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d826 )
        d1027 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1027 = ( ( Bool -> Bool ) ∋ ( ( λ x10280 -> ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> if d115 then x10290 else x10280 ) ) ) $ ( d421 ) ) ) ) $ ( if d674 then d403 else true )
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x10320 -> if false then x10320 else x10320 ) ) ) $ ( if true then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> if x10310 then d553 else x10310 ) ) ) $ ( if true then false else false )
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x10360 -> if false then x10360 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1033 = ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if d838 then d711 else d458 ) ) ) $ ( d1030 ) ) ) ) $ ( if d406 then false else false )
        d1037 : if true then ( ( Set -> Set ) ∋ ( ( λ x10380 -> x10380 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1037 = if if false then d579 else d68 then if false then d1006 else true else if false then false else false
        d1039 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> if false then x10430 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1039 = if ( ( Bool -> Bool ) ∋ ( ( λ x10400 -> x10400 ) ) ) $ ( d563 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> x10420 ) ) ) $ ( true )
        d1044 : if false then ( ( Set -> Set ) ∋ ( ( λ x10470 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10480 -> Bool ) ) ) $ ( Bool )
        d1044 = ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> if d830 then false else x10460 ) ) ) $ ( d22 ) ) ) ) $ ( if d641 then false else d830 )
        d1049 : ( ( Set -> Set ) ∋ ( ( λ x10510 -> ( ( Set -> Set ) ∋ ( ( λ x10520 -> if true then x10520 else x10510 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1049 = if if d497 then false else true then if d276 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> d317 ) ) ) $ ( d581 )
        d1053 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10560 -> Bool ) ) ) $ ( Bool )
        d1053 = if ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> d615 ) ) ) $ ( d920 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> false ) ) ) $ ( d860 ) else if d296 then d793 else d77
        d1057 : if true then ( ( Set -> Set ) ∋ ( ( λ x10600 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1057 = if ( ( Bool -> Bool ) ∋ ( ( λ x10580 -> d649 ) ) ) $ ( d233 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> d581 ) ) ) $ ( d500 ) else if true then d806 else false
        d1061 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1061 = ( ( Bool -> Bool ) ∋ ( ( λ x10620 -> ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> if false then d868 else x10620 ) ) ) $ ( x10620 ) ) ) ) $ ( if true then d618 else true )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x10670 -> if false then x10670 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1064 = ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> ( ( Bool -> Bool ) ∋ ( ( λ x10660 -> if true then x10650 else d607 ) ) ) $ ( false ) ) ) ) $ ( if false then d706 else true )
        d1068 : if false then ( ( Set -> Set ) ∋ ( ( λ x10700 -> x10700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10710 -> Bool ) ) ) $ ( Bool )
        d1068 = if ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> d821 ) ) ) $ ( true ) then if d626 then false else d258 else if d881 then d273 else d920
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x10750 -> if true then x10750 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1072 = if if d518 then true else d403 then ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10740 -> d841 ) ) ) $ ( d360 )
        d1076 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1076 = if ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> x10780 ) ) ) $ ( d763 ) else if d746 then d96 else true
        d1079 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1079 = if if false then d481 else d68 then ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> true ) ) ) $ ( d73 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> x10810 ) ) ) $ ( d997 )
        d1082 : if false then ( ( Set -> Set ) ∋ ( ( λ x10830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10840 -> Bool ) ) ) $ ( Bool )
        d1082 = if if d997 then false else d189 then if false then d592 else false else if false then false else d905
        d1085 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1085 = if ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10870 -> x10870 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> d387 ) ) ) $ ( false )
        d1089 : ( ( Set -> Set ) ∋ ( ( λ x10910 -> if true then x10910 else x10910 ) ) ) $ ( if true then Bool else Bool )
        d1089 = ( ( Bool -> Bool ) ∋ ( ( λ x10900 -> if d671 then true else true ) ) ) $ ( if true then true else true )
        d1092 : if true then ( ( Set -> Set ) ∋ ( ( λ x10950 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1092 = ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> if d304 then d557 else x10930 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d1096 : ( ( Set -> Set ) ∋ ( ( λ x10990 -> ( ( Set -> Set ) ∋ ( ( λ x11000 -> if true then Bool else x10990 ) ) ) $ ( x10990 ) ) ) ) $ ( if true then Bool else Bool )
        d1096 = ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> if true then d429 else d446 ) ) ) $ ( false ) ) ) ) $ ( if false then d1049 else d897 )
        d1101 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11040 -> x11040 ) ) ) $ ( Bool )
        d1101 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> x11020 ) ) ) $ ( d997 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11030 -> x11030 ) ) ) $ ( true )
        d1105 : ( ( Set -> Set ) ∋ ( ( λ x11080 -> if true then x11080 else x11080 ) ) ) $ ( if true then Bool else Bool )
        d1105 = if ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> x11060 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> d947 ) ) ) $ ( d548 ) else if true then d659 else d890
        d1109 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1109 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> d181 ) ) ) $ ( d108 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> false ) ) ) $ ( false )
        d1112 : ( ( Set -> Set ) ∋ ( ( λ x11150 -> ( ( Set -> Set ) ∋ ( ( λ x11160 -> if true then x11150 else Bool ) ) ) $ ( x11150 ) ) ) ) $ ( if true then Bool else Bool )
        d1112 = ( ( Bool -> Bool ) ∋ ( ( λ x11130 -> ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> if d520 then true else d1061 ) ) ) $ ( true ) ) ) ) $ ( if d1044 then true else d123 )
        d1117 : ( ( Set -> Set ) ∋ ( ( λ x11200 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1117 = if ( ( Bool -> Bool ) ∋ ( ( λ x11180 -> x11180 ) ) ) $ ( true ) then if false then d450 else false else ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> true ) ) ) $ ( true )
        d1121 : ( ( Set -> Set ) ∋ ( ( λ x11240 -> ( ( Set -> Set ) ∋ ( ( λ x11250 -> if false then x11250 else x11250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1121 = ( ( Bool -> Bool ) ∋ ( ( λ x11220 -> ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> if false then false else x11230 ) ) ) $ ( x11220 ) ) ) ) $ ( if d1076 then false else d881 )
        d1126 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1126 = ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> if false then true else x11270 ) ) ) $ ( d910 ) ) ) ) $ ( if d497 then false else d141 )
        d1129 : ( ( Set -> Set ) ∋ ( ( λ x11320 -> ( ( Set -> Set ) ∋ ( ( λ x11330 -> if true then x11320 else x11320 ) ) ) $ ( x11320 ) ) ) ) $ ( if true then Bool else Bool )
        d1129 = ( ( Bool -> Bool ) ∋ ( ( λ x11300 -> ( ( Bool -> Bool ) ∋ ( ( λ x11310 -> if true then x11300 else false ) ) ) $ ( false ) ) ) ) $ ( if d372 then true else false )
        d1134 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11360 -> x11360 ) ) ) $ ( Bool )
        d1134 = ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> if x11350 then d450 else true ) ) ) $ ( if true then d834 else d767 )
        d1137 : ( ( Set -> Set ) ∋ ( ( λ x11400 -> ( ( Set -> Set ) ∋ ( ( λ x11410 -> if false then Bool else Bool ) ) ) $ ( x11400 ) ) ) ) $ ( if false then Bool else Bool )
        d1137 = if ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11390 -> d596 ) ) ) $ ( d893 ) else if false then true else true
        d1142 : if false then ( ( Set -> Set ) ∋ ( ( λ x11440 -> x11440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11450 -> Bool ) ) ) $ ( Bool )
        d1142 = if ( ( Bool -> Bool ) ∋ ( ( λ x11430 -> x11430 ) ) ) $ ( false ) then if true then true else d50 else if d821 then false else d659
        d1146 : ( ( Set -> Set ) ∋ ( ( λ x11490 -> ( ( Set -> Set ) ∋ ( ( λ x11500 -> if false then Bool else x11490 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1146 = ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> if x11480 then d810 else false ) ) ) $ ( false ) ) ) ) $ ( if d981 then false else d290 )
        d1151 : if false then ( ( Set -> Set ) ∋ ( ( λ x11520 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1151 = if if false then true else false then if d678 then d924 else true else if false then d16 else d929
        d1153 : if false then ( ( Set -> Set ) ∋ ( ( λ x11550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11560 -> Bool ) ) ) $ ( Bool )
        d1153 = ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> if x11540 then d718 else true ) ) ) $ ( if true then false else d329 )
        d1157 : ( ( Set -> Set ) ∋ ( ( λ x11590 -> ( ( Set -> Set ) ∋ ( ( λ x11600 -> if true then x11600 else x11600 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1157 = ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> if x11580 then d108 else true ) ) ) $ ( if d767 then false else true )
        d1161 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11630 -> Bool ) ) ) $ ( Bool )
        d1161 = if if true then true else d678 then ( ( Bool -> Bool ) ∋ ( ( λ x11620 -> true ) ) ) $ ( d108 ) else if d433 then true else d22
        d1164 : if false then ( ( Set -> Set ) ∋ ( ( λ x11660 -> x11660 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1164 = ( ( Bool -> Bool ) ∋ ( ( λ x11650 -> if d1089 then d1033 else true ) ) ) $ ( if d22 then d348 else d424 )
        d1167 : if true then ( ( Set -> Set ) ∋ ( ( λ x11680 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1167 = if if d813 then d1164 else d581 then if d1006 then false else d1024 else if d154 then d1153 else false
        d1169 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1169 = if if true then d202 else false then if true then false else d622 else if d446 then d581 else d1121
        d1170 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1170 = if if d790 then false else false then if false then d216 else d141 else if d806 then true else d596
        d1171 : ( ( Set -> Set ) ∋ ( ( λ x11730 -> if false then x11730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1171 = if ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> false ) ) ) $ ( true ) then if true then d1006 else d254 else if true then d1010 else true
        d1174 : if false then ( ( Set -> Set ) ∋ ( ( λ x11770 -> x11770 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1174 = ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> if d652 then d567 else true ) ) ) $ ( x11750 ) ) ) ) $ ( if d351 then d382 else true )
        d1178 : ( ( Set -> Set ) ∋ ( ( λ x11810 -> if true then Bool else x11810 ) ) ) $ ( if true then Bool else Bool )
        d1178 = if ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> true ) ) ) $ ( d790 ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> true ) ) ) $ ( true )
        d1182 : ( ( Set -> Set ) ∋ ( ( λ x11860 -> if true then Bool else x11860 ) ) ) $ ( if false then Bool else Bool )
        d1182 = if ( ( Bool -> Bool ) ∋ ( ( λ x11830 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> false ) ) ) $ ( d406 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> true ) ) ) $ ( d886 )
        d1187 : if true then ( ( Set -> Set ) ∋ ( ( λ x11890 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1187 = ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> if false then x11880 else x11880 ) ) ) $ ( if d711 then false else false )
        d1190 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11930 -> Bool ) ) ) $ ( Bool )
        d1190 = ( ( Bool -> Bool ) ∋ ( ( λ x11910 -> ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> if x11920 then x11910 else d631 ) ) ) $ ( false ) ) ) ) $ ( if d301 then d939 else d631 )
        d1194 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1194 = ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> if false then x11950 else d1137 ) ) ) $ ( if false then d548 else false )
        d1196 : ( ( Set -> Set ) ∋ ( ( λ x11980 -> ( ( Set -> Set ) ∋ ( ( λ x11990 -> if true then x11980 else Bool ) ) ) $ ( x11980 ) ) ) ) $ ( if false then Bool else Bool )
        d1196 = ( ( Bool -> Bool ) ∋ ( ( λ x11970 -> if d534 then x11970 else x11970 ) ) ) $ ( if d543 then false else d518 )
        d1200 : ( ( Set -> Set ) ∋ ( ( λ x12030 -> ( ( Set -> Set ) ∋ ( ( λ x12040 -> if true then Bool else Bool ) ) ) $ ( x12030 ) ) ) ) $ ( if true then Bool else Bool )
        d1200 = if ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> false ) ) ) $ ( false ) then if d878 then d16 else d530 else ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> d123 ) ) ) $ ( d39 )
        d1205 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1205 = ( ( Bool -> Bool ) ∋ ( ( λ x12060 -> if true then x12060 else x12060 ) ) ) $ ( if false then true else d1194 )
        d1207 : ( ( Set -> Set ) ∋ ( ( λ x12100 -> ( ( Set -> Set ) ∋ ( ( λ x12110 -> if false then Bool else x12100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1207 = ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> ( ( Bool -> Bool ) ∋ ( ( λ x12090 -> if false then false else true ) ) ) $ ( true ) ) ) ) $ ( if true then false else d963 )
        d1212 : ( ( Set -> Set ) ∋ ( ( λ x12150 -> if false then x12150 else x12150 ) ) ) $ ( if false then Bool else Bool )
        d1212 = ( ( Bool -> Bool ) ∋ ( ( λ x12130 -> ( ( Bool -> Bool ) ∋ ( ( λ x12140 -> if x12140 then x12130 else d942 ) ) ) $ ( x12130 ) ) ) ) $ ( if d997 then d661 else true )
        d1216 : ( ( Set -> Set ) ∋ ( ( λ x12180 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1216 = ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> if d830 then x12170 else true ) ) ) $ ( if d803 then d470 else true )
        d1219 : if false then ( ( Set -> Set ) ∋ ( ( λ x12230 -> x12230 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1219 = if ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> d429 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> d10 ) ) ) $ ( d1082 )
        d1224 : ( ( Set -> Set ) ∋ ( ( λ x12260 -> if false then x12260 else x12260 ) ) ) $ ( if false then Bool else Bool )
        d1224 = ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> if x12250 then x12250 else d490 ) ) ) $ ( if false then d490 else true )
        d1227 : if true then ( ( Set -> Set ) ∋ ( ( λ x12290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12300 -> Bool ) ) ) $ ( Bool )
        d1227 = ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> if d105 then false else d378 ) ) ) $ ( if d674 then d112 else false )
        d1231 : ( ( Set -> Set ) ∋ ( ( λ x12340 -> if true then x12340 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1231 = ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> if d460 then d192 else x12330 ) ) ) $ ( x12320 ) ) ) ) $ ( if true then false else d538 )
        d1235 : if false then ( ( Set -> Set ) ∋ ( ( λ x12370 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1235 = if ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> false ) ) ) $ ( false ) then if d780 then d1020 else false else if d1190 then d1164 else d671
        d1238 : if false then ( ( Set -> Set ) ∋ ( ( λ x12410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12420 -> Bool ) ) ) $ ( Bool )
        d1238 = if ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> d263 ) ) ) $ ( d872 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> false ) ) ) $ ( d65 ) else if d1182 then false else true
        d1243 : ( ( Set -> Set ) ∋ ( ( λ x12450 -> if false then x12450 else x12450 ) ) ) $ ( if false then Bool else Bool )
        d1243 = ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> if d770 then false else true ) ) ) $ ( if false then true else d622 )
        d1246 : ( ( Set -> Set ) ∋ ( ( λ x12480 -> if true then x12480 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1246 = if if d206 then d237 else d920 then if d1061 then d45 else d470 else ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> true ) ) ) $ ( d490 )
        d1249 : ( ( Set -> Set ) ∋ ( ( λ x12520 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1249 = ( ( Bool -> Bool ) ∋ ( ( λ x12500 -> ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> if x12500 then d752 else false ) ) ) $ ( false ) ) ) ) $ ( if true then false else d1061 )
        d1253 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1253 = ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> if true then x12540 else false ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d1256 : ( ( Set -> Set ) ∋ ( ( λ x12590 -> ( ( Set -> Set ) ∋ ( ( λ x12600 -> if true then Bool else x12590 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1256 = if ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> false ) ) ) $ ( d96 ) then if true then d890 else d68 else ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> true ) ) ) $ ( false )
        d1261 : if true then ( ( Set -> Set ) ∋ ( ( λ x12640 -> x12640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1261 = if ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> d442 ) ) ) $ ( false ) then if d317 then false else d834 else ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> x12630 ) ) ) $ ( true )
        d1265 : ( ( Set -> Set ) ∋ ( ( λ x12680 -> if false then Bool else x12680 ) ) ) $ ( if true then Bool else Bool )
        d1265 = if ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> x12660 ) ) ) $ ( d243 ) then if d1182 then false else d1053 else ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> true ) ) ) $ ( d1161 )
        d1269 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12730 -> Bool ) ) ) $ ( Bool )
        d1269 = if ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> d1092 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> x12710 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12720 -> d1216 ) ) ) $ ( false )
        d1274 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12760 -> Bool ) ) ) $ ( Bool )
        d1274 = if ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> d1126 ) ) ) $ ( true ) then if true then false else d474 else if d1170 then d273 else false
        d1277 : ( ( Set -> Set ) ∋ ( ( λ x12780 -> if true then x12780 else x12780 ) ) ) $ ( if false then Bool else Bool )
        d1277 = if if d73 then d1216 else true then if d1151 then true else d826 else if d1076 then d581 else d1061
        d1279 : ( ( Set -> Set ) ∋ ( ( λ x12810 -> ( ( Set -> Set ) ∋ ( ( λ x12820 -> if false then Bool else Bool ) ) ) $ ( x12810 ) ) ) ) $ ( if true then Bool else Bool )
        d1279 = if ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> d356 ) ) ) $ ( d433 ) then if d649 then d626 else d1002 else if d681 then d437 else false
        d1283 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12860 -> Bool ) ) ) $ ( Bool )
        d1283 = ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> ( ( Bool -> Bool ) ∋ ( ( λ x12850 -> if d80 then d454 else x12840 ) ) ) $ ( true ) ) ) ) $ ( if true then d1053 else true )
        d1287 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1287 = if ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> x12880 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12890 -> x12890 ) ) ) $ ( false ) else if false then d1182 else d296
        d1290 : ( ( Set -> Set ) ∋ ( ( λ x12920 -> ( ( Set -> Set ) ∋ ( ( λ x12930 -> if true then x12930 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1290 = ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> if d1 then d454 else d968 ) ) ) $ ( if d649 then true else d313 )
        d1294 : ( ( Set -> Set ) ∋ ( ( λ x12960 -> ( ( Set -> Set ) ∋ ( ( λ x12970 -> if false then x12960 else Bool ) ) ) $ ( x12960 ) ) ) ) $ ( if true then Bool else Bool )
        d1294 = if if d98 then d1010 else d854 then if true then d589 else false else ( ( Bool -> Bool ) ∋ ( ( λ x12950 -> false ) ) ) $ ( d950 )
        d1298 : if true then ( ( Set -> Set ) ∋ ( ( λ x12990 -> x12990 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1298 = if if d486 then true else false then if true then d958 else d466 else if d184 then true else false
        d1300 : ( ( Set -> Set ) ∋ ( ( λ x13020 -> if true then Bool else x13020 ) ) ) $ ( if false then Bool else Bool )
        d1300 = if if d177 then d466 else true then if true then d696 else d304 else ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> d1169 ) ) ) $ ( true )
        d1303 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1303 = ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> if d546 then true else x13040 ) ) ) $ ( if false then d308 else d1010 )
        d1305 : ( ( Set -> Set ) ∋ ( ( λ x13070 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1305 = ( ( Bool -> Bool ) ∋ ( ( λ x13060 -> if false then false else true ) ) ) $ ( if true then d474 else true )
        d1308 : ( ( Set -> Set ) ∋ ( ( λ x13100 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1308 = ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> if x13090 then d1207 else x13090 ) ) ) $ ( if false then d905 else d741 )
        d1311 : ( ( Set -> Set ) ∋ ( ( λ x13130 -> ( ( Set -> Set ) ∋ ( ( λ x13140 -> if true then x13140 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1311 = if if d917 then d108 else d553 then ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> d509 ) ) ) $ ( true ) else if false then false else false
        d1315 : if false then ( ( Set -> Set ) ∋ ( ( λ x13180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13190 -> x13190 ) ) ) $ ( Bool )
        d1315 = ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> if true then d759 else true ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d1320 : if true then ( ( Set -> Set ) ∋ ( ( λ x13230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13240 -> Bool ) ) ) $ ( Bool )
        d1320 = if ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> x13220 ) ) ) $ ( true ) else if d293 then false else d1030
        d1325 : if true then ( ( Set -> Set ) ∋ ( ( λ x13280 -> x13280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13290 -> x13290 ) ) ) $ ( Bool )
        d1325 = ( ( Bool -> Bool ) ∋ ( ( λ x13260 -> ( ( Bool -> Bool ) ∋ ( ( λ x13270 -> if false then true else d610 ) ) ) $ ( x13260 ) ) ) ) $ ( if d39 then true else d1290 )
        d1330 : ( ( Set -> Set ) ∋ ( ( λ x13310 -> ( ( Set -> Set ) ∋ ( ( λ x13320 -> if true then Bool else Bool ) ) ) $ ( x13310 ) ) ) ) $ ( if false then Bool else Bool )
        d1330 = if if true then d10 else d691 then if d1105 then true else d1320 else if false then d1279 else false
        d1333 : if false then ( ( Set -> Set ) ∋ ( ( λ x13360 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1333 = ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> if d1303 then x13350 else false ) ) ) $ ( x13340 ) ) ) ) $ ( if false then d826 else d154 )
        d1337 : ( ( Set -> Set ) ∋ ( ( λ x13400 -> ( ( Set -> Set ) ∋ ( ( λ x13410 -> if true then x13410 else x13400 ) ) ) $ ( x13400 ) ) ) ) $ ( if false then Bool else Bool )
        d1337 = ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> ( ( Bool -> Bool ) ∋ ( ( λ x13390 -> if false then false else d96 ) ) ) $ ( d1157 ) ) ) ) $ ( if d372 then d1287 else false )
        d1342 : if true then ( ( Set -> Set ) ∋ ( ( λ x13450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13460 -> x13460 ) ) ) $ ( Bool )
        d1342 = ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> if x13430 then x13430 else true ) ) ) $ ( d141 ) ) ) ) $ ( if false then false else true )
        d1347 : ( ( Set -> Set ) ∋ ( ( λ x13480 -> if true then x13480 else x13480 ) ) ) $ ( if false then Bool else Bool )
        d1347 = if if false then true else false then if d80 then d406 else false else if d229 then d26 else d96
        d1349 : if true then ( ( Set -> Set ) ∋ ( ( λ x13520 -> x13520 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1349 = if if d878 then d254 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13500 -> d269 ) ) ) $ ( d816 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13510 -> d1219 ) ) ) $ ( true )
        d1353 : if false then ( ( Set -> Set ) ∋ ( ( λ x13560 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1353 = ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> if d1064 then x13550 else d400 ) ) ) $ ( x13540 ) ) ) ) $ ( if d920 then d1089 else true )
        d1357 : if false then ( ( Set -> Set ) ∋ ( ( λ x13590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13600 -> Bool ) ) ) $ ( Bool )
        d1357 = ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> if true then d504 else false ) ) ) $ ( if d1137 then true else false )
        d1361 : if true then ( ( Set -> Set ) ∋ ( ( λ x13620 -> x13620 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1361 = if if true then false else true then if true then true else d774 else if d233 then d1216 else d26
        d1363 : ( ( Set -> Set ) ∋ ( ( λ x13660 -> ( ( Set -> Set ) ∋ ( ( λ x13670 -> if true then x13670 else Bool ) ) ) $ ( x13660 ) ) ) ) $ ( if true then Bool else Bool )
        d1363 = ( ( Bool -> Bool ) ∋ ( ( λ x13640 -> ( ( Bool -> Bool ) ∋ ( ( λ x13650 -> if d1315 then x13640 else d1033 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d1368 : ( ( Set -> Set ) ∋ ( ( λ x13700 -> if false then Bool else x13700 ) ) ) $ ( if true then Bool else Bool )
        d1368 = if ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> x13690 ) ) ) $ ( d636 ) then if d260 then d1274 else true else if true then d308 else d752
        d1371 : ( ( Set -> Set ) ∋ ( ( λ x13720 -> if true then Bool else x13720 ) ) ) $ ( if false then Bool else Bool )
        d1371 = if if false then d993 else false then if true then d77 else true else if d1320 then d269 else d860
        d1373 : ( ( Set -> Set ) ∋ ( ( λ x13760 -> ( ( Set -> Set ) ∋ ( ( λ x13770 -> if false then Bool else Bool ) ) ) $ ( x13760 ) ) ) ) $ ( if false then Bool else Bool )
        d1373 = ( ( Bool -> Bool ) ∋ ( ( λ x13740 -> ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> if d688 then true else x13750 ) ) ) $ ( true ) ) ) ) $ ( if d1167 then d1020 else d460 )
        d1378 : ( ( Set -> Set ) ∋ ( ( λ x13800 -> ( ( Set -> Set ) ∋ ( ( λ x13810 -> if true then Bool else x13810 ) ) ) $ ( x13800 ) ) ) ) $ ( if false then Bool else Bool )
        d1378 = if if d329 then false else d1096 then if true then d910 else d45 else ( ( Bool -> Bool ) ∋ ( ( λ x13790 -> d474 ) ) ) $ ( false )
        d1382 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1382 = ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> if d890 then x13830 else d844 ) ) ) $ ( if d1265 then d902 else d767 )
        d1384 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13860 -> x13860 ) ) ) $ ( Bool )
        d1384 = if ( ( Bool -> Bool ) ∋ ( ( λ x13850 -> true ) ) ) $ ( true ) then if d87 then false else true else if true then d96 else true
        d1387 : if true then ( ( Set -> Set ) ∋ ( ( λ x13890 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1387 = ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> if false then x13880 else false ) ) ) $ ( if d1016 then true else true )
        d1390 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1390 = if ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> d1337 ) ) ) $ ( true ) else if d803 then true else false
        d1393 : ( ( Set -> Set ) ∋ ( ( λ x13960 -> ( ( Set -> Set ) ∋ ( ( λ x13970 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1393 = if ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> d154 ) ) ) $ ( d500 ) then if true then d1064 else d343 else ( ( Bool -> Bool ) ∋ ( ( λ x13950 -> x13950 ) ) ) $ ( d250 )
        d1398 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1398 = ( ( Bool -> Bool ) ∋ ( ( λ x13990 -> ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> if x14000 then false else d622 ) ) ) $ ( false ) ) ) ) $ ( if true then d68 else d343 )
        d1401 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14040 -> x14040 ) ) ) $ ( Bool )
        d1401 = ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> ( ( Bool -> Bool ) ∋ ( ( λ x14030 -> if true then d696 else x14030 ) ) ) $ ( x14020 ) ) ) ) $ ( if true then true else d655 )
        d1405 : ( ( Set -> Set ) ∋ ( ( λ x14080 -> if false then x14080 else x14080 ) ) ) $ ( if true then Bool else Bool )
        d1405 = ( ( Bool -> Bool ) ∋ ( ( λ x14060 -> ( ( Bool -> Bool ) ∋ ( ( λ x14070 -> if true then x14060 else x14060 ) ) ) $ ( x14060 ) ) ) ) $ ( if true then d1378 else d793 )
        d1409 : if false then ( ( Set -> Set ) ∋ ( ( λ x14120 -> x14120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14130 -> x14130 ) ) ) $ ( Bool )
        d1409 = ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> ( ( Bool -> Bool ) ∋ ( ( λ x14110 -> if x14100 then d1243 else false ) ) ) $ ( false ) ) ) ) $ ( if d308 then true else true )
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14160 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1414 = ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> if true then x14150 else false ) ) ) $ ( if d369 then false else d115 )
        d1417 : if false then ( ( Set -> Set ) ∋ ( ( λ x14190 -> x14190 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1417 = ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> if d1190 then false else x14180 ) ) ) $ ( if d222 then false else d636 )
        d1420 : ( ( Set -> Set ) ∋ ( ( λ x14220 -> ( ( Set -> Set ) ∋ ( ( λ x14230 -> if true then x14230 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1420 = if if d770 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x14210 -> d688 ) ) ) $ ( true ) else if true then false else d878
        d1424 : if false then ( ( Set -> Set ) ∋ ( ( λ x14270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14280 -> Bool ) ) ) $ ( Bool )
        d1424 = ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> if x14250 then d101 else x14250 ) ) ) $ ( x14250 ) ) ) ) $ ( if false then d1129 else d834 )
        d1429 : ( ( Set -> Set ) ∋ ( ( λ x14320 -> if false then x14320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1429 = if ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> true ) ) ) $ ( d738 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> d674 ) ) ) $ ( d460 )
        d1433 : ( ( Set -> Set ) ∋ ( ( λ x14340 -> ( ( Set -> Set ) ∋ ( ( λ x14350 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1433 = if if d105 then d96 else d474 then if false then true else false else if d1 then d1294 else d1382
        d1436 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1436 = ( ( Bool -> Bool ) ∋ ( ( λ x14370 -> if d1320 then x14370 else x14370 ) ) ) $ ( if true then false else true )
        d1438 : if false then ( ( Set -> Set ) ∋ ( ( λ x14410 -> x14410 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1438 = ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> if true then x14400 else d756 ) ) ) $ ( x14390 ) ) ) ) $ ( if true then d674 else d1157 )
        d1442 : ( ( Set -> Set ) ∋ ( ( λ x14440 -> if false then Bool else x14440 ) ) ) $ ( if false then Bool else Bool )
        d1442 = ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> if true then x14430 else false ) ) ) $ ( if true then d50 else false )
        d1445 : ( ( Set -> Set ) ∋ ( ( λ x14470 -> ( ( Set -> Set ) ∋ ( ( λ x14480 -> if true then Bool else Bool ) ) ) $ ( x14470 ) ) ) ) $ ( if false then Bool else Bool )
        d1445 = if if d801 then d1305 else d372 then ( ( Bool -> Bool ) ∋ ( ( λ x14460 -> true ) ) ) $ ( false ) else if false then true else true
        d1449 : ( ( Set -> Set ) ∋ ( ( λ x14510 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1449 = ( ( Bool -> Bool ) ∋ ( ( λ x14500 -> if false then x14500 else d219 ) ) ) $ ( if true then d1016 else false )
        d1452 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14550 -> Bool ) ) ) $ ( Bool )
        d1452 = ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> if x14540 then d296 else true ) ) ) $ ( x14530 ) ) ) ) $ ( if false then d437 else false )
        d1456 : ( ( Set -> Set ) ∋ ( ( λ x14590 -> if true then x14590 else x14590 ) ) ) $ ( if false then Bool else Bool )
        d1456 = ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> if true then true else d933 ) ) ) $ ( true ) ) ) ) $ ( if d1384 then true else true )
        d1460 : ( ( Set -> Set ) ∋ ( ( λ x14620 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1460 = if if d458 then d421 else d631 then if true then d838 else d1112 else ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> false ) ) ) $ ( false )
        d1463 : if false then ( ( Set -> Set ) ∋ ( ( λ x14660 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1463 = ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> if x14650 then d1279 else x14650 ) ) ) $ ( d1039 ) ) ) ) $ ( if d411 then d141 else d281 )
        d1467 : if true then ( ( Set -> Set ) ∋ ( ( λ x14690 -> x14690 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1467 = ( ( Bool -> Bool ) ∋ ( ( λ x14680 -> if x14680 then false else false ) ) ) $ ( if d1261 then d39 else true )
        d1470 : ( ( Set -> Set ) ∋ ( ( λ x14710 -> ( ( Set -> Set ) ∋ ( ( λ x14720 -> if true then Bool else x14720 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1470 = if if d986 then d615 else d31 then if true then false else d993 else if true then d1300 else false
        d1473 : ( ( Set -> Set ) ∋ ( ( λ x14750 -> ( ( Set -> Set ) ∋ ( ( λ x14760 -> if true then x14750 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1473 = ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> if d360 then x14740 else x14740 ) ) ) $ ( if false then d333 else d920 )
        d1477 : if false then ( ( Set -> Set ) ∋ ( ( λ x14790 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1477 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> false ) ) ) $ ( true ) else if d701 then true else true
        d1480 : if true then ( ( Set -> Set ) ∋ ( ( λ x14830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14840 -> x14840 ) ) ) $ ( Bool )
        d1480 = if ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> false ) ) ) $ ( true ) then if false then true else d296 else ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> x14820 ) ) ) $ ( d73 )
        d1485 : ( ( Set -> Set ) ∋ ( ( λ x14870 -> ( ( Set -> Set ) ∋ ( ( λ x14880 -> if true then x14880 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1485 = if ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> true ) ) ) $ ( d790 ) then if true then false else true else if d1224 then d1473 else false
        d1489 : ( ( Set -> Set ) ∋ ( ( λ x14920 -> ( ( Set -> Set ) ∋ ( ( λ x14930 -> if false then x14930 else Bool ) ) ) $ ( x14920 ) ) ) ) $ ( if false then Bool else Bool )
        d1489 = if ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> false ) ) ) $ ( d424 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> false ) ) ) $ ( false ) else if false then d1368 else false
        d1494 : ( ( Set -> Set ) ∋ ( ( λ x14960 -> if true then x14960 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1494 = if if d905 then true else false then if d1072 then d1261 else d1219 else ( ( Bool -> Bool ) ∋ ( ( λ x14950 -> false ) ) ) $ ( true )
        d1497 : if false then ( ( Set -> Set ) ∋ ( ( λ x15000 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15010 -> x15010 ) ) ) $ ( Bool )
        d1497 = ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> if d583 then true else x14980 ) ) ) $ ( d878 ) ) ) ) $ ( if true then true else d477 )
        d1502 : ( ( Set -> Set ) ∋ ( ( λ x15030 -> ( ( Set -> Set ) ∋ ( ( λ x15040 -> if true then x15030 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1502 = if if d583 then true else d375 then if d1064 then d878 else d1101 else if d767 then false else d939
        d1505 : ( ( Set -> Set ) ∋ ( ( λ x15080 -> ( ( Set -> Set ) ∋ ( ( λ x15090 -> if true then x15090 else Bool ) ) ) $ ( x15080 ) ) ) ) $ ( if true then Bool else Bool )
        d1505 = if if d1347 then d63 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> x15060 ) ) ) $ ( d963 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> true ) ) ) $ ( true )
        d1510 : ( ( Set -> Set ) ∋ ( ( λ x15120 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1510 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> d1256 ) ) ) $ ( d1417 ) else if true then false else false
        d1513 : ( ( Set -> Set ) ∋ ( ( λ x15160 -> ( ( Set -> Set ) ∋ ( ( λ x15170 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1513 = if ( ( Bool -> Bool ) ∋ ( ( λ x15140 -> d913 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> x15150 ) ) ) $ ( d971 ) else if d602 then true else d1290
        d1518 : ( ( Set -> Set ) ∋ ( ( λ x15210 -> ( ( Set -> Set ) ∋ ( ( λ x15220 -> if true then x15210 else x15210 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1518 = ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> if d610 then false else x15190 ) ) ) $ ( false ) ) ) ) $ ( if d1142 then true else false )
        d1523 : ( ( Set -> Set ) ∋ ( ( λ x15260 -> if true then Bool else x15260 ) ) ) $ ( if true then Bool else Bool )
        d1523 = ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> ( ( Bool -> Bool ) ∋ ( ( λ x15250 -> if x15240 then false else x15240 ) ) ) $ ( d1121 ) ) ) ) $ ( if d1315 then d844 else d868 )
        d1527 : if true then ( ( Set -> Set ) ∋ ( ( λ x15290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15300 -> Bool ) ) ) $ ( Bool )
        d1527 = ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> if x15280 then d798 else true ) ) ) $ ( if true then d1438 else d343 )
        d1531 : ( ( Set -> Set ) ∋ ( ( λ x15350 -> if true then x15350 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1531 = if ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15330 -> false ) ) ) $ ( d1246 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15340 -> d229 ) ) ) $ ( true )
        d1536 : ( ( Set -> Set ) ∋ ( ( λ x15390 -> if true then x15390 else x15390 ) ) ) $ ( if true then Bool else Bool )
        d1536 = ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> ( ( Bool -> Bool ) ∋ ( ( λ x15380 -> if false then x15370 else x15370 ) ) ) $ ( d968 ) ) ) ) $ ( if true then false else d615 )
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15420 -> if true then x15420 else x15420 ) ) ) $ ( if true then Bool else Bool )
        d1540 = ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> if d661 then d920 else x15410 ) ) ) $ ( if d1463 then d145 else d691 )
        d1543 : ( ( Set -> Set ) ∋ ( ( λ x15460 -> ( ( Set -> Set ) ∋ ( ( λ x15470 -> if false then x15470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1543 = ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> if false then x15450 else false ) ) ) $ ( d504 ) ) ) ) $ ( if d1151 then false else d320 )
        d1548 : if true then ( ( Set -> Set ) ∋ ( ( λ x15520 -> x15520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15530 -> x15530 ) ) ) $ ( Bool )
        d1548 = if ( ( Bool -> Bool ) ∋ ( ( λ x15490 -> x15490 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> d1473 ) ) ) $ ( true )
        d1554 : ( ( Set -> Set ) ∋ ( ( λ x15560 -> if false then x15560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1554 = ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> if x15550 then x15550 else x15550 ) ) ) $ ( if d324 then false else false )
        d1557 : ( ( Set -> Set ) ∋ ( ( λ x15580 -> if false then x15580 else x15580 ) ) ) $ ( if true then Bool else Bool )
        d1557 = if if true then d237 else d950 then if true then d1196 else d1117 else if false then d1265 else d1320
        d1559 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1559 = ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> if d42 then d1393 else d999 ) ) ) $ ( if false then d424 else false )
        d1561 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1561 = ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> if d538 then false else d583 ) ) ) $ ( true ) ) ) ) $ ( if d1219 then d416 else false )
        d1564 : if false then ( ( Set -> Set ) ∋ ( ( λ x15670 -> x15670 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1564 = if ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> x15660 ) ) ) $ ( true ) else if false then d1096 else d1134
        d1568 : if false then ( ( Set -> Set ) ∋ ( ( λ x15710 -> x15710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15720 -> Bool ) ) ) $ ( Bool )
        d1568 = ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> if x15700 then d652 else x15700 ) ) ) $ ( d416 ) ) ) ) $ ( if d1112 then d929 else d353 )
        d1573 : ( ( Set -> Set ) ∋ ( ( λ x15760 -> if true then Bool else x15760 ) ) ) $ ( if true then Bool else Bool )
        d1573 = ( ( Bool -> Bool ) ∋ ( ( λ x15740 -> ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> if x15740 then x15750 else false ) ) ) $ ( x15740 ) ) ) ) $ ( if d1456 then d878 else d589 )
        d1577 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15800 -> Bool ) ) ) $ ( Bool )
        d1577 = ( ( Bool -> Bool ) ∋ ( ( λ x15780 -> ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> if true then true else d35 ) ) ) $ ( x15780 ) ) ) ) $ ( if d1044 then d803 else true )
        d1581 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1581 = ( ( Bool -> Bool ) ∋ ( ( λ x15820 -> ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> if false then d788 else true ) ) ) $ ( true ) ) ) ) $ ( if true then d1523 else d1121 )
        d1584 : ( ( Set -> Set ) ∋ ( ( λ x15870 -> ( ( Set -> Set ) ∋ ( ( λ x15880 -> if false then Bool else Bool ) ) ) $ ( x15870 ) ) ) ) $ ( if false then Bool else Bool )
        d1584 = if if true then true else d875 then ( ( Bool -> Bool ) ∋ ( ( λ x15850 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> d372 ) ) ) $ ( true )
        d1589 : ( ( Set -> Set ) ∋ ( ( λ x15920 -> ( ( Set -> Set ) ∋ ( ( λ x15930 -> if true then Bool else Bool ) ) ) $ ( x15920 ) ) ) ) $ ( if true then Bool else Bool )
        d1589 = if ( ( Bool -> Bool ) ∋ ( ( λ x15900 -> true ) ) ) $ ( true ) then if d1463 then d512 else d197 else ( ( Bool -> Bool ) ∋ ( ( λ x15910 -> true ) ) ) $ ( false )
        d1594 : ( ( Set -> Set ) ∋ ( ( λ x15960 -> ( ( Set -> Set ) ∋ ( ( λ x15970 -> if false then Bool else Bool ) ) ) $ ( x15960 ) ) ) ) $ ( if false then Bool else Bool )
        d1594 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> x15950 ) ) ) $ ( true ) else if d1200 then true else true
        d1598 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16000 -> Bool ) ) ) $ ( Bool )
        d1598 = if if false then true else d748 then ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> x15990 ) ) ) $ ( d939 ) else if d411 then false else true
        d1601 : if false then ( ( Set -> Set ) ∋ ( ( λ x16030 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1601 = if ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> d579 ) ) ) $ ( d317 ) then if d1561 then false else true else if d73 then false else true
        d1604 : if false then ( ( Set -> Set ) ∋ ( ( λ x16070 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1604 = ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> if false then x16050 else false ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d1608 : if true then ( ( Set -> Set ) ∋ ( ( λ x16110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16120 -> Bool ) ) ) $ ( Bool )
        d1608 = if ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> false ) ) ) $ ( d1300 ) then if d1064 then d681 else d1382 else ( ( Bool -> Bool ) ∋ ( ( λ x16100 -> d108 ) ) ) $ ( d35 )
        d1613 : ( ( Set -> Set ) ∋ ( ( λ x16160 -> if false then x16160 else x16160 ) ) ) $ ( if true then Bool else Bool )
        d1613 = ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> ( ( Bool -> Bool ) ∋ ( ( λ x16150 -> if x16140 then x16150 else true ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d1617 : ( ( Set -> Set ) ∋ ( ( λ x16200 -> ( ( Set -> Set ) ∋ ( ( λ x16210 -> if true then Bool else x16210 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1617 = if ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> false ) ) ) $ ( false ) then if d848 then true else d1194 else ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> d1290 ) ) ) $ ( d216 )
        d1622 : if false then ( ( Set -> Set ) ∋ ( ( λ x16250 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1622 = ( ( Bool -> Bool ) ∋ ( ( λ x16230 -> ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> if d579 then d202 else x16230 ) ) ) $ ( true ) ) ) ) $ ( if d968 then false else true )
        d1626 : if true then ( ( Set -> Set ) ∋ ( ( λ x16290 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1626 = if if true then d411 else d1227 then ( ( Bool -> Bool ) ∋ ( ( λ x16270 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16280 -> false ) ) ) $ ( true )
        d1630 : if false then ( ( Set -> Set ) ∋ ( ( λ x16320 -> x16320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16330 -> Bool ) ) ) $ ( Bool )
        d1630 = if if false then d138 else false then ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> d71 ) ) ) $ ( d68 ) else if false then false else true
        d1634 : ( ( Set -> Set ) ∋ ( ( λ x16370 -> ( ( Set -> Set ) ∋ ( ( λ x16380 -> if true then Bool else Bool ) ) ) $ ( x16370 ) ) ) ) $ ( if false then Bool else Bool )
        d1634 = if ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> false ) ) ) $ ( d581 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> d247 ) ) ) $ ( d1290 ) else if d1414 then d706 else d1584
        d1639 : if false then ( ( Set -> Set ) ∋ ( ( λ x16420 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1639 = ( ( Bool -> Bool ) ∋ ( ( λ x16400 -> ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> if d1630 then x16410 else d1182 ) ) ) $ ( d1174 ) ) ) ) $ ( if d618 then d1449 else d728 )
        d1643 : if false then ( ( Set -> Set ) ∋ ( ( λ x16470 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1643 = if ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> true ) ) ) $ ( d247 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16450 -> d1126 ) ) ) $ ( d343 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> d738 ) ) ) $ ( false )
        d1648 : if false then ( ( Set -> Set ) ∋ ( ( λ x16500 -> x16500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1648 = if ( ( Bool -> Bool ) ∋ ( ( λ x16490 -> d631 ) ) ) $ ( d1622 ) then if true then d372 else false else if d424 then false else d732
        d1651 : if true then ( ( Set -> Set ) ∋ ( ( λ x16520 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1651 = if if d442 then true else d607 then if d598 then true else d411 else if d1089 then d273 else false
        d1653 : ( ( Set -> Set ) ∋ ( ( λ x16560 -> ( ( Set -> Set ) ∋ ( ( λ x16570 -> if true then x16560 else x16560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1653 = if ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> x16540 ) ) ) $ ( d788 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16550 -> x16550 ) ) ) $ ( true ) else if false then d793 else true
        d1658 : ( ( Set -> Set ) ∋ ( ( λ x16600 -> if false then x16600 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1658 = if if d202 then d1153 else d369 then if d26 then d1333 else d1305 else ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> true ) ) ) $ ( d1445 )
        d1661 : if false then ( ( Set -> Set ) ∋ ( ( λ x16640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16650 -> x16650 ) ) ) $ ( Bool )
        d1661 = ( ( Bool -> Bool ) ∋ ( ( λ x16620 -> ( ( Bool -> Bool ) ∋ ( ( λ x16630 -> if x16630 then x16630 else d958 ) ) ) $ ( true ) ) ) ) $ ( if d548 then true else d589 )
        d1666 : ( ( Set -> Set ) ∋ ( ( λ x16680 -> if true then x16680 else x16680 ) ) ) $ ( if true then Bool else Bool )
        d1666 = ( ( Bool -> Bool ) ∋ ( ( λ x16670 -> if x16670 then x16670 else x16670 ) ) ) $ ( if true then false else false )
        d1669 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1669 = if ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> false ) ) ) $ ( d353 ) then if false then true else d763 else ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> false ) ) ) $ ( d950 )
        d1672 : ( ( Set -> Set ) ∋ ( ( λ x16750 -> if false then x16750 else x16750 ) ) ) $ ( if false then Bool else Bool )
        d1672 = ( ( Bool -> Bool ) ∋ ( ( λ x16730 -> ( ( Bool -> Bool ) ∋ ( ( λ x16740 -> if x16730 then true else x16740 ) ) ) $ ( true ) ) ) ) $ ( if d1337 then false else d1016 )
        d1676 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16790 -> Bool ) ) ) $ ( Bool )
        d1676 = ( ( Bool -> Bool ) ∋ ( ( λ x16770 -> ( ( Bool -> Bool ) ∋ ( ( λ x16780 -> if true then d1337 else d1044 ) ) ) $ ( x16770 ) ) ) ) $ ( if false then d1347 else true )
        d1680 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1680 = ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> ( ( Bool -> Bool ) ∋ ( ( λ x16820 -> if false then x16820 else x16820 ) ) ) $ ( x16810 ) ) ) ) $ ( if true then d567 else d141 )
        d1683 : ( ( Set -> Set ) ∋ ( ( λ x16850 -> ( ( Set -> Set ) ∋ ( ( λ x16860 -> if true then Bool else x16850 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1683 = ( ( Bool -> Bool ) ∋ ( ( λ x16840 -> if false then false else x16840 ) ) ) $ ( if true then d222 else d1639 )