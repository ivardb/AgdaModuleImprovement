module Decls450Test9  where
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
        d1 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool )
        d1 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( true )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else x80 ) ) ) $ ( if true then Bool else Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x70 -> false ) ) ) $ ( d1 ) else if d1 then d1 else false
        d9 : if true then ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d9 = if if d1 then d1 else false then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d5 ) ) ) $ ( true )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then Bool else x140 ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if false then d5 else x130 ) ) ) $ ( if false then true else true )
        d15 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool )
        d15 = if if false then false else d9 then ( ( Bool -> Bool ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( d9 ) else if true then true else d5
        d18 : if false then ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> false ) ) ) $ ( false ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d5 ) ) ) $ ( d12 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if true then x260 else Bool ) ) ) $ ( x250 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if x230 then false else true ) ) ) $ ( x230 ) ) ) ) $ ( if d1 then d18 else false )
        d27 : if false then ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d27 = if if d12 then d5 else false then if true then d12 else false else if d5 then true else d9
        d29 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d29 = if ( ( Bool -> Bool ) ∋ ( ( λ x300 -> x300 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d5 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x320 -> true ) ) ) $ ( d5 )
        d34 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( Bool )
        d34 = if ( ( Bool -> Bool ) ∋ ( ( λ x350 -> d12 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x360 -> true ) ) ) $ ( true ) else if true then true else d5
        d38 : if false then ( ( Set -> Set ) ∋ ( ( λ x400 -> x400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( Bool )
        d38 = if if true then false else d5 then if d34 then false else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d15 ) ) ) $ ( d1 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x450 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if true then d34 else d38 ) ) ) $ ( x430 ) ) ) ) $ ( if d29 then d29 else d38 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then Bool else x490 ) ) ) $ ( x490 ) ) ) ) $ ( if false then Bool else Bool )
        d46 = if ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d42 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( d1 ) else if d12 then d42 else true
        d51 : if true then ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if d9 then x530 else true ) ) ) $ ( d12 ) ) ) ) $ ( if d27 then d9 else d22 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then x590 else x590 ) ) ) $ ( if false then Bool else Bool )
        d55 = if ( ( Bool -> Bool ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x570 -> true ) ) ) $ ( d34 ) else ( ( Bool -> Bool ) ∋ ( ( λ x580 -> d12 ) ) ) $ ( d9 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x630 -> ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then x640 else x640 ) ) ) $ ( x630 ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d9 ) ) ) $ ( d12 ) then ( ( Bool -> Bool ) ∋ ( ( λ x620 -> d18 ) ) ) $ ( d18 ) else if true then d46 else true
        d65 : if true then ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x680 -> x680 ) ) ) $ ( Bool )
        d65 = if if true then d5 else d29 then if true then d29 else d29 else ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( true )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then x710 else Bool ) ) ) $ ( x710 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d27 ) ) ) $ ( d9 ) then if false then d9 else d55 else if true then d22 else true
        d73 : ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then Bool else x760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if x750 then d34 else false ) ) ) $ ( x740 ) ) ) ) $ ( if d46 then d60 else false )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x820 -> if false then x820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d78 = if ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d51 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x800 -> d42 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x810 -> d65 ) ) ) $ ( true )
        d83 : if false then ( ( Set -> Set ) ∋ ( ( λ x850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool )
        d83 = if if false then d78 else d9 then ( ( Bool -> Bool ) ∋ ( ( λ x840 -> d60 ) ) ) $ ( d27 ) else if false then d15 else true
        d87 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if true then x890 else Bool ) ) ) $ ( if false then Bool else Bool )
        d87 = if if d38 then false else d22 then ( ( Bool -> Bool ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( d34 ) else if d9 then false else false
        d90 : ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> if false then x940 else Bool ) ) ) $ ( x930 ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d9 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( d34 ) else if true then false else false
        d95 : if true then ( ( Set -> Set ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if d38 then d83 else false ) ) ) $ ( if d83 then d15 else d15 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> if true then x1000 else Bool ) ) ) $ ( x1000 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = if if d42 then d87 else false then ( ( Bool -> Bool ) ∋ ( ( λ x990 -> true ) ) ) $ ( d83 ) else if false then true else d83
        d102 : if true then if false then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if false then d42 else false ) ) ) $ ( if true then d69 else false )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then x1070 else x1080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if d95 then d42 else true ) ) ) $ ( true ) ) ) ) $ ( if d1 then true else false )
        d109 : if true then ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> if x1100 then true else x1100 ) ) ) $ ( if d34 then d102 else d51 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> ( ( Set -> Set ) ∋ ( ( λ x1150 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d112 = if if d38 then d5 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( d78 ) else if false then d1 else d1
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> if true then x1180 else Bool ) ) ) $ ( x1180 ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if false then false else d22 then ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( true ) else if true then d15 else d27
        d120 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( Bool )
        d120 = if if true then d38 else d112 then if false then false else d34 else if d1 then d34 else false
        d122 : if false then ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1250 -> Bool ) ) ) $ ( Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1230 then d95 else x1230 ) ) ) $ ( if true then false else true )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then x1290 else Bool ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> if x1270 then d42 else d73 ) ) ) $ ( x1270 ) ) ) ) $ ( if d51 then false else false )
        d130 : if true then ( ( Set -> Set ) ∋ ( ( λ x1330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool )
        d130 = if if true then false else d51 then ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> true ) ) ) $ ( false )
        d135 : if true then if false then Bool else Bool else if true then Bool else Bool
        d135 = if ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> true ) ) ) $ ( d112 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> x1380 ) ) ) $ ( true )
        d139 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d139 = if ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> d116 ) ) ) $ ( false ) then if d9 then d9 else false else if false then true else false
        d142 : if true then ( ( Set -> Set ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if true then x1430 else x1430 ) ) ) $ ( if false then d18 else true )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then x1470 else x1470 ) ) ) $ ( if true then Bool else Bool )
        d145 = if if false then d116 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( d104 ) else if true then d135 else false
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if true then true else true ) ) ) $ ( false ) ) ) ) $ ( if d18 then true else false )
        d152 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1550 -> Bool ) ) ) $ ( Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> if false then x1530 else d73 ) ) ) $ ( false ) ) ) ) $ ( if d126 then true else d22 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> if true then x1580 else x1580 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> if d98 then false else true ) ) ) $ ( if d12 then true else false )
        d160 : if true then ( ( Set -> Set ) ∋ ( ( λ x1640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( Bool )
        d160 = if ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> false ) ) ) $ ( d18 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( d139 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> d69 ) ) ) $ ( true )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> if false then x1690 else Bool ) ) ) $ ( if false then Bool else Bool )
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if d1 then x1680 else d126 ) ) ) $ ( false ) ) ) ) $ ( if d98 then false else true )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> if false then x1730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> if false then false else true ) ) ) $ ( false ) ) ) ) $ ( if d122 then true else d38 )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1760 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> if x1750 then d156 else x1750 ) ) ) $ ( if d9 then false else true )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if false then Bool else x1780 ) ) ) $ ( if true then Bool else Bool )
        d177 = if if false then false else d156 then if false then false else d160 else if d60 then true else d65
        d179 : if true then ( ( Set -> Set ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d179 = if if d22 then d5 else false then if d51 then d22 else d27 else ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( d73 )
        d182 : if false then ( ( Set -> Set ) ∋ ( ( λ x1840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1850 -> Bool ) ) ) $ ( Bool )
        d182 = if if d15 then d83 else d148 then if d156 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( true )
        d186 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if d102 then true else x1880 ) ) ) $ ( d83 ) ) ) ) $ ( if true then false else true )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if true then x1920 else Bool ) ) ) $ ( if false then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if d170 then true else d29 ) ) ) $ ( if d51 then d142 else true )
        d193 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1950 -> Bool ) ) ) $ ( Bool )
        d193 = ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> if d90 then x1940 else d139 ) ) ) $ ( if true then true else false )
        d196 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool )
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> if x1970 then d29 else x1970 ) ) ) $ ( if false then d60 else false )
        d199 : if false then ( ( Set -> Set ) ∋ ( ( λ x2010 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2020 -> Bool ) ) ) $ ( Bool )
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if true then x2000 else x2000 ) ) ) $ ( if true then d130 else true )
        d203 : if false then if true then Bool else Bool else if false then Bool else Bool
        d203 = if ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> x2040 ) ) ) $ ( true ) then if d38 then d87 else d193 else ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> x2050 ) ) ) $ ( false )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> if true then x2080 else Bool ) ) ) $ ( if true then Bool else Bool )
        d206 = if if d120 then false else false then if d120 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> d122 ) ) ) $ ( d38 )
        d209 : ( ( Set -> Set ) ∋ ( ( λ x2110 -> ( ( Set -> Set ) ∋ ( ( λ x2120 -> if false then x2120 else x2110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d209 = if if d160 then d182 else d34 then if true then false else d126 else ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( d65 )
        d213 : if true then ( ( Set -> Set ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if x2140 then x2150 else d209 ) ) ) $ ( x2140 ) ) ) ) $ ( if false then d135 else false )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> if x2180 then false else true ) ) ) $ ( if d177 then false else false )
        d220 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> if false then Bool else x2220 ) ) ) $ ( if false then Bool else Bool )
        d220 = if if d177 then d73 else d130 then ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> x2210 ) ) ) $ ( true ) else if false then d122 else false
        d223 : ( ( Set -> Set ) ∋ ( ( λ x2240 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d223 = if if d12 then true else d5 then if d179 then d46 else false else if d12 then false else d120
        d225 : ( ( Set -> Set ) ∋ ( ( λ x2260 -> ( ( Set -> Set ) ∋ ( ( λ x2270 -> if true then x2260 else x2270 ) ) ) $ ( x2260 ) ) ) ) $ ( if false then Bool else Bool )
        d225 = if if true then false else true then if d5 then true else d206 else if true then d42 else d116
        d228 : if false then if true then Bool else Bool else if false then Bool else Bool
        d228 = if ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> x2290 ) ) ) $ ( d225 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> d122 ) ) ) $ ( d217 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> true ) ) ) $ ( d9 )
        d232 : if false then if true then Bool else Bool else if false then Bool else Bool
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> if d122 then x2330 else false ) ) ) $ ( if d27 then false else d95 )
        d234 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2360 -> x2360 ) ) ) $ ( Bool )
        d234 = if ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> d51 ) ) ) $ ( false ) then if d29 then d193 else true else if d209 then d126 else false
        d237 : ( ( Set -> Set ) ∋ ( ( λ x2400 -> if true then Bool else x2400 ) ) ) $ ( if false then Bool else Bool )
        d237 = if ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( true ) then if true then d196 else d22 else ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> true ) ) ) $ ( false )
        d241 : if true then ( ( Set -> Set ) ∋ ( ( λ x2430 -> x2430 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2440 -> Bool ) ) ) $ ( Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if true then x2420 else false ) ) ) $ ( if false then false else d38 )
        d245 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> if true then x2480 else Bool ) ) ) $ ( if true then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> if d60 then d98 else x2460 ) ) ) $ ( d199 ) ) ) ) $ ( if d179 then d130 else true )
        d249 : if true then ( ( Set -> Set ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( Bool )
        d249 = if ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> d109 ) ) ) $ ( d65 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> true ) ) ) $ ( true ) else if d166 then true else false
        d254 : ( ( Set -> Set ) ∋ ( ( λ x2560 -> if false then Bool else x2560 ) ) ) $ ( if true then Bool else Bool )
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> if false then false else true ) ) ) $ ( if true then true else false )
        d257 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2590 -> x2590 ) ) ) $ ( Bool )
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if x2580 then x2580 else x2580 ) ) ) $ ( if d203 then true else false )
        d260 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if d126 then d245 else true ) ) ) $ ( x2610 ) ) ) ) $ ( if false then d225 else d196 )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x2660 -> ( ( Set -> Set ) ∋ ( ( λ x2670 -> if false then x2670 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d264 = if ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> x2650 ) ) ) $ ( d104 ) then if d27 then false else d213 else if d15 then true else d38
        d268 : ( ( Set -> Set ) ∋ ( ( λ x2700 -> ( ( Set -> Set ) ∋ ( ( λ x2710 -> if true then Bool else Bool ) ) ) $ ( x2700 ) ) ) ) $ ( if false then Bool else Bool )
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> if x2690 then true else true ) ) ) $ ( if d254 then d112 else d38 )
        d272 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2750 -> Bool ) ) ) $ ( Bool )
        d272 = ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> if d225 then true else d174 ) ) ) $ ( d206 ) ) ) ) $ ( if false then false else true )
        d276 : if true then ( ( Set -> Set ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d276 = if if true then false else true then if false then d120 else d116 else ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> d116 ) ) ) $ ( d156 )
        d279 : ( ( Set -> Set ) ∋ ( ( λ x2810 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if d139 then d223 else false ) ) ) $ ( if d209 then false else d228 )
        d282 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> if false then x2840 else Bool ) ) ) $ ( if false then Bool else Bool )
        d282 = if if d199 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> d228 ) ) ) $ ( d102 ) else if true then true else d279
        d285 : ( ( Set -> Set ) ∋ ( ( λ x2880 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d285 = if if false then false else d245 then ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> x2860 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> d98 ) ) ) $ ( false )
        d289 : if true then ( ( Set -> Set ) ∋ ( ( λ x2910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2920 -> Bool ) ) ) $ ( Bool )
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if true then false else x2900 ) ) ) $ ( if d98 then true else d42 )
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2960 -> if false then x2960 else x2960 ) ) ) $ ( if true then Bool else Bool )
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> if d148 then d142 else x2950 ) ) ) $ ( true ) ) ) ) $ ( if true then d9 else true )
        d297 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2990 -> Bool ) ) ) $ ( Bool )
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> if true then d237 else true ) ) ) $ ( if d182 then d254 else false )
        d300 : if true then if false then Bool else Bool else if true then Bool else Bool
        d300 = if ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> d139 ) ) ) $ ( false ) then if d18 then d223 else false else if false then d135 else false
        d302 : ( ( Set -> Set ) ∋ ( ( λ x3050 -> ( ( Set -> Set ) ∋ ( ( λ x3060 -> if false then Bool else x3050 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d302 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> x3030 ) ) ) $ ( d15 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> x3040 ) ) ) $ ( false )
        d307 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> ( ( Set -> Set ) ∋ ( ( λ x3100 -> if false then x3090 else x3090 ) ) ) $ ( x3090 ) ) ) ) $ ( if true then Bool else Bool )
        d307 = if if false then d18 else d122 then if d276 then d177 else d55 else ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> d279 ) ) ) $ ( d196 )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> ( ( Set -> Set ) ∋ ( ( λ x3140 -> if true then x3130 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d311 = if if true then d15 else d160 then if true then true else d166 else ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> false ) ) ) $ ( true )
        d315 : ( ( Set -> Set ) ∋ ( ( λ x3170 -> ( ( Set -> Set ) ∋ ( ( λ x3180 -> if true then Bool else Bool ) ) ) $ ( x3170 ) ) ) ) $ ( if false then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> if d55 then false else d73 ) ) ) $ ( if d302 then true else true )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> if true then x3210 else Bool ) ) ) $ ( if false then Bool else Bool )
        d319 = if if true then true else false then if true then d311 else d18 else ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> d276 ) ) ) $ ( false )
        d322 : if true then ( ( Set -> Set ) ∋ ( ( λ x3260 -> x3260 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d322 = if ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> x3230 ) ) ) $ ( d78 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> d126 ) ) ) $ ( d249 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> d179 ) ) ) $ ( true )
        d327 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3300 -> x3300 ) ) ) $ ( Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> if x3280 then x3280 else false ) ) ) $ ( true ) ) ) ) $ ( if d1 then d241 else d196 )
        d331 : ( ( Set -> Set ) ∋ ( ( λ x3330 -> if true then Bool else x3330 ) ) ) $ ( if false then Bool else Bool )
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if false then x3320 else x3320 ) ) ) $ ( if false then true else false )
        d334 : if true then ( ( Set -> Set ) ∋ ( ( λ x3380 -> x3380 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3390 -> Bool ) ) ) $ ( Bool )
        d334 = if ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> false ) ) ) $ ( d257 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> d160 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> false ) ) ) $ ( true )
        d340 : ( ( Set -> Set ) ∋ ( ( λ x3420 -> ( ( Set -> Set ) ∋ ( ( λ x3430 -> if false then x3430 else x3430 ) ) ) $ ( x3420 ) ) ) ) $ ( if true then Bool else Bool )
        d340 = if if d285 then d156 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> d156 ) ) ) $ ( false ) else if d319 then d282 else true
        d344 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3470 -> Bool ) ) ) $ ( Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> if d225 then d112 else false ) ) ) $ ( false ) ) ) ) $ ( if d109 then true else true )
        d348 : if true then if true then Bool else Bool else if true then Bool else Bool
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if d340 then d69 else d302 ) ) ) $ ( if d319 then true else true )
        d350 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3520 -> Bool ) ) ) $ ( Bool )
        d350 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> true ) ) ) $ ( true ) else if d268 then true else d112
        d353 : ( ( Set -> Set ) ∋ ( ( λ x3560 -> if false then x3560 else x3560 ) ) ) $ ( if true then Bool else Bool )
        d353 = if if d344 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> false ) ) ) $ ( d15 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> false ) ) ) $ ( true )
        d357 : if true then ( ( Set -> Set ) ∋ ( ( λ x3590 -> x3590 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d357 = if if false then d102 else false then if d38 then true else d302 else ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> false ) ) ) $ ( true )
        d360 : ( ( Set -> Set ) ∋ ( ( λ x3640 -> if false then x3640 else Bool ) ) ) $ ( if true then Bool else Bool )
        d360 = if ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> false ) ) ) $ ( d220 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> true ) ) ) $ ( true )
        d365 : if true then ( ( Set -> Set ) ∋ ( ( λ x3670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3680 -> x3680 ) ) ) $ ( Bool )
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> if d196 then x3660 else x3660 ) ) ) $ ( if d223 then d179 else d357 )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x3710 -> ( ( Set -> Set ) ∋ ( ( λ x3720 -> if true then x3710 else Bool ) ) ) $ ( x3710 ) ) ) ) $ ( if true then Bool else Bool )
        d369 = if ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> true ) ) ) $ ( d282 ) then if true then true else d302 else if d223 then d245 else d139
        d373 : ( ( Set -> Set ) ∋ ( ( λ x3760 -> if true then x3760 else x3760 ) ) ) $ ( if true then Bool else Bool )
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> if d170 then d112 else false ) ) ) $ ( x3740 ) ) ) ) $ ( if d331 then d38 else false )
        d377 : ( ( Set -> Set ) ∋ ( ( λ x3800 -> ( ( Set -> Set ) ∋ ( ( λ x3810 -> if false then Bool else Bool ) ) ) $ ( x3800 ) ) ) ) $ ( if false then Bool else Bool )
        d377 = ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> if false then d145 else false ) ) ) $ ( false ) ) ) ) $ ( if d148 then d12 else false )
        d382 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3850 -> Bool ) ) ) $ ( Bool )
        d382 = ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> if true then x3840 else x3830 ) ) ) $ ( true ) ) ) ) $ ( if d344 then false else false )
        d386 : ( ( Set -> Set ) ∋ ( ( λ x3890 -> ( ( Set -> Set ) ∋ ( ( λ x3900 -> if false then x3890 else Bool ) ) ) $ ( x3890 ) ) ) ) $ ( if true then Bool else Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> if true then d152 else x3870 ) ) ) $ ( d174 ) ) ) ) $ ( if true then d344 else false )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x3930 -> ( ( Set -> Set ) ∋ ( ( λ x3940 -> if true then Bool else x3930 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if false then true else x3920 ) ) ) $ ( if false then true else false )
        d395 : if false then if true then Bool else Bool else if true then Bool else Bool
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if x3960 then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d398 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4010 -> Bool ) ) ) $ ( Bool )
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> if x4000 then d241 else x3990 ) ) ) $ ( d34 ) ) ) ) $ ( if false then d340 else d116 )
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4040 -> ( ( Set -> Set ) ∋ ( ( λ x4050 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d402 = if if d395 then true else false then if false then d130 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> true ) ) ) $ ( d126 )
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4090 -> ( ( Set -> Set ) ∋ ( ( λ x4100 -> if false then Bool else x4090 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> if false then d190 else d237 ) ) ) $ ( d382 ) ) ) ) $ ( if true then false else false )
        d411 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4130 -> x4130 ) ) ) $ ( Bool )
        d411 = if if d232 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> false ) ) ) $ ( d357 ) else if false then false else false
        d414 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> ( ( Set -> Set ) ∋ ( ( λ x4180 -> if true then Bool else x4180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> if d223 then x4160 else true ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d419 : ( ( Set -> Set ) ∋ ( ( λ x4220 -> ( ( Set -> Set ) ∋ ( ( λ x4230 -> if true then Bool else Bool ) ) ) $ ( x4220 ) ) ) ) $ ( if false then Bool else Bool )
        d419 = if if true then d315 else d365 then ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( d272 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> x4210 ) ) ) $ ( d182 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> if false then x4270 else x4270 ) ) ) $ ( if true then Bool else Bool )
        d424 = if ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> d190 ) ) ) $ ( d98 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> false ) ) ) $ ( true ) else if d289 then d327 else d220
        d428 : ( ( Set -> Set ) ∋ ( ( λ x4310 -> ( ( Set -> Set ) ∋ ( ( λ x4320 -> if false then x4310 else x4310 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if d199 then d69 else x4290 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d433 : if false then if false then Bool else Bool else if true then Bool else Bool
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> if d260 then true else false ) ) ) $ ( if true then d282 else false )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4370 -> if false then x4370 else x4370 ) ) ) $ ( if false then Bool else Bool )
        d435 = if ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> true ) ) ) $ ( d112 ) then if true then d334 else d257 else if d38 then false else d331
        d438 : if false then if false then Bool else Bool else if false then Bool else Bool
        d438 = if if false then d276 else true then if d419 then d156 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( false )
        d440 : ( ( Set -> Set ) ∋ ( ( λ x4420 -> if true then x4420 else x4420 ) ) ) $ ( if true then Bool else Bool )
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> if true then d331 else x4410 ) ) ) $ ( if true then d302 else d241 )
        d443 : ( ( Set -> Set ) ∋ ( ( λ x4450 -> ( ( Set -> Set ) ∋ ( ( λ x4460 -> if true then Bool else Bool ) ) ) $ ( x4450 ) ) ) ) $ ( if true then Bool else Bool )
        d443 = if if d156 then d223 else false then if true then false else d126 else ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> d145 ) ) ) $ ( true )
        d447 : if true then if true then Bool else Bool else if false then Bool else Bool
        d447 = ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> if d73 then x4480 else d148 ) ) ) $ ( if d142 then true else false )
        d449 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4510 -> Bool ) ) ) $ ( Bool )
        d449 = ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> if true then true else false ) ) ) $ ( if d203 then d12 else false )
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4550 -> ( ( Set -> Set ) ∋ ( ( λ x4560 -> if false then x4560 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d452 = if ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> x4530 ) ) ) $ ( d78 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> true ) ) ) $ ( d98 ) else if d268 then false else true
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> ( ( Set -> Set ) ∋ ( ( λ x4600 -> if true then x4600 else x4600 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> if true then false else d334 ) ) ) $ ( if d130 then true else d145 )
        d461 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if d42 then d373 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d29 else true )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x4670 -> ( ( Set -> Set ) ∋ ( ( λ x4680 -> if true then x4680 else Bool ) ) ) $ ( x4670 ) ) ) ) $ ( if true then Bool else Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> if d237 then x4660 else d377 ) ) ) $ ( if d98 then true else d322 )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x4710 -> ( ( Set -> Set ) ∋ ( ( λ x4720 -> if false then Bool else x4710 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> if x4700 then false else true ) ) ) $ ( if true then d199 else d196 )
        d473 : if true then ( ( Set -> Set ) ∋ ( ( λ x4760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4770 -> x4770 ) ) ) $ ( Bool )
        d473 = if ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> false ) ) ) $ ( false ) then if d34 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> x4750 ) ) ) $ ( true )
        d478 : if false then if true then Bool else Bool else if true then Bool else Bool
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> if d15 then x4790 else x4800 ) ) ) $ ( x4790 ) ) ) ) $ ( if false then d254 else true )
        d481 : ( ( Set -> Set ) ∋ ( ( λ x4830 -> ( ( Set -> Set ) ∋ ( ( λ x4840 -> if false then x4840 else x4830 ) ) ) $ ( x4830 ) ) ) ) $ ( if false then Bool else Bool )
        d481 = if if d461 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( true ) else if true then d419 else false
        d485 : if true then ( ( Set -> Set ) ∋ ( ( λ x4880 -> x4880 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d485 = ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> if x4860 then x4870 else false ) ) ) $ ( x4860 ) ) ) ) $ ( if true then true else false )
        d489 : ( ( Set -> Set ) ∋ ( ( λ x4910 -> ( ( Set -> Set ) ∋ ( ( λ x4920 -> if false then x4910 else x4910 ) ) ) $ ( x4910 ) ) ) ) $ ( if false then Bool else Bool )
        d489 = if if false then false else d225 then if d186 then d319 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> true ) ) ) $ ( d122 )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4950 -> if false then x4950 else Bool ) ) ) $ ( if false then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if d419 then true else x4940 ) ) ) $ ( if true then d109 else true )
        d496 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> ( ( Set -> Set ) ∋ ( ( λ x5000 -> if false then Bool else x5000 ) ) ) $ ( x4990 ) ) ) ) $ ( if true then Bool else Bool )
        d496 = if ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> d402 ) ) ) $ ( false ) then if d419 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> d268 ) ) ) $ ( d27 )
        d501 : if false then ( ( Set -> Set ) ∋ ( ( λ x5050 -> x5050 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d501 = if ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> d315 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> d254 ) ) ) $ ( d293 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> x5040 ) ) ) $ ( d46 )
        d506 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5090 -> x5090 ) ) ) $ ( Bool )
        d506 = ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> if d302 then d452 else x5070 ) ) ) $ ( d327 ) ) ) ) $ ( if true then true else true )
        d510 : if true then ( ( Set -> Set ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5140 -> x5140 ) ) ) $ ( Bool )
        d510 = if ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> d402 ) ) ) $ ( d29 ) then if d300 then d186 else d182 else ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> d78 ) ) ) $ ( true )
        d515 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> ( ( Set -> Set ) ∋ ( ( λ x5200 -> if true then Bool else x5190 ) ) ) $ ( x5190 ) ) ) ) $ ( if false then Bool else Bool )
        d515 = if ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> d104 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> true ) ) ) $ ( d73 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> x5180 ) ) ) $ ( false )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x5230 -> if false then Bool else x5230 ) ) ) $ ( if true then Bool else Bool )
        d521 = if if d112 then false else false then if d465 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> x5220 ) ) ) $ ( d232 )
        d524 : if false then if true then Bool else Bool else if true then Bool else Bool
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> if d217 then x5260 else false ) ) ) $ ( d78 ) ) ) ) $ ( if false then false else d485 )
        d527 : ( ( Set -> Set ) ∋ ( ( λ x5290 -> if false then Bool else x5290 ) ) ) $ ( if true then Bool else Bool )
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> if x5280 then x5280 else d95 ) ) ) $ ( if d428 then false else d139 )
        d530 : ( ( Set -> Set ) ∋ ( ( λ x5320 -> if true then x5320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> if d102 then false else true ) ) ) $ ( if false then d156 else false )
        d533 : if true then ( ( Set -> Set ) ∋ ( ( λ x5350 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if x5340 then d15 else x5340 ) ) ) $ ( if false then false else d414 )
        d536 : ( ( Set -> Set ) ∋ ( ( λ x5390 -> if false then x5390 else x5390 ) ) ) $ ( if false then Bool else Bool )
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> if d348 then false else false ) ) ) $ ( d365 ) ) ) ) $ ( if d46 then d156 else d241 )
        d540 : ( ( Set -> Set ) ∋ ( ( λ x5420 -> ( ( Set -> Set ) ∋ ( ( λ x5430 -> if false then x5420 else x5420 ) ) ) $ ( x5420 ) ) ) ) $ ( if false then Bool else Bool )
        d540 = if if false then d424 else d166 then if true then d533 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> x5410 ) ) ) $ ( d98 )
        d544 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> if true then Bool else x5460 ) ) ) $ ( if true then Bool else Bool )
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> if false then x5450 else false ) ) ) $ ( if d98 then d260 else true )
        d547 : ( ( Set -> Set ) ∋ ( ( λ x5490 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> if x5480 then true else false ) ) ) $ ( if d120 then true else false )
        d550 : if false then ( ( Set -> Set ) ∋ ( ( λ x5530 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d550 = if ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> x5510 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> true ) ) ) $ ( d510 ) else if d478 then d481 else true
        d554 : ( ( Set -> Set ) ∋ ( ( λ x5560 -> ( ( Set -> Set ) ∋ ( ( λ x5570 -> if false then x5570 else x5560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> if true then x5550 else false ) ) ) $ ( if false then d78 else true )
        d558 : if false then ( ( Set -> Set ) ∋ ( ( λ x5620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5630 -> x5630 ) ) ) $ ( Bool )
        d558 = if ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> d300 ) ) ) $ ( d190 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> true ) ) ) $ ( d348 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> true ) ) ) $ ( true )
        d564 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5680 -> x5680 ) ) ) $ ( Bool )
        d564 = if ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> x5660 ) ) ) $ ( d279 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> x5670 ) ) ) $ ( true )
        d569 : if false then ( ( Set -> Set ) ∋ ( ( λ x5720 -> x5720 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if d506 then x5700 else x5700 ) ) ) $ ( x5700 ) ) ) ) $ ( if d135 then true else d510 )
        d573 : if false then ( ( Set -> Set ) ∋ ( ( λ x5750 -> x5750 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d573 = ( ( Bool -> Bool ) ∋ ( ( λ x5740 -> if d232 then d533 else d391 ) ) ) $ ( if true then d42 else d382 )
        d576 : if false then ( ( Set -> Set ) ∋ ( ( λ x5780 -> x5780 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d576 = ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> if x5770 then false else x5770 ) ) ) $ ( if d237 then d257 else false )
        d579 : ( ( Set -> Set ) ∋ ( ( λ x5820 -> if true then x5820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> if x5800 then x5810 else x5800 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d583 : ( ( Set -> Set ) ∋ ( ( λ x5860 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> if d282 then false else x5840 ) ) ) $ ( d395 ) ) ) ) $ ( if false then d322 else d122 )
        d587 : if true then if false then Bool else Bool else if false then Bool else Bool
        d587 = ( ( Bool -> Bool ) ∋ ( ( λ x5880 -> ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> if true then d414 else false ) ) ) $ ( d130 ) ) ) ) $ ( if d406 then d465 else d573 )
        d590 : ( ( Set -> Set ) ∋ ( ( λ x5930 -> if true then x5930 else Bool ) ) ) $ ( if false then Bool else Bool )
        d590 = if ( ( Bool -> Bool ) ∋ ( ( λ x5910 -> d579 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5920 -> d469 ) ) ) $ ( false ) else if false then d465 else d182
        d594 : if true then ( ( Set -> Set ) ∋ ( ( λ x5960 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d594 = if if false then false else d573 then ( ( Bool -> Bool ) ∋ ( ( λ x5950 -> true ) ) ) $ ( false ) else if true then false else true
        d597 : ( ( Set -> Set ) ∋ ( ( λ x5990 -> ( ( Set -> Set ) ∋ ( ( λ x6000 -> if true then Bool else x6000 ) ) ) $ ( x5990 ) ) ) ) $ ( if true then Bool else Bool )
        d597 = if if d587 then true else false then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> true ) ) ) $ ( false )
        d601 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6020 -> Bool ) ) ) $ ( Bool )
        d601 = if if false then d254 else d116 then if d411 then d179 else false else if d395 then true else true
        d603 : ( ( Set -> Set ) ∋ ( ( λ x6060 -> ( ( Set -> Set ) ∋ ( ( λ x6070 -> if true then x6070 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d603 = if ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> true ) ) ) $ ( d489 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6050 -> d234 ) ) ) $ ( d311 ) else if d46 then d46 else false
        d608 : if false then ( ( Set -> Set ) ∋ ( ( λ x6100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6110 -> x6110 ) ) ) $ ( Bool )
        d608 = ( ( Bool -> Bool ) ∋ ( ( λ x6090 -> if x6090 then true else d203 ) ) ) $ ( if d249 then true else false )
        d612 : ( ( Set -> Set ) ∋ ( ( λ x6160 -> if false then x6160 else Bool ) ) ) $ ( if false then Bool else Bool )
        d612 = if ( ( Bool -> Bool ) ∋ ( ( λ x6130 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> x6140 ) ) ) $ ( d223 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> d249 ) ) ) $ ( d340 )
        d617 : if false then ( ( Set -> Set ) ∋ ( ( λ x6190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6200 -> Bool ) ) ) $ ( Bool )
        d617 = if if false then d597 else false then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x6180 -> true ) ) ) $ ( true )
        d621 : if true then ( ( Set -> Set ) ∋ ( ( λ x6240 -> x6240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6250 -> x6250 ) ) ) $ ( Bool )
        d621 = if if d414 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> x6220 ) ) ) $ ( d443 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> false ) ) ) $ ( true )
        d626 : if false then if true then Bool else Bool else if true then Bool else Bool
        d626 = ( ( Bool -> Bool ) ∋ ( ( λ x6270 -> if d382 then d515 else false ) ) ) $ ( if true then false else true )
        d628 : ( ( Set -> Set ) ∋ ( ( λ x6300 -> if false then x6300 else Bool ) ) ) $ ( if false then Bool else Bool )
        d628 = ( ( Bool -> Bool ) ∋ ( ( λ x6290 -> if false then true else x6290 ) ) ) $ ( if true then d190 else d530 )
        d631 : ( ( Set -> Set ) ∋ ( ( λ x6340 -> if true then Bool else x6340 ) ) ) $ ( if true then Bool else Bool )
        d631 = ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> if x6330 then d344 else false ) ) ) $ ( x6320 ) ) ) ) $ ( if false then false else d533 )
        d635 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6390 -> Bool ) ) ) $ ( Bool )
        d635 = if ( ( Bool -> Bool ) ∋ ( ( λ x6360 -> d485 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> d170 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> x6380 ) ) ) $ ( false )
        d640 : ( ( Set -> Set ) ∋ ( ( λ x6420 -> if false then x6420 else x6420 ) ) ) $ ( if true then Bool else Bool )
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> if x6410 then x6410 else x6410 ) ) ) $ ( if d289 then false else false )
        d643 : if false then ( ( Set -> Set ) ∋ ( ( λ x6450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6460 -> x6460 ) ) ) $ ( Bool )
        d643 = ( ( Bool -> Bool ) ∋ ( ( λ x6440 -> if d334 then true else false ) ) ) $ ( if true then false else true )
        d647 : ( ( Set -> Set ) ∋ ( ( λ x6500 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d647 = if ( ( Bool -> Bool ) ∋ ( ( λ x6480 -> x6480 ) ) ) $ ( d496 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> true ) ) ) $ ( false ) else if false then d350 else d98
        d651 : if false then ( ( Set -> Set ) ∋ ( ( λ x6540 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d651 = if if d9 then d109 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> x6520 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6530 -> x6530 ) ) ) $ ( false )
        d655 : if true then ( ( Set -> Set ) ∋ ( ( λ x6570 -> x6570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d655 = if if d60 then false else d579 then ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> d177 ) ) ) $ ( d365 ) else if d489 then d493 else d190
        d658 : if false then ( ( Set -> Set ) ∋ ( ( λ x6600 -> x6600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6610 -> x6610 ) ) ) $ ( Bool )
        d658 = if ( ( Bool -> Bool ) ∋ ( ( λ x6590 -> false ) ) ) $ ( true ) then if true then false else d193 else if true then false else true
        d662 : ( ( Set -> Set ) ∋ ( ( λ x6640 -> ( ( Set -> Set ) ∋ ( ( λ x6650 -> if false then Bool else Bool ) ) ) $ ( x6640 ) ) ) ) $ ( if true then Bool else Bool )
        d662 = if if false then false else d51 then if d510 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> x6630 ) ) ) $ ( d489 )
        d666 : if false then ( ( Set -> Set ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6700 -> Bool ) ) ) $ ( Bool )
        d666 = ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> if false then d327 else x6670 ) ) ) $ ( x6670 ) ) ) ) $ ( if d373 then d631 else d177 )
        d671 : ( ( Set -> Set ) ∋ ( ( λ x6750 -> ( ( Set -> Set ) ∋ ( ( λ x6760 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d671 = if ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> d340 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> false ) ) ) $ ( d433 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6740 -> x6740 ) ) ) $ ( d554 )
        d677 : if true then if true then Bool else Bool else if true then Bool else Bool
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> if true then true else true ) ) ) $ ( if true then false else true )
        d679 : if false then ( ( Set -> Set ) ∋ ( ( λ x6820 -> x6820 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d679 = if ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> x6800 ) ) ) $ ( d414 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> true ) ) ) $ ( d626 ) else if d9 then d297 else d300
        d683 : ( ( Set -> Set ) ∋ ( ( λ x6850 -> if true then x6850 else x6850 ) ) ) $ ( if true then Bool else Bool )
        d683 = ( ( Bool -> Bool ) ∋ ( ( λ x6840 -> if false then false else x6840 ) ) ) $ ( if d87 then false else true )
        d686 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6890 -> x6890 ) ) ) $ ( Bool )
        d686 = if ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> x6870 ) ) ) $ ( d521 ) then if d662 then d510 else d424 else ( ( Bool -> Bool ) ∋ ( ( λ x6880 -> true ) ) ) $ ( d489 )
        d690 : ( ( Set -> Set ) ∋ ( ( λ x6920 -> ( ( Set -> Set ) ∋ ( ( λ x6930 -> if false then x6930 else x6920 ) ) ) $ ( x6920 ) ) ) ) $ ( if true then Bool else Bool )
        d690 = if ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> x6910 ) ) ) $ ( true ) then if d15 then d145 else false else if false then true else d626
        d694 : ( ( Set -> Set ) ∋ ( ( λ x6960 -> ( ( Set -> Set ) ∋ ( ( λ x6970 -> if true then Bool else x6970 ) ) ) $ ( x6960 ) ) ) ) $ ( if true then Bool else Bool )
        d694 = if if false then d234 else true then if d268 then d69 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> d87 ) ) ) $ ( false )
        d698 : if true then ( ( Set -> Set ) ∋ ( ( λ x7000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d698 = if if false then d350 else d683 then ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> x6990 ) ) ) $ ( false ) else if true then d521 else d671
        d701 : if false then if false then Bool else Bool else if false then Bool else Bool
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> ( ( Bool -> Bool ) ∋ ( ( λ x7030 -> if true then d220 else true ) ) ) $ ( false ) ) ) ) $ ( if d658 then d279 else d322 )
        d704 : if true then ( ( Set -> Set ) ∋ ( ( λ x7070 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d704 = if if d9 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> x7050 ) ) ) $ ( d583 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> d148 ) ) ) $ ( d83 )
        d708 : ( ( Set -> Set ) ∋ ( ( λ x7100 -> ( ( Set -> Set ) ∋ ( ( λ x7110 -> if false then x7100 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d708 = if if d217 then d340 else true then if false then d340 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> false ) ) ) $ ( true )
        d712 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7140 -> Bool ) ) ) $ ( Bool )
        d712 = if ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> x7130 ) ) ) $ ( false ) then if true then d521 else false else if true then true else d690
        d715 : ( ( Set -> Set ) ∋ ( ( λ x7180 -> if true then x7180 else x7180 ) ) ) $ ( if true then Bool else Bool )
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x7160 -> ( ( Bool -> Bool ) ∋ ( ( λ x7170 -> if d126 then x7160 else false ) ) ) $ ( d671 ) ) ) ) $ ( if d319 then d617 else true )
        d719 : if true then ( ( Set -> Set ) ∋ ( ( λ x7220 -> x7220 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d719 = if ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> x7200 ) ) ) $ ( d485 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7210 -> false ) ) ) $ ( false ) else if true then false else d411
        d723 : if false then ( ( Set -> Set ) ∋ ( ( λ x7240 -> x7240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7250 -> Bool ) ) ) $ ( Bool )
        d723 = if if false then true else d196 then if true then true else d501 else if true then d245 else d90
        d726 : ( ( Set -> Set ) ∋ ( ( λ x7280 -> ( ( Set -> Set ) ∋ ( ( λ x7290 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d726 = ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> if d38 then true else false ) ) ) $ ( if true then false else d658 )
        d730 : if false then ( ( Set -> Set ) ∋ ( ( λ x7340 -> x7340 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7350 -> x7350 ) ) ) $ ( Bool )
        d730 = if ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> true ) ) ) $ ( d573 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> x7320 ) ) ) $ ( d264 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> d406 ) ) ) $ ( d139 )
        d736 : ( ( Set -> Set ) ∋ ( ( λ x7390 -> ( ( Set -> Set ) ∋ ( ( λ x7400 -> if false then x7400 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d736 = if if d608 then d102 else d350 then ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> x7370 ) ) ) $ ( d666 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7380 -> x7380 ) ) ) $ ( d22 )
        d741 : ( ( Set -> Set ) ∋ ( ( λ x7440 -> ( ( Set -> Set ) ∋ ( ( λ x7450 -> if false then Bool else Bool ) ) ) $ ( x7440 ) ) ) ) $ ( if false then Bool else Bool )
        d741 = if ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> d547 ) ) ) $ ( false ) then if d603 then true else d377 else ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> d42 ) ) ) $ ( true )
        d746 : ( ( Set -> Set ) ∋ ( ( λ x7490 -> if false then Bool else x7490 ) ) ) $ ( if true then Bool else Bool )
        d746 = ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> if true then x7470 else x7470 ) ) ) $ ( d658 ) ) ) ) $ ( if d690 then d515 else true )
        d750 : if false then ( ( Set -> Set ) ∋ ( ( λ x7520 -> x7520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7530 -> x7530 ) ) ) $ ( Bool )
        d750 = ( ( Bool -> Bool ) ∋ ( ( λ x7510 -> if true then d452 else x7510 ) ) ) $ ( if true then d493 else d597 )
        d754 : if true then ( ( Set -> Set ) ∋ ( ( λ x7570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7580 -> x7580 ) ) ) $ ( Bool )
        d754 = if ( ( Bool -> Bool ) ∋ ( ( λ x7550 -> true ) ) ) $ ( d496 ) then if true then d590 else true else ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> d635 ) ) ) $ ( d597 )
        d759 : if false then ( ( Set -> Set ) ∋ ( ( λ x7620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7630 -> x7630 ) ) ) $ ( Bool )
        d759 = ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> ( ( Bool -> Bool ) ∋ ( ( λ x7610 -> if d279 then d382 else x7600 ) ) ) $ ( d327 ) ) ) ) $ ( if true then d29 else true )
        d764 : ( ( Set -> Set ) ∋ ( ( λ x7670 -> ( ( Set -> Set ) ∋ ( ( λ x7680 -> if false then x7670 else Bool ) ) ) $ ( x7670 ) ) ) ) $ ( if true then Bool else Bool )
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> if d723 then d112 else x7660 ) ) ) $ ( x7650 ) ) ) ) $ ( if d452 then true else d457 )
        d769 : ( ( Set -> Set ) ∋ ( ( λ x7710 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d769 = if ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> d46 ) ) ) $ ( true ) then if true then false else true else if d579 then d334 else false
        d772 : ( ( Set -> Set ) ∋ ( ( λ x7740 -> ( ( Set -> Set ) ∋ ( ( λ x7750 -> if false then x7750 else x7750 ) ) ) $ ( x7740 ) ) ) ) $ ( if true then Bool else Bool )
        d772 = if if d282 then true else d12 then ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> false ) ) ) $ ( false ) else if false then d679 else d564
        d776 : if true then if false then Bool else Bool else if true then Bool else Bool
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x7770 -> if false then d241 else x7770 ) ) ) $ ( if false then true else d365 )
        d778 : ( ( Set -> Set ) ∋ ( ( λ x7810 -> if false then Bool else x7810 ) ) ) $ ( if true then Bool else Bool )
        d778 = ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> if true then x7800 else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else d276 )
        d782 : if false then ( ( Set -> Set ) ∋ ( ( λ x7840 -> x7840 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7850 -> x7850 ) ) ) $ ( Bool )
        d782 = if if false then true else true then if true then false else d257 else ( ( Bool -> Bool ) ∋ ( ( λ x7830 -> d196 ) ) ) $ ( true )
        d786 : ( ( Set -> Set ) ∋ ( ( λ x7900 -> ( ( Set -> Set ) ∋ ( ( λ x7910 -> if false then x7910 else x7910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d786 = if ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> x7870 ) ) ) $ ( d334 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> x7880 ) ) ) $ ( d51 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> x7890 ) ) ) $ ( true )
        d792 : ( ( Set -> Set ) ∋ ( ( λ x7950 -> ( ( Set -> Set ) ∋ ( ( λ x7960 -> if false then Bool else Bool ) ) ) $ ( x7950 ) ) ) ) $ ( if true then Bool else Bool )
        d792 = ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> if x7940 then d398 else x7940 ) ) ) $ ( x7930 ) ) ) ) $ ( if d608 then d647 else true )
        d797 : if true then ( ( Set -> Set ) ∋ ( ( λ x7980 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d797 = if if true then true else d268 then if false then d319 else false else if false then d237 else d438
        d799 : if false then if false then Bool else Bool else if true then Bool else Bool
        d799 = ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> if d365 then false else x8000 ) ) ) $ ( if d485 then d5 else d612 )
        d801 : ( ( Set -> Set ) ∋ ( ( λ x8040 -> if false then x8040 else x8040 ) ) ) $ ( if false then Bool else Bool )
        d801 = if ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> d145 ) ) ) $ ( d257 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> d348 ) ) ) $ ( true )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x8070 -> ( ( Set -> Set ) ∋ ( ( λ x8080 -> if true then x8070 else x8080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> if d569 then d237 else x8060 ) ) ) $ ( if true then d510 else d223 )
        d809 : if false then if false then Bool else Bool else if false then Bool else Bool
        d809 = ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> if x8100 then d213 else d12 ) ) ) $ ( true ) ) ) ) $ ( if false then d554 else true )
        d812 : if true then ( ( Set -> Set ) ∋ ( ( λ x8150 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d812 = ( ( Bool -> Bool ) ∋ ( ( λ x8130 -> ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> if true then d254 else d193 ) ) ) $ ( x8130 ) ) ) ) $ ( if d51 then d122 else d809 )
        d816 : ( ( Set -> Set ) ∋ ( ( λ x8180 -> if false then x8180 else x8180 ) ) ) $ ( if false then Bool else Bool )
        d816 = ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> if x8170 then d29 else d435 ) ) ) $ ( if false then d736 else false )
        d819 : if false then if false then Bool else Bool else if true then Bool else Bool
        d819 = if if false then d156 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> d353 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8210 -> x8210 ) ) ) $ ( true )
        d822 : ( ( Set -> Set ) ∋ ( ( λ x8260 -> ( ( Set -> Set ) ∋ ( ( λ x8270 -> if false then Bool else x8260 ) ) ) $ ( x8260 ) ) ) ) $ ( if false then Bool else Bool )
        d822 = if ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> d148 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> x8250 ) ) ) $ ( true )
        d828 : if false then if false then Bool else Bool else if true then Bool else Bool
        d828 = ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> if x8290 then d334 else x8300 ) ) ) $ ( d799 ) ) ) ) $ ( if d186 then false else d631 )
        d831 : ( ( Set -> Set ) ∋ ( ( λ x8340 -> ( ( Set -> Set ) ∋ ( ( λ x8350 -> if true then Bool else x8340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d831 = if ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> d540 ) ) ) $ ( d819 ) then if d683 then true else d98 else ( ( Bool -> Bool ) ∋ ( ( λ x8330 -> false ) ) ) $ ( true )
        d836 : ( ( Set -> Set ) ∋ ( ( λ x8390 -> ( ( Set -> Set ) ∋ ( ( λ x8400 -> if true then x8400 else x8400 ) ) ) $ ( x8390 ) ) ) ) $ ( if false then Bool else Bool )
        d836 = if ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> x8370 ) ) ) $ ( false ) then if true then d506 else d603 else ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> x8380 ) ) ) $ ( d177 )
        d841 : ( ( Set -> Set ) ∋ ( ( λ x8440 -> ( ( Set -> Set ) ∋ ( ( λ x8450 -> if false then x8450 else Bool ) ) ) $ ( x8440 ) ) ) ) $ ( if true then Bool else Bool )
        d841 = if ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> d232 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8430 -> d583 ) ) ) $ ( d182 ) else if d109 then d643 else d540
        d846 : if true then ( ( Set -> Set ) ∋ ( ( λ x8470 -> x8470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8480 -> Bool ) ) ) $ ( Bool )
        d846 = if if d245 then d179 else true then if true then false else true else if d276 then false else d142
        d849 : if true then if false then Bool else Bool else if false then Bool else Bool
        d849 = if if d98 then d621 else d174 then ( ( Bool -> Bool ) ∋ ( ( λ x8500 -> true ) ) ) $ ( d122 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8510 -> true ) ) ) $ ( true )
        d852 : ( ( Set -> Set ) ∋ ( ( λ x8540 -> ( ( Set -> Set ) ∋ ( ( λ x8550 -> if false then x8540 else x8550 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d852 = if ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> d846 ) ) ) $ ( d626 ) then if d166 then d841 else true else if true then true else true
        d856 : if false then if false then Bool else Bool else if true then Bool else Bool
        d856 = ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> ( ( Bool -> Bool ) ∋ ( ( λ x8580 -> if x8580 then x8570 else x8570 ) ) ) $ ( x8570 ) ) ) ) $ ( if true then d145 else true )
        d859 : if false then ( ( Set -> Set ) ∋ ( ( λ x8600 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8610 -> Bool ) ) ) $ ( Bool )
        d859 = if if true then d726 else d65 then if true then d126 else d569 else if d816 then d331 else false
        d862 : ( ( Set -> Set ) ∋ ( ( λ x8650 -> if true then Bool else x8650 ) ) ) $ ( if false then Bool else Bool )
        d862 = ( ( Bool -> Bool ) ∋ ( ( λ x8630 -> ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> if x8630 then d334 else x8640 ) ) ) $ ( false ) ) ) ) $ ( if d307 then false else false )
        d866 : ( ( Set -> Set ) ∋ ( ( λ x8680 -> if false then Bool else x8680 ) ) ) $ ( if true then Bool else Bool )
        d866 = if if d836 then d746 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8670 -> d225 ) ) ) $ ( true ) else if d257 then true else d438
        d869 : ( ( Set -> Set ) ∋ ( ( λ x8720 -> ( ( Set -> Set ) ∋ ( ( λ x8730 -> if false then x8720 else Bool ) ) ) $ ( x8720 ) ) ) ) $ ( if true then Bool else Bool )
        d869 = if ( ( Bool -> Bool ) ∋ ( ( λ x8700 -> x8700 ) ) ) $ ( d311 ) then if d142 then d524 else d701 else ( ( Bool -> Bool ) ∋ ( ( λ x8710 -> d297 ) ) ) $ ( d786 )
        d874 : ( ( Set -> Set ) ∋ ( ( λ x8770 -> if true then x8770 else x8770 ) ) ) $ ( if true then Bool else Bool )
        d874 = ( ( Bool -> Bool ) ∋ ( ( λ x8750 -> ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> if d46 then true else x8750 ) ) ) $ ( d822 ) ) ) ) $ ( if false then d377 else true )
        d878 : if false then ( ( Set -> Set ) ∋ ( ( λ x8810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8820 -> Bool ) ) ) $ ( Bool )
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x8790 -> ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> if d126 then x8790 else x8800 ) ) ) $ ( d683 ) ) ) ) $ ( if d369 then false else d340 )
        d883 : if true then ( ( Set -> Set ) ∋ ( ( λ x8850 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d883 = if ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> true ) ) ) $ ( true ) then if false then d831 else false else if false then d223 else d15
        d886 : if true then ( ( Set -> Set ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d886 = ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> if d411 then false else d690 ) ) ) $ ( if d135 then true else d428 )
        d889 : ( ( Set -> Set ) ∋ ( ( λ x8910 -> if true then Bool else x8910 ) ) ) $ ( if false then Bool else Bool )
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x8900 -> if x8900 then true else d478 ) ) ) $ ( if true then d510 else d435 )
        d892 : if true then ( ( Set -> Set ) ∋ ( ( λ x8950 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d892 = if ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> d527 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> x8940 ) ) ) $ ( d5 ) else if d46 then d357 else d647
        d896 : ( ( Set -> Set ) ∋ ( ( λ x8990 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d896 = ( ( Bool -> Bool ) ∋ ( ( λ x8970 -> ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> if d597 then x8970 else x8980 ) ) ) $ ( d603 ) ) ) ) $ ( if d447 then true else d73 )
        d900 : if false then if true then Bool else Bool else if true then Bool else Bool
        d900 = ( ( Bool -> Bool ) ∋ ( ( λ x9010 -> if x9010 then d289 else true ) ) ) $ ( if true then d1 else false )
        d902 : if false then ( ( Set -> Set ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9050 -> x9050 ) ) ) $ ( Bool )
        d902 = ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> if false then d501 else x9030 ) ) ) $ ( if d587 then d590 else d704 )
        d906 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9080 -> x9080 ) ) ) $ ( Bool )
        d906 = ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> if true then d510 else d521 ) ) ) $ ( if d836 then d759 else d268 )
        d909 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9100 -> x9100 ) ) ) $ ( Bool )
        d909 = if if d206 then d892 else true then if d866 then d282 else d331 else if d698 then d698 else d801
        d911 : ( ( Set -> Set ) ∋ ( ( λ x9130 -> if true then x9130 else x9130 ) ) ) $ ( if true then Bool else Bool )
        d911 = ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> if true then d544 else false ) ) ) $ ( if d859 then d1 else d130 )
        d914 : if true then ( ( Set -> Set ) ∋ ( ( λ x9160 -> x9160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9170 -> x9170 ) ) ) $ ( Bool )
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> if x9150 then true else x9150 ) ) ) $ ( if d473 then d886 else true )
        d918 : ( ( Set -> Set ) ∋ ( ( λ x9200 -> if true then x9200 else x9200 ) ) ) $ ( if true then Bool else Bool )
        d918 = ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> if false then d234 else true ) ) ) $ ( if d816 then true else true )
        d921 : if true then ( ( Set -> Set ) ∋ ( ( λ x9240 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d921 = if if d809 then d686 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> d914 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9230 -> x9230 ) ) ) $ ( d440 )
        d925 : if true then if true then Bool else Bool else if false then Bool else Bool
        d925 = if ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> d809 ) ) ) $ ( d772 ) then if d510 then true else d116 else ( ( Bool -> Bool ) ∋ ( ( λ x9270 -> x9270 ) ) ) $ ( d583 )
        d928 : ( ( Set -> Set ) ∋ ( ( λ x9320 -> ( ( Set -> Set ) ∋ ( ( λ x9330 -> if true then x9330 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d928 = if ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> x9290 ) ) ) $ ( d382 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9300 -> d386 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> x9310 ) ) ) $ ( d395 )
        d934 : if false then ( ( Set -> Set ) ∋ ( ( λ x9360 -> x9360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> if d928 then x9350 else true ) ) ) $ ( if true then d683 else false )
        d937 : ( ( Set -> Set ) ∋ ( ( λ x9380 -> ( ( Set -> Set ) ∋ ( ( λ x9390 -> if false then x9380 else x9380 ) ) ) $ ( x9380 ) ) ) ) $ ( if false then Bool else Bool )
        d937 = if if true then d249 else d816 then if false then false else d193 else if d156 then true else d889
        d940 : ( ( Set -> Set ) ∋ ( ( λ x9430 -> if false then Bool else x9430 ) ) ) $ ( if false then Bool else Bool )
        d940 = if ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> d282 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9420 -> d234 ) ) ) $ ( d778 ) else if d828 then d350 else true
        d944 : if false then if false then Bool else Bool else if true then Bool else Bool
        d944 = if if true then d148 else true then if false then d547 else d812 else ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> d112 ) ) ) $ ( false )
        d946 : ( ( Set -> Set ) ∋ ( ( λ x9490 -> ( ( Set -> Set ) ∋ ( ( λ x9500 -> if true then Bool else Bool ) ) ) $ ( x9490 ) ) ) ) $ ( if false then Bool else Bool )
        d946 = if if false then true else d90 then ( ( Bool -> Bool ) ∋ ( ( λ x9470 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> d193 ) ) ) $ ( d831 )
        d951 : if false then if false then Bool else Bool else if true then Bool else Bool
        d951 = ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> if x9530 then x9530 else x9530 ) ) ) $ ( false ) ) ) ) $ ( if d869 then d527 else d530 )
        d954 : if false then ( ( Set -> Set ) ∋ ( ( λ x9550 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d954 = if if d365 then d708 else true then if d60 then false else d918 else if d260 then d651 else d594
        d956 : ( ( Set -> Set ) ∋ ( ( λ x9590 -> if false then Bool else x9590 ) ) ) $ ( if false then Bool else Bool )
        d956 = ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> if d461 then d764 else false ) ) ) $ ( d268 ) ) ) ) $ ( if d769 then d438 else true )
        d960 : ( ( Set -> Set ) ∋ ( ( λ x9630 -> ( ( Set -> Set ) ∋ ( ( λ x9640 -> if true then x9640 else Bool ) ) ) $ ( x9630 ) ) ) ) $ ( if true then Bool else Bool )
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> if d193 then d90 else d816 ) ) ) $ ( d701 ) ) ) ) $ ( if false then false else d524 )
        d965 : ( ( Set -> Set ) ∋ ( ( λ x9670 -> if false then Bool else x9670 ) ) ) $ ( if true then Bool else Bool )
        d965 = if if d232 then d264 else d135 then if false then d612 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> x9660 ) ) ) $ ( false )
        d968 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9710 -> x9710 ) ) ) $ ( Bool )
        d968 = if ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> x9690 ) ) ) $ ( d148 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> d344 ) ) ) $ ( false ) else if true then d510 else d447
        d972 : ( ( Set -> Set ) ∋ ( ( λ x9750 -> ( ( Set -> Set ) ∋ ( ( λ x9760 -> if false then x9760 else Bool ) ) ) $ ( x9750 ) ) ) ) $ ( if true then Bool else Bool )
        d972 = if ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> d686 ) ) ) $ ( d78 ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x9740 -> false ) ) ) $ ( false )
        d977 : ( ( Set -> Set ) ∋ ( ( λ x9810 -> ( ( Set -> Set ) ∋ ( ( λ x9820 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d977 = if ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> false ) ) ) $ ( d856 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> x9790 ) ) ) $ ( d617 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9800 -> x9800 ) ) ) $ ( d116 )
        d983 : if true then ( ( Set -> Set ) ∋ ( ( λ x9860 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d983 = if ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> d485 ) ) ) $ ( d677 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> x9850 ) ) ) $ ( d268 ) else if true then d357 else true
        d987 : if false then ( ( Set -> Set ) ∋ ( ( λ x9900 -> x9900 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d987 = if ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> x9880 ) ) ) $ ( d946 ) then if true then false else d264 else ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> x9890 ) ) ) $ ( d112 )
        d991 : ( ( Set -> Set ) ∋ ( ( λ x9930 -> ( ( Set -> Set ) ∋ ( ( λ x9940 -> if false then Bool else Bool ) ) ) $ ( x9930 ) ) ) ) $ ( if false then Bool else Bool )
        d991 = if if true then d419 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> x9920 ) ) ) $ ( true ) else if true then d741 else d677
        d995 : if false then if true then Bool else Bool else if false then Bool else Bool
        d995 = if if d489 then false else d473 then ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> false ) ) ) $ ( d886 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> x9970 ) ) ) $ ( d786 )
        d998 : if false then if false then Bool else Bool else if false then Bool else Bool
        d998 = if ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> true ) ) ) $ ( d576 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10000 -> false ) ) ) $ ( d715 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> x10010 ) ) ) $ ( true )
        d1002 : if false then ( ( Set -> Set ) ∋ ( ( λ x10040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10050 -> x10050 ) ) ) $ ( Bool )
        d1002 = if ( ( Bool -> Bool ) ∋ ( ( λ x10030 -> x10030 ) ) ) $ ( false ) then if false then d496 else d712 else if d179 then d353 else d909
        d1006 : ( ( Set -> Set ) ∋ ( ( λ x10080 -> ( ( Set -> Set ) ∋ ( ( λ x10090 -> if true then x10080 else Bool ) ) ) $ ( x10080 ) ) ) ) $ ( if false then Bool else Bool )
        d1006 = if ( ( Bool -> Bool ) ∋ ( ( λ x10070 -> x10070 ) ) ) $ ( d792 ) then if d29 then d473 else false else if false then d658 else false
        d1010 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10130 -> Bool ) ) ) $ ( Bool )
        d1010 = if if d369 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x10110 -> d357 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> x10120 ) ) ) $ ( true )
        d1014 : if false then ( ( Set -> Set ) ∋ ( ( λ x10170 -> x10170 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1014 = if if d179 then d594 else d655 then ( ( Bool -> Bool ) ∋ ( ( λ x10150 -> d9 ) ) ) $ ( d148 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> d805 ) ) ) $ ( true )
        d1018 : if false then ( ( Set -> Set ) ∋ ( ( λ x10200 -> x10200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10210 -> x10210 ) ) ) $ ( Bool )
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> if x10190 then d896 else x10190 ) ) ) $ ( if true then false else false )
        d1022 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10240 -> x10240 ) ) ) $ ( Bool )
        d1022 = if if false then d411 else d319 then if true then true else d640 else ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> x10230 ) ) ) $ ( d148 )
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x10270 -> ( ( Set -> Set ) ∋ ( ( λ x10280 -> if true then x10280 else x10270 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> if x10260 then false else x10260 ) ) ) $ ( if false then true else true )
        d1029 : if false then ( ( Set -> Set ) ∋ ( ( λ x10320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10330 -> x10330 ) ) ) $ ( Bool )
        d1029 = ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> if false then d754 else x10300 ) ) ) $ ( x10300 ) ) ) ) $ ( if false then d348 else d398 )
        d1034 : if true then ( ( Set -> Set ) ∋ ( ( λ x10360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10370 -> x10370 ) ) ) $ ( Bool )
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if d704 then x10350 else d55 ) ) ) $ ( if d1 then false else true )
        d1038 : ( ( Set -> Set ) ∋ ( ( λ x10420 -> if true then x10420 else x10420 ) ) ) $ ( if true then Bool else Bool )
        d1038 = if ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> d46 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10400 -> true ) ) ) $ ( d9 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> x10410 ) ) ) $ ( d206 )
        d1043 : if false then ( ( Set -> Set ) ∋ ( ( λ x10460 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> if x10440 then false else x10440 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d282 )
        d1047 : ( ( Set -> Set ) ∋ ( ( λ x10510 -> if true then x10510 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1047 = if ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> d573 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> x10500 ) ) ) $ ( d679 )
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x10540 -> ( ( Set -> Set ) ∋ ( ( λ x10550 -> if false then x10540 else x10550 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1052 = ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> if false then d671 else d1010 ) ) ) $ ( if d594 then d666 else false )
        d1056 : if false then ( ( Set -> Set ) ∋ ( ( λ x10590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1056 = if ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> d297 ) ) ) $ ( false ) then if true then d991 else d148 else ( ( Bool -> Bool ) ∋ ( ( λ x10580 -> d914 ) ) ) $ ( true )
        d1060 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1060 = if if d398 then d1006 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> false ) ) ) $ ( false ) else if d319 then d411 else d640
        d1062 : if true then ( ( Set -> Set ) ∋ ( ( λ x10640 -> x10640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10650 -> x10650 ) ) ) $ ( Bool )
        d1062 = if if d182 then d395 else d626 then ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> x10630 ) ) ) $ ( d778 ) else if false then true else d708
        d1066 : if true then ( ( Set -> Set ) ∋ ( ( λ x10690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10700 -> Bool ) ) ) $ ( Bool )
        d1066 = if ( ( Bool -> Bool ) ∋ ( ( λ x10670 -> d457 ) ) ) $ ( d340 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> false ) ) ) $ ( d160 ) else if d65 then false else true
        d1071 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> ( ( Set -> Set ) ∋ ( ( λ x10750 -> if false then x10740 else x10750 ) ) ) $ ( x10740 ) ) ) ) $ ( if true then Bool else Bool )
        d1071 = if ( ( Bool -> Bool ) ∋ ( ( λ x10720 -> false ) ) ) $ ( d152 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> true ) ) ) $ ( false ) else if false then true else false
        d1076 : ( ( Set -> Set ) ∋ ( ( λ x10790 -> if false then x10790 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1076 = ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> if d956 then false else d95 ) ) ) $ ( d900 ) ) ) ) $ ( if true then d819 else d677 )
        d1080 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10830 -> x10830 ) ) ) $ ( Bool )
        d1080 = if ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> true ) ) ) $ ( d142 ) then if false then true else d373 else ( ( Bool -> Bool ) ∋ ( ( λ x10820 -> d1071 ) ) ) $ ( d428 )
        d1084 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> if false then x10850 else x10850 ) ) ) $ ( if false then true else d836 )
        d1086 : ( ( Set -> Set ) ∋ ( ( λ x10890 -> ( ( Set -> Set ) ∋ ( ( λ x10900 -> if false then x10900 else x10900 ) ) ) $ ( x10890 ) ) ) ) $ ( if false then Bool else Bool )
        d1086 = if if false then d142 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10870 -> false ) ) ) $ ( d741 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> d764 ) ) ) $ ( d120 )
        d1091 : if true then ( ( Set -> Set ) ∋ ( ( λ x10930 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10940 -> Bool ) ) ) $ ( Bool )
        d1091 = if if false then d946 else d331 then ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> true ) ) ) $ ( true ) else if false then d73 else true
        d1095 : if false then ( ( Set -> Set ) ∋ ( ( λ x10980 -> x10980 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10990 -> Bool ) ) ) $ ( Bool )
        d1095 = ( ( Bool -> Bool ) ∋ ( ( λ x10960 -> ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> if false then d937 else true ) ) ) $ ( false ) ) ) ) $ ( if d690 then false else false )
        d1100 : ( ( Set -> Set ) ∋ ( ( λ x11030 -> if false then x11030 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1100 = ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> if false then x11020 else false ) ) ) $ ( x11010 ) ) ) ) $ ( if true then true else d203 )
        d1104 : ( ( Set -> Set ) ∋ ( ( λ x11060 -> ( ( Set -> Set ) ∋ ( ( λ x11070 -> if true then x11070 else Bool ) ) ) $ ( x11060 ) ) ) ) $ ( if false then Bool else Bool )
        d1104 = ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> if x11050 then true else d264 ) ) ) $ ( if false then d34 else d510 )
        d1108 : ( ( Set -> Set ) ∋ ( ( λ x11100 -> if true then Bool else x11100 ) ) ) $ ( if false then Bool else Bool )
        d1108 = ( ( Bool -> Bool ) ∋ ( ( λ x11090 -> if x11090 then d631 else true ) ) ) $ ( if true then false else true )
        d1111 : ( ( Set -> Set ) ∋ ( ( λ x11140 -> if true then x11140 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1111 = if ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> x11120 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11130 -> d1029 ) ) ) $ ( true ) else if true then d726 else d951
        d1115 : if false then ( ( Set -> Set ) ∋ ( ( λ x11170 -> x11170 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11180 -> x11180 ) ) ) $ ( Bool )
        d1115 = ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> if true then x11160 else d109 ) ) ) $ ( if false then false else d152 )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x11220 -> if true then Bool else x11220 ) ) ) $ ( if true then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x11200 -> ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> if true then true else x11210 ) ) ) $ ( x11200 ) ) ) ) $ ( if false then d1022 else d914 )
        d1123 : ( ( Set -> Set ) ∋ ( ( λ x11260 -> if true then Bool else x11260 ) ) ) $ ( if true then Bool else Bool )
        d1123 = if ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> x11240 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> d536 ) ) ) $ ( d730 ) else if true then d42 else false
        d1127 : ( ( Set -> Set ) ∋ ( ( λ x11300 -> if true then Bool else x11300 ) ) ) $ ( if true then Bool else Bool )
        d1127 = ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> ( ( Bool -> Bool ) ∋ ( ( λ x11290 -> if d708 then x11290 else d679 ) ) ) $ ( x11280 ) ) ) ) $ ( if false then false else d506 )
        d1131 : ( ( Set -> Set ) ∋ ( ( λ x11330 -> ( ( Set -> Set ) ∋ ( ( λ x11340 -> if true then Bool else x11340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> if x11320 then d126 else false ) ) ) $ ( if d621 then true else false )
        d1135 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11380 -> Bool ) ) ) $ ( Bool )
        d1135 = if ( ( Bool -> Bool ) ∋ ( ( λ x11360 -> false ) ) ) $ ( true ) then if false then true else d104 else ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> x11370 ) ) ) $ ( true )
        d1139 : if true then ( ( Set -> Set ) ∋ ( ( λ x11410 -> x11410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11420 -> Bool ) ) ) $ ( Bool )
        d1139 = if if false then d493 else true then ( ( Bool -> Bool ) ∋ ( ( λ x11400 -> true ) ) ) $ ( true ) else if false then d906 else d126
        d1143 : ( ( Set -> Set ) ∋ ( ( λ x11460 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1143 = if ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> true ) ) ) $ ( d960 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> x11450 ) ) ) $ ( d225 ) else if true then true else true
        d1147 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11500 -> x11500 ) ) ) $ ( Bool )
        d1147 = if if false then d87 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> x11490 ) ) ) $ ( d1139 )
        d1151 : ( ( Set -> Set ) ∋ ( ( λ x11540 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1151 = ( ( Bool -> Bool ) ∋ ( ( λ x11520 -> ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> if x11530 then x11520 else false ) ) ) $ ( x11520 ) ) ) ) $ ( if false then true else true )
        d1155 : ( ( Set -> Set ) ∋ ( ( λ x11580 -> ( ( Set -> Set ) ∋ ( ( λ x11590 -> if true then Bool else x11580 ) ) ) $ ( x11580 ) ) ) ) $ ( if true then Bool else Bool )
        d1155 = if ( ( Bool -> Bool ) ∋ ( ( λ x11560 -> true ) ) ) $ ( d109 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> true ) ) ) $ ( d828 ) else if false then d419 else d174
        d1160 : if false then ( ( Set -> Set ) ∋ ( ( λ x11630 -> x11630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11640 -> Bool ) ) ) $ ( Bool )
        d1160 = if ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11620 -> false ) ) ) $ ( true ) else if d398 then d869 else false
        d1165 : ( ( Set -> Set ) ∋ ( ( λ x11680 -> ( ( Set -> Set ) ∋ ( ( λ x11690 -> if true then Bool else Bool ) ) ) $ ( x11680 ) ) ) ) $ ( if true then Bool else Bool )
        d1165 = if ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> d465 ) ) ) $ ( d1006 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> true ) ) ) $ ( false ) else if d435 then d232 else false
        d1170 : ( ( Set -> Set ) ∋ ( ( λ x11730 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1170 = ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> if d300 then x11720 else d46 ) ) ) $ ( d1123 ) ) ) ) $ ( if false then false else d1151 )
        d1174 : ( ( Set -> Set ) ∋ ( ( λ x11770 -> if true then Bool else x11770 ) ) ) $ ( if true then Bool else Bool )
        d1174 = ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> if false then x11750 else d1151 ) ) ) $ ( true ) ) ) ) $ ( if true then d297 else true )
        d1178 : ( ( Set -> Set ) ∋ ( ( λ x11800 -> ( ( Set -> Set ) ∋ ( ( λ x11810 -> if true then Bool else x11810 ) ) ) $ ( x11800 ) ) ) ) $ ( if false then Bool else Bool )
        d1178 = ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> if d527 then x11790 else true ) ) ) $ ( if false then false else false )
        d1182 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1182 = if ( ( Bool -> Bool ) ∋ ( ( λ x11830 -> d1135 ) ) ) $ ( d120 ) then if d419 then d866 else d174 else ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> false ) ) ) $ ( d883 )
        d1185 : ( ( Set -> Set ) ∋ ( ( λ x11870 -> ( ( Set -> Set ) ∋ ( ( λ x11880 -> if true then x11870 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1185 = if if d554 then d260 else d831 then if true then true else d1147 else ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> true ) ) ) $ ( d934 )
        d1189 : if true then ( ( Set -> Set ) ∋ ( ( λ x11920 -> x11920 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11930 -> x11930 ) ) ) $ ( Bool )
        d1189 = ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> ( ( Bool -> Bool ) ∋ ( ( λ x11910 -> if x11910 then d142 else false ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d1194 : ( ( Set -> Set ) ∋ ( ( λ x11970 -> ( ( Set -> Set ) ∋ ( ( λ x11980 -> if true then x11980 else Bool ) ) ) $ ( x11970 ) ) ) ) $ ( if false then Bool else Bool )
        d1194 = if if d190 then d686 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> x11950 ) ) ) $ ( d772 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> x11960 ) ) ) $ ( false )
        d1199 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1199 = ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> if true then x12000 else x12010 ) ) ) $ ( x12000 ) ) ) ) $ ( if d232 then d626 else d307 )
        d1202 : if true then ( ( Set -> Set ) ∋ ( ( λ x12050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12060 -> Bool ) ) ) $ ( Bool )
        d1202 = ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> ( ( Bool -> Bool ) ∋ ( ( λ x12040 -> if d510 then true else false ) ) ) $ ( false ) ) ) ) $ ( if d501 then true else d249 )
        d1207 : ( ( Set -> Set ) ∋ ( ( λ x12090 -> ( ( Set -> Set ) ∋ ( ( λ x12100 -> if true then Bool else x12090 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1207 = ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> if x12080 then false else x12080 ) ) ) $ ( if d679 then false else d640 )
        d1211 : ( ( Set -> Set ) ∋ ( ( λ x12130 -> ( ( Set -> Set ) ∋ ( ( λ x12140 -> if false then Bool else Bool ) ) ) $ ( x12130 ) ) ) ) $ ( if false then Bool else Bool )
        d1211 = if if d428 then d447 else d1135 then ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> true ) ) ) $ ( true ) else if d122 then false else d1123
        d1215 : if true then ( ( Set -> Set ) ∋ ( ( λ x12180 -> x12180 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1215 = ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> if d1 then false else false ) ) ) $ ( false ) ) ) ) $ ( if false then d1155 else d223 )
        d1219 : ( ( Set -> Set ) ∋ ( ( λ x12210 -> ( ( Set -> Set ) ∋ ( ( λ x12220 -> if false then x12220 else x12220 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1219 = ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> if d457 then x12200 else d177 ) ) ) $ ( if true then true else true )
        d1223 : ( ( Set -> Set ) ∋ ( ( λ x12250 -> if true then Bool else x12250 ) ) ) $ ( if false then Bool else Bool )
        d1223 = if if d55 then true else false then if d902 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> d640 ) ) ) $ ( d1211 )
        d1226 : if true then ( ( Set -> Set ) ∋ ( ( λ x12280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12290 -> x12290 ) ) ) $ ( Bool )
        d1226 = ( ( Bool -> Bool ) ∋ ( ( λ x12270 -> if d708 then d965 else d104 ) ) ) $ ( if d217 then d801 else d583 )
        d1230 : ( ( Set -> Set ) ∋ ( ( λ x12320 -> ( ( Set -> Set ) ∋ ( ( λ x12330 -> if true then x12330 else Bool ) ) ) $ ( x12320 ) ) ) ) $ ( if false then Bool else Bool )
        d1230 = ( ( Bool -> Bool ) ∋ ( ( λ x12310 -> if d723 then d142 else d95 ) ) ) $ ( if true then true else true )
        d1234 : ( ( Set -> Set ) ∋ ( ( λ x12360 -> if true then x12360 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1234 = ( ( Bool -> Bool ) ∋ ( ( λ x12350 -> if false then true else true ) ) ) $ ( if d841 then d268 else false )
        d1237 : ( ( Set -> Set ) ∋ ( ( λ x12380 -> ( ( Set -> Set ) ∋ ( ( λ x12390 -> if false then x12380 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1237 = if if d411 then false else true then if d1219 then d677 else false else if d1014 then d1189 else true
        d1240 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12420 -> x12420 ) ) ) $ ( Bool )
        d1240 = ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> if x12410 then d862 else d428 ) ) ) $ ( if d631 then false else d112 )
        d1243 : if false then ( ( Set -> Set ) ∋ ( ( λ x12450 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1243 = if if d260 then false else d828 then if false then d521 else d95 else ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> true ) ) ) $ ( false )
        d1246 : ( ( Set -> Set ) ∋ ( ( λ x12490 -> if true then x12490 else x12490 ) ) ) $ ( if true then Bool else Bool )
        d1246 = ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> if x12480 then true else d828 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d944 )
        d1250 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1250 = ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> if false then x12520 else true ) ) ) $ ( false ) ) ) ) $ ( if true then true else d1174 )
        d1253 : ( ( Set -> Set ) ∋ ( ( λ x12550 -> if false then Bool else x12550 ) ) ) $ ( if false then Bool else Bool )
        d1253 = ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> if false then x12540 else d447 ) ) ) $ ( if d869 then true else true )
        d1256 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12590 -> x12590 ) ) ) $ ( Bool )
        d1256 = ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> if false then d78 else false ) ) ) $ ( true ) ) ) ) $ ( if false then d398 else d485 )
        d1260 : ( ( Set -> Set ) ∋ ( ( λ x12640 -> ( ( Set -> Set ) ∋ ( ( λ x12650 -> if true then x12640 else x12650 ) ) ) $ ( x12640 ) ) ) ) $ ( if false then Bool else Bool )
        d1260 = if ( ( Bool -> Bool ) ∋ ( ( λ x12610 -> d1253 ) ) ) $ ( d968 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> true ) ) ) $ ( d723 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> x12630 ) ) ) $ ( true )
        d1266 : if true then ( ( Set -> Set ) ∋ ( ( λ x12690 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1266 = ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> if d736 then false else d754 ) ) ) $ ( x12670 ) ) ) ) $ ( if d268 then false else d1202 )
        d1270 : if true then ( ( Set -> Set ) ∋ ( ( λ x12720 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12730 -> Bool ) ) ) $ ( Bool )
        d1270 = ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> if d746 then x12710 else false ) ) ) $ ( if d1084 then false else d245 )
        d1274 : if false then ( ( Set -> Set ) ∋ ( ( λ x12770 -> x12770 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1274 = if ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> d1071 ) ) ) $ ( false ) then if d1185 then true else d440 else ( ( Bool -> Bool ) ∋ ( ( λ x12760 -> x12760 ) ) ) $ ( false )
        d1278 : ( ( Set -> Set ) ∋ ( ( λ x12800 -> ( ( Set -> Set ) ∋ ( ( λ x12810 -> if false then Bool else Bool ) ) ) $ ( x12800 ) ) ) ) $ ( if false then Bool else Bool )
        d1278 = if ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> true ) ) ) $ ( d782 ) then if d116 then d805 else true else if d156 then d1066 else true
        d1282 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1282 = if if false then true else true then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> x12830 ) ) ) $ ( d946 )
        d1284 : if true then ( ( Set -> Set ) ∋ ( ( λ x12860 -> x12860 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1284 = ( ( Bool -> Bool ) ∋ ( ( λ x12850 -> if false then x12850 else true ) ) ) $ ( if d956 then d601 else false )
        d1287 : ( ( Set -> Set ) ∋ ( ( λ x12890 -> ( ( Set -> Set ) ∋ ( ( λ x12900 -> if false then x12900 else x12900 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1287 = ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> if d677 then false else x12880 ) ) ) $ ( if false then false else d1127 )
        d1291 : ( ( Set -> Set ) ∋ ( ( λ x12940 -> if false then x12940 else x12940 ) ) ) $ ( if false then Bool else Bool )
        d1291 = if if d550 then d612 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x12920 -> false ) ) ) $ ( d414 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> true ) ) ) $ ( false )
        d1295 : if true then ( ( Set -> Set ) ∋ ( ( λ x12980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12990 -> x12990 ) ) ) $ ( Bool )
        d1295 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> false ) ) ) $ ( false )
        d1300 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1300 = ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> ( ( Bool -> Bool ) ∋ ( ( λ x13020 -> if true then x13010 else false ) ) ) $ ( x13010 ) ) ) ) $ ( if true then d489 else d968 )
        d1303 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13060 -> Bool ) ) ) $ ( Bool )
        d1303 = ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> ( ( Bool -> Bool ) ∋ ( ( λ x13050 -> if x13040 then false else d515 ) ) ) $ ( x13040 ) ) ) ) $ ( if d603 then true else d866 )
        d1307 : ( ( Set -> Set ) ∋ ( ( λ x13100 -> if false then x13100 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1307 = ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> if d792 then x13090 else false ) ) ) $ ( x13080 ) ) ) ) $ ( if false then d1256 else d874 )
        d1311 : if false then ( ( Set -> Set ) ∋ ( ( λ x13140 -> x13140 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13150 -> x13150 ) ) ) $ ( Bool )
        d1311 = if ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> false ) ) ) $ ( false ) else if d816 then d1243 else true
        d1316 : if false then ( ( Set -> Set ) ∋ ( ( λ x13180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13190 -> Bool ) ) ) $ ( Bool )
        d1316 = ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> if d297 then x13170 else d776 ) ) ) $ ( if d786 then false else d866 )
        d1320 : ( ( Set -> Set ) ∋ ( ( λ x13210 -> ( ( Set -> Set ) ∋ ( ( λ x13220 -> if false then Bool else Bool ) ) ) $ ( x13210 ) ) ) ) $ ( if true then Bool else Bool )
        d1320 = if if d481 then d828 else false then if d177 then d139 else d196 else if d1182 then d750 else d435
        d1323 : ( ( Set -> Set ) ∋ ( ( λ x13260 -> if false then x13260 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1323 = if if d112 then d1240 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> x13240 ) ) ) $ ( d1155 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13250 -> false ) ) ) $ ( d928 )
        d1327 : ( ( Set -> Set ) ∋ ( ( λ x13300 -> ( ( Set -> Set ) ∋ ( ( λ x13310 -> if false then x13310 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1327 = if ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> d220 ) ) ) $ ( d360 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> x13290 ) ) ) $ ( d461 ) else if d792 then true else d411
        d1332 : if false then ( ( Set -> Set ) ∋ ( ( λ x13340 -> x13340 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13350 -> x13350 ) ) ) $ ( Bool )
        d1332 = if if d776 then d382 else true then if false then d874 else d686 else ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> x13330 ) ) ) $ ( true )
        d1336 : ( ( Set -> Set ) ∋ ( ( λ x13390 -> if true then Bool else x13390 ) ) ) $ ( if false then Bool else Bool )
        d1336 = ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> if d677 then x13370 else d1278 ) ) ) $ ( x13370 ) ) ) ) $ ( if false then d461 else false )
        d1340 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1340 = ( ( Bool -> Bool ) ∋ ( ( λ x13410 -> if true then d279 else x13410 ) ) ) $ ( if false then d944 else false )
        d1342 : ( ( Set -> Set ) ∋ ( ( λ x13440 -> if false then x13440 else x13440 ) ) ) $ ( if false then Bool else Bool )
        d1342 = if if d116 then true else d166 then ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> d120 ) ) ) $ ( true ) else if false then false else true
        d1345 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13470 -> x13470 ) ) ) $ ( Bool )
        d1345 = ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> if false then true else x13460 ) ) ) $ ( if d750 then d51 else false )
        d1348 : if true then ( ( Set -> Set ) ∋ ( ( λ x13500 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1348 = ( ( Bool -> Bool ) ∋ ( ( λ x13490 -> if d655 then d327 else d1002 ) ) ) $ ( if false then d1006 else d603 )
        d1351 : ( ( Set -> Set ) ∋ ( ( λ x13540 -> if true then Bool else x13540 ) ) ) $ ( if false then Bool else Bool )
        d1351 = ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> if d1018 then false else false ) ) ) $ ( x13520 ) ) ) ) $ ( if false then true else false )
        d1355 : ( ( Set -> Set ) ∋ ( ( λ x13570 -> ( ( Set -> Set ) ∋ ( ( λ x13580 -> if false then x13570 else x13570 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1355 = if if true then d232 else d1185 then ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> d307 ) ) ) $ ( true ) else if false then d1256 else true
        d1359 : ( ( Set -> Set ) ∋ ( ( λ x13620 -> if false then x13620 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1359 = if ( ( Bool -> Bool ) ∋ ( ( λ x13600 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> x13610 ) ) ) $ ( d220 ) else if d42 then d1091 else d160
        d1363 : if true then ( ( Set -> Set ) ∋ ( ( λ x13650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1363 = ( ( Bool -> Bool ) ∋ ( ( λ x13640 -> if x13640 then d1100 else true ) ) ) $ ( if true then true else d481 )
        d1366 : ( ( Set -> Set ) ∋ ( ( λ x13680 -> if false then Bool else x13680 ) ) ) $ ( if true then Bool else Bool )
        d1366 = if if d1300 then d640 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( d1006 ) else if false then false else d34
        d1369 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13710 -> x13710 ) ) ) $ ( Bool )
        d1369 = ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> if d282 then d1366 else d327 ) ) ) $ ( if false then false else false )
        d1372 : ( ( Set -> Set ) ∋ ( ( λ x13740 -> ( ( Set -> Set ) ∋ ( ( λ x13750 -> if false then x13740 else x13740 ) ) ) $ ( x13740 ) ) ) ) $ ( if true then Bool else Bool )
        d1372 = ( ( Bool -> Bool ) ∋ ( ( λ x13730 -> if x13730 then true else false ) ) ) $ ( if true then d1342 else true )
        d1376 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13790 -> Bool ) ) ) $ ( Bool )
        d1376 = ( ( Bool -> Bool ) ∋ ( ( λ x13770 -> ( ( Bool -> Bool ) ∋ ( ( λ x13780 -> if d701 then true else d1010 ) ) ) $ ( true ) ) ) ) $ ( if d812 then d465 else d960 )
        d1380 : if true then ( ( Set -> Set ) ∋ ( ( λ x13830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13840 -> Bool ) ) ) $ ( Bool )
        d1380 = ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> if x13810 then d46 else x13820 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d859 )
        d1385 : ( ( Set -> Set ) ∋ ( ( λ x13890 -> ( ( Set -> Set ) ∋ ( ( λ x13900 -> if false then x13900 else x13890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1385 = if ( ( Bool -> Bool ) ∋ ( ( λ x13860 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13870 -> true ) ) ) $ ( d991 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> true ) ) ) $ ( false )
        d1391 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1391 = if ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> x13920 ) ) ) $ ( true ) then if d991 then d533 else d1131 else ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> d683 ) ) ) $ ( d87 )
        d1394 : if true then ( ( Set -> Set ) ∋ ( ( λ x13970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13980 -> x13980 ) ) ) $ ( Bool )
        d1394 = ( ( Bool -> Bool ) ∋ ( ( λ x13950 -> ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> if x13960 then true else x13960 ) ) ) $ ( false ) ) ) ) $ ( if d481 then false else d109 )
        d1399 : ( ( Set -> Set ) ∋ ( ( λ x14010 -> ( ( Set -> Set ) ∋ ( ( λ x14020 -> if false then x14020 else x14010 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1399 = if ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> x14000 ) ) ) $ ( true ) then if false then d968 else true else if d662 then d268 else d902
        d1403 : ( ( Set -> Set ) ∋ ( ( λ x14070 -> if false then x14070 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1403 = if ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> d435 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> x14050 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14060 -> x14060 ) ) ) $ ( d496 )
        d1408 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14110 -> x14110 ) ) ) $ ( Bool )
        d1408 = ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> if x14090 then true else x14090 ) ) ) $ ( x14090 ) ) ) ) $ ( if true then d452 else d679 )
        d1412 : ( ( Set -> Set ) ∋ ( ( λ x14150 -> if true then x14150 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1412 = if ( ( Bool -> Bool ) ∋ ( ( λ x14130 -> d977 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14140 -> x14140 ) ) ) $ ( false ) else if d424 then false else false
        d1416 : ( ( Set -> Set ) ∋ ( ( λ x14190 -> ( ( Set -> Set ) ∋ ( ( λ x14200 -> if true then Bool else x14190 ) ) ) $ ( x14190 ) ) ) ) $ ( if false then Bool else Bool )
        d1416 = if if d658 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x14170 -> x14170 ) ) ) $ ( d1185 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> x14180 ) ) ) $ ( false )
        d1421 : if false then ( ( Set -> Set ) ∋ ( ( λ x14240 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14250 -> x14250 ) ) ) $ ( Bool )
        d1421 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> x14220 ) ) ) $ ( d83 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14230 -> x14230 ) ) ) $ ( false )
        d1426 : if true then ( ( Set -> Set ) ∋ ( ( λ x14270 -> x14270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14280 -> Bool ) ) ) $ ( Bool )
        d1426 = if if true then false else d869 then if d889 then d177 else false else if true then false else d896
        d1429 : if true then ( ( Set -> Set ) ∋ ( ( λ x14310 -> x14310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14320 -> Bool ) ) ) $ ( Bool )
        d1429 = ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> if d831 then true else x14300 ) ) ) $ ( if true then false else d628 )
        d1433 : if false then ( ( Set -> Set ) ∋ ( ( λ x14360 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1433 = if ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> true ) ) ) $ ( d544 ) then if d909 then d1076 else d152 else ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> d954 ) ) ) $ ( false )
        d1437 : ( ( Set -> Set ) ∋ ( ( λ x14400 -> if true then x14400 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1437 = if ( ( Bool -> Bool ) ∋ ( ( λ x14380 -> d521 ) ) ) $ ( false ) then if false then d972 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> x14390 ) ) ) $ ( d90 )
        d1441 : ( ( Set -> Set ) ∋ ( ( λ x14440 -> ( ( Set -> Set ) ∋ ( ( λ x14450 -> if true then x14450 else x14440 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1441 = ( ( Bool -> Bool ) ∋ ( ( λ x14420 -> ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> if d1108 then x14420 else x14430 ) ) ) $ ( d1336 ) ) ) ) $ ( if false then d38 else true )
        d1446 : if false then ( ( Set -> Set ) ∋ ( ( λ x14490 -> x14490 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1446 = ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> if true then false else d199 ) ) ) $ ( true ) ) ) ) $ ( if d135 then d1185 else d307 )
        d1450 : if true then ( ( Set -> Set ) ∋ ( ( λ x14530 -> x14530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1450 = if ( ( Bool -> Bool ) ∋ ( ( λ x14510 -> d579 ) ) ) $ ( d977 ) then if false then d987 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> true ) ) ) $ ( true )
        d1454 : ( ( Set -> Set ) ∋ ( ( λ x14560 -> if true then x14560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1454 = if if true then d726 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14550 -> true ) ) ) $ ( d98 ) else if d998 then true else d686
        d1457 : if true then ( ( Set -> Set ) ∋ ( ( λ x14590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1457 = ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> if d869 then false else false ) ) ) $ ( if d145 then true else true )
        d1460 : ( ( Set -> Set ) ∋ ( ( λ x14610 -> ( ( Set -> Set ) ∋ ( ( λ x14620 -> if true then x14620 else x14610 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1460 = if if true then false else d1 then if true then false else d651 else if d878 then false else true
        d1463 : if true then ( ( Set -> Set ) ∋ ( ( λ x14650 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14660 -> Bool ) ) ) $ ( Bool )
        d1463 = if if d822 then d925 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> false ) ) ) $ ( true ) else if d805 then false else d889
        d1467 : ( ( Set -> Set ) ∋ ( ( λ x14700 -> ( ( Set -> Set ) ∋ ( ( λ x14710 -> if false then Bool else Bool ) ) ) $ ( x14700 ) ) ) ) $ ( if false then Bool else Bool )
        d1467 = ( ( Bool -> Bool ) ∋ ( ( λ x14680 -> ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> if d1234 then false else d1010 ) ) ) $ ( false ) ) ) ) $ ( if d1174 then true else false )
        d1472 : ( ( Set -> Set ) ∋ ( ( λ x14740 -> ( ( Set -> Set ) ∋ ( ( λ x14750 -> if true then x14750 else x14740 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1472 = ( ( Bool -> Bool ) ∋ ( ( λ x14730 -> if x14730 then true else true ) ) ) $ ( if true then d601 else d241 )
        d1476 : if false then ( ( Set -> Set ) ∋ ( ( λ x14790 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1476 = ( ( Bool -> Bool ) ∋ ( ( λ x14770 -> ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> if d515 then d120 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d1135 else false )
        d1480 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1480 = if ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> x14810 ) ) ) $ ( false ) then if d579 then d272 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> true ) ) ) $ ( true )
        d1483 : if false then ( ( Set -> Set ) ∋ ( ( λ x14850 -> x14850 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14860 -> Bool ) ) ) $ ( Bool )
        d1483 = if if false then d1372 else d658 then ( ( Bool -> Bool ) ∋ ( ( λ x14840 -> x14840 ) ) ) $ ( d160 ) else if true then true else d402
        d1487 : ( ( Set -> Set ) ∋ ( ( λ x14880 -> if false then x14880 else x14880 ) ) ) $ ( if true then Bool else Bool )
        d1487 = if if false then d1115 else d1412 then if d1300 then d1372 else false else if d647 then true else false
        d1489 : if true then ( ( Set -> Set ) ∋ ( ( λ x14910 -> x14910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14920 -> Bool ) ) ) $ ( Bool )
        d1489 = if if d1366 then d112 else d1143 then if false then d510 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> d603 ) ) ) $ ( d647 )
        d1493 : if true then ( ( Set -> Set ) ∋ ( ( λ x14950 -> x14950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1493 = if if false then d1450 else d960 then if true then d268 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14940 -> false ) ) ) $ ( true )
        d1496 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1496 = if ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> d841 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> x14980 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> x14990 ) ) ) $ ( true )
        d1500 : ( ( Set -> Set ) ∋ ( ( λ x15020 -> ( ( Set -> Set ) ∋ ( ( λ x15030 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1500 = if if d856 then d764 else d754 then if false then d1123 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> x15010 ) ) ) $ ( true )
        d1504 : ( ( Set -> Set ) ∋ ( ( λ x15050 -> ( ( Set -> Set ) ∋ ( ( λ x15060 -> if true then Bool else x15060 ) ) ) $ ( x15050 ) ) ) ) $ ( if true then Bool else Bool )
        d1504 = if if true then d353 else true then if d812 then d801 else false else if true then d764 else false
        d1507 : if true then ( ( Set -> Set ) ∋ ( ( λ x15100 -> x15100 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1507 = if ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> d449 ) ) ) $ ( false ) then if d712 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> false ) ) ) $ ( d799 )
        d1511 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1511 = if if true then d126 else d357 then ( ( Bool -> Bool ) ∋ ( ( λ x15120 -> x15120 ) ) ) $ ( d1278 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15130 -> false ) ) ) $ ( d51 )
        d1514 : ( ( Set -> Set ) ∋ ( ( λ x15160 -> ( ( Set -> Set ) ∋ ( ( λ x15170 -> if true then x15170 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1514 = ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> if x15150 then x15150 else d1266 ) ) ) $ ( if d177 then d1320 else d1104 )
        d1518 : ( ( Set -> Set ) ∋ ( ( λ x15200 -> ( ( Set -> Set ) ∋ ( ( λ x15210 -> if false then x15200 else x15200 ) ) ) $ ( x15200 ) ) ) ) $ ( if true then Bool else Bool )
        d1518 = if if d344 then d1086 else d1256 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> d583 ) ) ) $ ( d719 )
        d1522 : ( ( Set -> Set ) ∋ ( ( λ x15250 -> ( ( Set -> Set ) ∋ ( ( λ x15260 -> if true then x15250 else Bool ) ) ) $ ( x15250 ) ) ) ) $ ( if false then Bool else Bool )
        d1522 = ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> if d327 then true else false ) ) ) $ ( d1372 ) ) ) ) $ ( if false then d576 else d530 )
        d1527 : if false then ( ( Set -> Set ) ∋ ( ( λ x15300 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1527 = if ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> true ) ) ) $ ( d228 ) then if d18 then d1260 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15290 -> false ) ) ) $ ( d1131 )
        d1531 : ( ( Set -> Set ) ∋ ( ( λ x15340 -> ( ( Set -> Set ) ∋ ( ( λ x15350 -> if true then Bool else x15340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1531 = if ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> x15320 ) ) ) $ ( d485 ) then if d1380 then d285 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15330 -> d1460 ) ) ) $ ( d395 )
        d1536 : if false then ( ( Set -> Set ) ∋ ( ( λ x15380 -> x15380 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1536 = if if true then d1202 else true then if d662 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> x15370 ) ) ) $ ( d38 )
        d1539 : ( ( Set -> Set ) ∋ ( ( λ x15410 -> if true then x15410 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1539 = if if false then d282 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> x15400 ) ) ) $ ( true ) else if false then false else d112
        d1542 : ( ( Set -> Set ) ∋ ( ( λ x15450 -> if true then Bool else x15450 ) ) ) $ ( if true then Bool else Bool )
        d1542 = ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> if true then x15430 else x15430 ) ) ) $ ( false ) ) ) ) $ ( if d135 then false else d550 )
        d1546 : ( ( Set -> Set ) ∋ ( ( λ x15490 -> if false then x15490 else x15490 ) ) ) $ ( if true then Bool else Bool )
        d1546 = ( ( Bool -> Bool ) ∋ ( ( λ x15470 -> ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> if d300 then d285 else d544 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d715 )
        d1550 : ( ( Set -> Set ) ∋ ( ( λ x15520 -> if true then x15520 else x15520 ) ) ) $ ( if false then Bool else Bool )
        d1550 = if if false then d1359 else d1363 then if d1253 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> x15510 ) ) ) $ ( false )
        d1553 : ( ( Set -> Set ) ∋ ( ( λ x15550 -> if false then x15550 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1553 = ( ( Bool -> Bool ) ∋ ( ( λ x15540 -> if d515 then d698 else false ) ) ) $ ( if false then true else true )
        d1556 : ( ( Set -> Set ) ∋ ( ( λ x15600 -> ( ( Set -> Set ) ∋ ( ( λ x15610 -> if false then Bool else x15610 ) ) ) $ ( x15600 ) ) ) ) $ ( if false then Bool else Bool )
        d1556 = if ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> x15570 ) ) ) $ ( d1215 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15580 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15590 -> true ) ) ) $ ( d1240 )
        d1562 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15630 -> x15630 ) ) ) $ ( Bool )
        d1562 = if if false then d1385 else d886 then if d1323 then d348 else d209 else if false then d805 else true
        d1564 : ( ( Set -> Set ) ∋ ( ( λ x15660 -> if false then Bool else x15660 ) ) ) $ ( if true then Bool else Bool )
        d1564 = ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> if d846 then true else d1399 ) ) ) $ ( if d874 then d1416 else false )
        d1567 : ( ( Set -> Set ) ∋ ( ( λ x15710 -> if false then x15710 else x15710 ) ) ) $ ( if false then Bool else Bool )
        d1567 = if ( ( Bool -> Bool ) ∋ ( ( λ x15680 -> x15680 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> d862 ) ) ) $ ( d628 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> x15700 ) ) ) $ ( true )
        d1572 : ( ( Set -> Set ) ∋ ( ( λ x15730 -> ( ( Set -> Set ) ∋ ( ( λ x15740 -> if true then x15740 else x15730 ) ) ) $ ( x15730 ) ) ) ) $ ( if false then Bool else Bool )
        d1572 = if if false then true else d928 then if false then d1151 else d1403 else if d179 then d972 else true
        d1575 : ( ( Set -> Set ) ∋ ( ( λ x15770 -> if true then Bool else x15770 ) ) ) $ ( if false then Bool else Bool )
        d1575 = if ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> false ) ) ) $ ( d1207 ) then if d1 then d254 else true else if false then d1300 else true
        d1578 : ( ( Set -> Set ) ∋ ( ( λ x15800 -> if false then x15800 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1578 = if if true then true else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> d489 ) ) ) $ ( d506 )
        d1581 : ( ( Set -> Set ) ∋ ( ( λ x15830 -> ( ( Set -> Set ) ∋ ( ( λ x15840 -> if true then Bool else x15830 ) ) ) $ ( x15830 ) ) ) ) $ ( if true then Bool else Bool )
        d1581 = if ( ( Bool -> Bool ) ∋ ( ( λ x15820 -> d1531 ) ) ) $ ( true ) then if false then true else d704 else if true then d759 else false
        d1585 : if false then ( ( Set -> Set ) ∋ ( ( λ x15880 -> x15880 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1585 = if ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> x15860 ) ) ) $ ( d170 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15870 -> x15870 ) ) ) $ ( false ) else if d406 then d60 else false
        d1589 : ( ( Set -> Set ) ∋ ( ( λ x15920 -> if true then x15920 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1589 = ( ( Bool -> Bool ) ∋ ( ( λ x15900 -> ( ( Bool -> Bool ) ∋ ( ( λ x15910 -> if false then x15900 else x15910 ) ) ) $ ( x15900 ) ) ) ) $ ( if true then d782 else d1282 )
        d1593 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15950 -> Bool ) ) ) $ ( Bool )
        d1593 = ( ( Bool -> Bool ) ∋ ( ( λ x15940 -> if x15940 then true else x15940 ) ) ) $ ( if d524 then true else false )
        d1596 : ( ( Set -> Set ) ∋ ( ( λ x15990 -> ( ( Set -> Set ) ∋ ( ( λ x16000 -> if true then x15990 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1596 = ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> ( ( Bool -> Bool ) ∋ ( ( λ x15980 -> if true then true else d1391 ) ) ) $ ( x15970 ) ) ) ) $ ( if d1345 then false else false )
        d1601 : ( ( Set -> Set ) ∋ ( ( λ x16020 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1601 = if if true then d1091 else false then if true then d447 else false else if true then true else false
        d1603 : ( ( Set -> Set ) ∋ ( ( λ x16070 -> if false then x16070 else x16070 ) ) ) $ ( if true then Bool else Bool )
        d1603 = if ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> d1336 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> x16060 ) ) ) $ ( false )
        d1608 : if true then ( ( Set -> Set ) ∋ ( ( λ x16100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16110 -> Bool ) ) ) $ ( Bool )
        d1608 = ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> if x16090 then x16090 else x16090 ) ) ) $ ( if d1199 then d1266 else d179 )
        d1612 : ( ( Set -> Set ) ∋ ( ( λ x16150 -> ( ( Set -> Set ) ∋ ( ( λ x16160 -> if false then x16150 else Bool ) ) ) $ ( x16150 ) ) ) ) $ ( if false then Bool else Bool )
        d1612 = if if false then false else d22 then ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> d1472 ) ) ) $ ( d156 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> false ) ) ) $ ( d859 )
        d1617 : ( ( Set -> Set ) ∋ ( ( λ x16180 -> ( ( Set -> Set ) ∋ ( ( λ x16190 -> if false then Bool else Bool ) ) ) $ ( x16180 ) ) ) ) $ ( if false then Bool else Bool )
        d1617 = if if false then false else d510 then if true then false else true else if d1564 then false else d469
        d1620 : ( ( Set -> Set ) ∋ ( ( λ x16220 -> ( ( Set -> Set ) ∋ ( ( λ x16230 -> if false then x16220 else Bool ) ) ) $ ( x16220 ) ) ) ) $ ( if false then Bool else Bool )
        d1620 = ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> if false then true else d1332 ) ) ) $ ( if false then true else false )
        d1624 : ( ( Set -> Set ) ∋ ( ( λ x16260 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1624 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> d300 ) ) ) $ ( d1567 ) else if d289 then false else true
        d1627 : ( ( Set -> Set ) ∋ ( ( λ x16300 -> ( ( Set -> Set ) ∋ ( ( λ x16310 -> if false then x16300 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1627 = ( ( Bool -> Bool ) ∋ ( ( λ x16280 -> ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> if d398 then d300 else d906 ) ) ) $ ( false ) ) ) ) $ ( if false then d95 else d772 )
        d1632 : ( ( Set -> Set ) ∋ ( ( λ x16350 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1632 = ( ( Bool -> Bool ) ∋ ( ( λ x16330 -> ( ( Bool -> Bool ) ∋ ( ( λ x16340 -> if x16340 then d433 else x16340 ) ) ) $ ( x16330 ) ) ) ) $ ( if d914 then true else true )
        d1636 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1636 = if if d69 then d869 else true then ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> x16370 ) ) ) $ ( d398 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> true ) ) ) $ ( false )
        d1639 : if true then ( ( Set -> Set ) ∋ ( ( λ x16420 -> x16420 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1639 = if ( ( Bool -> Bool ) ∋ ( ( λ x16400 -> x16400 ) ) ) $ ( d712 ) then if true then d1507 else d438 else ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> d921 ) ) ) $ ( d220 )
        d1643 : ( ( Set -> Set ) ∋ ( ( λ x16450 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1643 = if if false then false else d1593 then if d1500 then d95 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> d1253 ) ) ) $ ( d841 )
        d1646 : if false then ( ( Set -> Set ) ∋ ( ( λ x16480 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1646 = if ( ( Bool -> Bool ) ∋ ( ( λ x16470 -> x16470 ) ) ) $ ( d1483 ) then if d1394 then d1303 else d816 else if false then false else d617
        d1649 : if false then ( ( Set -> Set ) ∋ ( ( λ x16520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16530 -> Bool ) ) ) $ ( Bool )
        d1649 = ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> if d481 then d1147 else false ) ) ) $ ( d348 ) ) ) ) $ ( if d302 then true else true )
        d1654 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1654 = ( ( Bool -> Bool ) ∋ ( ( λ x16550 -> ( ( Bool -> Bool ) ∋ ( ( λ x16560 -> if x16550 then x16550 else x16560 ) ) ) $ ( x16550 ) ) ) ) $ ( if d715 then d135 else d1589 )
        d1657 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16590 -> Bool ) ) ) $ ( Bool )
        d1657 = ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> if d726 then x16580 else x16580 ) ) ) $ ( if false then true else d1253 )
        d1660 : if true then ( ( Set -> Set ) ∋ ( ( λ x16620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16630 -> x16630 ) ) ) $ ( Bool )
        d1660 = ( ( Bool -> Bool ) ∋ ( ( λ x16610 -> if x16610 then x16610 else d1108 ) ) ) $ ( if d510 then false else true )
        d1664 : ( ( Set -> Set ) ∋ ( ( λ x16670 -> ( ( Set -> Set ) ∋ ( ( λ x16680 -> if false then Bool else x16670 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1664 = ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> ( ( Bool -> Bool ) ∋ ( ( λ x16660 -> if x16660 then x16660 else x16650 ) ) ) $ ( x16650 ) ) ) ) $ ( if true then d1223 else true )
        d1669 : if true then ( ( Set -> Set ) ∋ ( ( λ x16710 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1669 = ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> if d435 then x16700 else true ) ) ) $ ( if d46 then d746 else d1076 )
        d1672 : ( ( Set -> Set ) ∋ ( ( λ x16750 -> if false then Bool else x16750 ) ) ) $ ( if false then Bool else Bool )
        d1672 = ( ( Bool -> Bool ) ∋ ( ( λ x16730 -> ( ( Bool -> Bool ) ∋ ( ( λ x16740 -> if x16730 then d166 else d139 ) ) ) $ ( true ) ) ) ) $ ( if d1627 then d723 else d573 )
        d1676 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1676 = ( ( Bool -> Bool ) ∋ ( ( λ x16770 -> ( ( Bool -> Bool ) ∋ ( ( λ x16780 -> if x16770 then d1034 else d617 ) ) ) $ ( d983 ) ) ) ) $ ( if d402 then true else d1295 )
        d1679 : ( ( Set -> Set ) ∋ ( ( λ x16810 -> if true then Bool else x16810 ) ) ) $ ( if true then Bool else Bool )
        d1679 = if if d1253 then true else d1603 then ( ( Bool -> Bool ) ∋ ( ( λ x16800 -> x16800 ) ) ) $ ( d983 ) else if d170 then false else true
        d1682 : if true then ( ( Set -> Set ) ∋ ( ( λ x16840 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1682 = if ( ( Bool -> Bool ) ∋ ( ( λ x16830 -> d174 ) ) ) $ ( false ) then if false then true else d1253 else if d1412 then false else false
        d1685 : ( ( Set -> Set ) ∋ ( ( λ x16870 -> ( ( Set -> Set ) ∋ ( ( λ x16880 -> if true then x16870 else Bool ) ) ) $ ( x16870 ) ) ) ) $ ( if true then Bool else Bool )
        d1685 = if if d1151 then d213 else d360 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x16860 -> d1022 ) ) ) $ ( d419 )
        d1689 : if false then ( ( Set -> Set ) ∋ ( ( λ x16910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16920 -> Bool ) ) ) $ ( Bool )
        d1689 = ( ( Bool -> Bool ) ∋ ( ( λ x16900 -> if false then d544 else x16900 ) ) ) $ ( if d406 then d18 else false )
        d1693 : ( ( Set -> Set ) ∋ ( ( λ x16960 -> if true then x16960 else x16960 ) ) ) $ ( if false then Bool else Bool )
        d1693 = ( ( Bool -> Bool ) ∋ ( ( λ x16940 -> ( ( Bool -> Bool ) ∋ ( ( λ x16950 -> if d203 then d911 else d22 ) ) ) $ ( false ) ) ) ) $ ( if d1034 then true else d435 )
        d1697 : if true then ( ( Set -> Set ) ∋ ( ( λ x17000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1697 = if ( ( Bool -> Bool ) ∋ ( ( λ x16980 -> d1416 ) ) ) $ ( d778 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16990 -> d1457 ) ) ) $ ( d977 ) else if d928 then d1489 else d852
        d1701 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x17040 -> x17040 ) ) ) $ ( Bool )
        d1701 = ( ( Bool -> Bool ) ∋ ( ( λ x17020 -> ( ( Bool -> Bool ) ∋ ( ( λ x17030 -> if true then d1348 else x17030 ) ) ) $ ( x17020 ) ) ) ) $ ( if false then d1489 else d849 )
        d1705 : ( ( Set -> Set ) ∋ ( ( λ x17080 -> ( ( Set -> Set ) ∋ ( ( λ x17090 -> if false then x17080 else x17090 ) ) ) $ ( x17080 ) ) ) ) $ ( if true then Bool else Bool )
        d1705 = ( ( Bool -> Bool ) ∋ ( ( λ x17060 -> ( ( Bool -> Bool ) ∋ ( ( λ x17070 -> if x17060 then true else x17070 ) ) ) $ ( d741 ) ) ) ) $ ( if d746 then true else d1332 )
        d1710 : ( ( Set -> Set ) ∋ ( ( λ x17130 -> if true then x17130 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1710 = ( ( Bool -> Bool ) ∋ ( ( λ x17110 -> ( ( Bool -> Bool ) ∋ ( ( λ x17120 -> if d268 then x17110 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d544 else d1243 )
        d1714 : ( ( Set -> Set ) ∋ ( ( λ x17160 -> if false then x17160 else x17160 ) ) ) $ ( if true then Bool else Bool )
        d1714 = ( ( Bool -> Bool ) ∋ ( ( λ x17150 -> if d937 then d206 else false ) ) ) $ ( if false then d631 else d587 )
        d1717 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x17190 -> x17190 ) ) ) $ ( Bool )
        d1717 = ( ( Bool -> Bool ) ∋ ( ( λ x17180 -> if d558 then false else d65 ) ) ) $ ( if true then true else false )