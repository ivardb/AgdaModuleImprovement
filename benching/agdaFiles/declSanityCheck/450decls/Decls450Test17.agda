module Decls450Test17  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x90 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x60 then false else x70 ) ) ) $ ( false ) ) ) ) $ ( if true then d1 else d1 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = if ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d5 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x120 -> false ) ) ) $ ( false ) else if true then d5 else d5
        d14 : if false then ( ( Set -> Set ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool )
        d14 = if if d1 then true else d10 then ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( d1 ) else if true then false else true
        d18 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> if true then Bool else Bool ) ) ) $ ( x200 ) ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d5 then d1 else x190 ) ) ) $ ( if false then d5 else d10 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if x240 then d1 else d18 ) ) ) $ ( d5 ) ) ) ) $ ( if true then true else d10 )
        d26 : if false then ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if x270 then d22 else false ) ) ) $ ( if true then d18 else d5 )
        d29 : if false then ( ( Set -> Set ) ∋ ( ( λ x310 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if x300 then d5 else x300 ) ) ) $ ( if d26 then false else d26 )
        d32 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x340 -> x340 ) ) ) $ ( Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if x330 then d10 else false ) ) ) $ ( if false then true else true )
        d35 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( Bool )
        d35 = if if true then d32 else d22 then ( ( Bool -> Bool ) ∋ ( ( λ x360 -> d1 ) ) ) $ ( d22 ) else if false then true else false
        d38 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x400 then d14 else x400 ) ) ) $ ( x390 ) ) ) ) $ ( if true then d18 else false )
        d42 : if true then ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if false then true else x440 ) ) ) $ ( d38 ) ) ) ) $ ( if d26 then true else true )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if true then false else x490 ) ) ) $ ( d42 ) ) ) ) $ ( if d32 then d5 else d18 )
        d50 : if false then ( ( Set -> Set ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool )
        d50 = if ( ( Bool -> Bool ) ∋ ( ( λ x510 -> true ) ) ) $ ( true ) then if d1 then d22 else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d18 ) ) ) $ ( d5 )
        d55 : if true then ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d55 = if if d18 then false else d29 then if d47 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d18 ) ) ) $ ( d26 )
        d58 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x610 -> Bool ) ) ) $ ( Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> false ) ) ) $ ( true ) then if true then true else d18 else ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( false )
        d62 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if x630 then d5 else d26 ) ) ) $ ( if true then d50 else d14 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then Bool else x680 ) ) ) $ ( if true then Bool else Bool )
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( false ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x730 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d18 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( d55 ) else ( ( Bool -> Bool ) ∋ ( ( λ x720 -> x720 ) ) ) $ ( d5 )
        d75 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if x760 then false else false ) ) ) $ ( if d32 then true else d47 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> if true then x820 else Bool ) ) ) $ ( x810 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if d26 then x800 else x790 ) ) ) $ ( x790 ) ) ) ) $ ( if d35 then d47 else d58 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then Bool else Bool ) ) ) $ ( x850 ) ) ) ) $ ( if true then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> if false then x840 else d65 ) ) ) $ ( if false then d10 else true )
        d87 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool )
        d87 = if ( ( Bool -> Bool ) ∋ ( ( λ x880 -> d10 ) ) ) $ ( d22 ) then ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( d69 ) else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> false ) ) ) $ ( d5 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x930 -> if true then x930 else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = if if false then true else d35 then if true then false else false else if d78 then true else false
        d94 : if true then ( ( Set -> Set ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if d32 then true else d62 ) ) ) $ ( false ) ) ) ) $ ( if d65 then d26 else d32 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( false )
        d103 : if false then ( ( Set -> Set ) ∋ ( ( λ x1070 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( Bool )
        d103 = if ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( d98 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( d83 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( false )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> if true then x1120 else x1120 ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if x1100 then d1 else x1100 ) ) ) $ ( d42 ) ) ) ) $ ( if d10 then d10 else d14 )
        d113 : if false then if false then Bool else Bool else if true then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if x1140 then true else true ) ) ) $ ( true ) ) ) ) $ ( if d14 then d42 else true )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d116 = if if true then false else d35 then if false then true else d109 else if false then d65 else d78
        d118 : if true then ( ( Set -> Set ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if x1190 then false else d5 ) ) ) $ ( d65 ) ) ) ) $ ( if d50 then false else d50 )
        d122 : if true then if false then Bool else Bool else if true then Bool else Bool
        d122 = if if d42 then d62 else d14 then if d98 then true else false else if true then d1 else d109
        d123 : if false then ( ( Set -> Set ) ∋ ( ( λ x1260 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if x1240 then true else x1240 ) ) ) $ ( x1240 ) ) ) ) $ ( if d92 then d75 else false )
        d127 : if true then ( ( Set -> Set ) ∋ ( ( λ x1280 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d127 = if if true then false else d5 then if d32 then d113 else false else if d1 then true else d35
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> if false then x1320 else x1320 ) ) ) $ ( x1310 ) ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if x1300 then d75 else false ) ) ) $ ( if d94 then d29 else d83 )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> ( ( Set -> Set ) ∋ ( ( λ x1370 -> if true then x1370 else x1370 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if false then d65 else x1350 ) ) ) $ ( false ) ) ) ) $ ( if d69 then d83 else d22 )
        d138 : if true then if true then Bool else Bool else if true then Bool else Bool
        d138 = if ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> d5 ) ) ) $ ( d103 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( d116 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( d5 )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then Bool else x1440 ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if x1430 then false else x1430 ) ) ) $ ( if false then d133 else true )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> if true then x1480 else Bool ) ) ) $ ( if true then Bool else Bool )
        d145 = if if d133 then d5 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> d42 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( true )
        d149 : if false then if false then Bool else Bool else if true then Bool else Bool
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> d47 ) ) ) $ ( d10 ) then if d87 then d142 else false else if d133 then false else true
        d151 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then Bool else x1540 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> if d83 then true else true ) ) ) $ ( if d83 then true else d98 )
        d155 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> ( ( Set -> Set ) ∋ ( ( λ x1580 -> if true then Bool else x1570 ) ) ) $ ( x1570 ) ) ) ) $ ( if false then Bool else Bool )
        d155 = if if d58 then d29 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( d122 ) else if d151 then d26 else true
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> ( ( Set -> Set ) ∋ ( ( λ x1620 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d159 = if ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> d129 ) ) ) $ ( false ) then if d149 then d75 else false else if d133 then d1 else true
        d163 : if true then ( ( Set -> Set ) ∋ ( ( λ x1660 -> x1660 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> if false then d65 else x1640 ) ) ) $ ( d55 ) ) ) ) $ ( if d142 then false else false )
        d167 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1690 -> Bool ) ) ) $ ( Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if x1680 then x1680 else d32 ) ) ) $ ( if true then d129 else d35 )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> ( ( Set -> Set ) ∋ ( ( λ x1720 -> if false then x1710 else x1710 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d170 = if if true then true else false then if d1 then d118 else d155 else if false then d87 else d83
        d173 : if true then if false then Bool else Bool else if false then Bool else Bool
        d173 = if ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> false ) ) ) $ ( d170 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( false ) else if d1 then true else d83
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then Bool else x1790 ) ) ) $ ( x1790 ) ) ) ) $ ( if false then Bool else Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if d94 then x1780 else d170 ) ) ) $ ( x1770 ) ) ) ) $ ( if d94 then d127 else false )
        d181 : if false then ( ( Set -> Set ) ∋ ( ( λ x1840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1850 -> x1850 ) ) ) $ ( Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if false then d159 else x1820 ) ) ) $ ( false ) ) ) ) $ ( if true then d118 else d155 )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> if true then x1890 else x1890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d186 = if if d50 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> d78 ) ) ) $ ( d159 ) else if d83 then true else false
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> if true then Bool else x1930 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d190 = if ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> d75 ) ) ) $ ( d92 ) then if false then true else d118 else if true then d159 else false
        d194 : ( ( Set -> Set ) ∋ ( ( λ x1980 -> ( ( Set -> Set ) ∋ ( ( λ x1990 -> if false then x1980 else Bool ) ) ) $ ( x1980 ) ) ) ) $ ( if true then Bool else Bool )
        d194 = if ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> d138 ) ) ) $ ( d149 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> x1960 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> d186 ) ) ) $ ( false )
        d200 : if true then if true then Bool else Bool else if true then Bool else Bool
        d200 = if if false then d113 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> false ) ) ) $ ( d75 ) else if false then true else false
        d202 : if false then if true then Bool else Bool else if false then Bool else Bool
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if true then d118 else false ) ) ) $ ( d151 ) ) ) ) $ ( if d65 then true else d65 )
        d205 : if false then ( ( Set -> Set ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2080 -> Bool ) ) ) $ ( Bool )
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> if x2060 then x2060 else true ) ) ) $ ( if d92 then d94 else d173 )
        d209 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> ( ( Set -> Set ) ∋ ( ( λ x2140 -> if true then Bool else x2130 ) ) ) $ ( x2130 ) ) ) ) $ ( if false then Bool else Bool )
        d209 = if ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( d127 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> d200 ) ) ) $ ( d42 )
        d215 : if false then ( ( Set -> Set ) ∋ ( ( λ x2180 -> x2180 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if x2160 then d58 else x2160 ) ) ) $ ( false ) ) ) ) $ ( if d186 then d205 else d138 )
        d219 : if true then ( ( Set -> Set ) ∋ ( ( λ x2230 -> x2230 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2240 -> x2240 ) ) ) $ ( Bool )
        d219 = if ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d181 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> d127 ) ) ) $ ( false )
        d225 : ( ( Set -> Set ) ∋ ( ( λ x2270 -> ( ( Set -> Set ) ∋ ( ( λ x2280 -> if false then x2270 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d225 = ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> if d123 then x2260 else d118 ) ) ) $ ( if d151 then d190 else true )
        d229 : if true then if true then Bool else Bool else if true then Bool else Bool
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if d87 then d26 else d1 ) ) ) $ ( x2300 ) ) ) ) $ ( if true then d133 else false )
        d232 : if false then ( ( Set -> Set ) ∋ ( ( λ x2360 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d232 = if ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> d181 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> d138 ) ) ) $ ( d176 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> false ) ) ) $ ( false )
        d237 : if true then ( ( Set -> Set ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2390 -> Bool ) ) ) $ ( Bool )
        d237 = if if d138 then d145 else true then if d190 then d103 else d47 else if d225 then false else false
        d240 : if false then if true then Bool else Bool else if true then Bool else Bool
        d240 = if if true then d69 else d103 then ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> d237 ) ) ) $ ( d26 ) else if false then d42 else d35
        d242 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> if true then x2440 else Bool ) ) ) $ ( if false then Bool else Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if x2430 then d167 else x2430 ) ) ) $ ( if d232 then true else true )
        d245 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then Bool else x2490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> if d202 then true else false ) ) ) $ ( d219 ) ) ) ) $ ( if d163 then d155 else d103 )
        d250 : if false then ( ( Set -> Set ) ∋ ( ( λ x2530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2540 -> x2540 ) ) ) $ ( Bool )
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if false then false else d14 ) ) ) $ ( x2510 ) ) ) ) $ ( if d118 then true else false )
        d255 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2580 -> Bool ) ) ) $ ( Bool )
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> if true then x2560 else x2570 ) ) ) $ ( x2560 ) ) ) ) $ ( if d190 then d186 else true )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if true then x2610 else x2610 ) ) ) $ ( if false then Bool else Bool )
        d259 = if ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> true ) ) ) $ ( false ) then if true then d94 else d240 else if false then d83 else d98
        d262 : ( ( Set -> Set ) ∋ ( ( λ x2650 -> ( ( Set -> Set ) ∋ ( ( λ x2660 -> if false then x2650 else x2650 ) ) ) $ ( x2650 ) ) ) ) $ ( if false then Bool else Bool )
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if d170 then x2640 else true ) ) ) $ ( true ) ) ) ) $ ( if d229 then d194 else d202 )
        d267 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2700 -> x2700 ) ) ) $ ( Bool )
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> if false then x2690 else d87 ) ) ) $ ( x2680 ) ) ) ) $ ( if true then false else false )
        d271 : if true then ( ( Set -> Set ) ∋ ( ( λ x2730 -> x2730 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d271 = ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> if d229 then d78 else true ) ) ) $ ( if true then false else true )
        d274 : if true then ( ( Set -> Set ) ∋ ( ( λ x2760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( Bool )
        d274 = if if false then false else d87 then ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> x2750 ) ) ) $ ( d200 ) else if d118 then d14 else d215
        d278 : ( ( Set -> Set ) ∋ ( ( λ x2800 -> if true then x2800 else Bool ) ) ) $ ( if true then Bool else Bool )
        d278 = if if d116 then d62 else d250 then if d58 then d122 else d69 else ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> true ) ) ) $ ( false )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if d259 then d205 else x2820 ) ) ) $ ( d219 ) ) ) ) $ ( if d173 then true else d229 )
        d286 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2880 -> x2880 ) ) ) $ ( Bool )
        d286 = if if false then false else d92 then if true then d58 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> true ) ) ) $ ( d259 )
        d289 : if true then if true then Bool else Bool else if false then Bool else Bool
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> if false then x2900 else d202 ) ) ) $ ( d47 ) ) ) ) $ ( if d163 then false else false )
        d292 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> if false then Bool else x2950 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d292 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> d229 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> d65 ) ) ) $ ( d229 )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> ( ( Set -> Set ) ∋ ( ( λ x3000 -> if true then Bool else Bool ) ) ) $ ( x2990 ) ) ) ) $ ( if false then Bool else Bool )
        d297 = if ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> x2980 ) ) ) $ ( true ) then if false then false else false else if d87 then d242 else true
        d301 : if true then ( ( Set -> Set ) ∋ ( ( λ x3030 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> if x3020 then false else d145 ) ) ) $ ( if d209 then d98 else true )
        d304 : if true then if false then Bool else Bool else if true then Bool else Bool
        d304 = if if d42 then d163 else d58 then ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> d205 ) ) ) $ ( d98 ) else if d83 then d167 else false
        d306 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> ( ( Set -> Set ) ∋ ( ( λ x3100 -> if true then x3090 else x3090 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> if x3070 then true else x3070 ) ) ) $ ( d271 ) ) ) ) $ ( if d123 then true else true )
        d311 : if true then ( ( Set -> Set ) ∋ ( ( λ x3120 -> x3120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3130 -> Bool ) ) ) $ ( Bool )
        d311 = if if false then d5 else false then if true then d173 else true else if false then false else false
        d314 : ( ( Set -> Set ) ∋ ( ( λ x3170 -> if true then x3170 else Bool ) ) ) $ ( if false then Bool else Bool )
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> if x3160 then x3150 else true ) ) ) $ ( d65 ) ) ) ) $ ( if d242 then false else true )
        d318 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3200 -> x3200 ) ) ) $ ( Bool )
        d318 = if ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> true ) ) ) $ ( d229 ) then if d138 then false else d271 else if d190 then d301 else false
        d321 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then x3240 else x3240 ) ) ) $ ( if true then Bool else Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> if x3230 then d240 else d190 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d129 )
        d325 : if true then ( ( Set -> Set ) ∋ ( ( λ x3280 -> x3280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3290 -> Bool ) ) ) $ ( Bool )
        d325 = if ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( d314 ) else if d255 then false else d159
        d330 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool )
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if x3320 then d304 else x3310 ) ) ) $ ( d22 ) ) ) ) $ ( if false then false else false )
        d334 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( Bool )
        d334 = if ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> false ) ) ) $ ( d10 ) then if false then d170 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> false ) ) ) $ ( true )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3400 -> if true then Bool else x3400 ) ) ) $ ( if false then Bool else Bool )
        d338 = if if d250 then false else true then if true then d170 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> d229 ) ) ) $ ( d262 )
        d341 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3440 -> x3440 ) ) ) $ ( Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if d118 then false else false ) ) ) $ ( d289 ) ) ) ) $ ( if false then d232 else false )
        d345 : if false then ( ( Set -> Set ) ∋ ( ( λ x3480 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3490 -> Bool ) ) ) $ ( Bool )
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> if true then d259 else false ) ) ) $ ( x3460 ) ) ) ) $ ( if true then d118 else d94 )
        d350 : if false then ( ( Set -> Set ) ∋ ( ( λ x3530 -> x3530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d350 = if ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> d42 ) ) ) $ ( d304 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> x3520 ) ) ) $ ( true ) else if true then true else false
        d354 : ( ( Set -> Set ) ∋ ( ( λ x3570 -> if false then x3570 else Bool ) ) ) $ ( if true then Bool else Bool )
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> if false then true else x3560 ) ) ) $ ( true ) ) ) ) $ ( if true then d118 else d278 )
        d358 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3610 -> Bool ) ) ) $ ( Bool )
        d358 = ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> if true then d94 else d341 ) ) ) $ ( x3590 ) ) ) ) $ ( if false then d267 else false )
        d362 : ( ( Set -> Set ) ∋ ( ( λ x3650 -> if true then x3650 else Bool ) ) ) $ ( if false then Bool else Bool )
        d362 = if ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( d118 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> x3640 ) ) ) $ ( false ) else if d219 then false else d155
        d366 : ( ( Set -> Set ) ∋ ( ( λ x3700 -> ( ( Set -> Set ) ∋ ( ( λ x3710 -> if false then x3700 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d366 = if ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> d47 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> d215 ) ) ) $ ( d113 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> d167 ) ) ) $ ( true )
        d372 : if false then if false then Bool else Bool else if false then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> if d321 then d170 else true ) ) ) $ ( if d292 then true else true )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x3760 -> ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then Bool else x3760 ) ) ) $ ( x3760 ) ) ) ) $ ( if false then Bool else Bool )
        d374 = if if false then d334 else true then if true then d354 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> x3750 ) ) ) $ ( d262 )
        d378 : ( ( Set -> Set ) ∋ ( ( λ x3810 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if d306 then x3800 else x3800 ) ) ) $ ( x3790 ) ) ) ) $ ( if d116 then d18 else d113 )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x3850 -> ( ( Set -> Set ) ∋ ( ( λ x3860 -> if true then Bool else Bool ) ) ) $ ( x3850 ) ) ) ) $ ( if false then Bool else Bool )
        d382 = ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> if x3830 then x3840 else d133 ) ) ) $ ( x3830 ) ) ) ) $ ( if d271 then d374 else false )
        d387 : if false then if false then Bool else Bool else if false then Bool else Bool
        d387 = if if d306 then false else d250 then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> false ) ) ) $ ( false )
        d389 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3910 -> Bool ) ) ) $ ( Bool )
        d389 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> d281 ) ) ) $ ( false ) else if d334 then d281 else false
        d392 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3950 -> x3950 ) ) ) $ ( Bool )
        d392 = ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> if false then d330 else x3930 ) ) ) $ ( x3930 ) ) ) ) $ ( if true then d286 else false )
        d396 : if true then ( ( Set -> Set ) ∋ ( ( λ x3990 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if d341 then x3970 else x3970 ) ) ) $ ( true ) ) ) ) $ ( if d14 then d142 else d259 )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4020 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d400 = if ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> d69 ) ) ) $ ( false ) then if false then true else true else if false then true else d116
        d403 : ( ( Set -> Set ) ∋ ( ( λ x4040 -> ( ( Set -> Set ) ∋ ( ( λ x4050 -> if true then x4050 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d403 = if if true then true else d229 then if d1 then d400 else d250 else if false then d387 else d35
        d406 : if true then ( ( Set -> Set ) ∋ ( ( λ x4090 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4100 -> Bool ) ) ) $ ( Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> if d32 then x4070 else d14 ) ) ) $ ( true ) ) ) ) $ ( if d301 then d262 else false )
        d411 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> if false then x4140 else x4140 ) ) ) $ ( if false then Bool else Bool )
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> if true then x4130 else d366 ) ) ) $ ( x4120 ) ) ) ) $ ( if d245 then true else d103 )
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4180 -> if false then x4180 else x4180 ) ) ) $ ( if true then Bool else Bool )
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> if true then d87 else d58 ) ) ) $ ( x4160 ) ) ) ) $ ( if d163 then true else true )
        d419 : ( ( Set -> Set ) ∋ ( ( λ x4210 -> if false then x4210 else x4210 ) ) ) $ ( if true then Bool else Bool )
        d419 = if ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> d292 ) ) ) $ ( false ) then if d22 then true else d378 else if false then d173 else false
        d422 : ( ( Set -> Set ) ∋ ( ( λ x4250 -> if true then x4250 else x4250 ) ) ) $ ( if true then Bool else Bool )
        d422 = if if d311 then d202 else d271 then ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> x4230 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> x4240 ) ) ) $ ( d237 )
        d426 : if false then ( ( Set -> Set ) ∋ ( ( λ x4290 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d426 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> d378 ) ) ) $ ( d200 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> true ) ) ) $ ( true )
        d430 : if false then if true then Bool else Bool else if false then Bool else Bool
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> if false then x4320 else x4320 ) ) ) $ ( true ) ) ) ) $ ( if d389 then false else d325 )
        d433 : ( ( Set -> Set ) ∋ ( ( λ x4360 -> if true then x4360 else x4360 ) ) ) $ ( if true then Bool else Bool )
        d433 = if ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> false ) ) ) $ ( d286 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> d159 ) ) ) $ ( true )
        d437 : if false then ( ( Set -> Set ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4410 -> x4410 ) ) ) $ ( Bool )
        d437 = if ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> x4380 ) ) ) $ ( true ) then if d229 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> true ) ) ) $ ( d127 )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4450 -> if false then x4450 else x4450 ) ) ) $ ( if false then Bool else Bool )
        d442 = if ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> x4430 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> x4440 ) ) ) $ ( false ) else if false then d109 else false
        d446 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4480 -> x4480 ) ) ) $ ( Bool )
        d446 = if if d42 then d372 else d321 then ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> false ) ) ) $ ( d433 ) else if d50 then d32 else d215
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> ( ( Set -> Set ) ∋ ( ( λ x4520 -> if true then x4510 else x4520 ) ) ) $ ( x4510 ) ) ) ) $ ( if true then Bool else Bool )
        d449 = if if d301 then false else d271 then if true then d271 else d38 else ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> true ) ) ) $ ( d167 )
        d453 : if false then ( ( Set -> Set ) ∋ ( ( λ x4560 -> x4560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> if false then d215 else false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d382 )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> if false then Bool else x4590 ) ) ) $ ( if false then Bool else Bool )
        d457 = if if d374 then false else d396 then if d232 then false else d262 else ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> x4580 ) ) ) $ ( true )
        d460 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4630 -> Bool ) ) ) $ ( Bool )
        d460 = if ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> false ) ) ) $ ( false ) then if d123 then d411 else d123 else ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> x4620 ) ) ) $ ( d5 )
        d464 : ( ( Set -> Set ) ∋ ( ( λ x4670 -> ( ( Set -> Set ) ∋ ( ( λ x4680 -> if false then x4680 else Bool ) ) ) $ ( x4670 ) ) ) ) $ ( if true then Bool else Bool )
        d464 = if ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> true ) ) ) $ ( d186 ) then if true then true else d127 else ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> d145 ) ) ) $ ( d400 )
        d469 : if true then if false then Bool else Bool else if false then Bool else Bool
        d469 = if if d32 then d464 else d392 then ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> false ) ) ) $ ( d453 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> x4710 ) ) ) $ ( true )
        d472 : ( ( Set -> Set ) ∋ ( ( λ x4750 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if x4730 then d83 else x4740 ) ) ) $ ( false ) ) ) ) $ ( if false then d464 else false )
        d476 : ( ( Set -> Set ) ∋ ( ( λ x4780 -> if true then x4780 else x4780 ) ) ) $ ( if true then Bool else Bool )
        d476 = if if true then d10 else d400 then if true then false else d267 else ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> d215 ) ) ) $ ( d229 )
        d479 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4820 -> Bool ) ) ) $ ( Bool )
        d479 = if ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> d292 ) ) ) $ ( d122 ) then if d232 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> x4810 ) ) ) $ ( d186 )
        d483 : if true then ( ( Set -> Set ) ∋ ( ( λ x4870 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4880 -> x4880 ) ) ) $ ( Bool )
        d483 = if ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> true ) ) ) $ ( d430 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> true ) ) ) $ ( d297 )
        d489 : ( ( Set -> Set ) ∋ ( ( λ x4920 -> ( ( Set -> Set ) ∋ ( ( λ x4930 -> if false then x4920 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> if d232 then x4900 else x4910 ) ) ) $ ( x4900 ) ) ) ) $ ( if d14 then d50 else d374 )
        d494 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4980 -> Bool ) ) ) $ ( Bool )
        d494 = if ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> x4950 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> true ) ) ) $ ( d109 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> x4970 ) ) ) $ ( false )
        d499 : if true then if false then Bool else Bool else if false then Bool else Bool
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> if false then true else false ) ) ) $ ( false ) ) ) ) $ ( if true then d306 else d215 )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5040 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> if true then true else x5030 ) ) ) $ ( if false then d345 else false )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> ( ( Set -> Set ) ∋ ( ( λ x5090 -> if false then x5090 else Bool ) ) ) $ ( x5080 ) ) ) ) $ ( if false then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> if x5070 then false else d98 ) ) ) $ ( x5060 ) ) ) ) $ ( if d10 then false else true )
        d510 : if true then if false then Bool else Bool else if true then Bool else Bool
        d510 = if ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> false ) ) ) $ ( d489 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> d38 ) ) ) $ ( d209 )
        d514 : ( ( Set -> Set ) ∋ ( ( λ x5160 -> ( ( Set -> Set ) ∋ ( ( λ x5170 -> if true then Bool else x5170 ) ) ) $ ( x5160 ) ) ) ) $ ( if true then Bool else Bool )
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> if d113 then x5150 else true ) ) ) $ ( if false then d50 else false )
        d518 : if false then ( ( Set -> Set ) ∋ ( ( λ x5210 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> if d22 then true else d10 ) ) ) $ ( true ) ) ) ) $ ( if d422 then d194 else false )
        d522 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> ( ( Set -> Set ) ∋ ( ( λ x5260 -> if false then x5250 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> if d92 then d483 else x5240 ) ) ) $ ( d415 ) ) ) ) $ ( if d202 then d109 else d354 )
        d527 : ( ( Set -> Set ) ∋ ( ( λ x5290 -> ( ( Set -> Set ) ∋ ( ( λ x5300 -> if false then x5290 else x5300 ) ) ) $ ( x5290 ) ) ) ) $ ( if true then Bool else Bool )
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> if d457 then false else false ) ) ) $ ( if false then true else d453 )
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5320 -> if false then x5320 else Bool ) ) ) $ ( if true then Bool else Bool )
        d531 = if if false then d415 else d301 then if d430 then true else true else if true then d32 else false
        d533 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> if true then Bool else x5360 ) ) ) $ ( if true then Bool else Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if d58 then false else d118 ) ) ) $ ( x5340 ) ) ) ) $ ( if d350 then false else false )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x5400 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> if d430 then x5380 else d200 ) ) ) $ ( d389 ) ) ) ) $ ( if d341 then d433 else d372 )
        d541 : if true then if false then Bool else Bool else if false then Bool else Bool
        d541 = ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> if d83 then d419 else x5430 ) ) ) $ ( x5420 ) ) ) ) $ ( if d321 then false else d237 )
        d544 : if false then ( ( Set -> Set ) ∋ ( ( λ x5470 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d544 = if ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> x5450 ) ) ) $ ( d122 ) then if d194 then d533 else d527 else ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> true ) ) ) $ ( d262 )
        d548 : if true then ( ( Set -> Set ) ∋ ( ( λ x5500 -> x5500 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> if d472 then false else d65 ) ) ) $ ( if d267 then true else true )
        d551 : if true then if false then Bool else Bool else if true then Bool else Bool
        d551 = if ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> d301 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> d200 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> false ) ) ) $ ( d358 )
        d555 : ( ( Set -> Set ) ∋ ( ( λ x5570 -> ( ( Set -> Set ) ∋ ( ( λ x5580 -> if false then x5580 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d555 = if ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> false ) ) ) $ ( d186 ) then if false then d403 else true else if d202 then false else false
        d559 : ( ( Set -> Set ) ∋ ( ( λ x5620 -> ( ( Set -> Set ) ∋ ( ( λ x5630 -> if true then Bool else Bool ) ) ) $ ( x5620 ) ) ) ) $ ( if true then Bool else Bool )
        d559 = if if d155 then true else d442 then ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> d22 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> x5610 ) ) ) $ ( false )
        d564 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5670 -> Bool ) ) ) $ ( Bool )
        d564 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> x5650 ) ) ) $ ( d489 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> x5660 ) ) ) $ ( false )
        d568 : ( ( Set -> Set ) ∋ ( ( λ x5700 -> if true then x5700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d568 = if if true then false else false then if false then d527 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> x5690 ) ) ) $ ( d122 )
        d571 : if true then if false then Bool else Bool else if false then Bool else Bool
        d571 = if ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> false ) ) ) $ ( d292 ) then if d345 then true else d65 else ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> x5730 ) ) ) $ ( false )
        d574 : ( ( Set -> Set ) ∋ ( ( λ x5770 -> ( ( Set -> Set ) ∋ ( ( λ x5780 -> if false then x5770 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> if false then d103 else d47 ) ) ) $ ( x5750 ) ) ) ) $ ( if d65 then d29 else false )
        d579 : if true then ( ( Set -> Set ) ∋ ( ( λ x5810 -> x5810 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5820 -> Bool ) ) ) $ ( Bool )
        d579 = if if false then true else false then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> x5800 ) ) ) $ ( d318 )
        d583 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5860 -> Bool ) ) ) $ ( Bool )
        d583 = if ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> false ) ) ) $ ( d318 ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> d267 ) ) ) $ ( true )
        d587 : if true then ( ( Set -> Set ) ∋ ( ( λ x5900 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d587 = ( ( Bool -> Bool ) ∋ ( ( λ x5880 -> ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> if false then true else false ) ) ) $ ( true ) ) ) ) $ ( if true then d568 else true )
        d591 : ( ( Set -> Set ) ∋ ( ( λ x5940 -> ( ( Set -> Set ) ∋ ( ( λ x5950 -> if false then x5940 else Bool ) ) ) $ ( x5940 ) ) ) ) $ ( if false then Bool else Bool )
        d591 = if ( ( Bool -> Bool ) ∋ ( ( λ x5920 -> false ) ) ) $ ( d453 ) then if d382 then false else d548 else ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> d242 ) ) ) $ ( true )
        d596 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5980 -> x5980 ) ) ) $ ( Bool )
        d596 = if if true then d116 else d271 then ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> x5970 ) ) ) $ ( false ) else if true then d18 else false
        d599 : if false then if true then Bool else Bool else if true then Bool else Bool
        d599 = ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> ( ( Bool -> Bool ) ∋ ( ( λ x6010 -> if d292 then x6010 else x6000 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d602 : if false then ( ( Set -> Set ) ∋ ( ( λ x6050 -> x6050 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d602 = if ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> x6030 ) ) ) $ ( d155 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> d281 ) ) ) $ ( d400 ) else if d259 then false else true
        d606 : ( ( Set -> Set ) ∋ ( ( λ x6080 -> ( ( Set -> Set ) ∋ ( ( λ x6090 -> if false then x6090 else x6090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d606 = ( ( Bool -> Bool ) ∋ ( ( λ x6070 -> if x6070 then false else x6070 ) ) ) $ ( if true then d109 else false )
        d610 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6120 -> x6120 ) ) ) $ ( Bool )
        d610 = if if false then d602 else d345 then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> d396 ) ) ) $ ( d58 )
        d613 : if true then if true then Bool else Bool else if true then Bool else Bool
        d613 = if if d271 then false else false then if d330 then true else d406 else if true then true else d564
        d614 : ( ( Set -> Set ) ∋ ( ( λ x6160 -> ( ( Set -> Set ) ∋ ( ( λ x6170 -> if true then x6170 else x6160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> if true then x6150 else true ) ) ) $ ( if true then d583 else d289 )
        d618 : ( ( Set -> Set ) ∋ ( ( λ x6190 -> ( ( Set -> Set ) ∋ ( ( λ x6200 -> if true then Bool else Bool ) ) ) $ ( x6190 ) ) ) ) $ ( if true then Bool else Bool )
        d618 = if if false then d479 else d311 then if true then d259 else d301 else if d457 then true else false
        d621 : ( ( Set -> Set ) ∋ ( ( λ x6240 -> if false then Bool else x6240 ) ) ) $ ( if false then Bool else Bool )
        d621 = ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> if false then d321 else d551 ) ) ) $ ( d186 ) ) ) ) $ ( if d26 then true else false )
        d625 : ( ( Set -> Set ) ∋ ( ( λ x6280 -> if false then x6280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d625 = ( ( Bool -> Bool ) ∋ ( ( λ x6260 -> ( ( Bool -> Bool ) ∋ ( ( λ x6270 -> if d301 then x6270 else d1 ) ) ) $ ( x6260 ) ) ) ) $ ( if false then d571 else true )
        d629 : if false then if true then Bool else Bool else if true then Bool else Bool
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> if true then x6300 else true ) ) ) $ ( if d505 then false else false )
        d631 : if true then ( ( Set -> Set ) ∋ ( ( λ x6340 -> x6340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d631 = ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> if d419 then d29 else x6320 ) ) ) $ ( x6320 ) ) ) ) $ ( if d469 then d32 else d133 )
        d635 : if true then if true then Bool else Bool else if false then Bool else Bool
        d635 = ( ( Bool -> Bool ) ∋ ( ( λ x6360 -> if x6360 then d551 else true ) ) ) $ ( if d109 then d181 else false )
        d637 : if true then ( ( Set -> Set ) ∋ ( ( λ x6390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6400 -> x6400 ) ) ) $ ( Bool )
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> if x6380 then d551 else d354 ) ) ) $ ( if true then d240 else d555 )
        d641 : ( ( Set -> Set ) ∋ ( ( λ x6430 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d641 = if ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> d411 ) ) ) $ ( false ) then if d406 then false else d411 else if false then d374 else d167
        d644 : ( ( Set -> Set ) ∋ ( ( λ x6460 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d644 = if if d151 then true else d341 then if false then d181 else d318 else ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> x6450 ) ) ) $ ( true )
        d647 : ( ( Set -> Set ) ∋ ( ( λ x6500 -> ( ( Set -> Set ) ∋ ( ( λ x6510 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d647 = if if d113 then d599 else d176 then ( ( Bool -> Bool ) ∋ ( ( λ x6480 -> x6480 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> true ) ) ) $ ( d426 )
        d652 : ( ( Set -> Set ) ∋ ( ( λ x6540 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d652 = ( ( Bool -> Bool ) ∋ ( ( λ x6530 -> if true then x6530 else false ) ) ) $ ( if d574 then d65 else d433 )
        d655 : ( ( Set -> Set ) ∋ ( ( λ x6580 -> ( ( Set -> Set ) ∋ ( ( λ x6590 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d655 = if if d259 then d304 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> d145 ) ) ) $ ( d250 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6570 -> true ) ) ) $ ( false )
        d660 : ( ( Set -> Set ) ∋ ( ( λ x6630 -> if true then Bool else x6630 ) ) ) $ ( if false then Bool else Bool )
        d660 = ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> if true then x6620 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d555 else d502 )
        d664 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6680 -> Bool ) ) ) $ ( Bool )
        d664 = if ( ( Bool -> Bool ) ∋ ( ( λ x6650 -> d400 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6660 -> true ) ) ) $ ( d419 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> d583 ) ) ) $ ( d372 )
        d669 : ( ( Set -> Set ) ∋ ( ( λ x6710 -> if true then x6710 else Bool ) ) ) $ ( if false then Bool else Bool )
        d669 = ( ( Bool -> Bool ) ∋ ( ( λ x6700 -> if d415 then false else true ) ) ) $ ( if true then d362 else d200 )
        d672 : if true then ( ( Set -> Set ) ∋ ( ( λ x6740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6750 -> x6750 ) ) ) $ ( Bool )
        d672 = if if d464 then true else d382 then ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> x6730 ) ) ) $ ( d652 ) else if d232 then false else d167
        d676 : ( ( Set -> Set ) ∋ ( ( λ x6780 -> ( ( Set -> Set ) ∋ ( ( λ x6790 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d676 = if if d460 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> d181 ) ) ) $ ( false ) else if d176 then d133 else d94
        d680 : if false then if false then Bool else Bool else if false then Bool else Bool
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> if true then x6810 else d341 ) ) ) $ ( if d625 then d75 else d113 )
        d682 : if false then ( ( Set -> Set ) ∋ ( ( λ x6850 -> x6850 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d682 = if if d47 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x6830 -> d75 ) ) ) $ ( d58 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6840 -> x6840 ) ) ) $ ( true )
        d686 : ( ( Set -> Set ) ∋ ( ( λ x6880 -> if true then x6880 else x6880 ) ) ) $ ( if true then Bool else Bool )
        d686 = ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> if d133 then true else d149 ) ) ) $ ( if d215 then true else true )
        d689 : ( ( Set -> Set ) ∋ ( ( λ x6910 -> ( ( Set -> Set ) ∋ ( ( λ x6920 -> if true then x6910 else Bool ) ) ) $ ( x6910 ) ) ) ) $ ( if true then Bool else Bool )
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> if d200 then x6900 else d392 ) ) ) $ ( if false then d318 else false )
        d693 : if false then if true then Bool else Bool else if true then Bool else Bool
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x6940 -> if x6940 then d173 else d606 ) ) ) $ ( if d237 then d574 else true )
        d695 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6980 -> Bool ) ) ) $ ( Bool )
        d695 = if if d1 then d262 else d350 then ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> x6970 ) ) ) $ ( false )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x7010 -> ( ( Set -> Set ) ∋ ( ( λ x7020 -> if true then x7010 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d699 = ( ( Bool -> Bool ) ∋ ( ( λ x7000 -> if x7000 then true else d664 ) ) ) $ ( if d26 then d186 else d614 )
        d703 : if false then if true then Bool else Bool else if false then Bool else Bool
        d703 = if ( ( Bool -> Bool ) ∋ ( ( λ x7040 -> x7040 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> d419 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> x7060 ) ) ) $ ( true )
        d707 : ( ( Set -> Set ) ∋ ( ( λ x7090 -> if false then x7090 else Bool ) ) ) $ ( if true then Bool else Bool )
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> if d406 then x7080 else x7080 ) ) ) $ ( if true then d446 else d65 )
        d710 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7130 -> Bool ) ) ) $ ( Bool )
        d710 = ( ( Bool -> Bool ) ∋ ( ( λ x7110 -> ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> if x7110 then d533 else true ) ) ) $ ( d366 ) ) ) ) $ ( if d629 then false else d510 )
        d714 : ( ( Set -> Set ) ∋ ( ( λ x7160 -> ( ( Set -> Set ) ∋ ( ( λ x7170 -> if true then x7160 else Bool ) ) ) $ ( x7160 ) ) ) ) $ ( if true then Bool else Bool )
        d714 = if ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> false ) ) ) $ ( true ) then if true then d274 else true else if false then d325 else d469
        d718 : if false then ( ( Set -> Set ) ∋ ( ( λ x7220 -> x7220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7230 -> Bool ) ) ) $ ( Bool )
        d718 = if ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> d194 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7210 -> x7210 ) ) ) $ ( d98 )
        d724 : if true then if false then Bool else Bool else if true then Bool else Bool
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> if x7250 then d186 else d321 ) ) ) $ ( if false then d145 else d358 )
        d726 : ( ( Set -> Set ) ∋ ( ( λ x7280 -> ( ( Set -> Set ) ∋ ( ( λ x7290 -> if true then x7290 else x7290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d726 = ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> if true then x7270 else false ) ) ) $ ( if false then false else d568 )
        d730 : ( ( Set -> Set ) ∋ ( ( λ x7320 -> ( ( Set -> Set ) ∋ ( ( λ x7330 -> if false then Bool else x7330 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d730 = if if d237 then d533 else true then ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> d479 ) ) ) $ ( true ) else if true then d229 else d159
        d734 : ( ( Set -> Set ) ∋ ( ( λ x7380 -> ( ( Set -> Set ) ∋ ( ( λ x7390 -> if true then x7390 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d734 = if ( ( Bool -> Bool ) ∋ ( ( λ x7350 -> false ) ) ) $ ( d660 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> d358 ) ) ) $ ( d215 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> true ) ) ) $ ( false )
        d740 : if false then ( ( Set -> Set ) ∋ ( ( λ x7440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7450 -> Bool ) ) ) $ ( Bool )
        d740 = if ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> d42 ) ) ) $ ( d564 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> x7420 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> x7430 ) ) ) $ ( d669 )
        d746 : ( ( Set -> Set ) ∋ ( ( λ x7500 -> ( ( Set -> Set ) ∋ ( ( λ x7510 -> if false then Bool else x7510 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d746 = if ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> x7470 ) ) ) $ ( d297 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> d14 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> x7490 ) ) ) $ ( true )
        d752 : if false then if true then Bool else Bool else if true then Bool else Bool
        d752 = if ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> x7530 ) ) ) $ ( d47 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> x7540 ) ) ) $ ( false ) else if d338 then true else d574
        d755 : if true then ( ( Set -> Set ) ∋ ( ( λ x7580 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d755 = ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> ( ( Bool -> Bool ) ∋ ( ( λ x7570 -> if d457 then x7570 else false ) ) ) $ ( x7560 ) ) ) ) $ ( if d232 then false else true )
        d759 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7610 -> Bool ) ) ) $ ( Bool )
        d759 = if ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> x7600 ) ) ) $ ( false ) then if false then d541 else false else if true then d116 else d599
        d762 : ( ( Set -> Set ) ∋ ( ( λ x7650 -> if true then Bool else x7650 ) ) ) $ ( if false then Bool else Bool )
        d762 = if ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> x7640 ) ) ) $ ( d618 ) else if true then true else false
        d766 : ( ( Set -> Set ) ∋ ( ( λ x7680 -> if false then x7680 else Bool ) ) ) $ ( if true then Bool else Bool )
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> if true then x7670 else false ) ) ) $ ( if false then d173 else d680 )
        d769 : if true then ( ( Set -> Set ) ∋ ( ( λ x7730 -> x7730 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d769 = if ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> d686 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7720 -> false ) ) ) $ ( false )
        d774 : if true then if true then Bool else Bool else if true then Bool else Bool
        d774 = if ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7760 -> d599 ) ) ) $ ( d479 ) else if false then false else true
        d777 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7790 -> Bool ) ) ) $ ( Bool )
        d777 = ( ( Bool -> Bool ) ∋ ( ( λ x7780 -> if d289 then d537 else false ) ) ) $ ( if d406 then d306 else true )
        d780 : if false then ( ( Set -> Set ) ∋ ( ( λ x7830 -> x7830 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7840 -> Bool ) ) ) $ ( Bool )
        d780 = ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> if x7820 then d606 else d155 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d387 )
        d785 : if false then if true then Bool else Bool else if true then Bool else Bool
        d785 = if ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> d278 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> d755 ) ) ) $ ( d292 ) else if true then false else d167
        d788 : if true then ( ( Set -> Set ) ∋ ( ( λ x7890 -> x7890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7900 -> x7900 ) ) ) $ ( Bool )
        d788 = if if d682 then d596 else false then if d759 then d94 else d22 else if false then false else false
        d791 : if true then ( ( Set -> Set ) ∋ ( ( λ x7940 -> x7940 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d791 = ( ( Bool -> Bool ) ∋ ( ( λ x7920 -> ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> if true then d321 else x7930 ) ) ) $ ( d314 ) ) ) ) $ ( if d599 then d145 else false )
        d795 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7970 -> Bool ) ) ) $ ( Bool )
        d795 = ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> if x7960 then d123 else d374 ) ) ) $ ( if d341 then true else d215 )
        d798 : ( ( Set -> Set ) ∋ ( ( λ x8000 -> ( ( Set -> Set ) ∋ ( ( λ x8010 -> if false then x8010 else x8000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d798 = if if d602 then d325 else d510 then if d366 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> x7990 ) ) ) $ ( true )
        d802 : ( ( Set -> Set ) ∋ ( ( λ x8050 -> ( ( Set -> Set ) ∋ ( ( λ x8060 -> if true then x8060 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> if x8040 then d145 else x8030 ) ) ) $ ( true ) ) ) ) $ ( if true then d499 else false )
        d807 : if false then ( ( Set -> Set ) ∋ ( ( λ x8090 -> x8090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8100 -> x8100 ) ) ) $ ( Bool )
        d807 = ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> if false then true else x8080 ) ) ) $ ( if false then false else d499 )
        d811 : ( ( Set -> Set ) ∋ ( ( λ x8130 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d811 = if if d422 then false else d460 then ( ( Bool -> Bool ) ∋ ( ( λ x8120 -> d219 ) ) ) $ ( d703 ) else if d87 then d802 else true
        d814 : if false then ( ( Set -> Set ) ∋ ( ( λ x8160 -> x8160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8170 -> x8170 ) ) ) $ ( Bool )
        d814 = ( ( Bool -> Bool ) ∋ ( ( λ x8150 -> if d442 then true else x8150 ) ) ) $ ( if false then false else true )
        d818 : ( ( Set -> Set ) ∋ ( ( λ x8210 -> ( ( Set -> Set ) ∋ ( ( λ x8220 -> if false then Bool else x8210 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d818 = if ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> d672 ) ) ) $ ( false ) then if true then d811 else d159 else ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> false ) ) ) $ ( false )
        d823 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8260 -> x8260 ) ) ) $ ( Bool )
        d823 = if ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> d109 ) ) ) $ ( d795 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> false ) ) ) $ ( false ) else if false then d200 else d176
        d827 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8300 -> x8300 ) ) ) $ ( Bool )
        d827 = ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> if x8280 then true else d47 ) ) ) $ ( d301 ) ) ) ) $ ( if d583 then true else d446 )
        d831 : ( ( Set -> Set ) ∋ ( ( λ x8330 -> ( ( Set -> Set ) ∋ ( ( λ x8340 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if x8320 then x8320 else d707 ) ) ) $ ( if d802 then d714 else d345 )
        d835 : ( ( Set -> Set ) ∋ ( ( λ x8380 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d835 = ( ( Bool -> Bool ) ∋ ( ( λ x8360 -> ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> if x8360 then false else x8360 ) ) ) $ ( false ) ) ) ) $ ( if d460 then false else true )
        d839 : ( ( Set -> Set ) ∋ ( ( λ x8430 -> ( ( Set -> Set ) ∋ ( ( λ x8440 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d839 = if ( ( Bool -> Bool ) ∋ ( ( λ x8400 -> d446 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8410 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> x8420 ) ) ) $ ( d350 )
        d845 : ( ( Set -> Set ) ∋ ( ( λ x8470 -> ( ( Set -> Set ) ∋ ( ( λ x8480 -> if true then x8470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d845 = ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> if x8460 then d5 else true ) ) ) $ ( if d38 then d127 else d259 )
        d849 : ( ( Set -> Set ) ∋ ( ( λ x8500 -> ( ( Set -> Set ) ∋ ( ( λ x8510 -> if true then Bool else x8500 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d849 = if if d151 then d629 else false then if false then d382 else d186 else if d387 then true else true
        d852 : ( ( Set -> Set ) ∋ ( ( λ x8540 -> if true then x8540 else Bool ) ) ) $ ( if true then Bool else Bool )
        d852 = ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> if d202 then x8530 else true ) ) ) $ ( if d777 then true else true )
        d855 : if true then ( ( Set -> Set ) ∋ ( ( λ x8590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8600 -> x8600 ) ) ) $ ( Bool )
        d855 = if ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> x8570 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8580 -> false ) ) ) $ ( d87 )
        d861 : ( ( Set -> Set ) ∋ ( ( λ x8630 -> ( ( Set -> Set ) ∋ ( ( λ x8640 -> if true then Bool else x8640 ) ) ) $ ( x8630 ) ) ) ) $ ( if true then Bool else Bool )
        d861 = ( ( Bool -> Bool ) ∋ ( ( λ x8620 -> if d669 then x8620 else true ) ) ) $ ( if true then false else d225 )
        d865 : ( ( Set -> Set ) ∋ ( ( λ x8670 -> if false then x8670 else Bool ) ) ) $ ( if true then Bool else Bool )
        d865 = ( ( Bool -> Bool ) ∋ ( ( λ x8660 -> if x8660 then x8660 else true ) ) ) $ ( if true then d229 else d472 )
        d868 : ( ( Set -> Set ) ∋ ( ( λ x8700 -> ( ( Set -> Set ) ∋ ( ( λ x8710 -> if false then x8710 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d868 = if if true then true else d579 then ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> d318 ) ) ) $ ( d802 ) else if true then false else false
        d872 : if true then ( ( Set -> Set ) ∋ ( ( λ x8750 -> x8750 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8760 -> x8760 ) ) ) $ ( Bool )
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x8730 -> ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> if false then true else d330 ) ) ) $ ( d865 ) ) ) ) $ ( if false then false else true )
        d877 : ( ( Set -> Set ) ∋ ( ( λ x8790 -> if false then x8790 else Bool ) ) ) $ ( if false then Bool else Bool )
        d877 = if ( ( Bool -> Bool ) ∋ ( ( λ x8780 -> d18 ) ) ) $ ( true ) then if false then false else d762 else if d65 then false else false
        d880 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8820 -> x8820 ) ) ) $ ( Bool )
        d880 = ( ( Bool -> Bool ) ∋ ( ( λ x8810 -> if x8810 then d469 else d755 ) ) ) $ ( if false then d510 else d176 )
        d883 : if false then ( ( Set -> Set ) ∋ ( ( λ x8850 -> x8850 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> if d599 then d392 else x8840 ) ) ) $ ( if true then false else d637 )
        d886 : ( ( Set -> Set ) ∋ ( ( λ x8870 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d886 = if if false then d5 else false then if true then false else d635 else if true then d707 else false
        d888 : ( ( Set -> Set ) ∋ ( ( λ x8910 -> ( ( Set -> Set ) ∋ ( ( λ x8920 -> if true then Bool else x8920 ) ) ) $ ( x8910 ) ) ) ) $ ( if false then Bool else Bool )
        d888 = ( ( Bool -> Bool ) ∋ ( ( λ x8890 -> ( ( Bool -> Bool ) ∋ ( ( λ x8900 -> if d155 then true else d596 ) ) ) $ ( x8890 ) ) ) ) $ ( if true then d426 else d724 )
        d893 : ( ( Set -> Set ) ∋ ( ( λ x8960 -> if false then x8960 else Bool ) ) ) $ ( if true then Bool else Bool )
        d893 = if if true then d865 else d531 then ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> d301 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8950 -> x8950 ) ) ) $ ( d613 )
        d897 : ( ( Set -> Set ) ∋ ( ( λ x8980 -> if true then x8980 else Bool ) ) ) $ ( if false then Bool else Bool )
        d897 = if if d292 then d433 else d138 then if true then d411 else d769 else if true then d245 else true
        d899 : ( ( Set -> Set ) ∋ ( ( λ x9010 -> ( ( Set -> Set ) ∋ ( ( λ x9020 -> if true then x9020 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d899 = ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> if true then d883 else d129 ) ) ) $ ( if d564 then false else d845 )
        d903 : ( ( Set -> Set ) ∋ ( ( λ x9060 -> if false then x9060 else x9060 ) ) ) $ ( if false then Bool else Bool )
        d903 = if ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> d835 ) ) ) $ ( d242 ) then if d676 then d625 else d334 else ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> d568 ) ) ) $ ( d734 )
        d907 : ( ( Set -> Set ) ∋ ( ( λ x9090 -> ( ( Set -> Set ) ∋ ( ( λ x9100 -> if true then Bool else x9100 ) ) ) $ ( x9090 ) ) ) ) $ ( if false then Bool else Bool )
        d907 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> false ) ) ) $ ( true ) else if d680 then d693 else false
        d911 : ( ( Set -> Set ) ∋ ( ( λ x9130 -> if true then x9130 else x9130 ) ) ) $ ( if true then Bool else Bool )
        d911 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> true ) ) ) $ ( false ) else if d544 then false else d730
        d914 : if true then if true then Bool else Bool else if false then Bool else Bool
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> if false then true else d827 ) ) ) $ ( if true then d237 else d297 )
        d916 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9180 -> Bool ) ) ) $ ( Bool )
        d916 = if if d170 then false else false then if d911 then d872 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9170 -> d127 ) ) ) $ ( d92 )
        d919 : if true then ( ( Set -> Set ) ∋ ( ( λ x9210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9220 -> Bool ) ) ) $ ( Bool )
        d919 = if ( ( Bool -> Bool ) ∋ ( ( λ x9200 -> false ) ) ) $ ( d766 ) then if false then false else true else if d274 then true else d823
        d923 : if true then if true then Bool else Bool else if true then Bool else Bool
        d923 = if ( ( Bool -> Bool ) ∋ ( ( λ x9240 -> x9240 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9250 -> x9250 ) ) ) $ ( d849 ) else if d769 then false else d311
        d926 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9290 -> Bool ) ) ) $ ( Bool )
        d926 = if ( ( Bool -> Bool ) ∋ ( ( λ x9270 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> true ) ) ) $ ( d35 ) else if true then false else d142
        d930 : if false then ( ( Set -> Set ) ∋ ( ( λ x9330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d930 = ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> if d724 then d229 else x9320 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d934 : ( ( Set -> Set ) ∋ ( ( λ x9360 -> if false then Bool else x9360 ) ) ) $ ( if false then Bool else Bool )
        d934 = if if false then d579 else d267 then ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> d289 ) ) ) $ ( true ) else if d1 then false else true
        d937 : if true then ( ( Set -> Set ) ∋ ( ( λ x9400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9410 -> Bool ) ) ) $ ( Bool )
        d937 = if if true then d181 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> x9380 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9390 -> true ) ) ) $ ( d163 )
        d942 : ( ( Set -> Set ) ∋ ( ( λ x9450 -> ( ( Set -> Set ) ∋ ( ( λ x9460 -> if false then Bool else x9460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x9430 -> ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> if true then d699 else x9440 ) ) ) $ ( d122 ) ) ) ) $ ( if d318 then true else false )
        d947 : ( ( Set -> Set ) ∋ ( ( λ x9490 -> ( ( Set -> Set ) ∋ ( ( λ x9500 -> if false then x9500 else x9500 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d947 = ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> if d250 then x9480 else d579 ) ) ) $ ( if true then d916 else true )
        d951 : if false then ( ( Set -> Set ) ∋ ( ( λ x9540 -> x9540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9550 -> x9550 ) ) ) $ ( Bool )
        d951 = if if d823 then true else d606 then ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> x9520 ) ) ) $ ( d839 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> false ) ) ) $ ( d807 )
        d956 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9590 -> x9590 ) ) ) $ ( Bool )
        d956 = ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> if false then x9570 else d314 ) ) ) $ ( x9570 ) ) ) ) $ ( if d245 then true else d693 )
        d960 : if true then if true then Bool else Bool else if true then Bool else Bool
        d960 = if if d610 then false else d544 then ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> d774 ) ) ) $ ( d682 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> d798 ) ) ) $ ( true )
        d963 : ( ( Set -> Set ) ∋ ( ( λ x9660 -> if true then x9660 else Bool ) ) ) $ ( if false then Bool else Bool )
        d963 = ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> if false then x9640 else d669 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d967 : ( ( Set -> Set ) ∋ ( ( λ x9690 -> ( ( Set -> Set ) ∋ ( ( λ x9700 -> if true then Bool else Bool ) ) ) $ ( x9690 ) ) ) ) $ ( if false then Bool else Bool )
        d967 = ( ( Bool -> Bool ) ∋ ( ( λ x9680 -> if true then true else true ) ) ) $ ( if true then d98 else d494 )
        d971 : ( ( Set -> Set ) ∋ ( ( λ x9730 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> if x9720 then d289 else true ) ) ) $ ( if d32 then true else d29 )
        d974 : ( ( Set -> Set ) ∋ ( ( λ x9770 -> if false then Bool else x9770 ) ) ) $ ( if true then Bool else Bool )
        d974 = if ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> x9750 ) ) ) $ ( d888 ) then if true then d449 else d951 else ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> true ) ) ) $ ( false )
        d978 : ( ( Set -> Set ) ∋ ( ( λ x9800 -> if false then x9800 else Bool ) ) ) $ ( if true then Bool else Bool )
        d978 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> d457 ) ) ) $ ( d262 ) else if d255 then d669 else d718
        d981 : if false then if true then Bool else Bool else if true then Bool else Bool
        d981 = ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> if true then d845 else false ) ) ) $ ( x9820 ) ) ) ) $ ( if d318 then d555 else d621 )
        d984 : if false then if true then Bool else Bool else if true then Bool else Bool
        d984 = if if false then true else d672 then ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> false ) ) ) $ ( true ) else if d956 then true else true
        d986 : ( ( Set -> Set ) ∋ ( ( λ x9890 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d986 = if ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> true ) ) ) $ ( d827 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> x9880 ) ) ) $ ( d396 ) else if d614 then false else false
        d990 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9930 -> x9930 ) ) ) $ ( Bool )
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x9910 -> ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> if x9920 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d292 then false else d301 )
        d994 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9970 -> Bool ) ) ) $ ( Bool )
        d994 = ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> if d127 then x9950 else false ) ) ) $ ( d614 ) ) ) ) $ ( if true then true else d374 )
        d998 : if true then if true then Bool else Bool else if false then Bool else Bool
        d998 = if if false then false else d613 then ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> true ) ) ) $ ( d433 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10000 -> false ) ) ) $ ( d527 )
        d1001 : if true then ( ( Set -> Set ) ∋ ( ( λ x10040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10050 -> x10050 ) ) ) $ ( Bool )
        d1001 = if if d994 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10030 -> true ) ) ) $ ( d839 )
        d1006 : if true then ( ( Set -> Set ) ∋ ( ( λ x10100 -> x10100 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1006 = if ( ( Bool -> Bool ) ∋ ( ( λ x10070 -> d318 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10080 -> x10080 ) ) ) $ ( d138 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> d971 ) ) ) $ ( false )
        d1011 : ( ( Set -> Set ) ∋ ( ( λ x10130 -> ( ( Set -> Set ) ∋ ( ( λ x10140 -> if true then Bool else x10140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> if x10120 then true else d58 ) ) ) $ ( if d194 then true else false )
        d1015 : ( ( Set -> Set ) ∋ ( ( λ x10170 -> if true then x10170 else x10170 ) ) ) $ ( if true then Bool else Bool )
        d1015 = ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> if d138 then true else d202 ) ) ) $ ( if false then true else d138 )
        d1018 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> if x10190 then x10190 else d865 ) ) ) $ ( if d599 then d555 else d190 )
        d1020 : if true then ( ( Set -> Set ) ∋ ( ( λ x10230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10240 -> x10240 ) ) ) $ ( Bool )
        d1020 = ( ( Bool -> Bool ) ∋ ( ( λ x10210 -> ( ( Bool -> Bool ) ∋ ( ( λ x10220 -> if d693 then d149 else x10220 ) ) ) $ ( x10210 ) ) ) ) $ ( if d759 then true else d897 )
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x10280 -> ( ( Set -> Set ) ∋ ( ( λ x10290 -> if false then x10290 else Bool ) ) ) $ ( x10280 ) ) ) ) $ ( if false then Bool else Bool )
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> if true then true else d378 ) ) ) $ ( x10260 ) ) ) ) $ ( if d237 then d676 else false )
        d1030 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10330 -> x10330 ) ) ) $ ( Bool )
        d1030 = if ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> d637 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10320 -> false ) ) ) $ ( true ) else if d138 then d422 else true
        d1034 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if false then d151 else d960 ) ) ) $ ( if true then d494 else true )
        d1036 : if false then ( ( Set -> Set ) ∋ ( ( λ x10380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10390 -> x10390 ) ) ) $ ( Bool )
        d1036 = ( ( Bool -> Bool ) ∋ ( ( λ x10370 -> if false then true else d449 ) ) ) $ ( if false then true else d514 )
        d1040 : if false then ( ( Set -> Set ) ∋ ( ( λ x10430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10440 -> Bool ) ) ) $ ( Bool )
        d1040 = if ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> x10410 ) ) ) $ ( true ) then if false then true else d978 else ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> x10420 ) ) ) $ ( true )
        d1045 : ( ( Set -> Set ) ∋ ( ( λ x10490 -> ( ( Set -> Set ) ∋ ( ( λ x10500 -> if false then Bool else x10500 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1045 = if ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> x10460 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10470 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> x10480 ) ) ) $ ( false )
        d1051 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10540 -> Bool ) ) ) $ ( Bool )
        d1051 = ( ( Bool -> Bool ) ∋ ( ( λ x10520 -> ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> if d469 then false else d1036 ) ) ) $ ( d599 ) ) ) ) $ ( if false then d699 else d502 )
        d1055 : ( ( Set -> Set ) ∋ ( ( λ x10570 -> ( ( Set -> Set ) ∋ ( ( λ x10580 -> if false then x10580 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1055 = if if true then d531 else d934 then if d245 then d476 else true else ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> true ) ) ) $ ( d835 )
        d1059 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10620 -> x10620 ) ) ) $ ( Bool )
        d1059 = if ( ( Bool -> Bool ) ∋ ( ( λ x10600 -> d699 ) ) ) $ ( d693 ) then if d306 then false else d587 else ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> x10610 ) ) ) $ ( d703 )
        d1063 : ( ( Set -> Set ) ∋ ( ( λ x10650 -> ( ( Set -> Set ) ∋ ( ( λ x10660 -> if true then Bool else x10650 ) ) ) $ ( x10650 ) ) ) ) $ ( if true then Bool else Bool )
        d1063 = ( ( Bool -> Bool ) ∋ ( ( λ x10640 -> if x10640 then d338 else x10640 ) ) ) $ ( if true then true else false )
        d1067 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10690 -> x10690 ) ) ) $ ( Bool )
        d1067 = ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> if false then d544 else d176 ) ) ) $ ( if d245 then true else true )
        d1070 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> if true then x10740 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1070 = if ( ( Bool -> Bool ) ∋ ( ( λ x10710 -> x10710 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10720 -> d886 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> x10730 ) ) ) $ ( false )
        d1075 : if false then ( ( Set -> Set ) ∋ ( ( λ x10780 -> x10780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10790 -> Bool ) ) ) $ ( Bool )
        d1075 = ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> if false then d591 else x10770 ) ) ) $ ( true ) ) ) ) $ ( if true then d271 else d502 )
        d1080 : if false then ( ( Set -> Set ) ∋ ( ( λ x10830 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1080 = ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> ( ( Bool -> Bool ) ∋ ( ( λ x10820 -> if false then false else true ) ) ) $ ( x10810 ) ) ) ) $ ( if d930 then d602 else true )
        d1084 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> if true then x10850 else false ) ) ) $ ( x10850 ) ) ) ) $ ( if true then false else false )
        d1087 : ( ( Set -> Set ) ∋ ( ( λ x10900 -> ( ( Set -> Set ) ∋ ( ( λ x10910 -> if false then x10910 else Bool ) ) ) $ ( x10900 ) ) ) ) $ ( if false then Bool else Bool )
        d1087 = if ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> x10880 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> true ) ) ) $ ( true ) else if d877 then d483 else false
        d1092 : ( ( Set -> Set ) ∋ ( ( λ x10950 -> ( ( Set -> Set ) ∋ ( ( λ x10960 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1092 = if ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> x10930 ) ) ) $ ( d499 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> x10940 ) ) ) $ ( true ) else if true then true else d835
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x10980 -> if false then x10980 else x10980 ) ) ) $ ( if true then Bool else Bool )
        d1097 = if if true then d766 else d92 then if false then true else d618 else if d75 then false else d695
        d1099 : ( ( Set -> Set ) ∋ ( ( λ x11010 -> ( ( Set -> Set ) ∋ ( ( λ x11020 -> if true then Bool else Bool ) ) ) $ ( x11010 ) ) ) ) $ ( if false then Bool else Bool )
        d1099 = if ( ( Bool -> Bool ) ∋ ( ( λ x11000 -> x11000 ) ) ) $ ( false ) then if true then true else false else if d798 then true else true
        d1103 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1103 = if if false then d574 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11040 -> d442 ) ) ) $ ( d118 ) else if d55 then false else false
        d1105 : ( ( Set -> Set ) ∋ ( ( λ x11080 -> ( ( Set -> Set ) ∋ ( ( λ x11090 -> if true then x11090 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1105 = ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> if true then x11060 else x11060 ) ) ) $ ( true ) ) ) ) $ ( if d170 then true else false )
        d1110 : ( ( Set -> Set ) ∋ ( ( λ x11120 -> ( ( Set -> Set ) ∋ ( ( λ x11130 -> if true then x11120 else x11120 ) ) ) $ ( x11120 ) ) ) ) $ ( if true then Bool else Bool )
        d1110 = ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> if true then false else x11110 ) ) ) $ ( if d306 then d571 else false )
        d1114 : if false then ( ( Set -> Set ) ∋ ( ( λ x11160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11170 -> x11170 ) ) ) $ ( Bool )
        d1114 = if if true then false else true then if false then false else d956 else ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> d271 ) ) ) $ ( true )
        d1118 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> if x11190 then true else d555 ) ) ) $ ( if d1067 then d559 else d602 )
        d1120 : if true then ( ( Set -> Set ) ∋ ( ( λ x11230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11240 -> x11240 ) ) ) $ ( Bool )
        d1120 = if if false then d984 else true then ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> d769 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11220 -> false ) ) ) $ ( d1045 )
        d1125 : ( ( Set -> Set ) ∋ ( ( λ x11280 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1125 = if if d1011 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x11260 -> false ) ) ) $ ( d472 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> true ) ) ) $ ( d1045 )
        d1129 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11310 -> Bool ) ) ) $ ( Bool )
        d1129 = if if d116 then d83 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11300 -> d587 ) ) ) $ ( d372 ) else if true then d232 else true
        d1132 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11340 -> Bool ) ) ) $ ( Bool )
        d1132 = ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> if false then d537 else false ) ) ) $ ( if d400 then false else d644 )
        d1135 : ( ( Set -> Set ) ∋ ( ( λ x11370 -> ( ( Set -> Set ) ∋ ( ( λ x11380 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1135 = if ( ( Bool -> Bool ) ∋ ( ( λ x11360 -> true ) ) ) $ ( true ) then if d29 then true else false else if d138 then d215 else false
        d1139 : if false then ( ( Set -> Set ) ∋ ( ( λ x11430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11440 -> Bool ) ) ) $ ( Bool )
        d1139 = if ( ( Bool -> Bool ) ∋ ( ( λ x11400 -> d389 ) ) ) $ ( d472 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> true ) ) ) $ ( d984 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> true ) ) ) $ ( false )
        d1145 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1145 = if ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> false ) ) ) $ ( d1099 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> x11480 ) ) ) $ ( true )
        d1149 : ( ( Set -> Set ) ∋ ( ( λ x11520 -> if true then x11520 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1149 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x11500 -> x11500 ) ) ) $ ( d372 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11510 -> false ) ) ) $ ( true )
        d1153 : ( ( Set -> Set ) ∋ ( ( λ x11550 -> if false then x11550 else x11550 ) ) ) $ ( if true then Bool else Bool )
        d1153 = if ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> d483 ) ) ) $ ( true ) then if true then d1132 else d1025 else if d1139 then false else false
        d1156 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1156 = ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> if x11570 then true else false ) ) ) $ ( true ) ) ) ) $ ( if true then d903 else false )
        d1159 : ( ( Set -> Set ) ∋ ( ( λ x11610 -> if false then Bool else x11610 ) ) ) $ ( if true then Bool else Bool )
        d1159 = if if d202 then d142 else d951 then ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> x11600 ) ) ) $ ( true ) else if false then d839 else false
        d1162 : if false then ( ( Set -> Set ) ∋ ( ( λ x11650 -> x11650 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1162 = ( ( Bool -> Bool ) ∋ ( ( λ x11630 -> ( ( Bool -> Bool ) ∋ ( ( λ x11640 -> if d255 then x11630 else false ) ) ) $ ( d947 ) ) ) ) $ ( if d937 then false else d155 )
        d1166 : if true then ( ( Set -> Set ) ∋ ( ( λ x11680 -> x11680 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1166 = if if d281 then false else d926 then if d1006 then d469 else true else ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> x11670 ) ) ) $ ( false )
        d1169 : ( ( Set -> Set ) ∋ ( ( λ x11710 -> ( ( Set -> Set ) ∋ ( ( λ x11720 -> if true then x11710 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1169 = if ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> x11700 ) ) ) $ ( false ) then if false then d123 else false else if d652 then d149 else d923
        d1173 : ( ( Set -> Set ) ∋ ( ( λ x11750 -> if true then x11750 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1173 = ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> if x11740 then d919 else x11740 ) ) ) $ ( if d555 then true else true )
        d1176 : if true then ( ( Set -> Set ) ∋ ( ( λ x11790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11800 -> Bool ) ) ) $ ( Bool )
        d1176 = ( ( Bool -> Bool ) ∋ ( ( λ x11770 -> ( ( Bool -> Bool ) ∋ ( ( λ x11780 -> if x11780 then x11770 else d1070 ) ) ) $ ( d382 ) ) ) ) $ ( if d186 then true else false )
        d1181 : ( ( Set -> Set ) ∋ ( ( λ x11840 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1181 = if ( ( Bool -> Bool ) ∋ ( ( λ x11820 -> x11820 ) ) ) $ ( false ) then if d127 then d430 else d555 else ( ( Bool -> Bool ) ∋ ( ( λ x11830 -> d330 ) ) ) $ ( false )
        d1185 : ( ( Set -> Set ) ∋ ( ( λ x11890 -> ( ( Set -> Set ) ∋ ( ( λ x11900 -> if true then x11900 else Bool ) ) ) $ ( x11890 ) ) ) ) $ ( if false then Bool else Bool )
        d1185 = if ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> x11860 ) ) ) $ ( d1169 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11870 -> true ) ) ) $ ( d460 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> d861 ) ) ) $ ( d574 )
        d1191 : ( ( Set -> Set ) ∋ ( ( λ x11930 -> ( ( Set -> Set ) ∋ ( ( λ x11940 -> if false then x11940 else x11940 ) ) ) $ ( x11930 ) ) ) ) $ ( if false then Bool else Bool )
        d1191 = ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> if d297 then d888 else d537 ) ) ) $ ( if d205 then false else false )
        d1195 : ( ( Set -> Set ) ∋ ( ( λ x11970 -> ( ( Set -> Set ) ∋ ( ( λ x11980 -> if true then x11980 else x11980 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1195 = if if false then d591 else d960 then if d29 then true else d32 else ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> true ) ) ) $ ( d1070 )
        d1199 : if true then ( ( Set -> Set ) ∋ ( ( λ x12010 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1199 = ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> if d1145 then x12000 else d907 ) ) ) $ ( if false then true else d897 )
        d1202 : ( ( Set -> Set ) ∋ ( ( λ x12050 -> if false then Bool else x12050 ) ) ) $ ( if false then Bool else Bool )
        d1202 = ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> ( ( Bool -> Bool ) ∋ ( ( λ x12040 -> if x12040 then false else true ) ) ) $ ( d55 ) ) ) ) $ ( if false then d780 else d726 )
        d1206 : ( ( Set -> Set ) ∋ ( ( λ x12070 -> if true then x12070 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1206 = if if true then d660 else true then if true then true else true else if false then d527 else d606
        d1208 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12100 -> Bool ) ) ) $ ( Bool )
        d1208 = ( ( Bool -> Bool ) ∋ ( ( λ x12090 -> if true then d18 else x12090 ) ) ) $ ( if d5 then d190 else d596 )
        d1211 : if false then ( ( Set -> Set ) ∋ ( ( λ x12130 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12140 -> Bool ) ) ) $ ( Bool )
        d1211 = ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> if d419 then d55 else d190 ) ) ) $ ( if true then d984 else false )
        d1215 : ( ( Set -> Set ) ∋ ( ( λ x12190 -> if true then x12190 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1215 = if ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> d974 ) ) ) $ ( d621 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12180 -> x12180 ) ) ) $ ( true )
        d1220 : ( ( Set -> Set ) ∋ ( ( λ x12230 -> if false then Bool else x12230 ) ) ) $ ( if false then Bool else Bool )
        d1220 = if if d644 then d755 else d707 then ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> false ) ) ) $ ( d1015 )
        d1224 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1224 = ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> if false then x12250 else d1195 ) ) ) $ ( d669 ) ) ) ) $ ( if d334 then d55 else d981 )
        d1227 : if false then ( ( Set -> Set ) ∋ ( ( λ x12290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12300 -> Bool ) ) ) $ ( Bool )
        d1227 = ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> if x12280 then d802 else d163 ) ) ) $ ( if d155 then false else true )
        d1231 : ( ( Set -> Set ) ∋ ( ( λ x12350 -> ( ( Set -> Set ) ∋ ( ( λ x12360 -> if false then x12350 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1231 = if ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> x12320 ) ) ) $ ( d785 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> true ) ) ) $ ( d142 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> d714 ) ) ) $ ( d1215 )
        d1237 : ( ( Set -> Set ) ∋ ( ( λ x12390 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1237 = ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> if x12380 then x12380 else x12380 ) ) ) $ ( if false then false else true )
        d1240 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12430 -> Bool ) ) ) $ ( Bool )
        d1240 = if if d1135 then d259 else d281 then ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> d559 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> d734 ) ) ) $ ( false )
        d1244 : ( ( Set -> Set ) ∋ ( ( λ x12470 -> if false then x12470 else x12470 ) ) ) $ ( if true then Bool else Bool )
        d1244 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12450 -> false ) ) ) $ ( d571 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> d888 ) ) ) $ ( true )
        d1248 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12490 -> x12490 ) ) ) $ ( Bool )
        d1248 = if if d614 then d422 else d1211 then if true then false else d1036 else if d835 then true else false
        d1250 : ( ( Set -> Set ) ∋ ( ( λ x12530 -> ( ( Set -> Set ) ∋ ( ( λ x12540 -> if false then Bool else Bool ) ) ) $ ( x12530 ) ) ) ) $ ( if true then Bool else Bool )
        d1250 = ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> if x12510 then false else x12520 ) ) ) $ ( d759 ) ) ) ) $ ( if d1030 then false else false )
        d1255 : if true then ( ( Set -> Set ) ∋ ( ( λ x12580 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1255 = if ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> x12560 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> true ) ) ) $ ( d606 ) else if d419 then false else d411
        d1259 : ( ( Set -> Set ) ∋ ( ( λ x12610 -> ( ( Set -> Set ) ∋ ( ( λ x12620 -> if false then x12610 else x12610 ) ) ) $ ( x12610 ) ) ) ) $ ( if true then Bool else Bool )
        d1259 = if ( ( Bool -> Bool ) ∋ ( ( λ x12600 -> d1202 ) ) ) $ ( d372 ) then if d250 then true else true else if d1248 then true else false
        d1263 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1263 = ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> if d32 then false else true ) ) ) $ ( if true then d1132 else true )
        d1265 : ( ( Set -> Set ) ∋ ( ( λ x12690 -> if false then Bool else x12690 ) ) ) $ ( if false then Bool else Bool )
        d1265 = if ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> d1011 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> x12670 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> x12680 ) ) ) $ ( d314 )
        d1270 : ( ( Set -> Set ) ∋ ( ( λ x12720 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1270 = if if d62 then d205 else d325 then ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> d240 ) ) ) $ ( false ) else if d564 then d65 else d113
        d1273 : ( ( Set -> Set ) ∋ ( ( λ x12750 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1273 = ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> if x12740 then false else false ) ) ) $ ( if d647 then true else d163 )
        d1276 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12780 -> x12780 ) ) ) $ ( Bool )
        d1276 = ( ( Bool -> Bool ) ∋ ( ( λ x12770 -> if d676 then true else x12770 ) ) ) $ ( if d334 then d181 else true )
        d1279 : ( ( Set -> Set ) ∋ ( ( λ x12810 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1279 = if ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> false ) ) ) $ ( d1220 ) then if d499 then false else d1051 else if d602 then d676 else false
        d1282 : if true then ( ( Set -> Set ) ∋ ( ( λ x12850 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1282 = ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> if false then d26 else false ) ) ) $ ( x12830 ) ) ) ) $ ( if false then d415 else true )
        d1286 : ( ( Set -> Set ) ∋ ( ( λ x12890 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1286 = ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> if true then d669 else x12880 ) ) ) $ ( x12870 ) ) ) ) $ ( if d693 then true else d392 )
        d1290 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12940 -> x12940 ) ) ) $ ( Bool )
        d1290 = if ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> d1125 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12920 -> d978 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> x12930 ) ) ) $ ( d58 )
        d1295 : ( ( Set -> Set ) ∋ ( ( λ x12980 -> ( ( Set -> Set ) ∋ ( ( λ x12990 -> if false then Bool else x12990 ) ) ) $ ( x12980 ) ) ) ) $ ( if false then Bool else Bool )
        d1295 = ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> if x12960 then d919 else x12970 ) ) ) $ ( d682 ) ) ) ) $ ( if d1084 then d1244 else d518 )
        d1300 : ( ( Set -> Set ) ∋ ( ( λ x13020 -> if false then x13020 else x13020 ) ) ) $ ( if true then Bool else Bool )
        d1300 = ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> if true then false else x13010 ) ) ) $ ( if false then d682 else d10 )
        d1303 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13050 -> x13050 ) ) ) $ ( Bool )
        d1303 = if if d591 then false else d788 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> true ) ) ) $ ( true )
        d1306 : ( ( Set -> Set ) ∋ ( ( λ x13080 -> ( ( Set -> Set ) ∋ ( ( λ x13090 -> if false then x13090 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1306 = if if d271 then d647 else d1202 then ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> false ) ) ) $ ( d426 ) else if true then d1067 else d176
        d1310 : ( ( Set -> Set ) ∋ ( ( λ x13130 -> if false then Bool else x13130 ) ) ) $ ( if false then Bool else Bool )
        d1310 = if ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> d934 ) ) ) $ ( d998 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> x13120 ) ) ) $ ( true ) else if d464 then d785 else false
        d1314 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1314 = if if d802 then false else true then if false then d1169 else d494 else ( ( Bool -> Bool ) ∋ ( ( λ x13150 -> true ) ) ) $ ( d514 )
        d1316 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13190 -> Bool ) ) ) $ ( Bool )
        d1316 = ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> ( ( Bool -> Bool ) ∋ ( ( λ x13180 -> if d464 then d489 else x13180 ) ) ) $ ( d464 ) ) ) ) $ ( if true then true else true )
        d1320 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13220 -> x13220 ) ) ) $ ( Bool )
        d1320 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> x13210 ) ) ) $ ( d325 ) else if d1129 then true else true
        d1323 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1323 = if if d755 then true else true then if false then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> false ) ) ) $ ( false )
        d1325 : ( ( Set -> Set ) ∋ ( ( λ x13270 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1325 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13260 -> x13260 ) ) ) $ ( true ) else if true then d433 else d274
        d1328 : ( ( Set -> Set ) ∋ ( ( λ x13300 -> if false then x13300 else x13300 ) ) ) $ ( if false then Bool else Bool )
        d1328 = ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> if false then d951 else d537 ) ) ) $ ( if d759 then d1237 else true )
        d1331 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13340 -> x13340 ) ) ) $ ( Bool )
        d1331 = ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> if x13320 then d1300 else false ) ) ) $ ( false ) ) ) ) $ ( if true then true else d1084 )
        d1335 : if true then ( ( Set -> Set ) ∋ ( ( λ x13370 -> x13370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13380 -> Bool ) ) ) $ ( Bool )
        d1335 = ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> if x13360 then x13360 else x13360 ) ) ) $ ( if false then false else d1159 )
        d1339 : if false then ( ( Set -> Set ) ∋ ( ( λ x13410 -> x13410 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1339 = ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> if x13400 then d396 else d861 ) ) ) $ ( if d29 then d1195 else true )
        d1342 : ( ( Set -> Set ) ∋ ( ( λ x13430 -> if true then Bool else x13430 ) ) ) $ ( if false then Bool else Bool )
        d1342 = if if true then true else true then if true then false else d29 else if d113 then d286 else false
        d1344 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1344 = if if d1034 then d314 else d579 then ( ( Bool -> Bool ) ∋ ( ( λ x13450 -> x13450 ) ) ) $ ( false ) else if true then true else true
        d1346 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13480 -> Bool ) ) ) $ ( Bool )
        d1346 = if if true then d845 else d883 then ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> true ) ) ) $ ( d98 ) else if d338 then false else d362
        d1349 : if false then ( ( Set -> Set ) ∋ ( ( λ x13510 -> x13510 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1349 = if ( ( Bool -> Bool ) ∋ ( ( λ x13500 -> d55 ) ) ) $ ( d614 ) then if d1259 then d1149 else d225 else if false then d345 else d250
        d1352 : ( ( Set -> Set ) ∋ ( ( λ x13530 -> ( ( Set -> Set ) ∋ ( ( λ x13540 -> if false then x13540 else x13540 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1352 = if if false then true else d5 then if true then false else d29 else if d1176 then d845 else false
        d1355 : ( ( Set -> Set ) ∋ ( ( λ x13570 -> if false then x13570 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1355 = ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> if false then true else x13560 ) ) ) $ ( if true then d631 else d591 )
        d1358 : ( ( Set -> Set ) ∋ ( ( λ x13600 -> if true then x13600 else x13600 ) ) ) $ ( if false then Bool else Bool )
        d1358 = ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> if true then x13590 else x13590 ) ) ) $ ( if true then true else false )
        d1361 : if false then ( ( Set -> Set ) ∋ ( ( λ x13640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13650 -> x13650 ) ) ) $ ( Bool )
        d1361 = ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> if x13630 then true else x13620 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d531 )
        d1366 : ( ( Set -> Set ) ∋ ( ( λ x13690 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1366 = ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> ( ( Bool -> Bool ) ∋ ( ( λ x13680 -> if d145 then d714 else x13670 ) ) ) $ ( false ) ) ) ) $ ( if false then d1220 else d849 )
        d1370 : ( ( Set -> Set ) ∋ ( ( λ x13730 -> if true then x13730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1370 = if ( ( Bool -> Bool ) ∋ ( ( λ x13710 -> d237 ) ) ) $ ( d672 ) then if true then false else d845 else ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> true ) ) ) $ ( false )
        d1374 : ( ( Set -> Set ) ∋ ( ( λ x13770 -> ( ( Set -> Set ) ∋ ( ( λ x13780 -> if true then Bool else x13770 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1374 = ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> if x13750 then x13750 else x13760 ) ) ) $ ( true ) ) ) ) $ ( if false then d1208 else false )
        d1379 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13800 -> Bool ) ) ) $ ( Bool )
        d1379 = if if d129 then d98 else d411 then if d83 then d788 else false else if d350 then false else false
        d1381 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1381 = if if d1215 then false else d205 then if true then d930 else d1250 else if d173 then d587 else true
        d1382 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13840 -> Bool ) ) ) $ ( Bool )
        d1382 = if ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> true ) ) ) $ ( d1025 ) then if false then true else true else if d55 then d1132 else d1084
        d1385 : ( ( Set -> Set ) ∋ ( ( λ x13870 -> ( ( Set -> Set ) ∋ ( ( λ x13880 -> if false then x13870 else x13880 ) ) ) $ ( x13870 ) ) ) ) $ ( if false then Bool else Bool )
        d1385 = ( ( Bool -> Bool ) ∋ ( ( λ x13860 -> if x13860 then d669 else d926 ) ) ) $ ( if d1045 then d852 else false )
        d1389 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1389 = if if d769 then d1270 else true then if d1132 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> d780 ) ) ) $ ( true )
        d1391 : ( ( Set -> Set ) ∋ ( ( λ x13940 -> ( ( Set -> Set ) ∋ ( ( λ x13950 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1391 = ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> if true then x13920 else true ) ) ) $ ( true ) ) ) ) $ ( if d29 then d1382 else true )
        d1396 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13990 -> Bool ) ) ) $ ( Bool )
        d1396 = ( ( Bool -> Bool ) ∋ ( ( λ x13970 -> ( ( Bool -> Bool ) ∋ ( ( λ x13980 -> if x13980 then d1206 else x13980 ) ) ) $ ( false ) ) ) ) $ ( if d167 then d1153 else true )
        d1400 : ( ( Set -> Set ) ∋ ( ( λ x14020 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1400 = if if d14 then true else d1300 then ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> false ) ) ) $ ( false ) else if d202 then d122 else true
        d1403 : ( ( Set -> Set ) ∋ ( ( λ x14050 -> ( ( Set -> Set ) ∋ ( ( λ x14060 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1403 = ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> if x14040 then false else true ) ) ) $ ( if false then d802 else true )
        d1407 : if true then ( ( Set -> Set ) ∋ ( ( λ x14100 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1407 = if if d123 then d934 else true then ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> x14080 ) ) ) $ ( d62 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> true ) ) ) $ ( false )
        d1411 : if false then ( ( Set -> Set ) ∋ ( ( λ x14130 -> x14130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1411 = ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> if d338 then false else x14120 ) ) ) $ ( if d637 then true else d155 )
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14160 -> ( ( Set -> Set ) ∋ ( ( λ x14170 -> if false then x14170 else x14160 ) ) ) $ ( x14160 ) ) ) ) $ ( if false then Bool else Bool )
        d1414 = ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> if true then d202 else x14150 ) ) ) $ ( if false then true else d647 )
        d1418 : if false then ( ( Set -> Set ) ∋ ( ( λ x14200 -> x14200 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1418 = if ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> d555 ) ) ) $ ( true ) then if true then false else true else if d29 then true else d1129
        d1421 : if true then ( ( Set -> Set ) ∋ ( ( λ x14230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14240 -> x14240 ) ) ) $ ( Bool )
        d1421 = if if d625 then true else d555 then ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> d872 ) ) ) $ ( d1248 ) else if d403 then d610 else true
        d1425 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14270 -> Bool ) ) ) $ ( Bool )
        d1425 = ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> if x14260 then x14260 else false ) ) ) $ ( if d967 then d1018 else true )
        d1428 : if true then ( ( Set -> Set ) ∋ ( ( λ x14300 -> x14300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14310 -> Bool ) ) ) $ ( Bool )
        d1428 = ( ( Bool -> Bool ) ∋ ( ( λ x14290 -> if true then x14290 else true ) ) ) $ ( if true then false else true )
        d1432 : ( ( Set -> Set ) ∋ ( ( λ x14340 -> ( ( Set -> Set ) ∋ ( ( λ x14350 -> if true then x14350 else x14340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1432 = if if true then false else d788 then ( ( Bool -> Bool ) ∋ ( ( λ x14330 -> x14330 ) ) ) $ ( d599 ) else if true then true else true
        d1436 : if false then ( ( Set -> Set ) ∋ ( ( λ x14380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14390 -> Bool ) ) ) $ ( Bool )
        d1436 = ( ( Bool -> Bool ) ∋ ( ( λ x14370 -> if x14370 then x14370 else x14370 ) ) ) $ ( if false then true else d868 )
        d1440 : ( ( Set -> Set ) ∋ ( ( λ x14430 -> ( ( Set -> Set ) ∋ ( ( λ x14440 -> if true then x14430 else Bool ) ) ) $ ( x14430 ) ) ) ) $ ( if false then Bool else Bool )
        d1440 = ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> ( ( Bool -> Bool ) ∋ ( ( λ x14420 -> if x14420 then d396 else true ) ) ) $ ( d587 ) ) ) ) $ ( if true then d579 else d1352 )
        d1445 : if true then ( ( Set -> Set ) ∋ ( ( λ x14490 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1445 = if ( ( Bool -> Bool ) ∋ ( ( λ x14460 -> d1440 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> d341 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> d1237 ) ) ) $ ( false )
        d1450 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1450 = if if false then false else true then if d133 then false else true else if d181 then true else false
        d1451 : if false then ( ( Set -> Set ) ∋ ( ( λ x14540 -> x14540 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1451 = ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> if false then x14520 else x14520 ) ) ) $ ( true ) ) ) ) $ ( if true then d411 else d301 )
        d1455 : ( ( Set -> Set ) ∋ ( ( λ x14580 -> ( ( Set -> Set ) ∋ ( ( λ x14590 -> if true then Bool else x14580 ) ) ) $ ( x14580 ) ) ) ) $ ( if true then Bool else Bool )
        d1455 = ( ( Bool -> Bool ) ∋ ( ( λ x14560 -> ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> if x14570 then x14560 else d1389 ) ) ) $ ( d1070 ) ) ) ) $ ( if true then d1084 else d641 )
        d1460 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1460 = if ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> x14610 ) ) ) $ ( true ) then if true then true else d903 else ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> x14620 ) ) ) $ ( false )
        d1463 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14650 -> Bool ) ) ) $ ( Bool )
        d1463 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> d209 ) ) ) $ ( false ) else if true then d811 else true
        d1466 : if false then ( ( Set -> Set ) ∋ ( ( λ x14690 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1466 = if ( ( Bool -> Bool ) ∋ ( ( λ x14670 -> false ) ) ) $ ( false ) then if true then d1149 else d1450 else ( ( Bool -> Bool ) ∋ ( ( λ x14680 -> true ) ) ) $ ( d1103 )
        d1470 : ( ( Set -> Set ) ∋ ( ( λ x14720 -> if true then x14720 else x14720 ) ) ) $ ( if true then Bool else Bool )
        d1470 = if if d780 then d170 else d433 then ( ( Bool -> Bool ) ∋ ( ( λ x14710 -> d629 ) ) ) $ ( d641 ) else if false then false else d814
        d1473 : ( ( Set -> Set ) ∋ ( ( λ x14750 -> ( ( Set -> Set ) ∋ ( ( λ x14760 -> if false then Bool else x14750 ) ) ) $ ( x14750 ) ) ) ) $ ( if false then Bool else Bool )
        d1473 = ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> if true then d647 else false ) ) ) $ ( if true then false else d1240 )
        d1477 : ( ( Set -> Set ) ∋ ( ( λ x14800 -> ( ( Set -> Set ) ∋ ( ( λ x14810 -> if false then Bool else x14800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1477 = ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> ( ( Bool -> Bool ) ∋ ( ( λ x14790 -> if true then x14780 else d766 ) ) ) $ ( x14780 ) ) ) ) $ ( if false then false else d602 )
        d1482 : ( ( Set -> Set ) ∋ ( ( λ x14830 -> ( ( Set -> Set ) ∋ ( ( λ x14840 -> if false then x14840 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1482 = if if false then d613 else d1276 then if d133 then d98 else d1282 else if true then d1145 else true
        d1485 : if false then ( ( Set -> Set ) ∋ ( ( λ x14880 -> x14880 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14890 -> x14890 ) ) ) $ ( Bool )
        d1485 = ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> if false then false else d1097 ) ) ) $ ( d907 ) ) ) ) $ ( if true then false else d1314 )
        d1490 : ( ( Set -> Set ) ∋ ( ( λ x14930 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1490 = if ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> x14910 ) ) ) $ ( d795 ) then if d868 then d1276 else d499 else ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> x14920 ) ) ) $ ( d457 )
        d1494 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14960 -> x14960 ) ) ) $ ( Bool )
        d1494 = if if true then d341 else d1418 then if d861 then d613 else d602 else ( ( Bool -> Bool ) ∋ ( ( λ x14950 -> false ) ) ) $ ( false )
        d1497 : ( ( Set -> Set ) ∋ ( ( λ x15000 -> if true then x15000 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1497 = ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> if x14990 then x14980 else d551 ) ) ) $ ( true ) ) ) ) $ ( if d1120 then false else d1103 )
        d1501 : ( ( Set -> Set ) ∋ ( ( λ x15040 -> ( ( Set -> Set ) ∋ ( ( λ x15050 -> if false then x15050 else x15040 ) ) ) $ ( x15040 ) ) ) ) $ ( if true then Bool else Bool )
        d1501 = ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> if d113 then true else x15020 ) ) ) $ ( x15020 ) ) ) ) $ ( if true then true else d537 )
        d1506 : ( ( Set -> Set ) ∋ ( ( λ x15090 -> if false then Bool else x15090 ) ) ) $ ( if true then Bool else Bool )
        d1506 = ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> if x15070 then true else false ) ) ) $ ( false ) ) ) ) $ ( if d631 then d752 else d499 )
        d1510 : if false then ( ( Set -> Set ) ∋ ( ( λ x15120 -> x15120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15130 -> Bool ) ) ) $ ( Bool )
        d1510 = if if true then d1020 else true then ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> x15110 ) ) ) $ ( d888 ) else if false then false else d599
        d1514 : if false then ( ( Set -> Set ) ∋ ( ( λ x15160 -> x15160 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1514 = ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> if x15150 then x15150 else d200 ) ) ) $ ( if d893 then d1314 else false )
        d1517 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1517 = ( ( Bool -> Bool ) ∋ ( ( λ x15180 -> if d777 then x15180 else d304 ) ) ) $ ( if d1361 then d1451 else false )
        d1519 : if false then ( ( Set -> Set ) ∋ ( ( λ x15220 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1519 = if ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> x15200 ) ) ) $ ( d5 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> x15210 ) ) ) $ ( false ) else if d1034 then true else d1455
        d1523 : ( ( Set -> Set ) ∋ ( ( λ x15250 -> ( ( Set -> Set ) ∋ ( ( λ x15260 -> if false then x15250 else x15250 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1523 = ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> if x15240 then x15240 else x15240 ) ) ) $ ( if false then d951 else d1259 )
        d1527 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1527 = ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> ( ( Bool -> Bool ) ∋ ( ( λ x15290 -> if d766 then false else true ) ) ) $ ( d614 ) ) ) ) $ ( if false then d1135 else true )
        d1530 : if true then ( ( Set -> Set ) ∋ ( ( λ x15330 -> x15330 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15340 -> Bool ) ) ) $ ( Bool )
        d1530 = ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> if x15310 then d1382 else x15310 ) ) ) $ ( x15310 ) ) ) ) $ ( if d1030 then false else true )
        d1535 : ( ( Set -> Set ) ∋ ( ( λ x15380 -> ( ( Set -> Set ) ∋ ( ( λ x15390 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1535 = ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> if d1202 then false else d1530 ) ) ) $ ( d823 ) ) ) ) $ ( if d476 then true else d1523 )
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15420 -> ( ( Set -> Set ) ∋ ( ( λ x15430 -> if true then x15420 else x15430 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1540 = ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> if x15410 then x15410 else true ) ) ) $ ( if true then d899 else d872 )
        d1544 : ( ( Set -> Set ) ∋ ( ( λ x15470 -> ( ( Set -> Set ) ∋ ( ( λ x15480 -> if false then Bool else Bool ) ) ) $ ( x15470 ) ) ) ) $ ( if true then Bool else Bool )
        d1544 = ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> if x15450 then true else false ) ) ) $ ( d138 ) ) ) ) $ ( if d1202 then false else d872 )
        d1549 : ( ( Set -> Set ) ∋ ( ( λ x15520 -> ( ( Set -> Set ) ∋ ( ( λ x15530 -> if false then x15520 else Bool ) ) ) $ ( x15520 ) ) ) ) $ ( if false then Bool else Bool )
        d1549 = if if true then true else d301 then ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> x15510 ) ) ) $ ( d726 )
        d1554 : if false then ( ( Set -> Set ) ∋ ( ( λ x15560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15570 -> Bool ) ) ) $ ( Bool )
        d1554 = ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> if x15550 then false else true ) ) ) $ ( if d75 then false else false )
        d1558 : if false then ( ( Set -> Set ) ∋ ( ( λ x15590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15600 -> x15600 ) ) ) $ ( Bool )
        d1558 = if if false then d655 else d330 then if d1325 then d693 else true else if false then false else false
        d1561 : if true then ( ( Set -> Set ) ∋ ( ( λ x15630 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1561 = ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> if d963 then true else false ) ) ) $ ( if true then true else d555 )
        d1564 : ( ( Set -> Set ) ∋ ( ( λ x15670 -> ( ( Set -> Set ) ∋ ( ( λ x15680 -> if false then Bool else x15670 ) ) ) $ ( x15670 ) ) ) ) $ ( if true then Bool else Bool )
        d1564 = if ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> x15650 ) ) ) $ ( d1506 ) then if false then true else d1290 else ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> d574 ) ) ) $ ( false )
        d1569 : ( ( Set -> Set ) ∋ ( ( λ x15710 -> ( ( Set -> Set ) ∋ ( ( λ x15720 -> if true then x15710 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1569 = if if true then d583 else false then if d1389 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> true ) ) ) $ ( d354 )
        d1573 : if true then ( ( Set -> Set ) ∋ ( ( λ x15740 -> x15740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15750 -> Bool ) ) ) $ ( Bool )
        d1573 = if if true then d777 else d1166 then if false then d1191 else true else if d392 then true else true
        d1576 : if false then ( ( Set -> Set ) ∋ ( ( λ x15780 -> x15780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15790 -> x15790 ) ) ) $ ( Bool )
        d1576 = if if false then d1450 else d1300 then ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> d855 ) ) ) $ ( true ) else if d911 then false else false
        d1580 : if true then ( ( Set -> Set ) ∋ ( ( λ x15820 -> x15820 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1580 = if if d861 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> true ) ) ) $ ( d759 ) else if false then d877 else d1349
        d1583 : ( ( Set -> Set ) ∋ ( ( λ x15860 -> ( ( Set -> Set ) ∋ ( ( λ x15870 -> if true then Bool else x15860 ) ) ) $ ( x15860 ) ) ) ) $ ( if false then Bool else Bool )
        d1583 = ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> ( ( Bool -> Bool ) ∋ ( ( λ x15850 -> if x15840 then d464 else x15840 ) ) ) $ ( x15840 ) ) ) ) $ ( if d113 then false else d151 )
        d1588 : ( ( Set -> Set ) ∋ ( ( λ x15900 -> ( ( Set -> Set ) ∋ ( ( λ x15910 -> if false then x15900 else x15900 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1588 = if if d1181 then true else d1549 then if d788 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> true ) ) ) $ ( d22 )
        d1592 : if false then ( ( Set -> Set ) ∋ ( ( λ x15940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1592 = ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> if true then true else false ) ) ) $ ( if d1310 then true else true )
        d1595 : ( ( Set -> Set ) ∋ ( ( λ x15970 -> ( ( Set -> Set ) ∋ ( ( λ x15980 -> if false then Bool else x15970 ) ) ) $ ( x15970 ) ) ) ) $ ( if false then Bool else Bool )
        d1595 = ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> if true then true else false ) ) ) $ ( if d1303 then d568 else false )
        d1599 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16020 -> x16020 ) ) ) $ ( Bool )
        d1599 = if ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> x16000 ) ) ) $ ( d689 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> x16010 ) ) ) $ ( d1231 ) else if true then d631 else d1595
        d1603 : ( ( Set -> Set ) ∋ ( ( λ x16060 -> if true then x16060 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1603 = if ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> x16040 ) ) ) $ ( d1132 ) then if false then true else d1092 else ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> x16050 ) ) ) $ ( d1211 )
        d1607 : ( ( Set -> Set ) ∋ ( ( λ x16110 -> ( ( Set -> Set ) ∋ ( ( λ x16120 -> if false then Bool else x16120 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1607 = if ( ( Bool -> Bool ) ∋ ( ( λ x16080 -> d1011 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> x16090 ) ) ) $ ( d1059 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16100 -> x16100 ) ) ) $ ( d730 )
        d1613 : ( ( Set -> Set ) ∋ ( ( λ x16160 -> if true then x16160 else x16160 ) ) ) $ ( if true then Bool else Bool )
        d1613 = ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> ( ( Bool -> Bool ) ∋ ( ( λ x16150 -> if true then false else true ) ) ) $ ( d614 ) ) ) ) $ ( if true then true else d664 )
        d1617 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16200 -> Bool ) ) ) $ ( Bool )
        d1617 = ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> if true then false else false ) ) ) $ ( x16180 ) ) ) ) $ ( if true then d127 else true )
        d1621 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1621 = if ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> d1370 ) ) ) $ ( d1286 ) then if false then d1361 else d1328 else if true then false else d587
        d1623 : ( ( Set -> Set ) ∋ ( ( λ x16260 -> ( ( Set -> Set ) ∋ ( ( λ x16270 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1623 = ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> if x16250 then d1588 else d831 ) ) ) $ ( x16240 ) ) ) ) $ ( if d1501 then d680 else d868 )
        d1628 : if false then ( ( Set -> Set ) ∋ ( ( λ x16300 -> x16300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16310 -> x16310 ) ) ) $ ( Bool )
        d1628 = ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> if x16290 then d755 else true ) ) ) $ ( if false then d1564 else true )
        d1632 : if true then ( ( Set -> Set ) ∋ ( ( λ x16340 -> x16340 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1632 = if if true then d345 else false then if false then d548 else d1129 else ( ( Bool -> Bool ) ∋ ( ( λ x16330 -> false ) ) ) $ ( d1273 )
        d1635 : if true then ( ( Set -> Set ) ∋ ( ( λ x16380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16390 -> x16390 ) ) ) $ ( Bool )
        d1635 = if ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> d855 ) ) ) $ ( d1202 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> true ) ) ) $ ( d1092 ) else if d614 then false else d1173
        d1640 : if true then ( ( Set -> Set ) ∋ ( ( λ x16420 -> x16420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16430 -> Bool ) ) ) $ ( Bool )
        d1640 = ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> if false then d240 else d1045 ) ) ) $ ( if d1323 then d133 else d1300 )
        d1644 : ( ( Set -> Set ) ∋ ( ( λ x16470 -> if true then x16470 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1644 = ( ( Bool -> Bool ) ∋ ( ( λ x16450 -> ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> if false then d232 else false ) ) ) $ ( d510 ) ) ) ) $ ( if false then d852 else d1075 )
        d1648 : if true then ( ( Set -> Set ) ∋ ( ( λ x16510 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16520 -> x16520 ) ) ) $ ( Bool )
        d1648 = ( ( Bool -> Bool ) ∋ ( ( λ x16490 -> ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> if x16500 then false else x16500 ) ) ) $ ( d777 ) ) ) ) $ ( if d1040 then false else true )
        d1653 : if false then ( ( Set -> Set ) ∋ ( ( λ x16550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16560 -> x16560 ) ) ) $ ( Bool )
        d1653 = ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> if x16540 then true else x16540 ) ) ) $ ( if d1215 then d109 else true )
        d1657 : ( ( Set -> Set ) ∋ ( ( λ x16590 -> if false then x16590 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1657 = ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> if d1561 then d1544 else false ) ) ) $ ( if d22 then false else false )
        d1660 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16630 -> x16630 ) ) ) $ ( Bool )
        d1660 = if ( ( Bool -> Bool ) ∋ ( ( λ x16610 -> true ) ) ) $ ( d142 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16620 -> false ) ) ) $ ( d163 ) else if true then false else d780
        d1664 : ( ( Set -> Set ) ∋ ( ( λ x16660 -> if true then x16660 else x16660 ) ) ) $ ( if false then Bool else Bool )
        d1664 = ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> if false then false else true ) ) ) $ ( if true then true else d886 )
        d1667 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1667 = if ( ( Bool -> Bool ) ∋ ( ( λ x16680 -> d911 ) ) ) $ ( true ) then if d274 then false else d591 else if true then true else false
        d1669 : ( ( Set -> Set ) ∋ ( ( λ x16720 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1669 = if ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> x16700 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> d1494 ) ) ) $ ( false ) else if true then d518 else true
        d1673 : if false then ( ( Set -> Set ) ∋ ( ( λ x16760 -> x16760 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16770 -> x16770 ) ) ) $ ( Bool )
        d1673 = ( ( Bool -> Bool ) ∋ ( ( λ x16740 -> ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> if d1328 then d1270 else false ) ) ) $ ( d533 ) ) ) ) $ ( if true then d1295 else false )
        d1678 : if true then ( ( Set -> Set ) ∋ ( ( λ x16800 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1678 = if ( ( Bool -> Bool ) ∋ ( ( λ x16790 -> false ) ) ) $ ( d682 ) then if d1099 then d1300 else d1460 else if false then d489 else false
        d1681 : if false then ( ( Set -> Set ) ∋ ( ( λ x16840 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1681 = if ( ( Bool -> Bool ) ∋ ( ( λ x16820 -> x16820 ) ) ) $ ( d724 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16830 -> true ) ) ) $ ( true ) else if false then d1673 else true
        d1685 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16860 -> x16860 ) ) ) $ ( Bool )
        d1685 = if if true then true else true then if d591 then true else d1306 else if true then d1623 else false
        d1687 : ( ( Set -> Set ) ∋ ( ( λ x16890 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1687 = ( ( Bool -> Bool ) ∋ ( ( λ x16880 -> if false then d330 else false ) ) ) $ ( if false then d1576 else d1657 )
        d1690 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16940 -> Bool ) ) ) $ ( Bool )
        d1690 = if ( ( Bool -> Bool ) ∋ ( ( λ x16910 -> false ) ) ) $ ( d1527 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16920 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16930 -> x16930 ) ) ) $ ( d1391 )
        d1695 : ( ( Set -> Set ) ∋ ( ( λ x16960 -> if true then x16960 else x16960 ) ) ) $ ( if false then Bool else Bool )
        d1695 = if if d823 then d1460 else d149 then if false then d186 else true else if false then true else d1411
        d1697 : ( ( Set -> Set ) ∋ ( ( λ x17000 -> if true then Bool else x17000 ) ) ) $ ( if false then Bool else Bool )
        d1697 = ( ( Bool -> Bool ) ∋ ( ( λ x16980 -> ( ( Bool -> Bool ) ∋ ( ( λ x16990 -> if d1440 then false else true ) ) ) $ ( x16980 ) ) ) ) $ ( if true then d686 else false )