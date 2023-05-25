module Decls450Test13  where
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
        d1 : if true then ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1 = if if false then true else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x20 -> true ) ) ) $ ( false )
        d4 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d1 then true else false ) ) ) $ ( x50 ) ) ) ) $ ( if false then d1 else d1 )
        d8 : if true then ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( Bool )
        d8 = if ( ( Bool -> Bool ) ∋ ( ( λ x90 -> false ) ) ) $ ( d4 ) then ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d4 ) ) ) $ ( false ) else if d1 then d1 else d4
        d13 : if true then ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d13 = if ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d4 ) ) ) $ ( d4 ) else ( ( Bool -> Bool ) ∋ ( ( λ x160 -> d1 ) ) ) $ ( true )
        d18 : if false then ( ( Set -> Set ) ∋ ( ( λ x220 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> false ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d4 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x210 -> true ) ) ) $ ( true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if false then x260 else x260 ) ) ) $ ( x260 ) ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if x240 then d13 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d8 else false )
        d28 : if true then ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( Bool )
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( false ) then if false then d1 else d4 else if d1 then d1 else true
        d32 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if d1 then true else d8 then ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x340 -> d28 ) ) ) $ ( false )
        d37 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( Bool )
        d37 = if ( ( Bool -> Bool ) ∋ ( ( λ x380 -> false ) ) ) $ ( d18 ) then ( ( Bool -> Bool ) ∋ ( ( λ x390 -> true ) ) ) $ ( d13 ) else ( ( Bool -> Bool ) ∋ ( ( λ x400 -> x400 ) ) ) $ ( d32 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x450 -> if false then x450 else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = if ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d13 ) ) ) $ ( false ) then if d13 then d18 else d28 else ( ( Bool -> Bool ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( d1 )
        d46 : if false then ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if x470 then d1 else d13 ) ) ) $ ( d8 ) ) ) ) $ ( if true then false else true )
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if x520 then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then d37 else d42 )
        d54 : if false then ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x570 -> Bool ) ) ) $ ( Bool )
        d54 = if if d46 then d51 else true then ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d23 ) ) ) $ ( d23 ) else if d13 then true else true
        d58 : ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = if if false then d8 else false then if false then d1 else false else if d8 then false else d28
        d60 : if true then ( ( Set -> Set ) ∋ ( ( λ x620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if true then d28 else true ) ) ) $ ( if d46 then true else false )
        d64 : if false then ( ( Set -> Set ) ∋ ( ( λ x680 -> x680 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d64 = if ( ( Bool -> Bool ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( d37 ) then ( ( Bool -> Bool ) ∋ ( ( λ x660 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x720 -> if true then x720 else x720 ) ) ) $ ( if false then Bool else Bool )
        d69 = if ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d42 ) ) ) $ ( false ) then if d51 then d58 else d28 else ( ( Bool -> Bool ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( d1 )
        d73 : if true then ( ( Set -> Set ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x770 -> Bool ) ) ) $ ( Bool )
        d73 = if ( ( Bool -> Bool ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( false ) then if true then true else d4 else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> true ) ) ) $ ( d37 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> if false then x800 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d78 = if if true then d46 else d60 then ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( d28 ) else if d32 then true else true
        d82 : if false then ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d82 = if ( ( Bool -> Bool ) ∋ ( ( λ x830 -> false ) ) ) $ ( d58 ) then if d13 then false else d1 else if d13 then true else false
        d85 : ( ( Set -> Set ) ∋ ( ( λ x860 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> if true then Bool else Bool ) ) ) $ ( x860 ) ) ) ) $ ( if false then Bool else Bool )
        d85 = if if false then d54 else false then if d73 then false else true else if true then false else false
        d88 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x900 -> x900 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d54 ) ) ) $ ( false )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then Bool else x960 ) ) ) $ ( if true then Bool else Bool )
        d94 = if ( ( Bool -> Bool ) ∋ ( ( λ x950 -> true ) ) ) $ ( true ) then if true then d8 else true else if true then true else d32
        d97 : ( ( Set -> Set ) ∋ ( ( λ x990 -> if false then x990 else Bool ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if x980 then x980 else d32 ) ) ) $ ( if false then d42 else true )
        d100 : if true then ( ( Set -> Set ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1030 -> Bool ) ) ) $ ( Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if x1010 then d8 else false ) ) ) $ ( if d60 then d4 else true )
        d104 : if false then if true then Bool else Bool else if false then Bool else Bool
        d104 = if ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> d88 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( false )
        d108 : if true then ( ( Set -> Set ) ∋ ( ( λ x1110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1120 -> Bool ) ) ) $ ( Bool )
        d108 = if ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> d88 ) ) ) $ ( d13 ) then if d60 then true else d85 else ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( d64 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then x1160 else x1160 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if d32 then d42 else x1140 ) ) ) $ ( x1140 ) ) ) ) $ ( if true then d58 else d85 )
        d118 : if false then ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d118 = if ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> d23 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> false ) ) ) $ ( d94 ) else if true then true else d94
        d122 : if true then if false then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1230 then x1230 else true ) ) ) $ ( if true then true else true )
        d124 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> if x1250 then d118 else x1260 ) ) ) $ ( x1250 ) ) ) ) $ ( if d18 then true else true )
        d128 : if true then if true then Bool else Bool else if true then Bool else Bool
        d128 = if if d58 then false else d104 then if d60 then d54 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> false ) ) ) $ ( d118 )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> if false then Bool else x1340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> d8 ) ) ) $ ( d60 ) else if d60 then d82 else d60
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if false then x1390 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if d54 then x1360 else false ) ) ) $ ( x1360 ) ) ) ) $ ( if true then true else true )
        d140 : if true then if true then Bool else Bool else if false then Bool else Bool
        d140 = if if d46 then d4 else d42 then ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> true ) ) ) $ ( d13 ) else if true then true else false
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then x1440 else x1440 ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if x1430 then x1430 else d8 ) ) ) $ ( if d82 then d85 else d100 )
        d145 : if true then ( ( Set -> Set ) ∋ ( ( λ x1470 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d145 = if if d32 then true else d88 then if false then true else d58 else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> false ) ) ) $ ( true )
        d149 : if false then ( ( Set -> Set ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d149 = if if d104 then d97 else d128 then ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> false ) ) ) $ ( false ) else if true then d82 else true
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then Bool else x1540 ) ) ) $ ( if false then Bool else Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if d82 then true else d122 ) ) ) $ ( if d51 then true else d18 )
        d155 : if false then ( ( Set -> Set ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1580 -> Bool ) ) ) $ ( Bool )
        d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if x1560 then x1560 else x1560 ) ) ) $ ( if true then d100 else true )
        d159 : if false then ( ( Set -> Set ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if d73 then x1600 else d42 ) ) ) $ ( d145 ) ) ) ) $ ( if d145 then false else false )
        d163 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> if false then x1660 else Bool ) ) ) $ ( if true then Bool else Bool )
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> if x1640 then false else false ) ) ) $ ( d149 ) ) ) ) $ ( if d51 then false else d118 )
        d167 : if true then ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1720 -> Bool ) ) ) $ ( Bool )
        d167 = if ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> d142 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> x1690 ) ) ) $ ( d32 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> true ) ) ) $ ( false )
        d173 : if false then if false then Bool else Bool else if false then Bool else Bool
        d173 = if if d42 then true else d4 then ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> true ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> d42 ) ) ) $ ( true )
        d176 : if false then if true then Bool else Bool else if false then Bool else Bool
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> if d28 then true else d32 ) ) ) $ ( if d130 then false else false )
        d178 : if true then ( ( Set -> Set ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if x1790 then d42 else true ) ) ) $ ( if d113 then true else d135 )
        d182 : if true then if true then Bool else Bool else if false then Bool else Bool
        d182 = if if d149 then d149 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> d73 ) ) ) $ ( d94 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> false ) ) ) $ ( false )
        d185 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d185 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( d37 ) else if true then d85 else d18
        d188 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1910 -> Bool ) ) ) $ ( Bool )
        d188 = if ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> true ) ) ) $ ( d108 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> x1900 ) ) ) $ ( true ) else if d60 then d32 else d82
        d192 : if true then if false then Bool else Bool else if true then Bool else Bool
        d192 = if if false then d85 else d97 then ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> d185 ) ) ) $ ( true ) else if true then d104 else false
        d194 : if true then if false then Bool else Bool else if true then Bool else Bool
        d194 = if if d182 then true else d100 then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> true ) ) ) $ ( d104 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> d8 ) ) ) $ ( d163 )
        d197 : ( ( Set -> Set ) ∋ ( ( λ x1990 -> ( ( Set -> Set ) ∋ ( ( λ x2000 -> if false then x2000 else x1990 ) ) ) $ ( x1990 ) ) ) ) $ ( if false then Bool else Bool )
        d197 = if if d4 then false else d194 then if d37 then d94 else d73 else ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> d18 ) ) ) $ ( false )
        d201 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> ( ( Set -> Set ) ∋ ( ( λ x2050 -> if true then x2050 else x2040 ) ) ) $ ( x2040 ) ) ) ) $ ( if false then Bool else Bool )
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> if x2030 then false else x2030 ) ) ) $ ( x2020 ) ) ) ) $ ( if d104 then d37 else d46 )
        d206 : if true then ( ( Set -> Set ) ∋ ( ( λ x2080 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> if d51 then false else d167 ) ) ) $ ( if d37 then d82 else true )
        d209 : ( ( Set -> Set ) ∋ ( ( λ x2110 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d209 = if if d142 then true else d88 then ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> d145 ) ) ) $ ( d42 ) else if true then d130 else true
        d212 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2150 -> x2150 ) ) ) $ ( Bool )
        d212 = if ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> x2130 ) ) ) $ ( d54 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> true ) ) ) $ ( false ) else if true then d149 else d1
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d216 = if if d159 then d8 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> x2170 ) ) ) $ ( d28 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> x2180 ) ) ) $ ( d124 )
        d221 : ( ( Set -> Set ) ∋ ( ( λ x2250 -> if false then x2250 else x2250 ) ) ) $ ( if false then Bool else Bool )
        d221 = if ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> d201 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> x2240 ) ) ) $ ( true )
        d226 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2290 -> x2290 ) ) ) $ ( Bool )
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> if x2280 then x2270 else x2270 ) ) ) $ ( x2270 ) ) ) ) $ ( if d60 then false else d173 )
        d230 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> if true then x2330 else Bool ) ) ) $ ( if false then Bool else Bool )
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> if x2320 then false else d73 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d178 )
        d234 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> if true then x2360 else x2360 ) ) ) $ ( if true then Bool else Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> if d167 then true else x2350 ) ) ) $ ( if false then d152 else true )
        d237 : ( ( Set -> Set ) ∋ ( ( λ x2390 -> ( ( Set -> Set ) ∋ ( ( λ x2400 -> if true then Bool else x2400 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> if false then false else x2380 ) ) ) $ ( if d58 then false else false )
        d241 : if true then ( ( Set -> Set ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if d42 then d135 else true ) ) ) $ ( d185 ) ) ) ) $ ( if true then true else false )
        d246 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then x2490 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d246 = if if d140 then d73 else true then if false then true else d54 else ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( d206 )
        d250 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> if true then Bool else x2530 ) ) ) $ ( if false then Bool else Bool )
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if d135 then x2510 else false ) ) ) $ ( d28 ) ) ) ) $ ( if true then d145 else true )
        d254 : if true then if false then Bool else Bool else if false then Bool else Bool
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> if true then false else true ) ) ) $ ( if d182 then d37 else true )
        d256 : if false then ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d256 = if if d188 then d108 else d167 then if true then d149 else true else if false then d58 else true
        d258 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if false then x2610 else Bool ) ) ) $ ( if false then Bool else Bool )
        d258 = if ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d159 ) ) ) $ ( true ) then if false then d182 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> true ) ) ) $ ( false )
        d262 : if false then ( ( Set -> Set ) ∋ ( ( λ x2640 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d262 = if if d167 then true else d4 then ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( false ) else if true then d104 else d173
        d265 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2680 -> Bool ) ) ) $ ( Bool )
        d265 = if ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> true ) ) ) $ ( d69 ) then if d60 then d163 else d32 else ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> x2670 ) ) ) $ ( false )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> if false then x2720 else x2720 ) ) ) $ ( if false then Bool else Bool )
        d269 = if ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> x2700 ) ) ) $ ( d60 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> x2710 ) ) ) $ ( false ) else if d250 then false else d73
        d273 : if false then if true then Bool else Bool else if false then Bool else Bool
        d273 = if ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> d265 ) ) ) $ ( d97 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> d234 ) ) ) $ ( d37 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( true )
        d277 : if true then if true then Bool else Bool else if true then Bool else Bool
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if d163 then false else d178 ) ) ) $ ( if d212 then true else d256 )
        d279 : ( ( Set -> Set ) ∋ ( ( λ x2820 -> ( ( Set -> Set ) ∋ ( ( λ x2830 -> if true then Bool else Bool ) ) ) $ ( x2820 ) ) ) ) $ ( if true then Bool else Bool )
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> if x2810 then false else d130 ) ) ) $ ( d128 ) ) ) ) $ ( if d108 then false else false )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then x2860 else x2870 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> if true then x2850 else d262 ) ) ) $ ( if d142 then d118 else true )
        d288 : if false then if true then Bool else Bool else if true then Bool else Bool
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if false then x2900 else d192 ) ) ) $ ( d82 ) ) ) ) $ ( if d149 then d104 else false )
        d291 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> ( ( Set -> Set ) ∋ ( ( λ x2940 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> if true then x2920 else true ) ) ) $ ( if false then false else d192 )
        d295 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2970 -> Bool ) ) ) $ ( Bool )
        d295 = if if d163 then true else d173 then ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> d42 ) ) ) $ ( d173 ) else if d108 then d73 else false
        d298 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> if true then x3010 else x3010 ) ) ) $ ( if true then Bool else Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> if d258 then d288 else true ) ) ) $ ( x2990 ) ) ) ) $ ( if true then false else d145 )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d302 = if if true then false else d142 then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> x3030 ) ) ) $ ( true )
        d306 : ( ( Set -> Set ) ∋ ( ( λ x3080 -> if true then x3080 else Bool ) ) ) $ ( if false then Bool else Bool )
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if x3070 then true else x3070 ) ) ) $ ( if d149 then false else true )
        d309 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3110 -> Bool ) ) ) $ ( Bool )
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> if true then d152 else false ) ) ) $ ( if d178 then d64 else d85 )
        d312 : if false then ( ( Set -> Set ) ∋ ( ( λ x3140 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d312 = ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> if true then x3130 else false ) ) ) $ ( if d28 then true else d78 )
        d315 : if false then if true then Bool else Bool else if false then Bool else Bool
        d315 = if ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> false ) ) ) $ ( true ) then if d273 then false else false else if false then true else false
        d317 : if false then ( ( Set -> Set ) ∋ ( ( λ x3190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3200 -> Bool ) ) ) $ ( Bool )
        d317 = if if d155 then true else true then if true then d246 else d273 else ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> d155 ) ) ) $ ( d256 )
        d321 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d321 = if ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> d28 ) ) ) $ ( d315 ) then if d234 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> d201 ) ) ) $ ( d258 )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3270 -> ( ( Set -> Set ) ∋ ( ( λ x3280 -> if false then Bool else x3270 ) ) ) $ ( x3270 ) ) ) ) $ ( if true then Bool else Bool )
        d325 = if ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> d128 ) ) ) $ ( true ) then if d113 then d100 else d262 else if d234 then true else d309
        d329 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> ( ( Set -> Set ) ∋ ( ( λ x3330 -> if false then x3320 else x3320 ) ) ) $ ( x3320 ) ) ) ) $ ( if false then Bool else Bool )
        d329 = if ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> d135 ) ) ) $ ( d60 ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> d185 ) ) ) $ ( false )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x3370 -> if false then x3370 else Bool ) ) ) $ ( if true then Bool else Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> if d216 then false else x3360 ) ) ) $ ( d246 ) ) ) ) $ ( if false then true else d149 )
        d338 : if true then if false then Bool else Bool else if false then Bool else Bool
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> if d258 then d13 else d325 ) ) ) $ ( true ) ) ) ) $ ( if d8 then true else true )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> if true then x3440 else x3430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> if true then d85 else true ) ) ) $ ( if d246 then true else true )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> if true then x3460 else x3460 ) ) ) $ ( if false then Bool else Bool )
        d345 = if if d265 then d194 else d312 then if d325 then d269 else d325 else if true then d295 else d234
        d347 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> ( ( Set -> Set ) ∋ ( ( λ x3510 -> if false then x3510 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d347 = ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if true then true else false ) ) ) $ ( x3480 ) ) ) ) $ ( if d334 then true else d201 )
        d352 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3550 -> Bool ) ) ) $ ( Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> if x3530 then d188 else x3540 ) ) ) $ ( d13 ) ) ) ) $ ( if d152 then d13 else false )
        d356 : if true then ( ( Set -> Set ) ∋ ( ( λ x3590 -> x3590 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d356 = if if false then d58 else d46 then ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> x3570 ) ) ) $ ( d145 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( d155 )
        d360 : if false then ( ( Set -> Set ) ∋ ( ( λ x3620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( Bool )
        d360 = if if false then d108 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> d312 ) ) ) $ ( d64 ) else if true then d122 else d212
        d364 : if false then ( ( Set -> Set ) ∋ ( ( λ x3660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3670 -> Bool ) ) ) $ ( Bool )
        d364 = if if true then false else d201 then ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> false ) ) ) $ ( d149 ) else if true then d237 else false
        d368 : ( ( Set -> Set ) ∋ ( ( λ x3710 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> if x3700 then true else d265 ) ) ) $ ( d352 ) ) ) ) $ ( if true then d246 else true )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x3750 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> if d338 then d321 else true ) ) ) $ ( d341 ) ) ) ) $ ( if d82 then false else d312 )
        d376 : ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then Bool else x3790 ) ) ) $ ( if true then Bool else Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> if d360 then true else false ) ) ) $ ( d163 ) ) ) ) $ ( if false then false else d317 )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3830 -> if true then Bool else x3830 ) ) ) $ ( if true then Bool else Bool )
        d380 = if ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> true ) ) ) $ ( d334 ) then if d60 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> d8 ) ) ) $ ( true )
        d384 : if false then ( ( Set -> Set ) ∋ ( ( λ x3860 -> x3860 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if d8 then false else false ) ) ) $ ( if false then d284 else d1 )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3890 -> ( ( Set -> Set ) ∋ ( ( λ x3900 -> if true then Bool else x3900 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> if x3880 then x3880 else x3880 ) ) ) $ ( if true then d140 else false )
        d391 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if x3920 then false else x3920 ) ) ) $ ( if true then true else d69 )
        d394 : ( ( Set -> Set ) ∋ ( ( λ x3960 -> ( ( Set -> Set ) ∋ ( ( λ x3970 -> if true then x3970 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> if false then true else d4 ) ) ) $ ( if d309 then true else d246 )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x4010 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d398 = if ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> d279 ) ) ) $ ( true ) then if d23 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> d149 ) ) ) $ ( d88 )
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4040 -> if false then x4040 else x4040 ) ) ) $ ( if true then Bool else Bool )
        d402 = if ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> x4030 ) ) ) $ ( true ) then if true then d334 else d250 else if d64 then d167 else false
        d405 : if false then ( ( Set -> Set ) ∋ ( ( λ x4090 -> x4090 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d405 = if ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> d149 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> x4070 ) ) ) $ ( d188 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> d288 ) ) ) $ ( true )
        d410 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4120 -> x4120 ) ) ) $ ( Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> if x4110 then d250 else d338 ) ) ) $ ( if d334 then d364 else false )
        d413 : ( ( Set -> Set ) ∋ ( ( λ x4160 -> ( ( Set -> Set ) ∋ ( ( λ x4170 -> if true then x4170 else Bool ) ) ) $ ( x4160 ) ) ) ) $ ( if true then Bool else Bool )
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> if d258 then d188 else false ) ) ) $ ( true ) ) ) ) $ ( if d394 then d212 else d405 )
        d418 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4200 -> Bool ) ) ) $ ( Bool )
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> if x4190 then false else d302 ) ) ) $ ( if d291 then true else false )
        d421 : if true then ( ( Set -> Set ) ∋ ( ( λ x4250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4260 -> x4260 ) ) ) $ ( Bool )
        d421 = if ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> d46 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> x4230 ) ) ) $ ( d88 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> false ) ) ) $ ( d334 )
        d427 : if true then ( ( Set -> Set ) ∋ ( ( λ x4290 -> x4290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4300 -> x4300 ) ) ) $ ( Bool )
        d427 = ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> if x4280 then x4280 else x4280 ) ) ) $ ( if true then true else d188 )
        d431 : ( ( Set -> Set ) ∋ ( ( λ x4340 -> if false then Bool else x4340 ) ) ) $ ( if false then Bool else Bool )
        d431 = if if false then d298 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> true ) ) ) $ ( d221 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> d167 ) ) ) $ ( true )
        d435 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4370 -> Bool ) ) ) $ ( Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> if x4360 then x4360 else d237 ) ) ) $ ( if d163 then true else true )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x4420 -> ( ( Set -> Set ) ∋ ( ( λ x4430 -> if false then Bool else x4420 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d438 = if ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> false ) ) ) $ ( d13 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> d37 ) ) ) $ ( d212 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> true ) ) ) $ ( d182 )
        d444 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4450 -> Bool ) ) ) $ ( Bool )
        d444 = if if true then d209 else true then if d402 then true else d197 else if d398 then d94 else d387
        d446 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4470 -> Bool ) ) ) $ ( Bool )
        d446 = if if true then false else d384 then if d145 then true else d258 else if true then d104 else true
        d448 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4500 -> x4500 ) ) ) $ ( Bool )
        d448 = if if true then d163 else d182 then if d100 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> d387 ) ) ) $ ( true )
        d451 : if true then ( ( Set -> Set ) ∋ ( ( λ x4530 -> x4530 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d451 = if if d78 then d82 else d230 then if d128 then d124 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> d237 ) ) ) $ ( d391 )
        d454 : if false then ( ( Set -> Set ) ∋ ( ( λ x4570 -> x4570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> if false then true else x4560 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d458 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4600 -> x4600 ) ) ) $ ( Bool )
        d458 = if ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> d418 ) ) ) $ ( true ) then if d309 then true else true else if d410 then d315 else false
        d461 : if false then ( ( Set -> Set ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( Bool )
        d461 = if ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> x4620 ) ) ) $ ( d384 ) then if false then true else d192 else ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> x4630 ) ) ) $ ( false )
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> ( ( Set -> Set ) ∋ ( ( λ x4700 -> if true then x4690 else x4690 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d466 = if ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> d23 ) ) ) $ ( true ) then if true then d54 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> x4680 ) ) ) $ ( d298 )
        d471 : ( ( Set -> Set ) ∋ ( ( λ x4740 -> ( ( Set -> Set ) ∋ ( ( λ x4750 -> if false then x4740 else x4740 ) ) ) $ ( x4740 ) ) ) ) $ ( if true then Bool else Bool )
        d471 = if if d387 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> d73 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> d135 ) ) ) $ ( d246 )
        d476 : if true then ( ( Set -> Set ) ∋ ( ( λ x4780 -> x4780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if d309 then false else x4770 ) ) ) $ ( if false then true else true )
        d479 : if false then if true then Bool else Bool else if true then Bool else Bool
        d479 = ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> if false then d279 else true ) ) ) $ ( x4800 ) ) ) ) $ ( if false then d64 else true )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x4840 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> if false then d51 else false ) ) ) $ ( if false then d4 else true )
        d485 : ( ( Set -> Set ) ∋ ( ( λ x4870 -> ( ( Set -> Set ) ∋ ( ( λ x4880 -> if true then x4880 else Bool ) ) ) $ ( x4870 ) ) ) ) $ ( if false then Bool else Bool )
        d485 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> d329 ) ) ) $ ( d438 ) else if d380 then false else false
        d489 : ( ( Set -> Set ) ∋ ( ( λ x4920 -> ( ( Set -> Set ) ∋ ( ( λ x4930 -> if false then x4920 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d489 = if ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> true ) ) ) $ ( false ) then if true then d309 else d64 else ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> d398 ) ) ) $ ( d256 )
        d494 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> ( ( Set -> Set ) ∋ ( ( λ x4980 -> if false then x4970 else x4970 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d494 = if if d188 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> x4950 ) ) ) $ ( d269 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> d284 ) ) ) $ ( false )
        d499 : ( ( Set -> Set ) ∋ ( ( λ x5010 -> if true then x5010 else x5010 ) ) ) $ ( if false then Bool else Bool )
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> if d258 then x5000 else false ) ) ) $ ( if false then false else d163 )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5050 -> ( ( Set -> Set ) ∋ ( ( λ x5060 -> if true then x5050 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d502 = if if false then false else d226 then ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> false ) ) ) $ ( false )
        d507 : ( ( Set -> Set ) ∋ ( ( λ x5090 -> if false then x5090 else x5090 ) ) ) $ ( if true then Bool else Bool )
        d507 = ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> if d64 then x5080 else false ) ) ) $ ( if d182 then true else false )
        d510 : if false then ( ( Set -> Set ) ∋ ( ( λ x5120 -> x5120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d510 = ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> if x5110 then false else d241 ) ) ) $ ( if false then d482 else d124 )
        d513 : if false then ( ( Set -> Set ) ∋ ( ( λ x5160 -> x5160 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d513 = if ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> x5140 ) ) ) $ ( d130 ) then if false then d221 else d499 else ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( false )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> if true then Bool else x5190 ) ) ) $ ( if false then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> if x5180 then false else x5180 ) ) ) $ ( if true then false else d54 )
        d520 : if true then ( ( Set -> Set ) ∋ ( ( λ x5220 -> x5220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5230 -> x5230 ) ) ) $ ( Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> if x5210 then false else false ) ) ) $ ( if false then d173 else false )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> ( ( Set -> Set ) ∋ ( ( λ x5260 -> if true then x5260 else x5260 ) ) ) $ ( x5250 ) ) ) ) $ ( if false then Bool else Bool )
        d524 = if if false then d520 else false then if d254 then d329 else true else if d69 then d520 else true
        d527 : ( ( Set -> Set ) ∋ ( ( λ x5300 -> if false then Bool else x5300 ) ) ) $ ( if true then Bool else Bool )
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> if true then false else false ) ) ) $ ( x5280 ) ) ) ) $ ( if d113 then d444 else d427 )
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> ( ( Set -> Set ) ∋ ( ( λ x5340 -> if false then x5340 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if x5320 then false else x5320 ) ) ) $ ( if d435 then false else d384 )
        d535 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5380 -> Bool ) ) ) $ ( Bool )
        d535 = if ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> d230 ) ) ) $ ( d312 ) then if true then d405 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> x5370 ) ) ) $ ( d325 )
        d539 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5410 -> Bool ) ) ) $ ( Bool )
        d539 = if ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> x5400 ) ) ) $ ( d372 ) then if false then false else d1 else if false then d226 else false
        d542 : if true then ( ( Set -> Set ) ∋ ( ( λ x5450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5460 -> x5460 ) ) ) $ ( Bool )
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if d298 then x5440 else x5430 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d69 )
        d547 : if false then ( ( Set -> Set ) ∋ ( ( λ x5490 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> if d341 then d507 else d94 ) ) ) $ ( if true then true else d273 )
        d550 : ( ( Set -> Set ) ∋ ( ( λ x5520 -> if true then x5520 else x5520 ) ) ) $ ( if true then Bool else Bool )
        d550 = if if true then d547 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> x5510 ) ) ) $ ( false ) else if false then d325 else false
        d553 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5550 -> x5550 ) ) ) $ ( Bool )
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> if true then x5540 else false ) ) ) $ ( if d104 then false else d317 )
        d556 : if false then ( ( Set -> Set ) ∋ ( ( λ x5580 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5590 -> x5590 ) ) ) $ ( Bool )
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> if d482 then true else x5570 ) ) ) $ ( if d376 then false else false )
        d560 : if false then if false then Bool else Bool else if true then Bool else Bool
        d560 = ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> if d542 then x5610 else x5610 ) ) ) $ ( if true then false else d46 )
        d562 : if true then ( ( Set -> Set ) ∋ ( ( λ x5640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5650 -> Bool ) ) ) $ ( Bool )
        d562 = if if true then d535 else d479 then ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> d88 ) ) ) $ ( d4 ) else if true then d226 else d185
        d566 : if true then if false then Bool else Bool else if false then Bool else Bool
        d566 = if if d88 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> x5670 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> true ) ) ) $ ( true )
        d569 : ( ( Set -> Set ) ∋ ( ( λ x5710 -> ( ( Set -> Set ) ∋ ( ( λ x5720 -> if false then x5710 else x5720 ) ) ) $ ( x5710 ) ) ) ) $ ( if true then Bool else Bool )
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> if d438 then d135 else false ) ) ) $ ( if d446 then false else false )
        d573 : ( ( Set -> Set ) ∋ ( ( λ x5760 -> ( ( Set -> Set ) ∋ ( ( λ x5770 -> if false then x5770 else x5770 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d573 = ( ( Bool -> Bool ) ∋ ( ( λ x5740 -> ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> if false then d288 else false ) ) ) $ ( false ) ) ) ) $ ( if d368 then d69 else false )
        d578 : ( ( Set -> Set ) ∋ ( ( λ x5800 -> if true then Bool else x5800 ) ) ) $ ( if false then Bool else Bool )
        d578 = ( ( Bool -> Bool ) ∋ ( ( λ x5790 -> if d384 then true else false ) ) ) $ ( if false then d241 else d315 )
        d581 : if false then ( ( Set -> Set ) ∋ ( ( λ x5830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5840 -> x5840 ) ) ) $ ( Bool )
        d581 = ( ( Bool -> Bool ) ∋ ( ( λ x5820 -> if d471 then false else d380 ) ) ) $ ( if true then d265 else false )
        d585 : ( ( Set -> Set ) ∋ ( ( λ x5880 -> if false then x5880 else Bool ) ) ) $ ( if false then Bool else Bool )
        d585 = ( ( Bool -> Bool ) ∋ ( ( λ x5860 -> ( ( Bool -> Bool ) ∋ ( ( λ x5870 -> if true then d60 else x5870 ) ) ) $ ( d306 ) ) ) ) $ ( if d562 then true else d479 )
        d589 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5920 -> x5920 ) ) ) $ ( Bool )
        d589 = if ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> d42 ) ) ) $ ( d100 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5910 -> d130 ) ) ) $ ( true ) else if d94 then false else true
        d593 : ( ( Set -> Set ) ∋ ( ( λ x5950 -> if false then x5950 else x5950 ) ) ) $ ( if true then Bool else Bool )
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> if true then false else x5940 ) ) ) $ ( if false then d578 else true )
        d596 : if false then if false then Bool else Bool else if true then Bool else Bool
        d596 = if if true then d535 else d60 then ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> true ) ) ) $ ( d88 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> d531 ) ) ) $ ( false )
        d599 : if false then ( ( Set -> Set ) ∋ ( ( λ x6010 -> x6010 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6020 -> x6020 ) ) ) $ ( Bool )
        d599 = if if true then d60 else d513 then if d78 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> true ) ) ) $ ( d446 )
        d603 : ( ( Set -> Set ) ∋ ( ( λ x6070 -> if false then x6070 else Bool ) ) ) $ ( if true then Bool else Bool )
        d603 = if ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> x6040 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6050 -> false ) ) ) $ ( d427 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> false ) ) ) $ ( d489 )
        d608 : ( ( Set -> Set ) ∋ ( ( λ x6110 -> ( ( Set -> Set ) ∋ ( ( λ x6120 -> if true then x6120 else Bool ) ) ) $ ( x6110 ) ) ) ) $ ( if true then Bool else Bool )
        d608 = ( ( Bool -> Bool ) ∋ ( ( λ x6090 -> ( ( Bool -> Bool ) ∋ ( ( λ x6100 -> if x6100 then d246 else d152 ) ) ) $ ( d402 ) ) ) ) $ ( if false then d553 else true )
        d613 : if true then ( ( Set -> Set ) ∋ ( ( λ x6160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6170 -> x6170 ) ) ) $ ( Bool )
        d613 = if ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> true ) ) ) $ ( d446 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> x6150 ) ) ) $ ( d482 ) else if false then true else true
        d618 : ( ( Set -> Set ) ∋ ( ( λ x6200 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> if false then x6190 else false ) ) ) $ ( if d581 then false else d312 )
        d621 : ( ( Set -> Set ) ∋ ( ( λ x6230 -> if true then x6230 else Bool ) ) ) $ ( if false then Bool else Bool )
        d621 = ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> if x6220 then true else x6220 ) ) ) $ ( if true then d237 else false )
        d624 : ( ( Set -> Set ) ∋ ( ( λ x6260 -> ( ( Set -> Set ) ∋ ( ( λ x6270 -> if false then Bool else x6270 ) ) ) $ ( x6260 ) ) ) ) $ ( if false then Bool else Bool )
        d624 = if if d188 then d128 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6250 -> true ) ) ) $ ( false ) else if d585 then false else d13
        d628 : if false then ( ( Set -> Set ) ∋ ( ( λ x6300 -> x6300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6310 -> x6310 ) ) ) $ ( Bool )
        d628 = if if d246 then false else d527 then ( ( Bool -> Bool ) ∋ ( ( λ x6290 -> d368 ) ) ) $ ( d64 ) else if d309 then true else d206
        d632 : if true then if true then Bool else Bool else if true then Bool else Bool
        d632 = if ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> d155 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> d273 ) ) ) $ ( d108 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> x6350 ) ) ) $ ( d145 )
        d636 : ( ( Set -> Set ) ∋ ( ( λ x6380 -> if false then x6380 else Bool ) ) ) $ ( if true then Bool else Bool )
        d636 = if if true then d73 else d100 then if d212 then d542 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> false ) ) ) $ ( d325 )
        d639 : ( ( Set -> Set ) ∋ ( ( λ x6410 -> ( ( Set -> Set ) ∋ ( ( λ x6420 -> if false then x6420 else x6420 ) ) ) $ ( x6410 ) ) ) ) $ ( if false then Bool else Bool )
        d639 = if ( ( Bool -> Bool ) ∋ ( ( λ x6400 -> true ) ) ) $ ( true ) then if true then true else true else if d454 then d364 else d185
        d643 : ( ( Set -> Set ) ∋ ( ( λ x6460 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d643 = ( ( Bool -> Bool ) ∋ ( ( λ x6440 -> ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> if d338 then false else d562 ) ) ) $ ( true ) ) ) ) $ ( if d438 then true else false )
        d647 : if true then if true then Bool else Bool else if true then Bool else Bool
        d647 = if if d458 then d471 else true then if d221 then false else d384 else if true then true else true
        d648 : ( ( Set -> Set ) ∋ ( ( λ x6510 -> ( ( Set -> Set ) ∋ ( ( λ x6520 -> if true then x6510 else Bool ) ) ) $ ( x6510 ) ) ) ) $ ( if false then Bool else Bool )
        d648 = if if d269 then false else d356 then ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> false ) ) ) $ ( false )
        d653 : if false then ( ( Set -> Set ) ∋ ( ( λ x6550 -> x6550 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d653 = ( ( Bool -> Bool ) ∋ ( ( λ x6540 -> if x6540 then x6540 else x6540 ) ) ) $ ( if d329 then false else d380 )
        d656 : ( ( Set -> Set ) ∋ ( ( λ x6590 -> ( ( Set -> Set ) ∋ ( ( λ x6600 -> if true then Bool else x6590 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x6570 -> ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> if x6580 then true else d73 ) ) ) $ ( d517 ) ) ) ) $ ( if d376 then d446 else true )
        d661 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6630 -> x6630 ) ) ) $ ( Bool )
        d661 = if if d254 then d589 else false then if d384 then d23 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> true ) ) ) $ ( d269 )
        d664 : if false then ( ( Set -> Set ) ∋ ( ( λ x6660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6670 -> Bool ) ) ) $ ( Bool )
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x6650 -> if d54 then x6650 else d341 ) ) ) $ ( if false then d155 else d368 )
        d668 : ( ( Set -> Set ) ∋ ( ( λ x6710 -> if true then x6710 else Bool ) ) ) $ ( if true then Bool else Bool )
        d668 = if ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6700 -> true ) ) ) $ ( false ) else if d341 then d499 else d458
        d672 : ( ( Set -> Set ) ∋ ( ( λ x6750 -> ( ( Set -> Set ) ∋ ( ( λ x6760 -> if false then x6750 else x6760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d672 = ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> ( ( Bool -> Bool ) ∋ ( ( λ x6740 -> if d269 then d653 else true ) ) ) $ ( false ) ) ) ) $ ( if d668 then d221 else false )
        d677 : if false then if false then Bool else Bool else if false then Bool else Bool
        d677 = if ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> x6780 ) ) ) $ ( false ) then if true then false else d507 else if true then false else true
        d679 : ( ( Set -> Set ) ∋ ( ( λ x6810 -> if false then x6810 else x6810 ) ) ) $ ( if true then Bool else Bool )
        d679 = if if d155 then d197 else d589 then if d621 then true else d569 else ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> true ) ) ) $ ( d145 )
        d682 : if false then ( ( Set -> Set ) ∋ ( ( λ x6860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6870 -> Bool ) ) ) $ ( Bool )
        d682 = if ( ( Bool -> Bool ) ∋ ( ( λ x6830 -> false ) ) ) $ ( d288 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6840 -> x6840 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> x6850 ) ) ) $ ( false )
        d688 : ( ( Set -> Set ) ∋ ( ( λ x6900 -> ( ( Set -> Set ) ∋ ( ( λ x6910 -> if true then x6900 else x6900 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d688 = if if d376 then true else d489 then ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> false ) ) ) $ ( d124 ) else if true then d628 else true
        d692 : if false then if true then Bool else Bool else if false then Bool else Bool
        d692 = if if d599 then true else d258 then if true then d221 else true else if d603 then d421 else true
        d693 : ( ( Set -> Set ) ∋ ( ( λ x6950 -> ( ( Set -> Set ) ∋ ( ( λ x6960 -> if true then Bool else Bool ) ) ) $ ( x6950 ) ) ) ) $ ( if true then Bool else Bool )
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x6940 -> if d471 then x6940 else x6940 ) ) ) $ ( if d643 then d499 else d135 )
        d697 : ( ( Set -> Set ) ∋ ( ( λ x7000 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d697 = if if false then d237 else d234 then ( ( Bool -> Bool ) ∋ ( ( λ x6980 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> true ) ) ) $ ( d226 )
        d701 : ( ( Set -> Set ) ∋ ( ( λ x7030 -> if false then Bool else x7030 ) ) ) $ ( if true then Bool else Bool )
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> if x7020 then x7020 else d418 ) ) ) $ ( if false then d201 else false )
        d704 : ( ( Set -> Set ) ∋ ( ( λ x7070 -> ( ( Set -> Set ) ∋ ( ( λ x7080 -> if false then x7080 else Bool ) ) ) $ ( x7070 ) ) ) ) $ ( if false then Bool else Bool )
        d704 = if ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> x7050 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> x7060 ) ) ) $ ( d624 ) else if d265 then d693 else d692
        d709 : if true then if true then Bool else Bool else if true then Bool else Bool
        d709 = ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> ( ( Bool -> Bool ) ∋ ( ( λ x7110 -> if d345 then d394 else d142 ) ) ) $ ( true ) ) ) ) $ ( if false then d128 else d309 )
        d712 : if true then ( ( Set -> Set ) ∋ ( ( λ x7160 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d712 = if ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> x7130 ) ) ) $ ( d262 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7140 -> d566 ) ) ) $ ( d149 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> d312 ) ) ) $ ( d479 )
        d717 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7190 -> Bool ) ) ) $ ( Bool )
        d717 = ( ( Bool -> Bool ) ∋ ( ( λ x7180 -> if x7180 then false else x7180 ) ) ) $ ( if d431 then d302 else false )
        d720 : ( ( Set -> Set ) ∋ ( ( λ x7230 -> ( ( Set -> Set ) ∋ ( ( λ x7240 -> if false then x7230 else x7240 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d720 = if ( ( Bool -> Bool ) ∋ ( ( λ x7210 -> d345 ) ) ) $ ( true ) then if d167 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> d553 ) ) ) $ ( false )
        d725 : ( ( Set -> Set ) ∋ ( ( λ x7270 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d725 = if ( ( Bool -> Bool ) ∋ ( ( λ x7260 -> d542 ) ) ) $ ( false ) then if d42 then d97 else d122 else if d347 then false else false
        d728 : if true then ( ( Set -> Set ) ∋ ( ( λ x7320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7330 -> Bool ) ) ) $ ( Bool )
        d728 = if ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> x7290 ) ) ) $ ( d28 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7300 -> x7300 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> false ) ) ) $ ( true )
        d734 : if true then ( ( Set -> Set ) ∋ ( ( λ x7360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7370 -> x7370 ) ) ) $ ( Bool )
        d734 = ( ( Bool -> Bool ) ∋ ( ( λ x7350 -> if true then d596 else d54 ) ) ) $ ( if true then d628 else d352 )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x7410 -> ( ( Set -> Set ) ∋ ( ( λ x7420 -> if true then x7420 else x7420 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d738 = if ( ( Bool -> Bool ) ∋ ( ( λ x7390 -> true ) ) ) $ ( true ) then if d398 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x7400 -> d78 ) ) ) $ ( true )
        d743 : if false then if true then Bool else Bool else if true then Bool else Bool
        d743 = ( ( Bool -> Bool ) ∋ ( ( λ x7440 -> if x7440 then x7440 else d560 ) ) ) $ ( if d720 then d185 else true )
        d745 : ( ( Set -> Set ) ∋ ( ( λ x7470 -> if true then x7470 else Bool ) ) ) $ ( if true then Bool else Bool )
        d745 = if ( ( Bool -> Bool ) ∋ ( ( λ x7460 -> x7460 ) ) ) $ ( d321 ) then if d347 then d58 else d173 else if false then true else false
        d748 : ( ( Set -> Set ) ∋ ( ( λ x7510 -> ( ( Set -> Set ) ∋ ( ( λ x7520 -> if true then x7510 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d748 = ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> if false then x7500 else d284 ) ) ) $ ( x7490 ) ) ) ) $ ( if d380 then d560 else d364 )
        d753 : if false then ( ( Set -> Set ) ∋ ( ( λ x7540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7550 -> Bool ) ) ) $ ( Bool )
        d753 = if if d173 then true else false then if d216 then true else false else if true then false else d201
        d756 : if false then ( ( Set -> Set ) ∋ ( ( λ x7590 -> x7590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7600 -> x7600 ) ) ) $ ( Bool )
        d756 = if ( ( Bool -> Bool ) ∋ ( ( λ x7570 -> x7570 ) ) ) $ ( d513 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> x7580 ) ) ) $ ( true )
        d761 : ( ( Set -> Set ) ∋ ( ( λ x7630 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d761 = if ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> x7620 ) ) ) $ ( false ) then if d58 then d578 else false else if d648 then d547 else d717
        d764 : ( ( Set -> Set ) ∋ ( ( λ x7670 -> ( ( Set -> Set ) ∋ ( ( λ x7680 -> if true then Bool else Bool ) ) ) $ ( x7670 ) ) ) ) $ ( if true then Bool else Bool )
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> if false then x7660 else false ) ) ) $ ( true ) ) ) ) $ ( if false then d4 else true )
        d769 : ( ( Set -> Set ) ∋ ( ( λ x7720 -> ( ( Set -> Set ) ∋ ( ( λ x7730 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> if false then d4 else x7710 ) ) ) $ ( x7700 ) ) ) ) $ ( if false then false else false )
        d774 : ( ( Set -> Set ) ∋ ( ( λ x7770 -> if true then Bool else x7770 ) ) ) $ ( if false then Bool else Bool )
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> ( ( Bool -> Bool ) ∋ ( ( λ x7760 -> if true then x7760 else d42 ) ) ) $ ( false ) ) ) ) $ ( if d653 then false else true )
        d778 : if true then ( ( Set -> Set ) ∋ ( ( λ x7810 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d778 = if ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> d643 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> x7800 ) ) ) $ ( d329 ) else if d444 then d466 else d539
        d782 : if true then if true then Bool else Bool else if true then Bool else Bool
        d782 = if if true then d599 else true then ( ( Bool -> Bool ) ∋ ( ( λ x7830 -> false ) ) ) $ ( d185 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7840 -> x7840 ) ) ) $ ( d258 )
        d785 : if true then ( ( Set -> Set ) ∋ ( ( λ x7880 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7890 -> x7890 ) ) ) $ ( Bool )
        d785 = if if d435 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> x7860 ) ) ) $ ( d188 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> x7870 ) ) ) $ ( true )
        d790 : ( ( Set -> Set ) ∋ ( ( λ x7920 -> ( ( Set -> Set ) ∋ ( ( λ x7930 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d790 = if if false then false else d458 then ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> false ) ) ) $ ( true ) else if d122 then d444 else d728
        d794 : ( ( Set -> Set ) ∋ ( ( λ x7960 -> ( ( Set -> Set ) ∋ ( ( λ x7970 -> if false then x7960 else x7960 ) ) ) $ ( x7960 ) ) ) ) $ ( if false then Bool else Bool )
        d794 = if ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> d709 ) ) ) $ ( true ) then if d78 then d738 else true else if true then true else d704
        d798 : ( ( Set -> Set ) ∋ ( ( λ x8010 -> if true then Bool else x8010 ) ) ) $ ( if true then Bool else Bool )
        d798 = if ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> true ) ) ) $ ( d82 ) then if d118 then d100 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> d46 ) ) ) $ ( d656 )
        d802 : ( ( Set -> Set ) ∋ ( ( λ x8040 -> if false then x8040 else x8040 ) ) ) $ ( if false then Bool else Bool )
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> if d206 then d618 else d341 ) ) ) $ ( if true then false else true )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x8070 -> if false then x8070 else x8070 ) ) ) $ ( if false then Bool else Bool )
        d805 = if if false then false else d306 then if false then false else d547 else ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> true ) ) ) $ ( d256 )
        d808 : ( ( Set -> Set ) ∋ ( ( λ x8110 -> ( ( Set -> Set ) ∋ ( ( λ x8120 -> if true then x8120 else x8120 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d808 = if if d321 then d435 else d653 then ( ( Bool -> Bool ) ∋ ( ( λ x8090 -> d499 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> x8100 ) ) ) $ ( d51 )
        d813 : ( ( Set -> Set ) ∋ ( ( λ x8150 -> ( ( Set -> Set ) ∋ ( ( λ x8160 -> if false then x8150 else x8150 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d813 = ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> if d527 then false else d761 ) ) ) $ ( if false then false else d372 )
        d817 : ( ( Set -> Set ) ∋ ( ( λ x8190 -> if true then x8190 else x8190 ) ) ) $ ( if false then Bool else Bool )
        d817 = ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> if d782 then true else d643 ) ) ) $ ( if d155 then false else d246 )
        d820 : ( ( Set -> Set ) ∋ ( ( λ x8230 -> ( ( Set -> Set ) ∋ ( ( λ x8240 -> if true then x8240 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d820 = ( ( Bool -> Bool ) ∋ ( ( λ x8210 -> ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> if x8210 then d128 else d589 ) ) ) $ ( d315 ) ) ) ) $ ( if false then d376 else true )
        d825 : ( ( Set -> Set ) ∋ ( ( λ x8280 -> if false then x8280 else x8280 ) ) ) $ ( if true then Bool else Bool )
        d825 = ( ( Bool -> Bool ) ∋ ( ( λ x8260 -> ( ( Bool -> Bool ) ∋ ( ( λ x8270 -> if x8260 then d118 else x8260 ) ) ) $ ( d197 ) ) ) ) $ ( if true then true else false )
        d829 : if true then if false then Bool else Bool else if true then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> if false then x8300 else d279 ) ) ) $ ( if false then d798 else d317 )
        d831 : ( ( Set -> Set ) ∋ ( ( λ x8330 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if x8320 then d556 else d813 ) ) ) $ ( if d562 then d69 else d372 )
        d834 : ( ( Set -> Set ) ∋ ( ( λ x8360 -> ( ( Set -> Set ) ∋ ( ( λ x8370 -> if true then x8360 else x8370 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d834 = ( ( Bool -> Bool ) ∋ ( ( λ x8350 -> if x8350 then d182 else false ) ) ) $ ( if false then d284 else d677 )
        d838 : ( ( Set -> Set ) ∋ ( ( λ x8400 -> if false then x8400 else Bool ) ) ) $ ( if true then Bool else Bool )
        d838 = if ( ( Bool -> Bool ) ∋ ( ( λ x8390 -> x8390 ) ) ) $ ( d664 ) then if d291 then d315 else d250 else if d524 then d85 else d539
        d841 : if false then if true then Bool else Bool else if false then Bool else Bool
        d841 = ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> if false then d265 else x8420 ) ) ) $ ( if true then true else true )
        d843 : if true then ( ( Set -> Set ) ∋ ( ( λ x8470 -> x8470 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d843 = if ( ( Bool -> Bool ) ∋ ( ( λ x8440 -> d194 ) ) ) $ ( d603 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> false ) ) ) $ ( d692 )
        d848 : if true then ( ( Set -> Set ) ∋ ( ( λ x8500 -> x8500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d848 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> x8490 ) ) ) $ ( d531 ) else if d825 then d277 else d517
        d851 : if true then ( ( Set -> Set ) ∋ ( ( λ x8530 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d851 = if if d315 then d482 else true then if false then false else d262 else ( ( Bool -> Bool ) ∋ ( ( λ x8520 -> d135 ) ) ) $ ( d142 )
        d854 : if false then if false then Bool else Bool else if false then Bool else Bool
        d854 = if ( ( Bool -> Bool ) ∋ ( ( λ x8550 -> d513 ) ) ) $ ( d618 ) then if true then false else false else if true then d155 else d391
        d856 : if true then ( ( Set -> Set ) ∋ ( ( λ x8580 -> x8580 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8590 -> Bool ) ) ) $ ( Bool )
        d856 = if if d854 then d734 else false then ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> d94 ) ) ) $ ( d542 ) else if d104 then d829 else d394
        d860 : ( ( Set -> Set ) ∋ ( ( λ x8620 -> if false then x8620 else Bool ) ) ) $ ( if false then Bool else Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> if true then true else x8610 ) ) ) $ ( if false then false else d531 )
        d863 : if false then ( ( Set -> Set ) ∋ ( ( λ x8660 -> x8660 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> if x8650 then true else false ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d867 : if false then ( ( Set -> Set ) ∋ ( ( λ x8690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8700 -> x8700 ) ) ) $ ( Bool )
        d867 = if if d250 then true else d856 then if d639 then d834 else d155 else ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> false ) ) ) $ ( d820 )
        d871 : ( ( Set -> Set ) ∋ ( ( λ x8730 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d871 = ( ( Bool -> Bool ) ∋ ( ( λ x8720 -> if x8720 then true else x8720 ) ) ) $ ( if d863 then d507 else false )
        d874 : if true then if true then Bool else Bool else if false then Bool else Bool
        d874 = if ( ( Bool -> Bool ) ∋ ( ( λ x8750 -> false ) ) ) $ ( true ) then if d785 then d825 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> x8760 ) ) ) $ ( true )
        d877 : ( ( Set -> Set ) ∋ ( ( λ x8790 -> ( ( Set -> Set ) ∋ ( ( λ x8800 -> if false then Bool else x8800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d877 = if ( ( Bool -> Bool ) ∋ ( ( λ x8780 -> d593 ) ) ) $ ( d664 ) then if true then d394 else true else if false then false else d502
        d881 : ( ( Set -> Set ) ∋ ( ( λ x8830 -> ( ( Set -> Set ) ∋ ( ( λ x8840 -> if true then Bool else x8830 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d881 = if if false then true else d352 then if true then d542 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8820 -> x8820 ) ) ) $ ( false )
        d885 : ( ( Set -> Set ) ∋ ( ( λ x8880 -> ( ( Set -> Set ) ∋ ( ( λ x8890 -> if false then Bool else x8890 ) ) ) $ ( x8880 ) ) ) ) $ ( if true then Bool else Bool )
        d885 = ( ( Bool -> Bool ) ∋ ( ( λ x8860 -> ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> if true then x8870 else false ) ) ) $ ( false ) ) ) ) $ ( if d593 then false else true )
        d890 : ( ( Set -> Set ) ∋ ( ( λ x8930 -> if true then x8930 else x8930 ) ) ) $ ( if true then Bool else Bool )
        d890 = ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> if x8920 then false else d560 ) ) ) $ ( true ) ) ) ) $ ( if false then d446 else false )
        d894 : if false then if true then Bool else Bool else if true then Bool else Bool
        d894 = ( ( Bool -> Bool ) ∋ ( ( λ x8950 -> if false then x8950 else x8950 ) ) ) $ ( if d163 then true else false )
        d896 : ( ( Set -> Set ) ∋ ( ( λ x9000 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d896 = if ( ( Bool -> Bool ) ∋ ( ( λ x8970 -> x8970 ) ) ) $ ( d890 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> d802 ) ) ) $ ( d647 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> d881 ) ) ) $ ( false )
        d901 : ( ( Set -> Set ) ∋ ( ( λ x9030 -> if true then x9030 else Bool ) ) ) $ ( if false then Bool else Bool )
        d901 = if if d1 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x9020 -> true ) ) ) $ ( false ) else if d734 then d288 else d461
        d904 : ( ( Set -> Set ) ∋ ( ( λ x9070 -> if false then x9070 else x9070 ) ) ) $ ( if false then Bool else Bool )
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> if d284 then true else d216 ) ) ) $ ( false ) ) ) ) $ ( if true then d391 else false )
        d908 : if false then ( ( Set -> Set ) ∋ ( ( λ x9110 -> x9110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9120 -> x9120 ) ) ) $ ( Bool )
        d908 = ( ( Bool -> Bool ) ∋ ( ( λ x9090 -> ( ( Bool -> Bool ) ∋ ( ( λ x9100 -> if d104 then d547 else d743 ) ) ) $ ( true ) ) ) ) $ ( if d785 then false else true )
        d913 : if false then ( ( Set -> Set ) ∋ ( ( λ x9160 -> x9160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9170 -> x9170 ) ) ) $ ( Bool )
        d913 = if ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> true ) ) ) $ ( d226 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> d672 ) ) ) $ ( true ) else if false then false else true
        d918 : if false then ( ( Set -> Set ) ∋ ( ( λ x9200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9210 -> Bool ) ) ) $ ( Bool )
        d918 = ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> if d402 then false else d201 ) ) ) $ ( if false then d743 else d697 )
        d922 : ( ( Set -> Set ) ∋ ( ( λ x9240 -> if true then Bool else x9240 ) ) ) $ ( if true then Bool else Bool )
        d922 = if if false then d364 else d402 then ( ( Bool -> Bool ) ∋ ( ( λ x9230 -> d237 ) ) ) $ ( false ) else if true then true else true
        d925 : if true then if false then Bool else Bool else if false then Bool else Bool
        d925 = if ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> x9260 ) ) ) $ ( true ) then if false then d709 else true else if false then true else d653
        d927 : if true then ( ( Set -> Set ) ∋ ( ( λ x9300 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d927 = if ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> true ) ) ) $ ( d176 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> true ) ) ) $ ( false ) else if false then d653 else d560
        d931 : if true then if true then Bool else Bool else if false then Bool else Bool
        d931 = ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> ( ( Bool -> Bool ) ∋ ( ( λ x9330 -> if x9320 then d317 else x9330 ) ) ) $ ( x9320 ) ) ) ) $ ( if d556 then false else true )
        d934 : if true then ( ( Set -> Set ) ∋ ( ( λ x9350 -> x9350 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9360 -> x9360 ) ) ) $ ( Bool )
        d934 = if if false then d421 else d778 then if d553 then d894 else d639 else if d613 then d23 else d451
        d937 : if false then if false then Bool else Bool else if false then Bool else Bool
        d937 = if ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> x9380 ) ) ) $ ( d874 ) then if true then d808 else d288 else if true then false else true
        d939 : ( ( Set -> Set ) ∋ ( ( λ x9410 -> if true then x9410 else Bool ) ) ) $ ( if false then Bool else Bool )
        d939 = if if d298 then d838 else d778 then ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> d37 ) ) ) $ ( d817 ) else if d284 then d937 else false
        d942 : if false then if true then Bool else Bool else if false then Bool else Bool
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x9430 -> ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> if d925 then true else true ) ) ) $ ( false ) ) ) ) $ ( if true then d517 else true )
        d945 : if false then if true then Bool else Bool else if false then Bool else Bool
        d945 = if if d312 then d142 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9460 -> d618 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9470 -> true ) ) ) $ ( false )
        d948 : ( ( Set -> Set ) ∋ ( ( λ x9500 -> if true then Bool else x9500 ) ) ) $ ( if false then Bool else Bool )
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> if x9490 then true else false ) ) ) $ ( if d945 then d890 else d325 )
        d951 : ( ( Set -> Set ) ∋ ( ( λ x9530 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d951 = if if d585 then d85 else false then if d288 then d104 else d569 else ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> true ) ) ) $ ( d856 )
        d954 : ( ( Set -> Set ) ∋ ( ( λ x9560 -> if false then Bool else x9560 ) ) ) $ ( if false then Bool else Bool )
        d954 = if ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> d704 ) ) ) $ ( d387 ) then if true then true else d825 else if d632 then true else d499
        d957 : if false then ( ( Set -> Set ) ∋ ( ( λ x9600 -> x9600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9610 -> x9610 ) ) ) $ ( Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> ( ( Bool -> Bool ) ∋ ( ( λ x9590 -> if false then false else true ) ) ) $ ( x9580 ) ) ) ) $ ( if d159 then d237 else false )
        d962 : if true then ( ( Set -> Set ) ∋ ( ( λ x9650 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9660 -> x9660 ) ) ) $ ( Bool )
        d962 = ( ( Bool -> Bool ) ∋ ( ( λ x9630 -> ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> if d368 then false else d78 ) ) ) $ ( d230 ) ) ) ) $ ( if false then true else d922 )
        d967 : ( ( Set -> Set ) ∋ ( ( λ x9690 -> ( ( Set -> Set ) ∋ ( ( λ x9700 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d967 = ( ( Bool -> Bool ) ∋ ( ( λ x9680 -> if d621 then d466 else d155 ) ) ) $ ( if true then false else false )
        d971 : ( ( Set -> Set ) ∋ ( ( λ x9740 -> ( ( Set -> Set ) ∋ ( ( λ x9750 -> if true then Bool else Bool ) ) ) $ ( x9740 ) ) ) ) $ ( if false then Bool else Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> if x9730 then x9720 else true ) ) ) $ ( x9720 ) ) ) ) $ ( if true then d18 else d130 )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x9780 -> ( ( Set -> Set ) ∋ ( ( λ x9790 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x9770 -> if x9770 then false else x9770 ) ) ) $ ( if d345 then false else false )
        d980 : if true then if true then Bool else Bool else if true then Bool else Bool
        d980 = ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> if x9810 then d867 else true ) ) ) $ ( x9810 ) ) ) ) $ ( if true then false else false )
        d983 : if false then if false then Bool else Bool else if false then Bool else Bool
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> if false then d769 else true ) ) ) $ ( x9840 ) ) ) ) $ ( if d489 then true else true )
        d986 : ( ( Set -> Set ) ∋ ( ( λ x9880 -> ( ( Set -> Set ) ∋ ( ( λ x9890 -> if false then Bool else x9890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d986 = ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> if false then true else d697 ) ) ) $ ( if true then true else d277 )
        d990 : ( ( Set -> Set ) ∋ ( ( λ x9930 -> if true then Bool else x9930 ) ) ) $ ( if false then Bool else Bool )
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x9910 -> ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> if x9910 then d589 else d925 ) ) ) $ ( true ) ) ) ) $ ( if d560 then d230 else true )
        d994 : ( ( Set -> Set ) ∋ ( ( λ x9970 -> if false then x9970 else Bool ) ) ) $ ( if true then Bool else Bool )
        d994 = if ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> x9950 ) ) ) $ ( d753 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> d697 ) ) ) $ ( d877 ) else if d100 then d85 else d647
        d998 : ( ( Set -> Set ) ∋ ( ( λ x10000 -> ( ( Set -> Set ) ∋ ( ( λ x10010 -> if false then Bool else x10010 ) ) ) $ ( x10000 ) ) ) ) $ ( if true then Bool else Bool )
        d998 = if ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> x9990 ) ) ) $ ( true ) then if false then d413 else true else if true then d734 else false
        d1002 : ( ( Set -> Set ) ∋ ( ( λ x10040 -> ( ( Set -> Set ) ∋ ( ( λ x10050 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1002 = if if d661 then false else d458 then if d738 then false else d334 else ( ( Bool -> Bool ) ∋ ( ( λ x10030 -> x10030 ) ) ) $ ( d720 )
        d1006 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10080 -> Bool ) ) ) $ ( Bool )
        d1006 = ( ( Bool -> Bool ) ∋ ( ( λ x10070 -> if x10070 then d618 else true ) ) ) $ ( if d176 then d485 else true )
        d1009 : if false then ( ( Set -> Set ) ∋ ( ( λ x10110 -> x10110 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1009 = ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> if x10100 then x10100 else true ) ) ) $ ( if d298 then true else d384 )
        d1012 : ( ( Set -> Set ) ∋ ( ( λ x10130 -> ( ( Set -> Set ) ∋ ( ( λ x10140 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1012 = if if d73 then d78 else false then if false then false else true else if false then d345 else d725
        d1015 : if true then ( ( Set -> Set ) ∋ ( ( λ x10180 -> x10180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10190 -> x10190 ) ) ) $ ( Bool )
        d1015 = if ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> d507 ) ) ) $ ( false ) then if d524 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x10170 -> false ) ) ) $ ( d69 )
        d1020 : ( ( Set -> Set ) ∋ ( ( λ x10230 -> if false then Bool else x10230 ) ) ) $ ( if false then Bool else Bool )
        d1020 = ( ( Bool -> Bool ) ∋ ( ( λ x10210 -> ( ( Bool -> Bool ) ∋ ( ( λ x10220 -> if x10220 then x10210 else false ) ) ) $ ( true ) ) ) ) $ ( if d937 then d535 else true )
        d1024 : ( ( Set -> Set ) ∋ ( ( λ x10250 -> ( ( Set -> Set ) ∋ ( ( λ x10260 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1024 = if if d250 then d593 else true then if d983 then d317 else true else if d122 then d482 else d384
        d1027 : if false then ( ( Set -> Set ) ∋ ( ( λ x10310 -> x10310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10320 -> Bool ) ) ) $ ( Bool )
        d1027 = if ( ( Bool -> Bool ) ∋ ( ( λ x10280 -> d761 ) ) ) $ ( d78 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> true ) ) ) $ ( d262 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> d922 ) ) ) $ ( d152 )
        d1033 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10360 -> x10360 ) ) ) $ ( Bool )
        d1033 = if ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> d986 ) ) ) $ ( d693 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> false ) ) ) $ ( true ) else if true then d216 else d451
        d1037 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10390 -> Bool ) ) ) $ ( Bool )
        d1037 = if if d479 then false else d489 then if false then d636 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> x10380 ) ) ) $ ( d820 )
        d1040 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> if true then x10430 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1040 = if ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> x10410 ) ) ) $ ( d405 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> true ) ) ) $ ( false )
        d1044 : ( ( Set -> Set ) ∋ ( ( λ x10470 -> ( ( Set -> Set ) ∋ ( ( λ x10480 -> if true then Bool else x10480 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1044 = ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> if x10460 then d216 else x10450 ) ) ) $ ( d573 ) ) ) ) $ ( if d188 then false else d790 )
        d1049 : ( ( Set -> Set ) ∋ ( ( λ x10520 -> if true then x10520 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1049 = if if true then true else d603 then ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> x10500 ) ) ) $ ( d725 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> false ) ) ) $ ( d178 )
        d1053 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1053 = if ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> d329 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> false ) ) ) $ ( d593 ) else if d769 then d78 else true
        d1056 : ( ( Set -> Set ) ∋ ( ( λ x10590 -> if true then x10590 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1056 = if if d435 then d831 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> x10570 ) ) ) $ ( d254 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10580 -> d51 ) ) ) $ ( d677 )
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x10620 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1060 = if if false then d250 else d863 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> d376 ) ) ) $ ( false )
        d1063 : ( ( Set -> Set ) ∋ ( ( λ x10640 -> ( ( Set -> Set ) ∋ ( ( λ x10650 -> if true then Bool else Bool ) ) ) $ ( x10640 ) ) ) ) $ ( if false then Bool else Bool )
        d1063 = if if d527 then d159 else false then if d85 then d881 else d957 else if d152 then d599 else d709
        d1066 : if false then ( ( Set -> Set ) ∋ ( ( λ x10690 -> x10690 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1066 = ( ( Bool -> Bool ) ∋ ( ( λ x10670 -> ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> if true then d951 else false ) ) ) $ ( false ) ) ) ) $ ( if false then true else d745 )
        d1070 : ( ( Set -> Set ) ∋ ( ( λ x10720 -> if true then x10720 else x10720 ) ) ) $ ( if true then Bool else Bool )
        d1070 = if if false then d994 else d774 then if d790 then true else d745 else ( ( Bool -> Bool ) ∋ ( ( λ x10710 -> x10710 ) ) ) $ ( d877 )
        d1073 : ( ( Set -> Set ) ∋ ( ( λ x10760 -> ( ( Set -> Set ) ∋ ( ( λ x10770 -> if false then x10760 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1073 = ( ( Bool -> Bool ) ∋ ( ( λ x10740 -> ( ( Bool -> Bool ) ∋ ( ( λ x10750 -> if x10740 then x10740 else x10750 ) ) ) $ ( true ) ) ) ) $ ( if d288 then d18 else false )
        d1078 : if true then ( ( Set -> Set ) ∋ ( ( λ x10810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10820 -> Bool ) ) ) $ ( Bool )
        d1078 = ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> if x10790 then false else true ) ) ) $ ( x10790 ) ) ) ) $ ( if d188 then d688 else true )
        d1083 : ( ( Set -> Set ) ∋ ( ( λ x10850 -> ( ( Set -> Set ) ∋ ( ( λ x10860 -> if true then x10860 else x10850 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1083 = ( ( Bool -> Bool ) ∋ ( ( λ x10840 -> if x10840 then d962 else true ) ) ) $ ( if d113 then false else true )
        d1087 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10890 -> Bool ) ) ) $ ( Bool )
        d1087 = if ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> x10880 ) ) ) $ ( d918 ) then if d942 then d1066 else false else if false then true else d871
        d1090 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1090 = if ( ( Bool -> Bool ) ∋ ( ( λ x10910 -> x10910 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> d398 ) ) ) $ ( d250 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> d206 ) ) ) $ ( d1033 )
        d1094 : ( ( Set -> Set ) ∋ ( ( λ x10960 -> ( ( Set -> Set ) ∋ ( ( λ x10970 -> if true then x10970 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if d60 then d380 else x10950 ) ) ) $ ( if true then d994 else false )
        d1098 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1098 = ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> if false then d957 else d306 ) ) ) $ ( if true then false else d206 )
        d1100 : if true then ( ( Set -> Set ) ∋ ( ( λ x11020 -> x11020 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1100 = ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> if d573 then true else d140 ) ) ) $ ( if d863 then false else false )
        d1103 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11060 -> Bool ) ) ) $ ( Bool )
        d1103 = if ( ( Bool -> Bool ) ∋ ( ( λ x11040 -> d277 ) ) ) $ ( d962 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> false ) ) ) $ ( true ) else if d23 then true else d1
        d1107 : if true then ( ( Set -> Set ) ∋ ( ( λ x11090 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11100 -> Bool ) ) ) $ ( Bool )
        d1107 = ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> if d585 then false else x11080 ) ) ) $ ( if d709 then false else true )
        d1111 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11130 -> Bool ) ) ) $ ( Bool )
        d1111 = if ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> x11120 ) ) ) $ ( false ) then if d295 then true else false else if false then false else d113
        d1114 : if true then ( ( Set -> Set ) ∋ ( ( λ x11170 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1114 = if ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> d145 ) ) ) $ ( d841 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> d364 ) ) ) $ ( true ) else if d661 then d1063 else true
        d1118 : ( ( Set -> Set ) ∋ ( ( λ x11200 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> if x11190 then x11190 else x11190 ) ) ) $ ( if d364 then d376 else false )
        d1121 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11220 -> x11220 ) ) ) $ ( Bool )
        d1121 = if if true then true else d212 then if d438 then d1056 else d922 else if true then true else d197
        d1123 : ( ( Set -> Set ) ∋ ( ( λ x11250 -> ( ( Set -> Set ) ∋ ( ( λ x11260 -> if false then Bool else x11260 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1123 = ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> if d241 then true else true ) ) ) $ ( if false then false else true )
        d1127 : if true then ( ( Set -> Set ) ∋ ( ( λ x11290 -> x11290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11300 -> x11300 ) ) ) $ ( Bool )
        d1127 = ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> if false then d58 else x11280 ) ) ) $ ( if d986 then d46 else d1049 )
        d1131 : ( ( Set -> Set ) ∋ ( ( λ x11340 -> ( ( Set -> Set ) ∋ ( ( λ x11350 -> if true then Bool else x11340 ) ) ) $ ( x11340 ) ) ) ) $ ( if true then Bool else Bool )
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> if x11320 then d1033 else d656 ) ) ) $ ( d269 ) ) ) ) $ ( if d566 then true else false )
        d1136 : if true then ( ( Set -> Set ) ∋ ( ( λ x11400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11410 -> x11410 ) ) ) $ ( Bool )
        d1136 = if ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> x11370 ) ) ) $ ( d717 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> x11380 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11390 -> d1121 ) ) ) $ ( true )
        d1142 : if true then ( ( Set -> Set ) ∋ ( ( λ x11450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11460 -> x11460 ) ) ) $ ( Bool )
        d1142 = ( ( Bool -> Bool ) ∋ ( ( λ x11430 -> ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> if x11440 then d520 else false ) ) ) $ ( x11430 ) ) ) ) $ ( if true then d648 else d1033 )
        d1147 : ( ( Set -> Set ) ∋ ( ( λ x11500 -> if false then x11500 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1147 = ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> if d118 then false else x11480 ) ) ) $ ( d704 ) ) ) ) $ ( if d1136 then d531 else false )
        d1151 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11530 -> x11530 ) ) ) $ ( Bool )
        d1151 = if if true then d246 else true then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x11520 -> d608 ) ) ) $ ( d636 )
        d1154 : ( ( Set -> Set ) ∋ ( ( λ x11550 -> if false then x11550 else x11550 ) ) ) $ ( if false then Bool else Bool )
        d1154 = if if d717 then false else d446 then if d182 then d256 else true else if d728 then d976 else true
        d1156 : ( ( Set -> Set ) ∋ ( ( λ x11580 -> ( ( Set -> Set ) ∋ ( ( λ x11590 -> if false then Bool else x11590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1156 = ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> if false then d194 else d461 ) ) ) $ ( if false then true else d636 )
        d1160 : if true then ( ( Set -> Set ) ∋ ( ( λ x11620 -> x11620 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1160 = ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> if false then x11610 else d277 ) ) ) $ ( if false then d402 else false )
        d1163 : if false then ( ( Set -> Set ) ∋ ( ( λ x11650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1163 = ( ( Bool -> Bool ) ∋ ( ( λ x11640 -> if x11640 then true else x11640 ) ) ) $ ( if true then false else true )
        d1166 : ( ( Set -> Set ) ∋ ( ( λ x11680 -> if true then x11680 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1166 = ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> if x11670 then d951 else d273 ) ) ) $ ( if d1006 then false else false )
        d1169 : if true then ( ( Set -> Set ) ∋ ( ( λ x11720 -> x11720 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1169 = ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> if false then d535 else d1127 ) ) ) $ ( false ) ) ) ) $ ( if d262 then false else false )
        d1173 : ( ( Set -> Set ) ∋ ( ( λ x11750 -> ( ( Set -> Set ) ∋ ( ( λ x11760 -> if true then Bool else x11760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1173 = ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> if d1098 then false else false ) ) ) $ ( if true then true else d510 )
        d1177 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1177 = ( ( Bool -> Bool ) ∋ ( ( λ x11780 -> ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> if x11780 then d1107 else x11780 ) ) ) $ ( true ) ) ) ) $ ( if d64 then true else d925 )
        d1180 : ( ( Set -> Set ) ∋ ( ( λ x11820 -> if true then Bool else x11820 ) ) ) $ ( if false then Bool else Bool )
        d1180 = if if true then false else d1136 then ( ( Bool -> Bool ) ∋ ( ( λ x11810 -> x11810 ) ) ) $ ( d155 ) else if true then false else d479
        d1183 : if true then ( ( Set -> Set ) ∋ ( ( λ x11850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11860 -> Bool ) ) ) $ ( Bool )
        d1183 = ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> if x11840 then x11840 else true ) ) ) $ ( if d593 then false else d1049 )
        d1187 : ( ( Set -> Set ) ∋ ( ( λ x11890 -> ( ( Set -> Set ) ∋ ( ( λ x11900 -> if true then x11890 else Bool ) ) ) $ ( x11890 ) ) ) ) $ ( if false then Bool else Bool )
        d1187 = if if d761 then false else d250 then if false then d60 else d596 else ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> d624 ) ) ) $ ( d8 )
        d1191 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11930 -> x11930 ) ) ) $ ( Bool )
        d1191 = ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> if false then d372 else false ) ) ) $ ( if true then false else d194 )
        d1194 : if true then ( ( Set -> Set ) ∋ ( ( λ x11960 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11970 -> Bool ) ) ) $ ( Bool )
        d1194 = if ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> d934 ) ) ) $ ( false ) then if d962 then d167 else d51 else if d913 then true else d820
        d1198 : ( ( Set -> Set ) ∋ ( ( λ x12010 -> if true then Bool else x12010 ) ) ) $ ( if true then Bool else Bool )
        d1198 = ( ( Bool -> Bool ) ∋ ( ( λ x11990 -> ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> if true then x11990 else d682 ) ) ) $ ( x11990 ) ) ) ) $ ( if d329 then true else d246 )
        d1202 : ( ( Set -> Set ) ∋ ( ( λ x12030 -> if true then Bool else x12030 ) ) ) $ ( if true then Bool else Bool )
        d1202 = if if true then d794 else true then if true then false else true else if false then d256 else d1053
        d1204 : ( ( Set -> Set ) ∋ ( ( λ x12070 -> ( ( Set -> Set ) ∋ ( ( λ x12080 -> if false then x12070 else x12080 ) ) ) $ ( x12070 ) ) ) ) $ ( if false then Bool else Bool )
        d1204 = ( ( Bool -> Bool ) ∋ ( ( λ x12050 -> ( ( Bool -> Bool ) ∋ ( ( λ x12060 -> if d341 then true else d720 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d794 )
        d1209 : if true then ( ( Set -> Set ) ∋ ( ( λ x12120 -> x12120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12130 -> x12130 ) ) ) $ ( Bool )
        d1209 = ( ( Bool -> Bool ) ∋ ( ( λ x12100 -> ( ( Bool -> Bool ) ∋ ( ( λ x12110 -> if d8 then d704 else x12110 ) ) ) $ ( true ) ) ) ) $ ( if d542 then d908 else false )
        d1214 : ( ( Set -> Set ) ∋ ( ( λ x12160 -> if true then x12160 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1214 = if ( ( Bool -> Bool ) ∋ ( ( λ x12150 -> d1063 ) ) ) $ ( d1166 ) then if d874 then d841 else true else if d368 then d234 else d778
        d1217 : ( ( Set -> Set ) ∋ ( ( λ x12190 -> ( ( Set -> Set ) ∋ ( ( λ x12200 -> if true then Bool else x12190 ) ) ) $ ( x12190 ) ) ) ) $ ( if false then Bool else Bool )
        d1217 = ( ( Bool -> Bool ) ∋ ( ( λ x12180 -> if x12180 then x12180 else x12180 ) ) ) $ ( if d782 then true else false )
        d1221 : if false then ( ( Set -> Set ) ∋ ( ( λ x12250 -> x12250 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1221 = if ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> d178 ) ) ) $ ( d693 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12230 -> x12230 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> false ) ) ) $ ( true )
        d1226 : if true then ( ( Set -> Set ) ∋ ( ( λ x12270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12280 -> x12280 ) ) ) $ ( Bool )
        d1226 = if if d32 then false else false then if false then d100 else false else if false then d1060 else false
        d1229 : ( ( Set -> Set ) ∋ ( ( λ x12320 -> if true then Bool else x12320 ) ) ) $ ( if true then Bool else Bool )
        d1229 = ( ( Bool -> Bool ) ∋ ( ( λ x12300 -> ( ( Bool -> Bool ) ∋ ( ( λ x12310 -> if false then x12310 else d176 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d1233 : ( ( Set -> Set ) ∋ ( ( λ x12350 -> ( ( Set -> Set ) ∋ ( ( λ x12360 -> if false then Bool else x12350 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1233 = ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> if d1226 then true else d542 ) ) ) $ ( if d1056 then d1083 else d376 )
        d1237 : ( ( Set -> Set ) ∋ ( ( λ x12400 -> if false then Bool else x12400 ) ) ) $ ( if true then Bool else Bool )
        d1237 = if ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> d273 ) ) ) $ ( d1020 ) else if d1103 then true else d321
        d1241 : ( ( Set -> Set ) ∋ ( ( λ x12430 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1241 = if if true then d1194 else d317 then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> false ) ) ) $ ( false )
        d1244 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1244 = ( ( Bool -> Bool ) ∋ ( ( λ x12450 -> if d1020 then false else x12450 ) ) ) $ ( if true then true else d743 )
        d1246 : ( ( Set -> Set ) ∋ ( ( λ x12480 -> if true then x12480 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1246 = ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> if false then false else true ) ) ) $ ( if d738 then true else false )
        d1249 : ( ( Set -> Set ) ∋ ( ( λ x12500 -> ( ( Set -> Set ) ∋ ( ( λ x12510 -> if true then x12500 else Bool ) ) ) $ ( x12500 ) ) ) ) $ ( if false then Bool else Bool )
        d1249 = if if d1202 then false else d345 then if d513 then false else false else if d756 then true else true
        d1252 : if true then ( ( Set -> Set ) ∋ ( ( λ x12550 -> x12550 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12560 -> Bool ) ) ) $ ( Bool )
        d1252 = if ( ( Bool -> Bool ) ∋ ( ( λ x12530 -> d838 ) ) ) $ ( d692 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> d345 ) ) ) $ ( false ) else if d1049 then true else d124
        d1257 : ( ( Set -> Set ) ∋ ( ( λ x12590 -> ( ( Set -> Set ) ∋ ( ( λ x12600 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1257 = if ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> true ) ) ) $ ( d502 ) then if d250 then false else d550 else if d42 then d325 else true
        d1261 : ( ( Set -> Set ) ∋ ( ( λ x12630 -> if false then x12630 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1261 = ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> if x12620 then true else true ) ) ) $ ( if d341 then false else d817 )
        d1264 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1264 = ( ( Bool -> Bool ) ∋ ( ( λ x12650 -> ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> if d648 then d237 else true ) ) ) $ ( x12650 ) ) ) ) $ ( if d527 then d774 else false )
        d1267 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12680 -> Bool ) ) ) $ ( Bool )
        d1267 = if if d720 then false else d621 then if d1252 then d277 else true else if true then false else d603
        d1269 : if true then ( ( Set -> Set ) ∋ ( ( λ x12720 -> x12720 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1269 = if if d596 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> d182 ) ) ) $ ( d785 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> d677 ) ) ) $ ( true )
        d1273 : if false then ( ( Set -> Set ) ∋ ( ( λ x12750 -> x12750 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1273 = if if true then true else d798 then if d435 then true else d1163 else ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> d734 ) ) ) $ ( d971 )
        d1276 : if false then ( ( Set -> Set ) ∋ ( ( λ x12800 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1276 = if ( ( Bool -> Bool ) ∋ ( ( λ x12770 -> false ) ) ) $ ( d54 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> d838 ) ) ) $ ( d874 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> false ) ) ) $ ( d1083 )
        d1281 : ( ( Set -> Set ) ∋ ( ( λ x12830 -> ( ( Set -> Set ) ∋ ( ( λ x12840 -> if false then Bool else x12830 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1281 = ( ( Bool -> Bool ) ∋ ( ( λ x12820 -> if false then false else x12820 ) ) ) $ ( if d1033 then d1121 else d596 )
        d1285 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1285 = ( ( Bool -> Bool ) ∋ ( ( λ x12860 -> if false then true else x12860 ) ) ) $ ( if d881 then d913 else true )
        d1287 : if false then ( ( Set -> Set ) ∋ ( ( λ x12900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12910 -> Bool ) ) ) $ ( Bool )
        d1287 = if ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> x12880 ) ) ) $ ( true ) then if d860 then false else d825 else ( ( Bool -> Bool ) ∋ ( ( λ x12890 -> true ) ) ) $ ( d1173 )
        d1292 : ( ( Set -> Set ) ∋ ( ( λ x12950 -> ( ( Set -> Set ) ∋ ( ( λ x12960 -> if false then Bool else Bool ) ) ) $ ( x12950 ) ) ) ) $ ( if true then Bool else Bool )
        d1292 = if ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> d573 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> false ) ) ) $ ( false ) else if d672 then d1100 else false
        d1297 : ( ( Set -> Set ) ∋ ( ( λ x12980 -> if false then x12980 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1297 = if if d1226 then d482 else false then if d1078 then d413 else d628 else if true then d398 else true
        d1299 : ( ( Set -> Set ) ∋ ( ( λ x13010 -> if false then Bool else x13010 ) ) ) $ ( if false then Bool else Bool )
        d1299 = ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> if false then x13000 else false ) ) ) $ ( if d748 then d122 else d1070 )
        d1302 : if true then ( ( Set -> Set ) ∋ ( ( λ x13050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13060 -> x13060 ) ) ) $ ( Bool )
        d1302 = ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> if d1229 then x13030 else x13040 ) ) ) $ ( x13030 ) ) ) ) $ ( if d608 then d471 else d648 )
        d1307 : ( ( Set -> Set ) ∋ ( ( λ x13100 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1307 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> x13090 ) ) ) $ ( d785 )
        d1311 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13140 -> x13140 ) ) ) $ ( Bool )
        d1311 = ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> if x13120 then d435 else d931 ) ) ) $ ( x13120 ) ) ) ) $ ( if false then d1173 else true )
        d1315 : if true then ( ( Set -> Set ) ∋ ( ( λ x13170 -> x13170 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1315 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> true ) ) ) $ ( d1264 ) else if false then true else false
        d1318 : if false then ( ( Set -> Set ) ∋ ( ( λ x13200 -> x13200 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1318 = if if false then d507 else d520 then if false then d368 else d668 else ( ( Bool -> Bool ) ∋ ( ( λ x13190 -> x13190 ) ) ) $ ( d394 )
        d1321 : if false then ( ( Set -> Set ) ∋ ( ( λ x13240 -> x13240 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1321 = ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> if true then false else false ) ) ) $ ( x13220 ) ) ) ) $ ( if d808 then d1221 else false )
        d1325 : ( ( Set -> Set ) ∋ ( ( λ x13270 -> if false then x13270 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1325 = ( ( Bool -> Bool ) ∋ ( ( λ x13260 -> if x13260 then d60 else x13260 ) ) ) $ ( if true then true else d237 )
        d1328 : ( ( Set -> Set ) ∋ ( ( λ x13300 -> if false then Bool else x13300 ) ) ) $ ( if true then Bool else Bool )
        d1328 = ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> if true then d108 else d32 ) ) ) $ ( if d1252 then true else true )
        d1331 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1331 = if if d302 then false else d479 then ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> false ) ) ) $ ( false ) else if d461 then true else d347
        d1333 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1333 = ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> if d547 then false else false ) ) ) $ ( true ) ) ) ) $ ( if d37 then d908 else d679 )
        d1336 : ( ( Set -> Set ) ∋ ( ( λ x13390 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1336 = if if true then d1066 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> d962 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> x13380 ) ) ) $ ( false )
        d1340 : if false then ( ( Set -> Set ) ∋ ( ( λ x13420 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13430 -> x13430 ) ) ) $ ( Bool )
        d1340 = if ( ( Bool -> Bool ) ∋ ( ( λ x13410 -> d149 ) ) ) $ ( d368 ) then if false then false else true else if true then d1027 else d734
        d1344 : ( ( Set -> Set ) ∋ ( ( λ x13460 -> ( ( Set -> Set ) ∋ ( ( λ x13470 -> if true then x13460 else Bool ) ) ) $ ( x13460 ) ) ) ) $ ( if false then Bool else Bool )
        d1344 = if ( ( Bool -> Bool ) ∋ ( ( λ x13450 -> true ) ) ) $ ( d769 ) then if false then false else false else if d1049 then d51 else false
        d1348 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13510 -> x13510 ) ) ) $ ( Bool )
        d1348 = if ( ( Bool -> Bool ) ∋ ( ( λ x13490 -> d957 ) ) ) $ ( d1269 ) then if d279 then d618 else d1321 else ( ( Bool -> Bool ) ∋ ( ( λ x13500 -> x13500 ) ) ) $ ( d517 )
        d1352 : if true then ( ( Set -> Set ) ∋ ( ( λ x13550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13560 -> Bool ) ) ) $ ( Bool )
        d1352 = if ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> x13530 ) ) ) $ ( true ) then if d701 then true else d986 else ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> x13540 ) ) ) $ ( d785 )
        d1357 : if true then ( ( Set -> Set ) ∋ ( ( λ x13590 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1357 = ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> if x13580 then d1169 else d913 ) ) ) $ ( if true then d851 else d1261 )
        d1360 : ( ( Set -> Set ) ∋ ( ( λ x13630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1360 = ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> if d246 then x13620 else d279 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d352 )
        d1364 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13670 -> Bool ) ) ) $ ( Bool )
        d1364 = if ( ( Bool -> Bool ) ∋ ( ( λ x13650 -> x13650 ) ) ) $ ( false ) then if false then d885 else d513 else ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> d1204 ) ) ) $ ( d387 )
        d1368 : ( ( Set -> Set ) ∋ ( ( λ x13700 -> if true then x13700 else x13700 ) ) ) $ ( if false then Bool else Bool )
        d1368 = ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> if d410 then d802 else d603 ) ) ) $ ( if true then d1169 else d1006 )
        d1371 : ( ( Set -> Set ) ∋ ( ( λ x13730 -> if false then x13730 else x13730 ) ) ) $ ( if false then Bool else Bool )
        d1371 = if ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> d1083 ) ) ) $ ( false ) then if d1037 then true else false else if d643 then true else false
        d1374 : ( ( Set -> Set ) ∋ ( ( λ x13770 -> if true then x13770 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1374 = ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> if d446 then d712 else d1226 ) ) ) $ ( true ) ) ) ) $ ( if d461 then d1204 else true )
        d1378 : ( ( Set -> Set ) ∋ ( ( λ x13800 -> if false then Bool else x13800 ) ) ) $ ( if true then Bool else Bool )
        d1378 = if if false then true else d863 then ( ( Bool -> Bool ) ∋ ( ( λ x13790 -> false ) ) ) $ ( d1285 ) else if false then false else d1204
        d1381 : ( ( Set -> Set ) ∋ ( ( λ x13840 -> ( ( Set -> Set ) ∋ ( ( λ x13850 -> if false then x13850 else x13840 ) ) ) $ ( x13840 ) ) ) ) $ ( if false then Bool else Bool )
        d1381 = if ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> x13820 ) ) ) $ ( d725 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> false ) ) ) $ ( d262 ) else if d347 then d922 else true
        d1386 : ( ( Set -> Set ) ∋ ( ( λ x13870 -> if false then x13870 else x13870 ) ) ) $ ( if true then Bool else Bool )
        d1386 = if if d28 then true else false then if true then d347 else d108 else if false then d831 else false
        d1388 : if true then ( ( Set -> Set ) ∋ ( ( λ x13910 -> x13910 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1388 = ( ( Bool -> Bool ) ∋ ( ( λ x13890 -> ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> if x13900 then x13900 else false ) ) ) $ ( d476 ) ) ) ) $ ( if true then true else d391 )
        d1392 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1392 = ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> if x13940 then true else false ) ) ) $ ( false ) ) ) ) $ ( if d1111 then d372 else d226 )
        d1395 : if true then ( ( Set -> Set ) ∋ ( ( λ x13970 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1395 = ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> if false then true else x13960 ) ) ) $ ( if false then false else d531 )
        d1398 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1398 = ( ( Bool -> Bool ) ∋ ( ( λ x13990 -> ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> if x13990 then x14000 else d446 ) ) ) $ ( false ) ) ) ) $ ( if d1378 then d664 else true )
        d1401 : if false then ( ( Set -> Set ) ∋ ( ( λ x14030 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14040 -> x14040 ) ) ) $ ( Bool )
        d1401 = ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> if x14020 then true else false ) ) ) $ ( if false then false else d1360 )
        d1405 : ( ( Set -> Set ) ∋ ( ( λ x14070 -> if false then x14070 else x14070 ) ) ) $ ( if true then Bool else Bool )
        d1405 = if if true then true else d851 then ( ( Bool -> Bool ) ∋ ( ( λ x14060 -> d1292 ) ) ) $ ( false ) else if d1027 then false else false
        d1408 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1408 = if ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> d937 ) ) ) $ ( d535 ) then if true then true else d246 else ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> x14100 ) ) ) $ ( d863 )
        d1411 : ( ( Set -> Set ) ∋ ( ( λ x14140 -> if true then Bool else x14140 ) ) ) $ ( if true then Bool else Bool )
        d1411 = ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> ( ( Bool -> Bool ) ∋ ( ( λ x14130 -> if true then d402 else d1063 ) ) ) $ ( d743 ) ) ) ) $ ( if false then d135 else true )
        d1415 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14170 -> x14170 ) ) ) $ ( Bool )
        d1415 = ( ( Bool -> Bool ) ∋ ( ( λ x14160 -> if d502 then x14160 else x14160 ) ) ) $ ( if d1233 then true else d155 )
        d1418 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1418 = if ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> x14190 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> d743 ) ) ) $ ( true ) else if d951 then true else d212
        d1421 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1421 = if ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> d877 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14230 -> d262 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14240 -> d918 ) ) ) $ ( d918 )
        d1425 : if true then ( ( Set -> Set ) ∋ ( ( λ x14280 -> x14280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14290 -> Bool ) ) ) $ ( Bool )
        d1425 = ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> ( ( Bool -> Bool ) ∋ ( ( λ x14270 -> if d444 then false else d531 ) ) ) $ ( d1121 ) ) ) ) $ ( if d1252 then false else true )
        d1430 : ( ( Set -> Set ) ∋ ( ( λ x14330 -> if true then x14330 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1430 = ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> ( ( Bool -> Bool ) ∋ ( ( λ x14320 -> if false then d704 else x14310 ) ) ) $ ( true ) ) ) ) $ ( if d566 then false else true )
        d1434 : if false then ( ( Set -> Set ) ∋ ( ( λ x14370 -> x14370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1434 = ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> if false then d60 else false ) ) ) $ ( x14350 ) ) ) ) $ ( if d51 then d632 else false )
        d1438 : ( ( Set -> Set ) ∋ ( ( λ x14400 -> ( ( Set -> Set ) ∋ ( ( λ x14410 -> if false then Bool else Bool ) ) ) $ ( x14400 ) ) ) ) $ ( if false then Bool else Bool )
        d1438 = if ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> d831 ) ) ) $ ( d284 ) then if d743 then false else d113 else if d593 then d517 else true
        d1442 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14460 -> x14460 ) ) ) $ ( Bool )
        d1442 = if ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> x14430 ) ) ) $ ( d100 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> true ) ) ) $ ( true )
        d1447 : ( ( Set -> Set ) ∋ ( ( λ x14500 -> if true then Bool else x14500 ) ) ) $ ( if true then Bool else Bool )
        d1447 = ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> ( ( Bool -> Bool ) ∋ ( ( λ x14490 -> if d599 then d1191 else x14490 ) ) ) $ ( x14480 ) ) ) ) $ ( if true then true else true )
        d1451 : if true then ( ( Set -> Set ) ∋ ( ( λ x14540 -> x14540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14550 -> Bool ) ) ) $ ( Bool )
        d1451 = if if d1229 then false else d1257 then ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> true ) ) ) $ ( d817 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> true ) ) ) $ ( d569 )
        d1456 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1456 = ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> if true then false else true ) ) ) $ ( true ) ) ) ) $ ( if true then d547 else false )
        d1459 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1459 = if ( ( Bool -> Bool ) ∋ ( ( λ x14600 -> d384 ) ) ) $ ( true ) then if false then false else false else if true then true else d1438
        d1461 : if false then ( ( Set -> Set ) ∋ ( ( λ x14630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14640 -> x14640 ) ) ) $ ( Bool )
        d1461 = ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> if x14620 then d748 else true ) ) ) $ ( if true then true else d510 )
        d1465 : if true then ( ( Set -> Set ) ∋ ( ( λ x14670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14680 -> Bool ) ) ) $ ( Bool )
        d1465 = if if false then d182 else true then if true then d325 else d494 else ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> d284 ) ) ) $ ( d418 )
        d1469 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1469 = if ( ( Bool -> Bool ) ∋ ( ( λ x14700 -> x14700 ) ) ) $ ( d1315 ) then if d1151 then d128 else d621 else ( ( Bool -> Bool ) ∋ ( ( λ x14710 -> true ) ) ) $ ( d542 )
        d1472 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1472 = if if false then false else true then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x14730 -> x14730 ) ) ) $ ( d410 )
        d1474 : if false then ( ( Set -> Set ) ∋ ( ( λ x14770 -> x14770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14780 -> Bool ) ) ) $ ( Bool )
        d1474 = ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> ( ( Bool -> Bool ) ∋ ( ( λ x14760 -> if x14760 then d1421 else x14750 ) ) ) $ ( true ) ) ) ) $ ( if false then d1408 else false )
        d1479 : ( ( Set -> Set ) ∋ ( ( λ x14810 -> if true then x14810 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1479 = if if true then true else false then if d1009 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x14800 -> d258 ) ) ) $ ( false )
        d1482 : ( ( Set -> Set ) ∋ ( ( λ x14850 -> ( ( Set -> Set ) ∋ ( ( λ x14860 -> if false then Bool else x14850 ) ) ) $ ( x14850 ) ) ) ) $ ( if true then Bool else Bool )
        d1482 = if ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> d1015 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14840 -> x14840 ) ) ) $ ( true ) else if false then d1307 else d688
        d1487 : ( ( Set -> Set ) ∋ ( ( λ x14900 -> if false then x14900 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1487 = if ( ( Bool -> Bool ) ∋ ( ( λ x14880 -> x14880 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14890 -> d254 ) ) ) $ ( true ) else if false then true else true
        d1491 : ( ( Set -> Set ) ∋ ( ( λ x14930 -> ( ( Set -> Set ) ∋ ( ( λ x14940 -> if true then x14930 else Bool ) ) ) $ ( x14930 ) ) ) ) $ ( if false then Bool else Bool )
        d1491 = if if true then d1070 else d1401 then ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> d838 ) ) ) $ ( true ) else if d761 then false else false
        d1495 : ( ( Set -> Set ) ∋ ( ( λ x14970 -> ( ( Set -> Set ) ∋ ( ( λ x14980 -> if true then x14980 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1495 = ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> if true then d937 else false ) ) ) $ ( if d97 then d945 else d446 )
        d1499 : ( ( Set -> Set ) ∋ ( ( λ x15020 -> ( ( Set -> Set ) ∋ ( ( λ x15030 -> if true then Bool else Bool ) ) ) $ ( x15020 ) ) ) ) $ ( if false then Bool else Bool )
        d1499 = ( ( Bool -> Bool ) ∋ ( ( λ x15000 -> ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> if x15010 then x15010 else d945 ) ) ) $ ( x15000 ) ) ) ) $ ( if d73 then false else true )
        d1504 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1504 = if ( ( Bool -> Bool ) ∋ ( ( λ x15050 -> x15050 ) ) ) $ ( d553 ) then if true then false else d1302 else ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> x15060 ) ) ) $ ( d748 )
        d1507 : ( ( Set -> Set ) ∋ ( ( λ x15100 -> if false then x15100 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1507 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> d321 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> x15090 ) ) ) $ ( false )
        d1511 : if false then ( ( Set -> Set ) ∋ ( ( λ x15140 -> x15140 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15150 -> Bool ) ) ) $ ( Bool )
        d1511 = ( ( Bool -> Bool ) ∋ ( ( λ x15120 -> ( ( Bool -> Bool ) ∋ ( ( λ x15130 -> if true then d1214 else x15130 ) ) ) $ ( d230 ) ) ) ) $ ( if d176 then d82 else d321 )
        d1516 : ( ( Set -> Set ) ∋ ( ( λ x15190 -> if true then x15190 else x15190 ) ) ) $ ( if false then Bool else Bool )
        d1516 = ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> ( ( Bool -> Bool ) ∋ ( ( λ x15180 -> if false then x15170 else x15180 ) ) ) $ ( false ) ) ) ) $ ( if d155 then d829 else true )
        d1520 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1520 = ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> ( ( Bool -> Bool ) ∋ ( ( λ x15220 -> if d1442 then x15220 else x15210 ) ) ) $ ( d1020 ) ) ) ) $ ( if false then true else false )
        d1523 : ( ( Set -> Set ) ∋ ( ( λ x15250 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1523 = ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> if x15240 then x15240 else d1395 ) ) ) $ ( if d901 then d1070 else false )
        d1526 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1526 = if if d931 then false else d421 then ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> false ) ) ) $ ( d325 )
        d1529 : if true then ( ( Set -> Set ) ∋ ( ( λ x15320 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1529 = ( ( Bool -> Bool ) ∋ ( ( λ x15300 -> ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> if true then d524 else d998 ) ) ) $ ( d291 ) ) ) ) $ ( if true then d51 else true )
        d1533 : ( ( Set -> Set ) ∋ ( ( λ x15360 -> ( ( Set -> Set ) ∋ ( ( λ x15370 -> if false then x15370 else x15360 ) ) ) $ ( x15360 ) ) ) ) $ ( if false then Bool else Bool )
        d1533 = if ( ( Bool -> Bool ) ∋ ( ( λ x15340 -> x15340 ) ) ) $ ( d1461 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> false ) ) ) $ ( d1094 ) else if d182 then d421 else true
        d1538 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1538 = if ( ( Bool -> Bool ) ∋ ( ( λ x15390 -> x15390 ) ) ) $ ( d894 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> false ) ) ) $ ( d88 )
        d1541 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1541 = ( ( Bool -> Bool ) ∋ ( ( λ x15420 -> ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> if x15420 then d152 else x15420 ) ) ) $ ( x15420 ) ) ) ) $ ( if d1352 then d384 else d1183 )
        d1544 : ( ( Set -> Set ) ∋ ( ( λ x15470 -> ( ( Set -> Set ) ∋ ( ( λ x15480 -> if false then x15480 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1544 = ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> if x15460 then x15450 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d479 else d510 )
        d1549 : ( ( Set -> Set ) ∋ ( ( λ x15510 -> if true then x15510 else x15510 ) ) ) $ ( if false then Bool else Bool )
        d1549 = if ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> x15500 ) ) ) $ ( false ) then if d209 then d347 else d206 else if true then false else d502
        d1552 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15540 -> x15540 ) ) ) $ ( Bool )
        d1552 = if if d761 then false else d1529 then if d1328 then d1401 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> d524 ) ) ) $ ( d85 )
        d1555 : ( ( Set -> Set ) ∋ ( ( λ x15570 -> ( ( Set -> Set ) ∋ ( ( λ x15580 -> if true then Bool else x15570 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1555 = if if true then true else d983 then ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> false ) ) ) $ ( d152 ) else if true then d494 else false
        d1559 : ( ( Set -> Set ) ∋ ( ( λ x15620 -> ( ( Set -> Set ) ∋ ( ( λ x15630 -> if false then Bool else Bool ) ) ) $ ( x15620 ) ) ) ) $ ( if false then Bool else Bool )
        d1559 = ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> if x15600 then d1249 else d918 ) ) ) $ ( d152 ) ) ) ) $ ( if d962 then true else d761 )
        d1564 : ( ( Set -> Set ) ∋ ( ( λ x15660 -> if true then x15660 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1564 = ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> if true then x15650 else x15650 ) ) ) $ ( if d785 then d372 else d188 )
        d1567 : ( ( Set -> Set ) ∋ ( ( λ x15680 -> ( ( Set -> Set ) ∋ ( ( λ x15690 -> if false then x15690 else x15690 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1567 = if if false then d113 else d628 then if d142 then d438 else d1507 else if d510 then false else false
        d1570 : ( ( Set -> Set ) ∋ ( ( λ x15730 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1570 = if if d1056 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x15710 -> true ) ) ) $ ( d1555 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> d277 ) ) ) $ ( false )
        d1574 : ( ( Set -> Set ) ∋ ( ( λ x15760 -> ( ( Set -> Set ) ∋ ( ( λ x15770 -> if true then x15760 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1574 = if if d1479 then d520 else d1395 then ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> d1315 ) ) ) $ ( false ) else if d124 then d60 else d1214
        d1578 : ( ( Set -> Set ) ∋ ( ( λ x15810 -> ( ( Set -> Set ) ∋ ( ( λ x15820 -> if false then Bool else x15820 ) ) ) $ ( x15810 ) ) ) ) $ ( if false then Bool else Bool )
        d1578 = ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> ( ( Bool -> Bool ) ∋ ( ( λ x15800 -> if true then false else d656 ) ) ) $ ( d1331 ) ) ) ) $ ( if d1378 then d1297 else true )
        d1583 : if true then ( ( Set -> Set ) ∋ ( ( λ x15860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15870 -> x15870 ) ) ) $ ( Bool )
        d1583 = ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> ( ( Bool -> Bool ) ∋ ( ( λ x15850 -> if d817 then d885 else x15840 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d502 )
        d1588 : ( ( Set -> Set ) ∋ ( ( λ x15900 -> ( ( Set -> Set ) ∋ ( ( λ x15910 -> if true then Bool else x15910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1588 = ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> if x15890 then x15890 else true ) ) ) $ ( if d1221 then true else d485 )
        d1592 : if false then ( ( Set -> Set ) ∋ ( ( λ x15950 -> x15950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1592 = if ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15940 -> d585 ) ) ) $ ( true ) else if d122 then true else d398
        d1596 : ( ( Set -> Set ) ∋ ( ( λ x15990 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1596 = if ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> x15970 ) ) ) $ ( d135 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15980 -> false ) ) ) $ ( true ) else if false then d1479 else d444
        d1600 : ( ( Set -> Set ) ∋ ( ( λ x16030 -> ( ( Set -> Set ) ∋ ( ( λ x16040 -> if false then x16040 else Bool ) ) ) $ ( x16030 ) ) ) ) $ ( if true then Bool else Bool )
        d1600 = ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> if d927 then x16010 else d1507 ) ) ) $ ( true ) ) ) ) $ ( if true then d1307 else d1009 )
        d1605 : ( ( Set -> Set ) ∋ ( ( λ x16070 -> ( ( Set -> Set ) ∋ ( ( λ x16080 -> if true then x16070 else x16070 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1605 = ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> if false then x16060 else false ) ) ) $ ( if false then true else d329 )
        d1609 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16120 -> x16120 ) ) ) $ ( Bool )
        d1609 = if ( ( Bool -> Bool ) ∋ ( ( λ x16100 -> x16100 ) ) ) $ ( d246 ) then if d230 then d1209 else d668 else ( ( Bool -> Bool ) ∋ ( ( λ x16110 -> d135 ) ) ) $ ( d1044 )
        d1613 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16160 -> Bool ) ) ) $ ( Bool )
        d1613 = ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> ( ( Bool -> Bool ) ∋ ( ( λ x16150 -> if true then false else x16140 ) ) ) $ ( true ) ) ) ) $ ( if true then d1386 else true )
        d1617 : if false then ( ( Set -> Set ) ∋ ( ( λ x16200 -> x16200 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1617 = ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> if d216 then d1570 else d418 ) ) ) $ ( d692 ) ) ) ) $ ( if true then d418 else false )
        d1621 : ( ( Set -> Set ) ∋ ( ( λ x16240 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1621 = ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> ( ( Bool -> Bool ) ∋ ( ( λ x16230 -> if x16220 then x16230 else x16220 ) ) ) $ ( d945 ) ) ) ) $ ( if d1094 then d163 else true )
        d1625 : ( ( Set -> Set ) ∋ ( ( λ x16270 -> ( ( Set -> Set ) ∋ ( ( λ x16280 -> if false then Bool else Bool ) ) ) $ ( x16270 ) ) ) ) $ ( if false then Bool else Bool )
        d1625 = if if d1487 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x16260 -> d60 ) ) ) $ ( d1297 ) else if d1555 then d1447 else false
        d1629 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16330 -> Bool ) ) ) $ ( Bool )
        d1629 = if ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> d1472 ) ) ) $ ( d1538 )
        d1634 : ( ( Set -> Set ) ∋ ( ( λ x16360 -> if true then x16360 else x16360 ) ) ) $ ( if false then Bool else Bool )
        d1634 = if if d679 then d1315 else true then if false then d725 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> x16350 ) ) ) $ ( d1321 )
        d1637 : ( ( Set -> Set ) ∋ ( ( λ x16390 -> if true then x16390 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1637 = if if true then true else d520 then ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> x16380 ) ) ) $ ( d668 ) else if true then false else d524
        d1640 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16430 -> Bool ) ) ) $ ( Bool )
        d1640 = if ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> x16410 ) ) ) $ ( d1474 ) then if d265 then d256 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16420 -> d1198 ) ) ) $ ( d734 )
        d1644 : ( ( Set -> Set ) ∋ ( ( λ x16460 -> ( ( Set -> Set ) ∋ ( ( λ x16470 -> if true then Bool else x16470 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1644 = ( ( Bool -> Bool ) ∋ ( ( λ x16450 -> if x16450 then x16450 else x16450 ) ) ) $ ( if d785 then d1523 else d1495 )
        d1648 : ( ( Set -> Set ) ∋ ( ( λ x16510 -> ( ( Set -> Set ) ∋ ( ( λ x16520 -> if false then Bool else Bool ) ) ) $ ( x16510 ) ) ) ) $ ( if false then Bool else Bool )
        d1648 = if ( ( Bool -> Bool ) ∋ ( ( λ x16490 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> x16500 ) ) ) $ ( true ) else if d1040 then true else d368
        d1653 : ( ( Set -> Set ) ∋ ( ( λ x16550 -> ( ( Set -> Set ) ∋ ( ( λ x16560 -> if false then x16560 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1653 = ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> if d877 then false else d962 ) ) ) $ ( if d1244 then d1469 else false )
        d1657 : if false then ( ( Set -> Set ) ∋ ( ( λ x16600 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1657 = if ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> true ) ) ) $ ( false ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> true ) ) ) $ ( false )
        d1661 : if false then ( ( Set -> Set ) ∋ ( ( λ x16620 -> x16620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16630 -> x16630 ) ) ) $ ( Bool )
        d1661 = if if true then d1070 else d262 then if true then d1357 else d908 else if d1613 then d639 else false
        d1664 : ( ( Set -> Set ) ∋ ( ( λ x16660 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1664 = ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> if true then false else x16650 ) ) ) $ ( if d1388 then d368 else false )
        d1667 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1667 = if ( ( Bool -> Bool ) ∋ ( ( λ x16680 -> x16680 ) ) ) $ ( d934 ) then if d986 then d1570 else d451 else if false then false else d1285
        d1669 : ( ( Set -> Set ) ∋ ( ( λ x16720 -> ( ( Set -> Set ) ∋ ( ( λ x16730 -> if false then x16720 else Bool ) ) ) $ ( x16720 ) ) ) ) $ ( if false then Bool else Bool )
        d1669 = if ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> true ) ) ) $ ( true ) then if false then d709 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> false ) ) ) $ ( true )
        d1674 : ( ( Set -> Set ) ∋ ( ( λ x16770 -> ( ( Set -> Set ) ∋ ( ( λ x16780 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1674 = ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> if x16750 then true else d562 ) ) ) $ ( d1564 ) ) ) ) $ ( if false then d1555 else d329 )
        d1679 : ( ( Set -> Set ) ∋ ( ( λ x16820 -> if true then Bool else x16820 ) ) ) $ ( if false then Bool else Bool )
        d1679 = ( ( Bool -> Bool ) ∋ ( ( λ x16800 -> ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> if true then d1229 else x16800 ) ) ) $ ( true ) ) ) ) $ ( if d621 then false else d1434 )