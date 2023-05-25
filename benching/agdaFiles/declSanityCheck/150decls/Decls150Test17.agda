module Decls150Test17  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if x20 then x20 else x20 ) ) ) $ ( if false then true else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( true ) then if d1 then true else d1 else if d1 then d1 else d1
        d9 : if true then ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if true then false else d5 ) ) ) $ ( false ) ) ) ) $ ( if d5 then true else false )
        d14 : if false then ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d14 = if if false then false else d9 then if d9 then d5 else true else if false then d5 else true
        d16 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then x190 else x190 ) ) ) $ ( if false then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if d14 then false else true ) ) ) $ ( x170 ) ) ) ) $ ( if d5 then d14 else d9 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if false then x230 else x240 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = if ( ( Bool -> Bool ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( d9 ) then if true then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x220 -> true ) ) ) $ ( false )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if false then x270 else Bool ) ) ) $ ( if false then Bool else Bool )
        d25 = if ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( true ) then if d1 then d16 else d1 else if true then false else d1
        d28 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> if true then x310 else x310 ) ) ) $ ( x310 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> x290 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x300 -> d9 ) ) ) $ ( d5 ) else if false then false else d1
        d33 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if true then Bool else Bool ) ) ) $ ( x350 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d14 then true else false ) ) ) $ ( if d20 then false else false )
        d37 : if true then ( ( Set -> Set ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x390 -> x390 ) ) ) $ ( Bool )
        d37 = if if true then false else false then if false then d9 else d14 else if true then d14 else d20
        d40 : if false then if false then Bool else Bool else if false then Bool else Bool
        d40 = if ( ( Bool -> Bool ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( false ) then if false then false else d20 else if false then d25 else true
        d42 : if true then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if true then false else d14 then ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d5 ) ) ) $ ( d16 ) else if d40 then false else true
        d44 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then x460 else Bool ) ) ) $ ( x460 ) ) ) ) $ ( if false then Bool else Bool )
        d44 = if if false then d28 else true then ( ( Bool -> Bool ) ∋ ( ( λ x450 -> false ) ) ) $ ( d42 ) else if false then true else true
        d48 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if false then true else d20 ) ) ) $ ( d42 ) ) ) ) $ ( if d5 then true else d20 )
        d52 : if true then ( ( Set -> Set ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d5 ) ) ) $ ( d44 ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x540 -> false ) ) ) $ ( d20 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if true then Bool else x600 ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if x590 then x580 else d9 ) ) ) $ ( d1 ) ) ) ) $ ( if true then d28 else false )
        d61 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( Bool )
        d61 = if if false then true else d28 then ( ( Bool -> Bool ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x630 -> false ) ) ) $ ( d20 )
        d65 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if d28 then true else x660 ) ) ) $ ( if true then false else d61 )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then x720 else Bool ) ) ) $ ( x710 ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if ( ( Bool -> Bool ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( d61 ) then if d42 then d61 else true else ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d5 ) ) ) $ ( d57 )
        d73 : if true then ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x770 -> Bool ) ) ) $ ( Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if d42 then x740 else x750 ) ) ) $ ( x740 ) ) ) ) $ ( if false then true else d48 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> if false then x800 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if true then true else d73 ) ) ) $ ( if false then d52 else d48 )
        d82 : if false then ( ( Set -> Set ) ∋ ( ( λ x850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> ( ( Bool -> Bool ) ∋ ( ( λ x840 -> if false then true else x840 ) ) ) $ ( x830 ) ) ) ) $ ( if false then false else false )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then Bool else Bool ) ) ) $ ( x900 ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if true then false else true ) ) ) $ ( false ) ) ) ) $ ( if d78 then d48 else d44 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x940 -> if false then Bool else x940 ) ) ) $ ( if true then Bool else Bool )
        d92 = if if true then d48 else true then ( ( Bool -> Bool ) ∋ ( ( λ x930 -> true ) ) ) $ ( d61 ) else if d78 then d52 else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then x980 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if true then x960 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d65 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d100 = if ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d33 ) ) ) $ ( d33 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> true ) ) ) $ ( false ) else if d33 then false else false
        d105 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if x1070 then false else d28 ) ) ) $ ( x1060 ) ) ) ) $ ( if d25 then d82 else d65 )
        d109 : if true then ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1110 -> Bool ) ) ) $ ( Bool )
        d109 = if if false then false else d73 then if d42 then true else d105 else if d14 then false else d42
        d112 : if true then ( ( Set -> Set ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d112 = if if d5 then false else true then if true then false else d14 else ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( d14 )
        d115 : if true then ( ( Set -> Set ) ∋ ( ( λ x1180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1190 -> Bool ) ) ) $ ( Bool )
        d115 = if ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( true ) then if d33 then true else d37 else ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( d48 )
        d120 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if d33 then false else false ) ) ) $ ( x1210 ) ) ) ) $ ( if d82 then false else d28 )
        d124 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> if true then d16 else x1250 ) ) ) $ ( d73 ) ) ) ) $ ( if d48 then d37 else d109 )
        d128 : if false then ( ( Set -> Set ) ∋ ( ( λ x1300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1310 -> x1310 ) ) ) $ ( Bool )
        d128 = if ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> true ) ) ) $ ( d109 ) then if true then true else false else if true then true else d9
        d132 : if true then if true then Bool else Bool else if false then Bool else Bool
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if x1330 then x1330 else x1330 ) ) ) $ ( x1330 ) ) ) ) $ ( if false then false else d87 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if x1370 then x1370 else x1360 ) ) ) $ ( x1360 ) ) ) ) $ ( if d28 then d124 else true )
        d140 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> if true then x1430 else x1430 ) ) ) $ ( if false then Bool else Bool )
        d140 = if ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> false ) ) ) $ ( d73 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> true ) ) ) $ ( true ) else if d87 then false else d95
        d144 : if false then ( ( Set -> Set ) ∋ ( ( λ x1450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( Bool )
        d144 = if if d140 then false else true then if d82 then d120 else false else if d40 then true else d16
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> if false then x1490 else Bool ) ) ) $ ( if false then Bool else Bool )
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> if x1480 then x1480 else d115 ) ) ) $ ( if false then false else false )
        d150 : if true then ( ( Set -> Set ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d150 = if ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> d40 ) ) ) $ ( d128 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> x1530 ) ) ) $ ( d14 )
        d155 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool )
        d155 = if if d124 then d105 else d100 then if false then false else d57 else ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( true )
        d158 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d158 = if ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> false ) ) ) $ ( true ) then if d147 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> x1600 ) ) ) $ ( d120 )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> ( ( Set -> Set ) ∋ ( ( λ x1670 -> if true then x1660 else x1670 ) ) ) $ ( x1660 ) ) ) ) $ ( if false then Bool else Bool )
        d162 = if ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( d124 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( d57 )
        d168 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( Bool )
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if true then x1690 else x1690 ) ) ) $ ( d68 ) ) ) ) $ ( if true then d95 else true )
        d172 : if true then ( ( Set -> Set ) ∋ ( ( λ x1750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( Bool )
        d172 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> false ) ) ) $ ( d16 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> d144 ) ) ) $ ( d14 )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> ( ( Set -> Set ) ∋ ( ( λ x1810 -> if true then x1800 else x1800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d177 = if ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( d73 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> d1 ) ) ) $ ( d112 ) else if d5 then true else d65
        d182 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then x1840 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d182 = if if true then d150 else false then if true then d25 else d120 else ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> d61 ) ) ) $ ( false )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> if false then Bool else x1870 ) ) ) $ ( if true then Bool else Bool )
        d186 = if if false then d140 else d25 then if d95 then d82 else d44 else if d82 then d37 else d9
        d188 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1910 -> Bool ) ) ) $ ( Bool )
        d188 = if ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( d168 ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> d147 ) ) ) $ ( true )
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then x1940 else Bool ) ) ) $ ( if false then Bool else Bool )
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> if x1930 then d150 else d20 ) ) ) $ ( if d82 then d158 else d115 )
        d195 : ( ( Set -> Set ) ∋ ( ( λ x1990 -> ( ( Set -> Set ) ∋ ( ( λ x2000 -> if true then x2000 else Bool ) ) ) $ ( x1990 ) ) ) ) $ ( if true then Bool else Bool )
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> d147 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> d33 ) ) ) $ ( true )
        d201 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( Bool )
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> if d52 then true else x2020 ) ) ) $ ( if d87 then false else d40 )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> ( ( Set -> Set ) ∋ ( ( λ x2070 -> if false then x2070 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d204 = if if d109 then true else d105 then ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> x2050 ) ) ) $ ( d68 ) else if d172 then d14 else d128
        d208 : ( ( Set -> Set ) ∋ ( ( λ x2100 -> if true then x2100 else Bool ) ) ) $ ( if false then Bool else Bool )
        d208 = if if false then d95 else d172 then ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> d124 ) ) ) $ ( false ) else if false then d182 else d168
        d211 : if true then ( ( Set -> Set ) ∋ ( ( λ x2130 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2140 -> x2140 ) ) ) $ ( Bool )
        d211 = if if false then d208 else d128 then ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( true ) else if false then d16 else false
        d215 : ( ( Set -> Set ) ∋ ( ( λ x2170 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d215 = if ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> false ) ) ) $ ( true ) then if true then d147 else false else if true then d168 else true
        d218 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2210 -> Bool ) ) ) $ ( Bool )
        d218 = if ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> true ) ) ) $ ( d9 ) then if d95 then true else d201 else ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> true ) ) ) $ ( false )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x2240 -> if true then x2240 else x2240 ) ) ) $ ( if false then Bool else Bool )
        d222 = if if d73 then d20 else d208 then if false then d33 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> x2230 ) ) ) $ ( d1 )
        d225 : ( ( Set -> Set ) ∋ ( ( λ x2260 -> if true then Bool else x2260 ) ) ) $ ( if false then Bool else Bool )
        d225 = if if d87 then true else d208 then if d120 then d61 else d168 else if true then d128 else d128
        d227 : if true then ( ( Set -> Set ) ∋ ( ( λ x2310 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2320 -> Bool ) ) ) $ ( Bool )
        d227 = if ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> x2280 ) ) ) $ ( d52 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> x2290 ) ) ) $ ( d222 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> x2300 ) ) ) $ ( d120 )
        d233 : ( ( Set -> Set ) ∋ ( ( λ x2340 -> if false then Bool else x2340 ) ) ) $ ( if true then Bool else Bool )
        d233 = if if d120 then true else false then if false then d204 else d158 else if d112 then false else d92
        d235 : ( ( Set -> Set ) ∋ ( ( λ x2380 -> if false then Bool else x2380 ) ) ) $ ( if false then Bool else Bool )
        d235 = if if d9 then d182 else d172 then ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> false ) ) ) $ ( d150 )
        d239 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> if true then x2410 else Bool ) ) ) $ ( if true then Bool else Bool )
        d239 = if if d222 then d235 else d201 then ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> false ) ) ) $ ( true ) else if d112 then d186 else d40
        d242 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if x2430 then d128 else d33 ) ) ) $ ( if true then true else false )
        d245 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> if true then x2480 else x2480 ) ) ) $ ( if true then Bool else Bool )
        d245 = if ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> d44 ) ) ) $ ( d201 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> true ) ) ) $ ( d40 ) else if d222 then d168 else true
        d249 : if false then ( ( Set -> Set ) ∋ ( ( λ x2510 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if x2500 then d95 else false ) ) ) $ ( if d242 then true else d25 )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then Bool else x2540 ) ) ) $ ( if false then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> if d233 then d172 else x2530 ) ) ) $ ( if d5 then d5 else d14 )
        d255 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> ( ( Set -> Set ) ∋ ( ( λ x2590 -> if true then Bool else x2580 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> if x2560 then d115 else x2560 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d162 )
        d260 : if true then ( ( Set -> Set ) ∋ ( ( λ x2630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2640 -> Bool ) ) ) $ ( Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if true then d37 else d135 ) ) ) $ ( d44 ) ) ) ) $ ( if false then false else false )
        d265 : if true then if false then Bool else Bool else if true then Bool else Bool
        d265 = if if true then false else d255 then if true then true else false else if true then d225 else false
        d266 : if true then ( ( Set -> Set ) ∋ ( ( λ x2680 -> x2680 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2690 -> x2690 ) ) ) $ ( Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> if d112 then x2670 else true ) ) ) $ ( if d249 then true else d120 )
        d270 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2740 -> Bool ) ) ) $ ( Bool )
        d270 = if ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> x2710 ) ) ) $ ( d172 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> d155 ) ) ) $ ( d128 )
        d275 : ( ( Set -> Set ) ∋ ( ( λ x2780 -> ( ( Set -> Set ) ∋ ( ( λ x2790 -> if true then x2780 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d275 = if ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> false ) ) ) $ ( d222 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( false ) else if true then d82 else false
        d280 : ( ( Set -> Set ) ∋ ( ( λ x2820 -> ( ( Set -> Set ) ∋ ( ( λ x2830 -> if false then x2830 else x2820 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> if true then true else true ) ) ) $ ( if d73 then true else false )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d284 = if ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> d215 ) ) ) $ ( false ) then if true then true else d82 else ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> true ) ) ) $ ( false )
        d288 : if true then if false then Bool else Bool else if false then Bool else Bool
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if x2900 then x2890 else false ) ) ) $ ( x2890 ) ) ) ) $ ( if d222 then false else true )
        d291 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d291 = if if d227 then true else false then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> true ) ) ) $ ( d140 )
        d294 : if false then ( ( Set -> Set ) ∋ ( ( λ x2970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2980 -> x2980 ) ) ) $ ( Bool )
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> if true then d61 else true ) ) ) $ ( x2950 ) ) ) ) $ ( if d28 then true else false )
        d299 : if false then ( ( Set -> Set ) ∋ ( ( λ x3010 -> x3010 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d299 = if if true then false else d40 then if d5 then d5 else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> x3000 ) ) ) $ ( false )
        d302 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3040 -> Bool ) ) ) $ ( Bool )
        d302 = if ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> true ) ) ) $ ( d215 ) then if true then false else false else if d265 then d78 else d291
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> if x3060 then d68 else d208 ) ) ) $ ( if d211 then d112 else d115 )
        d308 : if false then if false then Bool else Bool else if true then Bool else Bool
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> if x3100 then x3100 else d48 ) ) ) $ ( x3090 ) ) ) ) $ ( if d14 then false else d9 )
        d311 : if true then ( ( Set -> Set ) ∋ ( ( λ x3130 -> x3130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3140 -> Bool ) ) ) $ ( Bool )
        d311 = ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> if true then x3120 else x3120 ) ) ) $ ( if d266 then true else d48 )
        d315 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3180 -> x3180 ) ) ) $ ( Bool )
        d315 = if if d73 then false else d73 then ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> true ) ) ) $ ( false )
        d319 : if false then if true then Bool else Bool else if false then Bool else Bool
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> if d211 then d186 else d52 ) ) ) $ ( if false then d135 else true )
        d321 : if true then if false then Bool else Bool else if true then Bool else Bool
        d321 = if ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> x3230 ) ) ) $ ( d239 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> d140 ) ) ) $ ( true )
        d325 : if false then ( ( Set -> Set ) ∋ ( ( λ x3280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3290 -> Bool ) ) ) $ ( Bool )
        d325 = ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> if true then d280 else false ) ) ) $ ( true ) ) ) ) $ ( if d20 then d100 else d147 )
        d330 : if true then ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if true then x3320 else true ) ) ) $ ( x3310 ) ) ) ) $ ( if d201 then true else false )
        d334 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> if x3360 then false else false ) ) ) $ ( d245 ) ) ) ) $ ( if d188 then true else d265 )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3420 -> ( ( Set -> Set ) ∋ ( ( λ x3430 -> if false then Bool else x3430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d338 = if ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> x3400 ) ) ) $ ( d42 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> d321 ) ) ) $ ( false )
        d344 : if true then ( ( Set -> Set ) ∋ ( ( λ x3470 -> x3470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3480 -> x3480 ) ) ) $ ( Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> if d128 then x3450 else d182 ) ) ) $ ( d135 ) ) ) ) $ ( if d37 then d266 else false )
        d349 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3510 -> x3510 ) ) ) $ ( Bool )
        d349 = if ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> d82 ) ) ) $ ( d155 ) then if true then false else false else if d124 then d195 else d61
        d352 : if false then ( ( Set -> Set ) ∋ ( ( λ x3550 -> x3550 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3560 -> Bool ) ) ) $ ( Bool )
        d352 = if ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> x3530 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> true ) ) ) $ ( d82 ) else if true then d144 else d112
        d357 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if true then d168 else d1 ) ) ) $ ( x3580 ) ) ) ) $ ( if true then d260 else d344 )
        d361 : if true then ( ( Set -> Set ) ∋ ( ( λ x3640 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> d128 ) ) ) $ ( d20 ) then if d294 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> d291 ) ) ) $ ( false )
        d365 : if true then ( ( Set -> Set ) ∋ ( ( λ x3670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3680 -> x3680 ) ) ) $ ( Bool )
        d365 = if if d352 then true else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> false ) ) ) $ ( false ) else if d16 then false else d158
        d369 : if true then if true then Bool else Bool else if true then Bool else Bool
        d369 = if if false then true else true then if d48 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> d288 ) ) ) $ ( d132 )
        d371 : if false then if false then Bool else Bool else if true then Bool else Bool
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> if x3720 then x3720 else x3720 ) ) ) $ ( if true then true else d155 )
        d373 : ( ( Set -> Set ) ∋ ( ( λ x3750 -> if false then x3750 else Bool ) ) ) $ ( if true then Bool else Bool )
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> if x3740 then d132 else d218 ) ) ) $ ( if d25 then d52 else true )
        d376 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3780 -> x3780 ) ) ) $ ( Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if d188 then x3770 else x3770 ) ) ) $ ( if false then d291 else d87 )
        d379 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> if true then x3820 else x3820 ) ) ) $ ( if true then Bool else Bool )
        d379 = if if d155 then d305 else d61 then ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> d73 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( true )
        d383 : if false then if true then Bool else Bool else if true then Bool else Bool
        d383 = if ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( false ) then if d172 then false else false else if d42 then false else d260
        d385 : ( ( Set -> Set ) ∋ ( ( λ x3880 -> ( ( Set -> Set ) ∋ ( ( λ x3890 -> if true then x3880 else Bool ) ) ) $ ( x3880 ) ) ) ) $ ( if true then Bool else Bool )
        d385 = if ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> false ) ) ) $ ( d192 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> d195 ) ) ) $ ( true ) else if d1 then d82 else true
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> ( ( Set -> Set ) ∋ ( ( λ x3930 -> if true then x3920 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> if false then false else d9 ) ) ) $ ( if false then d249 else d215 )
        d394 : ( ( Set -> Set ) ∋ ( ( λ x3970 -> ( ( Set -> Set ) ∋ ( ( λ x3980 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> if false then x3950 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d25 else false )
        d399 : if false then if false then Bool else Bool else if false then Bool else Bool
        d399 = if if false then true else false then if d249 then d105 else d371 else if true then d280 else true
        d400 : if false then ( ( Set -> Set ) ∋ ( ( λ x4020 -> x4020 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> if x4010 then d239 else d338 ) ) ) $ ( if true then d9 else d57 )
        d403 : ( ( Set -> Set ) ∋ ( ( λ x4060 -> ( ( Set -> Set ) ∋ ( ( λ x4070 -> if true then Bool else x4070 ) ) ) $ ( x4060 ) ) ) ) $ ( if true then Bool else Bool )
        d403 = ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> if d294 then false else d28 ) ) ) $ ( false ) ) ) ) $ ( if false then d25 else true )
        d408 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( Bool )
        d408 = ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> if d68 then false else true ) ) ) $ ( x4090 ) ) ) ) $ ( if d275 then true else d95 )
        d412 : ( ( Set -> Set ) ∋ ( ( λ x4150 -> ( ( Set -> Set ) ∋ ( ( λ x4160 -> if true then x4160 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> if d280 then true else d42 ) ) ) $ ( x4130 ) ) ) ) $ ( if false then false else false )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x4190 -> ( ( Set -> Set ) ∋ ( ( λ x4200 -> if false then Bool else x4200 ) ) ) $ ( x4190 ) ) ) ) $ ( if false then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if d344 then x4180 else x4180 ) ) ) $ ( if false then true else d105 )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> if true then Bool else x4230 ) ) ) $ ( if true then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if d135 then false else x4220 ) ) ) $ ( if false then true else d239 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> if true then x4270 else Bool ) ) ) $ ( if false then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> if d105 then d201 else x4260 ) ) ) $ ( d147 ) ) ) ) $ ( if true then d252 else true )
        d428 : if true then ( ( Set -> Set ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if x4290 then true else d78 ) ) ) $ ( x4290 ) ) ) ) $ ( if true then true else false )
        d432 : if true then ( ( Set -> Set ) ∋ ( ( λ x4340 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if d245 then d245 else x4330 ) ) ) $ ( if false then d365 else d95 )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4370 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> if x4360 then x4360 else d294 ) ) ) $ ( if true then true else false )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x4400 -> ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then x4410 else x4400 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d438 = ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> if x4390 then x4390 else d376 ) ) ) $ ( if true then d40 else d408 )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if false then x4440 else x4440 ) ) ) $ ( if true then Bool else Bool )
        d442 = if if d385 then d147 else true then if true then false else d201 else ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> d315 ) ) ) $ ( false )
        d445 : if true then ( ( Set -> Set ) ∋ ( ( λ x4480 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> if false then x4470 else d417 ) ) ) $ ( x4460 ) ) ) ) $ ( if d162 then d305 else d270 )
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4520 -> if false then Bool else x4520 ) ) ) $ ( if true then Bool else Bool )
        d449 = ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> if true then d82 else d120 ) ) ) $ ( d352 ) ) ) ) $ ( if d158 then d376 else d37 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x4550 -> if true then x4550 else Bool ) ) ) $ ( if false then Bool else Bool )
        d453 = if if d379 then d147 else d182 then ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> true ) ) ) $ ( true ) else if true then false else false
        d456 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d456 = if ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> d168 ) ) ) $ ( true ) then if false then d260 else d109 else ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> false ) ) ) $ ( d92 )
        d460 : if false then if false then Bool else Bool else if false then Bool else Bool
        d460 = if if false then false else false then if false then false else d172 else ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> false ) ) ) $ ( false )
        d462 : ( ( Set -> Set ) ∋ ( ( λ x4640 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if true then x4630 else true ) ) ) $ ( if true then false else d120 )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x4680 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d465 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> true ) ) ) $ ( d412 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> d225 ) ) ) $ ( d266 )
        d469 : if false then if false then Bool else Bool else if true then Bool else Bool
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> if false then false else false ) ) ) $ ( if d25 then false else false )
        d471 : if true then ( ( Set -> Set ) ∋ ( ( λ x4740 -> x4740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4750 -> Bool ) ) ) $ ( Bool )
        d471 = if ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> d311 ) ) ) $ ( d449 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> x4730 ) ) ) $ ( d424 ) else if d155 then d201 else d460
        d476 : if false then ( ( Set -> Set ) ∋ ( ( λ x4790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4800 -> x4800 ) ) ) $ ( Bool )
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> if false then x4770 else x4780 ) ) ) $ ( d465 ) ) ) ) $ ( if true then false else true )
        d481 : ( ( Set -> Set ) ∋ ( ( λ x4830 -> ( ( Set -> Set ) ∋ ( ( λ x4840 -> if true then x4840 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> if true then d308 else x4820 ) ) ) $ ( if d105 then d349 else false )
        d485 : ( ( Set -> Set ) ∋ ( ( λ x4890 -> ( ( Set -> Set ) ∋ ( ( λ x4900 -> if false then x4890 else x4900 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d485 = if ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> d150 ) ) ) $ ( d225 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> d44 ) ) ) $ ( d120 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> false ) ) ) $ ( true )
        d491 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4920 -> Bool ) ) ) $ ( Bool )
        d491 = if if true then d275 else false then if false then true else d225 else if true then false else false
        d493 : if false then ( ( Set -> Set ) ∋ ( ( λ x4950 -> x4950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if false then d57 else d308 ) ) ) $ ( if d481 then d399 else d135 )
        d496 : if true then ( ( Set -> Set ) ∋ ( ( λ x4980 -> x4980 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> if x4970 then x4970 else d266 ) ) ) $ ( if d369 then d417 else d33 )
        d499 : if false then if true then Bool else Bool else if false then Bool else Bool
        d499 = if if d162 then false else false then if d330 then d325 else d291 else ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( d399 )
        d501 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5030 -> Bool ) ) ) $ ( Bool )
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> if d218 then false else true ) ) ) $ ( if true then true else d182 )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5060 -> ( ( Set -> Set ) ∋ ( ( λ x5070 -> if true then x5060 else x5060 ) ) ) $ ( x5060 ) ) ) ) $ ( if true then Bool else Bool )
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> if x5050 then true else x5050 ) ) ) $ ( if d476 then false else d57 )
        d508 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5110 -> Bool ) ) ) $ ( Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if d57 then false else d501 ) ) ) $ ( d162 ) ) ) ) $ ( if d37 then false else false )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> ( ( Set -> Set ) ∋ ( ( λ x5160 -> if false then x5160 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d512 = if ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( false ) then if d266 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> false ) ) ) $ ( true )
        d517 : if false then if false then Bool else Bool else if false then Bool else Bool
        d517 = if ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> x5180 ) ) ) $ ( d408 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> d501 ) ) ) $ ( d465 ) else if true then d280 else d9
        d520 : ( ( Set -> Set ) ∋ ( ( λ x5220 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d520 = if ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> x5210 ) ) ) $ ( d215 ) then if true then d87 else false else if d16 then d308 else d57
        d523 : if false then ( ( Set -> Set ) ∋ ( ( λ x5250 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> if false then d428 else true ) ) ) $ ( if false then d25 else true )
        d526 : if false then ( ( Set -> Set ) ∋ ( ( λ x5290 -> x5290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5300 -> Bool ) ) ) $ ( Bool )
        d526 = if ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> x5270 ) ) ) $ ( d357 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> x5280 ) ) ) $ ( false ) else if true then d432 else d1
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5340 -> ( ( Set -> Set ) ∋ ( ( λ x5350 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> if false then x5330 else x5320 ) ) ) $ ( x5320 ) ) ) ) $ ( if false then false else d344 )
        d536 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5390 -> x5390 ) ) ) $ ( Bool )
        d536 = if if d344 then d305 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> x5370 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> x5380 ) ) ) $ ( d40 )
        d540 : if true then if false then Bool else Bool else if false then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if false then true else false ) ) ) $ ( if false then d400 else d526 )
        d542 : if true then if false then Bool else Bool else if false then Bool else Bool
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if x5430 then x5430 else true ) ) ) $ ( d319 ) ) ) ) $ ( if d132 then false else false )
        d545 : ( ( Set -> Set ) ∋ ( ( λ x5480 -> ( ( Set -> Set ) ∋ ( ( λ x5490 -> if true then Bool else Bool ) ) ) $ ( x5480 ) ) ) ) $ ( if false then Bool else Bool )
        d545 = if ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> d135 ) ) ) $ ( false ) then if true then d526 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> true ) ) ) $ ( d294 )
        d550 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5520 -> Bool ) ) ) $ ( Bool )
        d550 = if if d37 then true else true then if true then d42 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> false ) ) ) $ ( false )
        d553 : ( ( Set -> Set ) ∋ ( ( λ x5550 -> ( ( Set -> Set ) ∋ ( ( λ x5560 -> if false then Bool else Bool ) ) ) $ ( x5550 ) ) ) ) $ ( if false then Bool else Bool )
        d553 = if ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> d330 ) ) ) $ ( d379 ) then if true then d449 else d302 else if d25 then false else true
        d557 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5590 -> x5590 ) ) ) $ ( Bool )
        d557 = ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> if false then d16 else true ) ) ) $ ( if d424 then true else false )
        d560 : if false then if true then Bool else Bool else if false then Bool else Bool
        d560 = ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> if d357 then x5610 else d373 ) ) ) $ ( if d308 then false else d218 )