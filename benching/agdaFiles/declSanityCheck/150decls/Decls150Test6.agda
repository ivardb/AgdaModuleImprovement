module Decls150Test6  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( true )
        d5 : if true then if false then Bool else Bool else if true then Bool else Bool
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d1 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( d1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( d5 ) then if d1 then d5 else d5 else if false then true else d5
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if d1 then x140 else x140 ) ) ) $ ( d1 ) ) ) ) $ ( if true then d9 else d1 )
        d16 : if true then if false then Bool else Bool else if false then Bool else Bool
        d16 = if if d9 then true else true then if false then d5 else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> true ) ) ) $ ( d1 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> if true then Bool else x220 ) ) ) $ ( x210 ) ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if x190 then x200 else false ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then Bool else x260 ) ) ) $ ( x250 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d5 then true else true ) ) ) $ ( if d16 then false else d16 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if x290 then x280 else d18 ) ) ) $ ( d1 ) ) ) ) $ ( if d18 then d1 else true )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if false then Bool else x330 ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if d16 then true else x320 ) ) ) $ ( if d13 then true else false )
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if d5 then d27 else true ) ) ) $ ( if true then true else false )
        d36 : if true then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if d18 then false else d23 then ( ( Bool -> Bool ) ∋ ( ( λ x370 -> d23 ) ) ) $ ( d13 ) else ( ( Bool -> Bool ) ∋ ( ( λ x380 -> true ) ) ) $ ( d5 )
        d39 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( Bool )
        d39 = if if d13 then d34 else true then if d31 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x400 -> false ) ) ) $ ( d27 )
        d42 : if true then ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool )
        d42 = if ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( d23 ) then if d13 then d9 else true else ( ( Bool -> Bool ) ∋ ( ( λ x440 -> true ) ) ) $ ( false )
        d47 : if true then ( ( Set -> Set ) ∋ ( ( λ x490 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if x480 then d27 else true ) ) ) $ ( if false then d13 else true )
        d50 : if false then ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if x510 then x510 else d31 ) ) ) $ ( if d16 then true else false )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x550 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if x540 then false else false ) ) ) $ ( if d1 then true else d42 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x590 -> if false then x590 else x590 ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if false then d27 else x570 ) ) ) $ ( d47 ) ) ) ) $ ( if d34 then false else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x630 -> ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then Bool else Bool ) ) ) $ ( x630 ) ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if false then true else d18 ) ) ) $ ( x610 ) ) ) ) $ ( if d53 then d47 else false )
        d65 : if false then if false then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if d53 then x670 else true ) ) ) $ ( d56 ) ) ) ) $ ( if false then true else true )
        d68 : if true then if false then Bool else Bool else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if x690 then true else false ) ) ) $ ( if false then d60 else true )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then Bool else Bool ) ) ) $ ( x720 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if d31 then x710 else true ) ) ) $ ( if d65 then false else false )
        d74 : if true then ( ( Set -> Set ) ∋ ( ( λ x780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( Bool )
        d74 = if ( ( Bool -> Bool ) ∋ ( ( λ x750 -> true ) ) ) $ ( d53 ) then ( ( Bool -> Bool ) ∋ ( ( λ x760 -> d50 ) ) ) $ ( d53 ) else ( ( Bool -> Bool ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( false )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if false then Bool else x840 ) ) ) $ ( x830 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if d34 then x820 else d36 ) ) ) $ ( d1 ) ) ) ) $ ( if false then true else d13 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x870 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d85 = if if d34 then false else d53 then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x860 -> d18 ) ) ) $ ( d23 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then x920 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d85 ) ) ) $ ( d47 ) then ( ( Bool -> Bool ) ∋ ( ( λ x900 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x910 -> true ) ) ) $ ( d85 )
        d94 : if true then ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( Bool )
        d94 = if if d60 then d65 else false then ( ( Bool -> Bool ) ∋ ( ( λ x950 -> false ) ) ) $ ( false ) else if d74 then d70 else false
        d98 : if true then ( ( Set -> Set ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if d42 then x990 else d36 ) ) ) $ ( true ) ) ) ) $ ( if false then d80 else false )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then x1040 else x1040 ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if true then x1030 else x1030 ) ) ) $ ( if false then false else d23 )
        d105 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( Bool )
        d105 = if if d39 then d47 else false then if d42 then false else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> d36 ) ) ) $ ( false )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> if false then Bool else Bool ) ) ) $ ( x1110 ) ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> if false then x1100 else d34 ) ) ) $ ( d105 ) ) ) ) $ ( if d23 then d31 else false )
        d113 : if true then ( ( Set -> Set ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d113 = if if d34 then d50 else d94 then ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d74 ) ) ) $ ( false ) else if false then true else false
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> if d36 then x1170 else d68 ) ) ) $ ( x1170 ) ) ) ) $ ( if d31 then d1 else false )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1230 -> if true then x1230 else x1230 ) ) ) $ ( if false then Bool else Bool )
        d120 = if ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> d80 ) ) ) $ ( d88 ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( d88 )
        d124 : if true then if true then Bool else Bool else if true then Bool else Bool
        d124 = if ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( d53 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d34 ) ) ) $ ( d94 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( false )
        d128 : if true then ( ( Set -> Set ) ∋ ( ( λ x1320 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d128 = if ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d94 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d18 ) ) ) $ ( d60 )
        d133 : if true then ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if true then false else false ) ) ) $ ( d36 ) ) ) ) $ ( if false then true else false )
        d137 : if false then ( ( Set -> Set ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if d9 then false else x1380 ) ) ) $ ( if d65 then d94 else false )
        d140 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> ( ( Set -> Set ) ∋ ( ( λ x1430 -> if true then x1430 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> if x1410 then x1410 else true ) ) ) $ ( if d31 then true else true )
        d144 : if true then if false then Bool else Bool else if false then Bool else Bool
        d144 = if if false then d70 else true then if false then false else d36 else if true then d47 else d27
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> if true then x1480 else Bool ) ) ) $ ( if false then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> if d27 then x1460 else false ) ) ) $ ( x1460 ) ) ) ) $ ( if true then d50 else false )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> true ) ) ) $ ( d18 ) then if d133 then d31 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d120 ) ) ) $ ( true )
        d153 : if true then ( ( Set -> Set ) ∋ ( ( λ x1560 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d153 = if ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> false ) ) ) $ ( true ) then if true then d70 else d105 else ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> d124 ) ) ) $ ( d116 )
        d157 : if true then ( ( Set -> Set ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool )
        d157 = if if false then d9 else d124 then if d42 then true else false else if true then false else d36
        d160 : if false then ( ( Set -> Set ) ∋ ( ( λ x1630 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if x1620 then false else d124 ) ) ) $ ( d5 ) ) ) ) $ ( if d31 then d124 else true )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then x1680 else Bool ) ) ) $ ( if false then Bool else Bool )
        d164 = if ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> d85 ) ) ) $ ( d116 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> d124 ) ) ) $ ( d157 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> x1670 ) ) ) $ ( false )
        d169 : if true then if true then Bool else Bool else if false then Bool else Bool
        d169 = if if false then false else d85 then if d39 then false else false else if false then d88 else d5
        d170 : if true then ( ( Set -> Set ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( Bool )
        d170 = if if d113 then true else d120 then ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> x1710 ) ) ) $ ( true ) else if d70 then d47 else false
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1770 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d174 = if ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( true ) then if false then d70 else d60 else ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( d145 )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> if false then Bool else x1820 ) ) ) $ ( x1810 ) ) ) ) $ ( if false then Bool else Bool )
        d178 = if if false then false else d174 then ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> true ) ) ) $ ( d60 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( false )
        d183 : if false then if false then Bool else Bool else if false then Bool else Bool
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if x1840 then d47 else d108 ) ) ) $ ( if true then false else true )
        d185 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> if true then Bool else x1890 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> if x1860 then false else x1870 ) ) ) $ ( x1860 ) ) ) ) $ ( if true then d68 else false )
        d190 : if false then ( ( Set -> Set ) ∋ ( ( λ x1910 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d190 = if if false then d23 else false then if d50 then false else d149 else if false then true else d120
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then Bool else x1940 ) ) ) $ ( if false then Bool else Bool )
        d192 = if if true then true else d47 then if d116 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> false ) ) ) $ ( d120 )
        d195 : if false then ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> d5 ) ) ) $ ( true ) then if d137 then d190 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( d145 )
        d199 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> ( ( Set -> Set ) ∋ ( ( λ x2030 -> if false then x2030 else x2020 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> if false then x2000 else x2010 ) ) ) $ ( d1 ) ) ) ) $ ( if false then true else d94 )
        d204 : if false then if false then Bool else Bool else if false then Bool else Bool
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> if d133 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d23 then d164 else false )
        d207 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> if false then Bool else x2090 ) ) ) $ ( if false then Bool else Bool )
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> if true then true else d102 ) ) ) $ ( if d85 then false else true )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> if false then x2120 else Bool ) ) ) $ ( if false then Bool else Bool )
        d210 = if ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> d80 ) ) ) $ ( d157 ) then if false then d160 else d169 else if d157 then false else d9
        d213 : ( ( Set -> Set ) ∋ ( ( λ x2160 -> if false then x2160 else x2160 ) ) ) $ ( if true then Bool else Bool )
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if x2140 then x2150 else d74 ) ) ) $ ( x2140 ) ) ) ) $ ( if true then true else d36 )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> if true then Bool else x2200 ) ) ) $ ( if false then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> if d16 then false else false ) ) ) $ ( x2180 ) ) ) ) $ ( if true then d157 else d60 )
        d221 : if true then if true then Bool else Bool else if true then Bool else Bool
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> if d149 then true else x2220 ) ) ) $ ( if d169 then false else true )
        d223 : ( ( Set -> Set ) ∋ ( ( λ x2250 -> ( ( Set -> Set ) ∋ ( ( λ x2260 -> if true then Bool else x2250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> if d170 then false else x2240 ) ) ) $ ( if false then true else d9 )
        d227 : ( ( Set -> Set ) ∋ ( ( λ x2290 -> ( ( Set -> Set ) ∋ ( ( λ x2300 -> if true then x2290 else Bool ) ) ) $ ( x2290 ) ) ) ) $ ( if true then Bool else Bool )
        d227 = ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> if d5 then x2280 else false ) ) ) $ ( if false then true else d70 )
        d231 : if false then ( ( Set -> Set ) ∋ ( ( λ x2330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> if d60 then false else false ) ) ) $ ( if d170 then false else false )
        d235 : ( ( Set -> Set ) ∋ ( ( λ x2370 -> if true then x2370 else x2370 ) ) ) $ ( if false then Bool else Bool )
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> if d192 then d68 else true ) ) ) $ ( if d98 then d102 else d157 )
        d238 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( Bool )
        d238 = if if d204 then d56 else d70 then ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> d68 ) ) ) $ ( true )
        d242 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if x2430 then x2430 else true ) ) ) $ ( if false then false else d9 )
        d245 : if true then if false then Bool else Bool else if false then Bool else Bool
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> if x2460 then x2460 else true ) ) ) $ ( if true then d140 else d98 )
        d247 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2500 -> x2500 ) ) ) $ ( Bool )
        d247 = if ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> x2480 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> false ) ) ) $ ( d227 ) else if true then true else true
        d251 : if true then ( ( Set -> Set ) ∋ ( ( λ x2540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2550 -> Bool ) ) ) $ ( Bool )
        d251 = if ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> d144 ) ) ) $ ( d204 ) then if d223 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> d47 ) ) ) $ ( d5 )
        d256 : if true then if true then Bool else Bool else if true then Bool else Bool
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if x2580 then true else x2580 ) ) ) $ ( d227 ) ) ) ) $ ( if true then true else true )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> if true then x2620 else x2620 ) ) ) $ ( if false then Bool else Bool )
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> if true then d116 else false ) ) ) $ ( d27 ) ) ) ) $ ( if d102 then d140 else true )
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2660 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> if d47 then true else true ) ) ) $ ( d42 ) ) ) ) $ ( if d113 then d124 else d213 )
        d267 : if true then ( ( Set -> Set ) ∋ ( ( λ x2690 -> x2690 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d267 = if if d120 then d245 else d60 then ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> x2680 ) ) ) $ ( d242 ) else if d231 then d235 else d16
        d270 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d270 = if if true then true else d70 then if d9 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> false ) ) ) $ ( d56 )
        d274 : ( ( Set -> Set ) ∋ ( ( λ x2770 -> if false then x2770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d274 = if ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> x2750 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( true ) else if d85 then d105 else d140
        d278 : ( ( Set -> Set ) ∋ ( ( λ x2810 -> ( ( Set -> Set ) ∋ ( ( λ x2820 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d278 = ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if true then d183 else true ) ) ) $ ( x2790 ) ) ) ) $ ( if false then d251 else d47 )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> ( ( Set -> Set ) ∋ ( ( λ x2860 -> if false then x2860 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> if false then x2840 else x2840 ) ) ) $ ( if d227 then d153 else false )
        d287 : ( ( Set -> Set ) ∋ ( ( λ x2900 -> ( ( Set -> Set ) ∋ ( ( λ x2910 -> if true then Bool else x2910 ) ) ) $ ( x2900 ) ) ) ) $ ( if false then Bool else Bool )
        d287 = if if d31 then d68 else d108 then ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> true ) ) ) $ ( d18 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> d145 ) ) ) $ ( false )
        d292 : ( ( Set -> Set ) ∋ ( ( λ x2960 -> if true then x2960 else Bool ) ) ) $ ( if true then Bool else Bool )
        d292 = if ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> x2930 ) ) ) $ ( d16 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> x2940 ) ) ) $ ( d31 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> d259 ) ) ) $ ( true )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> ( ( Set -> Set ) ∋ ( ( λ x3000 -> if false then x3000 else x3000 ) ) ) $ ( x2990 ) ) ) ) $ ( if false then Bool else Bool )
        d297 = if if d270 then d13 else false then if d169 then false else d292 else ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> d50 ) ) ) $ ( d227 )
        d301 : if true then ( ( Set -> Set ) ∋ ( ( λ x3040 -> x3040 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d301 = if ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> x3030 ) ) ) $ ( d47 ) else if d190 then d283 else true
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3080 -> if true then Bool else x3080 ) ) ) $ ( if false then Bool else Bool )
        d305 = if ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> false ) ) ) $ ( d18 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> x3070 ) ) ) $ ( d65 ) else if d128 then true else false
        d309 : if true then ( ( Set -> Set ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3120 -> x3120 ) ) ) $ ( Bool )
        d309 = if ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> x3100 ) ) ) $ ( false ) then if false then d39 else true else if d105 then d174 else true
        d313 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3150 -> x3150 ) ) ) $ ( Bool )
        d313 = if if d27 then false else d65 then ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> x3140 ) ) ) $ ( d204 ) else if d251 then d27 else d267
        d316 : ( ( Set -> Set ) ∋ ( ( λ x3190 -> ( ( Set -> Set ) ∋ ( ( λ x3200 -> if true then x3200 else Bool ) ) ) $ ( x3190 ) ) ) ) $ ( if false then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> if x3180 then x3170 else x3180 ) ) ) $ ( d223 ) ) ) ) $ ( if true then d144 else false )
        d321 : if false then ( ( Set -> Set ) ∋ ( ( λ x3240 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d321 = if if true then d190 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( d39 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> x3230 ) ) ) $ ( d5 )
        d325 : if true then if false then Bool else Bool else if true then Bool else Bool
        d325 = if ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> true ) ) ) $ ( d164 ) then if true then true else d1 else if true then d160 else d247
        d327 : ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> if true then d88 else x3280 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d251 )
        d331 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> ( ( Set -> Set ) ∋ ( ( λ x3330 -> if false then x3320 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d331 = if if d292 then false else false then if true then false else d108 else if d217 then true else d133
        d334 : if true then ( ( Set -> Set ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> if x3360 then d283 else false ) ) ) $ ( x3350 ) ) ) ) $ ( if d316 then d94 else d53 )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> if false then x3410 else x3410 ) ) ) $ ( if true then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> if x3400 then d94 else x3390 ) ) ) $ ( false ) ) ) ) $ ( if d274 then d116 else true )
        d342 : if true then ( ( Set -> Set ) ∋ ( ( λ x3450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3460 -> Bool ) ) ) $ ( Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> if d321 then d34 else x3440 ) ) ) $ ( false ) ) ) ) $ ( if false then d145 else d18 )
        d347 : if true then ( ( Set -> Set ) ∋ ( ( λ x3490 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3500 -> x3500 ) ) ) $ ( Bool )
        d347 = ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> if false then x3480 else x3480 ) ) ) $ ( if true then true else true )
        d351 : ( ( Set -> Set ) ∋ ( ( λ x3530 -> ( ( Set -> Set ) ∋ ( ( λ x3540 -> if false then x3540 else Bool ) ) ) $ ( x3530 ) ) ) ) $ ( if true then Bool else Bool )
        d351 = if ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> false ) ) ) $ ( d270 ) then if false then d190 else true else if d242 then d120 else d102
        d355 : ( ( Set -> Set ) ∋ ( ( λ x3590 -> if false then Bool else x3590 ) ) ) $ ( if false then Bool else Bool )
        d355 = if ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> d217 ) ) ) $ ( d53 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> true ) ) ) $ ( d160 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> true ) ) ) $ ( d217 )
        d360 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( Bool )
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if true then d27 else d39 ) ) ) $ ( if d297 then d145 else d140 )
        d363 : if false then ( ( Set -> Set ) ∋ ( ( λ x3640 -> x3640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3650 -> x3650 ) ) ) $ ( Bool )
        d363 = if if false then true else d204 then if d157 then false else false else if d305 then true else true
        d366 : if false then ( ( Set -> Set ) ∋ ( ( λ x3680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3690 -> Bool ) ) ) $ ( Bool )
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> if d128 then true else d221 ) ) ) $ ( if d256 then true else d160 )
        d370 : if true then ( ( Set -> Set ) ∋ ( ( λ x3720 -> x3720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3730 -> Bool ) ) ) $ ( Bool )
        d370 = if if false then true else d235 then if d170 then true else d116 else ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> true ) ) ) $ ( d185 )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then x3770 else x3770 ) ) ) $ ( if false then Bool else Bool )
        d374 = if if d42 then d149 else d23 then ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> x3750 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> true ) ) ) $ ( true )
        d378 : if false then if true then Bool else Bool else if true then Bool else Bool
        d378 = if ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> d223 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> x3800 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( true )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x3850 -> ( ( Set -> Set ) ∋ ( ( λ x3860 -> if false then x3860 else x3860 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> d263 ) ) ) $ ( d178 ) then if d85 then d39 else d169 else ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> d217 ) ) ) $ ( false )
        d387 : if false then ( ( Set -> Set ) ∋ ( ( λ x3890 -> x3890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3900 -> Bool ) ) ) $ ( Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> if x3880 then x3880 else false ) ) ) $ ( if false then false else true )
        d391 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3930 -> Bool ) ) ) $ ( Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if x3920 then false else false ) ) ) $ ( if true then false else d347 )
        d394 : if false then if true then Bool else Bool else if false then Bool else Bool
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> if d217 then false else false ) ) ) $ ( d195 ) ) ) ) $ ( if false then false else true )
        d397 : if false then ( ( Set -> Set ) ∋ ( ( λ x4010 -> x4010 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d397 = if ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> x3980 ) ) ) $ ( d342 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> d157 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> d195 ) ) ) $ ( true )
        d402 : if true then if false then Bool else Bool else if false then Bool else Bool
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if d309 then false else x4030 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d199 )
        d405 : if false then ( ( Set -> Set ) ∋ ( ( λ x4080 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4090 -> Bool ) ) ) $ ( Bool )
        d405 = if ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> x4060 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> d116 ) ) ) $ ( true ) else if true then d338 else false
        d410 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> ( ( Set -> Set ) ∋ ( ( λ x4130 -> if true then x4120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> if true then d128 else d270 ) ) ) $ ( if d347 then false else d267 )
        d414 : if false then ( ( Set -> Set ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> if d316 then false else true ) ) ) $ ( if d210 then false else d31 )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x4190 -> ( ( Set -> Set ) ∋ ( ( λ x4200 -> if true then x4190 else Bool ) ) ) $ ( x4190 ) ) ) ) $ ( if true then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if x4180 then d192 else d309 ) ) ) $ ( if true then d210 else d238 )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> ( ( Set -> Set ) ∋ ( ( λ x4240 -> if false then Bool else x4240 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if x4220 then d267 else d145 ) ) ) $ ( if d102 then false else true )
        d425 : if false then ( ( Set -> Set ) ∋ ( ( λ x4280 -> x4280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4290 -> x4290 ) ) ) $ ( Bool )
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> if d18 then x4260 else true ) ) ) $ ( true ) ) ) ) $ ( if false then d108 else d98 )
        d430 : ( ( Set -> Set ) ∋ ( ( λ x4330 -> ( ( Set -> Set ) ∋ ( ( λ x4340 -> if true then x4340 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> if d137 then d235 else x4310 ) ) ) $ ( d338 ) ) ) ) $ ( if d410 then true else false )
        d435 : if true then if false then Bool else Bool else if false then Bool else Bool
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> if d183 then x4360 else false ) ) ) $ ( if d88 then d53 else false )
        d437 : if true then ( ( Set -> Set ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( Bool )
        d437 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> x4380 ) ) ) $ ( true ) else if d360 then d68 else d351
        d441 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if false then x4440 else x4440 ) ) ) $ ( if false then Bool else Bool )
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if false then x4420 else x4430 ) ) ) $ ( false ) ) ) ) $ ( if true then d60 else d140 )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> if true then x4480 else x4480 ) ) ) $ ( if true then Bool else Bool )
        d445 = if if false then d347 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> true ) ) ) $ ( d355 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> true ) ) ) $ ( true )
        d449 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4520 -> Bool ) ) ) $ ( Bool )
        d449 = ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> if true then x4510 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d283 else true )
        d453 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4550 -> x4550 ) ) ) $ ( Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if d164 then d325 else d108 ) ) ) $ ( if d36 then false else false )
        d456 : if false then ( ( Set -> Set ) ∋ ( ( λ x4580 -> x4580 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4590 -> Bool ) ) ) $ ( Bool )
        d456 = if ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> d453 ) ) ) $ ( true ) then if true then d80 else true else if d453 then d247 else true
        d460 : ( ( Set -> Set ) ∋ ( ( λ x4610 -> if false then Bool else x4610 ) ) ) $ ( if false then Bool else Bool )
        d460 = if if d309 then d374 else d274 then if d425 then true else false else if d169 then d410 else d137
        d462 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( Bool )
        d462 = if if true then true else d297 then ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> d370 ) ) ) $ ( d382 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( d192 )
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4680 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d466 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> d259 ) ) ) $ ( d305 ) else if d435 then d301 else d278
        d469 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> ( ( Set -> Set ) ∋ ( ( λ x4730 -> if false then Bool else Bool ) ) ) $ ( x4720 ) ) ) ) $ ( if false then Bool else Bool )
        d469 = if if d192 then d42 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> x4700 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> x4710 ) ) ) $ ( d397 )
        d474 : ( ( Set -> Set ) ∋ ( ( λ x4770 -> ( ( Set -> Set ) ∋ ( ( λ x4780 -> if true then x4770 else Bool ) ) ) $ ( x4770 ) ) ) ) $ ( if false then Bool else Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> if d213 then d133 else d23 ) ) ) $ ( true ) ) ) ) $ ( if d460 then false else true )
        d479 : ( ( Set -> Set ) ∋ ( ( λ x4810 -> if true then x4810 else Bool ) ) ) $ ( if false then Bool else Bool )
        d479 = ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> if true then false else false ) ) ) $ ( if d256 then true else false )
        d482 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4850 -> Bool ) ) ) $ ( Bool )
        d482 = if if d325 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> d185 ) ) ) $ ( d263 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> true ) ) ) $ ( d98 )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4890 -> ( ( Set -> Set ) ∋ ( ( λ x4900 -> if false then Bool else x4900 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d486 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> false ) ) ) $ ( d108 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> x4880 ) ) ) $ ( d245 )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4930 -> if false then Bool else x4930 ) ) ) $ ( if false then Bool else Bool )
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> if x4920 then d235 else true ) ) ) $ ( if false then d370 else true )
        d494 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4970 -> x4970 ) ) ) $ ( Bool )
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> if d313 then x4960 else d145 ) ) ) $ ( x4950 ) ) ) ) $ ( if true then false else true )
        d498 : if false then ( ( Set -> Set ) ∋ ( ( λ x5000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d498 = if if false then d47 else false then if false then false else d124 else ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> false ) ) ) $ ( d256 )
        d501 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5030 -> x5030 ) ) ) $ ( Bool )
        d501 = if ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> d70 ) ) ) $ ( d305 ) then if true then d417 else false else if d178 then true else d50
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if false then x5080 else x5080 ) ) ) $ ( x5070 ) ) ) ) $ ( if true then Bool else Bool )
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if false then true else x5050 ) ) ) $ ( false ) ) ) ) $ ( if d334 then false else true )
        d509 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5110 -> Bool ) ) ) $ ( Bool )
        d509 = if ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> x5100 ) ) ) $ ( true ) then if true then d113 else d460 else if d391 then true else d347
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> ( ( Set -> Set ) ∋ ( ( λ x5160 -> if false then Bool else x5160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d512 = if ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( d153 ) then if false then true else d334 else ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> d174 ) ) ) $ ( false )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> if d297 then d190 else true ) ) ) $ ( if d313 then true else true )
        d520 : ( ( Set -> Set ) ∋ ( ( λ x5230 -> ( ( Set -> Set ) ∋ ( ( λ x5240 -> if false then x5240 else x5240 ) ) ) $ ( x5230 ) ) ) ) $ ( if true then Bool else Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> if d437 then false else d74 ) ) ) $ ( true ) ) ) ) $ ( if d170 then d238 else d504 )
        d525 : if true then ( ( Set -> Set ) ∋ ( ( λ x5290 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d525 = if ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> x5260 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> x5280 ) ) ) $ ( d334 )
        d530 : if false then if false then Bool else Bool else if false then Bool else Bool
        d530 = if if d445 then d137 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> x5310 ) ) ) $ ( d430 ) else if true then d18 else false
        d532 : ( ( Set -> Set ) ∋ ( ( λ x5350 -> ( ( Set -> Set ) ∋ ( ( λ x5360 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if false then x5330 else d370 ) ) ) $ ( x5330 ) ) ) ) $ ( if true then d102 else d498 )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x5400 -> if false then x5400 else Bool ) ) ) $ ( if false then Bool else Bool )
        d537 = if ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> d441 ) ) ) $ ( d235 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> d5 ) ) ) $ ( true ) else if d520 then d140 else true
        d541 : if false then if true then Bool else Bool else if true then Bool else Bool
        d541 = if if d512 then true else d13 then ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> d378 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> d530 ) ) ) $ ( false )
        d544 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> ( ( Set -> Set ) ∋ ( ( λ x5460 -> if false then x5460 else x5460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d544 = if if true then false else true then if false then d195 else d378 else if d437 then d414 else false
        d547 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> if false then Bool else x5500 ) ) ) $ ( if false then Bool else Bool )
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> if x5480 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d301 then d486 else d174 )
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5540 -> ( ( Set -> Set ) ∋ ( ( λ x5550 -> if true then x5550 else x5550 ) ) ) $ ( x5540 ) ) ) ) $ ( if false then Bool else Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> if false then false else false ) ) ) $ ( x5520 ) ) ) ) $ ( if d204 then d292 else d421 )
        d556 : ( ( Set -> Set ) ∋ ( ( λ x5580 -> ( ( Set -> Set ) ∋ ( ( λ x5590 -> if false then x5590 else Bool ) ) ) $ ( x5580 ) ) ) ) $ ( if false then Bool else Bool )
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> if d537 then true else d153 ) ) ) $ ( if d213 then true else d47 )
        d560 : if true then ( ( Set -> Set ) ∋ ( ( λ x5610 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d560 = if if true then d116 else d544 then if d70 then d382 else false else if false then true else d482
        d562 : ( ( Set -> Set ) ∋ ( ( λ x5650 -> ( ( Set -> Set ) ∋ ( ( λ x5660 -> if true then x5660 else Bool ) ) ) $ ( x5650 ) ) ) ) $ ( if false then Bool else Bool )
        d562 = if ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> x5630 ) ) ) $ ( d435 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> false ) ) ) $ ( true ) else if d556 then true else d56