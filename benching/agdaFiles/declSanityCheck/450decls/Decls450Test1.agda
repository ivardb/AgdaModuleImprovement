module Decls450Test1  where
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
        d1 : if true then ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if x20 then false else false ) ) ) $ ( if true then false else true )
        d5 : if false then ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if false then d1 else x60 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then d1 else d1 )
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d1 then d5 else x110 ) ) ) $ ( x100 ) ) ) ) $ ( if true then d1 else d1 )
        d12 : if false then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if x130 then d9 else false ) ) ) $ ( if d1 then true else d5 )
        d14 : if false then ( ( Set -> Set ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( Bool )
        d14 = if ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d12 ) ) ) $ ( false ) then if d5 then true else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x160 -> true ) ) ) $ ( d5 )
        d19 : if false then ( ( Set -> Set ) ∋ ( ( λ x220 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d19 = if ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d1 ) ) ) $ ( d9 ) then if d14 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( true )
        d23 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if x250 then d19 else d9 ) ) ) $ ( x240 ) ) ) ) $ ( if true then d19 else d19 )
        d27 : if false then ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if d14 then d1 else d23 ) ) ) $ ( if true then true else true )
        d30 : if true then ( ( Set -> Set ) ∋ ( ( λ x330 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if x310 then d5 else x320 ) ) ) $ ( false ) ) ) ) $ ( if d19 then d1 else true )
        d34 : if false then ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if x360 then true else x360 ) ) ) $ ( true ) ) ) ) $ ( if true then d5 else true )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x410 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = if ( ( Bool -> Bool ) ∋ ( ( λ x400 -> true ) ) ) $ ( false ) then if false then d14 else d27 else if d5 then true else true
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if false then false else d1 ) ) ) $ ( false ) ) ) ) $ ( if d27 then d14 else true )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x480 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d45 = if if true then d19 else false then ( ( Bool -> Bool ) ∋ ( ( λ x460 -> true ) ) ) $ ( d34 ) else if true then d42 else false
        d49 : if true then ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if false then d23 else true ) ) ) $ ( x500 ) ) ) ) $ ( if d5 then d9 else d23 )
        d54 : if true then ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if true then true else x550 ) ) ) $ ( x550 ) ) ) ) $ ( if false then true else d12 )
        d58 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if d12 then x590 else true ) ) ) $ ( if d54 then false else false )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> if true then x650 else x650 ) ) ) $ ( x640 ) ) ) ) $ ( if false then Bool else Bool )
        d61 = if ( ( Bool -> Bool ) ∋ ( ( λ x620 -> false ) ) ) $ ( d45 ) then if d14 then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( d9 )
        d66 : if true then ( ( Set -> Set ) ∋ ( ( λ x680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( Bool )
        d66 = if if false then d54 else d49 then if false then false else d45 else ( ( Bool -> Bool ) ∋ ( ( λ x670 -> false ) ) ) $ ( false )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if false then false else d23 ) ) ) $ ( if d58 then d27 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if false then x760 else Bool ) ) ) $ ( if false then Bool else Bool )
        d74 = if if d49 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x750 -> false ) ) ) $ ( d5 ) else if d66 then false else d42
        d77 : if true then ( ( Set -> Set ) ∋ ( ( λ x800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( Bool )
        d77 = if if d19 then false else d66 then ( ( Bool -> Bool ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( d58 ) else ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( d58 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> ( ( Bool -> Bool ) ∋ ( ( λ x840 -> if false then d39 else d12 ) ) ) $ ( d49 ) ) ) ) $ ( if false then false else true )
        d87 : if true then if true then Bool else Bool else if false then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if d9 then false else true ) ) ) $ ( if d30 then true else d9 )
        d89 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if x900 then x900 else true ) ) ) $ ( if false then false else d42 )
        d92 : if false then ( ( Set -> Set ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x950 -> Bool ) ) ) $ ( Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if true then d54 else x930 ) ) ) $ ( if d1 then d14 else d12 )
        d96 : if true then ( ( Set -> Set ) ∋ ( ( λ x980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x990 -> Bool ) ) ) $ ( Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if x970 then false else false ) ) ) $ ( if d87 then d74 else d12 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then Bool else x1020 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if d54 then d92 else d12 ) ) ) $ ( if false then d89 else d82 )
        d104 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1070 -> Bool ) ) ) $ ( Bool )
        d104 = if ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> d92 ) ) ) $ ( d14 ) then if d14 then d23 else d27 else ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( true )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> if false then Bool else x1110 ) ) ) $ ( x1110 ) ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> if x1100 then x1090 else false ) ) ) $ ( x1090 ) ) ) ) $ ( if d12 then false else false )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then Bool else x1160 ) ) ) $ ( x1150 ) ) ) ) $ ( if true then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if false then d45 else d45 ) ) ) $ ( if true then d100 else d49 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> if false then x1210 else x1210 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d117 = if ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> x1190 ) ) ) $ ( d92 ) else if true then true else d1
        d122 : if false then ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d122 = if if d39 then d77 else d19 then if d34 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( false )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> if true then Bool else Bool ) ) ) $ ( x1280 ) ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if d113 then true else x1260 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d82 )
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1330 -> Bool ) ) ) $ ( Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if true then x1310 else true ) ) ) $ ( if true then true else true )
        d134 : if true then ( ( Set -> Set ) ∋ ( ( λ x1370 -> x1370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> if x1360 then x1350 else x1350 ) ) ) $ ( false ) ) ) ) $ ( if d58 then false else true )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then Bool else x1410 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if d39 then d70 else d96 ) ) ) $ ( if d14 then d49 else false )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then x1440 else x1450 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d142 = if if false then false else false then if d82 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( d130 )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> if true then Bool else x1480 ) ) ) $ ( x1480 ) ) ) ) $ ( if true then Bool else Bool )
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> if d77 then d1 else x1470 ) ) ) $ ( if d87 then d117 else false )
        d150 : if false then ( ( Set -> Set ) ∋ ( ( λ x1520 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d150 = if if d108 then false else d100 then if false then d74 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> true ) ) ) $ ( false )
        d153 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if false then x1560 else x1560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if true then d34 else d104 ) ) ) $ ( d42 ) ) ) ) $ ( if true then false else true )
        d158 : if true then ( ( Set -> Set ) ∋ ( ( λ x1610 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d158 = if if false then d45 else d12 then ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d96 ) ) ) $ ( d14 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> true ) ) ) $ ( false )
        d162 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1650 -> Bool ) ) ) $ ( Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> if x1630 then d146 else d134 ) ) ) $ ( x1630 ) ) ) ) $ ( if d150 then false else d130 )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then x1680 else Bool ) ) ) $ ( if false then Bool else Bool )
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if d162 then true else false ) ) ) $ ( if true then d125 else false )
        d169 : if false then ( ( Set -> Set ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( Bool )
        d169 = if ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> d125 ) ) ) $ ( true ) then if true then d122 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> false ) ) ) $ ( false )
        d174 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1770 -> Bool ) ) ) $ ( Bool )
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if x1750 then x1760 else false ) ) ) $ ( d49 ) ) ) ) $ ( if true then d12 else d30 )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then x1820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d178 = if ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( true )
        d183 : if true then if true then Bool else Bool else if false then Bool else Bool
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if d19 then x1850 else true ) ) ) $ ( true ) ) ) ) $ ( if true then true else d45 )
        d186 : if false then ( ( Set -> Set ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if true then x1880 else d61 ) ) ) $ ( d5 ) ) ) ) $ ( if true then d130 else true )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then x1940 else x1930 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d190 = if if d166 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> false ) ) ) $ ( d87 )
        d195 : if true then ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> false ) ) ) $ ( true ) else if true then false else d89
        d199 : if true then if true then Bool else Bool else if true then Bool else Bool
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if d190 then false else x2000 ) ) ) $ ( if d45 then false else true )
        d201 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> if true then Bool else x2040 ) ) ) $ ( if true then Bool else Bool )
        d201 = if if false then d77 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( true )
        d205 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2070 -> Bool ) ) ) $ ( Bool )
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> if false then x2060 else x2060 ) ) ) $ ( if true then d82 else false )
        d208 : ( ( Set -> Set ) ∋ ( ( λ x2100 -> if true then Bool else x2100 ) ) ) $ ( if true then Bool else Bool )
        d208 = if if false then d146 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> d49 ) ) ) $ ( d58 ) else if d104 then false else false
        d211 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> ( ( Set -> Set ) ∋ ( ( λ x2140 -> if false then x2130 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> if d130 then d92 else d104 ) ) ) $ ( if d23 then d12 else true )
        d215 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( Bool )
        d215 = if if true then true else true then if true then d201 else d208 else if false then true else false
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> if false then true else x2190 ) ) ) $ ( d130 ) ) ) ) $ ( if d153 then d1 else d122 )
        d221 : if false then ( ( Set -> Set ) ∋ ( ( λ x2220 -> x2220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2230 -> Bool ) ) ) $ ( Bool )
        d221 = if if d117 then false else true then if d66 then d1 else d190 else if d12 then false else d199
        d224 : ( ( Set -> Set ) ∋ ( ( λ x2250 -> ( ( Set -> Set ) ∋ ( ( λ x2260 -> if true then x2260 else x2260 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d224 = if if false then false else d215 then if false then d122 else d5 else if d54 then d174 else true
        d227 : if true then if false then Bool else Bool else if true then Bool else Bool
        d227 = if ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> d217 ) ) ) $ ( false ) then if true then d142 else true else if true then d158 else true
        d229 : ( ( Set -> Set ) ∋ ( ( λ x2310 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d229 = if if d1 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> d82 ) ) ) $ ( false ) else if d142 then false else false
        d232 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> if true then x2360 else x2360 ) ) ) $ ( if false then Bool else Bool )
        d232 = if ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> x2350 ) ) ) $ ( d108 )
        d237 : if false then ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d237 = if ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( d195 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> true ) ) ) $ ( false ) else if false then d92 else false
        d241 : if false then if false then Bool else Bool else if false then Bool else Bool
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if true then false else x2420 ) ) ) $ ( d186 ) ) ) ) $ ( if d138 then false else d138 )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> if x2450 then x2450 else true ) ) ) $ ( if false then d174 else true )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then x2490 else x2490 ) ) ) $ ( if false then Bool else Bool )
        d247 = if if d166 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> false ) ) ) $ ( false ) else if true then d61 else d66
        d250 : if false then if false then Bool else Bool else if true then Bool else Bool
        d250 = if if true then d70 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> d241 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> true ) ) ) $ ( false )
        d253 : ( ( Set -> Set ) ∋ ( ( λ x2550 -> ( ( Set -> Set ) ∋ ( ( λ x2560 -> if true then x2550 else Bool ) ) ) $ ( x2550 ) ) ) ) $ ( if true then Bool else Bool )
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if true then x2540 else x2540 ) ) ) $ ( if d201 then d227 else d66 )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x2600 -> ( ( Set -> Set ) ∋ ( ( λ x2610 -> if false then Bool else x2610 ) ) ) $ ( x2600 ) ) ) ) $ ( if false then Bool else Bool )
        d257 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> false ) ) ) $ ( d49 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> x2590 ) ) ) $ ( d19 )
        d262 : if true then ( ( Set -> Set ) ∋ ( ( λ x2650 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2660 -> Bool ) ) ) $ ( Bool )
        d262 = if ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> true ) ) ) $ ( d217 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> d211 ) ) ) $ ( d237 ) else if d183 then true else d158
        d267 : if true then ( ( Set -> Set ) ∋ ( ( λ x2690 -> x2690 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d267 = ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> if x2680 then x2680 else x2680 ) ) ) $ ( if true then d104 else false )
        d270 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> if true then x2720 else Bool ) ) ) $ ( if true then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if false then x2710 else false ) ) ) $ ( if false then d138 else d215 )
        d273 : if true then if true then Bool else Bool else if true then Bool else Bool
        d273 = if if false then false else true then if false then false else false else if true then false else d89
        d274 : if true then ( ( Set -> Set ) ∋ ( ( λ x2770 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> if true then d267 else false ) ) ) $ ( false ) ) ) ) $ ( if d166 then false else true )
        d278 : if false then if false then Bool else Bool else if true then Bool else Bool
        d278 = if ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> x2790 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> d162 ) ) ) $ ( true )
        d282 : if false then if true then Bool else Bool else if true then Bool else Bool
        d282 = if if true then d162 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( true ) else if d1 then d5 else true
        d284 : if false then ( ( Set -> Set ) ∋ ( ( λ x2860 -> x2860 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2870 -> Bool ) ) ) $ ( Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> if d190 then true else d5 ) ) ) $ ( if true then d162 else true )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> if true then x2910 else x2910 ) ) ) $ ( if false then Bool else Bool )
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if d142 then d253 else x2890 ) ) ) $ ( true ) ) ) ) $ ( if true then d89 else d257 )
        d292 : ( ( Set -> Set ) ∋ ( ( λ x2940 -> ( ( Set -> Set ) ∋ ( ( λ x2950 -> if true then x2940 else x2950 ) ) ) $ ( x2940 ) ) ) ) $ ( if true then Bool else Bool )
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> if false then false else x2930 ) ) ) $ ( if d158 then d27 else true )
        d296 : if true then ( ( Set -> Set ) ∋ ( ( λ x2990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3000 -> Bool ) ) ) $ ( Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> if x2970 then x2970 else true ) ) ) $ ( d250 ) ) ) ) $ ( if d224 then true else true )
        d301 : ( ( Set -> Set ) ∋ ( ( λ x3030 -> ( ( Set -> Set ) ∋ ( ( λ x3040 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d301 = if if true then d257 else true then if true then d153 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> false ) ) ) $ ( false )
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> ( ( Set -> Set ) ∋ ( ( λ x3080 -> if false then Bool else Bool ) ) ) $ ( x3070 ) ) ) ) $ ( if true then Bool else Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> if true then true else d247 ) ) ) $ ( if false then true else true )
        d309 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d309 = if ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> d273 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( false ) else if d292 then false else d39
        d313 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> ( ( Set -> Set ) ∋ ( ( λ x3160 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> if true then d174 else d54 ) ) ) $ ( if false then true else false )
        d317 : if true then ( ( Set -> Set ) ∋ ( ( λ x3200 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> if x3190 then d270 else true ) ) ) $ ( x3180 ) ) ) ) $ ( if d153 then d211 else d122 )
        d321 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> if false then x3230 else x3230 ) ) ) $ ( if false then Bool else Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> if d49 then false else d122 ) ) ) $ ( if false then true else true )
        d324 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( Bool )
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> if d282 then d244 else d130 ) ) ) $ ( d5 ) ) ) ) $ ( if false then true else d309 )
        d328 : if false then ( ( Set -> Set ) ∋ ( ( λ x3310 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( Bool )
        d328 = if if d201 then d104 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> false ) ) ) $ ( d19 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> d113 ) ) ) $ ( d288 )
        d333 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> if true then x3360 else Bool ) ) ) $ ( if true then Bool else Bool )
        d333 = if ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> x3340 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> x3350 ) ) ) $ ( true ) else if d215 then true else false
        d337 : if true then ( ( Set -> Set ) ∋ ( ( λ x3390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3400 -> x3400 ) ) ) $ ( Bool )
        d337 = ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> if d232 then x3380 else d305 ) ) ) $ ( if false then d301 else false )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> ( ( Set -> Set ) ∋ ( ( λ x3450 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d341 = if if true then true else d23 then ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> x3430 ) ) ) $ ( d333 )
        d346 : if true then if true then Bool else Bool else if true then Bool else Bool
        d346 = if if d257 then d70 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> d190 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> d117 ) ) ) $ ( d328 )
        d349 : if true then ( ( Set -> Set ) ∋ ( ( λ x3510 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3520 -> Bool ) ) ) $ ( Bool )
        d349 = if ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> true ) ) ) $ ( d34 ) then if d5 then true else false else if d237 then false else d215
        d353 : ( ( Set -> Set ) ∋ ( ( λ x3550 -> ( ( Set -> Set ) ∋ ( ( λ x3560 -> if false then x3560 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> if false then x3540 else x3540 ) ) ) $ ( if false then false else d19 )
        d357 : ( ( Set -> Set ) ∋ ( ( λ x3590 -> ( ( Set -> Set ) ∋ ( ( λ x3600 -> if false then Bool else x3600 ) ) ) $ ( x3590 ) ) ) ) $ ( if false then Bool else Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> if d178 then d178 else d14 ) ) ) $ ( if false then d274 else d70 )
        d361 : ( ( Set -> Set ) ∋ ( ( λ x3640 -> if true then x3640 else x3640 ) ) ) $ ( if true then Bool else Bool )
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> false ) ) ) $ ( false ) else if true then d296 else d278
        d365 : if true then ( ( Set -> Set ) ∋ ( ( λ x3660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( Bool )
        d365 = if if true then d341 else true then if d54 then true else d301 else if d237 then d296 else false
        d368 : if false then ( ( Set -> Set ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d368 = if ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> d23 ) ) ) $ ( d305 ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> d321 ) ) ) $ ( d42 )
        d372 : if false then ( ( Set -> Set ) ∋ ( ( λ x3740 -> x3740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3750 -> x3750 ) ) ) $ ( Bool )
        d372 = if ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> true ) ) ) $ ( d195 ) then if d34 then true else d337 else if d309 then true else true
        d376 : if false then ( ( Set -> Set ) ∋ ( ( λ x3780 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if true then false else d130 ) ) ) $ ( if false then d125 else false )
        d379 : if false then ( ( Set -> Set ) ∋ ( ( λ x3820 -> x3820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3830 -> Bool ) ) ) $ ( Bool )
        d379 = ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> if false then false else x3800 ) ) ) $ ( true ) ) ) ) $ ( if d208 then true else true )
        d384 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> ( ( Set -> Set ) ∋ ( ( λ x3870 -> if true then Bool else x3870 ) ) ) $ ( x3860 ) ) ) ) $ ( if true then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if true then d117 else false ) ) ) $ ( if false then true else d150 )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> if true then Bool else x3900 ) ) ) $ ( if false then Bool else Bool )
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if d42 then true else x3890 ) ) ) $ ( if false then d232 else true )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x3930 -> ( ( Set -> Set ) ∋ ( ( λ x3940 -> if false then Bool else x3940 ) ) ) $ ( x3930 ) ) ) ) $ ( if false then Bool else Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if d229 then d82 else d61 ) ) ) $ ( if d89 then true else true )
        d395 : if true then if false then Bool else Bool else if false then Bool else Bool
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if x3970 then false else d229 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d224 )
        d398 : if true then ( ( Set -> Set ) ∋ ( ( λ x4010 -> x4010 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> if false then d278 else d174 ) ) ) $ ( x3990 ) ) ) ) $ ( if false then false else false )
        d402 : if false then ( ( Set -> Set ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if d353 then d215 else d215 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d92 )
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4090 -> if false then Bool else x4090 ) ) ) $ ( if false then Bool else Bool )
        d406 = if ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> x4070 ) ) ) $ ( false ) then if d333 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> d372 ) ) ) $ ( d391 )
        d410 : ( ( Set -> Set ) ∋ ( ( λ x4130 -> ( ( Set -> Set ) ∋ ( ( λ x4140 -> if false then x4130 else x4130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> if false then d237 else x4120 ) ) ) $ ( false ) ) ) ) $ ( if false then d244 else true )
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> if x4160 then d169 else d70 ) ) ) $ ( if true then true else d229 )
        d418 : ( ( Set -> Set ) ∋ ( ( λ x4210 -> ( ( Set -> Set ) ∋ ( ( λ x4220 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> if d183 then d395 else d288 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d423 : if true then ( ( Set -> Set ) ∋ ( ( λ x4250 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d423 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> true ) ) ) $ ( true ) else if d87 then true else false
        d426 : ( ( Set -> Set ) ∋ ( ( λ x4280 -> ( ( Set -> Set ) ∋ ( ( λ x4290 -> if true then x4290 else x4290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d426 = if if true then false else d365 then ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> d9 ) ) ) $ ( d278 ) else if d23 then false else false
        d430 : if false then if true then Bool else Bool else if false then Bool else Bool
        d430 = if if true then true else true then if d205 then true else d34 else if false then d317 else d309
        d431 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4340 -> Bool ) ) ) $ ( Bool )
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if d353 then true else false ) ) ) $ ( x4320 ) ) ) ) $ ( if d309 then d415 else d305 )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if false then Bool else x4380 ) ) ) $ ( if true then Bool else Bool )
        d435 = if ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d388 ) ) ) $ ( d430 ) then if true then true else d244 else ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> false ) ) ) $ ( true )
        d439 : ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then x4410 else x4410 ) ) ) $ ( if true then Bool else Bool )
        d439 = if if d1 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( d274 ) else if true then d353 else false
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4450 -> ( ( Set -> Set ) ∋ ( ( λ x4460 -> if false then x4450 else x4460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> if true then false else true ) ) ) $ ( x4430 ) ) ) ) $ ( if false then d309 else true )
        d447 : ( ( Set -> Set ) ∋ ( ( λ x4500 -> ( ( Set -> Set ) ∋ ( ( λ x4510 -> if false then x4500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d447 = if ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> true ) ) ) $ ( true ) then if false then d221 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> true ) ) ) $ ( false )
        d452 : if false then if false then Bool else Bool else if false then Bool else Bool
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if x4530 then true else d58 ) ) ) $ ( x4530 ) ) ) ) $ ( if d138 then false else false )
        d455 : ( ( Set -> Set ) ∋ ( ( λ x4580 -> ( ( Set -> Set ) ∋ ( ( λ x4590 -> if true then Bool else Bool ) ) ) $ ( x4580 ) ) ) ) $ ( if true then Bool else Bool )
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> if x4560 then d66 else true ) ) ) $ ( x4560 ) ) ) ) $ ( if d138 then false else d104 )
        d460 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4620 -> Bool ) ) ) $ ( Bool )
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if x4610 then x4610 else x4610 ) ) ) $ ( if false then d282 else d215 )
        d463 : if false then if false then Bool else Bool else if true then Bool else Bool
        d463 = if if true then false else d232 then if d384 then d241 else d406 else if true then d341 else d96
        d464 : ( ( Set -> Set ) ∋ ( ( λ x4680 -> ( ( Set -> Set ) ∋ ( ( λ x4690 -> if false then Bool else Bool ) ) ) $ ( x4680 ) ) ) ) $ ( if true then Bool else Bool )
        d464 = if ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> true ) ) ) $ ( d224 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> d431 ) ) ) $ ( true )
        d470 : if true then if false then Bool else Bool else if false then Bool else Bool
        d470 = if if d270 then d108 else d221 then ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> x4710 ) ) ) $ ( d463 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> d130 ) ) ) $ ( d395 )
        d473 : if true then ( ( Set -> Set ) ∋ ( ( λ x4750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4760 -> Bool ) ) ) $ ( Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if x4740 then x4740 else true ) ) ) $ ( if d439 then d1 else d313 )
        d477 : if false then if false then Bool else Bool else if true then Bool else Bool
        d477 = if if true then d257 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> false ) ) ) $ ( d96 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> x4790 ) ) ) $ ( true )
        d480 : if false then if false then Bool else Bool else if true then Bool else Bool
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> if false then d23 else true ) ) ) $ ( d89 ) ) ) ) $ ( if d447 then false else true )
        d483 : if false then ( ( Set -> Set ) ∋ ( ( λ x4860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( Bool )
        d483 = if ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> true ) ) ) $ ( d174 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( d217 ) else if d104 then d174 else d224
        d488 : if false then if true then Bool else Bool else if true then Bool else Bool
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> if false then d384 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d224 )
        d491 : if false then ( ( Set -> Set ) ∋ ( ( λ x4940 -> x4940 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d491 = if ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> d150 ) ) ) $ ( d423 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> true ) ) ) $ ( d82 ) else if d398 then true else false
        d495 : ( ( Set -> Set ) ∋ ( ( λ x4980 -> ( ( Set -> Set ) ∋ ( ( λ x4990 -> if false then x4990 else x4990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> if x4970 then x4970 else false ) ) ) $ ( x4960 ) ) ) ) $ ( if false then d368 else true )
        d500 : if false then if false then Bool else Bool else if false then Bool else Bool
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> if x5010 then d317 else d174 ) ) ) $ ( true ) ) ) ) $ ( if d45 then d30 else false )
        d503 : ( ( Set -> Set ) ∋ ( ( λ x5060 -> ( ( Set -> Set ) ∋ ( ( λ x5070 -> if false then x5070 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d503 = ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> if false then d284 else x5040 ) ) ) $ ( x5040 ) ) ) ) $ ( if d162 then false else d423 )
        d508 : if true then ( ( Set -> Set ) ∋ ( ( λ x5100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> if d273 then x5090 else x5090 ) ) ) $ ( if d309 then d349 else d153 )
        d512 : if false then if true then Bool else Bool else if true then Bool else Bool
        d512 = if ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> d435 ) ) ) $ ( d439 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> x5140 ) ) ) $ ( d460 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> d463 ) ) ) $ ( d398 )
        d516 : if true then if false then Bool else Bool else if true then Bool else Bool
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> if x5170 then x5170 else x5170 ) ) ) $ ( if d388 then false else false )
        d518 : if true then ( ( Set -> Set ) ∋ ( ( λ x5200 -> x5200 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d518 = if if true then d87 else d262 then if false then true else d270 else ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> d146 ) ) ) $ ( true )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x5230 -> ( ( Set -> Set ) ∋ ( ( λ x5240 -> if true then x5240 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d521 = if if d410 then false else d1 then if d376 then d250 else d508 else ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> true ) ) ) $ ( d313 )
        d525 : if true then ( ( Set -> Set ) ∋ ( ( λ x5280 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d525 = if ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> x5260 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> d49 ) ) ) $ ( d257 ) else if d508 then true else d480
        d529 : if false then ( ( Set -> Set ) ∋ ( ( λ x5310 -> x5310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5320 -> Bool ) ) ) $ ( Bool )
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> if true then true else x5300 ) ) ) $ ( if d477 then true else false )
        d533 : ( ( Set -> Set ) ∋ ( ( λ x5350 -> ( ( Set -> Set ) ∋ ( ( λ x5360 -> if false then x5360 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d533 = if ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> x5340 ) ) ) $ ( true ) then if d483 then d402 else false else if d426 then d455 else true
        d537 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5400 -> Bool ) ) ) $ ( Bool )
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> if x5380 then d410 else true ) ) ) $ ( x5380 ) ) ) ) $ ( if true then d5 else true )
        d541 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5430 -> x5430 ) ) ) $ ( Bool )
        d541 = if ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> d395 ) ) ) $ ( true ) then if false then d241 else d58 else if false then false else true
        d544 : if true then if true then Bool else Bool else if true then Bool else Bool
        d544 = if if true then d166 else d516 then ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> x5450 ) ) ) $ ( d503 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> true ) ) ) $ ( false )
        d547 : if false then ( ( Set -> Set ) ∋ ( ( λ x5490 -> x5490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5500 -> x5500 ) ) ) $ ( Bool )
        d547 = if ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( false ) then if d480 then false else d463 else if true then false else d470
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5540 -> ( ( Set -> Set ) ∋ ( ( λ x5550 -> if true then x5550 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> if x5520 then d365 else x5530 ) ) ) $ ( x5520 ) ) ) ) $ ( if true then d491 else d205 )
        d556 : ( ( Set -> Set ) ∋ ( ( λ x5580 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> if x5570 then x5570 else x5570 ) ) ) $ ( if d27 then false else d410 )
        d559 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> if true then x5610 else Bool ) ) ) $ ( if false then Bool else Bool )
        d559 = if if false then d418 else true then if d61 then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> d376 ) ) ) $ ( d328 )
        d562 : ( ( Set -> Set ) ∋ ( ( λ x5650 -> ( ( Set -> Set ) ∋ ( ( λ x5660 -> if false then Bool else Bool ) ) ) $ ( x5650 ) ) ) ) $ ( if false then Bool else Bool )
        d562 = if ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> d442 ) ) ) $ ( true ) else if false then true else d384
        d567 : if true then if false then Bool else Bool else if false then Bool else Bool
        d567 = ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> if d278 then x5680 else x5690 ) ) ) $ ( false ) ) ) ) $ ( if d503 then d284 else d30 )
        d570 : ( ( Set -> Set ) ∋ ( ( λ x5730 -> ( ( Set -> Set ) ∋ ( ( λ x5740 -> if false then Bool else x5730 ) ) ) $ ( x5730 ) ) ) ) $ ( if false then Bool else Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> if d237 then true else d470 ) ) ) $ ( d508 ) ) ) ) $ ( if d211 then d395 else true )
        d575 : ( ( Set -> Set ) ∋ ( ( λ x5770 -> ( ( Set -> Set ) ∋ ( ( λ x5780 -> if true then Bool else x5770 ) ) ) $ ( x5770 ) ) ) ) $ ( if true then Bool else Bool )
        d575 = if ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> true ) ) ) $ ( d500 ) then if true then false else d284 else if false then d324 else d229
        d579 : ( ( Set -> Set ) ∋ ( ( λ x5810 -> if true then Bool else x5810 ) ) ) $ ( if true then Bool else Bool )
        d579 = if if true then false else d42 then ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> d27 ) ) ) $ ( false ) else if d237 then d117 else true
        d582 : ( ( Set -> Set ) ∋ ( ( λ x5850 -> if true then Bool else x5850 ) ) ) $ ( if true then Bool else Bool )
        d582 = ( ( Bool -> Bool ) ∋ ( ( λ x5830 -> ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> if d398 then x5840 else true ) ) ) $ ( x5830 ) ) ) ) $ ( if d169 then false else true )
        d586 : ( ( Set -> Set ) ∋ ( ( λ x5890 -> ( ( Set -> Set ) ∋ ( ( λ x5900 -> if true then x5890 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d586 = ( ( Bool -> Bool ) ∋ ( ( λ x5870 -> ( ( Bool -> Bool ) ∋ ( ( λ x5880 -> if x5870 then false else true ) ) ) $ ( x5870 ) ) ) ) $ ( if false then d337 else false )
        d591 : if true then ( ( Set -> Set ) ∋ ( ( λ x5940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d591 = if if false then true else d415 then ( ( Bool -> Bool ) ∋ ( ( λ x5920 -> d288 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> d398 ) ) ) $ ( d483 )
        d595 : ( ( Set -> Set ) ∋ ( ( λ x5970 -> ( ( Set -> Set ) ∋ ( ( λ x5980 -> if false then x5970 else x5980 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d595 = ( ( Bool -> Bool ) ∋ ( ( λ x5960 -> if x5960 then d108 else d321 ) ) ) $ ( if true then false else d208 )
        d599 : if false then ( ( Set -> Set ) ∋ ( ( λ x6020 -> x6020 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6030 -> x6030 ) ) ) $ ( Bool )
        d599 = if ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> d353 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6010 -> true ) ) ) $ ( false ) else if d1 then d500 else d113
        d604 : ( ( Set -> Set ) ∋ ( ( λ x6050 -> ( ( Set -> Set ) ∋ ( ( λ x6060 -> if false then x6060 else Bool ) ) ) $ ( x6050 ) ) ) ) $ ( if true then Bool else Bool )
        d604 = if if d199 then true else d521 then if false then d529 else d521 else if d58 then d288 else d483
        d607 : ( ( Set -> Set ) ∋ ( ( λ x6090 -> ( ( Set -> Set ) ∋ ( ( λ x6100 -> if false then Bool else x6090 ) ) ) $ ( x6090 ) ) ) ) $ ( if false then Bool else Bool )
        d607 = if ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> x6080 ) ) ) $ ( d567 ) then if d87 then true else true else if true then d284 else false
        d611 : if false then ( ( Set -> Set ) ∋ ( ( λ x6120 -> x6120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d611 = if if d262 then d512 else false then if false then d559 else d262 else if d82 then d195 else d232
        d613 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6170 -> Bool ) ) ) $ ( Bool )
        d613 = if ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> false ) ) ) $ ( d96 )
        d618 : if false then ( ( Set -> Set ) ∋ ( ( λ x6200 -> x6200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6210 -> x6210 ) ) ) $ ( Bool )
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> if d518 then false else x6190 ) ) ) $ ( if d138 then d324 else d146 )
        d622 : if true then ( ( Set -> Set ) ∋ ( ( λ x6250 -> x6250 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> if true then x6230 else true ) ) ) $ ( x6230 ) ) ) ) $ ( if d512 then true else d42 )
        d626 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6290 -> Bool ) ) ) $ ( Bool )
        d626 = ( ( Bool -> Bool ) ∋ ( ( λ x6270 -> ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> if x6280 then x6280 else false ) ) ) $ ( d23 ) ) ) ) $ ( if d591 then false else d113 )
        d630 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6330 -> x6330 ) ) ) $ ( Bool )
        d630 = if if false then d547 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6310 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> x6320 ) ) ) $ ( false )
        d634 : if true then if true then Bool else Bool else if false then Bool else Bool
        d634 = if if d575 then d430 else d586 then if d559 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> false ) ) ) $ ( false )
        d636 : if true then if true then Bool else Bool else if false then Bool else Bool
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> if x6370 then x6370 else true ) ) ) $ ( if true then d278 else false )
        d638 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6400 -> x6400 ) ) ) $ ( Bool )
        d638 = ( ( Bool -> Bool ) ∋ ( ( λ x6390 -> if x6390 then true else d70 ) ) ) $ ( if true then d208 else false )
        d641 : if true then ( ( Set -> Set ) ∋ ( ( λ x6420 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d641 = if if true then true else true then if d455 then d357 else true else if true then d178 else true
        d643 : if false then ( ( Set -> Set ) ∋ ( ( λ x6470 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d643 = if ( ( Bool -> Bool ) ∋ ( ( λ x6440 -> d195 ) ) ) $ ( d190 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> d186 ) ) ) $ ( d634 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> d324 ) ) ) $ ( d402 )
        d648 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6500 -> Bool ) ) ) $ ( Bool )
        d648 = ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> if d122 then d250 else d92 ) ) ) $ ( if false then d508 else d398 )
        d651 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6530 -> Bool ) ) ) $ ( Bool )
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> if d426 then x6520 else true ) ) ) $ ( if d426 then d174 else false )
        d654 : if false then if true then Bool else Bool else if true then Bool else Bool
        d654 = ( ( Bool -> Bool ) ∋ ( ( λ x6550 -> ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> if x6550 then d470 else false ) ) ) $ ( false ) ) ) ) $ ( if d1 then d353 else d391 )
        d657 : ( ( Set -> Set ) ∋ ( ( λ x6600 -> if false then Bool else x6600 ) ) ) $ ( if false then Bool else Bool )
        d657 = ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> ( ( Bool -> Bool ) ∋ ( ( λ x6590 -> if x6590 then true else x6580 ) ) ) $ ( false ) ) ) ) $ ( if d278 then true else false )
        d661 : if true then if true then Bool else Bool else if true then Bool else Bool
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> if false then x6620 else d518 ) ) ) $ ( if false then true else d337 )
        d663 : if true then ( ( Set -> Set ) ∋ ( ( λ x6650 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6660 -> x6660 ) ) ) $ ( Bool )
        d663 = if ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> false ) ) ) $ ( false ) then if false then true else false else if false then d211 else d636
        d667 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6680 -> Bool ) ) ) $ ( Bool )
        d667 = if if false then d607 else d435 then if true then d500 else true else if true then d604 else d313
        d669 : ( ( Set -> Set ) ∋ ( ( λ x6710 -> ( ( Set -> Set ) ∋ ( ( λ x6720 -> if true then Bool else Bool ) ) ) $ ( x6710 ) ) ) ) $ ( if false then Bool else Bool )
        d669 = ( ( Bool -> Bool ) ∋ ( ( λ x6700 -> if x6700 then d537 else d439 ) ) ) $ ( if false then true else true )
        d673 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6760 -> x6760 ) ) ) $ ( Bool )
        d673 = ( ( Bool -> Bool ) ∋ ( ( λ x6740 -> ( ( Bool -> Bool ) ∋ ( ( λ x6750 -> if x6740 then d641 else d368 ) ) ) $ ( x6740 ) ) ) ) $ ( if d582 then false else false )
        d677 : if false then ( ( Set -> Set ) ∋ ( ( λ x6790 -> x6790 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> if x6780 then false else true ) ) ) $ ( if true then d547 else true )
        d680 : ( ( Set -> Set ) ∋ ( ( λ x6840 -> ( ( Set -> Set ) ∋ ( ( λ x6850 -> if false then x6840 else Bool ) ) ) $ ( x6840 ) ) ) ) $ ( if false then Bool else Bool )
        d680 = if ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> x6810 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> x6820 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6830 -> false ) ) ) $ ( d253 )
        d686 : if false then ( ( Set -> Set ) ∋ ( ( λ x6880 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d686 = ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> if x6870 then false else true ) ) ) $ ( if false then true else d525 )
        d689 : if true then ( ( Set -> Set ) ∋ ( ( λ x6920 -> x6920 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> if d142 then false else x6900 ) ) ) $ ( true ) ) ) ) $ ( if false then d537 else d42 )
        d693 : if false then ( ( Set -> Set ) ∋ ( ( λ x6960 -> x6960 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x6940 -> ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> if d579 then true else x6950 ) ) ) $ ( x6940 ) ) ) ) $ ( if d442 then true else d439 )
        d697 : if true then ( ( Set -> Set ) ∋ ( ( λ x7000 -> x7000 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d697 = ( ( Bool -> Bool ) ∋ ( ( λ x6980 -> ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> if d250 then d442 else true ) ) ) $ ( true ) ) ) ) $ ( if d146 then true else d418 )
        d701 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7030 -> Bool ) ) ) $ ( Bool )
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> if x7020 then false else x7020 ) ) ) $ ( if true then true else d529 )
        d704 : ( ( Set -> Set ) ∋ ( ( λ x7060 -> ( ( Set -> Set ) ∋ ( ( λ x7070 -> if false then x7070 else Bool ) ) ) $ ( x7060 ) ) ) ) $ ( if false then Bool else Bool )
        d704 = if ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> x7050 ) ) ) $ ( d547 ) then if d680 then false else d205 else if d626 then false else false
        d708 : ( ( Set -> Set ) ∋ ( ( λ x7100 -> if false then Bool else x7100 ) ) ) $ ( if true then Bool else Bool )
        d708 = if ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> d651 ) ) ) $ ( true ) then if d253 then true else d346 else if false then d447 else d174
        d711 : ( ( Set -> Set ) ∋ ( ( λ x7130 -> if false then Bool else x7130 ) ) ) $ ( if true then Bool else Bool )
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> if x7120 then false else d398 ) ) ) $ ( if true then true else true )
        d714 : if true then ( ( Set -> Set ) ∋ ( ( λ x7160 -> x7160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7170 -> Bool ) ) ) $ ( Bool )
        d714 = ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> if d146 then false else d39 ) ) ) $ ( if d89 then d262 else true )
        d718 : ( ( Set -> Set ) ∋ ( ( λ x7210 -> ( ( Set -> Set ) ∋ ( ( λ x7220 -> if false then x7210 else Bool ) ) ) $ ( x7210 ) ) ) ) $ ( if true then Bool else Bool )
        d718 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> d122 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> false ) ) ) $ ( d270 )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x7260 -> if false then x7260 else Bool ) ) ) $ ( if true then Bool else Bool )
        d723 = if ( ( Bool -> Bool ) ∋ ( ( λ x7240 -> false ) ) ) $ ( d14 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> d586 ) ) ) $ ( false ) else if true then d23 else true
        d727 : ( ( Set -> Set ) ∋ ( ( λ x7300 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d727 = if if d626 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> d483 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> true ) ) ) $ ( d296 )
        d731 : ( ( Set -> Set ) ∋ ( ( λ x7330 -> ( ( Set -> Set ) ∋ ( ( λ x7340 -> if true then Bool else x7330 ) ) ) $ ( x7330 ) ) ) ) $ ( if true then Bool else Bool )
        d731 = if ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> true ) ) ) $ ( d190 ) then if d74 then false else true else if true then false else false
        d735 : if false then ( ( Set -> Set ) ∋ ( ( λ x7360 -> x7360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d735 = if if d607 then d711 else d518 then if false then d731 else d195 else if true then true else d138
        d737 : if true then ( ( Set -> Set ) ∋ ( ( λ x7390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7400 -> Bool ) ) ) $ ( Bool )
        d737 = ( ( Bool -> Bool ) ∋ ( ( λ x7380 -> if false then x7380 else true ) ) ) $ ( if true then false else true )
        d741 : ( ( Set -> Set ) ∋ ( ( λ x7430 -> ( ( Set -> Set ) ∋ ( ( λ x7440 -> if false then Bool else Bool ) ) ) $ ( x7430 ) ) ) ) $ ( if false then Bool else Bool )
        d741 = ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> if d651 then false else d247 ) ) ) $ ( if true then true else false )
        d745 : ( ( Set -> Set ) ∋ ( ( λ x7480 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d745 = ( ( Bool -> Bool ) ∋ ( ( λ x7460 -> ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> if d708 then false else x7470 ) ) ) $ ( x7460 ) ) ) ) $ ( if d313 then d731 else false )
        d749 : ( ( Set -> Set ) ∋ ( ( λ x7510 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> if true then x7500 else d491 ) ) ) $ ( if d82 then d529 else d737 )
        d752 : ( ( Set -> Set ) ∋ ( ( λ x7540 -> ( ( Set -> Set ) ∋ ( ( λ x7550 -> if true then x7550 else x7540 ) ) ) $ ( x7540 ) ) ) ) $ ( if false then Bool else Bool )
        d752 = ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> if x7530 then d556 else x7530 ) ) ) $ ( if d365 then true else d495 )
        d756 : ( ( Set -> Set ) ∋ ( ( λ x7580 -> if true then x7580 else Bool ) ) ) $ ( if false then Bool else Bool )
        d756 = if if d657 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x7570 -> x7570 ) ) ) $ ( false ) else if d142 then d87 else false
        d759 : if true then if false then Bool else Bool else if true then Bool else Bool
        d759 = if ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> true ) ) ) $ ( true ) then if true then false else d604 else ( ( Bool -> Bool ) ∋ ( ( λ x7610 -> x7610 ) ) ) $ ( false )
        d762 : ( ( Set -> Set ) ∋ ( ( λ x7650 -> ( ( Set -> Set ) ∋ ( ( λ x7660 -> if true then x7660 else Bool ) ) ) $ ( x7650 ) ) ) ) $ ( if true then Bool else Bool )
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> if x7630 then d278 else true ) ) ) $ ( d328 ) ) ) ) $ ( if d134 then true else true )
        d767 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7690 -> x7690 ) ) ) $ ( Bool )
        d767 = if ( ( Bool -> Bool ) ∋ ( ( λ x7680 -> x7680 ) ) ) $ ( false ) then if false then true else true else if d379 then true else true
        d770 : if false then if false then Bool else Bool else if false then Bool else Bool
        d770 = if if d150 then d521 else d324 then if false then d321 else d704 else ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> false ) ) ) $ ( true )
        d772 : ( ( Set -> Set ) ∋ ( ( λ x7740 -> ( ( Set -> Set ) ∋ ( ( λ x7750 -> if true then Bool else x7750 ) ) ) $ ( x7740 ) ) ) ) $ ( if false then Bool else Bool )
        d772 = if ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> x7730 ) ) ) $ ( d762 ) then if false then true else false else if d54 then d415 else d741
        d776 : ( ( Set -> Set ) ∋ ( ( λ x7780 -> if false then x7780 else Bool ) ) ) $ ( if true then Bool else Bool )
        d776 = if if d317 then d648 else d224 then if d435 then d667 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7770 -> d229 ) ) ) $ ( d551 )
        d779 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7820 -> Bool ) ) ) $ ( Bool )
        d779 = ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> if false then d677 else x7800 ) ) ) $ ( true ) ) ) ) $ ( if d205 then d776 else d45 )
        d783 : ( ( Set -> Set ) ∋ ( ( λ x7850 -> ( ( Set -> Set ) ∋ ( ( λ x7860 -> if true then x7860 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d783 = ( ( Bool -> Bool ) ∋ ( ( λ x7840 -> if true then false else d321 ) ) ) $ ( if true then true else false )
        d787 : ( ( Set -> Set ) ∋ ( ( λ x7910 -> ( ( Set -> Set ) ∋ ( ( λ x7920 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d787 = if ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> true ) ) ) $ ( d74 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7900 -> x7900 ) ) ) $ ( d221 )
        d793 : if true then ( ( Set -> Set ) ∋ ( ( λ x7970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7980 -> x7980 ) ) ) $ ( Bool )
        d793 = if ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> x7940 ) ) ) $ ( d125 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> x7950 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> d77 ) ) ) $ ( d169 )
        d799 : ( ( Set -> Set ) ∋ ( ( λ x8020 -> if true then Bool else x8020 ) ) ) $ ( if true then Bool else Bool )
        d799 = ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> ( ( Bool -> Bool ) ∋ ( ( λ x8010 -> if d626 then x8010 else true ) ) ) $ ( d582 ) ) ) ) $ ( if true then d142 else d423 )
        d803 : if false then ( ( Set -> Set ) ∋ ( ( λ x8050 -> x8050 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d803 = if if true then d158 else d253 then ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> true ) ) ) $ ( true ) else if d529 then d525 else d430
        d806 : ( ( Set -> Set ) ∋ ( ( λ x8090 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d806 = if ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> x8070 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> d27 ) ) ) $ ( true ) else if true then d488 else d328
        d810 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8120 -> x8120 ) ) ) $ ( Bool )
        d810 = if ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> x8110 ) ) ) $ ( false ) then if d799 then true else true else if true then d745 else d556
        d813 : ( ( Set -> Set ) ∋ ( ( λ x8150 -> if false then x8150 else Bool ) ) ) $ ( if true then Bool else Bool )
        d813 = if ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> x8140 ) ) ) $ ( d30 ) then if d190 then d582 else true else if true then d113 else d626
        d816 : ( ( Set -> Set ) ∋ ( ( λ x8180 -> ( ( Set -> Set ) ∋ ( ( λ x8190 -> if true then x8190 else Bool ) ) ) $ ( x8180 ) ) ) ) $ ( if true then Bool else Bool )
        d816 = if ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> d9 ) ) ) $ ( false ) then if d518 then d667 else false else if d567 then true else true
        d820 : if false then ( ( Set -> Set ) ∋ ( ( λ x8220 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d820 = ( ( Bool -> Bool ) ∋ ( ( λ x8210 -> if d237 then x8210 else d45 ) ) ) $ ( if d525 then true else false )
        d823 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8260 -> x8260 ) ) ) $ ( Bool )
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> if x8250 then d599 else x8240 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d244 )
        d827 : ( ( Set -> Set ) ∋ ( ( λ x8280 -> ( ( Set -> Set ) ∋ ( ( λ x8290 -> if true then Bool else x8280 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d827 = if if d559 then d12 else d34 then if d697 then d541 else d477 else if d402 then d45 else true
        d830 : if true then if true then Bool else Bool else if false then Bool else Bool
        d830 = if ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> false ) ) ) $ ( d113 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> d305 ) ) ) $ ( d525 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8330 -> true ) ) ) $ ( d537 )
        d834 : ( ( Set -> Set ) ∋ ( ( λ x8380 -> ( ( Set -> Set ) ∋ ( ( λ x8390 -> if false then x8380 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d834 = if ( ( Bool -> Bool ) ∋ ( ( λ x8350 -> x8350 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8360 -> x8360 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> true ) ) ) $ ( true )
        d840 : ( ( Set -> Set ) ∋ ( ( λ x8430 -> ( ( Set -> Set ) ∋ ( ( λ x8440 -> if true then x8440 else x8430 ) ) ) $ ( x8430 ) ) ) ) $ ( if true then Bool else Bool )
        d840 = ( ( Bool -> Bool ) ∋ ( ( λ x8410 -> ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> if true then false else d731 ) ) ) $ ( x8410 ) ) ) ) $ ( if false then d70 else d439 )
        d845 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8490 -> x8490 ) ) ) $ ( Bool )
        d845 = if ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> d591 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8470 -> d333 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8480 -> true ) ) ) $ ( d100 )
        d850 : ( ( Set -> Set ) ∋ ( ( λ x8520 -> ( ( Set -> Set ) ∋ ( ( λ x8530 -> if true then x8520 else x8520 ) ) ) $ ( x8520 ) ) ) ) $ ( if false then Bool else Bool )
        d850 = ( ( Bool -> Bool ) ∋ ( ( λ x8510 -> if true then x8510 else true ) ) ) $ ( if true then d237 else false )
        d854 : ( ( Set -> Set ) ∋ ( ( λ x8560 -> ( ( Set -> Set ) ∋ ( ( λ x8570 -> if true then Bool else Bool ) ) ) $ ( x8560 ) ) ) ) $ ( if true then Bool else Bool )
        d854 = if ( ( Bool -> Bool ) ∋ ( ( λ x8550 -> x8550 ) ) ) $ ( d229 ) then if true then d799 else false else if false then d229 else false
        d858 : ( ( Set -> Set ) ∋ ( ( λ x8610 -> ( ( Set -> Set ) ∋ ( ( λ x8620 -> if true then x8620 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d858 = ( ( Bool -> Bool ) ∋ ( ( λ x8590 -> ( ( Bool -> Bool ) ∋ ( ( λ x8600 -> if x8600 then d74 else x8600 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d544 )
        d863 : ( ( Set -> Set ) ∋ ( ( λ x8640 -> ( ( Set -> Set ) ∋ ( ( λ x8650 -> if true then Bool else Bool ) ) ) $ ( x8640 ) ) ) ) $ ( if true then Bool else Bool )
        d863 = if if true then false else true then if d673 then d426 else false else if true then d217 else false
        d866 : if true then if false then Bool else Bool else if false then Bool else Bool
        d866 = ( ( Bool -> Bool ) ∋ ( ( λ x8670 -> if d708 then x8670 else false ) ) ) $ ( if d92 then false else d776 )
        d868 : ( ( Set -> Set ) ∋ ( ( λ x8700 -> ( ( Set -> Set ) ∋ ( ( λ x8710 -> if false then x8700 else x8710 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d868 = if if true then d452 else d92 then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> x8690 ) ) ) $ ( d96 )
        d872 : if false then ( ( Set -> Set ) ∋ ( ( λ x8750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8760 -> x8760 ) ) ) $ ( Bool )
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x8730 -> ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> if d77 then d575 else d30 ) ) ) $ ( x8730 ) ) ) ) $ ( if d638 then d142 else d806 )
        d877 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8790 -> x8790 ) ) ) $ ( Bool )
        d877 = ( ( Bool -> Bool ) ∋ ( ( λ x8780 -> if d309 then false else false ) ) ) $ ( if d262 then d689 else false )
        d880 : ( ( Set -> Set ) ∋ ( ( λ x8830 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d880 = ( ( Bool -> Bool ) ∋ ( ( λ x8810 -> ( ( Bool -> Bool ) ∋ ( ( λ x8820 -> if false then x8810 else d270 ) ) ) $ ( d823 ) ) ) ) $ ( if false then false else false )
        d884 : if false then ( ( Set -> Set ) ∋ ( ( λ x8860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8870 -> Bool ) ) ) $ ( Bool )
        d884 = ( ( Bool -> Bool ) ∋ ( ( λ x8850 -> if d39 then d296 else d654 ) ) ) $ ( if d247 then true else d638 )
        d888 : ( ( Set -> Set ) ∋ ( ( λ x8900 -> if true then x8900 else x8900 ) ) ) $ ( if false then Bool else Bool )
        d888 = if ( ( Bool -> Bool ) ∋ ( ( λ x8890 -> d727 ) ) ) $ ( false ) then if false then false else false else if false then false else false
        d891 : ( ( Set -> Set ) ∋ ( ( λ x8940 -> if true then Bool else x8940 ) ) ) $ ( if false then Bool else Bool )
        d891 = if ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> x8920 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> false ) ) ) $ ( d353 ) else if false then d516 else true
        d895 : ( ( Set -> Set ) ∋ ( ( λ x8970 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> if true then d491 else x8960 ) ) ) $ ( if d134 then d840 else true )
        d898 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9010 -> Bool ) ) ) $ ( Bool )
        d898 = if ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> d9 ) ) ) $ ( d641 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> d270 ) ) ) $ ( d779 ) else if false then d686 else false
        d902 : ( ( Set -> Set ) ∋ ( ( λ x9050 -> ( ( Set -> Set ) ∋ ( ( λ x9060 -> if false then x9060 else Bool ) ) ) $ ( x9050 ) ) ) ) $ ( if false then Bool else Bool )
        d902 = if if d113 then d752 else d793 then ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( false )
        d907 : if false then ( ( Set -> Set ) ∋ ( ( λ x9100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d907 = if ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> x9080 ) ) ) $ ( d122 ) then if d641 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x9090 -> d104 ) ) ) $ ( true )
        d911 : if true then if false then Bool else Bool else if true then Bool else Bool
        d911 = if ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> x9120 ) ) ) $ ( d508 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> false ) ) ) $ ( d512 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> d648 ) ) ) $ ( d328 )
        d915 : if false then ( ( Set -> Set ) ∋ ( ( λ x9170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9180 -> Bool ) ) ) $ ( Bool )
        d915 = if ( ( Bool -> Bool ) ∋ ( ( λ x9160 -> x9160 ) ) ) $ ( d813 ) then if true then d415 else d547 else if d349 then false else d697
        d919 : if true then ( ( Set -> Set ) ∋ ( ( λ x9210 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d919 = ( ( Bool -> Bool ) ∋ ( ( λ x9200 -> if d142 then false else x9200 ) ) ) $ ( if true then true else d87 )
        d922 : if true then ( ( Set -> Set ) ∋ ( ( λ x9250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9260 -> x9260 ) ) ) $ ( Bool )
        d922 = ( ( Bool -> Bool ) ∋ ( ( λ x9230 -> ( ( Bool -> Bool ) ∋ ( ( λ x9240 -> if x9230 then x9230 else d146 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d927 : ( ( Set -> Set ) ∋ ( ( λ x9290 -> if false then x9290 else Bool ) ) ) $ ( if false then Bool else Bool )
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> if d567 then d205 else true ) ) ) $ ( if d677 then true else d898 )
        d930 : if true then if false then Bool else Bool else if true then Bool else Bool
        d930 = ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> if x9310 then x9320 else x9310 ) ) ) $ ( x9310 ) ) ) ) $ ( if true then d622 else true )
        d933 : ( ( Set -> Set ) ∋ ( ( λ x9370 -> ( ( Set -> Set ) ∋ ( ( λ x9380 -> if true then x9380 else Bool ) ) ) $ ( x9370 ) ) ) ) $ ( if false then Bool else Bool )
        d933 = if ( ( Bool -> Bool ) ∋ ( ( λ x9340 -> d146 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> d570 ) ) ) $ ( d288 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9360 -> false ) ) ) $ ( true )
        d939 : ( ( Set -> Set ) ∋ ( ( λ x9410 -> ( ( Set -> Set ) ∋ ( ( λ x9420 -> if false then x9420 else Bool ) ) ) $ ( x9410 ) ) ) ) $ ( if false then Bool else Bool )
        d939 = if if true then true else d579 then ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> true ) ) ) $ ( false ) else if d162 then true else false
        d943 : if true then ( ( Set -> Set ) ∋ ( ( λ x9450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9460 -> Bool ) ) ) $ ( Bool )
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> if false then x9440 else x9440 ) ) ) $ ( if true then d14 else false )
        d947 : ( ( Set -> Set ) ∋ ( ( λ x9500 -> ( ( Set -> Set ) ∋ ( ( λ x9510 -> if false then Bool else x9500 ) ) ) $ ( x9500 ) ) ) ) $ ( if true then Bool else Bool )
        d947 = ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> if false then d915 else d939 ) ) ) $ ( false ) ) ) ) $ ( if d49 then d930 else false )
        d952 : ( ( Set -> Set ) ∋ ( ( λ x9530 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d952 = if if true then false else false then if true then true else false else if d480 then d533 else true
        d954 : ( ( Set -> Set ) ∋ ( ( λ x9560 -> if true then x9560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d954 = if if d638 then true else d1 then if true then d199 else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> false ) ) ) $ ( true )
        d957 : if false then ( ( Set -> Set ) ∋ ( ( λ x9590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9600 -> x9600 ) ) ) $ ( Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> if true then x9580 else d939 ) ) ) $ ( if false then d570 else d435 )
        d961 : ( ( Set -> Set ) ∋ ( ( λ x9640 -> ( ( Set -> Set ) ∋ ( ( λ x9650 -> if false then x9650 else x9640 ) ) ) $ ( x9640 ) ) ) ) $ ( if false then Bool else Bool )
        d961 = if if d697 then true else d521 then ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> x9620 ) ) ) $ ( d537 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9630 -> d689 ) ) ) $ ( false )
        d966 : if true then ( ( Set -> Set ) ∋ ( ( λ x9690 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d966 = ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> ( ( Bool -> Bool ) ∋ ( ( λ x9680 -> if d464 then x9680 else d651 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d305 )
        d970 : ( ( Set -> Set ) ∋ ( ( λ x9730 -> if false then x9730 else x9730 ) ) ) $ ( if false then Bool else Bool )
        d970 = if ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> d927 ) ) ) $ ( d669 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> false ) ) ) $ ( true ) else if true then d477 else true
        d974 : ( ( Set -> Set ) ∋ ( ( λ x9770 -> ( ( Set -> Set ) ∋ ( ( λ x9780 -> if false then x9780 else x9770 ) ) ) $ ( x9770 ) ) ) ) $ ( if false then Bool else Bool )
        d974 = ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> if d529 then x9760 else x9760 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d979 : ( ( Set -> Set ) ∋ ( ( λ x9820 -> if true then x9820 else x9820 ) ) ) $ ( if true then Bool else Bool )
        d979 = ( ( Bool -> Bool ) ∋ ( ( λ x9800 -> ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> if true then d253 else d850 ) ) ) $ ( x9800 ) ) ) ) $ ( if d604 then d500 else d23 )
        d983 : if false then ( ( Set -> Set ) ∋ ( ( λ x9850 -> x9850 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d983 = if ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> x9840 ) ) ) $ ( false ) then if false then true else true else if false then d693 else d611
        d986 : if false then if true then Bool else Bool else if false then Bool else Bool
        d986 = ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> if d599 then d954 else false ) ) ) $ ( if false then d9 else d813 )
        d988 : ( ( Set -> Set ) ∋ ( ( λ x9900 -> if true then Bool else x9900 ) ) ) $ ( if true then Bool else Bool )
        d988 = if if d349 then false else d544 then if true then d868 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> d34 ) ) ) $ ( false )
        d991 : ( ( Set -> Set ) ∋ ( ( λ x9940 -> ( ( Set -> Set ) ∋ ( ( λ x9950 -> if false then Bool else Bool ) ) ) $ ( x9940 ) ) ) ) $ ( if true then Bool else Bool )
        d991 = if if d902 then d954 else d224 then ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> d122 ) ) ) $ ( d341 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9930 -> x9930 ) ) ) $ ( d278 )
        d996 : ( ( Set -> Set ) ∋ ( ( λ x9990 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d996 = if if d341 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> false ) ) ) $ ( false )
        d1000 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10030 -> x10030 ) ) ) $ ( Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> if false then false else x10020 ) ) ) $ ( true ) ) ) ) $ ( if d636 then false else true )
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x10060 -> ( ( Set -> Set ) ∋ ( ( λ x10070 -> if false then x10060 else Bool ) ) ) $ ( x10060 ) ) ) ) $ ( if true then Bool else Bool )
        d1004 = ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> if x10050 then x10050 else true ) ) ) $ ( if d562 then true else d288 )
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x10100 -> ( ( Set -> Set ) ∋ ( ( λ x10110 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1008 = if ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> true ) ) ) $ ( true ) then if d96 then d273 else d108 else if d244 then false else d591
        d1012 : ( ( Set -> Set ) ∋ ( ( λ x10130 -> if true then x10130 else x10130 ) ) ) $ ( if true then Bool else Bool )
        d1012 = if if d895 then d361 else false then if d575 then false else d211 else if d533 then d749 else true
        d1014 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1014 = if ( ( Bool -> Bool ) ∋ ( ( λ x10150 -> x10150 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> true ) ) ) $ ( true ) else if d14 then true else false
        d1017 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1017 = if if false then true else true then if true then d770 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10180 -> false ) ) ) $ ( d957 )
        d1019 : ( ( Set -> Set ) ∋ ( ( λ x10210 -> ( ( Set -> Set ) ∋ ( ( λ x10220 -> if true then Bool else Bool ) ) ) $ ( x10210 ) ) ) ) $ ( if false then Bool else Bool )
        d1019 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> true ) ) ) $ ( d296 ) else if d442 then false else d787
        d1023 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1023 = if if d634 then d525 else false then ( ( Bool -> Bool ) ∋ ( ( λ x10240 -> x10240 ) ) ) $ ( true ) else if d582 then true else d749
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x10270 -> ( ( Set -> Set ) ∋ ( ( λ x10280 -> if false then x10280 else x10280 ) ) ) $ ( x10270 ) ) ) ) $ ( if true then Bool else Bool )
        d1025 = if if true then d257 else d756 then if true then d783 else d922 else ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> true ) ) ) $ ( true )
        d1029 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1029 = ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> if true then false else x10300 ) ) ) $ ( if false then d208 else false )
        d1031 : if true then ( ( Set -> Set ) ∋ ( ( λ x10340 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10350 -> x10350 ) ) ) $ ( Bool )
        d1031 = ( ( Bool -> Bool ) ∋ ( ( λ x10320 -> ( ( Bool -> Bool ) ∋ ( ( λ x10330 -> if d834 then true else d834 ) ) ) $ ( d1008 ) ) ) ) $ ( if d762 then true else false )
        d1036 : ( ( Set -> Set ) ∋ ( ( λ x10390 -> ( ( Set -> Set ) ∋ ( ( λ x10400 -> if true then x10400 else x10390 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1036 = if ( ( Bool -> Bool ) ∋ ( ( λ x10370 -> x10370 ) ) ) $ ( d756 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> d618 ) ) ) $ ( d793 ) else if d562 then d278 else d541
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x10450 -> ( ( Set -> Set ) ∋ ( ( λ x10460 -> if true then Bool else Bool ) ) ) $ ( x10450 ) ) ) ) $ ( if false then Bool else Bool )
        d1041 = if ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> true ) ) ) $ ( d638 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10430 -> true ) ) ) $ ( d229 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> d752 ) ) ) $ ( true )
        d1047 : if true then ( ( Set -> Set ) ∋ ( ( λ x10490 -> x10490 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1047 = if ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> d495 ) ) ) $ ( true ) then if d686 then true else d697 else if false then true else d823
        d1050 : ( ( Set -> Set ) ∋ ( ( λ x10530 -> ( ( Set -> Set ) ∋ ( ( λ x10540 -> if true then x10540 else Bool ) ) ) $ ( x10530 ) ) ) ) $ ( if false then Bool else Bool )
        d1050 = if ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> d737 ) ) ) $ ( d442 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10520 -> true ) ) ) $ ( true ) else if d361 then d296 else d250
        d1055 : ( ( Set -> Set ) ∋ ( ( λ x10580 -> if false then x10580 else x10580 ) ) ) $ ( if true then Bool else Bool )
        d1055 = ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> if false then x10560 else x10570 ) ) ) $ ( d787 ) ) ) ) $ ( if true then false else d1004 )
        d1059 : if true then ( ( Set -> Set ) ∋ ( ( λ x10600 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10610 -> Bool ) ) ) $ ( Bool )
        d1059 = if if true then true else false then if true then true else false else if true then false else d96
        d1062 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10650 -> Bool ) ) ) $ ( Bool )
        d1062 = if ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> d525 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10640 -> d974 ) ) ) $ ( d321 ) else if d714 then true else d174
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x10690 -> ( ( Set -> Set ) ∋ ( ( λ x10700 -> if true then Bool else Bool ) ) ) $ ( x10690 ) ) ) ) $ ( if false then Bool else Bool )
        d1066 = if ( ( Bool -> Bool ) ∋ ( ( λ x10670 -> d752 ) ) ) $ ( false ) then if d895 then true else d473 else ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> x10680 ) ) ) $ ( false )
        d1071 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10730 -> x10730 ) ) ) $ ( Bool )
        d1071 = if if true then false else d551 then if d333 then d756 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10720 -> d108 ) ) ) $ ( false )
        d1074 : if true then ( ( Set -> Set ) ∋ ( ( λ x10750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10760 -> Bool ) ) ) $ ( Bool )
        d1074 = if if true then false else d810 then if true then d23 else d455 else if true then true else d868
        d1077 : if true then ( ( Set -> Set ) ∋ ( ( λ x10800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10810 -> Bool ) ) ) $ ( Bool )
        d1077 = if if true then false else d868 then ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> d150 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> x10790 ) ) ) $ ( false )
        d1082 : if true then ( ( Set -> Set ) ∋ ( ( λ x10840 -> x10840 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10850 -> x10850 ) ) ) $ ( Bool )
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> if x10830 then x10830 else x10830 ) ) ) $ ( if d227 then d793 else d813 )
        d1086 : ( ( Set -> Set ) ∋ ( ( λ x10890 -> ( ( Set -> Set ) ∋ ( ( λ x10900 -> if false then x10900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1086 = if ( ( Bool -> Bool ) ∋ ( ( λ x10870 -> d872 ) ) ) $ ( false ) then if true then d270 else d562 else ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> x10880 ) ) ) $ ( d508 )
        d1091 : if true then ( ( Set -> Set ) ∋ ( ( λ x10930 -> x10930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10940 -> Bool ) ) ) $ ( Bool )
        d1091 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> d23 ) ) ) $ ( d488 ) else if false then d996 else d604
        d1095 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10980 -> Bool ) ) ) $ ( Bool )
        d1095 = if ( ( Bool -> Bool ) ∋ ( ( λ x10960 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> true ) ) ) $ ( false ) else if d898 then d919 else d927
        d1099 : ( ( Set -> Set ) ∋ ( ( λ x11020 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1099 = ( ( Bool -> Bool ) ∋ ( ( λ x11000 -> ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> if x11010 then true else false ) ) ) $ ( d537 ) ) ) ) $ ( if d282 then d516 else false )
        d1103 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11050 -> Bool ) ) ) $ ( Bool )
        d1103 = ( ( Bool -> Bool ) ∋ ( ( λ x11040 -> if true then x11040 else d714 ) ) ) $ ( if false then d349 else false )
        d1106 : ( ( Set -> Set ) ∋ ( ( λ x11100 -> if true then Bool else x11100 ) ) ) $ ( if true then Bool else Bool )
        d1106 = if ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> x11070 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> d727 ) ) ) $ ( d391 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11090 -> d447 ) ) ) $ ( d174 )
        d1111 : ( ( Set -> Set ) ∋ ( ( λ x11130 -> ( ( Set -> Set ) ∋ ( ( λ x11140 -> if false then x11140 else Bool ) ) ) $ ( x11130 ) ) ) ) $ ( if false then Bool else Bool )
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> if true then x11120 else true ) ) ) $ ( if true then false else true )
        d1115 : if false then ( ( Set -> Set ) ∋ ( ( λ x11170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11180 -> x11180 ) ) ) $ ( Bool )
        d1115 = ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> if true then x11160 else x11160 ) ) ) $ ( if d622 then d727 else true )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x11210 -> if false then Bool else x11210 ) ) ) $ ( if false then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x11200 -> if false then d108 else false ) ) ) $ ( if d1014 then false else false )
        d1122 : if false then ( ( Set -> Set ) ∋ ( ( λ x11250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11260 -> Bool ) ) ) $ ( Bool )
        d1122 = if ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> d667 ) ) ) $ ( d529 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> false ) ) ) $ ( true ) else if false then true else d638
        d1127 : if false then ( ( Set -> Set ) ∋ ( ( λ x11300 -> x11300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11310 -> Bool ) ) ) $ ( Bool )
        d1127 = if ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> true ) ) ) $ ( true ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x11290 -> x11290 ) ) ) $ ( true )
        d1132 : if false then ( ( Set -> Set ) ∋ ( ( λ x11350 -> x11350 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1132 = ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> if true then x11340 else d247 ) ) ) $ ( true ) ) ) ) $ ( if true then d663 else d423 )
        d1136 : ( ( Set -> Set ) ∋ ( ( λ x11380 -> if true then x11380 else x11380 ) ) ) $ ( if false then Bool else Bool )
        d1136 = ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> if false then d477 else false ) ) ) $ ( if true then d582 else false )
        d1139 : if false then ( ( Set -> Set ) ∋ ( ( λ x11420 -> x11420 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1139 = if if d954 then d845 else d146 then ( ( Bool -> Bool ) ∋ ( ( λ x11400 -> false ) ) ) $ ( d974 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> d423 ) ) ) $ ( true )
        d1143 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11450 -> Bool ) ) ) $ ( Bool )
        d1143 = ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> if x11440 then x11440 else true ) ) ) $ ( if d779 then d1 else d402 )
        d1146 : ( ( Set -> Set ) ∋ ( ( λ x11490 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1146 = ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> if x11470 then x11470 else d12 ) ) ) $ ( x11470 ) ) ) ) $ ( if true then false else true )
        d1150 : ( ( Set -> Set ) ∋ ( ( λ x11510 -> ( ( Set -> Set ) ∋ ( ( λ x11520 -> if true then Bool else Bool ) ) ) $ ( x11510 ) ) ) ) $ ( if false then Bool else Bool )
        d1150 = if if true then d324 else false then if d1095 then false else d89 else if d1 then false else d313
        d1153 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1153 = ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> ( ( Bool -> Bool ) ∋ ( ( λ x11550 -> if d845 then x11540 else true ) ) ) $ ( d186 ) ) ) ) $ ( if false then true else d970 )
        d1156 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1156 = if if false then true else d357 then if d495 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> d1066 ) ) ) $ ( d657 )
        d1158 : if false then ( ( Set -> Set ) ∋ ( ( λ x11610 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1158 = if ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> x11590 ) ) ) $ ( d12 ) then if false then d34 else d654 else ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> d512 ) ) ) $ ( d919 )
        d1162 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11640 -> x11640 ) ) ) $ ( Bool )
        d1162 = ( ( Bool -> Bool ) ∋ ( ( λ x11630 -> if true then true else false ) ) ) $ ( if d749 then false else false )
        d1165 : if true then ( ( Set -> Set ) ∋ ( ( λ x11680 -> x11680 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11690 -> Bool ) ) ) $ ( Bool )
        d1165 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> x11660 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> false ) ) ) $ ( true )
        d1170 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11730 -> x11730 ) ) ) $ ( Bool )
        d1170 = ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> if d108 then x11710 else x11720 ) ) ) $ ( false ) ) ) ) $ ( if d473 then d423 else true )
        d1174 : if false then ( ( Set -> Set ) ∋ ( ( λ x11770 -> x11770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11780 -> x11780 ) ) ) $ ( Bool )
        d1174 = if ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> x11750 ) ) ) $ ( true ) then if false then true else d142 else ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> d895 ) ) ) $ ( true )
        d1179 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11810 -> x11810 ) ) ) $ ( Bool )
        d1179 = ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> if true then d313 else x11800 ) ) ) $ ( if false then true else d70 )
        d1182 : if true then ( ( Set -> Set ) ∋ ( ( λ x11850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11860 -> Bool ) ) ) $ ( Bool )
        d1182 = ( ( Bool -> Bool ) ∋ ( ( λ x11830 -> ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> if x11840 then d146 else d772 ) ) ) $ ( true ) ) ) ) $ ( if d651 then d952 else true )
        d1187 : ( ( Set -> Set ) ∋ ( ( λ x11880 -> if true then Bool else x11880 ) ) ) $ ( if false then Bool else Bool )
        d1187 = if if false then d745 else false then if false then false else true else if d1158 then d224 else d641
        d1189 : if false then ( ( Set -> Set ) ∋ ( ( λ x11920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11930 -> Bool ) ) ) $ ( Bool )
        d1189 = ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> ( ( Bool -> Bool ) ∋ ( ( λ x11910 -> if d229 then d745 else d636 ) ) ) $ ( x11900 ) ) ) ) $ ( if d208 then d470 else true )
        d1194 : ( ( Set -> Set ) ∋ ( ( λ x11960 -> ( ( Set -> Set ) ∋ ( ( λ x11970 -> if false then x11970 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1194 = if if d134 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> x11950 ) ) ) $ ( false ) else if d813 then false else d697
        d1198 : ( ( Set -> Set ) ∋ ( ( λ x12020 -> ( ( Set -> Set ) ∋ ( ( λ x12030 -> if false then x12020 else x12020 ) ) ) $ ( x12020 ) ) ) ) $ ( if false then Bool else Bool )
        d1198 = if ( ( Bool -> Bool ) ∋ ( ( λ x11990 -> d1139 ) ) ) $ ( d87 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> d541 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> x12010 ) ) ) $ ( d452 )
        d1204 : if true then ( ( Set -> Set ) ∋ ( ( λ x12060 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12070 -> x12070 ) ) ) $ ( Bool )
        d1204 = ( ( Bool -> Bool ) ∋ ( ( λ x12050 -> if x12050 then d830 else x12050 ) ) ) $ ( if d1111 then d611 else false )
        d1208 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1208 = if ( ( Bool -> Bool ) ∋ ( ( λ x12090 -> false ) ) ) $ ( true ) then if true then d1182 else true else if d309 then true else d643
        d1210 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1210 = ( ( Bool -> Bool ) ∋ ( ( λ x12110 -> if true then d599 else d500 ) ) ) $ ( if true then d556 else false )
        d1212 : ( ( Set -> Set ) ∋ ( ( λ x12140 -> if false then Bool else x12140 ) ) ) $ ( if true then Bool else Bool )
        d1212 = if if d96 then true else d113 then ( ( Bool -> Bool ) ∋ ( ( λ x12130 -> d1029 ) ) ) $ ( d1162 ) else if d512 then d186 else true
        d1215 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12180 -> Bool ) ) ) $ ( Bool )
        d1215 = ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> if d638 then d919 else d1179 ) ) ) $ ( false ) ) ) ) $ ( if d321 then true else d1150 )
        d1219 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1219 = ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> if d284 then false else true ) ) ) $ ( x12200 ) ) ) ) $ ( if d1215 then true else d657 )
        d1222 : ( ( Set -> Set ) ∋ ( ( λ x12230 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1222 = if if false then true else true then if false then d634 else true else if d863 then true else true
        d1224 : ( ( Set -> Set ) ∋ ( ( λ x12270 -> if true then x12270 else x12270 ) ) ) $ ( if true then Bool else Bool )
        d1224 = if ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> false ) ) ) $ ( true ) then if d284 then true else d667 else ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> d657 ) ) ) $ ( true )
        d1228 : if true then ( ( Set -> Set ) ∋ ( ( λ x12300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12310 -> Bool ) ) ) $ ( Bool )
        d1228 = if if d544 then false else d884 then ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> x12290 ) ) ) $ ( d816 ) else if d341 then d1224 else false
        d1232 : ( ( Set -> Set ) ∋ ( ( λ x12340 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1232 = if if d108 then d1198 else d1115 then if false then d321 else false else ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> d70 ) ) ) $ ( d704 )
        d1235 : ( ( Set -> Set ) ∋ ( ( λ x12380 -> if true then Bool else x12380 ) ) ) $ ( if false then Bool else Bool )
        d1235 = ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> if d480 then d939 else false ) ) ) $ ( x12360 ) ) ) ) $ ( if false then d525 else false )
        d1239 : ( ( Set -> Set ) ∋ ( ( λ x12430 -> if true then x12430 else x12430 ) ) ) $ ( if false then Bool else Bool )
        d1239 = if ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> x12400 ) ) ) $ ( d1055 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> d178 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> true ) ) ) $ ( d1224 )
        d1244 : ( ( Set -> Set ) ∋ ( ( λ x12460 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1244 = ( ( Bool -> Bool ) ∋ ( ( λ x12450 -> if x12450 then x12450 else d1074 ) ) ) $ ( if false then d759 else d1156 )
        d1247 : ( ( Set -> Set ) ∋ ( ( λ x12500 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1247 = if if false then d278 else d1103 then ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> false ) ) ) $ ( d533 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12490 -> x12490 ) ) ) $ ( false )
        d1251 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12530 -> Bool ) ) ) $ ( Bool )
        d1251 = if if d9 then false else d186 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> x12520 ) ) ) $ ( true )
        d1254 : ( ( Set -> Set ) ∋ ( ( λ x12570 -> ( ( Set -> Set ) ∋ ( ( λ x12580 -> if false then Bool else Bool ) ) ) $ ( x12570 ) ) ) ) $ ( if false then Bool else Bool )
        d1254 = ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> if true then x12550 else d673 ) ) ) $ ( false ) ) ) ) $ ( if true then d850 else true )
        d1259 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1259 = if if true then d87 else d806 then if d611 then d970 else d45 else if d840 then d1228 else d991
        d1260 : ( ( Set -> Set ) ∋ ( ( λ x12630 -> ( ( Set -> Set ) ∋ ( ( λ x12640 -> if true then Bool else x12630 ) ) ) $ ( x12630 ) ) ) ) $ ( if false then Bool else Bool )
        d1260 = ( ( Bool -> Bool ) ∋ ( ( λ x12610 -> ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> if true then false else x12610 ) ) ) $ ( d1071 ) ) ) ) $ ( if d305 then false else d82 )
        d1265 : ( ( Set -> Set ) ∋ ( ( λ x12680 -> if false then x12680 else x12680 ) ) ) $ ( if true then Bool else Bool )
        d1265 = if ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> x12660 ) ) ) $ ( d406 ) then if d82 then d518 else true else ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> d783 ) ) ) $ ( d803 )
        d1269 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12710 -> x12710 ) ) ) $ ( Bool )
        d1269 = ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> if x12700 then d537 else d868 ) ) ) $ ( if true then true else true )
        d1272 : ( ( Set -> Set ) ∋ ( ( λ x12750 -> ( ( Set -> Set ) ∋ ( ( λ x12760 -> if true then Bool else x12760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1272 = if if true then d741 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12730 -> d954 ) ) ) $ ( d845 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> true ) ) ) $ ( false )
        d1277 : ( ( Set -> Set ) ∋ ( ( λ x12800 -> if false then x12800 else x12800 ) ) ) $ ( if true then Bool else Bool )
        d1277 = ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> if true then d708 else d686 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d410 )
        d1281 : ( ( Set -> Set ) ∋ ( ( λ x12840 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1281 = if ( ( Bool -> Bool ) ∋ ( ( λ x12820 -> d430 ) ) ) $ ( d14 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> x12830 ) ) ) $ ( false ) else if d854 then d138 else true
        d1285 : ( ( Set -> Set ) ∋ ( ( λ x12870 -> ( ( Set -> Set ) ∋ ( ( λ x12880 -> if false then Bool else x12880 ) ) ) $ ( x12870 ) ) ) ) $ ( if true then Bool else Bool )
        d1285 = if if d1244 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12860 -> d1208 ) ) ) $ ( false ) else if true then d104 else d737
        d1289 : if false then ( ( Set -> Set ) ∋ ( ( λ x12920 -> x12920 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1289 = ( ( Bool -> Bool ) ∋ ( ( λ x12900 -> ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> if d1014 then x12900 else false ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d1293 : ( ( Set -> Set ) ∋ ( ( λ x12950 -> if false then Bool else x12950 ) ) ) $ ( if true then Bool else Bool )
        d1293 = ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> if d470 then false else x12940 ) ) ) $ ( if d430 then true else d211 )
        d1296 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1296 = ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> ( ( Bool -> Bool ) ∋ ( ( λ x12980 -> if d1029 then x12980 else true ) ) ) $ ( x12970 ) ) ) ) $ ( if true then false else d1153 )
        d1299 : ( ( Set -> Set ) ∋ ( ( λ x13010 -> ( ( Set -> Set ) ∋ ( ( λ x13020 -> if false then Bool else x13020 ) ) ) $ ( x13010 ) ) ) ) $ ( if true then Bool else Bool )
        d1299 = ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> if x13000 then d762 else x13000 ) ) ) $ ( if d634 then true else d361 )
        d1303 : ( ( Set -> Set ) ∋ ( ( λ x13050 -> if false then Bool else x13050 ) ) ) $ ( if true then Bool else Bool )
        d1303 = ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> if x13040 then x13040 else d749 ) ) ) $ ( if d1017 then true else d772 )
        d1306 : ( ( Set -> Set ) ∋ ( ( λ x13090 -> ( ( Set -> Set ) ∋ ( ( λ x13100 -> if true then Bool else x13090 ) ) ) $ ( x13090 ) ) ) ) $ ( if true then Bool else Bool )
        d1306 = ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> if false then d1012 else d470 ) ) ) $ ( x13070 ) ) ) ) $ ( if false then d1031 else false )
        d1311 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13140 -> Bool ) ) ) $ ( Bool )
        d1311 = if ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> d1074 ) ) ) $ ( d663 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> d556 ) ) ) $ ( d783 ) else if d813 then d898 else d803
        d1315 : ( ( Set -> Set ) ∋ ( ( λ x13170 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1315 = if if d1162 then d741 else d317 then ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> false ) ) ) $ ( d341 ) else if d988 then true else d508
        d1318 : ( ( Set -> Set ) ∋ ( ( λ x13210 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1318 = ( ( Bool -> Bool ) ∋ ( ( λ x13190 -> ( ( Bool -> Bool ) ∋ ( ( λ x13200 -> if d14 then false else x13200 ) ) ) $ ( false ) ) ) ) $ ( if d34 then false else false )
        d1322 : ( ( Set -> Set ) ∋ ( ( λ x13240 -> ( ( Set -> Set ) ∋ ( ( λ x13250 -> if true then x13240 else x13250 ) ) ) $ ( x13240 ) ) ) ) $ ( if false then Bool else Bool )
        d1322 = if if d816 then d211 else true then if false then true else d770 else ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> x13230 ) ) ) $ ( d752 )
        d1326 : ( ( Set -> Set ) ∋ ( ( λ x13290 -> ( ( Set -> Set ) ∋ ( ( λ x13300 -> if false then x13290 else Bool ) ) ) $ ( x13290 ) ) ) ) $ ( if false then Bool else Bool )
        d1326 = ( ( Bool -> Bool ) ∋ ( ( λ x13270 -> ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> if true then d1247 else x13270 ) ) ) $ ( d1091 ) ) ) ) $ ( if d1074 then d735 else d933 )
        d1331 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1331 = ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> if x13320 then d500 else x13320 ) ) ) $ ( if d321 then d1212 else true )
        d1333 : ( ( Set -> Set ) ∋ ( ( λ x13370 -> if true then x13370 else x13370 ) ) ) $ ( if false then Bool else Bool )
        d1333 = if ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> d525 ) ) ) $ ( d1315 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> x13360 ) ) ) $ ( d208 )
        d1338 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1338 = if if d1194 then d1059 else d1251 then ( ( Bool -> Bool ) ∋ ( ( λ x13390 -> d599 ) ) ) $ ( d1198 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> d544 ) ) ) $ ( d1119 )
        d1341 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13440 -> x13440 ) ) ) $ ( Bool )
        d1341 = if if d1025 then false else d762 then ( ( Bool -> Bool ) ∋ ( ( λ x13420 -> true ) ) ) $ ( d1158 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> d521 ) ) ) $ ( true )
        d1345 : ( ( Set -> Set ) ∋ ( ( λ x13490 -> ( ( Set -> Set ) ∋ ( ( λ x13500 -> if true then Bool else Bool ) ) ) $ ( x13490 ) ) ) ) $ ( if true then Bool else Bool )
        d1345 = if ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> d1272 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> d92 ) ) ) $ ( d166 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13480 -> d495 ) ) ) $ ( true )
        d1351 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1351 = ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> if d850 then d23 else true ) ) ) $ ( true ) ) ) ) $ ( if d153 then true else false )
        d1354 : ( ( Set -> Set ) ∋ ( ( λ x13560 -> if true then x13560 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1354 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> true ) ) ) $ ( true ) else if d711 then d1254 else false
        d1357 : if false then ( ( Set -> Set ) ∋ ( ( λ x13590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1357 = if ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> x13580 ) ) ) $ ( true ) then if false then d986 else true else if d34 then d895 else d384
        d1360 : ( ( Set -> Set ) ∋ ( ( λ x13620 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1360 = ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> if false then x13610 else true ) ) ) $ ( if d470 then true else d1000 )
        d1363 : ( ( Set -> Set ) ∋ ( ( λ x13660 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1363 = ( ( Bool -> Bool ) ∋ ( ( λ x13640 -> ( ( Bool -> Bool ) ∋ ( ( λ x13650 -> if false then false else d579 ) ) ) $ ( d634 ) ) ) ) $ ( if true then false else d693 )
        d1367 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13710 -> Bool ) ) ) $ ( Bool )
        d1367 = if ( ( Bool -> Bool ) ∋ ( ( λ x13680 -> false ) ) ) $ ( d727 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> x13690 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> x13700 ) ) ) $ ( d30 )
        d1372 : ( ( Set -> Set ) ∋ ( ( λ x13740 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1372 = if if false then true else false then if d611 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x13730 -> false ) ) ) $ ( false )
        d1375 : if true then ( ( Set -> Set ) ∋ ( ( λ x13770 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13780 -> x13780 ) ) ) $ ( Bool )
        d1375 = ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> if d911 then d1326 else false ) ) ) $ ( if false then d195 else d1 )
        d1379 : ( ( Set -> Set ) ∋ ( ( λ x13820 -> if true then x13820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1379 = if ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> false ) ) ) $ ( d1106 ) then if d1189 then d341 else true else ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> d288 ) ) ) $ ( d810 )
        d1383 : ( ( Set -> Set ) ∋ ( ( λ x13850 -> ( ( Set -> Set ) ∋ ( ( λ x13860 -> if false then x13850 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1383 = ( ( Bool -> Bool ) ∋ ( ( λ x13840 -> if d406 then x13840 else d282 ) ) ) $ ( if true then d772 else true )
        d1387 : ( ( Set -> Set ) ∋ ( ( λ x13910 -> ( ( Set -> Set ) ∋ ( ( λ x13920 -> if false then x13910 else x13920 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1387 = if ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> x13880 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13890 -> d1008 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> x13900 ) ) ) $ ( false )
        d1393 : if true then ( ( Set -> Set ) ∋ ( ( λ x13950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13960 -> x13960 ) ) ) $ ( Bool )
        d1393 = ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> if false then false else x13940 ) ) ) $ ( if true then false else true )
        d1397 : ( ( Set -> Set ) ∋ ( ( λ x13990 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1397 = ( ( Bool -> Bool ) ∋ ( ( λ x13980 -> if d525 then d1208 else d77 ) ) ) $ ( if false then d368 else d388 )
        d1400 : if false then ( ( Set -> Set ) ∋ ( ( λ x14030 -> x14030 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1400 = ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> if true then false else d970 ) ) ) $ ( x14010 ) ) ) ) $ ( if false then d877 else true )
        d1404 : ( ( Set -> Set ) ∋ ( ( λ x14060 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1404 = ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> if x14050 then x14050 else x14050 ) ) ) $ ( if true then d1074 else false )
        d1407 : ( ( Set -> Set ) ∋ ( ( λ x14090 -> if true then x14090 else x14090 ) ) ) $ ( if false then Bool else Bool )
        d1407 = if ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> d626 ) ) ) $ ( true ) then if d898 then false else d1143 else if d911 then d1372 else true
        d1410 : if false then ( ( Set -> Set ) ∋ ( ( λ x14130 -> x14130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1410 = if ( ( Bool -> Bool ) ∋ ( ( λ x14110 -> true ) ) ) $ ( true ) then if true then false else d711 else ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> x14120 ) ) ) $ ( d759 )
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14170 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1414 = if ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> d477 ) ) ) $ ( d544 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14160 -> d1122 ) ) ) $ ( true ) else if false then d575 else d803
        d1418 : if true then ( ( Set -> Set ) ∋ ( ( λ x14210 -> x14210 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14220 -> x14220 ) ) ) $ ( Bool )
        d1418 = ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> if true then true else true ) ) ) $ ( d1055 ) ) ) ) $ ( if false then d1372 else true )
        d1423 : ( ( Set -> Set ) ∋ ( ( λ x14250 -> ( ( Set -> Set ) ∋ ( ( λ x14260 -> if false then x14260 else Bool ) ) ) $ ( x14250 ) ) ) ) $ ( if false then Bool else Bool )
        d1423 = ( ( Bool -> Bool ) ∋ ( ( λ x14240 -> if true then x14240 else false ) ) ) $ ( if d1407 then d974 else false )
        d1427 : ( ( Set -> Set ) ∋ ( ( λ x14290 -> if true then x14290 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1427 = ( ( Bool -> Bool ) ∋ ( ( λ x14280 -> if d1331 then x14280 else d54 ) ) ) $ ( if false then false else d772 )
        d1430 : ( ( Set -> Set ) ∋ ( ( λ x14330 -> ( ( Set -> Set ) ∋ ( ( λ x14340 -> if false then x14340 else x14340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1430 = if ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> false ) ) ) $ ( d895 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14320 -> x14320 ) ) ) $ ( d1296 ) else if true then true else d701
        d1435 : ( ( Set -> Set ) ∋ ( ( λ x14370 -> ( ( Set -> Set ) ∋ ( ( λ x14380 -> if false then Bool else Bool ) ) ) $ ( x14370 ) ) ) ) $ ( if true then Bool else Bool )
        d1435 = ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> if true then d939 else false ) ) ) $ ( if d1379 then d19 else true )
        d1439 : ( ( Set -> Set ) ∋ ( ( λ x14410 -> ( ( Set -> Set ) ∋ ( ( λ x14420 -> if false then x14410 else x14410 ) ) ) $ ( x14410 ) ) ) ) $ ( if false then Bool else Bool )
        d1439 = if if false then d1272 else true then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> x14400 ) ) ) $ ( d677 )
        d1443 : ( ( Set -> Set ) ∋ ( ( λ x14440 -> if false then x14440 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1443 = if if true then d723 else d911 then if false then d680 else true else if d1410 then d697 else d199
        d1445 : if true then ( ( Set -> Set ) ∋ ( ( λ x14490 -> x14490 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1445 = if ( ( Bool -> Bool ) ∋ ( ( λ x14460 -> d324 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> false ) ) ) $ ( d537 )
        d1450 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1450 = if if d130 then false else false then if true then d77 else true else if false then true else false
        d1451 : if true then ( ( Set -> Set ) ∋ ( ( λ x14540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14550 -> Bool ) ) ) $ ( Bool )
        d1451 = ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> if d970 then d122 else d341 ) ) ) $ ( true ) ) ) ) $ ( if d1299 then d1219 else d1341 )
        d1456 : ( ( Set -> Set ) ∋ ( ( λ x14580 -> if true then x14580 else x14580 ) ) ) $ ( if false then Bool else Bool )
        d1456 = if if d1363 then true else true then if d49 then d1025 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> false ) ) ) $ ( d274 )
        d1459 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14610 -> x14610 ) ) ) $ ( Bool )
        d1459 = if if d435 then d491 else d787 then if true then d317 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14600 -> d1296 ) ) ) $ ( false )
        d1462 : ( ( Set -> Set ) ∋ ( ( λ x14640 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1462 = if ( ( Bool -> Bool ) ∋ ( ( λ x14630 -> false ) ) ) $ ( d961 ) then if d966 then d278 else d227 else if d500 then true else d442
        d1465 : if false then ( ( Set -> Set ) ∋ ( ( λ x14680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14690 -> x14690 ) ) ) $ ( Bool )
        d1465 = ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> ( ( Bool -> Bool ) ∋ ( ( λ x14670 -> if d1315 then x14670 else d854 ) ) ) $ ( x14660 ) ) ) ) $ ( if d741 then false else d463 )
        d1470 : ( ( Set -> Set ) ∋ ( ( λ x14720 -> ( ( Set -> Set ) ∋ ( ( λ x14730 -> if false then x14720 else x14720 ) ) ) $ ( x14720 ) ) ) ) $ ( if false then Bool else Bool )
        d1470 = if ( ( Bool -> Bool ) ∋ ( ( λ x14710 -> x14710 ) ) ) $ ( true ) then if d1025 then false else false else if false then d1115 else true
        d1474 : ( ( Set -> Set ) ∋ ( ( λ x14760 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1474 = if if d689 then d376 else true then ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> false ) ) ) $ ( true ) else if true then d767 else d567
        d1477 : ( ( Set -> Set ) ∋ ( ( λ x14790 -> ( ( Set -> Set ) ∋ ( ( λ x14800 -> if false then Bool else Bool ) ) ) $ ( x14790 ) ) ) ) $ ( if false then Bool else Bool )
        d1477 = if if d34 then d1156 else d162 then ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> d244 ) ) ) $ ( d1228 ) else if false then false else true
        d1481 : if false then ( ( Set -> Set ) ∋ ( ( λ x14840 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1481 = if ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> d1265 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> d1333 ) ) ) $ ( d365 ) else if true then d1132 else true
        d1485 : ( ( Set -> Set ) ∋ ( ( λ x14870 -> if false then Bool else x14870 ) ) ) $ ( if false then Bool else Bool )
        d1485 = if ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> d1443 ) ) ) $ ( d1303 ) then if false then false else true else if false then d714 else true
        d1488 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14900 -> Bool ) ) ) $ ( Bool )
        d1488 = if ( ( Bool -> Bool ) ∋ ( ( λ x14890 -> x14890 ) ) ) $ ( d1239 ) then if d966 then d772 else d735 else if true then d1122 else d1153
        d1491 : if false then ( ( Set -> Set ) ∋ ( ( λ x14930 -> x14930 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1491 = ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> if d1456 then true else x14920 ) ) ) $ ( if d816 then d595 else d1289 )
        d1494 : ( ( Set -> Set ) ∋ ( ( λ x14960 -> if false then Bool else x14960 ) ) ) $ ( if true then Bool else Bool )
        d1494 = if if false then d217 else d215 then if d1387 then d1445 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14950 -> x14950 ) ) ) $ ( false )
        d1497 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1497 = if ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> d525 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15000 -> x15000 ) ) ) $ ( false )
        d1501 : ( ( Set -> Set ) ∋ ( ( λ x15040 -> if false then x15040 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1501 = if ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> d911 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> d544 ) ) ) $ ( d273 ) else if true then d677 else d930
        d1505 : ( ( Set -> Set ) ∋ ( ( λ x15070 -> if false then x15070 else x15070 ) ) ) $ ( if true then Bool else Bool )
        d1505 = if ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> false ) ) ) $ ( false ) then if d663 then d708 else d648 else if false then d305 else false
        d1508 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15100 -> Bool ) ) ) $ ( Bool )
        d1508 = if ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> false ) ) ) $ ( d529 ) then if true then true else false else if true then false else d1459
        d1511 : ( ( Set -> Set ) ∋ ( ( λ x15130 -> ( ( Set -> Set ) ∋ ( ( λ x15140 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1511 = if if d866 then d1450 else d1127 then if d762 then false else d274 else ( ( Bool -> Bool ) ∋ ( ( λ x15120 -> d723 ) ) ) $ ( false )
        d1515 : ( ( Set -> Set ) ∋ ( ( λ x15180 -> ( ( Set -> Set ) ∋ ( ( λ x15190 -> if false then Bool else x15190 ) ) ) $ ( x15180 ) ) ) ) $ ( if false then Bool else Bool )
        d1515 = if if d799 then d250 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15160 -> x15160 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> x15170 ) ) ) $ ( d227 )
        d1520 : ( ( Set -> Set ) ∋ ( ( λ x15220 -> if false then x15220 else x15220 ) ) ) $ ( if true then Bool else Bool )
        d1520 = if if d813 then false else true then if d500 then d591 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> x15210 ) ) ) $ ( false )
        d1523 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15250 -> x15250 ) ) ) $ ( Bool )
        d1523 = ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> if x15240 then d1115 else d1400 ) ) ) $ ( if d827 then d735 else true )
        d1526 : ( ( Set -> Set ) ∋ ( ( λ x15290 -> if true then x15290 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1526 = if if d562 then true else d9 then ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> x15270 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> d727 ) ) ) $ ( false )
        d1530 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1530 = if ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> true ) ) ) $ ( d1341 ) else if false then true else false
        d1533 : if true then ( ( Set -> Set ) ∋ ( ( λ x15360 -> x15360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1533 = ( ( Bool -> Bool ) ∋ ( ( λ x15340 -> ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> if false then true else d1187 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d1537 : if false then ( ( Set -> Set ) ∋ ( ( λ x15390 -> x15390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15400 -> Bool ) ) ) $ ( Bool )
        d1537 = ( ( Bool -> Bool ) ∋ ( ( λ x15380 -> if true then d1077 else x15380 ) ) ) $ ( if d779 then d1427 else d884 )
        d1541 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15440 -> Bool ) ) ) $ ( Bool )
        d1541 = ( ( Bool -> Bool ) ∋ ( ( λ x15420 -> ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> if x15430 then true else x15430 ) ) ) $ ( x15420 ) ) ) ) $ ( if d749 then false else d749 )
        d1545 : ( ( Set -> Set ) ∋ ( ( λ x15470 -> ( ( Set -> Set ) ∋ ( ( λ x15480 -> if true then x15480 else x15470 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1545 = ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> if d1474 then x15460 else x15460 ) ) ) $ ( if false then d1456 else d1235 )
        d1549 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15510 -> x15510 ) ) ) $ ( Bool )
        d1549 = ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> if d1224 then false else false ) ) ) $ ( if true then d954 else d877 )
        d1552 : if true then ( ( Set -> Set ) ∋ ( ( λ x15540 -> x15540 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1552 = if ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> x15530 ) ) ) $ ( d599 ) then if d305 then d830 else false else if d455 then false else true
        d1555 : if true then ( ( Set -> Set ) ∋ ( ( λ x15580 -> x15580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1555 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> x15560 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> d607 ) ) ) $ ( d92 )
        d1559 : if true then ( ( Set -> Set ) ∋ ( ( λ x15600 -> x15600 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1559 = if if d201 then false else d423 then if false then false else false else if d34 then d1345 else true
        d1561 : if true then ( ( Set -> Set ) ∋ ( ( λ x15630 -> x15630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15640 -> x15640 ) ) ) $ ( Bool )
        d1561 = ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> if x15620 then d250 else false ) ) ) $ ( if false then false else d232 )
        d1565 : if false then ( ( Set -> Set ) ∋ ( ( λ x15670 -> x15670 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15680 -> Bool ) ) ) $ ( Bool )
        d1565 = ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> if false then x15660 else x15660 ) ) ) $ ( if false then d190 else false )
        d1569 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15710 -> x15710 ) ) ) $ ( Bool )
        d1569 = ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> if d215 then false else x15700 ) ) ) $ ( if d626 then d599 else d1174 )
        d1572 : if false then ( ( Set -> Set ) ∋ ( ( λ x15750 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1572 = if ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> true ) ) ) $ ( d810 ) then if d827 then d274 else d158 else ( ( Bool -> Bool ) ∋ ( ( λ x15740 -> true ) ) ) $ ( d1462 )
        d1576 : ( ( Set -> Set ) ∋ ( ( λ x15790 -> if false then Bool else x15790 ) ) ) $ ( if true then Bool else Bool )
        d1576 = ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> ( ( Bool -> Bool ) ∋ ( ( λ x15780 -> if d431 then x15780 else x15770 ) ) ) $ ( true ) ) ) ) $ ( if d1491 then d278 else d227 )
        d1580 : ( ( Set -> Set ) ∋ ( ( λ x15820 -> if false then Bool else x15820 ) ) ) $ ( if false then Bool else Bool )
        d1580 = if if d1293 then true else true then if d783 then d562 else d793 else ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> d1198 ) ) ) $ ( false )
        d1583 : if true then ( ( Set -> Set ) ∋ ( ( λ x15850 -> x15850 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1583 = ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> if x15840 then true else d1450 ) ) ) $ ( if true then d752 else true )
        d1586 : ( ( Set -> Set ) ∋ ( ( λ x15890 -> ( ( Set -> Set ) ∋ ( ( λ x15900 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1586 = if ( ( Bool -> Bool ) ∋ ( ( λ x15870 -> x15870 ) ) ) $ ( d1251 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> d1025 ) ) ) $ ( d638 ) else if d1095 then d1387 else false
        d1591 : ( ( Set -> Set ) ∋ ( ( λ x15930 -> if true then x15930 else x15930 ) ) ) $ ( if true then Bool else Bool )
        d1591 = if if true then d779 else false then if d1508 then d1000 else d418 else ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> d1311 ) ) ) $ ( true )
        d1594 : if true then ( ( Set -> Set ) ∋ ( ( λ x15980 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1594 = if ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> false ) ) ) $ ( true )
        d1599 : ( ( Set -> Set ) ∋ ( ( λ x16020 -> if true then x16020 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1599 = ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> if x16000 then false else false ) ) ) $ ( d108 ) ) ) ) $ ( if false then true else d947 )
        d1603 : ( ( Set -> Set ) ∋ ( ( λ x16070 -> ( ( Set -> Set ) ∋ ( ( λ x16080 -> if false then Bool else x16080 ) ) ) $ ( x16070 ) ) ) ) $ ( if true then Bool else Bool )
        d1603 = if ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> d1357 ) ) ) $ ( d1014 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> d1091 ) ) ) $ ( d943 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> false ) ) ) $ ( false )
        d1609 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16110 -> Bool ) ) ) $ ( Bool )
        d1609 = ( ( Bool -> Bool ) ∋ ( ( λ x16100 -> if d767 then d582 else x16100 ) ) ) $ ( if false then d365 else d579 )
        d1612 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16140 -> Bool ) ) ) $ ( Bool )
        d1612 = if if d418 then true else d1204 then if d452 then d257 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> x16130 ) ) ) $ ( false )
        d1615 : if true then ( ( Set -> Set ) ∋ ( ( λ x16180 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1615 = ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> ( ( Bool -> Bool ) ∋ ( ( λ x16170 -> if d1410 then x16170 else d933 ) ) ) $ ( false ) ) ) ) $ ( if d1520 then true else false )
        d1619 : if true then ( ( Set -> Set ) ∋ ( ( λ x16210 -> x16210 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16220 -> Bool ) ) ) $ ( Bool )
        d1619 = if if false then d582 else true then if true then false else d1012 else ( ( Bool -> Bool ) ∋ ( ( λ x16200 -> x16200 ) ) ) $ ( true )
        d1623 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16240 -> x16240 ) ) ) $ ( Bool )
        d1623 = if if false then true else true then if true then false else d1136 else if d1000 then true else d1189
        d1625 : ( ( Set -> Set ) ∋ ( ( λ x16270 -> if false then Bool else x16270 ) ) ) $ ( if false then Bool else Bool )
        d1625 = ( ( Bool -> Bool ) ∋ ( ( λ x16260 -> if false then x16260 else x16260 ) ) ) $ ( if false then d880 else d1047 )
        d1628 : ( ( Set -> Set ) ∋ ( ( λ x16310 -> ( ( Set -> Set ) ∋ ( ( λ x16320 -> if true then x16310 else x16310 ) ) ) $ ( x16310 ) ) ) ) $ ( if true then Bool else Bool )
        d1628 = if ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> d1150 ) ) ) $ ( d877 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> x16300 ) ) ) $ ( false ) else if d1537 then d237 else d1418
        d1633 : ( ( Set -> Set ) ∋ ( ( λ x16360 -> ( ( Set -> Set ) ∋ ( ( λ x16370 -> if true then x16370 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1633 = if if d1315 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x16340 -> true ) ) ) $ ( d1619 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> x16350 ) ) ) $ ( true )
        d1638 : ( ( Set -> Set ) ∋ ( ( λ x16410 -> ( ( Set -> Set ) ∋ ( ( λ x16420 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1638 = if ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> x16390 ) ) ) $ ( d1082 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16400 -> true ) ) ) $ ( false ) else if false then true else d1091
        d1643 : if true then ( ( Set -> Set ) ∋ ( ( λ x16450 -> x16450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16460 -> x16460 ) ) ) $ ( Bool )
        d1643 = if if d23 then d570 else d423 then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> false ) ) ) $ ( d166 )
        d1647 : if false then ( ( Set -> Set ) ∋ ( ( λ x16490 -> x16490 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1647 = ( ( Bool -> Bool ) ∋ ( ( λ x16480 -> if d1520 then x16480 else d1523 ) ) ) $ ( if true then d288 else d142 )
        d1650 : ( ( Set -> Set ) ∋ ( ( λ x16520 -> if true then x16520 else x16520 ) ) ) $ ( if true then Bool else Bool )
        d1650 = ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> if x16510 then false else false ) ) ) $ ( if d483 then d902 else true )
        d1653 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16550 -> Bool ) ) ) $ ( Bool )
        d1653 = ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> if x16540 then x16540 else false ) ) ) $ ( if d626 then true else d756 )
        d1656 : if true then ( ( Set -> Set ) ∋ ( ( λ x16590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16600 -> x16600 ) ) ) $ ( Bool )
        d1656 = if ( ( Bool -> Bool ) ∋ ( ( λ x16570 -> x16570 ) ) ) $ ( d1158 ) then if d341 then d34 else d1462 else ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> x16580 ) ) ) $ ( d697 )
        d1661 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1661 = ( ( Bool -> Bool ) ∋ ( ( λ x16620 -> if d772 then x16620 else d288 ) ) ) $ ( if true then d1367 else true )
        d1663 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16650 -> x16650 ) ) ) $ ( Bool )
        d1663 = ( ( Bool -> Bool ) ∋ ( ( λ x16640 -> if false then false else x16640 ) ) ) $ ( if true then true else d1488 )
        d1666 : ( ( Set -> Set ) ∋ ( ( λ x16670 -> ( ( Set -> Set ) ∋ ( ( λ x16680 -> if false then x16680 else x16680 ) ) ) $ ( x16670 ) ) ) ) $ ( if true then Bool else Bool )
        d1666 = if if d562 then true else d544 then if false then d70 else d1572 else if d845 then d1008 else true
        d1669 : if false then ( ( Set -> Set ) ∋ ( ( λ x16720 -> x16720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16730 -> x16730 ) ) ) $ ( Bool )
        d1669 = ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> if x16700 then x16710 else d442 ) ) ) $ ( x16700 ) ) ) ) $ ( if d282 then d1254 else d1122 )
        d1674 : ( ( Set -> Set ) ∋ ( ( λ x16770 -> ( ( Set -> Set ) ∋ ( ( λ x16780 -> if true then x16770 else x16770 ) ) ) $ ( x16770 ) ) ) ) $ ( if true then Bool else Bool )
        d1674 = ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> if x16760 then true else d1393 ) ) ) $ ( x16750 ) ) ) ) $ ( if d1404 then false else d974 )
        d1679 : ( ( Set -> Set ) ∋ ( ( λ x16800 -> ( ( Set -> Set ) ∋ ( ( λ x16810 -> if true then x16800 else Bool ) ) ) $ ( x16800 ) ) ) ) $ ( if false then Bool else Bool )
        d1679 = if if false then d1150 else false then if d1439 then false else d872 else if d288 then d1041 else d799
        d1682 : if false then ( ( Set -> Set ) ∋ ( ( λ x16840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16850 -> Bool ) ) ) $ ( Bool )
        d1682 = if if false then d1059 else true then ( ( Bool -> Bool ) ∋ ( ( λ x16830 -> x16830 ) ) ) $ ( true ) else if true then false else d562
        d1686 : if false then ( ( Set -> Set ) ∋ ( ( λ x16880 -> x16880 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1686 = if if true then true else false then if d395 then d582 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16870 -> false ) ) ) $ ( d667 )