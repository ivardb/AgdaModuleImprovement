module Decls150Test11  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else x30 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if if false then true else true then if false then true else false else if false then true else false
        d4 : if true then ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d4 = if if d1 then false else true then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( d1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x90 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if x80 then false else x80 ) ) ) $ ( if d4 then true else false )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else Bool ) ) ) $ ( x130 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if x110 then d1 else false ) ) ) $ ( x110 ) ) ) ) $ ( if false then true else d4 )
        d15 : if false then ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if d1 then x170 else d4 ) ) ) $ ( x160 ) ) ) ) $ ( if false then true else d7 )
        d19 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( Bool )
        d19 = if if false then d1 else true then if d1 then d1 else false else if false then false else false
        d21 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x230 -> Bool ) ) ) $ ( Bool )
        d21 = if ( ( Bool -> Bool ) ∋ ( ( λ x220 -> x220 ) ) ) $ ( d4 ) then if true then true else true else if d4 then d4 else false
        d24 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then Bool else x270 ) ) ) $ ( x260 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if false then d1 else true ) ) ) $ ( if false then d19 else true )
        d28 : if false then if true then Bool else Bool else if true then Bool else Bool
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d15 ) ) ) $ ( d10 ) then if d24 then false else d10 else ( ( Bool -> Bool ) ∋ ( ( λ x300 -> d15 ) ) ) $ ( d7 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if false then x330 else x330 ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if false then x320 else x320 ) ) ) $ ( if true then true else false )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x370 -> if true then x370 else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if true then x360 else d1 ) ) ) $ ( false ) ) ) ) $ ( if d24 then d31 else false )
        d38 : if true then if false then Bool else Bool else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if d15 then true else x390 ) ) ) $ ( x390 ) ) ) ) $ ( if false then d10 else false )
        d41 : if true then ( ( Set -> Set ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if d15 then x420 else x420 ) ) ) $ ( if d38 then false else true )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x480 -> if true then Bool else x480 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d10 then d34 else false ) ) ) $ ( d21 ) ) ) ) $ ( if true then d10 else false )
        d49 : if false then if true then Bool else Bool else if false then Bool else Bool
        d49 = if if d31 then d44 else false then if d44 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( d34 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then Bool else x530 ) ) ) $ ( if false then Bool else Bool )
        d51 = if ( ( Bool -> Bool ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( d28 ) then if d10 then d21 else d44 else if d10 then d44 else d21
        d54 : if false then ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d54 = if if d19 then d10 else false then ( ( Bool -> Bool ) ∋ ( ( λ x550 -> false ) ) ) $ ( false ) else if false then d1 else false
        d57 : if false then ( ( Set -> Set ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if x580 then x580 else d1 ) ) ) $ ( if d7 then d4 else false )
        d61 : if true then ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if d28 then false else x630 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d21 )
        d66 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x680 -> x680 ) ) ) $ ( Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if d54 then true else false ) ) ) $ ( if d54 then d28 else d49 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then Bool else x710 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if false then d19 else d4 ) ) ) $ ( if false then false else d10 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then x760 else x760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d73 = if if true then d28 else d24 then ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d10 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( true )
        d78 : if false then ( ( Set -> Set ) ∋ ( ( λ x810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( Bool )
        d78 = if ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( d1 ) then if d49 then d7 else true else ( ( Bool -> Bool ) ∋ ( ( λ x800 -> false ) ) ) $ ( true )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x860 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> if false then Bool else x860 ) ) ) $ ( x860 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if true then x850 else true ) ) ) $ ( x840 ) ) ) ) $ ( if true then d24 else d73 )
        d88 : if true then ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if x890 then false else false ) ) ) $ ( false ) ) ) ) $ ( if d57 then d61 else d10 )
        d92 : if false then ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d44 ) ) ) $ ( d73 ) then ( ( Bool -> Bool ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d88 ) ) ) $ ( false )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> if true then Bool else Bool ) ) ) $ ( x1020 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = if ( ( Bool -> Bool ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> false ) ) ) $ ( d15 )
        d104 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if d69 then d31 else d31 ) ) ) $ ( true ) ) ) ) $ ( if d21 then d38 else d57 )
        d108 : if true then if false then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> if x1090 then d10 else d54 ) ) ) $ ( x1090 ) ) ) ) $ ( if false then d10 else d1 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d111 = if ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> false ) ) ) $ ( d31 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d34 ) ) ) $ ( d28 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( d69 )
        d117 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1200 -> Bool ) ) ) $ ( Bool )
        d117 = if ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> false ) ) ) $ ( d51 ) then if d54 then d10 else d38 else ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> d78 ) ) ) $ ( d19 )
        d121 : if true then if false then Bool else Bool else if true then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if d34 then false else d88 ) ) ) $ ( false ) ) ) ) $ ( if d1 then d104 else false )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1270 else Bool ) ) ) $ ( x1270 ) ) ) ) $ ( if false then Bool else Bool )
        d124 = if ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> d24 ) ) ) $ ( d108 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> x1260 ) ) ) $ ( false ) else if false then d38 else d24
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> ( ( Set -> Set ) ∋ ( ( λ x1330 -> if false then x1320 else Bool ) ) ) $ ( x1320 ) ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if x1310 then true else x1310 ) ) ) $ ( x1300 ) ) ) ) $ ( if true then d69 else d24 )
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if true then x1350 else x1350 ) ) ) $ ( if d1 then true else d4 )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> if false then Bool else Bool ) ) ) $ ( x1400 ) ) ) ) $ ( if true then Bool else Bool )
        d137 = if ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> d19 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> false ) ) ) $ ( d24 ) else if true then d117 else true
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> if false then x1450 else Bool ) ) ) $ ( if false then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> if x1430 then false else x1440 ) ) ) $ ( d57 ) ) ) ) $ ( if d117 then false else d34 )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d146 = if ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( false )
        d152 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1540 -> Bool ) ) ) $ ( Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if x1530 then false else d117 ) ) ) $ ( if false then d78 else d104 )
        d155 : if false then if false then Bool else Bool else if false then Bool else Bool
        d155 = if ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> true ) ) ) $ ( d15 )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then x1610 else Bool ) ) ) $ ( if true then Bool else Bool )
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> if true then d69 else x1600 ) ) ) $ ( if false then d104 else true )
        d162 : if false then ( ( Set -> Set ) ∋ ( ( λ x1650 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1660 -> Bool ) ) ) $ ( Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> if false then true else d21 ) ) ) $ ( true ) ) ) ) $ ( if d24 then d34 else d69 )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> if false then x1700 else x1700 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if d24 then true else true ) ) ) $ ( true ) ) ) ) $ ( if d34 then true else d21 )
        d172 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if d61 then true else x1740 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then x1790 else x1800 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if x1780 then d142 else x1770 ) ) ) $ ( d111 ) ) ) ) $ ( if d4 then d51 else d51 )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d181 = if if true then false else d21 then ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> true ) ) ) $ ( d57 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> true ) ) ) $ ( false )
        d186 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1880 -> Bool ) ) ) $ ( Bool )
        d186 = if if d54 then true else false then if true then d137 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> true ) ) ) $ ( false )
        d189 : if false then ( ( Set -> Set ) ∋ ( ( λ x1920 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if true then false else d181 ) ) ) $ ( true ) ) ) ) $ ( if d1 then false else true )
        d193 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( Bool )
        d193 = if ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> d167 ) ) ) $ ( d159 ) then if d167 then d10 else d134 else if false then true else d4
        d196 : ( ( Set -> Set ) ∋ ( ( λ x1990 -> if true then x1990 else Bool ) ) ) $ ( if false then Bool else Bool )
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> if d66 then false else x1970 ) ) ) $ ( d44 ) ) ) ) $ ( if d134 then d78 else d172 )
        d200 : if false then ( ( Set -> Set ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2040 -> x2040 ) ) ) $ ( Bool )
        d200 = if ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> false ) ) ) $ ( d28 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> x2020 ) ) ) $ ( false ) else if false then d189 else false
        d205 : ( ( Set -> Set ) ∋ ( ( λ x2070 -> if false then Bool else x2070 ) ) ) $ ( if true then Bool else Bool )
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> if d176 then d51 else true ) ) ) $ ( if d83 then false else false )
        d208 : if true then ( ( Set -> Set ) ∋ ( ( λ x2100 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> if x2090 then false else false ) ) ) $ ( if d1 then d98 else d181 )
        d211 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> if d172 then d176 else d49 ) ) ) $ ( false ) ) ) ) $ ( if false then d129 else false )
        d216 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2180 -> x2180 ) ) ) $ ( Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if x2170 then d205 else x2170 ) ) ) $ ( if d155 then d111 else d189 )
        d219 : if false then ( ( Set -> Set ) ∋ ( ( λ x2220 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d219 = ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> if x2210 then x2200 else d54 ) ) ) $ ( true ) ) ) ) $ ( if d176 then false else d21 )
        d223 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2260 -> Bool ) ) ) $ ( Bool )
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> if x2240 then d73 else x2250 ) ) ) $ ( true ) ) ) ) $ ( if false then d172 else d44 )
        d227 : if false then if true then Bool else Bool else if false then Bool else Bool
        d227 = ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> if x2280 then false else x2280 ) ) ) $ ( if d146 then false else false )
        d229 : if true then ( ( Set -> Set ) ∋ ( ( λ x2320 -> x2320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( Bool )
        d229 = if ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> x2310 ) ) ) $ ( d38 ) else if d108 then false else d54
        d234 : if true then ( ( Set -> Set ) ∋ ( ( λ x2360 -> x2360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d234 = if if d176 then false else d167 then ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> false ) ) ) $ ( d223 ) else if false then true else false
        d237 : if false then ( ( Set -> Set ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> if d34 then d34 else d78 ) ) ) $ ( if d83 then d69 else true )
        d240 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2430 -> x2430 ) ) ) $ ( Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if d200 then d211 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d189 else false )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x2470 -> ( ( Set -> Set ) ∋ ( ( λ x2480 -> if false then Bool else x2480 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> if x2450 then true else x2460 ) ) ) $ ( x2450 ) ) ) ) $ ( if false then true else d137 )
        d249 : ( ( Set -> Set ) ∋ ( ( λ x2510 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if x2500 then false else d15 ) ) ) $ ( if d38 then false else false )
        d252 : if false then ( ( Set -> Set ) ∋ ( ( λ x2550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2560 -> Bool ) ) ) $ ( Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if false then x2540 else false ) ) ) $ ( d216 ) ) ) ) $ ( if false then d41 else d137 )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x2600 -> ( ( Set -> Set ) ∋ ( ( λ x2610 -> if true then x2600 else x2600 ) ) ) $ ( x2600 ) ) ) ) $ ( if false then Bool else Bool )
        d257 = if ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> d142 ) ) ) $ ( d121 ) then if d44 then d121 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d38 ) ) ) $ ( false )
        d262 : if false then if false then Bool else Bool else if true then Bool else Bool
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if d134 then x2630 else d211 ) ) ) $ ( true ) ) ) ) $ ( if d92 then false else d219 )
        d265 : if false then if false then Bool else Bool else if true then Bool else Bool
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if false then x2660 else true ) ) ) $ ( if true then d83 else d78 )
        d267 : ( ( Set -> Set ) ∋ ( ( λ x2700 -> if true then x2700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d267 = if if true then d31 else d78 then ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> d237 ) ) ) $ ( d38 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> d19 ) ) ) $ ( true )
        d271 : if false then ( ( Set -> Set ) ∋ ( ( λ x2730 -> x2730 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d271 = ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> if d142 then d181 else d1 ) ) ) $ ( if false then d7 else false )
        d274 : if false then ( ( Set -> Set ) ∋ ( ( λ x2770 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( Bool )
        d274 = if ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> true ) ) ) $ ( d265 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> d61 ) ) ) $ ( d234 ) else if true then d4 else d51
        d279 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2810 -> x2810 ) ) ) $ ( Bool )
        d279 = if if d4 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> true ) ) ) $ ( d21 ) else if true then d44 else true
        d282 : if true then ( ( Set -> Set ) ∋ ( ( λ x2840 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d282 = if if d186 then d134 else d200 then if d211 then false else d111 else ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> true ) ) ) $ ( false )
        d285 : ( ( Set -> Set ) ∋ ( ( λ x2880 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> if d73 then x2870 else d121 ) ) ) $ ( x2860 ) ) ) ) $ ( if d186 then true else true )
        d289 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if d262 then false else true ) ) ) $ ( if d21 then d51 else true )
        d292 : if false then ( ( Set -> Set ) ∋ ( ( λ x2950 -> x2950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if x2930 then true else d121 ) ) ) $ ( true ) ) ) ) $ ( if d10 then false else d279 )
        d296 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2980 -> Bool ) ) ) $ ( Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> if d51 then x2970 else x2970 ) ) ) $ ( if d134 then d83 else false )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x3020 -> ( ( Set -> Set ) ∋ ( ( λ x3030 -> if false then Bool else Bool ) ) ) $ ( x3020 ) ) ) ) $ ( if false then Bool else Bool )
        d299 = if ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> x3000 ) ) ) $ ( d83 ) then if d211 then d44 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> false ) ) ) $ ( d265 )
        d304 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3080 -> Bool ) ) ) $ ( Bool )
        d304 = if ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> true ) ) ) $ ( d267 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> x3060 ) ) ) $ ( d92 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> d61 ) ) ) $ ( true )
        d309 : if false then if true then Bool else Bool else if true then Bool else Bool
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> if d279 then false else false ) ) ) $ ( true ) ) ) ) $ ( if true then d49 else d134 )
        d312 : if false then ( ( Set -> Set ) ∋ ( ( λ x3150 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3160 -> Bool ) ) ) $ ( Bool )
        d312 = if if d121 then d7 else d142 then ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> x3130 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> true ) ) ) $ ( d152 )
        d317 : if false then ( ( Set -> Set ) ∋ ( ( λ x3190 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> if true then x3180 else d279 ) ) ) $ ( if d155 then d49 else d21 )
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then Bool else x3240 ) ) ) $ ( x3230 ) ) ) ) $ ( if true then Bool else Bool )
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> if d265 then x3210 else true ) ) ) $ ( true ) ) ) ) $ ( if d223 then d155 else true )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3260 -> if false then x3260 else x3260 ) ) ) $ ( if false then Bool else Bool )
        d325 = if if d28 then true else d111 then if d312 then true else true else if false then d205 else d155
        d327 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> if x3280 then x3280 else x3280 ) ) ) $ ( if d223 then d155 else true )
        d330 : if true then ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3340 -> Bool ) ) ) $ ( Bool )
        d330 = if ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> false ) ) ) $ ( d73 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( d134 ) else if true then d69 else true
        d335 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> if true then Bool else x3380 ) ) ) $ ( if true then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if d129 then true else x3370 ) ) ) $ ( false ) ) ) ) $ ( if d200 then d41 else false )
        d339 : if true then ( ( Set -> Set ) ∋ ( ( λ x3420 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> if d7 then d234 else x3400 ) ) ) $ ( d189 ) ) ) ) $ ( if d15 then d83 else false )
        d343 : if false then if true then Bool else Bool else if true then Bool else Bool
        d343 = if ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> d237 ) ) ) $ ( d152 ) then if false then d41 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> true ) ) ) $ ( true )
        d346 : ( ( Set -> Set ) ∋ ( ( λ x3490 -> ( ( Set -> Set ) ∋ ( ( λ x3500 -> if true then x3490 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> if x3480 then true else d159 ) ) ) $ ( true ) ) ) ) $ ( if d69 then true else false )
        d351 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> if false then x3530 else d229 ) ) ) $ ( true ) ) ) ) $ ( if d28 then d10 else false )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x3580 -> if false then x3580 else Bool ) ) ) $ ( if false then Bool else Bool )
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> if d200 then d216 else d15 ) ) ) $ ( d38 ) ) ) ) $ ( if d312 then d69 else d327 )
        d359 : ( ( Set -> Set ) ∋ ( ( λ x3610 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d359 = if if d240 then d44 else true then if d142 then d19 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> d249 ) ) ) $ ( true )
        d362 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3640 -> Bool ) ) ) $ ( Bool )
        d362 = if if d327 then d98 else d162 then ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( false ) else if true then d317 else false
        d365 : ( ( Set -> Set ) ∋ ( ( λ x3680 -> ( ( Set -> Set ) ∋ ( ( λ x3690 -> if false then Bool else x3690 ) ) ) $ ( x3680 ) ) ) ) $ ( if false then Bool else Bool )
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> if d124 then d54 else x3660 ) ) ) $ ( false ) ) ) ) $ ( if false then d325 else d111 )
        d370 : ( ( Set -> Set ) ∋ ( ( λ x3730 -> if true then Bool else x3730 ) ) ) $ ( if true then Bool else Bool )
        d370 = if ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> true ) ) ) $ ( true ) then if d330 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> false ) ) ) $ ( true )
        d374 : if true then ( ( Set -> Set ) ∋ ( ( λ x3760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3770 -> Bool ) ) ) $ ( Bool )
        d374 = ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> if true then x3750 else x3750 ) ) ) $ ( if false then d219 else true )
        d378 : ( ( Set -> Set ) ∋ ( ( λ x3810 -> if false then Bool else x3810 ) ) ) $ ( if true then Bool else Bool )
        d378 = if if d312 then d108 else d299 then ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> x3790 ) ) ) $ ( d129 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> d7 ) ) ) $ ( false )
        d382 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3850 -> Bool ) ) ) $ ( Bool )
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> d343 ) ) ) $ ( d362 ) then if true then false else d325 else ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( d15 )
        d386 : ( ( Set -> Set ) ∋ ( ( λ x3880 -> ( ( Set -> Set ) ∋ ( ( λ x3890 -> if true then Bool else Bool ) ) ) $ ( x3880 ) ) ) ) $ ( if false then Bool else Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if x3870 then d7 else false ) ) ) $ ( if true then true else false )
        d390 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3920 -> Bool ) ) ) $ ( Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> if d10 then true else d44 ) ) ) $ ( if d41 then d19 else d312 )
        d393 : if false then ( ( Set -> Set ) ∋ ( ( λ x3950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( Bool )
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> if x3940 then true else d159 ) ) ) $ ( if true then true else d38 )
        d397 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3990 -> Bool ) ) ) $ ( Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if x3980 then false else d304 ) ) ) $ ( if d142 then false else false )
        d400 : if true then if false then Bool else Bool else if false then Bool else Bool
        d400 = if ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> x4010 ) ) ) $ ( d216 ) then if d61 then d121 else true else if d267 then true else d265
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4040 -> ( ( Set -> Set ) ∋ ( ( λ x4050 -> if true then x4040 else Bool ) ) ) $ ( x4040 ) ) ) ) $ ( if false then Bool else Bool )
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> if x4030 then true else true ) ) ) $ ( if true then d249 else d155 )
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4080 -> if true then Bool else x4080 ) ) ) $ ( if true then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if false then x4070 else false ) ) ) $ ( if true then d98 else d325 )
        d409 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> ( ( Set -> Set ) ∋ ( ( λ x4130 -> if true then Bool else Bool ) ) ) $ ( x4120 ) ) ) ) $ ( if false then Bool else Bool )
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> if d34 then x4110 else true ) ) ) $ ( d51 ) ) ) ) $ ( if true then d343 else d200 )
        d414 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( Bool )
        d414 = if ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> d378 ) ) ) $ ( d15 ) then if true then d265 else false else if true then d108 else d7
        d417 : ( ( Set -> Set ) ∋ ( ( λ x4190 -> if true then x4190 else Bool ) ) ) $ ( if false then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if d289 then d362 else true ) ) ) $ ( if false then d265 else false )
        d420 : if false then ( ( Set -> Set ) ∋ ( ( λ x4230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d420 = if if d54 then d292 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> true ) ) ) $ ( d176 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4280 -> ( ( Set -> Set ) ∋ ( ( λ x4290 -> if true then x4290 else Bool ) ) ) $ ( x4280 ) ) ) ) $ ( if true then Bool else Bool )
        d424 = if ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> x4260 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> x4270 ) ) ) $ ( true )
        d430 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4330 -> Bool ) ) ) $ ( Bool )
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> if false then d327 else true ) ) ) $ ( false ) ) ) ) $ ( if d393 then d186 else false )
        d434 : if false then ( ( Set -> Set ) ∋ ( ( λ x4360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4370 -> x4370 ) ) ) $ ( Bool )
        d434 = ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> if d359 then d15 else d327 ) ) ) $ ( if d359 then d249 else true )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x4400 -> ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then Bool else Bool ) ) ) $ ( x4400 ) ) ) ) $ ( if true then Bool else Bool )
        d438 = ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> if d393 then d244 else x4390 ) ) ) $ ( if false then d414 else d51 )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if false then x4440 else Bool ) ) ) $ ( if false then Bool else Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if d31 then false else x4430 ) ) ) $ ( if d252 then true else false )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4470 -> ( ( Set -> Set ) ∋ ( ( λ x4480 -> if false then x4470 else x4470 ) ) ) $ ( x4470 ) ) ) ) $ ( if false then Bool else Bool )
        d445 = if if d249 then d117 else d335 then ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> true ) ) ) $ ( true ) else if d196 then true else d104
        d449 : if true then if true then Bool else Bool else if false then Bool else Bool
        d449 = ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> if true then x4500 else d296 ) ) ) $ ( true ) ) ) ) $ ( if d304 then d38 else true )
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4550 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if x4530 then d69 else false ) ) ) $ ( true ) ) ) ) $ ( if d155 then d289 else false )
        d456 : if false then if true then Bool else Bool else if true then Bool else Bool
        d456 = if if true then true else d208 then if d351 then false else d365 else ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> false ) ) ) $ ( d44 )
        d458 : ( ( Set -> Set ) ∋ ( ( λ x4600 -> if true then x4600 else x4600 ) ) ) $ ( if false then Bool else Bool )
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if false then x4590 else d196 ) ) ) $ ( if false then d1 else d108 )
        d461 : if true then if false then Bool else Bool else if false then Bool else Bool
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if x4630 then true else x4620 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d464 : if false then if false then Bool else Bool else if true then Bool else Bool
        d464 = if if d362 then d176 else true then if d78 then d414 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> d257 ) ) ) $ ( d205 )
        d466 : if true then if false then Bool else Bool else if true then Bool else Bool
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> if x4670 then x4670 else true ) ) ) $ ( if d7 then true else true )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4700 -> if true then Bool else x4700 ) ) ) $ ( if true then Bool else Bool )
        d468 = if if d393 then false else d181 then if true then false else d438 else ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> d339 ) ) ) $ ( false )
        d471 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4740 -> x4740 ) ) ) $ ( Bool )
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> if x4720 then false else x4730 ) ) ) $ ( false ) ) ) ) $ ( if d393 then d252 else true )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x4780 -> ( ( Set -> Set ) ∋ ( ( λ x4790 -> if true then Bool else Bool ) ) ) $ ( x4780 ) ) ) ) $ ( if true then Bool else Bool )
        d475 = if ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> false ) ) ) $ ( d92 ) then if d471 then false else d83 else ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> d117 ) ) ) $ ( true )
        d480 : if true then if true then Bool else Bool else if true then Bool else Bool
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> if x4810 then false else d15 ) ) ) $ ( if d355 then false else true )
        d482 : if true then if false then Bool else Bool else if false then Bool else Bool
        d482 = if ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> true ) ) ) $ ( true ) then if d186 then true else d196 else if true then d44 else false
        d484 : if true then ( ( Set -> Set ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> if d121 then x4860 else false ) ) ) $ ( x4850 ) ) ) ) $ ( if d41 then true else d61 )
        d488 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4900 -> Bool ) ) ) $ ( Bool )
        d488 = if ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> true ) ) ) $ ( false ) then if true then d370 else true else if false then d200 else false
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4930 -> ( ( Set -> Set ) ∋ ( ( λ x4940 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d491 = if if d271 then true else d414 then if false then false else d7 else ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> false ) ) ) $ ( d417 )
        d495 : if true then ( ( Set -> Set ) ∋ ( ( λ x4980 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> if d205 then x4970 else x4970 ) ) ) $ ( d152 ) ) ) ) $ ( if d159 then d227 else false )
        d499 : ( ( Set -> Set ) ∋ ( ( λ x5020 -> ( ( Set -> Set ) ∋ ( ( λ x5030 -> if true then x5020 else x5030 ) ) ) $ ( x5020 ) ) ) ) $ ( if true then Bool else Bool )
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> if false then d271 else true ) ) ) $ ( x5000 ) ) ) ) $ ( if true then d304 else true )
        d504 : if true then if false then Bool else Bool else if false then Bool else Bool
        d504 = if ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> true ) ) ) $ ( d223 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> d430 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> d19 ) ) ) $ ( false )
        d508 : ( ( Set -> Set ) ∋ ( ( λ x5120 -> ( ( Set -> Set ) ∋ ( ( λ x5130 -> if false then x5120 else x5120 ) ) ) $ ( x5120 ) ) ) ) $ ( if false then Bool else Bool )
        d508 = if ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> d15 ) ) ) $ ( d312 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> true ) ) ) $ ( d424 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( true )
        d514 : ( ( Set -> Set ) ∋ ( ( λ x5160 -> ( ( Set -> Set ) ∋ ( ( λ x5170 -> if true then Bool else Bool ) ) ) $ ( x5160 ) ) ) ) $ ( if true then Bool else Bool )
        d514 = if ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> true ) ) ) $ ( true ) then if d69 then d456 else d312 else if true then true else d346
        d518 : if false then ( ( Set -> Set ) ∋ ( ( λ x5200 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> if false then x5190 else x5190 ) ) ) $ ( if d488 then true else d44 )
        d521 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5240 -> Bool ) ) ) $ ( Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if x5220 then d57 else d289 ) ) ) $ ( d216 ) ) ) ) $ ( if d108 then d4 else d34 )
        d525 : if true then ( ( Set -> Set ) ∋ ( ( λ x5270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5280 -> x5280 ) ) ) $ ( Bool )
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> if d38 then x5260 else d445 ) ) ) $ ( if d434 then true else d285 )
        d529 : if true then if true then Bool else Bool else if false then Bool else Bool
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> if true then x5310 else d121 ) ) ) $ ( x5300 ) ) ) ) $ ( if false then true else d343 )
        d532 : if false then if true then Bool else Bool else if true then Bool else Bool
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> if x5330 then d274 else x5330 ) ) ) $ ( if false then d121 else d208 )
        d534 : if false then if false then Bool else Bool else if false then Bool else Bool
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if x5350 then x5350 else x5350 ) ) ) $ ( if false then true else d83 )
        d536 : if true then if true then Bool else Bool else if true then Bool else Bool
        d536 = if ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> x5370 ) ) ) $ ( true ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> true ) ) ) $ ( d351 )
        d539 : if true then if true then Bool else Bool else if true then Bool else Bool
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if d458 then x5410 else true ) ) ) $ ( d237 ) ) ) ) $ ( if d196 then d7 else true )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d542 = if if d15 then d296 else d73 then ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> d257 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> x5440 ) ) ) $ ( false )
        d546 : if true then ( ( Set -> Set ) ∋ ( ( λ x5500 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d546 = if ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> false ) ) ) $ ( d355 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> x5490 ) ) ) $ ( d21 )
        d551 : if true then ( ( Set -> Set ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5550 -> x5550 ) ) ) $ ( Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> if true then d359 else x5520 ) ) ) $ ( true ) ) ) ) $ ( if d382 then d536 else false )
        d556 : if true then ( ( Set -> Set ) ∋ ( ( λ x5580 -> x5580 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d556 = if ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> x5570 ) ) ) $ ( d54 ) then if d325 then true else d378 else if false then d330 else false
        d559 : if false then ( ( Set -> Set ) ∋ ( ( λ x5620 -> x5620 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> if x5600 then x5610 else false ) ) ) $ ( x5600 ) ) ) ) $ ( if d529 then true else d285 )
        d563 : ( ( Set -> Set ) ∋ ( ( λ x5640 -> if true then x5640 else Bool ) ) ) $ ( if true then Bool else Bool )
        d563 = if if true then d442 else d480 then if d362 then d430 else d330 else if d240 then true else d414