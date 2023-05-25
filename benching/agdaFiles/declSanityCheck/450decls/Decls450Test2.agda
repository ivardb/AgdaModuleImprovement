module Decls450Test2  where
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
        d1 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then true else x20 ) ) ) $ ( x20 ) ) ) ) $ ( if false then false else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else x70 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then d1 else d1 ) ) ) $ ( if d1 then true else true )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then x100 else Bool ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d4 then false else d4 ) ) ) $ ( if d1 then d1 else d4 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then x140 else x140 ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d1 then d8 else x120 ) ) ) $ ( d8 ) ) ) ) $ ( if d4 then d4 else d4 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then x170 else x170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d4 then true else x160 ) ) ) $ ( if d1 then true else false )
        d19 : if true then ( ( Set -> Set ) ∋ ( ( λ x230 -> x230 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x240 -> x240 ) ) ) $ ( Bool )
        d19 = if ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d4 ) ) ) $ ( d4 ) then ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d4 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d15 ) ) ) $ ( d8 )
        d25 : if true then ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool )
        d25 = if if d1 then d8 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> d15 ) ) ) $ ( d19 )
        d30 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( Bool )
        d30 = if ( ( Bool -> Bool ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( false ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x320 -> true ) ) ) $ ( true )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> if false then x370 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if false then true else x350 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d11 )
        d39 : if false then ( ( Set -> Set ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if d30 then x400 else x400 ) ) ) $ ( if false then false else false )
        d42 : if true then ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if true then d34 else false ) ) ) $ ( x430 ) ) ) ) $ ( if false then d8 else false )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then Bool else Bool ) ) ) $ ( x500 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if x480 then x490 else x490 ) ) ) $ ( d39 ) ) ) ) $ ( if d39 then d42 else d39 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> if false then x550 else Bool ) ) ) $ ( x540 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( true ) then if d15 then true else true else if true then false else d42
        d56 : ( ( Set -> Set ) ∋ ( ( λ x580 -> ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then Bool else x580 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if d11 then d30 else true ) ) ) $ ( if false then false else d47 )
        d60 : if false then if false then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if true then true else false ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x660 -> ( ( Set -> Set ) ∋ ( ( λ x670 -> if false then Bool else x670 ) ) ) $ ( x660 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> true ) ) ) $ ( d30 ) then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> true ) ) ) $ ( d42 ) else if false then d25 else false
        d68 : if false then ( ( Set -> Set ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x720 -> x720 ) ) ) $ ( Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if x700 then x690 else x700 ) ) ) $ ( x690 ) ) ) ) $ ( if false then false else d52 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x770 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> if true then Bool else Bool ) ) ) $ ( x770 ) ) ) ) $ ( if true then Bool else Bool )
        d73 = if ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d42 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x760 -> d42 ) ) ) $ ( d42 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x810 -> if false then Bool else x810 ) ) ) $ ( if false then Bool else Bool )
        d79 = if ( ( Bool -> Bool ) ∋ ( ( λ x800 -> false ) ) ) $ ( d73 ) then if d39 then d19 else d19 else if false then d11 else d15
        d82 : if false then if false then Bool else Bool else if false then Bool else Bool
        d82 = if if true then false else false then if false then true else d73 else ( ( Bool -> Bool ) ∋ ( ( λ x830 -> false ) ) ) $ ( d34 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> if true then x880 else x870 ) ) ) $ ( x870 ) ) ) ) $ ( if true then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if x850 then x850 else true ) ) ) $ ( d82 ) ) ) ) $ ( if true then true else d1 )
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if false then d68 else d11 ) ) ) $ ( if d42 then true else d68 )
        d91 : if true then ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if d1 then x920 else true ) ) ) $ ( if false then false else d34 )
        d94 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x970 -> Bool ) ) ) $ ( Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if d1 then true else true ) ) ) $ ( x950 ) ) ) ) $ ( if d91 then d63 else false )
        d98 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( Bool )
        d98 = if if true then d52 else true then if d34 then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( d1 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then Bool else x1060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d101 = if ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> d8 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> x1030 ) ) ) $ ( d30 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> false ) ) ) $ ( d98 )
        d107 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if x1080 then x1080 else d63 ) ) ) $ ( if d82 then d84 else true )
        d110 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if d84 then true else d25 ) ) ) $ ( if false then false else false )
        d113 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( Bool )
        d113 = if ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> false ) ) ) $ ( d82 ) else if true then true else d60
        d117 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> if true then x1200 else x1200 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if false then false else false ) ) ) $ ( false ) ) ) ) $ ( if d73 then false else d30 )
        d122 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if true then d52 else x1240 ) ) ) $ ( false ) ) ) ) $ ( if d34 then true else d117 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if false then x1270 else false ) ) ) $ ( if d117 then false else false )
        d129 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if false then x1300 else d19 ) ) ) $ ( false ) ) ) ) $ ( if false then d91 else false )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> if true then x1360 else x1360 ) ) ) $ ( x1350 ) ) ) ) $ ( if false then Bool else Bool )
        d133 = if ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( d52 ) then if d4 then d60 else d117 else if d19 then true else d19
        d137 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then x1400 else Bool ) ) ) $ ( if false then Bool else Bool )
        d137 = if ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> false ) ) ) $ ( d110 ) else if d98 then d47 else d60
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> if true then x1430 else x1430 ) ) ) $ ( if true then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if x1420 then x1420 else x1420 ) ) ) $ ( if false then false else true )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then Bool else x1470 ) ) ) $ ( x1460 ) ) ) ) $ ( if true then Bool else Bool )
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if false then x1450 else true ) ) ) $ ( if d89 then true else true )
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then x1510 else Bool ) ) ) $ ( if true then Bool else Bool )
        d148 = if ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> d117 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> d73 ) ) ) $ ( false ) else if true then d122 else false
        d152 : if false then if true then Bool else Bool else if false then Bool else Bool
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if d141 then true else x1530 ) ) ) $ ( if false then d11 else true )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if true then x1560 else Bool ) ) ) $ ( x1560 ) ) ) ) $ ( if true then Bool else Bool )
        d154 = if if d79 then d30 else d34 then ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> true ) ) ) $ ( d137 ) else if d8 then d107 else false
        d158 : ( ( Set -> Set ) ∋ ( ( λ x1600 -> ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then Bool else x1600 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if true then x1590 else x1590 ) ) ) $ ( if true then d154 else d98 )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> if true then x1640 else x1640 ) ) ) $ ( if false then Bool else Bool )
        d162 = if ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> true ) ) ) $ ( true ) then if d82 then d8 else d126 else if d1 then d30 else false
        d165 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then Bool else Bool ) ) ) $ ( x1670 ) ) ) ) $ ( if true then Bool else Bool )
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if d110 then true else true ) ) ) $ ( if d79 then d141 else d79 )
        d169 : if false then ( ( Set -> Set ) ∋ ( ( λ x1730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1740 -> Bool ) ) ) $ ( Bool )
        d169 = if ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> d113 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> x1710 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> d42 ) ) ) $ ( true )
        d175 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1780 -> Bool ) ) ) $ ( Bool )
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> if true then d101 else x1770 ) ) ) $ ( true ) ) ) ) $ ( if false then d122 else false )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then x1820 else x1810 ) ) ) $ ( x1810 ) ) ) ) $ ( if false then Bool else Bool )
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> if false then true else x1800 ) ) ) $ ( if false then false else d34 )
        d183 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if false then d110 else d122 ) ) ) $ ( d126 ) ) ) ) $ ( if false then true else d148 )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then x1900 else x1900 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d187 = if ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> d129 ) ) ) $ ( false ) then if d42 then d91 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> d107 ) ) ) $ ( false )
        d192 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( Bool )
        d192 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> true ) ) ) $ ( d129 ) else if d158 then d110 else false
        d195 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1990 -> Bool ) ) ) $ ( Bool )
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> d122 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> d4 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> false ) ) ) $ ( d1 )
        d200 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> ( ( Set -> Set ) ∋ ( ( λ x2030 -> if false then x2020 else x2020 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> if false then x2010 else d113 ) ) ) $ ( if true then d60 else d52 )
        d204 : if true then if true then Bool else Bool else if true then Bool else Bool
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> if x2050 then false else d52 ) ) ) $ ( if d89 then true else d117 )
        d206 : if true then ( ( Set -> Set ) ∋ ( ( λ x2090 -> x2090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> if true then d137 else x2080 ) ) ) $ ( x2070 ) ) ) ) $ ( if d133 then true else true )
        d211 : if true then if false then Bool else Bool else if true then Bool else Bool
        d211 = if if false then d42 else d30 then if false then false else d129 else if d39 then true else true
        d212 : ( ( Set -> Set ) ∋ ( ( λ x2150 -> ( ( Set -> Set ) ∋ ( ( λ x2160 -> if true then Bool else Bool ) ) ) $ ( x2150 ) ) ) ) $ ( if true then Bool else Bool )
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> if x2130 then d25 else d56 ) ) ) $ ( d1 ) ) ) ) $ ( if true then d165 else d195 )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if true then x2180 else x2180 ) ) ) $ ( if false then Bool else Bool )
        d217 = if if false then true else true then if false then d60 else false else if true then false else false
        d219 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> ( ( Set -> Set ) ∋ ( ( λ x2230 -> if false then Bool else x2230 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d219 = ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> if false then x2200 else x2210 ) ) ) $ ( x2200 ) ) ) ) $ ( if true then false else false )
        d224 : if true then ( ( Set -> Set ) ∋ ( ( λ x2260 -> x2260 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( Bool )
        d224 = if if true then true else true then if true then false else d133 else ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> true ) ) ) $ ( d192 )
        d228 : if false then if false then Bool else Bool else if false then Bool else Bool
        d228 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> d107 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> x2300 ) ) ) $ ( d165 )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> ( ( Set -> Set ) ∋ ( ( λ x2340 -> if true then x2340 else x2340 ) ) ) $ ( x2330 ) ) ) ) $ ( if true then Bool else Bool )
        d231 = if if d141 then true else d179 then if false then d101 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> x2320 ) ) ) $ ( true )
        d235 : if true then if false then Bool else Bool else if true then Bool else Bool
        d235 = if ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> d1 ) ) ) $ ( true ) then if true then d179 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> d219 ) ) ) $ ( d195 )
        d238 : if false then ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> if d94 then x2390 else true ) ) ) $ ( if d89 then true else d60 )
        d241 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2440 -> Bool ) ) ) $ ( Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if d56 then x2420 else x2420 ) ) ) $ ( x2420 ) ) ) ) $ ( if d129 then d73 else true )
        d245 : ( ( Set -> Set ) ∋ ( ( λ x2470 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> if x2460 then false else d195 ) ) ) $ ( if true then true else d224 )
        d248 : if false then ( ( Set -> Set ) ∋ ( ( λ x2500 -> x2500 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2510 -> Bool ) ) ) $ ( Bool )
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> if x2490 then d8 else d56 ) ) ) $ ( if false then true else d52 )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x2550 -> ( ( Set -> Set ) ∋ ( ( λ x2560 -> if true then Bool else Bool ) ) ) $ ( x2550 ) ) ) ) $ ( if true then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if x2540 then x2540 else true ) ) ) $ ( x2530 ) ) ) ) $ ( if true then d60 else false )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if true then x2610 else x2610 ) ) ) $ ( if true then Bool else Bool )
        d257 = if ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> d169 ) ) ) $ ( d152 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d122 ) ) ) $ ( d52 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> true ) ) ) $ ( true )
        d262 : if true then if false then Bool else Bool else if false then Bool else Bool
        d262 = if ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> d252 ) ) ) $ ( false ) then if d4 then false else true else if d56 then true else false
        d264 : if true then if true then Bool else Bool else if false then Bool else Bool
        d264 = if if d63 then d228 else d217 then if d195 then d154 else true else if false then d200 else d192
        d265 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> if true then Bool else x2680 ) ) ) $ ( if true then Bool else Bool )
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> if x2670 then d107 else x2670 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d269 : if false then ( ( Set -> Set ) ∋ ( ( λ x2720 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool )
        d269 = if ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> d82 ) ) ) $ ( true ) else if d82 then d262 else false
        d274 : ( ( Set -> Set ) ∋ ( ( λ x2760 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if d154 then x2750 else false ) ) ) $ ( if true then true else true )
        d277 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2800 -> x2800 ) ) ) $ ( Bool )
        d277 = if ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> false ) ) ) $ ( d212 ) else if false then true else false
        d281 : if false then if true then Bool else Bool else if true then Bool else Bool
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if d148 then d162 else false ) ) ) $ ( d68 ) ) ) ) $ ( if false then false else d228 )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> if false then x2870 else Bool ) ) ) $ ( if false then Bool else Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if false then d175 else true ) ) ) $ ( x2850 ) ) ) ) $ ( if d1 then d148 else d98 )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> ( ( Set -> Set ) ∋ ( ( λ x2920 -> if true then x2910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if d117 then true else x2900 ) ) ) $ ( x2890 ) ) ) ) $ ( if d42 then d212 else d175 )
        d293 : if false then if false then Bool else Bool else if true then Bool else Bool
        d293 = if if false then d238 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> d158 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> true ) ) ) $ ( false )
        d296 : ( ( Set -> Set ) ∋ ( ( λ x2980 -> ( ( Set -> Set ) ∋ ( ( λ x2990 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d296 = if if d162 then false else d274 then ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> x2970 ) ) ) $ ( true ) else if true then false else true
        d300 : ( ( Set -> Set ) ∋ ( ( λ x3020 -> ( ( Set -> Set ) ∋ ( ( λ x3030 -> if false then x3030 else Bool ) ) ) $ ( x3020 ) ) ) ) $ ( if false then Bool else Bool )
        d300 = ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> if x3010 then x3010 else true ) ) ) $ ( if true then true else d175 )
        d304 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> if true then Bool else x3060 ) ) ) $ ( if true then Bool else Bool )
        d304 = if if false then true else true then if d195 then d183 else d175 else ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> x3050 ) ) ) $ ( d126 )
        d307 : if false then ( ( Set -> Set ) ∋ ( ( λ x3100 -> x3100 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> if false then true else true ) ) ) $ ( true ) ) ) ) $ ( if d152 then d122 else d73 )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x3140 -> ( ( Set -> Set ) ∋ ( ( λ x3150 -> if true then Bool else x3140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d311 = if ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> x3120 ) ) ) $ ( false ) then if d206 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> true ) ) ) $ ( false )
        d316 : if false then ( ( Set -> Set ) ∋ ( ( λ x3180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3190 -> Bool ) ) ) $ ( Bool )
        d316 = if if d60 then d107 else true then if true then d293 else d25 else ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> d219 ) ) ) $ ( true )
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> if true then true else d133 ) ) ) $ ( x3210 ) ) ) ) $ ( if true then d316 else false )
        d324 : if false then if true then Bool else Bool else if false then Bool else Bool
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> if true then d25 else x3250 ) ) ) $ ( x3250 ) ) ) ) $ ( if d79 then true else true )
        d327 : if true then if false then Bool else Bool else if false then Bool else Bool
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> if x3280 then x3280 else d158 ) ) ) $ ( if false then true else d241 )
        d329 : if true then ( ( Set -> Set ) ∋ ( ( λ x3320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool )
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if x3300 then false else d224 ) ) ) $ ( d293 ) ) ) ) $ ( if true then false else d94 )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> if true then x3360 else Bool ) ) ) $ ( if true then Bool else Bool )
        d334 = if if true then true else true then if false then d329 else d281 else ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> false ) ) ) $ ( d52 )
        d337 : if false then if true then Bool else Bool else if true then Bool else Bool
        d337 = ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> if true then false else d175 ) ) ) $ ( x3380 ) ) ) ) $ ( if d241 then true else d56 )
        d340 : if false then if false then Bool else Bool else if true then Bool else Bool
        d340 = if if false then d137 else d113 then if d98 then true else d277 else ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> true ) ) ) $ ( false )
        d342 : if true then if false then Bool else Bool else if false then Bool else Bool
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if x3430 then x3430 else false ) ) ) $ ( if true then d179 else false )
        d344 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> ( ( Set -> Set ) ∋ ( ( λ x3470 -> if true then x3470 else Bool ) ) ) $ ( x3460 ) ) ) ) $ ( if false then Bool else Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> if false then true else x3450 ) ) ) $ ( if true then d334 else false )
        d348 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3510 -> x3510 ) ) ) $ ( Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> if true then d8 else x3490 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d352 : if false then ( ( Set -> Set ) ∋ ( ( λ x3540 -> x3540 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> if d241 then d52 else d158 ) ) ) $ ( if false then false else false )
        d355 : if false then if false then Bool else Bool else if true then Bool else Bool
        d355 = if ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> d231 ) ) ) $ ( false ) then if false then false else d47 else if d107 then d219 else d293
        d357 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> if false then x3600 else Bool ) ) ) $ ( if true then Bool else Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if x3580 then d329 else d175 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d361 : ( ( Set -> Set ) ∋ ( ( λ x3630 -> ( ( Set -> Set ) ∋ ( ( λ x3640 -> if false then x3630 else x3630 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d361 = if if d15 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> d30 ) ) ) $ ( true ) else if true then true else false
        d365 : ( ( Set -> Set ) ∋ ( ( λ x3680 -> ( ( Set -> Set ) ∋ ( ( λ x3690 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> if x3660 then d126 else false ) ) ) $ ( x3660 ) ) ) ) $ ( if false then true else d137 )
        d370 : ( ( Set -> Set ) ∋ ( ( λ x3730 -> ( ( Set -> Set ) ∋ ( ( λ x3740 -> if true then x3730 else Bool ) ) ) $ ( x3730 ) ) ) ) $ ( if false then Bool else Bool )
        d370 = if if d342 then d316 else d340 then ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> d231 ) ) ) $ ( false )
        d375 : if false then ( ( Set -> Set ) ∋ ( ( λ x3790 -> x3790 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d375 = if ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> d224 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> x3770 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> d228 ) ) ) $ ( d129 )
        d380 : if false then ( ( Set -> Set ) ∋ ( ( λ x3830 -> x3830 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d380 = ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> if d217 then x3820 else d355 ) ) ) $ ( x3810 ) ) ) ) $ ( if true then true else false )
        d384 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> ( ( Set -> Set ) ∋ ( ( λ x3870 -> if true then x3860 else x3860 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if d39 then false else x3850 ) ) ) $ ( if false then true else d117 )
        d388 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3900 -> x3900 ) ) ) $ ( Bool )
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if x3890 then d212 else x3890 ) ) ) $ ( if d15 then d15 else true )
        d391 : if false then ( ( Set -> Set ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3940 -> Bool ) ) ) $ ( Bool )
        d391 = if if d179 then true else true then if d82 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> d344 ) ) ) $ ( true )
        d395 : if false then if true then Bool else Bool else if true then Bool else Bool
        d395 = if ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( d212 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> d63 ) ) ) $ ( false )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x4010 -> ( ( Set -> Set ) ∋ ( ( λ x4020 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d398 = if if d293 then d79 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> d60 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> true ) ) ) $ ( d241 )
        d403 : ( ( Set -> Set ) ∋ ( ( λ x4060 -> ( ( Set -> Set ) ∋ ( ( λ x4070 -> if false then Bool else x4060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d403 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> x4040 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( d94 )
        d408 : if false then ( ( Set -> Set ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( Bool )
        d408 = if ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> x4090 ) ) ) $ ( false ) then if true then true else d117 else if true then true else true
        d412 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4150 -> x4150 ) ) ) $ ( Bool )
        d412 = if ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> x4130 ) ) ) $ ( d248 ) then if d340 then d228 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> false ) ) ) $ ( false )
        d416 : if false then ( ( Set -> Set ) ∋ ( ( λ x4170 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d416 = if if d68 then d52 else d68 then if false then true else d8 else if false then true else d307
        d418 : if true then if false then Bool else Bool else if true then Bool else Bool
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> if x4190 then true else x4190 ) ) ) $ ( d391 ) ) ) ) $ ( if d412 then d311 else d355 )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> ( ( Set -> Set ) ∋ ( ( λ x4240 -> if true then Bool else Bool ) ) ) $ ( x4230 ) ) ) ) $ ( if false then Bool else Bool )
        d421 = if if d30 then d284 else d183 then if d248 then true else d154 else ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> x4220 ) ) ) $ ( d39 )
        d425 : ( ( Set -> Set ) ∋ ( ( λ x4260 -> if false then x4260 else Bool ) ) ) $ ( if false then Bool else Bool )
        d425 = if if false then d300 else d217 then if false then false else false else if true then d175 else false
        d427 : ( ( Set -> Set ) ∋ ( ( λ x4290 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d427 = if if d269 then true else d395 then ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> d117 ) ) ) $ ( false ) else if d137 then d107 else d416
        d430 : ( ( Set -> Set ) ∋ ( ( λ x4320 -> ( ( Set -> Set ) ∋ ( ( λ x4330 -> if false then x4330 else x4320 ) ) ) $ ( x4320 ) ) ) ) $ ( if true then Bool else Bool )
        d430 = if if d187 then false else d154 then ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> d361 ) ) ) $ ( d403 ) else if d63 then d235 else false
        d434 : ( ( Set -> Set ) ∋ ( ( λ x4370 -> ( ( Set -> Set ) ∋ ( ( λ x4380 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d434 = if ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> x4350 ) ) ) $ ( d342 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d4 ) ) ) $ ( false ) else if d60 then d179 else d284
        d439 : if false then ( ( Set -> Set ) ∋ ( ( λ x4410 -> x4410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4420 -> x4420 ) ) ) $ ( Bool )
        d439 = if if false then d98 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> false ) ) ) $ ( d380 ) else if d288 then false else d206
        d443 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4460 -> Bool ) ) ) $ ( Bool )
        d443 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> x4440 ) ) ) $ ( d11 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> true ) ) ) $ ( true )
        d447 : ( ( Set -> Set ) ∋ ( ( λ x4490 -> ( ( Set -> Set ) ∋ ( ( λ x4500 -> if true then x4490 else Bool ) ) ) $ ( x4490 ) ) ) ) $ ( if false then Bool else Bool )
        d447 = if if d126 then d204 else d235 then if true then true else d94 else ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> d316 ) ) ) $ ( false )
        d451 : ( ( Set -> Set ) ∋ ( ( λ x4530 -> ( ( Set -> Set ) ∋ ( ( λ x4540 -> if false then x4530 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> if true then x4520 else x4520 ) ) ) $ ( if false then true else false )
        d455 : if false then ( ( Set -> Set ) ∋ ( ( λ x4570 -> x4570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> if false then d231 else d122 ) ) ) $ ( if false then true else d307 )
        d458 : ( ( Set -> Set ) ∋ ( ( λ x4600 -> ( ( Set -> Set ) ∋ ( ( λ x4610 -> if true then Bool else x4600 ) ) ) $ ( x4600 ) ) ) ) $ ( if false then Bool else Bool )
        d458 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> d175 ) ) ) $ ( d47 ) else if d133 then d19 else false
        d462 : if false then ( ( Set -> Set ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d462 = if if d94 then true else false then if d241 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> d427 ) ) ) $ ( true )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x4670 -> if true then Bool else x4670 ) ) ) $ ( if false then Bool else Bool )
        d465 = if if false then d30 else false then if d384 then d277 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> true ) ) ) $ ( d412 )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4700 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> if d39 then true else true ) ) ) $ ( if true then true else false )
        d471 : if true then ( ( Set -> Set ) ∋ ( ( λ x4740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4750 -> Bool ) ) ) $ ( Bool )
        d471 = if ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> true ) ) ) $ ( true ) then if d211 then d316 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> d47 ) ) ) $ ( d348 )
        d476 : ( ( Set -> Set ) ∋ ( ( λ x4790 -> if true then Bool else x4790 ) ) ) $ ( if false then Bool else Bool )
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> if x4780 then x4780 else x4780 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d480 : if true then ( ( Set -> Set ) ∋ ( ( λ x4830 -> x4830 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> if d465 then d307 else d293 ) ) ) $ ( true ) ) ) ) $ ( if d11 then false else false )
        d484 : if false then if false then Bool else Bool else if true then Bool else Bool
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> if false then x4850 else d204 ) ) ) $ ( if false then false else false )
        d486 : if true then ( ( Set -> Set ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d486 = if if d141 then d63 else d79 then if false then true else true else if false then true else d412
        d488 : if true then ( ( Set -> Set ) ∋ ( ( λ x4910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4920 -> x4920 ) ) ) $ ( Bool )
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> if false then d137 else true ) ) ) $ ( x4890 ) ) ) ) $ ( if d192 then true else false )
        d493 : if false then ( ( Set -> Set ) ∋ ( ( λ x4950 -> x4950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4960 -> x4960 ) ) ) $ ( Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if false then d337 else false ) ) ) $ ( if true then d245 else true )
        d497 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> ( ( Set -> Set ) ∋ ( ( λ x5000 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d497 = if ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> true ) ) ) $ ( true ) then if d348 then false else d252 else if true then d434 else true
        d501 : ( ( Set -> Set ) ∋ ( ( λ x5030 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> if x5020 then false else false ) ) ) $ ( if false then false else d443 )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if d277 then x5060 else d262 ) ) ) $ ( true ) ) ) ) $ ( if d284 then true else true )
        d508 : ( ( Set -> Set ) ∋ ( ( λ x5100 -> if false then Bool else x5100 ) ) ) $ ( if true then Bool else Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> if x5090 then x5090 else false ) ) ) $ ( if true then d175 else d84 )
        d511 : ( ( Set -> Set ) ∋ ( ( λ x5130 -> ( ( Set -> Set ) ∋ ( ( λ x5140 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> if d471 then true else false ) ) ) $ ( if d425 then d439 else false )
        d515 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5190 -> Bool ) ) ) $ ( Bool )
        d515 = if ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> d34 ) ) ) $ ( d476 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> x5170 ) ) ) $ ( d493 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> x5180 ) ) ) $ ( d340 )
        d520 : ( ( Set -> Set ) ∋ ( ( λ x5220 -> if false then x5220 else Bool ) ) ) $ ( if false then Bool else Bool )
        d520 = if if d348 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> true ) ) ) $ ( d384 ) else if d91 then d204 else d224
        d523 : if true then ( ( Set -> Set ) ∋ ( ( λ x5250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5260 -> Bool ) ) ) $ ( Bool )
        d523 = if ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> x5240 ) ) ) $ ( d293 ) then if true then false else true else if d224 then d183 else d144
        d527 : if false then ( ( Set -> Set ) ∋ ( ( λ x5290 -> x5290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5300 -> x5300 ) ) ) $ ( Bool )
        d527 = if if d113 then d82 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> false ) ) ) $ ( true ) else if d380 then false else false
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5340 -> if false then Bool else x5340 ) ) ) $ ( if true then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> if d493 then x5320 else false ) ) ) $ ( x5320 ) ) ) ) $ ( if d416 then true else false )
        d535 : if true then ( ( Set -> Set ) ∋ ( ( λ x5370 -> x5370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5380 -> Bool ) ) ) $ ( Bool )
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> if d484 then x5360 else false ) ) ) $ ( if false then d262 else true )
        d539 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5420 -> Bool ) ) ) $ ( Bool )
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if false then true else x5410 ) ) ) $ ( d94 ) ) ) ) $ ( if true then d535 else false )
        d543 : if false then ( ( Set -> Set ) ∋ ( ( λ x5440 -> x5440 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d543 = if if true then d334 else true then if true then d101 else false else if false then d217 else d384
        d545 : ( ( Set -> Set ) ∋ ( ( λ x5470 -> ( ( Set -> Set ) ∋ ( ( λ x5480 -> if false then Bool else Bool ) ) ) $ ( x5470 ) ) ) ) $ ( if false then Bool else Bool )
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> if true then x5460 else d217 ) ) ) $ ( if d357 then d398 else false )
        d549 : ( ( Set -> Set ) ∋ ( ( λ x5520 -> ( ( Set -> Set ) ∋ ( ( λ x5530 -> if false then x5520 else x5530 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> if true then d324 else d274 ) ) ) $ ( x5500 ) ) ) ) $ ( if d293 then false else d493 )
        d554 : ( ( Set -> Set ) ∋ ( ( λ x5570 -> ( ( Set -> Set ) ∋ ( ( λ x5580 -> if false then Bool else x5580 ) ) ) $ ( x5570 ) ) ) ) $ ( if true then Bool else Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> if x5550 then false else x5560 ) ) ) $ ( d47 ) ) ) ) $ ( if d1 then true else false )
        d559 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> ( ( Set -> Set ) ∋ ( ( λ x5620 -> if false then Bool else Bool ) ) ) $ ( x5610 ) ) ) ) $ ( if true then Bool else Bool )
        d559 = if if d169 then d52 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> true ) ) ) $ ( true ) else if d329 then d110 else false
        d563 : ( ( Set -> Set ) ∋ ( ( λ x5650 -> if true then x5650 else x5650 ) ) ) $ ( if true then Bool else Bool )
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> if x5640 then x5640 else true ) ) ) $ ( if true then d211 else d82 )
        d566 : ( ( Set -> Set ) ∋ ( ( λ x5690 -> ( ( Set -> Set ) ∋ ( ( λ x5700 -> if false then Bool else x5690 ) ) ) $ ( x5690 ) ) ) ) $ ( if true then Bool else Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> if x5670 then d508 else false ) ) ) $ ( d212 ) ) ) ) $ ( if d165 then true else d421 )
        d571 : if false then ( ( Set -> Set ) ∋ ( ( λ x5740 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> if true then x5720 else d334 ) ) ) $ ( true ) ) ) ) $ ( if d480 then d235 else d211 )
        d575 : if false then ( ( Set -> Set ) ∋ ( ( λ x5770 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5780 -> x5780 ) ) ) $ ( Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> if false then d458 else x5760 ) ) ) $ ( if d133 then true else d539 )
        d579 : if true then ( ( Set -> Set ) ∋ ( ( λ x5820 -> x5820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5830 -> x5830 ) ) ) $ ( Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> if false then true else x5810 ) ) ) $ ( true ) ) ) ) $ ( if d11 then d204 else d380 )
        d584 : if false then ( ( Set -> Set ) ∋ ( ( λ x5870 -> x5870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d584 = if ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> d281 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5860 -> false ) ) ) $ ( true ) else if true then true else d511
        d588 : ( ( Set -> Set ) ∋ ( ( λ x5910 -> ( ( Set -> Set ) ∋ ( ( λ x5920 -> if false then Bool else x5910 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d588 = if if d60 then d348 else d391 then ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> false ) ) ) $ ( false )
        d593 : if true then ( ( Set -> Set ) ∋ ( ( λ x5960 -> x5960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5970 -> x5970 ) ) ) $ ( Bool )
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> ( ( Bool -> Bool ) ∋ ( ( λ x5950 -> if x5950 then d281 else false ) ) ) $ ( x5940 ) ) ) ) $ ( if true then d497 else false )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x6010 -> ( ( Set -> Set ) ∋ ( ( λ x6020 -> if true then x6020 else x6020 ) ) ) $ ( x6010 ) ) ) ) $ ( if false then Bool else Bool )
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> if true then x5990 else x5990 ) ) ) $ ( d434 ) ) ) ) $ ( if d320 then d206 else d421 )
        d603 : ( ( Set -> Set ) ∋ ( ( λ x6050 -> if true then Bool else x6050 ) ) ) $ ( if false then Bool else Bool )
        d603 = ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> if false then x6040 else d391 ) ) ) $ ( if false then false else d511 )
        d606 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6090 -> Bool ) ) ) $ ( Bool )
        d606 = if ( ( Bool -> Bool ) ∋ ( ( λ x6070 -> x6070 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> x6080 ) ) ) $ ( true ) else if true then d320 else false
        d610 : if true then if true then Bool else Bool else if false then Bool else Bool
        d610 = if ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> true ) ) ) $ ( false ) then if true then false else true else if d68 then d434 else false
        d612 : if true then ( ( Set -> Set ) ∋ ( ( λ x6150 -> x6150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6160 -> x6160 ) ) ) $ ( Bool )
        d612 = if ( ( Bool -> Bool ) ∋ ( ( λ x6130 -> x6130 ) ) ) $ ( d447 ) then if true then true else d566 else ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> x6140 ) ) ) $ ( false )
        d617 : ( ( Set -> Set ) ∋ ( ( λ x6200 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d617 = ( ( Bool -> Bool ) ∋ ( ( λ x6180 -> ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> if d365 then x6190 else d612 ) ) ) $ ( true ) ) ) ) $ ( if false then d281 else false )
        d621 : if true then if true then Bool else Bool else if true then Bool else Bool
        d621 = if if false then false else d129 then ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> true ) ) ) $ ( false ) else if false then true else false
        d623 : ( ( Set -> Set ) ∋ ( ( λ x6250 -> ( ( Set -> Set ) ∋ ( ( λ x6260 -> if true then x6260 else x6260 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d623 = if if true then false else false then if d380 then d575 else d543 else ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> x6240 ) ) ) $ ( true )
        d627 : ( ( Set -> Set ) ∋ ( ( λ x6290 -> ( ( Set -> Set ) ∋ ( ( λ x6300 -> if true then x6290 else x6290 ) ) ) $ ( x6290 ) ) ) ) $ ( if true then Bool else Bool )
        d627 = ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> if true then x6280 else d162 ) ) ) $ ( if d447 then d416 else false )
        d631 : ( ( Set -> Set ) ∋ ( ( λ x6350 -> if true then x6350 else x6350 ) ) ) $ ( if true then Bool else Bool )
        d631 = if ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> false ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> false ) ) ) $ ( d504 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> d183 ) ) ) $ ( true )
        d636 : ( ( Set -> Set ) ∋ ( ( λ x6390 -> if false then Bool else x6390 ) ) ) $ ( if false then Bool else Bool )
        d636 = if if d25 then true else d603 then ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> d355 ) ) ) $ ( true )
        d640 : ( ( Set -> Set ) ∋ ( ( λ x6420 -> ( ( Set -> Set ) ∋ ( ( λ x6430 -> if true then x6420 else x6420 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> if x6410 then true else x6410 ) ) ) $ ( if false then d122 else d141 )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x6470 -> ( ( Set -> Set ) ∋ ( ( λ x6480 -> if false then Bool else x6480 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d644 = if if d122 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> x6450 ) ) ) $ ( d588 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> x6460 ) ) ) $ ( d245 )
        d649 : ( ( Set -> Set ) ∋ ( ( λ x6510 -> ( ( Set -> Set ) ∋ ( ( λ x6520 -> if false then Bool else x6520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d649 = if if d458 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> x6500 ) ) ) $ ( d158 ) else if true then d501 else d458
        d653 : if true then ( ( Set -> Set ) ∋ ( ( λ x6560 -> x6560 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6570 -> Bool ) ) ) $ ( Bool )
        d653 = ( ( Bool -> Bool ) ∋ ( ( λ x6540 -> ( ( Bool -> Bool ) ∋ ( ( λ x6550 -> if d348 then d398 else false ) ) ) $ ( x6540 ) ) ) ) $ ( if d235 then true else true )
        d658 : if false then ( ( Set -> Set ) ∋ ( ( λ x6610 -> x6610 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x6590 -> ( ( Bool -> Bool ) ∋ ( ( λ x6600 -> if x6600 then true else x6590 ) ) ) $ ( x6590 ) ) ) ) $ ( if d300 then false else d468 )
        d662 : if true then ( ( Set -> Set ) ∋ ( ( λ x6650 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d662 = if ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> d370 ) ) ) $ ( d497 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> d204 ) ) ) $ ( d15 )
        d666 : ( ( Set -> Set ) ∋ ( ( λ x6690 -> ( ( Set -> Set ) ∋ ( ( λ x6700 -> if false then x6690 else x6700 ) ) ) $ ( x6690 ) ) ) ) $ ( if false then Bool else Bool )
        d666 = ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> if x6670 then true else x6670 ) ) ) $ ( x6670 ) ) ) ) $ ( if d617 then false else true )
        d671 : if true then if true then Bool else Bool else if true then Bool else Bool
        d671 = if ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> x6720 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> false ) ) ) $ ( d559 ) else if false then true else true
        d674 : ( ( Set -> Set ) ∋ ( ( λ x6770 -> if false then x6770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x6750 -> ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> if x6760 then d545 else d344 ) ) ) $ ( x6750 ) ) ) ) $ ( if d421 then d520 else false )
        d678 : ( ( Set -> Set ) ∋ ( ( λ x6790 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d678 = if if d122 then d476 else d380 then if true then d621 else true else if true then false else false
        d680 : ( ( Set -> Set ) ∋ ( ( λ x6830 -> ( ( Set -> Set ) ∋ ( ( λ x6840 -> if true then x6840 else x6830 ) ) ) $ ( x6830 ) ) ) ) $ ( if false then Bool else Bool )
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> if false then d68 else true ) ) ) $ ( x6810 ) ) ) ) $ ( if true then d357 else d451 )
        d685 : ( ( Set -> Set ) ∋ ( ( λ x6880 -> if true then x6880 else Bool ) ) ) $ ( if true then Bool else Bool )
        d685 = if ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> x6860 ) ) ) $ ( d443 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> x6870 ) ) ) $ ( false ) else if d4 then false else d588
        d689 : if false then ( ( Set -> Set ) ∋ ( ( λ x6910 -> x6910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6920 -> x6920 ) ) ) $ ( Bool )
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> if false then d621 else x6900 ) ) ) $ ( if false then true else true )
        d693 : ( ( Set -> Set ) ∋ ( ( λ x6970 -> if false then Bool else x6970 ) ) ) $ ( if true then Bool else Bool )
        d693 = if ( ( Bool -> Bool ) ∋ ( ( λ x6940 -> d241 ) ) ) $ ( d101 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> d327 ) ) ) $ ( d640 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> false ) ) ) $ ( true )
        d698 : ( ( Set -> Set ) ∋ ( ( λ x7000 -> ( ( Set -> Set ) ∋ ( ( λ x7010 -> if true then Bool else Bool ) ) ) $ ( x7000 ) ) ) ) $ ( if true then Bool else Bool )
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> if d571 then x6990 else d122 ) ) ) $ ( if d15 then d531 else true )
        d702 : if false then ( ( Set -> Set ) ∋ ( ( λ x7050 -> x7050 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7060 -> Bool ) ) ) $ ( Bool )
        d702 = ( ( Bool -> Bool ) ∋ ( ( λ x7030 -> ( ( Bool -> Bool ) ∋ ( ( λ x7040 -> if d658 then true else x7040 ) ) ) $ ( x7030 ) ) ) ) $ ( if false then d662 else true )
        d707 : ( ( Set -> Set ) ∋ ( ( λ x7110 -> ( ( Set -> Set ) ∋ ( ( λ x7120 -> if false then x7120 else x7120 ) ) ) $ ( x7110 ) ) ) ) $ ( if true then Bool else Bool )
        d707 = if ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> d680 ) ) ) $ ( d579 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> d443 ) ) ) $ ( d19 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> d192 ) ) ) $ ( true )
        d713 : ( ( Set -> Set ) ∋ ( ( λ x7150 -> if false then x7150 else x7150 ) ) ) $ ( if false then Bool else Bool )
        d713 = if if false then true else d403 then if true then d425 else d447 else ( ( Bool -> Bool ) ∋ ( ( λ x7140 -> d133 ) ) ) $ ( true )
        d716 : ( ( Set -> Set ) ∋ ( ( λ x7190 -> ( ( Set -> Set ) ∋ ( ( λ x7200 -> if false then x7190 else x7200 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d716 = if ( ( Bool -> Bool ) ∋ ( ( λ x7170 -> x7170 ) ) ) $ ( d395 ) then if d264 then d713 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7180 -> d579 ) ) ) $ ( d421 )
        d721 : if false then ( ( Set -> Set ) ∋ ( ( λ x7240 -> x7240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7250 -> x7250 ) ) ) $ ( Bool )
        d721 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> d110 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7230 -> x7230 ) ) ) $ ( d327 )
        d726 : if false then ( ( Set -> Set ) ∋ ( ( λ x7300 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d726 = if ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> true ) ) ) $ ( d575 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> false ) ) ) $ ( d678 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> x7290 ) ) ) $ ( d468 )
        d731 : if true then ( ( Set -> Set ) ∋ ( ( λ x7340 -> x7340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d731 = if ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> x7320 ) ) ) $ ( d211 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> d451 ) ) ) $ ( d219 ) else if false then false else false
        d735 : ( ( Set -> Set ) ∋ ( ( λ x7380 -> ( ( Set -> Set ) ∋ ( ( λ x7390 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d735 = if if true then false else d245 then ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> false ) ) ) $ ( d520 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> x7370 ) ) ) $ ( d293 )
        d740 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7430 -> x7430 ) ) ) $ ( Bool )
        d740 = ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> if false then x7420 else d434 ) ) ) $ ( d493 ) ) ) ) $ ( if d698 then d248 else d137 )
        d744 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7460 -> x7460 ) ) ) $ ( Bool )
        d744 = if if d84 then false else true then if d395 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x7450 -> true ) ) ) $ ( true )
        d747 : if true then ( ( Set -> Set ) ∋ ( ( λ x7500 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7510 -> Bool ) ) ) $ ( Bool )
        d747 = if ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> false ) ) ) $ ( d348 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> x7490 ) ) ) $ ( true ) else if d307 then d252 else d501
        d752 : ( ( Set -> Set ) ∋ ( ( λ x7550 -> ( ( Set -> Set ) ∋ ( ( λ x7560 -> if false then Bool else x7560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d752 = ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> if d288 then d693 else false ) ) ) $ ( x7530 ) ) ) ) $ ( if true then false else d539 )
        d757 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7590 -> Bool ) ) ) $ ( Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> if x7580 then true else d370 ) ) ) $ ( if false then d219 else true )
        d760 : if true then ( ( Set -> Set ) ∋ ( ( λ x7630 -> x7630 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d760 = ( ( Bool -> Bool ) ∋ ( ( λ x7610 -> ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> if d493 then d154 else x7620 ) ) ) $ ( d257 ) ) ) ) $ ( if d217 then d674 else false )
        d764 : if false then ( ( Set -> Set ) ∋ ( ( λ x7670 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d764 = if ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> true ) ) ) $ ( d579 ) then if d56 then d416 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> true ) ) ) $ ( true )
        d768 : if false then ( ( Set -> Set ) ∋ ( ( λ x7700 -> x7700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7710 -> x7710 ) ) ) $ ( Bool )
        d768 = ( ( Bool -> Bool ) ∋ ( ( λ x7690 -> if x7690 then true else d623 ) ) ) $ ( if false then d15 else d740 )
        d772 : if true then ( ( Set -> Set ) ∋ ( ( λ x7750 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d772 = ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> ( ( Bool -> Bool ) ∋ ( ( λ x7740 -> if d563 then false else d631 ) ) ) $ ( false ) ) ) ) $ ( if false then d154 else d327 )
        d776 : ( ( Set -> Set ) ∋ ( ( λ x7780 -> if true then x7780 else x7780 ) ) ) $ ( if true then Bool else Bool )
        d776 = if if d735 then true else true then if true then d579 else true else ( ( Bool -> Bool ) ∋ ( ( λ x7770 -> d42 ) ) ) $ ( false )
        d779 : ( ( Set -> Set ) ∋ ( ( λ x7820 -> if true then x7820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d779 = if if true then d504 else true then ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> x7810 ) ) ) $ ( d39 )
        d783 : ( ( Set -> Set ) ∋ ( ( λ x7870 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d783 = if ( ( Bool -> Bool ) ∋ ( ( λ x7840 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> true ) ) ) $ ( d375 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> x7860 ) ) ) $ ( true )
        d788 : ( ( Set -> Set ) ∋ ( ( λ x7900 -> ( ( Set -> Set ) ∋ ( ( λ x7910 -> if false then Bool else x7900 ) ) ) $ ( x7900 ) ) ) ) $ ( if false then Bool else Bool )
        d788 = ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> if d47 then d418 else x7890 ) ) ) $ ( if true then d324 else d680 )
        d792 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7940 -> x7940 ) ) ) $ ( Bool )
        d792 = if if d281 then d370 else d484 then ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> true ) ) ) $ ( false ) else if true then d689 else d352
        d795 : ( ( Set -> Set ) ∋ ( ( λ x7970 -> if false then x7970 else Bool ) ) ) $ ( if false then Bool else Bool )
        d795 = if ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> false ) ) ) $ ( true ) then if d154 then d520 else d698 else if false then d584 else false
        d798 : ( ( Set -> Set ) ∋ ( ( λ x8000 -> if true then x8000 else x8000 ) ) ) $ ( if false then Bool else Bool )
        d798 = ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> if d768 then x7990 else x7990 ) ) ) $ ( if false then d689 else true )
        d801 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8040 -> x8040 ) ) ) $ ( Bool )
        d801 = ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> if true then false else d183 ) ) ) $ ( x8020 ) ) ) ) $ ( if true then false else false )
        d805 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8080 -> x8080 ) ) ) $ ( Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> if d462 then false else d593 ) ) ) $ ( d760 ) ) ) ) $ ( if true then true else d141 )
        d809 : ( ( Set -> Set ) ∋ ( ( λ x8110 -> if false then x8110 else x8110 ) ) ) $ ( if true then Bool else Bool )
        d809 = if if true then d523 else false then if d545 then d412 else true else ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> false ) ) ) $ ( true )
        d812 : ( ( Set -> Set ) ∋ ( ( λ x8150 -> ( ( Set -> Set ) ∋ ( ( λ x8160 -> if false then Bool else x8150 ) ) ) $ ( x8150 ) ) ) ) $ ( if true then Bool else Bool )
        d812 = if if d421 then d68 else d200 then ( ( Bool -> Bool ) ∋ ( ( λ x8130 -> d772 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> d217 ) ) ) $ ( d129 )
        d817 : ( ( Set -> Set ) ∋ ( ( λ x8190 -> ( ( Set -> Set ) ∋ ( ( λ x8200 -> if false then x8200 else x8190 ) ) ) $ ( x8190 ) ) ) ) $ ( if true then Bool else Bool )
        d817 = ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> if false then false else d610 ) ) ) $ ( if d293 then false else d674 )
        d821 : ( ( Set -> Set ) ∋ ( ( λ x8230 -> if false then x8230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d821 = ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> if false then false else true ) ) ) $ ( if d224 then d307 else d497 )
        d824 : if true then if true then Bool else Bool else if false then Bool else Bool
        d824 = if ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> true ) ) ) $ ( d340 ) then if false then d56 else false else if true then d486 else d284
        d826 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8300 -> Bool ) ) ) $ ( Bool )
        d826 = if ( ( Bool -> Bool ) ∋ ( ( λ x8270 -> d623 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> d430 ) ) ) $ ( d674 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> d757 ) ) ) $ ( false )
        d831 : if true then ( ( Set -> Set ) ∋ ( ( λ x8340 -> x8340 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8350 -> Bool ) ) ) $ ( Bool )
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> ( ( Bool -> Bool ) ∋ ( ( λ x8330 -> if x8330 then x8330 else x8330 ) ) ) $ ( false ) ) ) ) $ ( if d187 then d395 else false )
        d836 : ( ( Set -> Set ) ∋ ( ( λ x8380 -> if true then x8380 else x8380 ) ) ) $ ( if false then Bool else Bool )
        d836 = ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> if x8370 then true else false ) ) ) $ ( if d588 then true else d817 )
        d839 : ( ( Set -> Set ) ∋ ( ( λ x8410 -> ( ( Set -> Set ) ∋ ( ( λ x8420 -> if true then x8410 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d839 = if ( ( Bool -> Bool ) ∋ ( ( λ x8400 -> x8400 ) ) ) $ ( d425 ) then if d68 then false else true else if d584 then d82 else false
        d843 : ( ( Set -> Set ) ∋ ( ( λ x8450 -> ( ( Set -> Set ) ∋ ( ( λ x8460 -> if true then x8460 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d843 = ( ( Bool -> Bool ) ∋ ( ( λ x8440 -> if d245 then false else d674 ) ) ) $ ( if d380 then true else false )
        d847 : if false then if false then Bool else Bool else if false then Bool else Bool
        d847 = ( ( Bool -> Bool ) ∋ ( ( λ x8480 -> ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> if d735 then true else d25 ) ) ) $ ( false ) ) ) ) $ ( if d839 then d19 else d764 )
        d850 : ( ( Set -> Set ) ∋ ( ( λ x8530 -> ( ( Set -> Set ) ∋ ( ( λ x8540 -> if true then Bool else Bool ) ) ) $ ( x8530 ) ) ) ) $ ( if true then Bool else Bool )
        d850 = if ( ( Bool -> Bool ) ∋ ( ( λ x8510 -> false ) ) ) $ ( false ) then if true then false else d515 else ( ( Bool -> Bool ) ∋ ( ( λ x8520 -> false ) ) ) $ ( false )
        d855 : ( ( Set -> Set ) ∋ ( ( λ x8580 -> ( ( Set -> Set ) ∋ ( ( λ x8590 -> if false then Bool else x8590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d855 = ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> if d110 then false else d716 ) ) ) $ ( false ) ) ) ) $ ( if d388 then d439 else false )
        d860 : if true then ( ( Set -> Set ) ∋ ( ( λ x8620 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> if d144 then false else x8610 ) ) ) $ ( if true then false else d855 )
        d863 : ( ( Set -> Set ) ∋ ( ( λ x8660 -> ( ( Set -> Set ) ∋ ( ( λ x8670 -> if false then x8660 else Bool ) ) ) $ ( x8660 ) ) ) ) $ ( if false then Bool else Bool )
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> if true then x8640 else x8650 ) ) ) $ ( x8640 ) ) ) ) $ ( if d831 then true else d850 )
        d868 : if false then ( ( Set -> Set ) ∋ ( ( λ x8710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8720 -> Bool ) ) ) $ ( Bool )
        d868 = ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> ( ( Bool -> Bool ) ∋ ( ( λ x8700 -> if true then false else x8690 ) ) ) $ ( false ) ) ) ) $ ( if d307 then false else d772 )
        d873 : if false then ( ( Set -> Set ) ∋ ( ( λ x8760 -> x8760 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> ( ( Bool -> Bool ) ∋ ( ( λ x8750 -> if d447 then x8750 else d133 ) ) ) $ ( d274 ) ) ) ) $ ( if true then true else false )
        d877 : if true then ( ( Set -> Set ) ∋ ( ( λ x8790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8800 -> x8800 ) ) ) $ ( Bool )
        d877 = ( ( Bool -> Bool ) ∋ ( ( λ x8780 -> if true then x8780 else d340 ) ) ) $ ( if d559 then d329 else d361 )
        d881 : ( ( Set -> Set ) ∋ ( ( λ x8840 -> ( ( Set -> Set ) ∋ ( ( λ x8850 -> if true then x8850 else x8840 ) ) ) $ ( x8840 ) ) ) ) $ ( if true then Bool else Bool )
        d881 = ( ( Bool -> Bool ) ∋ ( ( λ x8820 -> ( ( Bool -> Bool ) ∋ ( ( λ x8830 -> if false then true else d284 ) ) ) $ ( false ) ) ) ) $ ( if d327 then d1 else d480 )
        d886 : if true then ( ( Set -> Set ) ∋ ( ( λ x8890 -> x8890 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d886 = if if d545 then d264 else d293 then ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> d403 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> d779 ) ) ) $ ( d398 )
        d890 : if false then if false then Bool else Bool else if false then Bool else Bool
        d890 = ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> if d886 then x8920 else x8910 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d228 )
        d893 : if false then ( ( Set -> Set ) ∋ ( ( λ x8950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8960 -> Bool ) ) ) $ ( Bool )
        d893 = if if true then d447 else d148 then if false then false else d563 else ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> d863 ) ) ) $ ( true )
        d897 : ( ( Set -> Set ) ∋ ( ( λ x8990 -> if true then x8990 else Bool ) ) ) $ ( if false then Bool else Bool )
        d897 = ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> if x8980 then d245 else x8980 ) ) ) $ ( if d497 then true else d425 )
        d900 : ( ( Set -> Set ) ∋ ( ( λ x9020 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d900 = ( ( Bool -> Bool ) ∋ ( ( λ x9010 -> if x9010 then d702 else d897 ) ) ) $ ( if d340 then d158 else d752 )
        d903 : ( ( Set -> Set ) ∋ ( ( λ x9050 -> ( ( Set -> Set ) ∋ ( ( λ x9060 -> if true then x9060 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d903 = if if d269 then d897 else true then if false then d764 else d484 else ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( true )
        d907 : ( ( Set -> Set ) ∋ ( ( λ x9090 -> ( ( Set -> Set ) ∋ ( ( λ x9100 -> if true then x9090 else x9090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d907 = if if d855 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> false ) ) ) $ ( true ) else if d8 then d8 else d631
        d911 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9130 -> Bool ) ) ) $ ( Bool )
        d911 = ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> if x9120 then d731 else true ) ) ) $ ( if d231 then d430 else true )
        d914 : if true then ( ( Set -> Set ) ∋ ( ( λ x9160 -> x9160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9170 -> x9170 ) ) ) $ ( Bool )
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> if true then x9150 else true ) ) ) $ ( if d649 then false else true )
        d918 : ( ( Set -> Set ) ∋ ( ( λ x9200 -> if false then x9200 else x9200 ) ) ) $ ( if false then Bool else Bool )
        d918 = ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> if x9190 then x9190 else false ) ) ) $ ( if d63 then d398 else d265 )
        d921 : if false then ( ( Set -> Set ) ∋ ( ( λ x9230 -> x9230 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d921 = if ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> x9220 ) ) ) $ ( d666 ) then if true then d329 else d535 else if d873 then d68 else d698
        d924 : ( ( Set -> Set ) ∋ ( ( λ x9260 -> if true then x9260 else Bool ) ) ) $ ( if true then Bool else Bool )
        d924 = if if d644 then false else d515 then ( ( Bool -> Bool ) ∋ ( ( λ x9250 -> x9250 ) ) ) $ ( d1 ) else if false then d238 else d11
        d927 : ( ( Set -> Set ) ∋ ( ( λ x9300 -> if true then x9300 else x9300 ) ) ) $ ( if false then Bool else Bool )
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> if x9280 then d847 else d649 ) ) ) $ ( d893 ) ) ) ) $ ( if d425 then false else false )
        d931 : if true then ( ( Set -> Set ) ∋ ( ( λ x9330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9340 -> x9340 ) ) ) $ ( Bool )
        d931 = ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> if d747 then false else x9320 ) ) ) $ ( if d757 then d531 else d288 )
        d935 : if false then ( ( Set -> Set ) ∋ ( ( λ x9380 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d935 = if ( ( Bool -> Bool ) ∋ ( ( λ x9360 -> d408 ) ) ) $ ( d241 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> false ) ) ) $ ( false ) else if true then d924 else true
        d939 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9410 -> Bool ) ) ) $ ( Bool )
        d939 = if if d274 then d187 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> x9400 ) ) ) $ ( d850 ) else if d702 then d493 else d451
        d942 : ( ( Set -> Set ) ∋ ( ( λ x9440 -> ( ( Set -> Set ) ∋ ( ( λ x9450 -> if true then Bool else x9450 ) ) ) $ ( x9440 ) ) ) ) $ ( if true then Bool else Bool )
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x9430 -> if d554 then true else true ) ) ) $ ( if true then d8 else false )
        d946 : if true then ( ( Set -> Set ) ∋ ( ( λ x9480 -> x9480 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d946 = if if true then true else false then if true then d886 else d388 else ( ( Bool -> Bool ) ∋ ( ( λ x9470 -> true ) ) ) $ ( d693 )
        d949 : ( ( Set -> Set ) ∋ ( ( λ x9510 -> if false then Bool else x9510 ) ) ) $ ( if false then Bool else Bool )
        d949 = if if d265 then false else d836 then ( ( Bool -> Bool ) ∋ ( ( λ x9500 -> x9500 ) ) ) $ ( d707 ) else if d520 then d148 else d113
        d952 : ( ( Set -> Set ) ∋ ( ( λ x9550 -> if false then x9550 else x9550 ) ) ) $ ( if false then Bool else Bool )
        d952 = ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> if false then x9530 else x9530 ) ) ) $ ( x9530 ) ) ) ) $ ( if false then d352 else true )
        d956 : ( ( Set -> Set ) ∋ ( ( λ x9590 -> if true then Bool else x9590 ) ) ) $ ( if false then Bool else Bool )
        d956 = if if false then d554 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> x9570 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> true ) ) ) $ ( false )
        d960 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9630 -> Bool ) ) ) $ ( Bool )
        d960 = if if d284 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> x9610 ) ) ) $ ( d942 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> x9620 ) ) ) $ ( d792 )
        d964 : if true then if false then Bool else Bool else if true then Bool else Bool
        d964 = if ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> x9650 ) ) ) $ ( d324 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> false ) ) ) $ ( d39 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> d206 ) ) ) $ ( true )
        d968 : if false then if false then Bool else Bool else if false then Bool else Bool
        d968 = ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> if d342 then false else x9690 ) ) ) $ ( if d443 then d671 else false )
        d970 : if false then ( ( Set -> Set ) ∋ ( ( λ x9720 -> x9720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9730 -> Bool ) ) ) $ ( Bool )
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> if x9710 then d384 else false ) ) ) $ ( if d252 then d497 else d73 )
        d974 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9760 -> Bool ) ) ) $ ( Bool )
        d974 = if if d666 then d897 else true then if true then d689 else d779 else ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> true ) ) ) $ ( false )
        d977 : if false then ( ( Set -> Set ) ∋ ( ( λ x9800 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d977 = ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> if d361 then x9790 else false ) ) ) $ ( d471 ) ) ) ) $ ( if d158 then false else d451 )
        d981 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9830 -> x9830 ) ) ) $ ( Bool )
        d981 = if if d327 then d231 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> false ) ) ) $ ( true ) else if d863 then d881 else false
        d984 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9870 -> x9870 ) ) ) $ ( Bool )
        d984 = ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> ( ( Bool -> Bool ) ∋ ( ( λ x9860 -> if d812 then x9860 else d713 ) ) ) $ ( true ) ) ) ) $ ( if d141 then false else true )
        d988 : ( ( Set -> Set ) ∋ ( ( λ x9910 -> if true then Bool else x9910 ) ) ) $ ( if false then Bool else Bool )
        d988 = ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> ( ( Bool -> Bool ) ∋ ( ( λ x9900 -> if x9890 then x9900 else x9900 ) ) ) $ ( d304 ) ) ) ) $ ( if false then d269 else d224 )
        d992 : if false then ( ( Set -> Set ) ∋ ( ( λ x9950 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d992 = ( ( Bool -> Bool ) ∋ ( ( λ x9930 -> ( ( Bool -> Bool ) ∋ ( ( λ x9940 -> if d129 then x9930 else true ) ) ) $ ( x9930 ) ) ) ) $ ( if true then false else d117 )
        d996 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9980 -> x9980 ) ) ) $ ( Bool )
        d996 = if ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> true ) ) ) $ ( d293 ) then if d520 then true else d39 else if false then d398 else false
        d999 : ( ( Set -> Set ) ∋ ( ( λ x10010 -> ( ( Set -> Set ) ∋ ( ( λ x10020 -> if false then Bool else Bool ) ) ) $ ( x10010 ) ) ) ) $ ( if false then Bool else Bool )
        d999 = if ( ( Bool -> Bool ) ∋ ( ( λ x10000 -> d334 ) ) ) $ ( d391 ) then if d304 then d8 else d843 else if false then d726 else true
        d1003 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10070 -> x10070 ) ) ) $ ( Bool )
        d1003 = if ( ( Bool -> Bool ) ∋ ( ( λ x10040 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> x10050 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> x10060 ) ) ) $ ( false )
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x10110 -> if false then x10110 else x10110 ) ) ) $ ( if false then Bool else Bool )
        d1008 = if ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> false ) ) ) $ ( d307 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> d776 ) ) ) $ ( d914 ) else if d375 then d621 else true
        d1012 : ( ( Set -> Set ) ∋ ( ( λ x10150 -> ( ( Set -> Set ) ∋ ( ( λ x10160 -> if false then Bool else x10150 ) ) ) $ ( x10150 ) ) ) ) $ ( if true then Bool else Bool )
        d1012 = ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> ( ( Bool -> Bool ) ∋ ( ( λ x10140 -> if x10130 then d352 else true ) ) ) $ ( x10130 ) ) ) ) $ ( if d175 then d588 else true )
        d1017 : if false then ( ( Set -> Set ) ∋ ( ( λ x10200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10210 -> Bool ) ) ) $ ( Bool )
        d1017 = ( ( Bool -> Bool ) ∋ ( ( λ x10180 -> ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> if true then x10180 else x10190 ) ) ) $ ( true ) ) ) ) $ ( if d627 then true else false )
        d1022 : if false then ( ( Set -> Set ) ∋ ( ( λ x10260 -> x10260 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1022 = if ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> d245 ) ) ) $ ( d658 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10240 -> true ) ) ) $ ( d873 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> false ) ) ) $ ( d56 )
        d1027 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1027 = if ( ( Bool -> Bool ) ∋ ( ( λ x10280 -> x10280 ) ) ) $ ( d868 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> d939 ) ) ) $ ( d357 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> d809 ) ) ) $ ( false )
        d1031 : if true then ( ( Set -> Set ) ∋ ( ( λ x10340 -> x10340 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1031 = ( ( Bool -> Bool ) ∋ ( ( λ x10320 -> ( ( Bool -> Bool ) ∋ ( ( λ x10330 -> if d98 then false else d523 ) ) ) $ ( true ) ) ) ) $ ( if d606 then d826 else true )
        d1035 : ( ( Set -> Set ) ∋ ( ( λ x10380 -> ( ( Set -> Set ) ∋ ( ( λ x10390 -> if false then Bool else x10380 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1035 = ( ( Bool -> Bool ) ∋ ( ( λ x10360 -> ( ( Bool -> Bool ) ∋ ( ( λ x10370 -> if d60 then x10370 else true ) ) ) $ ( true ) ) ) ) $ ( if d122 then false else false )
        d1040 : ( ( Set -> Set ) ∋ ( ( λ x10420 -> if false then x10420 else x10420 ) ) ) $ ( if false then Bool else Bool )
        d1040 = ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> if x10410 then x10410 else x10410 ) ) ) $ ( if true then d949 else d588 )
        d1043 : ( ( Set -> Set ) ∋ ( ( λ x10450 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> if false then d685 else false ) ) ) $ ( if true then d493 else d1003 )
        d1046 : if true then ( ( Set -> Set ) ∋ ( ( λ x10490 -> x10490 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1046 = ( ( Bool -> Bool ) ∋ ( ( λ x10470 -> ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> if true then x10480 else x10470 ) ) ) $ ( x10470 ) ) ) ) $ ( if d826 then false else d352 )
        d1050 : ( ( Set -> Set ) ∋ ( ( λ x10540 -> if false then Bool else x10540 ) ) ) $ ( if false then Bool else Bool )
        d1050 = if ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> d992 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10520 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> true ) ) ) $ ( true )
        d1055 : if false then ( ( Set -> Set ) ∋ ( ( λ x10580 -> x10580 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10590 -> Bool ) ) ) $ ( Bool )
        d1055 = ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> if d779 then d365 else d960 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d942 )
        d1060 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10630 -> Bool ) ) ) $ ( Bool )
        d1060 = if ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> d831 ) ) ) $ ( true ) then if false then d434 else d593 else ( ( Bool -> Bool ) ∋ ( ( λ x10620 -> d329 ) ) ) $ ( true )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x10670 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1064 = ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> ( ( Bool -> Bool ) ∋ ( ( λ x10660 -> if x10660 then true else d939 ) ) ) $ ( false ) ) ) ) $ ( if false then d873 else d584 )
        d1068 : if true then ( ( Set -> Set ) ∋ ( ( λ x10700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10710 -> Bool ) ) ) $ ( Bool )
        d1068 = if if true then true else true then if false then d747 else d612 else ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> x10690 ) ) ) $ ( true )
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> ( ( Set -> Set ) ∋ ( ( λ x10750 -> if false then x10740 else x10740 ) ) ) $ ( x10740 ) ) ) ) $ ( if true then Bool else Bool )
        d1072 = if if true then d735 else d73 then ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> d1055 ) ) ) $ ( true ) else if d265 then false else false
        d1076 : ( ( Set -> Set ) ∋ ( ( λ x10800 -> ( ( Set -> Set ) ∋ ( ( λ x10810 -> if true then Bool else x10800 ) ) ) $ ( x10800 ) ) ) ) $ ( if true then Bool else Bool )
        d1076 = if ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> false ) ) ) $ ( d265 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> d217 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> false ) ) ) $ ( d408 )
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x10840 -> ( ( Set -> Set ) ∋ ( ( λ x10850 -> if true then Bool else Bool ) ) ) $ ( x10840 ) ) ) ) $ ( if false then Bool else Bool )
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> if x10830 then d543 else false ) ) ) $ ( if d549 then d636 else d89 )
        d1086 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1086 = ( ( Bool -> Bool ) ∋ ( ( λ x10870 -> if d988 then true else d768 ) ) ) $ ( if false then true else d443 )
        d1088 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10900 -> x10900 ) ) ) $ ( Bool )
        d1088 = if if true then d144 else d960 then if false then d873 else d545 else ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> true ) ) ) $ ( true )
        d1091 : ( ( Set -> Set ) ∋ ( ( λ x10930 -> if false then x10930 else x10930 ) ) ) $ ( if false then Bool else Bool )
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> if true then x10920 else true ) ) ) $ ( if d169 then true else false )
        d1094 : if true then ( ( Set -> Set ) ∋ ( ( λ x10960 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if true then d992 else d355 ) ) ) $ ( if true then false else true )
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x11000 -> if true then Bool else x11000 ) ) ) $ ( if false then Bool else Bool )
        d1097 = ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> if x10980 then false else d480 ) ) ) $ ( x10980 ) ) ) ) $ ( if d300 then d603 else true )
        d1101 : if false then ( ( Set -> Set ) ∋ ( ( λ x11030 -> x11030 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> if x11020 then x11020 else d911 ) ) ) $ ( if true then false else d689 )
        d1104 : ( ( Set -> Set ) ∋ ( ( λ x11070 -> ( ( Set -> Set ) ∋ ( ( λ x11080 -> if true then Bool else x11070 ) ) ) $ ( x11070 ) ) ) ) $ ( if false then Bool else Bool )
        d1104 = if ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> x11050 ) ) ) $ ( d451 ) then if d731 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> x11060 ) ) ) $ ( false )
        d1109 : ( ( Set -> Set ) ∋ ( ( λ x11120 -> if false then Bool else x11120 ) ) ) $ ( if false then Bool else Bool )
        d1109 = if ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> d34 ) ) ) $ ( false ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> d204 ) ) ) $ ( true )
        d1113 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11150 -> x11150 ) ) ) $ ( Bool )
        d1113 = ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> if true then d476 else x11140 ) ) ) $ ( if d914 then false else false )
        d1116 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11180 -> x11180 ) ) ) $ ( Bool )
        d1116 = ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> if d760 then x11170 else true ) ) ) $ ( if d817 then d860 else true )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x11220 -> if true then Bool else x11220 ) ) ) $ ( if true then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x11200 -> ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> if true then x11210 else false ) ) ) $ ( x11200 ) ) ) ) $ ( if false then d365 else d465 )
        d1123 : ( ( Set -> Set ) ∋ ( ( λ x11260 -> if false then Bool else x11260 ) ) ) $ ( if false then Bool else Bool )
        d1123 = ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> if x11250 then x11240 else x11250 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d418 )
        d1127 : ( ( Set -> Set ) ∋ ( ( λ x11300 -> ( ( Set -> Set ) ∋ ( ( λ x11310 -> if false then Bool else x11310 ) ) ) $ ( x11300 ) ) ) ) $ ( if false then Bool else Bool )
        d1127 = ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> ( ( Bool -> Bool ) ∋ ( ( λ x11290 -> if true then d826 else x11290 ) ) ) $ ( x11280 ) ) ) ) $ ( if false then false else d860 )
        d1132 : if false then ( ( Set -> Set ) ∋ ( ( λ x11340 -> x11340 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1132 = if if d996 then d122 else d265 then if d740 then d584 else false else ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> x11330 ) ) ) $ ( true )
        d1135 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1135 = if if d357 then d395 else true then if true then true else d219 else if d434 then d1086 else d204
        d1136 : if true then ( ( Set -> Set ) ∋ ( ( λ x11390 -> x11390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11400 -> x11400 ) ) ) $ ( Bool )
        d1136 = ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> if false then d893 else x11370 ) ) ) $ ( d288 ) ) ) ) $ ( if false then d903 else d304 )
        d1141 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1141 = ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> if d458 then d1109 else true ) ) ) $ ( if true then d187 else d964 )
        d1143 : ( ( Set -> Set ) ∋ ( ( λ x11460 -> ( ( Set -> Set ) ∋ ( ( λ x11470 -> if true then Bool else x11470 ) ) ) $ ( x11460 ) ) ) ) $ ( if true then Bool else Bool )
        d1143 = if ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> x11440 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> true ) ) ) $ ( d970 ) else if true then false else false
        d1148 : if false then ( ( Set -> Set ) ∋ ( ( λ x11500 -> x11500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1148 = ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> if d340 then d342 else d1076 ) ) ) $ ( if d56 then d855 else true )
        d1151 : ( ( Set -> Set ) ∋ ( ( λ x11520 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1151 = if if d262 then false else d1094 then if d1119 then d543 else true else if true then true else true
        d1153 : ( ( Set -> Set ) ∋ ( ( λ x11570 -> if true then x11570 else x11570 ) ) ) $ ( if true then Bool else Bool )
        d1153 = if ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> d1091 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11550 -> d73 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11560 -> false ) ) ) $ ( true )
        d1158 : ( ( Set -> Set ) ∋ ( ( λ x11620 -> ( ( Set -> Set ) ∋ ( ( λ x11630 -> if false then Bool else Bool ) ) ) $ ( x11620 ) ) ) ) $ ( if true then Bool else Bool )
        d1158 = if ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> x11590 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> d992 ) ) ) $ ( d488 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> x11610 ) ) ) $ ( true )
        d1164 : ( ( Set -> Set ) ∋ ( ( λ x11660 -> ( ( Set -> Set ) ∋ ( ( λ x11670 -> if true then Bool else x11660 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1164 = ( ( Bool -> Bool ) ∋ ( ( λ x11650 -> if x11650 then d412 else x11650 ) ) ) $ ( if d658 then true else false )
        d1168 : if true then ( ( Set -> Set ) ∋ ( ( λ x11690 -> x11690 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1168 = if if d1097 then false else false then if true then d352 else true else if d1101 then d1119 else false
        d1170 : ( ( Set -> Set ) ∋ ( ( λ x11710 -> ( ( Set -> Set ) ∋ ( ( λ x11720 -> if false then x11720 else Bool ) ) ) $ ( x11710 ) ) ) ) $ ( if false then Bool else Bool )
        d1170 = if if false then d1068 else d458 then if true then true else d501 else if d137 then d744 else true
        d1173 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1173 = if ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> true ) ) ) $ ( true ) then if true then d398 else true else if d451 then d39 else d644
        d1175 : ( ( Set -> Set ) ∋ ( ( λ x11770 -> if false then x11770 else x11770 ) ) ) $ ( if false then Bool else Bool )
        d1175 = if if d826 then true else d584 then if d731 then d1088 else false else ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> d768 ) ) ) $ ( false )
        d1178 : ( ( Set -> Set ) ∋ ( ( λ x11820 -> ( ( Set -> Set ) ∋ ( ( λ x11830 -> if true then x11820 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1178 = if ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> d187 ) ) ) $ ( d924 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> d91 ) ) ) $ ( d1109 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11810 -> x11810 ) ) ) $ ( d563 )
        d1184 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1184 = ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> if false then d873 else true ) ) ) $ ( false ) ) ) ) $ ( if false then d511 else false )
        d1187 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1187 = ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> if x11880 then x11880 else d900 ) ) ) $ ( if d480 then d689 else d25 )
        d1189 : ( ( Set -> Set ) ∋ ( ( λ x11910 -> ( ( Set -> Set ) ∋ ( ( λ x11920 -> if false then Bool else x11910 ) ) ) $ ( x11910 ) ) ) ) $ ( if true then Bool else Bool )
        d1189 = ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> if d443 then true else x11900 ) ) ) $ ( if true then true else d342 )
        d1193 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1193 = ( ( Bool -> Bool ) ∋ ( ( λ x11940 -> if true then false else false ) ) ) $ ( if d25 then false else false )
        d1195 : if true then ( ( Set -> Set ) ∋ ( ( λ x11980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11990 -> x11990 ) ) ) $ ( Bool )
        d1195 = if if d907 then true else d344 then ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11970 -> d416 ) ) ) $ ( d129 )
        d1200 : ( ( Set -> Set ) ∋ ( ( λ x12030 -> ( ( Set -> Set ) ∋ ( ( λ x12040 -> if false then Bool else x12040 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1200 = if ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> d999 ) ) ) $ ( true ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> d152 ) ) ) $ ( d956 )
        d1205 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1205 = if if d380 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x12060 -> x12060 ) ) ) $ ( false ) else if true then d531 else d192
        d1207 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12100 -> Bool ) ) ) $ ( Bool )
        d1207 = ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> ( ( Bool -> Bool ) ∋ ( ( λ x12090 -> if x12080 then x12080 else d1178 ) ) ) $ ( true ) ) ) ) $ ( if false then d1097 else d281 )
        d1211 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12140 -> x12140 ) ) ) $ ( Bool )
        d1211 = ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> ( ( Bool -> Bool ) ∋ ( ( λ x12130 -> if false then d269 else d593 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d1215 : if true then ( ( Set -> Set ) ∋ ( ( λ x12170 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1215 = ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> if true then d82 else d101 ) ) ) $ ( if d1193 then d1148 else false )
        d1218 : ( ( Set -> Set ) ∋ ( ( λ x12210 -> if false then x12210 else x12210 ) ) ) $ ( if true then Bool else Bool )
        d1218 = if if false then true else d873 then ( ( Bool -> Bool ) ∋ ( ( λ x12190 -> d94 ) ) ) $ ( d881 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> false ) ) ) $ ( false )
        d1222 : ( ( Set -> Set ) ∋ ( ( λ x12250 -> ( ( Set -> Set ) ∋ ( ( λ x12260 -> if false then x12260 else Bool ) ) ) $ ( x12250 ) ) ) ) $ ( if false then Bool else Bool )
        d1222 = ( ( Bool -> Bool ) ∋ ( ( λ x12230 -> ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> if false then x12240 else x12240 ) ) ) $ ( d760 ) ) ) ) $ ( if d988 then false else d698 )
        d1227 : ( ( Set -> Set ) ∋ ( ( λ x12300 -> ( ( Set -> Set ) ∋ ( ( λ x12310 -> if true then Bool else x12300 ) ) ) $ ( x12300 ) ) ) ) $ ( if true then Bool else Bool )
        d1227 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> x12280 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> d476 ) ) ) $ ( d152 )
        d1232 : if false then ( ( Set -> Set ) ∋ ( ( λ x12340 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12350 -> Bool ) ) ) $ ( Bool )
        d1232 = ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> if d1068 then x12330 else d264 ) ) ) $ ( if d39 then false else d977 )
        d1236 : ( ( Set -> Set ) ∋ ( ( λ x12390 -> if true then Bool else x12390 ) ) ) $ ( if false then Bool else Bool )
        d1236 = ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> if x12380 then x12380 else true ) ) ) $ ( d304 ) ) ) ) $ ( if true then true else true )
        d1240 : ( ( Set -> Set ) ∋ ( ( λ x12420 -> if true then Bool else x12420 ) ) ) $ ( if false then Bool else Bool )
        d1240 = if ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> false ) ) ) $ ( false ) then if true then true else d235 else if d960 then true else d19
        d1243 : if false then ( ( Set -> Set ) ∋ ( ( λ x12450 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1243 = if if d918 then false else false then if true then d1094 else true else ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> d133 ) ) ) $ ( d897 )
        d1246 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12490 -> Bool ) ) ) $ ( Bool )
        d1246 = if if false then false else d427 then ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> x12480 ) ) ) $ ( d365 )
        d1250 : if false then ( ( Set -> Set ) ∋ ( ( λ x12520 -> x12520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1250 = ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> if d370 then false else d511 ) ) ) $ ( if true then true else true )
        d1253 : ( ( Set -> Set ) ∋ ( ( λ x12560 -> if false then Bool else x12560 ) ) ) $ ( if false then Bool else Bool )
        d1253 = ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> if true then x12540 else d1008 ) ) ) $ ( d98 ) ) ) ) $ ( if d1101 then d640 else d329 )
        d1257 : ( ( Set -> Set ) ∋ ( ( λ x12600 -> ( ( Set -> Set ) ∋ ( ( λ x12610 -> if false then x12610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1257 = ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> ( ( Bool -> Bool ) ∋ ( ( λ x12590 -> if false then true else d52 ) ) ) $ ( d1055 ) ) ) ) $ ( if d245 then d228 else true )
        d1262 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12650 -> Bool ) ) ) $ ( Bool )
        d1262 = ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> if d451 then x12630 else true ) ) ) $ ( false ) ) ) ) $ ( if true then true else d175 )
        d1266 : ( ( Set -> Set ) ∋ ( ( λ x12680 -> if false then Bool else x12680 ) ) ) $ ( if true then Bool else Bool )
        d1266 = ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> if d747 then x12670 else d543 ) ) ) $ ( if d693 then true else d1193 )
        d1269 : if false then ( ( Set -> Set ) ∋ ( ( λ x12710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12720 -> x12720 ) ) ) $ ( Bool )
        d1269 = if ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> x12700 ) ) ) $ ( true ) then if d493 then true else d726 else if true then false else d425
        d1273 : ( ( Set -> Set ) ∋ ( ( λ x12760 -> ( ( Set -> Set ) ∋ ( ( λ x12770 -> if false then Bool else x12770 ) ) ) $ ( x12760 ) ) ) ) $ ( if true then Bool else Bool )
        d1273 = if ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> x12740 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> x12750 ) ) ) $ ( d137 ) else if false then d964 else false
        d1278 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1278 = ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> if x12800 then d274 else d984 ) ) ) $ ( x12790 ) ) ) ) $ ( if false then false else false )
        d1281 : ( ( Set -> Set ) ∋ ( ( λ x12850 -> if true then x12850 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1281 = if ( ( Bool -> Bool ) ∋ ( ( λ x12820 -> false ) ) ) $ ( d165 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> x12830 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> true ) ) ) $ ( false )
        d1286 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1286 = if ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> x12870 ) ) ) $ ( true ) then if d334 then d942 else false else if d89 then false else false
        d1288 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12900 -> x12900 ) ) ) $ ( Bool )
        d1288 = ( ( Bool -> Bool ) ∋ ( ( λ x12890 -> if x12890 then x12890 else true ) ) ) $ ( if d488 then d1253 else d886 )
        d1291 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12930 -> Bool ) ) ) $ ( Bool )
        d1291 = if if true then d1088 else d101 then if d1143 then d752 else d82 else ( ( Bool -> Bool ) ∋ ( ( λ x12920 -> false ) ) ) $ ( true )
        d1294 : if false then ( ( Set -> Set ) ∋ ( ( λ x12970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12980 -> Bool ) ) ) $ ( Bool )
        d1294 = if if d501 then d30 else d508 then ( ( Bool -> Bool ) ∋ ( ( λ x12950 -> x12950 ) ) ) $ ( d265 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> d1215 ) ) ) $ ( d593 )
        d1299 : if true then ( ( Set -> Set ) ∋ ( ( λ x13020 -> x13020 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1299 = ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> if d133 then false else false ) ) ) $ ( x13000 ) ) ) ) $ ( if d956 then true else d183 )
        d1303 : if true then ( ( Set -> Set ) ∋ ( ( λ x13050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13060 -> x13060 ) ) ) $ ( Bool )
        d1303 = if if d868 then false else d740 then if false then d839 else d1076 else ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> false ) ) ) $ ( d893 )
        d1307 : if false then ( ( Set -> Set ) ∋ ( ( λ x13100 -> x13100 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1307 = ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> if true then d1135 else x13090 ) ) ) $ ( x13080 ) ) ) ) $ ( if true then false else d311 )
        d1311 : if true then ( ( Set -> Set ) ∋ ( ( λ x13140 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1311 = if ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> false ) ) ) $ ( false ) then if d73 then d549 else d685 else ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> false ) ) ) $ ( false )
        d1315 : if true then ( ( Set -> Set ) ∋ ( ( λ x13190 -> x13190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13200 -> x13200 ) ) ) $ ( Bool )
        d1315 = if ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> false ) ) ) $ ( d1173 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> d621 ) ) ) $ ( d952 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13180 -> x13180 ) ) ) $ ( d337 )
        d1321 : if false then ( ( Set -> Set ) ∋ ( ( λ x13230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1321 = if ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> d1143 ) ) ) $ ( false ) then if false then true else d304 else if true then false else d549
        d1324 : ( ( Set -> Set ) ∋ ( ( λ x13260 -> ( ( Set -> Set ) ∋ ( ( λ x13270 -> if false then Bool else Bool ) ) ) $ ( x13260 ) ) ) ) $ ( if false then Bool else Bool )
        d1324 = if ( ( Bool -> Bool ) ∋ ( ( λ x13250 -> x13250 ) ) ) $ ( false ) then if d1286 then d508 else d1205 else if d183 then true else true
        d1328 : ( ( Set -> Set ) ∋ ( ( λ x13320 -> if false then x13320 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1328 = if ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> d252 ) ) ) $ ( d520 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13300 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13310 -> x13310 ) ) ) $ ( d154 )
        d1333 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1333 = ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> if d631 then true else false ) ) ) $ ( if true then true else false )
        d1335 : if true then ( ( Set -> Set ) ∋ ( ( λ x13370 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1335 = if if d1091 then true else d1253 then if d981 then false else d434 else ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> x13360 ) ) ) $ ( true )
        d1338 : if true then ( ( Set -> Set ) ∋ ( ( λ x13410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13420 -> Bool ) ) ) $ ( Bool )
        d1338 = if if true then d357 else d931 then ( ( Bool -> Bool ) ∋ ( ( λ x13390 -> false ) ) ) $ ( d165 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> x13400 ) ) ) $ ( false )
        d1343 : ( ( Set -> Set ) ∋ ( ( λ x13450 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1343 = if if d497 then d523 else d231 then ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> x13440 ) ) ) $ ( d1269 ) else if d1136 then false else d1076
        d1346 : ( ( Set -> Set ) ∋ ( ( λ x13480 -> ( ( Set -> Set ) ∋ ( ( λ x13490 -> if true then Bool else Bool ) ) ) $ ( x13480 ) ) ) ) $ ( if false then Bool else Bool )
        d1346 = if if d984 then d900 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> d137 ) ) ) $ ( d1135 ) else if true then d1008 else true
        d1350 : ( ( Set -> Set ) ∋ ( ( λ x13510 -> ( ( Set -> Set ) ∋ ( ( λ x13520 -> if false then Bool else x13520 ) ) ) $ ( x13510 ) ) ) ) $ ( if false then Bool else Bool )
        d1350 = if if false then d1082 else d1022 then if true then false else true else if d238 then true else d488
        d1353 : ( ( Set -> Set ) ∋ ( ( λ x13560 -> ( ( Set -> Set ) ∋ ( ( λ x13570 -> if false then x13570 else x13560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1353 = ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> if x13550 then true else d165 ) ) ) $ ( d1170 ) ) ) ) $ ( if true then d1072 else d735 )
        d1358 : ( ( Set -> Set ) ∋ ( ( λ x13600 -> ( ( Set -> Set ) ∋ ( ( λ x13610 -> if false then Bool else Bool ) ) ) $ ( x13600 ) ) ) ) $ ( if false then Bool else Bool )
        d1358 = if if true then false else d361 then if true then d113 else d443 else ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> x13590 ) ) ) $ ( d42 )
        d1362 : ( ( Set -> Set ) ∋ ( ( λ x13640 -> if false then x13640 else x13640 ) ) ) $ ( if true then Bool else Bool )
        d1362 = ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> if true then x13630 else false ) ) ) $ ( if d1307 then d1094 else d911 )
        d1365 : if true then ( ( Set -> Set ) ∋ ( ( λ x13690 -> x13690 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13700 -> x13700 ) ) ) $ ( Bool )
        d1365 = if ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> x13660 ) ) ) $ ( d1281 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13680 -> d721 ) ) ) $ ( d412 )
        d1371 : ( ( Set -> Set ) ∋ ( ( λ x13730 -> if false then x13730 else x13730 ) ) ) $ ( if false then Bool else Bool )
        d1371 = if if true then d817 else true then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> true ) ) ) $ ( d1311 )
        d1374 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1374 = ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> if x13750 then x13750 else true ) ) ) $ ( if false then d98 else false )
        d1376 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1376 = if if false then false else true then if true then true else d264 else if d1151 then false else d1200
        d1377 : ( ( Set -> Set ) ∋ ( ( λ x13790 -> ( ( Set -> Set ) ∋ ( ( λ x13800 -> if true then Bool else x13790 ) ) ) $ ( x13790 ) ) ) ) $ ( if false then Bool else Bool )
        d1377 = ( ( Bool -> Bool ) ∋ ( ( λ x13780 -> if x13780 then true else x13780 ) ) ) $ ( if d262 then false else false )
        d1381 : if false then ( ( Set -> Set ) ∋ ( ( λ x13840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13850 -> x13850 ) ) ) $ ( Bool )
        d1381 = ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> if x13820 then true else d281 ) ) ) $ ( d1158 ) ) ) ) $ ( if false then d1022 else true )
        d1386 : ( ( Set -> Set ) ∋ ( ( λ x13870 -> if false then x13870 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1386 = if if d1236 then d949 else d689 then if true then d713 else false else if d606 then d1076 else d334
        d1388 : ( ( Set -> Set ) ∋ ( ( λ x13920 -> ( ( Set -> Set ) ∋ ( ( λ x13930 -> if true then Bool else x13930 ) ) ) $ ( x13920 ) ) ) ) $ ( if false then Bool else Bool )
        d1388 = if ( ( Bool -> Bool ) ∋ ( ( λ x13890 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> x13900 ) ) ) $ ( d788 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> x13910 ) ) ) $ ( d416 )
        d1394 : if false then ( ( Set -> Set ) ∋ ( ( λ x13980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13990 -> Bool ) ) ) $ ( Bool )
        d1394 = if ( ( Bool -> Bool ) ∋ ( ( λ x13950 -> x13950 ) ) ) $ ( d598 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> d342 ) ) ) $ ( d1200 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13970 -> x13970 ) ) ) $ ( d1257 )
        d1400 : ( ( Set -> Set ) ∋ ( ( λ x14040 -> if true then x14040 else x14040 ) ) ) $ ( if false then Bool else Bool )
        d1400 = if ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> x14010 ) ) ) $ ( d148 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> x14020 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14030 -> true ) ) ) $ ( true )
        d1405 : if false then ( ( Set -> Set ) ∋ ( ( λ x14060 -> x14060 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1405 = if if false then true else d850 then if false then false else d1173 else if false then false else d584
        d1407 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1407 = ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> if d357 then x14090 else d1286 ) ) ) $ ( x14080 ) ) ) ) $ ( if d1346 then false else d320 )
        d1410 : ( ( Set -> Set ) ∋ ( ( λ x14130 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1410 = if if d187 then false else d946 then ( ( Bool -> Bool ) ∋ ( ( λ x14110 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> d839 ) ) ) $ ( false )
        d1414 : if false then ( ( Set -> Set ) ∋ ( ( λ x14170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14180 -> x14180 ) ) ) $ ( Bool )
        d1414 = ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> ( ( Bool -> Bool ) ∋ ( ( λ x14160 -> if x14160 then x14150 else x14150 ) ) ) $ ( d713 ) ) ) ) $ ( if d455 then true else true )
        d1419 : ( ( Set -> Set ) ∋ ( ( λ x14200 -> ( ( Set -> Set ) ∋ ( ( λ x14210 -> if false then Bool else x14200 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1419 = if if d84 then d836 else d924 then if d764 then false else true else if d443 then d702 else d375
        d1422 : if true then ( ( Set -> Set ) ∋ ( ( λ x14250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14260 -> Bool ) ) ) $ ( Bool )
        d1422 = ( ( Bool -> Bool ) ∋ ( ( λ x14230 -> ( ( Bool -> Bool ) ∋ ( ( λ x14240 -> if d868 then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then d60 else false )
        d1427 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1427 = if if false then d265 else true then ( ( Bool -> Bool ) ∋ ( ( λ x14280 -> d809 ) ) ) $ ( d515 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14290 -> true ) ) ) $ ( false )
        d1430 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1430 = ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> if d212 then x14310 else d1141 ) ) ) $ ( if true then false else true )
        d1432 : ( ( Set -> Set ) ∋ ( ( λ x14350 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1432 = if ( ( Bool -> Bool ) ∋ ( ( λ x14330 -> d644 ) ) ) $ ( true ) then if false then d1158 else d1328 else ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> false ) ) ) $ ( d1046 )
        d1436 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14380 -> x14380 ) ) ) $ ( Bool )
        d1436 = if ( ( Bool -> Bool ) ∋ ( ( λ x14370 -> x14370 ) ) ) $ ( false ) then if false then true else false else if d527 then false else d141
        d1439 : ( ( Set -> Set ) ∋ ( ( λ x14420 -> ( ( Set -> Set ) ∋ ( ( λ x14430 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1439 = ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> if x14400 then d768 else x14400 ) ) ) $ ( d764 ) ) ) ) $ ( if false then d1307 else true )
        d1444 : if true then ( ( Set -> Set ) ∋ ( ( λ x14460 -> x14460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14470 -> x14470 ) ) ) $ ( Bool )
        d1444 = ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> if d839 then true else d1346 ) ) ) $ ( if false then true else true )
        d1448 : ( ( Set -> Set ) ∋ ( ( λ x14510 -> ( ( Set -> Set ) ∋ ( ( λ x14520 -> if false then Bool else Bool ) ) ) $ ( x14510 ) ) ) ) $ ( if false then Bool else Bool )
        d1448 = ( ( Bool -> Bool ) ∋ ( ( λ x14490 -> ( ( Bool -> Bool ) ∋ ( ( λ x14500 -> if x14500 then d850 else x14500 ) ) ) $ ( x14490 ) ) ) ) $ ( if false then false else d195 )
        d1453 : if false then ( ( Set -> Set ) ∋ ( ( λ x14560 -> x14560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1453 = ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> ( ( Bool -> Bool ) ∋ ( ( λ x14550 -> if true then x14550 else d344 ) ) ) $ ( x14540 ) ) ) ) $ ( if false then false else d1008 )
        d1457 : ( ( Set -> Set ) ∋ ( ( λ x14590 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1457 = if if false then true else false then if d1338 then d640 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> false ) ) ) $ ( true )
        d1460 : ( ( Set -> Set ) ∋ ( ( λ x14620 -> ( ( Set -> Set ) ∋ ( ( λ x14630 -> if true then x14630 else x14630 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1460 = if if false then d455 else true then ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> d82 ) ) ) $ ( false ) else if d713 then true else d968
        d1464 : ( ( Set -> Set ) ∋ ( ( λ x14670 -> ( ( Set -> Set ) ∋ ( ( λ x14680 -> if true then x14670 else x14680 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1464 = ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> if false then true else d1324 ) ) ) $ ( x14650 ) ) ) ) $ ( if d716 then d497 else true )
        d1469 : ( ( Set -> Set ) ∋ ( ( λ x14710 -> ( ( Set -> Set ) ∋ ( ( λ x14720 -> if true then Bool else x14720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1469 = ( ( Bool -> Bool ) ∋ ( ( λ x14700 -> if true then d458 else false ) ) ) $ ( if d1371 then d1097 else true )
        d1473 : ( ( Set -> Set ) ∋ ( ( λ x14760 -> ( ( Set -> Set ) ∋ ( ( λ x14770 -> if true then x14770 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1473 = if ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> x14740 ) ) ) $ ( d262 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> x14750 ) ) ) $ ( d1170 ) else if true then d403 else true
        d1478 : if true then ( ( Set -> Set ) ∋ ( ( λ x14800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14810 -> Bool ) ) ) $ ( Bool )
        d1478 = ( ( Bool -> Bool ) ∋ ( ( λ x14790 -> if x14790 then d421 else d1127 ) ) ) $ ( if d284 then false else false )
        d1482 : ( ( Set -> Set ) ∋ ( ( λ x14850 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1482 = if ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> false ) ) ) $ ( false ) then if d175 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x14840 -> true ) ) ) $ ( d566 )
        d1486 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14890 -> x14890 ) ) ) $ ( Bool )
        d1486 = if ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> x14870 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14880 -> d231 ) ) ) $ ( true ) else if d408 then d1035 else d1460
        d1490 : if true then ( ( Set -> Set ) ∋ ( ( λ x14930 -> x14930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14940 -> Bool ) ) ) $ ( Bool )
        d1490 = ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> if d1215 then false else x14920 ) ) ) $ ( d248 ) ) ) ) $ ( if false then true else d8 )
        d1495 : ( ( Set -> Set ) ∋ ( ( λ x14970 -> if false then Bool else x14970 ) ) ) $ ( if false then Bool else Bool )
        d1495 = ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> if true then d764 else x14960 ) ) ) $ ( if false then d169 else d133 )
        d1498 : ( ( Set -> Set ) ∋ ( ( λ x15010 -> if false then x15010 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1498 = ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> ( ( Bool -> Bool ) ∋ ( ( λ x15000 -> if false then x15000 else false ) ) ) $ ( x14990 ) ) ) ) $ ( if d1227 then false else true )
        d1502 : ( ( Set -> Set ) ∋ ( ( λ x15050 -> ( ( Set -> Set ) ∋ ( ( λ x15060 -> if true then Bool else x15060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1502 = ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> ( ( Bool -> Bool ) ∋ ( ( λ x15040 -> if x15040 then false else d946 ) ) ) $ ( d79 ) ) ) ) $ ( if d984 then true else false )
        d1507 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1507 = ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> if true then d1291 else true ) ) ) $ ( d224 ) ) ) ) $ ( if d73 then d192 else d476 )
        d1510 : if true then ( ( Set -> Set ) ∋ ( ( λ x15140 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15150 -> x15150 ) ) ) $ ( Bool )
        d1510 = if ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> d15 ) ) ) $ ( d1022 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15120 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15130 -> d921 ) ) ) $ ( true )
        d1516 : ( ( Set -> Set ) ∋ ( ( λ x15180 -> if false then x15180 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1516 = if if false then false else d468 then ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> x15170 ) ) ) $ ( true ) else if false then false else d484
        d1519 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15210 -> Bool ) ) ) $ ( Bool )
        d1519 = ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> if d1343 then true else x15200 ) ) ) $ ( if false then false else true )
        d1522 : if true then ( ( Set -> Set ) ∋ ( ( λ x15250 -> x15250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15260 -> Bool ) ) ) $ ( Bool )
        d1522 = if if true then true else d653 then ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> d101 ) ) ) $ ( d154 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> false ) ) ) $ ( d165 )
        d1527 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15310 -> Bool ) ) ) $ ( Bool )
        d1527 = if ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> d1377 ) ) ) $ ( d1040 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15290 -> false ) ) ) $ ( d836 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15300 -> x15300 ) ) ) $ ( true )
        d1532 : ( ( Set -> Set ) ∋ ( ( λ x15350 -> if false then Bool else x15350 ) ) ) $ ( if true then Bool else Bool )
        d1532 = ( ( Bool -> Bool ) ∋ ( ( λ x15330 -> ( ( Bool -> Bool ) ∋ ( ( λ x15340 -> if x15340 then true else true ) ) ) $ ( d1173 ) ) ) ) $ ( if true then d165 else false )
        d1536 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1536 = ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> if x15370 then x15370 else d603 ) ) ) $ ( if true then d689 else d740 )
        d1538 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1538 = ( ( Bool -> Bool ) ∋ ( ( λ x15390 -> if x15390 then d1141 else x15390 ) ) ) $ ( if d685 then d1141 else d219 )
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15420 -> ( ( Set -> Set ) ∋ ( ( λ x15430 -> if true then x15430 else Bool ) ) ) $ ( x15420 ) ) ) ) $ ( if false then Bool else Bool )
        d1540 = ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> if true then d1027 else false ) ) ) $ ( if d1333 then d850 else d935 )
        d1544 : if false then ( ( Set -> Set ) ∋ ( ( λ x15470 -> x15470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15480 -> x15480 ) ) ) $ ( Bool )
        d1544 = if ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> x15450 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> x15460 ) ) ) $ ( d398 ) else if d1473 then true else d395
        d1549 : if true then ( ( Set -> Set ) ∋ ( ( λ x15520 -> x15520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1549 = ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> if true then true else false ) ) ) $ ( d1101 ) ) ) ) $ ( if true then d380 else d206 )
        d1553 : if false then ( ( Set -> Set ) ∋ ( ( λ x15550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15560 -> Bool ) ) ) $ ( Bool )
        d1553 = if if d603 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x15540 -> d621 ) ) ) $ ( d56 ) else if false then true else d439
        d1557 : ( ( Set -> Set ) ∋ ( ( λ x15590 -> if true then x15590 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1557 = ( ( Bool -> Bool ) ∋ ( ( λ x15580 -> if true then true else d1008 ) ) ) $ ( if false then false else d1109 )
        d1560 : ( ( Set -> Set ) ∋ ( ( λ x15630 -> ( ( Set -> Set ) ∋ ( ( λ x15640 -> if false then x15630 else x15640 ) ) ) $ ( x15630 ) ) ) ) $ ( if true then Bool else Bool )
        d1560 = ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> if d206 then true else true ) ) ) $ ( d1394 ) ) ) ) $ ( if d554 then d1240 else d1407 )
        d1565 : ( ( Set -> Set ) ∋ ( ( λ x15680 -> if false then x15680 else x15680 ) ) ) $ ( if false then Bool else Bool )
        d1565 = ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> ( ( Bool -> Bool ) ∋ ( ( λ x15670 -> if x15660 then x15660 else d395 ) ) ) $ ( true ) ) ) ) $ ( if false then d860 else d1538 )
        d1569 : ( ( Set -> Set ) ∋ ( ( λ x15720 -> ( ( Set -> Set ) ∋ ( ( λ x15730 -> if true then x15730 else x15720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1569 = ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> ( ( Bool -> Bool ) ∋ ( ( λ x15710 -> if d82 then x15700 else false ) ) ) $ ( false ) ) ) ) $ ( if d946 then true else d603 )
        d1574 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15770 -> Bool ) ) ) $ ( Bool )
        d1574 = ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> if false then d311 else true ) ) ) $ ( x15750 ) ) ) ) $ ( if d388 then d726 else d1400 )
        d1578 : ( ( Set -> Set ) ∋ ( ( λ x15810 -> ( ( Set -> Set ) ∋ ( ( λ x15820 -> if false then x15810 else Bool ) ) ) $ ( x15810 ) ) ) ) $ ( if false then Bool else Bool )
        d1578 = if ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> false ) ) ) $ ( d1116 ) then if true then d1560 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15800 -> true ) ) ) $ ( d257 )
        d1583 : ( ( Set -> Set ) ∋ ( ( λ x15860 -> ( ( Set -> Set ) ∋ ( ( λ x15870 -> if false then x15860 else x15870 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1583 = ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> ( ( Bool -> Bool ) ∋ ( ( λ x15850 -> if d248 then d133 else x15840 ) ) ) $ ( false ) ) ) ) $ ( if false then d579 else false )
        d1588 : if true then ( ( Set -> Set ) ∋ ( ( λ x15910 -> x15910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15920 -> x15920 ) ) ) $ ( Bool )
        d1588 = ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> ( ( Bool -> Bool ) ∋ ( ( λ x15900 -> if true then true else true ) ) ) $ ( d307 ) ) ) ) $ ( if d228 then true else d1119 )
        d1593 : ( ( Set -> Set ) ∋ ( ( λ x15960 -> if false then Bool else x15960 ) ) ) $ ( if false then Bool else Bool )
        d1593 = ( ( Bool -> Bool ) ∋ ( ( λ x15940 -> ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> if false then d623 else d82 ) ) ) $ ( d11 ) ) ) ) $ ( if d122 then true else false )
        d1597 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1597 = ( ( Bool -> Bool ) ∋ ( ( λ x15980 -> if x15980 then d8 else x15980 ) ) ) $ ( if d1184 then true else true )
        d1599 : ( ( Set -> Set ) ∋ ( ( λ x16020 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1599 = ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> if d430 then d752 else true ) ) ) $ ( x16000 ) ) ) ) $ ( if false then false else true )
        d1603 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16050 -> Bool ) ) ) $ ( Bool )
        d1603 = ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> if x16040 then x16040 else false ) ) ) $ ( if d1553 then d462 else false )
        d1606 : ( ( Set -> Set ) ∋ ( ( λ x16090 -> if true then Bool else x16090 ) ) ) $ ( if true then Bool else Bool )
        d1606 = ( ( Bool -> Bool ) ∋ ( ( λ x16070 -> ( ( Bool -> Bool ) ∋ ( ( λ x16080 -> if d1151 then x16080 else x16070 ) ) ) $ ( x16070 ) ) ) ) $ ( if true then d543 else true )
        d1610 : if true then ( ( Set -> Set ) ∋ ( ( λ x16120 -> x16120 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1610 = if ( ( Bool -> Bool ) ∋ ( ( λ x16110 -> d1135 ) ) ) $ ( true ) then if d484 then d1091 else d462 else if d238 then d1498 else d757
        d1613 : if false then ( ( Set -> Set ) ∋ ( ( λ x16170 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1613 = if ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> d1240 ) ) ) $ ( d60 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16150 -> x16150 ) ) ) $ ( d219 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> true ) ) ) $ ( false )
        d1618 : ( ( Set -> Set ) ∋ ( ( λ x16200 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1618 = ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> if x16190 then true else d981 ) ) ) $ ( if d1311 then true else d942 )
        d1621 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16230 -> x16230 ) ) ) $ ( Bool )
        d1621 = ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> if x16220 then false else d1269 ) ) ) $ ( if true then true else true )
        d1624 : if true then ( ( Set -> Set ) ∋ ( ( λ x16260 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1624 = ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> if x16250 then false else d877 ) ) ) $ ( if true then true else d1273 )
        d1627 : ( ( Set -> Set ) ∋ ( ( λ x16290 -> if false then Bool else x16290 ) ) ) $ ( if true then Bool else Bool )
        d1627 = if if d1060 then false else true then if d304 then d931 else d1178 else ( ( Bool -> Bool ) ∋ ( ( λ x16280 -> x16280 ) ) ) $ ( d598 )
        d1630 : ( ( Set -> Set ) ∋ ( ( λ x16330 -> ( ( Set -> Set ) ∋ ( ( λ x16340 -> if false then x16330 else x16340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1630 = if ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> x16310 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> x16320 ) ) ) $ ( false ) else if false then true else d914
        d1635 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1635 = if ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> x16360 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> false ) ) ) $ ( true ) else if d868 then d269 else true
        d1638 : if true then ( ( Set -> Set ) ∋ ( ( λ x16400 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1638 = if if d252 then true else true then if true then true else d1243 else ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> d868 ) ) ) $ ( d304 )
        d1641 : ( ( Set -> Set ) ∋ ( ( λ x16440 -> ( ( Set -> Set ) ∋ ( ( λ x16450 -> if true then x16440 else Bool ) ) ) $ ( x16440 ) ) ) ) $ ( if true then Bool else Bool )
        d1641 = ( ( Bool -> Bool ) ∋ ( ( λ x16420 -> ( ( Bool -> Bool ) ∋ ( ( λ x16430 -> if x16430 then true else d277 ) ) ) $ ( true ) ) ) ) $ ( if d133 then true else d370 )
        d1646 : ( ( Set -> Set ) ∋ ( ( λ x16480 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1646 = if ( ( Bool -> Bool ) ∋ ( ( λ x16470 -> d1257 ) ) ) $ ( d1164 ) then if d1457 then d421 else false else if false then true else d257
        d1649 : if false then ( ( Set -> Set ) ∋ ( ( λ x16520 -> x16520 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1649 = if if d162 then d1502 else d1253 then ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> x16500 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> true ) ) ) $ ( d1273 )
        d1653 : ( ( Set -> Set ) ∋ ( ( λ x16550 -> ( ( Set -> Set ) ∋ ( ( λ x16560 -> if false then Bool else x16560 ) ) ) $ ( x16550 ) ) ) ) $ ( if false then Bool else Bool )
        d1653 = ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> if false then true else d603 ) ) ) $ ( if true then false else true )
        d1657 : ( ( Set -> Set ) ∋ ( ( λ x16600 -> ( ( Set -> Set ) ∋ ( ( λ x16610 -> if false then Bool else Bool ) ) ) $ ( x16600 ) ) ) ) $ ( if true then Bool else Bool )
        d1657 = ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> if x16590 then true else x16590 ) ) ) $ ( d1603 ) ) ) ) $ ( if false then true else d1653 )
        d1662 : if true then ( ( Set -> Set ) ∋ ( ( λ x16650 -> x16650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16660 -> x16660 ) ) ) $ ( Bool )
        d1662 = if if true then false else d744 then ( ( Bool -> Bool ) ∋ ( ( λ x16630 -> true ) ) ) $ ( d162 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16640 -> true ) ) ) $ ( false )
        d1667 : if true then ( ( Set -> Set ) ∋ ( ( λ x16690 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1667 = ( ( Bool -> Bool ) ∋ ( ( λ x16680 -> if d293 then d455 else false ) ) ) $ ( if d1262 then d235 else d886 )
        d1670 : if true then ( ( Set -> Set ) ∋ ( ( λ x16720 -> x16720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16730 -> x16730 ) ) ) $ ( Bool )
        d1670 = ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> if true then x16710 else d388 ) ) ) $ ( if true then false else true )
        d1674 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1674 = ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> if x16750 then d1593 else x16750 ) ) ) $ ( x16750 ) ) ) ) $ ( if d649 then d752 else d1583 )
        d1677 : if false then ( ( Set -> Set ) ∋ ( ( λ x16790 -> x16790 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1677 = if if d30 then false else d1422 then if true then d1170 else d812 else ( ( Bool -> Bool ) ∋ ( ( λ x16780 -> x16780 ) ) ) $ ( d776 )
        d1680 : ( ( Set -> Set ) ∋ ( ( λ x16820 -> ( ( Set -> Set ) ∋ ( ( λ x16830 -> if true then x16830 else x16820 ) ) ) $ ( x16820 ) ) ) ) $ ( if false then Bool else Bool )
        d1680 = ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> if d1082 then x16810 else true ) ) ) $ ( if d1178 then false else false )
        d1684 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16870 -> Bool ) ) ) $ ( Bool )
        d1684 = if ( ( Bool -> Bool ) ∋ ( ( λ x16850 -> false ) ) ) $ ( d235 ) then if true then true else d1371 else ( ( Bool -> Bool ) ∋ ( ( λ x16860 -> d342 ) ) ) $ ( d365 )
        d1688 : if true then ( ( Set -> Set ) ∋ ( ( λ x16900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16910 -> x16910 ) ) ) $ ( Bool )
        d1688 = if if true then d365 else false then if d94 then d610 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16890 -> d1680 ) ) ) $ ( false )
        d1692 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16950 -> Bool ) ) ) $ ( Bool )
        d1692 = if ( ( Bool -> Bool ) ∋ ( ( λ x16930 -> x16930 ) ) ) $ ( d1430 ) then if true then d897 else d747 else ( ( Bool -> Bool ) ∋ ( ( λ x16940 -> x16940 ) ) ) $ ( d1184 )
        d1696 : ( ( Set -> Set ) ∋ ( ( λ x16980 -> ( ( Set -> Set ) ∋ ( ( λ x16990 -> if true then x16990 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1696 = ( ( Bool -> Bool ) ∋ ( ( λ x16970 -> if x16970 then d559 else false ) ) ) $ ( if true then false else d809 )
        d1700 : ( ( Set -> Set ) ∋ ( ( λ x17030 -> ( ( Set -> Set ) ∋ ( ( λ x17040 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1700 = if if true then d1516 else true then ( ( Bool -> Bool ) ∋ ( ( λ x17010 -> x17010 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x17020 -> true ) ) ) $ ( d1464 )
        d1705 : ( ( Set -> Set ) ∋ ( ( λ x17070 -> ( ( Set -> Set ) ∋ ( ( λ x17080 -> if true then Bool else x17080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1705 = ( ( Bool -> Bool ) ∋ ( ( λ x17060 -> if x17060 then x17060 else x17060 ) ) ) $ ( if d850 then false else false )
        d1709 : if false then ( ( Set -> Set ) ∋ ( ( λ x17110 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1709 = ( ( Bool -> Bool ) ∋ ( ( λ x17100 -> if d1175 then x17100 else x17100 ) ) ) $ ( if true then true else d977 )
        d1712 : ( ( Set -> Set ) ∋ ( ( λ x17160 -> ( ( Set -> Set ) ∋ ( ( λ x17170 -> if false then Bool else Bool ) ) ) $ ( x17160 ) ) ) ) $ ( if false then Bool else Bool )
        d1712 = if ( ( Bool -> Bool ) ∋ ( ( λ x17130 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x17140 -> false ) ) ) $ ( d60 ) else ( ( Bool -> Bool ) ∋ ( ( λ x17150 -> d1175 ) ) ) $ ( d1414 )
        d1718 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x17200 -> Bool ) ) ) $ ( Bool )
        d1718 = if if true then false else false then if d511 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x17190 -> d1549 ) ) ) $ ( false )
        d1721 : ( ( Set -> Set ) ∋ ( ( λ x17230 -> if true then x17230 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1721 = ( ( Bool -> Bool ) ∋ ( ( λ x17220 -> if true then true else x17220 ) ) ) $ ( if true then true else d1405 )
        d1724 : ( ( Set -> Set ) ∋ ( ( λ x17270 -> ( ( Set -> Set ) ∋ ( ( λ x17280 -> if false then x17280 else x17270 ) ) ) $ ( x17270 ) ) ) ) $ ( if true then Bool else Bool )
        d1724 = if ( ( Bool -> Bool ) ∋ ( ( λ x17250 -> d1540 ) ) ) $ ( d122 ) then ( ( Bool -> Bool ) ∋ ( ( λ x17260 -> x17260 ) ) ) $ ( true ) else if d662 then false else d68
        d1729 : if true then ( ( Set -> Set ) ∋ ( ( λ x17320 -> x17320 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1729 = if ( ( Bool -> Bool ) ∋ ( ( λ x17300 -> d826 ) ) ) $ ( d1430 ) then if true then d493 else d824 else ( ( Bool -> Bool ) ∋ ( ( λ x17310 -> false ) ) ) $ ( false )