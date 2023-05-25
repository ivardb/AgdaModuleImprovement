module Decls150Test18  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x40 else Bool ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x30 -> true ) ) ) $ ( true ) else if false then true else true
        d6 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = if if d1 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( d1 ) else if false then true else d1
        d9 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then x120 else x130 ) ) ) $ ( x120 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if if d6 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( d6 ) else ( ( Bool -> Bool ) ∋ ( ( λ x110 -> true ) ) ) $ ( d1 )
        d14 : if true then if true then Bool else Bool else if true then Bool else Bool
        d14 = if ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d9 ) ) ) $ ( true ) then if false then d6 else true else ( ( Bool -> Bool ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( d9 )
        d17 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if true then x190 else d9 ) ) ) $ ( false ) ) ) ) $ ( if d6 then d6 else false )
        d21 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x240 -> Bool ) ) ) $ ( Bool )
        d21 = if ( ( Bool -> Bool ) ∋ ( ( λ x220 -> false ) ) ) $ ( d14 ) then ( ( Bool -> Bool ) ∋ ( ( λ x230 -> d17 ) ) ) $ ( d1 ) else if d14 then false else d1
        d25 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> if true then Bool else Bool ) ) ) $ ( x280 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( false ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> d21 ) ) ) $ ( d6 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x330 -> ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then Bool else x340 ) ) ) $ ( x330 ) ) ) ) $ ( if true then Bool else Bool )
        d30 = if ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d9 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( false ) else if d14 then d9 else d9
        d35 : if false then if false then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if true then d30 else false ) ) ) $ ( if d14 then true else d30 )
        d37 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x400 -> x400 ) ) ) $ ( Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if x390 then d25 else x380 ) ) ) $ ( x380 ) ) ) ) $ ( if false then d21 else d14 )
        d41 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if x420 then x420 else x420 ) ) ) $ ( true ) ) ) ) $ ( if false then d17 else false )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x480 -> if true then Bool else x480 ) ) ) $ ( x470 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = if if d6 then d6 else d1 then if true then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x460 -> d9 ) ) ) $ ( false )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x520 -> if false then x520 else Bool ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if x500 then d1 else x510 ) ) ) $ ( false ) ) ) ) $ ( if false then d37 else d9 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x550 -> ( ( Set -> Set ) ∋ ( ( λ x560 -> if false then x550 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if d1 then x540 else x540 ) ) ) $ ( if d9 then d21 else false )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x590 -> ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then x600 else x590 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = if ( ( Bool -> Bool ) ∋ ( ( λ x580 -> d17 ) ) ) $ ( d14 ) then if d37 then d53 else false else if false then d49 else false
        d61 : if true then ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( Bool )
        d61 = if if d35 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x620 -> false ) ) ) $ ( d25 ) else ( ( Bool -> Bool ) ∋ ( ( λ x630 -> true ) ) ) $ ( true )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then Bool else Bool ) ) ) $ ( x690 ) ) ) ) $ ( if true then Bool else Bool )
        d66 = if ( ( Bool -> Bool ) ∋ ( ( λ x670 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d45 ) ) ) $ ( d49 ) else if true then true else d25
        d71 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if false then x740 else x740 ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if false then d25 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d9 else true )
        d75 : if false then ( ( Set -> Set ) ∋ ( ( λ x770 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d75 = if ( ( Bool -> Bool ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( d53 ) then if true then false else false else if d57 then d9 else d71
        d78 : if true then ( ( Set -> Set ) ∋ ( ( λ x810 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d78 = if if false then d30 else d14 then ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d21 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( d37 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> if true then x850 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = if ( ( Bool -> Bool ) ∋ ( ( λ x830 -> d37 ) ) ) $ ( d61 ) then ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( d17 ) else if true then d1 else false
        d87 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if true then x890 else Bool ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if x880 then x880 else d35 ) ) ) $ ( if d71 then false else false )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> if true then Bool else x930 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d41 ) ) ) $ ( d82 ) then ( ( Bool -> Bool ) ∋ ( ( λ x920 -> true ) ) ) $ ( false ) else if true then false else d53
        d95 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> if false then x990 else Bool ) ) ) $ ( x980 ) ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if x970 then false else x960 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d25 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then Bool else x1040 ) ) ) $ ( x1030 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( d30 ) else if d25 then false else false
        d105 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d105 = if ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> d37 ) ) ) $ ( false ) then if true then d53 else d14 else ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> true ) ) ) $ ( true )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if false then x1100 else Bool ) ) ) $ ( if true then Bool else Bool )
        d109 = if if d82 then d9 else true then if d17 then d37 else d75 else if false then true else true
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = if ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d14 ) ) ) $ ( d87 ) then if false then false else true else if d35 then d87 else true
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = if if true then true else true then if true then d57 else d66 else if true then true else d37
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if d78 then d61 else d90 ) ) ) $ ( if d71 then d90 else true )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> ( ( Set -> Set ) ∋ ( ( λ x1220 -> if true then x1210 else Bool ) ) ) $ ( x1210 ) ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if false then x1190 else d100 ) ) ) $ ( d57 ) ) ) ) $ ( if d25 then d113 else d105 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> if false then x1250 else x1250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if true then true else d9 ) ) ) $ ( if d66 then d25 else d41 )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if true then Bool else x1300 ) ) ) $ ( if true then Bool else Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> if d105 then false else x1290 ) ) ) $ ( x1280 ) ) ) ) $ ( if true then false else false )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> ( ( Set -> Set ) ∋ ( ( λ x1350 -> if true then Bool else x1340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if x1330 then x1330 else x1320 ) ) ) $ ( x1320 ) ) ) ) $ ( if d25 then false else false )
        d136 : if true then if false then Bool else Bool else if false then Bool else Bool
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if false then x1370 else x1370 ) ) ) $ ( if true then false else true )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then Bool else x1400 ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if d53 then x1390 else x1390 ) ) ) $ ( if d136 then d6 else d78 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if true then false else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> ( ( Set -> Set ) ∋ ( ( λ x1480 -> if false then x1470 else x1470 ) ) ) $ ( x1470 ) ) ) ) $ ( if true then Bool else Bool )
        d146 = if if true then d9 else false then if d123 then true else d35 else if d141 then true else d115
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then x1530 else x1530 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if x1510 then d105 else x1500 ) ) ) $ ( x1500 ) ) ) ) $ ( if d17 then d136 else true )
        d154 : if true then ( ( Set -> Set ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if d71 then true else x1560 ) ) ) $ ( true ) ) ) ) $ ( if d61 then true else false )
        d158 : if false then ( ( Set -> Set ) ∋ ( ( λ x1590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d158 = if if true then d21 else false then if d57 then true else true else if true then false else d113
        d160 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1630 -> Bool ) ) ) $ ( Bool )
        d160 = if ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( d113 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> d158 ) ) ) $ ( true ) else if false then false else d95
        d164 : if true then if true then Bool else Bool else if true then Bool else Bool
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if x1650 then d17 else d1 ) ) ) $ ( x1650 ) ) ) ) $ ( if false then true else d6 )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then x1700 else Bool ) ) ) $ ( x1700 ) ) ) ) $ ( if false then Bool else Bool )
        d167 = if if d1 then d21 else d82 then ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> d21 ) ) ) $ ( d100 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> false ) ) ) $ ( true )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> if true then Bool else x1750 ) ) ) $ ( if false then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if d71 then false else d14 ) ) ) $ ( x1730 ) ) ) ) $ ( if d118 then d6 else d17 )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> ( ( Set -> Set ) ∋ ( ( λ x1810 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d176 = if ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d136 ) ) ) $ ( d115 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> d105 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> true ) ) ) $ ( d21 )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> ( ( Set -> Set ) ∋ ( ( λ x1860 -> if true then x1850 else Bool ) ) ) $ ( x1850 ) ) ) ) $ ( if false then Bool else Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if true then true else d17 ) ) ) $ ( true ) ) ) ) $ ( if d105 then false else false )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if false then x1890 else true ) ) ) $ ( d90 ) ) ) ) $ ( if d149 then true else true )
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> ( ( Set -> Set ) ∋ ( ( λ x1940 -> if true then x1940 else Bool ) ) ) $ ( x1930 ) ) ) ) $ ( if true then Bool else Bool )
        d191 = if if d75 then true else d187 then ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> d25 ) ) ) $ ( false ) else if d78 then d160 else d113
        d195 : if true then if false then Bool else Bool else if true then Bool else Bool
        d195 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( true )
        d198 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> if true then x2000 else Bool ) ) ) $ ( if true then Bool else Bool )
        d198 = if ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> false ) ) ) $ ( true ) then if d37 then d158 else d78 else if false then false else false
        d201 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> if false then x2040 else Bool ) ) ) $ ( if false then Bool else Bool )
        d201 = if ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> d25 ) ) ) $ ( d160 ) then if true then d78 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> d187 ) ) ) $ ( false )
        d205 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> if false then Bool else x2080 ) ) ) $ ( if true then Bool else Bool )
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> if d160 then d138 else x2070 ) ) ) $ ( x2060 ) ) ) ) $ ( if true then true else d146 )
        d209 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2120 -> Bool ) ) ) $ ( Bool )
        d209 = ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> if false then d158 else true ) ) ) $ ( false ) ) ) ) $ ( if false then d71 else false )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x2150 -> ( ( Set -> Set ) ∋ ( ( λ x2160 -> if true then Bool else x2160 ) ) ) $ ( x2150 ) ) ) ) $ ( if true then Bool else Bool )
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> if false then x2140 else true ) ) ) $ ( if d37 then d21 else d17 )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then x2190 else x2200 ) ) ) $ ( x2190 ) ) ) ) $ ( if false then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> if d118 then x2180 else x2180 ) ) ) $ ( if d109 then d1 else false )
        d221 : ( ( Set -> Set ) ∋ ( ( λ x2230 -> ( ( Set -> Set ) ∋ ( ( λ x2240 -> if true then Bool else x2230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> if false then false else x2220 ) ) ) $ ( if true then d131 else d25 )
        d225 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2280 -> Bool ) ) ) $ ( Bool )
        d225 = if ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> true ) ) ) $ ( d87 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> true ) ) ) $ ( d78 ) else if true then true else d100
        d229 : ( ( Set -> Set ) ∋ ( ( λ x2320 -> ( ( Set -> Set ) ∋ ( ( λ x2330 -> if true then x2320 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if false then x2310 else x2300 ) ) ) $ ( d35 ) ) ) ) $ ( if false then d111 else d105 )
        d234 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> ( ( Set -> Set ) ∋ ( ( λ x2370 -> if true then x2360 else Bool ) ) ) $ ( x2360 ) ) ) ) $ ( if true then Bool else Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> if false then x2350 else true ) ) ) $ ( if true then d160 else false )
        d238 : if false then ( ( Set -> Set ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2420 -> Bool ) ) ) $ ( Bool )
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> if x2400 then d205 else x2390 ) ) ) $ ( d164 ) ) ) ) $ ( if true then true else d127 )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x2450 -> ( ( Set -> Set ) ∋ ( ( λ x2460 -> if true then Bool else x2450 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> if false then true else x2440 ) ) ) $ ( if false then true else false )
        d247 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2500 -> Bool ) ) ) $ ( Bool )
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> if false then d71 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d111 else false )
        d251 : if false then ( ( Set -> Set ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if x2520 then d105 else d238 ) ) ) $ ( if d71 then false else d37 )
        d254 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> if true then Bool else x2580 ) ) ) $ ( if false then Bool else Bool )
        d254 = if ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> d61 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> d146 ) ) ) $ ( d71 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> d160 ) ) ) $ ( false )
        d259 : if false then if true then Bool else Bool else if true then Bool else Bool
        d259 = if ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> x2620 ) ) ) $ ( false )
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2660 -> if true then Bool else x2660 ) ) ) $ ( if true then Bool else Bool )
        d263 = if if false then d141 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> x2650 ) ) ) $ ( false )
        d267 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2690 -> Bool ) ) ) $ ( Bool )
        d267 = if if false then true else d213 then ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> true ) ) ) $ ( true ) else if d30 then true else d160
        d270 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2730 -> x2730 ) ) ) $ ( Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> if x2710 then false else d115 ) ) ) $ ( x2710 ) ) ) ) $ ( if true then true else d160 )
        d274 : if true then ( ( Set -> Set ) ∋ ( ( λ x2760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2770 -> Bool ) ) ) $ ( Bool )
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if x2750 then d243 else true ) ) ) $ ( if false then false else true )
        d278 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2800 -> x2800 ) ) ) $ ( Bool )
        d278 = ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> if true then x2790 else x2790 ) ) ) $ ( if d1 then d167 else true )
        d281 : if false then ( ( Set -> Set ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2840 -> Bool ) ) ) $ ( Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> if x2820 then d213 else d90 ) ) ) $ ( if d278 then d109 else d217 )
        d285 : if false then ( ( Set -> Set ) ∋ ( ( λ x2870 -> x2870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if true then false else x2860 ) ) ) $ ( if d270 then true else true )
        d288 : if true then if false then Bool else Bool else if false then Bool else Bool
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if d172 then d234 else d176 ) ) ) $ ( true ) ) ) ) $ ( if d138 then d9 else true )
        d291 : ( ( Set -> Set ) ∋ ( ( λ x2940 -> ( ( Set -> Set ) ∋ ( ( λ x2950 -> if false then x2950 else x2950 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> if false then d14 else d195 ) ) ) $ ( false ) ) ) ) $ ( if d71 then true else d95 )
        d296 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2980 -> x2980 ) ) ) $ ( Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> if x2970 then false else x2970 ) ) ) $ ( if true then d221 else true )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x3000 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d299 = if if d136 then false else d127 then if d243 then d274 else true else if false then d118 else false
        d301 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d301 = if if d21 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> x3030 ) ) ) $ ( false )
        d305 : if true then ( ( Set -> Set ) ∋ ( ( λ x3080 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if x3070 then true else true ) ) ) $ ( x3060 ) ) ) ) $ ( if d9 then d195 else false )
        d309 : if false then ( ( Set -> Set ) ∋ ( ( λ x3110 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> if false then true else x3100 ) ) ) $ ( if d17 then d75 else true )
        d312 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> if false then x3150 else x3150 ) ) ) $ ( if true then Bool else Bool )
        d312 = ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> if x3140 then d35 else false ) ) ) $ ( d229 ) ) ) ) $ ( if false then false else d14 )
        d316 : if true then ( ( Set -> Set ) ∋ ( ( λ x3190 -> x3190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3200 -> Bool ) ) ) $ ( Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> if x3180 then x3180 else false ) ) ) $ ( x3170 ) ) ) ) $ ( if d111 then false else d209 )
        d321 : if false then if true then Bool else Bool else if false then Bool else Bool
        d321 = if ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> d195 ) ) ) $ ( false ) then if d154 then d301 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> false ) ) ) $ ( d288 )
        d324 : if true then ( ( Set -> Set ) ∋ ( ( λ x3270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3280 -> Bool ) ) ) $ ( Bool )
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> if x3260 then false else d278 ) ) ) $ ( x3250 ) ) ) ) $ ( if d296 then d49 else d288 )
        d329 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> if false then x3320 else x3320 ) ) ) $ ( if true then Bool else Bool )
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if x3310 then d158 else x3310 ) ) ) $ ( d167 ) ) ) ) $ ( if true then d167 else d17 )
        d333 : if false then if true then Bool else Bool else if true then Bool else Bool
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> if d160 then true else true ) ) ) $ ( if false then true else false )
        d335 : if true then ( ( Set -> Set ) ∋ ( ( λ x3380 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d335 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> x3360 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> d25 ) ) ) $ ( d225 )
        d339 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> ( ( Set -> Set ) ∋ ( ( λ x3420 -> if true then Bool else Bool ) ) ) $ ( x3410 ) ) ) ) $ ( if false then Bool else Bool )
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> if d53 then x3400 else false ) ) ) $ ( if true then true else d198 )
        d343 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> ( ( Set -> Set ) ∋ ( ( λ x3480 -> if false then x3480 else x3470 ) ) ) $ ( x3470 ) ) ) ) $ ( if false then Bool else Bool )
        d343 = if ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> d35 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> false ) ) ) $ ( d281 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> d309 ) ) ) $ ( d61 )
        d349 : if false then ( ( Set -> Set ) ∋ ( ( λ x3520 -> x3520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> if d335 then x3510 else d6 ) ) ) $ ( d259 ) ) ) ) $ ( if d309 then d154 else d37 )
        d353 : if false then if false then Bool else Bool else if false then Bool else Bool
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> if false then true else x3540 ) ) ) $ ( if false then true else d95 )
        d355 : if true then if false then Bool else Bool else if false then Bool else Bool
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> if x3560 then d149 else x3560 ) ) ) $ ( if true then d234 else false )
        d357 : if false then if false then Bool else Bool else if false then Bool else Bool
        d357 = if ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( d75 ) then if d30 then d355 else d14 else ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> d312 ) ) ) $ ( d278 )
        d360 : ( ( Set -> Set ) ∋ ( ( λ x3610 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d360 = if if d247 then false else true then if d187 then true else d164 else if false then d141 else d6
        d362 : ( ( Set -> Set ) ∋ ( ( λ x3650 -> ( ( Set -> Set ) ∋ ( ( λ x3660 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d362 = if if d41 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> x3640 ) ) ) $ ( d41 )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x3690 -> ( ( Set -> Set ) ∋ ( ( λ x3700 -> if false then x3700 else x3700 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> if d299 then true else false ) ) ) $ ( if d14 then true else false )
        d371 : if true then ( ( Set -> Set ) ∋ ( ( λ x3740 -> x3740 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d371 = if ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> x3720 ) ) ) $ ( true ) then if d187 then true else d333 else ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> true ) ) ) $ ( d6 )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3770 -> ( ( Set -> Set ) ∋ ( ( λ x3780 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d375 = if ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> x3760 ) ) ) $ ( false ) then if d141 then true else false else if false then d136 else false
        d379 : if false then ( ( Set -> Set ) ∋ ( ( λ x3820 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3830 -> Bool ) ) ) $ ( Bool )
        d379 = if ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> d205 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> d229 ) ) ) $ ( d357 ) else if false then false else d259
        d384 : if false then ( ( Set -> Set ) ∋ ( ( λ x3870 -> x3870 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3880 -> x3880 ) ) ) $ ( Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> if d49 then true else x3860 ) ) ) $ ( d14 ) ) ) ) $ ( if false then false else false )
        d389 : ( ( Set -> Set ) ∋ ( ( λ x3910 -> if true then Bool else x3910 ) ) ) $ ( if true then Bool else Bool )
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> if d291 then x3900 else x3900 ) ) ) $ ( if true then d343 else false )
        d392 : ( ( Set -> Set ) ∋ ( ( λ x3950 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d392 = if if d149 then false else d305 then ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( d25 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> d172 ) ) ) $ ( false )
        d396 : if true then if true then Bool else Bool else if false then Bool else Bool
        d396 = if if true then false else true then if true then false else false else if true then true else true
        d397 : if false then ( ( Set -> Set ) ∋ ( ( λ x4000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> if x3990 then d131 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d37 else d299 )
        d401 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4030 -> Bool ) ) ) $ ( Bool )
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> if true then true else false ) ) ) $ ( if d397 then d281 else true )
        d404 : if true then ( ( Set -> Set ) ∋ ( ( λ x4070 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> if d149 then true else x4050 ) ) ) $ ( d172 ) ) ) ) $ ( if false then true else d375 )
        d408 : ( ( Set -> Set ) ∋ ( ( λ x4100 -> if true then Bool else x4100 ) ) ) $ ( if true then Bool else Bool )
        d408 = ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> if true then false else x4090 ) ) ) $ ( if false then d30 else d357 )
        d411 : ( ( Set -> Set ) ∋ ( ( λ x4130 -> ( ( Set -> Set ) ∋ ( ( λ x4140 -> if false then x4140 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d411 = if if false then d397 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> x4120 ) ) ) $ ( false ) else if false then d100 else false
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d415 = if if d247 then d113 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( false ) else if d25 then d95 else true
        d418 : if true then if false then Bool else Bool else if true then Bool else Bool
        d418 = if ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> true ) ) ) $ ( d66 ) then if true then true else d281 else if d389 then d172 else true
        d420 : ( ( Set -> Set ) ∋ ( ( λ x4220 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d420 = if if d37 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> x4210 ) ) ) $ ( d357 ) else if d82 then false else d251
        d423 : if true then if true then Bool else Bool else if true then Bool else Bool
        d423 = if ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> true ) ) ) $ ( true ) then if d45 then d201 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> true ) ) ) $ ( d41 )
        d426 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4290 -> x4290 ) ) ) $ ( Bool )
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> if true then d263 else x4270 ) ) ) $ ( x4270 ) ) ) ) $ ( if true then false else d329 )
        d430 : if true then if true then Bool else Bool else if false then Bool else Bool
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> if d309 then d164 else true ) ) ) $ ( if d278 then true else d172 )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4340 -> ( ( Set -> Set ) ∋ ( ( λ x4350 -> if false then x4350 else x4350 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if x4330 then d95 else x4330 ) ) ) $ ( if d14 then true else d71 )
        d436 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4390 -> Bool ) ) ) $ ( Bool )
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> if true then d371 else x4380 ) ) ) $ ( true ) ) ) ) $ ( if d158 then true else false )
        d440 : ( ( Set -> Set ) ∋ ( ( λ x4430 -> if true then x4430 else x4430 ) ) ) $ ( if true then Bool else Bool )
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> if x4410 then d35 else d30 ) ) ) $ ( x4410 ) ) ) ) $ ( if d49 then d411 else d160 )
        d444 : if true then ( ( Set -> Set ) ∋ ( ( λ x4460 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> if d420 then false else d191 ) ) ) $ ( if d357 then d75 else true )
        d447 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> if true then x4510 else Bool ) ) ) $ ( if true then Bool else Bool )
        d447 = if ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> true ) ) ) $ ( d440 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> false ) ) ) $ ( d371 )
        d452 : if false then if false then Bool else Bool else if false then Bool else Bool
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if true then x4530 else d205 ) ) ) $ ( d397 ) ) ) ) $ ( if true then d321 else d138 )
        d455 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4590 -> x4590 ) ) ) $ ( Bool )
        d455 = if ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> x4560 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> x4570 ) ) ) $ ( d61 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> d408 ) ) ) $ ( true )
        d460 : ( ( Set -> Set ) ∋ ( ( λ x4630 -> ( ( Set -> Set ) ∋ ( ( λ x4640 -> if false then x4640 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> if x4620 then x4610 else x4610 ) ) ) $ ( x4610 ) ) ) ) $ ( if d285 then false else d432 )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> ( ( Set -> Set ) ∋ ( ( λ x4700 -> if false then x4700 else x4700 ) ) ) $ ( x4690 ) ) ) ) $ ( if false then Bool else Bool )
        d465 = if ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> x4660 ) ) ) $ ( d460 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> x4680 ) ) ) $ ( d288 )
        d471 : if true then ( ( Set -> Set ) ∋ ( ( λ x4740 -> x4740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4750 -> x4750 ) ) ) $ ( Bool )
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> if false then x4720 else x4720 ) ) ) $ ( true ) ) ) ) $ ( if d423 then false else false )
        d476 : if true then if true then Bool else Bool else if false then Bool else Bool
        d476 = if ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> x4770 ) ) ) $ ( false ) then if d75 then false else d1 else if d316 then false else d291
        d478 : ( ( Set -> Set ) ∋ ( ( λ x4810 -> if true then Bool else x4810 ) ) ) $ ( if true then Bool else Bool )
        d478 = if if false then d404 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> d392 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> true ) ) ) $ ( false )
        d482 : if true then if true then Bool else Bool else if true then Bool else Bool
        d482 = if if true then true else false then if true then d379 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> x4830 ) ) ) $ ( d109 )
        d484 : ( ( Set -> Set ) ∋ ( ( λ x4870 -> ( ( Set -> Set ) ∋ ( ( λ x4880 -> if true then Bool else x4870 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> if false then true else true ) ) ) $ ( x4850 ) ) ) ) $ ( if false then false else d146 )
        d489 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4920 -> Bool ) ) ) $ ( Bool )
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> if x4900 then d436 else false ) ) ) $ ( x4900 ) ) ) ) $ ( if d321 then false else true )
        d493 : if true then if true then Bool else Bool else if false then Bool else Bool
        d493 = if if d141 then d118 else d198 then if d123 then true else d75 else ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> false ) ) ) $ ( d45 )
        d495 : if false then ( ( Set -> Set ) ∋ ( ( λ x4990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( Bool )
        d495 = if ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> x4960 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> d309 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> x4980 ) ) ) $ ( false )
        d501 : ( ( Set -> Set ) ∋ ( ( λ x5030 -> ( ( Set -> Set ) ∋ ( ( λ x5040 -> if true then x5030 else x5030 ) ) ) $ ( x5030 ) ) ) ) $ ( if false then Bool else Bool )
        d501 = if if false then false else d251 then ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> d251 ) ) ) $ ( false ) else if true then true else d267
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> ( ( Set -> Set ) ∋ ( ( λ x5090 -> if true then x5090 else x5080 ) ) ) $ ( x5080 ) ) ) ) $ ( if true then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> if d384 then d146 else d353 ) ) ) $ ( false ) ) ) ) $ ( if d288 then d35 else d6 )
        d510 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5120 -> Bool ) ) ) $ ( Bool )
        d510 = if if d408 then false else d465 then if true then d160 else d95 else ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( false )
        d513 : ( ( Set -> Set ) ∋ ( ( λ x5160 -> if true then x5160 else x5160 ) ) ) $ ( if true then Bool else Bool )
        d513 = if ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> d353 ) ) ) $ ( true ) then if d35 then false else d111 else ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> false ) ) ) $ ( false )
        d517 : if false then ( ( Set -> Set ) ∋ ( ( λ x5200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5210 -> x5210 ) ) ) $ ( Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> if true then x5180 else false ) ) ) $ ( d411 ) ) ) ) $ ( if d476 then d90 else false )
        d522 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> if x5240 then x5240 else true ) ) ) $ ( x5230 ) ) ) ) $ ( if false then d484 else true )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x5280 -> ( ( Set -> Set ) ∋ ( ( λ x5290 -> if false then x5290 else x5290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d526 = ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if x5270 then x5270 else x5270 ) ) ) $ ( if d291 then d95 else true )
        d530 : if true then if false then Bool else Bool else if true then Bool else Bool
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if d82 then d21 else x5310 ) ) ) $ ( d243 ) ) ) ) $ ( if true then true else d455 )
        d533 : if false then ( ( Set -> Set ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5370 -> Bool ) ) ) $ ( Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if false then d440 else d17 ) ) ) $ ( true ) ) ) ) $ ( if d1 then false else d316 )
        d538 : if false then ( ( Set -> Set ) ∋ ( ( λ x5400 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> if true then true else x5390 ) ) ) $ ( if d14 then true else true )
        d541 : if false then if true then Bool else Bool else if false then Bool else Bool
        d541 = ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> if x5420 then x5420 else d82 ) ) ) $ ( if false then d452 else d495 )
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> if true then Bool else x5450 ) ) ) $ ( if false then Bool else Bool )
        d543 = if if false then d75 else d17 then if d288 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> true ) ) ) $ ( d254 )
        d546 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5490 -> Bool ) ) ) $ ( Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> if true then true else x5480 ) ) ) $ ( d95 ) ) ) ) $ ( if true then true else true )
        d550 : ( ( Set -> Set ) ∋ ( ( λ x5530 -> if false then x5530 else Bool ) ) ) $ ( if true then Bool else Bool )
        d550 = if ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> d418 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> x5520 ) ) ) $ ( d243 ) else if d541 then d432 else d71
        d554 : ( ( Set -> Set ) ∋ ( ( λ x5570 -> ( ( Set -> Set ) ∋ ( ( λ x5580 -> if false then x5580 else x5570 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> if d90 then d343 else d176 ) ) ) $ ( false ) ) ) ) $ ( if d115 then false else true )
        d559 : if false then if true then Bool else Bool else if true then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if false then x5600 else d375 ) ) ) $ ( if false then false else false )
        d561 : if true then ( ( Set -> Set ) ∋ ( ( λ x5640 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> if x5620 then false else x5620 ) ) ) $ ( x5620 ) ) ) ) $ ( if true then false else true )
        d565 : if true then ( ( Set -> Set ) ∋ ( ( λ x5670 -> x5670 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> if x5660 then x5660 else x5660 ) ) ) $ ( if d30 then false else false )
        d568 : if true then ( ( Set -> Set ) ∋ ( ( λ x5700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5710 -> Bool ) ) ) $ ( Bool )
        d568 = ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> if true then d82 else false ) ) ) $ ( if false then false else d420 )