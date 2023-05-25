module Decls150Test7  where
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
        d1 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( Bool )
        d1 = if if true then true else true then if false then false else true else if true then true else true
        d3 : if true then ( ( Set -> Set ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d3 = if ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then x110 else x110 ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d3 then x90 else x90 ) ) ) $ ( if false then false else false )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then x150 else Bool ) ) ) $ ( if false then Bool else Bool )
        d12 = if ( ( Bool -> Bool ) ∋ ( ( λ x130 -> false ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( true ) else if d8 then true else d8
        d16 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then Bool else x180 ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if x170 then d8 else false ) ) ) $ ( if false then false else d8 )
        d19 : if false then ( ( Set -> Set ) ∋ ( ( λ x220 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d19 = if if d16 then d1 else true then ( ( Bool -> Bool ) ∋ ( ( λ x200 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d16 ) ) ) $ ( false )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then x270 else x270 ) ) ) $ ( x260 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if ( ( Bool -> Bool ) ∋ ( ( λ x240 -> x240 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x250 -> d8 ) ) ) $ ( true ) else if true then false else d12
        d28 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if x290 then x290 else d8 ) ) ) $ ( if true then false else d3 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> if true then x340 else x340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if x320 then false else x330 ) ) ) $ ( d1 ) ) ) ) $ ( if d3 then false else d28 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> if true then x370 else x370 ) ) ) $ ( x370 ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if if d19 then d16 else d8 then if d28 then d1 else true else if false then false else d1
        d39 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then x420 else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d31 then x400 else true ) ) ) $ ( false ) ) ) ) $ ( if d28 then d31 else d12 )
        d43 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool )
        d43 = if if false then false else d36 then ( ( Bool -> Bool ) ∋ ( ( λ x440 -> false ) ) ) $ ( d23 ) else ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( true )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if x480 then x480 else false ) ) ) $ ( false ) ) ) ) $ ( if d3 then d28 else d23 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> if true then x550 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( false ) then if false then true else false else if true then d47 else true
        d56 : if false then ( ( Set -> Set ) ∋ ( ( λ x580 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if d36 then x570 else d52 ) ) ) $ ( if false then true else d43 )
        d60 : if false then ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( Bool )
        d60 = if ( ( Bool -> Bool ) ∋ ( ( λ x610 -> false ) ) ) $ ( d36 ) then ( ( Bool -> Bool ) ∋ ( ( λ x620 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x630 -> false ) ) ) $ ( false )
        d66 : if true then if true then Bool else Bool else if true then Bool else Bool
        d66 = if ( ( Bool -> Bool ) ∋ ( ( λ x670 -> false ) ) ) $ ( d8 ) then ( ( Bool -> Bool ) ∋ ( ( λ x680 -> x680 ) ) ) $ ( d47 ) else if d43 then d43 else d43
        d69 : if false then if false then Bool else Bool else if false then Bool else Bool
        d69 = if ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d31 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x720 -> true ) ) ) $ ( d23 )
        d73 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( Bool )
        d73 = if if d8 then false else d3 then if true then d16 else d31 else if d60 then true else d36
        d75 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if x760 then false else x770 ) ) ) $ ( true ) ) ) ) $ ( if d52 then d8 else false )
        d79 : if true then ( ( Set -> Set ) ∋ ( ( λ x820 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> if false then d12 else d36 ) ) ) $ ( false ) ) ) ) $ ( if d75 then d52 else d8 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then x860 else x860 ) ) ) $ ( if false then Bool else Bool )
        d84 = if ( ( Bool -> Bool ) ∋ ( ( λ x850 -> true ) ) ) $ ( false ) then if d43 then false else false else if true then false else false
        d87 : if true then ( ( Set -> Set ) ∋ ( ( λ x900 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d87 = if ( ( Bool -> Bool ) ∋ ( ( λ x880 -> false ) ) ) $ ( true ) then if d1 then false else d31 else ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d16 ) ) ) $ ( d69 )
        d91 : if false then if false then Bool else Bool else if true then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if d31 then d60 else d23 ) ) ) $ ( if d28 then true else true )
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if d69 then false else d91 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d69 )
        d96 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x980 -> Bool ) ) ) $ ( Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if x970 then x970 else d16 ) ) ) $ ( if d75 then d56 else d66 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> if true then x1010 else Bool ) ) ) $ ( x1010 ) ) ) ) $ ( if false then Bool else Bool )
        d99 = if if d73 then d43 else d36 then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> d87 ) ) ) $ ( true ) else if d19 then d91 else d91
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> if false then x1050 else x1050 ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if x1040 then d23 else d1 ) ) ) $ ( if d31 then d23 else false )
        d106 : if true then ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d106 = if ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> d36 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d36 ) ) ) $ ( d28 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> true ) ) ) $ ( d1 )
        d111 : if false then ( ( Set -> Set ) ∋ ( ( λ x1130 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if false then d56 else x1120 ) ) ) $ ( if true then false else d87 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> if false then x1180 else Bool ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if true then x1160 else true ) ) ) $ ( d106 ) ) ) ) $ ( if true then d31 else d31 )
        d119 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1200 -> Bool ) ) ) $ ( Bool )
        d119 = if if d36 then d56 else d8 then if d3 then d79 else d36 else if d66 then false else true
        d121 : if false then ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1250 -> Bool ) ) ) $ ( Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if false then true else d73 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d3 )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then Bool else x1290 ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> if x1280 then false else d99 ) ) ) $ ( x1270 ) ) ) ) $ ( if false then d103 else d106 )
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d119 ) ) ) $ ( d91 ) then if false then d47 else true else if d103 then d31 else d23
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> ( ( Set -> Set ) ∋ ( ( λ x1380 -> if false then x1380 else Bool ) ) ) $ ( x1370 ) ) ) ) $ ( if true then Bool else Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> if x1360 then true else d3 ) ) ) $ ( x1350 ) ) ) ) $ ( if false then true else false )
        d139 : if false then ( ( Set -> Set ) ∋ ( ( λ x1410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( Bool )
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> if d28 then x1400 else x1400 ) ) ) $ ( if d106 then d8 else false )
        d143 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> ( ( Set -> Set ) ∋ ( ( λ x1460 -> if true then Bool else x1460 ) ) ) $ ( x1450 ) ) ) ) $ ( if true then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> if true then x1440 else x1440 ) ) ) $ ( if false then d28 else false )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> ( ( Set -> Set ) ∋ ( ( λ x1500 -> if false then Bool else x1490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> if x1480 then true else false ) ) ) $ ( if false then d111 else d3 )
        d151 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1530 -> Bool ) ) ) $ ( Bool )
        d151 = if if d75 then false else d103 then ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> d99 ) ) ) $ ( false ) else if true then d75 else true
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> ( ( Set -> Set ) ∋ ( ( λ x1580 -> if false then x1580 else x1580 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if x1560 then d52 else false ) ) ) $ ( x1550 ) ) ) ) $ ( if true then d139 else d96 )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> if false then Bool else x1610 ) ) ) $ ( if true then Bool else Bool )
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> if false then true else x1600 ) ) ) $ ( if false then d84 else d119 )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> if true then Bool else x1650 ) ) ) $ ( x1640 ) ) ) ) $ ( if false then Bool else Bool )
        d162 = if if false then d69 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( true ) else if d75 then d60 else true
        d166 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( Bool )
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if x1670 then x1670 else false ) ) ) $ ( if d96 then true else false )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> ( ( Set -> Set ) ∋ ( ( λ x1720 -> if true then x1710 else x1720 ) ) ) $ ( x1710 ) ) ) ) $ ( if true then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if d111 then x1700 else false ) ) ) $ ( if d39 then d99 else false )
        d173 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> if false then x1750 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if x1740 then false else x1740 ) ) ) $ ( if true then d69 else true )
        d177 : if true then if true then Bool else Bool else if false then Bool else Bool
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if false then d47 else x1790 ) ) ) $ ( d166 ) ) ) ) $ ( if false then true else d43 )
        d180 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then x1830 else Bool ) ) ) $ ( x1830 ) ) ) ) $ ( if true then Bool else Bool )
        d180 = if ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( d139 ) then if true then d60 else d151 else ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> d66 ) ) ) $ ( true )
        d185 : if false then ( ( Set -> Set ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d185 = if if d115 then true else d111 then ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> d119 ) ) ) $ ( d159 ) else if d75 then d169 else false
        d188 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then x1900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if x1890 then d69 else x1890 ) ) ) $ ( if d111 then d66 else true )
        d192 : if true then ( ( Set -> Set ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> if false then x1930 else d1 ) ) ) $ ( if d69 then d143 else d166 )
        d195 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> if false then Bool else x1970 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d195 = ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if false then true else false ) ) ) $ ( if false then true else d91 )
        d199 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> ( ( Set -> Set ) ∋ ( ( λ x2030 -> if true then Bool else x2020 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> if x2010 then true else d115 ) ) ) $ ( d39 ) ) ) ) $ ( if d79 then d52 else false )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d204 = if if d106 then d84 else true then if d177 then d39 else true else if d23 then true else d188
        d206 : if false then ( ( Set -> Set ) ∋ ( ( λ x2080 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> if d79 then true else x2070 ) ) ) $ ( if false then false else true )
        d209 : if false then if true then Bool else Bool else if true then Bool else Bool
        d209 = if if false then false else d204 then ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> d154 ) ) ) $ ( d69 ) else if true then d96 else true
        d211 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if false then x2150 else x2140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d211 = if if true then d154 else d162 then ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> d126 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> false ) ) ) $ ( false )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> ( ( Set -> Set ) ∋ ( ( λ x2200 -> if true then x2190 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d216 = if ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> x2170 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> d69 ) ) ) $ ( true ) else if d99 then d91 else true
        d221 : if false then if true then Bool else Bool else if true then Bool else Bool
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> if true then d162 else d69 ) ) ) $ ( d199 ) ) ) ) $ ( if true then d31 else false )
        d224 : ( ( Set -> Set ) ∋ ( ( λ x2250 -> ( ( Set -> Set ) ∋ ( ( λ x2260 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d224 = if if false then true else d23 then if true then d139 else d36 else if false then d185 else false
        d227 : ( ( Set -> Set ) ∋ ( ( λ x2300 -> if true then x2300 else x2300 ) ) ) $ ( if true then Bool else Bool )
        d227 = ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> if false then d73 else x2280 ) ) ) $ ( x2280 ) ) ) ) $ ( if true then d106 else d12 )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> ( ( Set -> Set ) ∋ ( ( λ x2340 -> if true then x2340 else Bool ) ) ) $ ( x2330 ) ) ) ) $ ( if true then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> if x2320 then x2320 else d93 ) ) ) $ ( if false then true else true )
        d235 : ( ( Set -> Set ) ∋ ( ( λ x2370 -> ( ( Set -> Set ) ∋ ( ( λ x2380 -> if true then x2380 else x2380 ) ) ) $ ( x2370 ) ) ) ) $ ( if false then Bool else Bool )
        d235 = if if d75 then d3 else true then if d106 then true else d221 else ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> x2360 ) ) ) $ ( d139 )
        d239 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> if false then Bool else x2410 ) ) ) $ ( if true then Bool else Bool )
        d239 = if ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( d188 ) then if d103 then true else d8 else if true then d169 else false
        d242 : if true then ( ( Set -> Set ) ∋ ( ( λ x2440 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d242 = if ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> d36 ) ) ) $ ( false ) then if d3 then false else false else if d69 then d121 else d93
        d245 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2480 -> x2480 ) ) ) $ ( Bool )
        d245 = if if d91 then d227 else d180 then ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> d73 ) ) ) $ ( d185 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> d143 ) ) ) $ ( d199 )
        d249 : ( ( Set -> Set ) ∋ ( ( λ x2510 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if d28 then true else x2500 ) ) ) $ ( if d115 then d56 else d36 )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x2550 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if d47 then x2530 else d52 ) ) ) $ ( true ) ) ) ) $ ( if d192 then false else d134 )
        d256 : if true then if false then Bool else Bool else if true then Bool else Bool
        d256 = if if true then d43 else d235 then if true then d206 else d199 else ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> d79 ) ) ) $ ( true )
        d258 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> if false then true else x2590 ) ) ) $ ( x2590 ) ) ) ) $ ( if false then true else true )
        d262 : if true then if true then Bool else Bool else if false then Bool else Bool
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> if d204 then d111 else d121 ) ) ) $ ( if false then false else false )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> if false then Bool else x2670 ) ) ) $ ( if false then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if x2660 then true else d204 ) ) ) $ ( false ) ) ) ) $ ( if true then d91 else d252 )
        d268 : ( ( Set -> Set ) ∋ ( ( λ x2700 -> ( ( Set -> Set ) ∋ ( ( λ x2710 -> if true then Bool else x2710 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d268 = if if d111 then d52 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> false ) ) ) $ ( d258 ) else if false then d166 else true
        d272 : ( ( Set -> Set ) ∋ ( ( λ x2740 -> ( ( Set -> Set ) ∋ ( ( λ x2750 -> if true then x2740 else x2740 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d272 = if if false then false else d227 then ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> x2730 ) ) ) $ ( d8 ) else if d96 then true else d3
        d276 : if true then ( ( Set -> Set ) ∋ ( ( λ x2790 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d276 = if ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> d180 ) ) ) $ ( true ) then if d272 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( d66 )
        d280 : ( ( Set -> Set ) ∋ ( ( λ x2830 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> if x2810 then x2810 else d28 ) ) ) $ ( x2810 ) ) ) ) $ ( if true then d272 else d56 )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> if true then x2860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d284 = if if false then d245 else false then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> x2850 ) ) ) $ ( d96 )
        d287 : if true then if false then Bool else Bool else if true then Bool else Bool
        d287 = ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> if x2880 then d227 else d56 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d242 )
        d290 : if false then ( ( Set -> Set ) ∋ ( ( λ x2940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d290 = if ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> false ) ) ) $ ( d3 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> true ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> d1 ) ) ) $ ( d56 )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x2980 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> if d28 then d242 else x2960 ) ) ) $ ( x2960 ) ) ) ) $ ( if d180 then d93 else true )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x3020 -> if false then x3020 else Bool ) ) ) $ ( if true then Bool else Bool )
        d299 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> d290 ) ) ) $ ( true )
        d303 : if false then ( ( Set -> Set ) ∋ ( ( λ x3040 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d303 = if if d256 then d36 else d221 then if true then d31 else false else if d262 then true else false
        d305 : if true then if true then Bool else Bool else if true then Bool else Bool
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if d16 then false else d56 ) ) ) $ ( d211 ) ) ) ) $ ( if false then true else true )
        d308 : if true then if true then Bool else Bool else if true then Bool else Bool
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> if true then x3090 else false ) ) ) $ ( if true then false else true )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> ( ( Set -> Set ) ∋ ( ( λ x3140 -> if true then Bool else Bool ) ) ) $ ( x3130 ) ) ) ) $ ( if true then Bool else Bool )
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> if d84 then x3120 else x3120 ) ) ) $ ( true ) ) ) ) $ ( if true then d66 else true )
        d315 : ( ( Set -> Set ) ∋ ( ( λ x3170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> if d252 then false else x3160 ) ) ) $ ( if true then true else d211 )
        d318 : ( ( Set -> Set ) ∋ ( ( λ x3200 -> ( ( Set -> Set ) ∋ ( ( λ x3210 -> if false then x3200 else Bool ) ) ) $ ( x3200 ) ) ) ) $ ( if true then Bool else Bool )
        d318 = if if d28 then d139 else d3 then ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> false ) ) ) $ ( true ) else if true then d143 else true
        d322 : if true then if true then Bool else Bool else if false then Bool else Bool
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> if d96 then false else false ) ) ) $ ( x3230 ) ) ) ) $ ( if d188 then true else false )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> if true then x3280 else x3280 ) ) ) $ ( if false then Bool else Bool )
        d325 = if ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> x3260 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( false ) else if false then false else false
        d329 : if true then ( ( Set -> Set ) ∋ ( ( λ x3300 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d329 = if if true then false else d84 then if d177 then false else d308 else if true then d204 else d276
        d331 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3350 -> Bool ) ) ) $ ( Bool )
        d331 = if ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> true ) ) ) $ ( d290 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> d242 ) ) ) $ ( d115 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> true ) ) ) $ ( true )
        d336 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> ( ( Set -> Set ) ∋ ( ( λ x3390 -> if false then Bool else x3380 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d336 = if if false then false else d221 then ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> false ) ) ) $ ( true ) else if d325 then true else false
        d340 : if false then if true then Bool else Bool else if false then Bool else Bool
        d340 = ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> if d151 then true else true ) ) ) $ ( if d12 then true else d166 )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> ( ( Set -> Set ) ∋ ( ( λ x3450 -> if true then x3440 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if false then true else false ) ) ) $ ( if false then d195 else true )
        d346 : if true then ( ( Set -> Set ) ∋ ( ( λ x3490 -> x3490 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> if true then d73 else d221 ) ) ) $ ( x3470 ) ) ) ) $ ( if d188 then d96 else d287 )
        d350 : ( ( Set -> Set ) ∋ ( ( λ x3530 -> if false then x3530 else Bool ) ) ) $ ( if false then Bool else Bool )
        d350 = if if false then d346 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> x3520 ) ) ) $ ( false )
        d354 : ( ( Set -> Set ) ∋ ( ( λ x3560 -> ( ( Set -> Set ) ∋ ( ( λ x3570 -> if true then Bool else Bool ) ) ) $ ( x3560 ) ) ) ) $ ( if true then Bool else Bool )
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> if d268 then d166 else false ) ) ) $ ( if d350 then true else d185 )
        d358 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> ( ( Set -> Set ) ∋ ( ( λ x3610 -> if false then Bool else x3600 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d358 = if if d346 then true else d227 then if d354 then true else d84 else ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> true ) ) ) $ ( false )
        d362 : ( ( Set -> Set ) ∋ ( ( λ x3650 -> ( ( Set -> Set ) ∋ ( ( λ x3660 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d362 = ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> if true then d231 else true ) ) ) $ ( d60 ) ) ) ) $ ( if d256 then d106 else true )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x3700 -> if false then x3700 else x3700 ) ) ) $ ( if false then Bool else Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if x3680 then d336 else d96 ) ) ) $ ( true ) ) ) ) $ ( if d322 then d235 else false )
        d371 : ( ( Set -> Set ) ∋ ( ( λ x3740 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> if x3720 then x3730 else x3720 ) ) ) $ ( x3720 ) ) ) ) $ ( if true then d16 else true )
        d375 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3780 -> Bool ) ) ) $ ( Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if x3770 then true else d224 ) ) ) $ ( x3760 ) ) ) ) $ ( if true then true else d188 )
        d379 : ( ( Set -> Set ) ∋ ( ( λ x3810 -> ( ( Set -> Set ) ∋ ( ( λ x3820 -> if false then x3820 else x3810 ) ) ) $ ( x3810 ) ) ) ) $ ( if true then Bool else Bool )
        d379 = if ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> false ) ) ) $ ( true ) then if false then true else true else if true then d375 else false
        d383 : if true then if false then Bool else Bool else if true then Bool else Bool
        d383 = if ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> false ) ) ) $ ( d126 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( d242 ) else if d12 then d166 else d204
        d386 : ( ( Set -> Set ) ∋ ( ( λ x3890 -> if true then x3890 else x3890 ) ) ) $ ( if true then Bool else Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> if d147 then x3870 else x3880 ) ) ) $ ( d177 ) ) ) ) $ ( if false then false else false )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> if true then Bool else x3920 ) ) ) $ ( if false then Bool else Bool )
        d390 = if if true then d371 else d12 then if d216 then false else d166 else ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> x3910 ) ) ) $ ( false )
        d393 : ( ( Set -> Set ) ∋ ( ( λ x3970 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d393 = if ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> x3940 ) ) ) $ ( d390 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> d199 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( d383 )
        d398 : if true then if false then Bool else Bool else if false then Bool else Bool
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> if false then true else d224 ) ) ) $ ( if true then d264 else d84 )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> ( ( Set -> Set ) ∋ ( ( λ x4040 -> if false then Bool else x4030 ) ) ) $ ( x4030 ) ) ) ) $ ( if true then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> if d185 then false else d56 ) ) ) $ ( x4010 ) ) ) ) $ ( if true then true else false )
        d405 : if false then ( ( Set -> Set ) ∋ ( ( λ x4070 -> x4070 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4080 -> x4080 ) ) ) $ ( Bool )
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> if d23 then false else false ) ) ) $ ( if d354 then true else false )
        d409 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( Bool )
        d409 = if if d19 then true else true then if d350 then false else d358 else if d3 then d169 else d12
        d411 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4140 -> Bool ) ) ) $ ( Bool )
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> if d91 then d143 else d47 ) ) ) $ ( true ) ) ) ) $ ( if d329 then d350 else false )
        d415 : if false then ( ( Set -> Set ) ∋ ( ( λ x4170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4180 -> x4180 ) ) ) $ ( Bool )
        d415 = if if true then false else d31 then if d209 then d134 else d268 else ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> d143 ) ) ) $ ( d52 )
        d419 : if false then ( ( Set -> Set ) ∋ ( ( λ x4220 -> x4220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4230 -> x4230 ) ) ) $ ( Bool )
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> if d84 then d331 else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d424 : if false then ( ( Set -> Set ) ∋ ( ( λ x4270 -> x4270 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> if x4260 then x4260 else x4250 ) ) ) $ ( x4250 ) ) ) ) $ ( if d272 then d173 else false )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> if false then Bool else x4300 ) ) ) $ ( if true then Bool else Bool )
        d428 = if if d303 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> d47 ) ) ) $ ( d39 ) else if true then true else d276
        d431 : ( ( Set -> Set ) ∋ ( ( λ x4330 -> ( ( Set -> Set ) ∋ ( ( λ x4340 -> if false then x4330 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> if d154 then d249 else x4320 ) ) ) $ ( if true then true else d211 )
        d435 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4370 -> Bool ) ) ) $ ( Bool )
        d435 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d143 ) ) ) $ ( d315 ) else if d336 then d310 else d126
        d438 : if true then ( ( Set -> Set ) ∋ ( ( λ x4410 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d438 = if ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> false ) ) ) $ ( d162 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> false ) ) ) $ ( d242 ) else if d185 then false else d224
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> ( ( Set -> Set ) ∋ ( ( λ x4450 -> if true then Bool else x4450 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d442 = if if d39 then d52 else d224 then ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> true ) ) ) $ ( d435 ) else if false then true else true
        d446 : if true then ( ( Set -> Set ) ∋ ( ( λ x4480 -> x4480 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d446 = if ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> x4470 ) ) ) $ ( d256 ) then if d386 then true else d386 else if d31 then d177 else d390
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4520 -> ( ( Set -> Set ) ∋ ( ( λ x4530 -> if false then x4520 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d449 = if ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> d111 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> x4510 ) ) ) $ ( d103 ) else if d159 then d235 else d75
        d454 : if true then ( ( Set -> Set ) ∋ ( ( λ x4550 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d454 = if if true then d398 else d159 then if true then true else d249 else if d258 then false else false
        d456 : if false then ( ( Set -> Set ) ∋ ( ( λ x4590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d456 = if ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> true ) ) ) $ ( d424 ) then if d252 then d249 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> true ) ) ) $ ( d96 )
        d460 : ( ( Set -> Set ) ∋ ( ( λ x4620 -> ( ( Set -> Set ) ∋ ( ( λ x4630 -> if true then Bool else x4620 ) ) ) $ ( x4620 ) ) ) ) $ ( if false then Bool else Bool )
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if false then false else x4610 ) ) ) $ ( if d318 then d180 else false )
        d464 : ( ( Set -> Set ) ∋ ( ( λ x4660 -> ( ( Set -> Set ) ∋ ( ( λ x4670 -> if true then Bool else x4660 ) ) ) $ ( x4660 ) ) ) ) $ ( if false then Bool else Bool )
        d464 = ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> if x4650 then d303 else true ) ) ) $ ( if d262 then d79 else false )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> ( ( Set -> Set ) ∋ ( ( λ x4730 -> if false then Bool else x4720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d468 = if ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> d371 ) ) ) $ ( d325 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> true ) ) ) $ ( d173 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> true ) ) ) $ ( d262 )
        d474 : if false then ( ( Set -> Set ) ∋ ( ( λ x4760 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d474 = if if d206 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> true ) ) ) $ ( d262 ) else if false then d318 else d3
        d477 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4790 -> Bool ) ) ) $ ( Bool )
        d477 = if if false then d474 else false then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> x4780 ) ) ) $ ( d206 )
        d480 : ( ( Set -> Set ) ∋ ( ( λ x4820 -> ( ( Set -> Set ) ∋ ( ( λ x4830 -> if true then x4820 else x4830 ) ) ) $ ( x4820 ) ) ) ) $ ( if false then Bool else Bool )
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> if false then true else x4810 ) ) ) $ ( if d342 then true else false )
        d484 : ( ( Set -> Set ) ∋ ( ( λ x4870 -> if false then Bool else x4870 ) ) ) $ ( if true then Bool else Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> if false then d79 else x4850 ) ) ) $ ( d342 ) ) ) ) $ ( if d480 then d342 else false )
        d488 : ( ( Set -> Set ) ∋ ( ( λ x4900 -> ( ( Set -> Set ) ∋ ( ( λ x4910 -> if false then x4900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d488 = if if true then false else d96 then if false then d106 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> d231 ) ) ) $ ( true )
        d492 : ( ( Set -> Set ) ∋ ( ( λ x4950 -> if false then Bool else x4950 ) ) ) $ ( if true then Bool else Bool )
        d492 = if ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> d231 ) ) ) $ ( false ) then if true then false else d199 else ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> true ) ) ) $ ( d69 )
        d496 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4980 -> Bool ) ) ) $ ( Bool )
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> if x4970 then d39 else d428 ) ) ) $ ( if d362 then d449 else d460 )
        d499 : if false then if true then Bool else Bool else if true then Bool else Bool
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> if false then true else false ) ) ) $ ( d303 ) ) ) ) $ ( if d454 then false else d239 )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5060 -> ( ( Set -> Set ) ∋ ( ( λ x5070 -> if false then x5070 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d502 = if ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> x5040 ) ) ) $ ( d111 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> x5050 ) ) ) $ ( true )
        d508 : ( ( Set -> Set ) ∋ ( ( λ x5100 -> if true then x5100 else x5100 ) ) ) $ ( if false then Bool else Bool )
        d508 = if if true then d318 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> true ) ) ) $ ( d36 ) else if d84 then d268 else true
        d511 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5130 -> Bool ) ) ) $ ( Bool )
        d511 = if ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> d276 ) ) ) $ ( d299 ) then if false then d419 else false else if false then false else d134
        d514 : ( ( Set -> Set ) ∋ ( ( λ x5170 -> ( ( Set -> Set ) ∋ ( ( λ x5180 -> if true then x5180 else x5170 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> if false then d308 else d31 ) ) ) $ ( x5150 ) ) ) ) $ ( if d258 then d456 else d169 )
        d519 : ( ( Set -> Set ) ∋ ( ( λ x5220 -> ( ( Set -> Set ) ∋ ( ( λ x5230 -> if true then x5220 else Bool ) ) ) $ ( x5220 ) ) ) ) $ ( if false then Bool else Bool )
        d519 = ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> if x5210 then d239 else d256 ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d524 : if true then ( ( Set -> Set ) ∋ ( ( λ x5280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5290 -> Bool ) ) ) $ ( Bool )
        d524 = if ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> d264 ) ) ) $ ( d119 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> true ) ) ) $ ( d235 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> true ) ) ) $ ( d192 )
        d530 : if false then if true then Bool else Bool else if true then Bool else Bool
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if x5320 then false else d162 ) ) ) $ ( x5310 ) ) ) ) $ ( if false then false else true )
        d533 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if false then x5350 else true ) ) ) $ ( d315 ) ) ) ) $ ( if false then true else false )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x5410 -> if true then x5410 else Bool ) ) ) $ ( if false then Bool else Bool )
        d537 = if ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> true ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> d533 ) ) ) $ ( true )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> ( ( Set -> Set ) ∋ ( ( λ x5470 -> if false then Bool else x5470 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d542 = if ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> x5430 ) ) ) $ ( d350 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> false ) ) ) $ ( d47 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> d188 ) ) ) $ ( d308 )
        d548 : if true then ( ( Set -> Set ) ∋ ( ( λ x5510 -> x5510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5520 -> Bool ) ) ) $ ( Bool )
        d548 = if ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> x5490 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> d383 ) ) ) $ ( d36 ) else if false then d47 else d371
        d553 : ( ( Set -> Set ) ∋ ( ( λ x5550 -> ( ( Set -> Set ) ∋ ( ( λ x5560 -> if true then Bool else x5560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> if true then d456 else d262 ) ) ) $ ( if d499 then d386 else d438 )
        d557 : ( ( Set -> Set ) ∋ ( ( λ x5580 -> ( ( Set -> Set ) ∋ ( ( λ x5590 -> if true then Bool else x5590 ) ) ) $ ( x5580 ) ) ) ) $ ( if true then Bool else Bool )
        d557 = if if false then true else d537 then if true then false else d252 else if true then false else d159
        d560 : ( ( Set -> Set ) ∋ ( ( λ x5620 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d560 = if if false then d346 else d169 then ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> x5610 ) ) ) $ ( false ) else if false then true else d305
        d563 : if true then ( ( Set -> Set ) ∋ ( ( λ x5670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5680 -> Bool ) ) ) $ ( Bool )
        d563 = if ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> false ) ) ) $ ( d542 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> false ) ) ) $ ( d454 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> x5660 ) ) ) $ ( false )