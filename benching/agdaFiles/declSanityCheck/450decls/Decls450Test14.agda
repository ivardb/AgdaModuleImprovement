module Decls450Test14  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then Bool else Bool ) ) ) $ ( x40 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( false ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( true )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then x90 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = if ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( true ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x80 -> d1 ) ) ) $ ( false )
        d11 : if false then if true then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if x120 then d6 else d1 ) ) ) $ ( if true then true else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then x160 else x160 ) ) ) $ ( if false then Bool else Bool )
        d13 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x140 -> true ) ) ) $ ( d6 ) else ( ( Bool -> Bool ) ∋ ( ( λ x150 -> true ) ) ) $ ( d1 )
        d17 : if true then ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( Bool )
        d17 = if ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d6 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x190 -> false ) ) ) $ ( true ) else if true then false else d6
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then Bool else x260 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d22 = if ( ( Bool -> Bool ) ∋ ( ( λ x230 -> d6 ) ) ) $ ( d13 ) then ( ( Bool -> Bool ) ∋ ( ( λ x240 -> x240 ) ) ) $ ( d11 ) else if d13 then d11 else true
        d27 : ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then x300 else x310 ) ) ) $ ( x300 ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if if d1 then d11 else false then ( ( Bool -> Bool ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d11 ) ) ) $ ( d1 )
        d32 : if true then ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d32 = if ( ( Bool -> Bool ) ∋ ( ( λ x330 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x340 -> x340 ) ) ) $ ( d11 ) else ( ( Bool -> Bool ) ∋ ( ( λ x350 -> x350 ) ) ) $ ( false )
        d37 : if false then ( ( Set -> Set ) ∋ ( ( λ x390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x400 -> Bool ) ) ) $ ( Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if d6 then d22 else x380 ) ) ) $ ( if true then d11 else false )
        d41 : if false then if true then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if true then x420 else d1 ) ) ) $ ( if true then false else d13 )
        d43 : if false then ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d43 = if ( ( Bool -> Bool ) ∋ ( ( λ x440 -> d41 ) ) ) $ ( d17 ) then ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( d37 ) else if d13 then true else d37
        d47 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then Bool else x500 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if true then true else x480 ) ) ) $ ( if true then false else false )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x530 -> ( ( Set -> Set ) ∋ ( ( λ x540 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if d17 then d47 else d22 ) ) ) $ ( if d27 then d47 else d27 )
        d55 : if true then ( ( Set -> Set ) ∋ ( ( λ x580 -> x580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d55 = if if d51 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d32 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x570 -> false ) ) ) $ ( false )
        d59 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x620 -> Bool ) ) ) $ ( Bool )
        d59 = if ( ( Bool -> Bool ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( d22 ) then ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d22 ) ) ) $ ( d43 ) else if d1 then true else false
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if true then true else false ) ) ) $ ( if false then d6 else false )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( d11 ) else if false then false else false
        d70 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if true then Bool else Bool ) ) ) $ ( x720 ) ) ) ) $ ( if false then Bool else Bool )
        d70 = if ( ( Bool -> Bool ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( true ) then if d59 then d27 else false else if d51 then false else false
        d74 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( Bool )
        d74 = if ( ( Bool -> Bool ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( d22 ) then if d13 then d59 else d6 else if false then false else d17
        d77 : if true then ( ( Set -> Set ) ∋ ( ( λ x800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( Bool )
        d77 = if ( ( Bool -> Bool ) ∋ ( ( λ x780 -> false ) ) ) $ ( true ) then if true then d6 else false else ( ( Bool -> Bool ) ∋ ( ( λ x790 -> false ) ) ) $ ( d13 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if false then x840 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if x830 then d43 else d59 ) ) ) $ ( if true then d17 else false )
        d86 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if x870 then x870 else x870 ) ) ) $ ( if d51 then d55 else true )
        d89 : if true then ( ( Set -> Set ) ∋ ( ( λ x920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( Bool )
        d89 = if ( ( Bool -> Bool ) ∋ ( ( λ x900 -> x900 ) ) ) $ ( d32 ) then ( ( Bool -> Bool ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( true ) else if true then true else d82
        d94 : if false then ( ( Set -> Set ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d94 = if if false then d47 else d82 then if d6 then d70 else d27 else if true then false else d1
        d96 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then Bool else Bool ) ) ) $ ( x980 ) ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if d17 then d32 else x970 ) ) ) $ ( if d43 then d11 else false )
        d100 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1020 -> Bool ) ) ) $ ( Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if false then d27 else x1010 ) ) ) $ ( if d13 then true else false )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then Bool else x1060 ) ) ) $ ( x1050 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if false then x1040 else d43 ) ) ) $ ( if false then d65 else d74 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> if true then Bool else x1090 ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if d51 then true else d13 ) ) ) $ ( if false then d82 else false )
        d110 : if true then ( ( Set -> Set ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if true then d65 else d22 ) ) ) $ ( if true then d17 else d70 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then Bool else Bool ) ) ) $ ( x1160 ) ) ) ) $ ( if true then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if d89 then false else d89 ) ) ) $ ( d37 ) ) ) ) $ ( if true then d94 else d63 )
        d118 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if d86 then x1190 else x1200 ) ) ) $ ( d65 ) ) ) ) $ ( if true then d89 else d103 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> if true then x1250 else x1260 ) ) ) $ ( x1250 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if x1230 then x1240 else d51 ) ) ) $ ( d82 ) ) ) ) $ ( if d77 then d63 else d63 )
        d127 : if false then ( ( Set -> Set ) ∋ ( ( λ x1300 -> x1300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1310 -> x1310 ) ) ) $ ( Bool )
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> if false then d37 else x1290 ) ) ) $ ( d74 ) ) ) ) $ ( if true then d103 else false )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> if false then x1350 else x1350 ) ) ) $ ( if true then Bool else Bool )
        d132 = if ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> false ) ) ) $ ( d65 ) then if true then d37 else d77 else ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> true ) ) ) $ ( true )
        d136 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( Bool )
        d136 = if ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> d118 ) ) ) $ ( true ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> true ) ) ) $ ( true )
        d140 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if false then x1410 else d65 ) ) ) $ ( x1410 ) ) ) ) $ ( if d59 then false else true )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> if false then x1480 else Bool ) ) ) $ ( if false then Bool else Bool )
        d145 = if ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( false ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d82 ) ) ) $ ( true )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then Bool else Bool ) ) ) $ ( x1520 ) ) ) ) $ ( if false then Bool else Bool )
        d149 = if if true then false else d140 then ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( d37 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( false )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if false then Bool else x1560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if x1550 then x1550 else false ) ) ) $ ( if d51 then true else d89 )
        d158 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( Bool )
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> if d103 then true else false ) ) ) $ ( x1590 ) ) ) ) $ ( if true then true else false )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then x1650 else Bool ) ) ) $ ( x1640 ) ) ) ) $ ( if false then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> if x1630 then false else d1 ) ) ) $ ( if true then false else true )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> ( ( Set -> Set ) ∋ ( ( λ x1690 -> if false then Bool else x1690 ) ) ) $ ( x1680 ) ) ) ) $ ( if false then Bool else Bool )
        d166 = if if true then d82 else d127 then ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> false ) ) ) $ ( true ) else if false then true else true
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if true then Bool else x1730 ) ) ) $ ( x1730 ) ) ) ) $ ( if false then Bool else Bool )
        d170 = if if d140 then d6 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( true )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1770 -> ( ( Set -> Set ) ∋ ( ( λ x1780 -> if true then x1770 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( true ) then if d94 then false else d63 else if d41 then true else true
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> ( ( Set -> Set ) ∋ ( ( λ x1830 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> if x1800 then d140 else d162 ) ) ) $ ( x1800 ) ) ) ) $ ( if true then false else false )
        d184 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( Bool )
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if x1850 then d140 else true ) ) ) $ ( if d136 then d175 else false )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if true then x1900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d187 = if ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> d184 ) ) ) $ ( d96 ) then if d94 then d94 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> d63 ) ) ) $ ( d113 )
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> ( ( Set -> Set ) ∋ ( ( λ x1950 -> if false then x1950 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> if x1930 then x1930 else false ) ) ) $ ( if true then d77 else false )
        d196 : if true then if true then Bool else Bool else if false then Bool else Bool
        d196 = if if true then false else false then if false then d96 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> true ) ) ) $ ( true )
        d198 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> if false then x2010 else x2010 ) ) ) $ ( if false then Bool else Bool )
        d198 = if ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> d187 ) ) ) $ ( d196 ) then if d22 then true else d13 else ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> d47 ) ) ) $ ( d196 )
        d202 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then x2050 else x2050 ) ) ) $ ( if false then Bool else Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if d136 then d47 else d158 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d187 )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> ( ( Set -> Set ) ∋ ( ( λ x2090 -> if false then Bool else x2080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d206 = if ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( d113 ) then if d170 then d70 else d202 else if false then false else true
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d210 = if ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( d175 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> x2130 ) ) ) $ ( true )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then x2200 else Bool ) ) ) $ ( x2190 ) ) ) ) $ ( if true then Bool else Bool )
        d216 = if ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> x2170 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> true ) ) ) $ ( true ) else if true then d55 else true
        d221 : ( ( Set -> Set ) ∋ ( ( λ x2230 -> if true then x2230 else x2230 ) ) ) $ ( if true then Bool else Bool )
        d221 = if if true then false else d149 then ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> d27 ) ) ) $ ( d140 ) else if d118 then d77 else d184
        d224 : ( ( Set -> Set ) ∋ ( ( λ x2270 -> ( ( Set -> Set ) ∋ ( ( λ x2280 -> if false then x2280 else x2270 ) ) ) $ ( x2270 ) ) ) ) $ ( if true then Bool else Bool )
        d224 = if ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> x2250 ) ) ) $ ( d175 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> x2260 ) ) ) $ ( false ) else if d11 then false else d192
        d229 : ( ( Set -> Set ) ∋ ( ( λ x2310 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d229 = if if false then false else false then if d127 then d210 else d149 else ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> x2300 ) ) ) $ ( false )
        d232 : ( ( Set -> Set ) ∋ ( ( λ x2350 -> if true then x2350 else x2350 ) ) ) $ ( if true then Bool else Bool )
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> if false then d118 else false ) ) ) $ ( false ) ) ) ) $ ( if true then true else d179 )
        d236 : if false then if true then Bool else Bool else if false then Bool else Bool
        d236 = if if d22 then d198 else d175 then ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> false ) ) ) $ ( true ) else if d74 then d187 else true
        d238 : ( ( Set -> Set ) ∋ ( ( λ x2420 -> if false then x2420 else Bool ) ) ) $ ( if false then Bool else Bool )
        d238 = if ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> d136 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> d110 ) ) ) $ ( d11 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( true )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x2450 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> if true then x2440 else true ) ) ) $ ( if d13 then d22 else d154 )
        d246 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then Bool else x2480 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d246 = if if true then true else true then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> d89 ) ) ) $ ( false )
        d250 : ( ( Set -> Set ) ∋ ( ( λ x2520 -> ( ( Set -> Set ) ∋ ( ( λ x2530 -> if false then x2530 else Bool ) ) ) $ ( x2520 ) ) ) ) $ ( if false then Bool else Bool )
        d250 = if ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> true ) ) ) $ ( d47 ) then if d210 then d140 else false else if false then true else d216
        d254 : ( ( Set -> Set ) ∋ ( ( λ x2570 -> ( ( Set -> Set ) ∋ ( ( λ x2580 -> if false then x2580 else Bool ) ) ) $ ( x2570 ) ) ) ) $ ( if true then Bool else Bool )
        d254 = if ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( d221 ) else if d229 then true else true
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if true then Bool else x2610 ) ) ) $ ( if false then Bool else Bool )
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> if d179 then x2600 else true ) ) ) $ ( if d63 then d170 else d175 )
        d262 : if false then ( ( Set -> Set ) ∋ ( ( λ x2640 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> if d250 then d236 else true ) ) ) $ ( if false then false else d6 )
        d265 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> if false then Bool else x2680 ) ) ) $ ( if false then Bool else Bool )
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> if true then x2660 else x2670 ) ) ) $ ( x2660 ) ) ) ) $ ( if true then d127 else d77 )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> if true then x2720 else x2720 ) ) ) $ ( if false then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if true then d179 else d82 ) ) ) $ ( false ) ) ) ) $ ( if d43 then true else d41 )
        d273 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2750 -> x2750 ) ) ) $ ( Bool )
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> if false then x2740 else d250 ) ) ) $ ( if true then false else d265 )
        d276 : ( ( Set -> Set ) ∋ ( ( λ x2790 -> ( ( Set -> Set ) ∋ ( ( λ x2800 -> if true then x2800 else Bool ) ) ) $ ( x2790 ) ) ) ) $ ( if true then Bool else Bool )
        d276 = ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if x2780 then x2770 else d206 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d107 )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then Bool else x2850 ) ) ) $ ( if true then Bool else Bool )
        d281 = if ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> x2840 ) ) ) $ ( true )
        d286 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> if true then Bool else Bool ) ) ) $ ( x2870 ) ) ) ) $ ( if false then Bool else Bool )
        d286 = if if d166 then d113 else d107 then if false then d94 else false else if d94 then true else false
        d289 : if false then ( ( Set -> Set ) ∋ ( ( λ x2920 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d289 = if ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> x2900 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> false ) ) ) $ ( d51 ) else if d94 then false else d77
        d293 : if true then ( ( Set -> Set ) ∋ ( ( λ x2960 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> if x2950 then d179 else d86 ) ) ) $ ( d145 ) ) ) ) $ ( if d55 then false else true )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x3000 -> if true then x3000 else Bool ) ) ) $ ( if true then Bool else Bool )
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> if x2980 then false else true ) ) ) $ ( true ) ) ) ) $ ( if d246 then d221 else false )
        d301 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> if false then x3030 else d246 ) ) ) $ ( false ) ) ) ) $ ( if d297 then d187 else true )
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3080 -> ( ( Set -> Set ) ∋ ( ( λ x3090 -> if true then Bool else x3090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if d70 then d198 else x3070 ) ) ) $ ( d262 ) ) ) ) $ ( if d51 then false else true )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> if true then x3120 else x3120 ) ) ) $ ( if false then Bool else Bool )
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> if x3110 then d107 else false ) ) ) $ ( if d265 then d192 else d236 )
        d313 : ( ( Set -> Set ) ∋ ( ( λ x3160 -> if false then x3160 else x3160 ) ) ) $ ( if false then Bool else Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> if d289 then x3150 else true ) ) ) $ ( false ) ) ) ) $ ( if d100 then d17 else d250 )
        d317 : ( ( Set -> Set ) ∋ ( ( λ x3200 -> ( ( Set -> Set ) ∋ ( ( λ x3210 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> if x3180 then false else d145 ) ) ) $ ( d310 ) ) ) ) $ ( if d94 then d6 else false )
        d322 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> ( ( Set -> Set ) ∋ ( ( λ x3250 -> if true then Bool else x3240 ) ) ) $ ( x3240 ) ) ) ) $ ( if true then Bool else Bool )
        d322 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> false ) ) ) $ ( true ) else if true then d43 else true
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> ( ( Set -> Set ) ∋ ( ( λ x3290 -> if false then Bool else x3290 ) ) ) $ ( x3280 ) ) ) ) $ ( if true then Bool else Bool )
        d326 = if ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> d236 ) ) ) $ ( d94 ) then if d162 then true else false else if true then d154 else true
        d330 : if true then ( ( Set -> Set ) ∋ ( ( λ x3330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if x3320 then d313 else d118 ) ) ) $ ( x3310 ) ) ) ) $ ( if false then false else d154 )
        d334 : if true then if false then Bool else Bool else if true then Bool else Bool
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> if d132 then d17 else x3350 ) ) ) $ ( if false then d179 else d51 )
        d336 : if false then ( ( Set -> Set ) ∋ ( ( λ x3400 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d336 = if ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> d262 ) ) ) $ ( d179 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> false ) ) ) $ ( d140 )
        d341 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3430 -> x3430 ) ) ) $ ( Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> if true then x3420 else true ) ) ) $ ( if d113 then d43 else false )
        d344 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> ( ( Set -> Set ) ∋ ( ( λ x3470 -> if true then Bool else Bool ) ) ) $ ( x3460 ) ) ) ) $ ( if true then Bool else Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> if x3450 then false else d273 ) ) ) $ ( if false then d175 else d322 )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3520 -> if false then Bool else x3520 ) ) ) $ ( if true then Bool else Bool )
        d348 = if ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> true ) ) ) $ ( d89 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> x3510 ) ) ) $ ( true )
        d353 : ( ( Set -> Set ) ∋ ( ( λ x3550 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d353 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> d334 ) ) ) $ ( false ) else if d330 then true else false
        d356 : if true then if true then Bool else Bool else if true then Bool else Bool
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> if d127 then d330 else false ) ) ) $ ( if false then false else d317 )
        d358 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3600 -> x3600 ) ) ) $ ( Bool )
        d358 = if ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> true ) ) ) $ ( d336 ) then if d236 then d63 else true else if true then d184 else d269
        d361 : if true then ( ( Set -> Set ) ∋ ( ( λ x3630 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> false ) ) ) $ ( false ) then if d358 then true else d122 else if true then false else d254
        d364 : ( ( Set -> Set ) ∋ ( ( λ x3670 -> if false then Bool else x3670 ) ) ) $ ( if true then Bool else Bool )
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> if d13 then x3660 else d70 ) ) ) $ ( x3650 ) ) ) ) $ ( if d154 then d246 else true )
        d368 : if true then ( ( Set -> Set ) ∋ ( ( λ x3710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3720 -> x3720 ) ) ) $ ( Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> if false then d224 else x3700 ) ) ) $ ( true ) ) ) ) $ ( if d59 then d269 else d94 )
        d373 : if false then ( ( Set -> Set ) ∋ ( ( λ x3750 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d373 = if if false then d364 else true then if false then true else d353 else ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> d63 ) ) ) $ ( d269 )
        d376 : ( ( Set -> Set ) ∋ ( ( λ x3790 -> ( ( Set -> Set ) ∋ ( ( λ x3800 -> if true then x3800 else x3800 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> if x3770 then d373 else x3780 ) ) ) $ ( false ) ) ) ) $ ( if d254 then d210 else d250 )
        d381 : ( ( Set -> Set ) ∋ ( ( λ x3840 -> ( ( Set -> Set ) ∋ ( ( λ x3850 -> if true then Bool else x3850 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> if x3830 then x3830 else false ) ) ) $ ( d32 ) ) ) ) $ ( if d281 then false else d236 )
        d386 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3880 -> Bool ) ) ) $ ( Bool )
        d386 = if ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> d74 ) ) ) $ ( true ) then if d276 then true else d41 else if d37 then true else true
        d389 : ( ( Set -> Set ) ∋ ( ( λ x3910 -> ( ( Set -> Set ) ∋ ( ( λ x3920 -> if true then x3910 else x3920 ) ) ) $ ( x3910 ) ) ) ) $ ( if false then Bool else Bool )
        d389 = if if d330 then d301 else d132 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> false ) ) ) $ ( d262 )
        d393 : ( ( Set -> Set ) ∋ ( ( λ x3960 -> if true then x3960 else x3960 ) ) ) $ ( if true then Bool else Bool )
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> if x3950 then d381 else false ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x3990 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if false then true else x3980 ) ) ) $ ( if d187 then d149 else false )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4020 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> if d22 then d166 else x4010 ) ) ) $ ( if false then d344 else d243 )
        d403 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4060 -> Bool ) ) ) $ ( Bool )
        d403 = ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> if d393 then x4050 else x4040 ) ) ) $ ( x4040 ) ) ) ) $ ( if false then d11 else true )
        d407 : if true then ( ( Set -> Set ) ∋ ( ( λ x4100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( Bool )
        d407 = ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> if false then false else x4090 ) ) ) $ ( false ) ) ) ) $ ( if d224 then d6 else d41 )
        d412 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> if true then Bool else x4140 ) ) ) $ ( if true then Bool else Bool )
        d412 = if ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> true ) ) ) $ ( d11 ) then if true then true else d243 else if d238 then d246 else d32
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> ( ( Set -> Set ) ∋ ( ( λ x4180 -> if true then Bool else x4170 ) ) ) $ ( x4170 ) ) ) ) $ ( if true then Bool else Bool )
        d415 = if if true then true else true then if true then true else d400 else ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> d297 ) ) ) $ ( d74 )
        d419 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4210 -> Bool ) ) ) $ ( Bool )
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> if x4200 then d368 else d17 ) ) ) $ ( if true then false else true )
        d422 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> ( ( Set -> Set ) ∋ ( ( λ x4240 -> if true then x4240 else x4230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d422 = if if d386 then d192 else d196 then if d184 then true else false else if d170 then true else false
        d425 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> if true then x4270 else x4270 ) ) ) $ ( if false then Bool else Bool )
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> if x4260 then false else x4260 ) ) ) $ ( if false then d206 else d422 )
        d428 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4310 -> Bool ) ) ) $ ( Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if true then x4290 else x4290 ) ) ) $ ( true ) ) ) ) $ ( if d358 then true else d179 )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4340 -> if false then x4340 else x4340 ) ) ) $ ( if true then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if x4330 then d246 else false ) ) ) $ ( if d393 then d32 else d96 )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4370 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> if x4360 then d386 else x4360 ) ) ) $ ( if d107 then d322 else d330 )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then x4410 else x4410 ) ) ) $ ( if true then Bool else Bool )
        d438 = if ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> d136 ) ) ) $ ( d122 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( d74 ) else if d243 then d403 else d94
        d442 : if true then ( ( Set -> Set ) ∋ ( ( λ x4450 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d442 = if ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> true ) ) ) $ ( false ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> d389 ) ) ) $ ( true )
        d446 : ( ( Set -> Set ) ∋ ( ( λ x4490 -> ( ( Set -> Set ) ∋ ( ( λ x4500 -> if false then x4500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d446 = if ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> d96 ) ) ) $ ( d122 ) then if d269 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> x4480 ) ) ) $ ( d103 )
        d451 : if false then ( ( Set -> Set ) ∋ ( ( λ x4540 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> if x4520 then x4530 else false ) ) ) $ ( true ) ) ) ) $ ( if d393 then d317 else d107 )
        d455 : if true then ( ( Set -> Set ) ∋ ( ( λ x4570 -> x4570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4580 -> x4580 ) ) ) $ ( Bool )
        d455 = if ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> d442 ) ) ) $ ( false ) then if false then d37 else d276 else if d13 then true else d122
        d459 : ( ( Set -> Set ) ∋ ( ( λ x4600 -> ( ( Set -> Set ) ∋ ( ( λ x4610 -> if true then x4600 else x4600 ) ) ) $ ( x4600 ) ) ) ) $ ( if true then Bool else Bool )
        d459 = if if true then true else true then if true then true else d407 else if false then false else d297
        d462 : ( ( Set -> Set ) ∋ ( ( λ x4660 -> if true then Bool else x4660 ) ) ) $ ( if false then Bool else Bool )
        d462 = if ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> d334 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> d184 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> d289 ) ) ) $ ( d6 )
        d467 : if false then ( ( Set -> Set ) ∋ ( ( λ x4690 -> x4690 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4700 -> Bool ) ) ) $ ( Bool )
        d467 = if if d305 then d37 else d250 then if d51 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> false ) ) ) $ ( true )
        d471 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4740 -> x4740 ) ) ) $ ( Bool )
        d471 = if if true then d166 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> x4720 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> x4730 ) ) ) $ ( d358 )
        d475 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4780 -> x4780 ) ) ) $ ( Bool )
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if d70 then d289 else d179 ) ) ) $ ( d425 ) ) ) ) $ ( if false then false else true )
        d479 : if false then ( ( Set -> Set ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d479 = if if d94 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> d47 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> x4810 ) ) ) $ ( true )
        d483 : if true then if false then Bool else Bool else if true then Bool else Bool
        d483 = if if true then true else false then if false then d96 else d136 else if d455 then false else false
        d484 : ( ( Set -> Set ) ∋ ( ( λ x4870 -> ( ( Set -> Set ) ∋ ( ( λ x4880 -> if true then x4870 else x4870 ) ) ) $ ( x4870 ) ) ) ) $ ( if false then Bool else Bool )
        d484 = if ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> d96 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> true ) ) ) $ ( false ) else if d393 then d361 else true
        d489 : if true then ( ( Set -> Set ) ∋ ( ( λ x4920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4930 -> Bool ) ) ) $ ( Bool )
        d489 = if if false then true else d210 then ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> false ) ) ) $ ( d206 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> x4910 ) ) ) $ ( true )
        d494 : if false then if false then Bool else Bool else if true then Bool else Bool
        d494 = if if d37 then d322 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> d393 ) ) ) $ ( d389 ) else if false then d221 else false
        d496 : if true then ( ( Set -> Set ) ∋ ( ( λ x4990 -> x4990 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d496 = if ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> true ) ) ) $ ( true ) then if d479 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> d442 ) ) ) $ ( true )
        d500 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5040 -> Bool ) ) ) $ ( Bool )
        d500 = if ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> x5010 ) ) ) $ ( d305 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> true ) ) ) $ ( d403 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> x5030 ) ) ) $ ( d432 )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d505 = if ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> x5060 ) ) ) $ ( true ) then if true then true else d422 else ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> d250 ) ) ) $ ( d86 )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x5110 -> ( ( Set -> Set ) ∋ ( ( λ x5120 -> if false then x5120 else Bool ) ) ) $ ( x5110 ) ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if x5100 then d196 else d289 ) ) ) $ ( if d376 then d326 else true )
        d513 : ( ( Set -> Set ) ∋ ( ( λ x5160 -> if true then x5160 else x5160 ) ) ) $ ( if true then Bool else Bool )
        d513 = if ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> d451 ) ) ) $ ( false ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> d6 ) ) ) $ ( true )
        d517 : if true then ( ( Set -> Set ) ∋ ( ( λ x5200 -> x5200 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d517 = if ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> d438 ) ) ) $ ( d348 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> d158 ) ) ) $ ( false ) else if false then d489 else false
        d521 : ( ( Set -> Set ) ∋ ( ( λ x5240 -> ( ( Set -> Set ) ∋ ( ( λ x5250 -> if false then x5250 else x5250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d521 = if if d77 then d202 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> x5220 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> x5230 ) ) ) $ ( false )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x5290 -> if true then Bool else x5290 ) ) ) $ ( if false then Bool else Bool )
        d526 = if ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> x5270 ) ) ) $ ( d425 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> d55 ) ) ) $ ( d96 ) else if d265 then false else false
        d530 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5320 -> x5320 ) ) ) $ ( Bool )
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> if x5310 then x5310 else x5310 ) ) ) $ ( if d63 then d158 else false )
        d533 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( Bool )
        d533 = if if d224 then d17 else d373 then ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> x5340 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> d513 ) ) ) $ ( false )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x5400 -> if true then Bool else x5400 ) ) ) $ ( if false then Bool else Bool )
        d537 = if ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> false ) ) ) $ ( d110 ) then if d400 then d224 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> x5390 ) ) ) $ ( d389 )
        d541 : if true then ( ( Set -> Set ) ∋ ( ( λ x5430 -> x5430 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5440 -> x5440 ) ) ) $ ( Bool )
        d541 = if ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> x5420 ) ) ) $ ( true ) then if true then d198 else false else if true then false else d206
        d545 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5470 -> Bool ) ) ) $ ( Bool )
        d545 = if if false then false else d297 then ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> d265 ) ) ) $ ( d162 ) else if true then d238 else d149
        d548 : if true then if true then Bool else Bool else if false then Bool else Bool
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> if x5490 then false else x5500 ) ) ) $ ( false ) ) ) ) $ ( if d393 then false else d110 )
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5550 -> ( ( Set -> Set ) ∋ ( ( λ x5560 -> if true then x5550 else x5550 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d551 = if ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> false ) ) ) $ ( d489 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> d336 ) ) ) $ ( d77 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> false ) ) ) $ ( true )
        d557 : if false then ( ( Set -> Set ) ∋ ( ( λ x5590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5600 -> Bool ) ) ) $ ( Bool )
        d557 = if ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> x5580 ) ) ) $ ( d140 ) then if d187 then true else d149 else if d505 then false else d113
        d561 : ( ( Set -> Set ) ∋ ( ( λ x5640 -> if false then Bool else x5640 ) ) ) $ ( if false then Bool else Bool )
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> if false then x5630 else d376 ) ) ) $ ( x5620 ) ) ) ) $ ( if d293 then false else false )
        d565 : ( ( Set -> Set ) ∋ ( ( λ x5680 -> ( ( Set -> Set ) ∋ ( ( λ x5690 -> if false then Bool else x5680 ) ) ) $ ( x5680 ) ) ) ) $ ( if true then Bool else Bool )
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> if x5670 then d110 else true ) ) ) $ ( d313 ) ) ) ) $ ( if false then true else d386 )
        d570 : ( ( Set -> Set ) ∋ ( ( λ x5720 -> if true then x5720 else Bool ) ) ) $ ( if true then Bool else Bool )
        d570 = if ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> x5710 ) ) ) $ ( d70 ) then if true then d122 else d358 else if true then d361 else d322
        d573 : if true then ( ( Set -> Set ) ∋ ( ( λ x5760 -> x5760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d573 = ( ( Bool -> Bool ) ∋ ( ( λ x5740 -> ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> if false then x5750 else x5750 ) ) ) $ ( x5740 ) ) ) ) $ ( if d400 then d479 else true )
        d577 : if true then if true then Bool else Bool else if true then Bool else Bool
        d577 = ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> ( ( Bool -> Bool ) ∋ ( ( λ x5790 -> if x5790 then d77 else x5790 ) ) ) $ ( d55 ) ) ) ) $ ( if false then true else d462 )
        d580 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5830 -> x5830 ) ) ) $ ( Bool )
        d580 = if if d419 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> true ) ) ) $ ( d317 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5820 -> d158 ) ) ) $ ( d94 )
        d584 : ( ( Set -> Set ) ∋ ( ( λ x5850 -> ( ( Set -> Set ) ∋ ( ( λ x5860 -> if true then Bool else Bool ) ) ) $ ( x5850 ) ) ) ) $ ( if false then Bool else Bool )
        d584 = if if d1 then d136 else false then if d276 then d206 else true else if d281 then false else true
        d587 : if true then if false then Bool else Bool else if true then Bool else Bool
        d587 = if if d356 then false else true then if false then d254 else d500 else if d74 then d475 else d1
        d588 : ( ( Set -> Set ) ∋ ( ( λ x5900 -> ( ( Set -> Set ) ∋ ( ( λ x5910 -> if false then x5900 else x5910 ) ) ) $ ( x5900 ) ) ) ) $ ( if true then Bool else Bool )
        d588 = if if d145 then d400 else true then if false then d94 else d334 else ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> false ) ) ) $ ( d584 )
        d592 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5940 -> x5940 ) ) ) $ ( Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> if d471 then false else false ) ) ) $ ( if true then true else true )
        d595 : ( ( Set -> Set ) ∋ ( ( λ x5970 -> if true then x5970 else x5970 ) ) ) $ ( if false then Bool else Bool )
        d595 = if if d455 then true else d37 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5960 -> x5960 ) ) ) $ ( d238 )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x6000 -> ( ( Set -> Set ) ∋ ( ( λ x6010 -> if true then x6000 else x6000 ) ) ) $ ( x6000 ) ) ) ) $ ( if false then Bool else Bool )
        d598 = if ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> x5990 ) ) ) $ ( true ) then if d107 then true else d27 else if false then false else d336
        d602 : ( ( Set -> Set ) ∋ ( ( λ x6040 -> if true then Bool else x6040 ) ) ) $ ( if true then Bool else Bool )
        d602 = ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> if x6030 then d55 else d415 ) ) ) $ ( if d107 then true else false )
        d605 : ( ( Set -> Set ) ∋ ( ( λ x6080 -> ( ( Set -> Set ) ∋ ( ( λ x6090 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d605 = if if d100 then false else d341 then ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> d313 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6070 -> false ) ) ) $ ( d326 )
        d610 : ( ( Set -> Set ) ∋ ( ( λ x6140 -> if false then x6140 else x6140 ) ) ) $ ( if true then Bool else Bool )
        d610 = if ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> true ) ) ) $ ( d13 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> d136 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6130 -> x6130 ) ) ) $ ( d310 )
        d615 : if true then ( ( Set -> Set ) ∋ ( ( λ x6170 -> x6170 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d615 = ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> if x6160 then d400 else false ) ) ) $ ( if d175 then d483 else false )
        d618 : if false then ( ( Set -> Set ) ∋ ( ( λ x6200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6210 -> Bool ) ) ) $ ( Bool )
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> if false then d489 else x6190 ) ) ) $ ( if d254 then d376 else false )
        d622 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6250 -> Bool ) ) ) $ ( Bool )
        d622 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> d187 ) ) ) $ ( true )
        d626 : ( ( Set -> Set ) ∋ ( ( λ x6280 -> ( ( Set -> Set ) ∋ ( ( λ x6290 -> if false then x6280 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d626 = if ( ( Bool -> Bool ) ∋ ( ( λ x6270 -> true ) ) ) $ ( d435 ) then if true then d269 else false else if false then d407 else d122
        d630 : if false then ( ( Set -> Set ) ∋ ( ( λ x6330 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d630 = ( ( Bool -> Bool ) ∋ ( ( λ x6310 -> ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> if false then x6320 else false ) ) ) $ ( x6310 ) ) ) ) $ ( if d389 then d65 else false )
        d634 : if true then if false then Bool else Bool else if false then Bool else Bool
        d634 = if ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> d557 ) ) ) $ ( false ) then if d41 then false else false else if false then false else false
        d636 : ( ( Set -> Set ) ∋ ( ( λ x6380 -> ( ( Set -> Set ) ∋ ( ( λ x6390 -> if false then x6380 else x6380 ) ) ) $ ( x6380 ) ) ) ) $ ( if true then Bool else Bool )
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> if false then x6370 else x6370 ) ) ) $ ( if true then true else true )
        d640 : ( ( Set -> Set ) ∋ ( ( λ x6430 -> ( ( Set -> Set ) ∋ ( ( λ x6440 -> if true then Bool else x6430 ) ) ) $ ( x6430 ) ) ) ) $ ( if false then Bool else Bool )
        d640 = if ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> false ) ) ) $ ( d162 ) then if false then d403 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> d407 ) ) ) $ ( true )
        d645 : ( ( Set -> Set ) ∋ ( ( λ x6480 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d645 = ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> if true then d273 else false ) ) ) $ ( x6460 ) ) ) ) $ ( if d196 then d254 else d622 )
        d649 : ( ( Set -> Set ) ∋ ( ( λ x6510 -> ( ( Set -> Set ) ∋ ( ( λ x6520 -> if true then Bool else x6510 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> if d479 then x6500 else x6500 ) ) ) $ ( if true then d27 else true )
        d653 : if false then if true then Bool else Bool else if false then Bool else Bool
        d653 = if if true then true else d334 then ( ( Bool -> Bool ) ∋ ( ( λ x6540 -> d573 ) ) ) $ ( true ) else if d403 then true else true
        d655 : ( ( Set -> Set ) ∋ ( ( λ x6580 -> if false then x6580 else x6580 ) ) ) $ ( if false then Bool else Bool )
        d655 = ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> ( ( Bool -> Bool ) ∋ ( ( λ x6570 -> if true then x6560 else d348 ) ) ) $ ( x6560 ) ) ) ) $ ( if true then true else d500 )
        d659 : if false then ( ( Set -> Set ) ∋ ( ( λ x6630 -> x6630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6640 -> x6640 ) ) ) $ ( Bool )
        d659 = if ( ( Bool -> Bool ) ∋ ( ( λ x6600 -> d158 ) ) ) $ ( d640 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> x6610 ) ) ) $ ( d649 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> d446 ) ) ) $ ( d210 )
        d665 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( Bool )
        d665 = if ( ( Bool -> Bool ) ∋ ( ( λ x6660 -> d63 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> true ) ) ) $ ( d432 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> x6680 ) ) ) $ ( d47 )
        d670 : ( ( Set -> Set ) ∋ ( ( λ x6730 -> ( ( Set -> Set ) ∋ ( ( λ x6740 -> if true then x6740 else x6740 ) ) ) $ ( x6730 ) ) ) ) $ ( if false then Bool else Bool )
        d670 = ( ( Bool -> Bool ) ∋ ( ( λ x6710 -> ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> if d592 then false else false ) ) ) $ ( x6710 ) ) ) ) $ ( if d269 then false else d94 )
        d675 : ( ( Set -> Set ) ∋ ( ( λ x6780 -> if false then x6780 else Bool ) ) ) $ ( if true then Bool else Bool )
        d675 = ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> if x6770 then false else d140 ) ) ) $ ( true ) ) ) ) $ ( if d55 then false else true )
        d679 : if true then if true then Bool else Bool else if true then Bool else Bool
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> if x6800 then false else false ) ) ) $ ( if d11 then d243 else true )
        d681 : ( ( Set -> Set ) ∋ ( ( λ x6830 -> if false then x6830 else x6830 ) ) ) $ ( if false then Bool else Bool )
        d681 = ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> if x6820 then d110 else d451 ) ) ) $ ( if d361 then d236 else d521 )
        d684 : ( ( Set -> Set ) ∋ ( ( λ x6870 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d684 = if if d353 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> x6850 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> false ) ) ) $ ( d103 )
        d688 : ( ( Set -> Set ) ∋ ( ( λ x6900 -> if false then x6900 else Bool ) ) ) $ ( if true then Bool else Bool )
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> if x6890 then x6890 else d301 ) ) ) $ ( if false then d451 else false )
        d691 : ( ( Set -> Set ) ∋ ( ( λ x6940 -> ( ( Set -> Set ) ∋ ( ( λ x6950 -> if false then x6940 else x6950 ) ) ) $ ( x6940 ) ) ) ) $ ( if true then Bool else Bool )
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> ( ( Bool -> Bool ) ∋ ( ( λ x6930 -> if x6930 then x6920 else x6930 ) ) ) $ ( x6920 ) ) ) ) $ ( if true then d415 else true )
        d696 : ( ( Set -> Set ) ∋ ( ( λ x6980 -> ( ( Set -> Set ) ∋ ( ( λ x6990 -> if true then Bool else x6980 ) ) ) $ ( x6980 ) ) ) ) $ ( if false then Bool else Bool )
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> if d376 then false else d626 ) ) ) $ ( if d475 then false else true )
        d700 : ( ( Set -> Set ) ∋ ( ( λ x7020 -> ( ( Set -> Set ) ∋ ( ( λ x7030 -> if true then Bool else Bool ) ) ) $ ( x7020 ) ) ) ) $ ( if true then Bool else Bool )
        d700 = ( ( Bool -> Bool ) ∋ ( ( λ x7010 -> if false then false else x7010 ) ) ) $ ( if true then d107 else false )
        d704 : if true then ( ( Set -> Set ) ∋ ( ( λ x7060 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> if d459 then d122 else x7050 ) ) ) $ ( if d626 then d145 else d412 )
        d707 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7100 -> x7100 ) ) ) $ ( Bool )
        d707 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> d494 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> x7090 ) ) ) $ ( d580 )
        d711 : if true then ( ( Set -> Set ) ∋ ( ( λ x7140 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> if true then false else x7120 ) ) ) $ ( d136 ) ) ) ) $ ( if true then true else d136 )
        d715 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7170 -> x7170 ) ) ) $ ( Bool )
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x7160 -> if x7160 then x7160 else true ) ) ) $ ( if true then d107 else d305 )
        d718 : ( ( Set -> Set ) ∋ ( ( λ x7210 -> ( ( Set -> Set ) ∋ ( ( λ x7220 -> if true then Bool else Bool ) ) ) $ ( x7210 ) ) ) ) $ ( if true then Bool else Bool )
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> if x7200 then x7190 else d301 ) ) ) $ ( x7190 ) ) ) ) $ ( if false then true else true )
        d723 : if true then ( ( Set -> Set ) ∋ ( ( λ x7260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7270 -> Bool ) ) ) $ ( Bool )
        d723 = ( ( Bool -> Bool ) ∋ ( ( λ x7240 -> ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> if d605 then x7240 else d344 ) ) ) $ ( false ) ) ) ) $ ( if false then d110 else d432 )
        d728 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7310 -> Bool ) ) ) $ ( Bool )
        d728 = if ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> true ) ) ) $ ( d341 ) then if true then d630 else d262 else ( ( Bool -> Bool ) ∋ ( ( λ x7300 -> x7300 ) ) ) $ ( d700 )
        d732 : ( ( Set -> Set ) ∋ ( ( λ x7340 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d732 = ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> if x7330 then d718 else false ) ) ) $ ( if false then false else d509 )
        d735 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7370 -> Bool ) ) ) $ ( Bool )
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> if true then false else x7360 ) ) ) $ ( if d557 then false else d711 )
        d738 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7400 -> x7400 ) ) ) $ ( Bool )
        d738 = ( ( Bool -> Bool ) ∋ ( ( λ x7390 -> if x7390 then d735 else x7390 ) ) ) $ ( if false then d22 else d43 )
        d741 : if false then ( ( Set -> Set ) ∋ ( ( λ x7440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7450 -> x7450 ) ) ) $ ( Bool )
        d741 = ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> if x7420 then x7420 else d479 ) ) ) $ ( true ) ) ) ) $ ( if d467 then false else false )
        d746 : ( ( Set -> Set ) ∋ ( ( λ x7480 -> if true then Bool else x7480 ) ) ) $ ( if true then Bool else Bool )
        d746 = ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> if x7470 then x7470 else d435 ) ) ) $ ( if true then d317 else d136 )
        d749 : if false then if false then Bool else Bool else if false then Bool else Bool
        d749 = if ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> false ) ) ) $ ( d679 ) then if d521 then d649 else d645 else ( ( Bool -> Bool ) ∋ ( ( λ x7510 -> false ) ) ) $ ( false )
        d752 : if false then if true then Bool else Bool else if true then Bool else Bool
        d752 = if ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> x7530 ) ) ) $ ( d192 ) then if false then d691 else d166 else ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> x7540 ) ) ) $ ( true )
        d755 : if false then if false then Bool else Bool else if false then Bool else Bool
        d755 = if if d592 then false else d70 then ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> d11 ) ) ) $ ( d393 ) else if d356 then d238 else true
        d757 : ( ( Set -> Set ) ∋ ( ( λ x7600 -> ( ( Set -> Set ) ∋ ( ( λ x7610 -> if false then x7600 else x7600 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> if false then d728 else d735 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d762 : if false then ( ( Set -> Set ) ∋ ( ( λ x7650 -> x7650 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> if d94 then d422 else x7640 ) ) ) $ ( x7630 ) ) ) ) $ ( if false then true else d82 )
        d766 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7700 -> Bool ) ) ) $ ( Bool )
        d766 = if ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> d259 ) ) ) $ ( d425 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7680 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7690 -> d368 ) ) ) $ ( false )
        d771 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7730 -> Bool ) ) ) $ ( Bool )
        d771 = ( ( Bool -> Bool ) ∋ ( ( λ x7720 -> if false then x7720 else d541 ) ) ) $ ( if d216 then d688 else d198 )
        d774 : if true then ( ( Set -> Set ) ∋ ( ( λ x7770 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7780 -> Bool ) ) ) $ ( Bool )
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> ( ( Bool -> Bool ) ∋ ( ( λ x7760 -> if d216 then d622 else d655 ) ) ) $ ( d403 ) ) ) ) $ ( if d675 then false else false )
        d779 : ( ( Set -> Set ) ∋ ( ( λ x7820 -> if false then x7820 else x7820 ) ) ) $ ( if true then Bool else Bool )
        d779 = ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> if false then d149 else x7800 ) ) ) $ ( x7800 ) ) ) ) $ ( if d140 then d630 else d179 )
        d783 : ( ( Set -> Set ) ∋ ( ( λ x7860 -> ( ( Set -> Set ) ∋ ( ( λ x7870 -> if true then x7860 else x7860 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d783 = ( ( Bool -> Bool ) ∋ ( ( λ x7840 -> ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> if true then d259 else d348 ) ) ) $ ( true ) ) ) ) $ ( if true then d317 else true )
        d788 : if true then ( ( Set -> Set ) ∋ ( ( λ x7900 -> x7900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7910 -> Bool ) ) ) $ ( Bool )
        d788 = if ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> x7890 ) ) ) $ ( true ) then if d494 then false else d707 else if false then d610 else false
        d792 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7950 -> Bool ) ) ) $ ( Bool )
        d792 = if ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> x7930 ) ) ) $ ( false ) then if true then d526 else d13 else ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> d65 ) ) ) $ ( d496 )
        d796 : ( ( Set -> Set ) ∋ ( ( λ x7990 -> ( ( Set -> Set ) ∋ ( ( λ x8000 -> if true then Bool else Bool ) ) ) $ ( x7990 ) ) ) ) $ ( if false then Bool else Bool )
        d796 = if ( ( Bool -> Bool ) ∋ ( ( λ x7970 -> x7970 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7980 -> false ) ) ) $ ( true ) else if d587 then true else false
        d801 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8040 -> x8040 ) ) ) $ ( Bool )
        d801 = ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> if x8030 then false else false ) ) ) $ ( true ) ) ) ) $ ( if d700 then false else false )
        d805 : if false then ( ( Set -> Set ) ∋ ( ( λ x8080 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8090 -> Bool ) ) ) $ ( Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> if x8070 then d455 else true ) ) ) $ ( x8060 ) ) ) ) $ ( if d670 then d269 else d166 )
        d810 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8140 -> x8140 ) ) ) $ ( Bool )
        d810 = if ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> x8110 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8120 -> x8120 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8130 -> d254 ) ) ) $ ( d330 )
        d815 : if false then ( ( Set -> Set ) ∋ ( ( λ x8160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8170 -> Bool ) ) ) $ ( Bool )
        d815 = if if true then false else false then if d198 then d47 else d451 else if d361 then d322 else true
        d818 : ( ( Set -> Set ) ∋ ( ( λ x8200 -> if false then x8200 else x8200 ) ) ) $ ( if false then Bool else Bool )
        d818 = ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> if true then d229 else x8190 ) ) ) $ ( if false then false else d521 )
        d821 : ( ( Set -> Set ) ∋ ( ( λ x8240 -> if false then x8240 else x8240 ) ) ) $ ( if false then Bool else Bool )
        d821 = if ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> d170 ) ) ) $ ( false ) else if false then d344 else d483
        d825 : if true then ( ( Set -> Set ) ∋ ( ( λ x8270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8280 -> x8280 ) ) ) $ ( Bool )
        d825 = if ( ( Bool -> Bool ) ∋ ( ( λ x8260 -> x8260 ) ) ) $ ( d11 ) then if false then false else false else if d602 then d805 else d179
        d829 : if false then ( ( Set -> Set ) ∋ ( ( λ x8320 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d829 = if if d184 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> x8300 ) ) ) $ ( d196 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> x8310 ) ) ) $ ( d216 )
        d833 : if true then if false then Bool else Bool else if false then Bool else Bool
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> ( ( Bool -> Bool ) ∋ ( ( λ x8350 -> if x8340 then x8350 else true ) ) ) $ ( x8340 ) ) ) ) $ ( if d393 then d766 else false )
        d836 : if false then ( ( Set -> Set ) ∋ ( ( λ x8390 -> x8390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8400 -> Bool ) ) ) $ ( Bool )
        d836 = ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> if false then d610 else d557 ) ) ) $ ( d236 ) ) ) ) $ ( if false then d675 else d224 )
        d841 : if true then if true then Bool else Bool else if false then Bool else Bool
        d841 = if if d459 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> false ) ) ) $ ( false ) else if false then false else d65
        d843 : ( ( Set -> Set ) ∋ ( ( λ x8450 -> ( ( Set -> Set ) ∋ ( ( λ x8460 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d843 = if if d723 then true else false then if false then d584 else d526 else ( ( Bool -> Bool ) ∋ ( ( λ x8440 -> d229 ) ) ) $ ( d170 )
        d847 : ( ( Set -> Set ) ∋ ( ( λ x8500 -> if true then x8500 else Bool ) ) ) $ ( if false then Bool else Bool )
        d847 = if ( ( Bool -> Bool ) ∋ ( ( λ x8480 -> false ) ) ) $ ( true ) then if d801 then true else d184 else ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> x8490 ) ) ) $ ( true )
        d851 : if false then ( ( Set -> Set ) ∋ ( ( λ x8540 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x8520 -> ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> if x8520 then d595 else true ) ) ) $ ( x8520 ) ) ) ) $ ( if d196 then false else d707 )
        d855 : ( ( Set -> Set ) ∋ ( ( λ x8580 -> ( ( Set -> Set ) ∋ ( ( λ x8590 -> if false then Bool else Bool ) ) ) $ ( x8580 ) ) ) ) $ ( if true then Bool else Bool )
        d855 = if ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> false ) ) ) $ ( d403 ) then if false then d265 else d276 else ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> d118 ) ) ) $ ( false )
        d860 : if false then ( ( Set -> Set ) ∋ ( ( λ x8630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8640 -> Bool ) ) ) $ ( Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> ( ( Bool -> Bool ) ∋ ( ( λ x8620 -> if x8620 then d602 else false ) ) ) $ ( d829 ) ) ) ) $ ( if d475 then d537 else d825 )
        d865 : if true then ( ( Set -> Set ) ∋ ( ( λ x8680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8690 -> x8690 ) ) ) $ ( Bool )
        d865 = ( ( Bool -> Bool ) ∋ ( ( λ x8660 -> ( ( Bool -> Bool ) ∋ ( ( λ x8670 -> if d718 then false else d746 ) ) ) $ ( d496 ) ) ) ) $ ( if d818 then false else true )
        d870 : if false then ( ( Set -> Set ) ∋ ( ( λ x8720 -> x8720 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d870 = ( ( Bool -> Bool ) ∋ ( ( λ x8710 -> if x8710 then true else x8710 ) ) ) $ ( if d537 then true else false )
        d873 : ( ( Set -> Set ) ∋ ( ( λ x8750 -> if true then Bool else x8750 ) ) ) $ ( if false then Bool else Bool )
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> if x8740 then x8740 else true ) ) ) $ ( if true then false else true )
        d876 : if true then ( ( Set -> Set ) ∋ ( ( λ x8780 -> x8780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d876 = ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> if x8770 then d588 else x8770 ) ) ) $ ( if d821 then d166 else d548 )
        d879 : ( ( Set -> Set ) ∋ ( ( λ x8810 -> ( ( Set -> Set ) ∋ ( ( λ x8820 -> if true then x8820 else Bool ) ) ) $ ( x8810 ) ) ) ) $ ( if true then Bool else Bool )
        d879 = if if true then true else true then if true then d618 else d103 else ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> d696 ) ) ) $ ( true )
        d883 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8850 -> Bool ) ) ) $ ( Bool )
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> if x8840 then false else false ) ) ) $ ( if true then d216 else d273 )
        d886 : ( ( Set -> Set ) ∋ ( ( λ x8890 -> ( ( Set -> Set ) ∋ ( ( λ x8900 -> if false then x8890 else Bool ) ) ) $ ( x8890 ) ) ) ) $ ( if false then Bool else Bool )
        d886 = ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> if x8880 then d265 else x8880 ) ) ) $ ( x8870 ) ) ) ) $ ( if true then d541 else true )
        d891 : ( ( Set -> Set ) ∋ ( ( λ x8930 -> ( ( Set -> Set ) ∋ ( ( λ x8940 -> if false then x8930 else x8930 ) ) ) $ ( x8930 ) ) ) ) $ ( if false then Bool else Bool )
        d891 = if ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> true ) ) ) $ ( d166 ) then if true then d100 else false else if d47 then false else true
        d895 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8970 -> Bool ) ) ) $ ( Bool )
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> if x8960 then d107 else true ) ) ) $ ( if d475 then false else false )
        d898 : ( ( Set -> Set ) ∋ ( ( λ x9000 -> ( ( Set -> Set ) ∋ ( ( λ x9010 -> if true then x9000 else x9010 ) ) ) $ ( x9000 ) ) ) ) $ ( if false then Bool else Bool )
        d898 = ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> if d243 then true else d216 ) ) ) $ ( if d645 then true else d634 )
        d902 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9040 -> Bool ) ) ) $ ( Bool )
        d902 = ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> if d11 then true else x9030 ) ) ) $ ( if d419 then d570 else false )
        d905 : ( ( Set -> Set ) ∋ ( ( λ x9080 -> if true then x9080 else Bool ) ) ) $ ( if false then Bool else Bool )
        d905 = ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> if true then d22 else x9070 ) ) ) $ ( x9060 ) ) ) ) $ ( if true then d732 else d243 )
        d909 : ( ( Set -> Set ) ∋ ( ( λ x9130 -> ( ( Set -> Set ) ∋ ( ( λ x9140 -> if true then Bool else x9130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d909 = if ( ( Bool -> Bool ) ∋ ( ( λ x9100 -> x9100 ) ) ) $ ( d202 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9110 -> d700 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> x9120 ) ) ) $ ( true )
        d915 : ( ( Set -> Set ) ∋ ( ( λ x9170 -> if false then x9170 else x9170 ) ) ) $ ( if false then Bool else Bool )
        d915 = ( ( Bool -> Bool ) ∋ ( ( λ x9160 -> if x9160 then d779 else x9160 ) ) ) $ ( if false then d451 else d364 )
        d918 : if false then if false then Bool else Bool else if false then Bool else Bool
        d918 = if ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> false ) ) ) $ ( d855 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9200 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9210 -> x9210 ) ) ) $ ( false )
        d922 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9240 -> x9240 ) ) ) $ ( Bool )
        d922 = if if true then d281 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9230 -> x9230 ) ) ) $ ( false ) else if d918 then true else d873
        d925 : if false then ( ( Set -> Set ) ∋ ( ( λ x9280 -> x9280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9290 -> x9290 ) ) ) $ ( Bool )
        d925 = ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> ( ( Bool -> Bool ) ∋ ( ( λ x9270 -> if true then x9270 else x9260 ) ) ) $ ( false ) ) ) ) $ ( if false then d707 else false )
        d930 : ( ( Set -> Set ) ∋ ( ( λ x9330 -> ( ( Set -> Set ) ∋ ( ( λ x9340 -> if true then Bool else Bool ) ) ) $ ( x9330 ) ) ) ) $ ( if true then Bool else Bool )
        d930 = if ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> false ) ) ) $ ( d728 ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> x9320 ) ) ) $ ( true )
        d935 : if true then ( ( Set -> Set ) ∋ ( ( λ x9380 -> x9380 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9390 -> x9390 ) ) ) $ ( Bool )
        d935 = ( ( Bool -> Bool ) ∋ ( ( λ x9360 -> ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> if x9360 then d47 else x9370 ) ) ) $ ( x9360 ) ) ) ) $ ( if d293 then true else false )
        d940 : if false then ( ( Set -> Set ) ∋ ( ( λ x9420 -> x9420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9430 -> Bool ) ) ) $ ( Bool )
        d940 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> d691 ) ) ) $ ( d265 ) else if d310 then d348 else d636
        d944 : if true then ( ( Set -> Set ) ∋ ( ( λ x9460 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9470 -> Bool ) ) ) $ ( Bool )
        d944 = if if d113 then d587 else d833 then ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> true ) ) ) $ ( d588 ) else if d762 then false else d855
        d948 : if false then ( ( Set -> Set ) ∋ ( ( λ x9510 -> x9510 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> ( ( Bool -> Bool ) ∋ ( ( λ x9500 -> if x9490 then d162 else x9490 ) ) ) $ ( x9490 ) ) ) ) $ ( if d557 then d584 else false )
        d952 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9560 -> Bool ) ) ) $ ( Bool )
        d952 = if ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> false ) ) ) $ ( d587 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> true ) ) ) $ ( d634 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> x9550 ) ) ) $ ( true )
        d957 : ( ( Set -> Set ) ∋ ( ( λ x9600 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> ( ( Bool -> Bool ) ∋ ( ( λ x9590 -> if d236 then d246 else true ) ) ) $ ( x9580 ) ) ) ) $ ( if true then false else d192 )
        d961 : if true then ( ( Set -> Set ) ∋ ( ( λ x9630 -> x9630 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d961 = ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> if true then false else true ) ) ) $ ( if d59 then d32 else d898 )
        d964 : if true then ( ( Set -> Set ) ∋ ( ( λ x9670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9680 -> Bool ) ) ) $ ( Bool )
        d964 = if ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> true ) ) ) $ ( d883 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> x9660 ) ) ) $ ( false )
        d969 : if true then if true then Bool else Bool else if false then Bool else Bool
        d969 = ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> if true then false else d289 ) ) ) $ ( if false then true else d467 )
        d971 : ( ( Set -> Set ) ∋ ( ( λ x9730 -> ( ( Set -> Set ) ∋ ( ( λ x9740 -> if true then x9730 else x9740 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d971 = if ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> d11 ) ) ) $ ( d615 ) then if d833 then true else false else if false then true else d557
        d975 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9770 -> x9770 ) ) ) $ ( Bool )
        d975 = ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> if x9760 then d361 else x9760 ) ) ) $ ( if true then true else d364 )
        d978 : if false then if true then Bool else Bool else if false then Bool else Bool
        d978 = ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> if d935 then d792 else false ) ) ) $ ( if d732 then true else d836 )
        d980 : if false then ( ( Set -> Set ) ∋ ( ( λ x9840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9850 -> x9850 ) ) ) $ ( Bool )
        d980 = if ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> d65 ) ) ) $ ( d489 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> x9820 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> x9830 ) ) ) $ ( d783 )
        d986 : ( ( Set -> Set ) ∋ ( ( λ x9890 -> if false then Bool else x9890 ) ) ) $ ( if true then Bool else Bool )
        d986 = ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> if false then false else d86 ) ) ) $ ( x9870 ) ) ) ) $ ( if d358 then d459 else d246 )
        d990 : if false then ( ( Set -> Set ) ∋ ( ( λ x9930 -> x9930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9940 -> Bool ) ) ) $ ( Bool )
        d990 = if ( ( Bool -> Bool ) ∋ ( ( λ x9910 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> true ) ) ) $ ( d561 ) else if d484 then d489 else d873
        d995 : if false then if true then Bool else Bool else if false then Bool else Bool
        d995 = ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> if d269 then x9960 else x9960 ) ) ) $ ( if false then d700 else d348 )
        d997 : if true then if true then Bool else Bool else if true then Bool else Bool
        d997 = ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> if d935 then d565 else false ) ) ) $ ( d77 ) ) ) ) $ ( if d810 then false else false )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10020 -> ( ( Set -> Set ) ∋ ( ( λ x10030 -> if false then x10030 else x10020 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> if x10010 then true else false ) ) ) $ ( if d909 then d301 else true )
        d1004 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10080 -> x10080 ) ) ) $ ( Bool )
        d1004 = if ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> d618 ) ) ) $ ( d580 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> x10060 ) ) ) $ ( d796 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10070 -> false ) ) ) $ ( false )
        d1009 : if true then ( ( Set -> Set ) ∋ ( ( λ x10120 -> x10120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1009 = ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> ( ( Bool -> Bool ) ∋ ( ( λ x10110 -> if true then d47 else x10100 ) ) ) $ ( true ) ) ) ) $ ( if true then d915 else true )
        d1013 : if true then ( ( Set -> Set ) ∋ ( ( λ x10150 -> x10150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10160 -> Bool ) ) ) $ ( Bool )
        d1013 = ( ( Bool -> Bool ) ∋ ( ( λ x10140 -> if d326 then d561 else x10140 ) ) ) $ ( if true then d783 else d948 )
        d1017 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10190 -> Bool ) ) ) $ ( Bool )
        d1017 = ( ( Bool -> Bool ) ∋ ( ( λ x10180 -> if x10180 then x10180 else false ) ) ) $ ( if true then d688 else d873 )
        d1020 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10230 -> Bool ) ) ) $ ( Bool )
        d1020 = ( ( Bool -> Bool ) ∋ ( ( λ x10210 -> ( ( Bool -> Bool ) ∋ ( ( λ x10220 -> if false then false else d735 ) ) ) $ ( d630 ) ) ) ) $ ( if d51 then d435 else true )
        d1024 : ( ( Set -> Set ) ∋ ( ( λ x10270 -> ( ( Set -> Set ) ∋ ( ( λ x10280 -> if false then x10270 else Bool ) ) ) $ ( x10270 ) ) ) ) $ ( if true then Bool else Bool )
        d1024 = if ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> d1020 ) ) ) $ ( d818 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> d704 ) ) ) $ ( true ) else if true then false else d675
        d1029 : ( ( Set -> Set ) ∋ ( ( λ x10310 -> ( ( Set -> Set ) ∋ ( ( λ x10320 -> if false then x10310 else Bool ) ) ) $ ( x10310 ) ) ) ) $ ( if true then Bool else Bool )
        d1029 = if if true then d438 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> true ) ) ) $ ( false ) else if d494 then false else false
        d1033 : if false then ( ( Set -> Set ) ∋ ( ( λ x10360 -> x10360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10370 -> Bool ) ) ) $ ( Bool )
        d1033 = ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if false then x10340 else x10350 ) ) ) $ ( d118 ) ) ) ) $ ( if d451 then d132 else d51 )
        d1038 : ( ( Set -> Set ) ∋ ( ( λ x10410 -> ( ( Set -> Set ) ∋ ( ( λ x10420 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> ( ( Bool -> Bool ) ∋ ( ( λ x10400 -> if x10400 then x10400 else d679 ) ) ) $ ( x10390 ) ) ) ) $ ( if true then true else true )
        d1043 : ( ( Set -> Set ) ∋ ( ( λ x10460 -> ( ( Set -> Set ) ∋ ( ( λ x10470 -> if true then Bool else Bool ) ) ) $ ( x10460 ) ) ) ) $ ( if true then Bool else Bool )
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> if false then true else x10440 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d1048 : ( ( Set -> Set ) ∋ ( ( λ x10510 -> ( ( Set -> Set ) ∋ ( ( λ x10520 -> if true then x10510 else x10520 ) ) ) $ ( x10510 ) ) ) ) $ ( if true then Bool else Bool )
        d1048 = ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> if false then d1009 else true ) ) ) $ ( d162 ) ) ) ) $ ( if d224 then false else d86 )
        d1053 : ( ( Set -> Set ) ∋ ( ( λ x10560 -> ( ( Set -> Set ) ∋ ( ( λ x10570 -> if false then Bool else x10570 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1053 = ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> if false then x10540 else d376 ) ) ) $ ( x10540 ) ) ) ) $ ( if true then d118 else true )
        d1058 : ( ( Set -> Set ) ∋ ( ( λ x10610 -> ( ( Set -> Set ) ∋ ( ( λ x10620 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1058 = if ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> d978 ) ) ) $ ( d289 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10600 -> false ) ) ) $ ( d818 ) else if d915 then d89 else false
        d1063 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1063 = if ( ( Bool -> Bool ) ∋ ( ( λ x10640 -> x10640 ) ) ) $ ( false ) then if false then d584 else true else if d166 then d1043 else false
        d1065 : if false then ( ( Set -> Set ) ∋ ( ( λ x10690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10700 -> Bool ) ) ) $ ( Bool )
        d1065 = if ( ( Bool -> Bool ) ∋ ( ( λ x10660 -> x10660 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10670 -> x10670 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> true ) ) ) $ ( false )
        d1071 : if false then ( ( Set -> Set ) ∋ ( ( λ x10740 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1071 = ( ( Bool -> Bool ) ∋ ( ( λ x10720 -> ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> if x10720 then x10730 else d1020 ) ) ) $ ( true ) ) ) ) $ ( if d723 then false else d935 )
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x10780 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1075 = if ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> d587 ) ) ) $ ( d459 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> x10770 ) ) ) $ ( d1053 ) else if false then d77 else d1033
        d1079 : if true then ( ( Set -> Set ) ∋ ( ( λ x10820 -> x10820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10830 -> Bool ) ) ) $ ( Bool )
        d1079 = if ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> x10800 ) ) ) $ ( true ) then if true then true else d675 else ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> true ) ) ) $ ( d368 )
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x10860 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1084 = if ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> d356 ) ) ) $ ( true ) then if d162 then false else false else if false then false else d118
        d1087 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10890 -> x10890 ) ) ) $ ( Bool )
        d1087 = ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> if x10880 then false else d1033 ) ) ) $ ( if d980 then false else false )
        d1090 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1090 = ( ( Bool -> Bool ) ∋ ( ( λ x10910 -> ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> if x10920 then x10910 else false ) ) ) $ ( d428 ) ) ) ) $ ( if d779 then true else d975 )
        d1093 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1093 = if if false then d738 else d879 then if false then true else d216 else ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> true ) ) ) $ ( d925 )
        d1095 : if true then ( ( Set -> Set ) ∋ ( ( λ x10980 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1095 = ( ( Bool -> Bool ) ∋ ( ( λ x10960 -> ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> if x10960 then d548 else x10960 ) ) ) $ ( x10960 ) ) ) ) $ ( if false then false else true )
        d1099 : if true then ( ( Set -> Set ) ∋ ( ( λ x11020 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1099 = ( ( Bool -> Bool ) ∋ ( ( λ x11000 -> ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> if d353 then d610 else x11000 ) ) ) $ ( false ) ) ) ) $ ( if true then d250 else d59 )
        d1103 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1103 = ( ( Bool -> Bool ) ∋ ( ( λ x11040 -> ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> if x11040 then true else true ) ) ) $ ( true ) ) ) ) $ ( if d59 then d301 else true )
        d1106 : if true then ( ( Set -> Set ) ∋ ( ( λ x11090 -> x11090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11100 -> x11100 ) ) ) $ ( Bool )
        d1106 = ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> if x11070 then d221 else false ) ) ) $ ( true ) ) ) ) $ ( if d588 then d238 else d47 )
        d1111 : if false then ( ( Set -> Set ) ∋ ( ( λ x11140 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11150 -> Bool ) ) ) $ ( Bool )
        d1111 = if ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> true ) ) ) $ ( d412 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x11130 -> x11130 ) ) ) $ ( d711 )
        d1116 : ( ( Set -> Set ) ∋ ( ( λ x11190 -> ( ( Set -> Set ) ∋ ( ( λ x11200 -> if true then Bool else x11200 ) ) ) $ ( x11190 ) ) ) ) $ ( if true then Bool else Bool )
        d1116 = if ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> d1048 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11180 -> x11180 ) ) ) $ ( d192 ) else if true then true else d442
        d1121 : if true then ( ( Set -> Set ) ∋ ( ( λ x11230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11240 -> Bool ) ) ) $ ( Bool )
        d1121 = if ( ( Bool -> Bool ) ∋ ( ( λ x11220 -> x11220 ) ) ) $ ( d336 ) then if true then true else d796 else if true then d749 else true
        d1125 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11280 -> x11280 ) ) ) $ ( Bool )
        d1125 = ( ( Bool -> Bool ) ∋ ( ( λ x11260 -> ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> if d815 then false else x11260 ) ) ) $ ( x11260 ) ) ) ) $ ( if d442 then d841 else true )
        d1129 : if false then ( ( Set -> Set ) ∋ ( ( λ x11320 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1129 = ( ( Bool -> Bool ) ∋ ( ( λ x11300 -> ( ( Bool -> Bool ) ∋ ( ( λ x11310 -> if x11310 then x11300 else true ) ) ) $ ( d202 ) ) ) ) $ ( if d509 then d483 else d905 )
        d1133 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11360 -> x11360 ) ) ) $ ( Bool )
        d1133 = ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> if false then x11340 else x11350 ) ) ) $ ( d373 ) ) ) ) $ ( if d665 then d435 else d243 )
        d1137 : if true then ( ( Set -> Set ) ∋ ( ( λ x11390 -> x11390 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1137 = if ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> x11380 ) ) ) $ ( d455 ) then if false then false else d196 else if d1065 then d918 else d136
        d1140 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11430 -> Bool ) ) ) $ ( Bool )
        d1140 = ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> if d107 then d17 else false ) ) ) $ ( true ) ) ) ) $ ( if false then true else d944 )
        d1144 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11470 -> x11470 ) ) ) $ ( Bool )
        d1144 = ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> if false then x11450 else false ) ) ) $ ( x11450 ) ) ) ) $ ( if d681 then d166 else false )
        d1148 : ( ( Set -> Set ) ∋ ( ( λ x11510 -> ( ( Set -> Set ) ∋ ( ( λ x11520 -> if true then x11520 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1148 = if if true then d792 else d77 then ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> d187 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11500 -> x11500 ) ) ) $ ( d475 )
        d1153 : ( ( Set -> Set ) ∋ ( ( λ x11550 -> ( ( Set -> Set ) ∋ ( ( λ x11560 -> if true then Bool else Bool ) ) ) $ ( x11550 ) ) ) ) $ ( if true then Bool else Bool )
        d1153 = if if d397 then true else true then if false then d533 else d925 else ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> d944 ) ) ) $ ( d530 )
        d1157 : ( ( Set -> Set ) ∋ ( ( λ x11590 -> if true then x11590 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1157 = ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> if d432 then x11580 else false ) ) ) $ ( if false then true else d636 )
        d1160 : ( ( Set -> Set ) ∋ ( ( λ x11630 -> if false then x11630 else x11630 ) ) ) $ ( if true then Bool else Bool )
        d1160 = ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> ( ( Bool -> Bool ) ∋ ( ( λ x11620 -> if false then false else x11620 ) ) ) $ ( d89 ) ) ) ) $ ( if false then false else true )
        d1164 : ( ( Set -> Set ) ∋ ( ( λ x11660 -> if false then x11660 else x11660 ) ) ) $ ( if true then Bool else Bool )
        d1164 = if if d696 then d587 else d459 then if d805 then d122 else d757 else ( ( Bool -> Bool ) ∋ ( ( λ x11650 -> x11650 ) ) ) $ ( d653 )
        d1167 : ( ( Set -> Set ) ∋ ( ( λ x11680 -> ( ( Set -> Set ) ∋ ( ( λ x11690 -> if false then x11680 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1167 = if if d895 then d711 else false then if true then d334 else d537 else if d216 then d755 else true
        d1170 : ( ( Set -> Set ) ∋ ( ( λ x11720 -> ( ( Set -> Set ) ∋ ( ( λ x11730 -> if false then x11720 else x11730 ) ) ) $ ( x11720 ) ) ) ) $ ( if true then Bool else Bool )
        d1170 = ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> if d400 then true else false ) ) ) $ ( if false then true else false )
        d1174 : ( ( Set -> Set ) ∋ ( ( λ x11770 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1174 = ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> if x11750 then true else d77 ) ) ) $ ( d948 ) ) ) ) $ ( if d774 then false else d376 )
        d1178 : if false then ( ( Set -> Set ) ∋ ( ( λ x11800 -> x11800 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1178 = ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> if x11790 then d145 else d829 ) ) ) $ ( if d1038 then d829 else d922 )
        d1181 : if false then ( ( Set -> Set ) ∋ ( ( λ x11840 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1181 = ( ( Bool -> Bool ) ∋ ( ( λ x11820 -> ( ( Bool -> Bool ) ∋ ( ( λ x11830 -> if d757 then x11820 else d1170 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d1185 : ( ( Set -> Set ) ∋ ( ( λ x11890 -> ( ( Set -> Set ) ∋ ( ( λ x11900 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1185 = if ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> x11860 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11870 -> d475 ) ) ) $ ( d386 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> false ) ) ) $ ( false )
        d1191 : ( ( Set -> Set ) ∋ ( ( λ x11920 -> ( ( Set -> Set ) ∋ ( ( λ x11930 -> if false then Bool else x11930 ) ) ) $ ( x11920 ) ) ) ) $ ( if false then Bool else Bool )
        d1191 = if if d1144 then false else false then if d435 then d17 else d825 else if d796 then d428 else d1033
        d1194 : if true then ( ( Set -> Set ) ∋ ( ( λ x11950 -> x11950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11960 -> x11960 ) ) ) $ ( Bool )
        d1194 = if if false then d533 else false then if false then false else false else if true then d1090 else d509
        d1197 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1197 = ( ( Bool -> Bool ) ∋ ( ( λ x11980 -> ( ( Bool -> Bool ) ∋ ( ( λ x11990 -> if true then d196 else x11990 ) ) ) $ ( x11980 ) ) ) ) $ ( if d70 then d341 else d96 )
        d1200 : ( ( Set -> Set ) ∋ ( ( λ x12030 -> ( ( Set -> Set ) ∋ ( ( λ x12040 -> if true then Bool else x12030 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1200 = ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> if d873 then d246 else d925 ) ) ) $ ( true ) ) ) ) $ ( if d1095 then false else d948 )
        d1205 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12080 -> Bool ) ) ) $ ( Bool )
        d1205 = ( ( Bool -> Bool ) ∋ ( ( λ x12060 -> ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> if false then x12070 else d1013 ) ) ) $ ( x12060 ) ) ) ) $ ( if d841 then false else d467 )
        d1209 : if true then ( ( Set -> Set ) ∋ ( ( λ x12100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1209 = if if true then true else false then if false then d1191 else true else if true then true else true
        d1211 : if true then ( ( Set -> Set ) ∋ ( ( λ x12130 -> x12130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12140 -> x12140 ) ) ) $ ( Bool )
        d1211 = ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> if d573 then false else x12120 ) ) ) $ ( if d918 then false else d442 )
        d1215 : ( ( Set -> Set ) ∋ ( ( λ x12160 -> if false then Bool else x12160 ) ) ) $ ( if true then Bool else Bool )
        d1215 = if if true then false else d1048 then if d1020 then true else d140 else if d829 then false else true
        d1217 : ( ( Set -> Set ) ∋ ( ( λ x12200 -> if true then x12200 else x12200 ) ) ) $ ( if true then Bool else Bool )
        d1217 = ( ( Bool -> Bool ) ∋ ( ( λ x12180 -> ( ( Bool -> Bool ) ∋ ( ( λ x12190 -> if x12190 then d336 else x12180 ) ) ) $ ( d438 ) ) ) ) $ ( if true then d127 else false )
        d1221 : ( ( Set -> Set ) ∋ ( ( λ x12230 -> if false then x12230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1221 = if if d435 then true else d313 then ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> d301 ) ) ) $ ( d649 ) else if d1178 then true else d902
        d1224 : ( ( Set -> Set ) ∋ ( ( λ x12270 -> ( ( Set -> Set ) ∋ ( ( λ x12280 -> if false then x12270 else x12280 ) ) ) $ ( x12270 ) ) ) ) $ ( if false then Bool else Bool )
        d1224 = ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> if false then d902 else d341 ) ) ) $ ( d513 ) ) ) ) $ ( if d580 then true else false )
        d1229 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1229 = if if d587 then false else d746 then if d276 then d310 else d1087 else if d348 then d902 else d909
        d1230 : if true then ( ( Set -> Set ) ∋ ( ( λ x12330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12340 -> Bool ) ) ) $ ( Bool )
        d1230 = ( ( Bool -> Bool ) ∋ ( ( λ x12310 -> ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> if x12320 then true else true ) ) ) $ ( x12310 ) ) ) ) $ ( if true then true else d762 )
        d1235 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1235 = if ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> d484 ) ) ) $ ( d202 ) else if d902 then false else true
        d1238 : ( ( Set -> Set ) ∋ ( ( λ x12410 -> if true then x12410 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1238 = if ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> x12400 ) ) ) $ ( d1048 ) else if d841 then false else false
        d1242 : if true then ( ( Set -> Set ) ∋ ( ( λ x12440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12450 -> Bool ) ) ) $ ( Bool )
        d1242 = ( ( Bool -> Bool ) ∋ ( ( λ x12430 -> if x12430 then d626 else false ) ) ) $ ( if true then true else true )
        d1246 : if true then ( ( Set -> Set ) ∋ ( ( λ x12490 -> x12490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12500 -> x12500 ) ) ) $ ( Bool )
        d1246 = if ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> x12470 ) ) ) $ ( false ) then if true then d749 else d986 else ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> d1084 ) ) ) $ ( true )
        d1251 : ( ( Set -> Set ) ∋ ( ( λ x12540 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1251 = ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> ( ( Bool -> Bool ) ∋ ( ( λ x12530 -> if d322 then false else true ) ) ) $ ( d446 ) ) ) ) $ ( if d297 then true else d27 )
        d1255 : ( ( Set -> Set ) ∋ ( ( λ x12580 -> ( ( Set -> Set ) ∋ ( ( λ x12590 -> if false then Bool else x12590 ) ) ) $ ( x12580 ) ) ) ) $ ( if false then Bool else Bool )
        d1255 = ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> if x12560 then d273 else x12570 ) ) ) $ ( true ) ) ) ) $ ( if true then d1093 else d154 )
        d1260 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12620 -> x12620 ) ) ) $ ( Bool )
        d1260 = if ( ( Bool -> Bool ) ∋ ( ( λ x12610 -> d833 ) ) ) $ ( d700 ) then if true then false else d356 else if true then false else false
        d1263 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12650 -> Bool ) ) ) $ ( Bool )
        d1263 = ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> if false then d1020 else true ) ) ) $ ( if true then false else d1013 )
        d1266 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12690 -> Bool ) ) ) $ ( Bool )
        d1266 = ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> if x12670 then d521 else false ) ) ) $ ( d771 ) ) ) ) $ ( if true then true else d588 )
        d1270 : ( ( Set -> Set ) ∋ ( ( λ x12720 -> if true then x12720 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1270 = if if d43 then d545 else d281 then if true then d841 else d368 else ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> d1251 ) ) ) $ ( false )
        d1273 : ( ( Set -> Set ) ∋ ( ( λ x12760 -> ( ( Set -> Set ) ∋ ( ( λ x12770 -> if true then x12770 else x12760 ) ) ) $ ( x12760 ) ) ) ) $ ( if false then Bool else Bool )
        d1273 = if ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> d851 ) ) ) $ ( d471 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> d250 ) ) ) $ ( true ) else if false then d1125 else d82
        d1278 : ( ( Set -> Set ) ∋ ( ( λ x12820 -> if true then x12820 else x12820 ) ) ) $ ( if false then Bool else Bool )
        d1278 = if ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> false ) ) ) $ ( d175 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> x12800 ) ) ) $ ( d655 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12810 -> x12810 ) ) ) $ ( d792 )
        d1283 : ( ( Set -> Set ) ∋ ( ( λ x12850 -> ( ( Set -> Set ) ∋ ( ( λ x12860 -> if true then x12850 else x12860 ) ) ) $ ( x12850 ) ) ) ) $ ( if true then Bool else Bool )
        d1283 = if ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> true ) ) ) $ ( d1133 ) then if d1048 then d496 else d243 else if false then true else d1221
        d1287 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12890 -> Bool ) ) ) $ ( Bool )
        d1287 = ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> if d353 then true else false ) ) ) $ ( if false then d833 else true )
        d1290 : ( ( Set -> Set ) ∋ ( ( λ x12940 -> ( ( Set -> Set ) ∋ ( ( λ x12950 -> if false then x12940 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1290 = if ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12920 -> x12920 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> x12930 ) ) ) $ ( d1095 )
        d1296 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1296 = if if true then false else d537 then if true then d1099 else d1000 else ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> d843 ) ) ) $ ( d1181 )
        d1298 : ( ( Set -> Set ) ∋ ( ( λ x13010 -> ( ( Set -> Set ) ∋ ( ( λ x13020 -> if false then Bool else Bool ) ) ) $ ( x13010 ) ) ) ) $ ( if false then Bool else Bool )
        d1298 = if if false then d1075 else true then ( ( Bool -> Bool ) ∋ ( ( λ x12990 -> x12990 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> x13000 ) ) ) $ ( false )
        d1303 : ( ( Set -> Set ) ∋ ( ( λ x13050 -> if true then x13050 else x13050 ) ) ) $ ( if false then Bool else Bool )
        d1303 = if ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> x13040 ) ) ) $ ( d305 ) then if true then false else d1167 else if d1157 then d551 else d265
        d1306 : ( ( Set -> Set ) ∋ ( ( λ x13080 -> if true then x13080 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1306 = ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> if x13070 then x13070 else d63 ) ) ) $ ( if d412 then d1084 else d783 )
        d1309 : if true then ( ( Set -> Set ) ∋ ( ( λ x13130 -> x13130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1309 = if ( ( Bool -> Bool ) ∋ ( ( λ x13100 -> x13100 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> d630 ) ) ) $ ( d368 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> false ) ) ) $ ( false )
        d1314 : ( ( Set -> Set ) ∋ ( ( λ x13160 -> if true then x13160 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1314 = if if d334 then true else d100 then ( ( Bool -> Bool ) ∋ ( ( λ x13150 -> d136 ) ) ) $ ( d815 ) else if d584 then false else d77
        d1317 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13190 -> x13190 ) ) ) $ ( Bool )
        d1317 = if if false then d883 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13180 -> true ) ) ) $ ( false ) else if d1020 then true else d341
        d1320 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13220 -> Bool ) ) ) $ ( Bool )
        d1320 = if if true then true else false then if d930 then d1181 else d1255 else ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> d1058 ) ) ) $ ( true )
        d1323 : if true then ( ( Set -> Set ) ∋ ( ( λ x13250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13260 -> Bool ) ) ) $ ( Bool )
        d1323 = if if true then d313 else d1133 then if true then d1004 else false else ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> x13240 ) ) ) $ ( true )
        d1327 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1327 = ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> if x13290 then true else d407 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d829 )
        d1330 : ( ( Set -> Set ) ∋ ( ( λ x13310 -> ( ( Set -> Set ) ∋ ( ( λ x13320 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1330 = if if false then true else true then if false then false else false else if false then false else true
        d1333 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1333 = ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> if d103 then d513 else d127 ) ) ) $ ( d376 ) ) ) ) $ ( if d484 then d940 else d1229 )
        d1336 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13380 -> x13380 ) ) ) $ ( Bool )
        d1336 = if ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> d577 ) ) ) $ ( d451 ) then if true then true else d1194 else if true then true else true
        d1339 : if false then ( ( Set -> Set ) ∋ ( ( λ x13420 -> x13420 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1339 = ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> ( ( Bool -> Bool ) ∋ ( ( λ x13410 -> if d1278 then x13410 else x13410 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d1343 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13440 -> Bool ) ) ) $ ( Bool )
        d1343 = if if d855 then d1303 else false then if true then d659 else d462 else if d584 then true else d1144
        d1345 : if false then ( ( Set -> Set ) ∋ ( ( λ x13470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1345 = ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> if x13460 then true else d132 ) ) ) $ ( if true then d1314 else d1160 )
        d1348 : ( ( Set -> Set ) ∋ ( ( λ x13500 -> ( ( Set -> Set ) ∋ ( ( λ x13510 -> if false then x13500 else x13510 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1348 = ( ( Bool -> Bool ) ∋ ( ( λ x13490 -> if x13490 then false else x13490 ) ) ) $ ( if false then d407 else d317 )
        d1352 : ( ( Set -> Set ) ∋ ( ( λ x13540 -> ( ( Set -> Set ) ∋ ( ( λ x13550 -> if true then Bool else x13540 ) ) ) $ ( x13540 ) ) ) ) $ ( if false then Bool else Bool )
        d1352 = ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> if d70 then false else x13530 ) ) ) $ ( if true then false else d1205 )
        d1356 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13590 -> Bool ) ) ) $ ( Bool )
        d1356 = ( ( Bool -> Bool ) ∋ ( ( λ x13570 -> ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> if false then x13580 else d615 ) ) ) $ ( x13570 ) ) ) ) $ ( if d659 then false else true )
        d1360 : ( ( Set -> Set ) ∋ ( ( λ x13630 -> if true then x13630 else x13630 ) ) ) $ ( if false then Bool else Bool )
        d1360 = ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> if true then true else x13620 ) ) ) $ ( x13610 ) ) ) ) $ ( if d479 then true else d1048 )
        d1364 : ( ( Set -> Set ) ∋ ( ( λ x13670 -> if true then x13670 else x13670 ) ) ) $ ( if true then Bool else Bool )
        d1364 = ( ( Bool -> Bool ) ∋ ( ( λ x13650 -> ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> if d179 then d1009 else false ) ) ) $ ( d1339 ) ) ) ) $ ( if false then d1178 else true )
        d1368 : ( ( Set -> Set ) ∋ ( ( λ x13710 -> ( ( Set -> Set ) ∋ ( ( λ x13720 -> if true then x13710 else Bool ) ) ) $ ( x13710 ) ) ) ) $ ( if true then Bool else Bool )
        d1368 = ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> if true then d749 else x13700 ) ) ) $ ( x13690 ) ) ) ) $ ( if d810 then true else false )
        d1373 : ( ( Set -> Set ) ∋ ( ( λ x13750 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1373 = ( ( Bool -> Bool ) ∋ ( ( λ x13740 -> if false then false else d1336 ) ) ) $ ( if true then d179 else d1017 )
        d1376 : ( ( Set -> Set ) ∋ ( ( λ x13780 -> ( ( Set -> Set ) ∋ ( ( λ x13790 -> if true then x13780 else Bool ) ) ) $ ( x13780 ) ) ) ) $ ( if true then Bool else Bool )
        d1376 = if if d132 then true else d1148 then if true then d615 else d665 else ( ( Bool -> Bool ) ∋ ( ( λ x13770 -> false ) ) ) $ ( d1020 )
        d1380 : ( ( Set -> Set ) ∋ ( ( λ x13820 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1380 = ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> if true then x13810 else d1373 ) ) ) $ ( if true then d649 else true )
        d1383 : ( ( Set -> Set ) ∋ ( ( λ x13860 -> if true then x13860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1383 = ( ( Bool -> Bool ) ∋ ( ( λ x13840 -> ( ( Bool -> Bool ) ∋ ( ( λ x13850 -> if d415 then x13840 else x13840 ) ) ) $ ( d166 ) ) ) ) $ ( if d1290 then false else false )
        d1387 : ( ( Set -> Set ) ∋ ( ( λ x13890 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1387 = ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> if d1129 then d1242 else true ) ) ) $ ( if d1298 then false else true )
        d1390 : ( ( Set -> Set ) ∋ ( ( λ x13920 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1390 = ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> if d1024 then x13910 else d636 ) ) ) $ ( if d13 then d1000 else true )
        d1393 : ( ( Set -> Set ) ∋ ( ( λ x13960 -> if true then Bool else x13960 ) ) ) $ ( if false then Bool else Bool )
        d1393 = ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> ( ( Bool -> Bool ) ∋ ( ( λ x13950 -> if d1336 then false else x13950 ) ) ) $ ( d741 ) ) ) ) $ ( if d483 then d1140 else true )
        d1397 : if false then ( ( Set -> Set ) ∋ ( ( λ x14000 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14010 -> Bool ) ) ) $ ( Bool )
        d1397 = ( ( Bool -> Bool ) ∋ ( ( λ x13980 -> ( ( Bool -> Bool ) ∋ ( ( λ x13990 -> if true then true else x13990 ) ) ) $ ( d1229 ) ) ) ) $ ( if d170 then d1333 else d1205 )
        d1402 : ( ( Set -> Set ) ∋ ( ( λ x14040 -> if false then x14040 else x14040 ) ) ) $ ( if true then Bool else Bool )
        d1402 = if if false then false else false then if d281 then false else d1197 else ( ( Bool -> Bool ) ∋ ( ( λ x14030 -> true ) ) ) $ ( false )
        d1405 : ( ( Set -> Set ) ∋ ( ( λ x14070 -> if false then x14070 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1405 = ( ( Bool -> Bool ) ∋ ( ( λ x14060 -> if x14060 then false else d870 ) ) ) $ ( if false then d77 else d796 )
        d1408 : ( ( Set -> Set ) ∋ ( ( λ x14110 -> ( ( Set -> Set ) ∋ ( ( λ x14120 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1408 = ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> if x14100 then x14100 else true ) ) ) $ ( x14090 ) ) ) ) $ ( if d353 then d1013 else false )
        d1413 : if true then ( ( Set -> Set ) ∋ ( ( λ x14150 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14160 -> x14160 ) ) ) $ ( Bool )
        d1413 = ( ( Bool -> Bool ) ∋ ( ( λ x14140 -> if false then true else x14140 ) ) ) $ ( if false then false else false )
        d1417 : ( ( Set -> Set ) ∋ ( ( λ x14210 -> if false then x14210 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1417 = if ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> true ) ) ) $ ( d368 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> d1235 ) ) ) $ ( true )
        d1422 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14250 -> Bool ) ) ) $ ( Bool )
        d1422 = ( ( Bool -> Bool ) ∋ ( ( λ x14230 -> ( ( Bool -> Bool ) ∋ ( ( λ x14240 -> if false then true else x14230 ) ) ) $ ( false ) ) ) ) $ ( if d1174 then d521 else d428 )
        d1426 : ( ( Set -> Set ) ∋ ( ( λ x14280 -> ( ( Set -> Set ) ∋ ( ( λ x14290 -> if true then x14290 else x14280 ) ) ) $ ( x14280 ) ) ) ) $ ( if false then Bool else Bool )
        d1426 = ( ( Bool -> Bool ) ∋ ( ( λ x14270 -> if x14270 then false else x14270 ) ) ) $ ( if d521 then d944 else false )
        d1430 : ( ( Set -> Set ) ∋ ( ( λ x14320 -> if true then Bool else x14320 ) ) ) $ ( if true then Bool else Bool )
        d1430 = if if true then d187 else d192 then ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> d530 ) ) ) $ ( false ) else if false then d645 else d605
        d1433 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1433 = ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> if x14340 then x14340 else false ) ) ) $ ( if d376 then d198 else d1229 )
        d1435 : ( ( Set -> Set ) ∋ ( ( λ x14380 -> ( ( Set -> Set ) ∋ ( ( λ x14390 -> if true then Bool else x14380 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1435 = ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> ( ( Bool -> Bool ) ∋ ( ( λ x14370 -> if d964 then true else x14370 ) ) ) $ ( d1393 ) ) ) ) $ ( if d1137 then d313 else d1246 )
        d1440 : if true then ( ( Set -> Set ) ∋ ( ( λ x14420 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1440 = ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> if x14410 then d317 else false ) ) ) $ ( if d475 then true else d471 )
        d1443 : ( ( Set -> Set ) ∋ ( ( λ x14450 -> if true then x14450 else x14450 ) ) ) $ ( if false then Bool else Bool )
        d1443 = if if false then true else true then if d415 then d711 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> false ) ) ) $ ( d715 )
        d1446 : ( ( Set -> Set ) ∋ ( ( λ x14490 -> ( ( Set -> Set ) ∋ ( ( λ x14500 -> if true then x14500 else x14490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1446 = ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> if x14480 then false else false ) ) ) $ ( x14470 ) ) ) ) $ ( if d118 then true else d326 )
        d1451 : if true then ( ( Set -> Set ) ∋ ( ( λ x14530 -> x14530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1451 = ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> if x14520 then d489 else d587 ) ) ) $ ( if d940 then d1174 else d1309 )
        d1454 : if false then ( ( Set -> Set ) ∋ ( ( λ x14570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14580 -> x14580 ) ) ) $ ( Bool )
        d1454 = ( ( Bool -> Bool ) ∋ ( ( λ x14550 -> ( ( Bool -> Bool ) ∋ ( ( λ x14560 -> if false then d752 else d634 ) ) ) $ ( true ) ) ) ) $ ( if d22 then true else true )
        d1459 : ( ( Set -> Set ) ∋ ( ( λ x14630 -> if true then Bool else x14630 ) ) ) $ ( if false then Bool else Bool )
        d1459 = if ( ( Bool -> Bool ) ∋ ( ( λ x14600 -> x14600 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> x14610 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> x14620 ) ) ) $ ( d1095 )
        d1464 : if true then ( ( Set -> Set ) ∋ ( ( λ x14660 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1464 = ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> if x14650 then d1087 else x14650 ) ) ) $ ( if d158 then false else true )
        d1467 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1467 = if if true then d1270 else d577 then if d796 then true else d1164 else ( ( Bool -> Bool ) ∋ ( ( λ x14680 -> true ) ) ) $ ( d1004 )
        d1469 : if true then ( ( Set -> Set ) ∋ ( ( λ x14720 -> x14720 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1469 = ( ( Bool -> Bool ) ∋ ( ( λ x14700 -> ( ( Bool -> Bool ) ∋ ( ( λ x14710 -> if true then d649 else x14700 ) ) ) $ ( false ) ) ) ) $ ( if false then d915 else true )
        d1473 : ( ( Set -> Set ) ∋ ( ( λ x14750 -> if false then x14750 else x14750 ) ) ) $ ( if true then Bool else Bool )
        d1473 = ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> if x14740 then true else d509 ) ) ) $ ( if d533 then d77 else false )
        d1476 : ( ( Set -> Set ) ∋ ( ( λ x14790 -> ( ( Set -> Set ) ∋ ( ( λ x14800 -> if true then Bool else x14800 ) ) ) $ ( x14790 ) ) ) ) $ ( if false then Bool else Bool )
        d1476 = ( ( Bool -> Bool ) ∋ ( ( λ x14770 -> ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> if false then x14770 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d162 else d762 )
        d1481 : ( ( Set -> Set ) ∋ ( ( λ x14830 -> ( ( Set -> Set ) ∋ ( ( λ x14840 -> if false then x14830 else Bool ) ) ) $ ( x14830 ) ) ) ) $ ( if false then Bool else Bool )
        d1481 = ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> if false then d602 else true ) ) ) $ ( if false then false else d27 )
        d1485 : ( ( Set -> Set ) ∋ ( ( λ x14880 -> if false then x14880 else x14880 ) ) ) $ ( if true then Bool else Bool )
        d1485 = if ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> x14860 ) ) ) $ ( d286 ) then if d1099 then d541 else d762 else ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> x14870 ) ) ) $ ( false )
        d1489 : ( ( Set -> Set ) ∋ ( ( λ x14910 -> if false then x14910 else x14910 ) ) ) $ ( if false then Bool else Bool )
        d1489 = if if d718 then d788 else false then if d74 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> x14900 ) ) ) $ ( true )
        d1492 : ( ( Set -> Set ) ∋ ( ( λ x14940 -> ( ( Set -> Set ) ∋ ( ( λ x14950 -> if false then Bool else x14940 ) ) ) $ ( x14940 ) ) ) ) $ ( if true then Bool else Bool )
        d1492 = ( ( Bool -> Bool ) ∋ ( ( λ x14930 -> if false then true else true ) ) ) $ ( if d435 then d517 else false )
        d1496 : ( ( Set -> Set ) ∋ ( ( λ x14990 -> ( ( Set -> Set ) ∋ ( ( λ x15000 -> if true then x14990 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1496 = ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> if x14980 then d771 else true ) ) ) $ ( x14970 ) ) ) ) $ ( if false then d825 else d1278 )
        d1501 : if false then ( ( Set -> Set ) ∋ ( ( λ x15050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15060 -> Bool ) ) ) $ ( Bool )
        d1501 = if ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> d1255 ) ) ) $ ( d1194 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> d1087 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15040 -> false ) ) ) $ ( true )
        d1507 : ( ( Set -> Set ) ∋ ( ( λ x15090 -> if false then Bool else x15090 ) ) ) $ ( if false then Bool else Bool )
        d1507 = ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> if x15080 then x15080 else true ) ) ) $ ( if d475 then false else d548 )
        d1510 : ( ( Set -> Set ) ∋ ( ( λ x15140 -> ( ( Set -> Set ) ∋ ( ( λ x15150 -> if false then x15150 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1510 = if ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> true ) ) ) $ ( d1038 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15120 -> x15120 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15130 -> x15130 ) ) ) $ ( true )
        d1516 : ( ( Set -> Set ) ∋ ( ( λ x15200 -> if true then x15200 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1516 = if ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> d1153 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15180 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> true ) ) ) $ ( d334 )
        d1521 : if true then ( ( Set -> Set ) ∋ ( ( λ x15230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15240 -> x15240 ) ) ) $ ( Bool )
        d1521 = if if d326 then d1009 else d145 then if d1020 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x15220 -> x15220 ) ) ) $ ( d438 )
        d1525 : ( ( Set -> Set ) ∋ ( ( λ x15280 -> ( ( Set -> Set ) ∋ ( ( λ x15290 -> if true then Bool else x15280 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1525 = ( ( Bool -> Bool ) ∋ ( ( λ x15260 -> ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> if false then x15270 else d1260 ) ) ) $ ( x15260 ) ) ) ) $ ( if true then true else false )
        d1530 : ( ( Set -> Set ) ∋ ( ( λ x15330 -> ( ( Set -> Set ) ∋ ( ( λ x15340 -> if true then Bool else Bool ) ) ) $ ( x15330 ) ) ) ) $ ( if true then Bool else Bool )
        d1530 = ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> if false then true else x15310 ) ) ) $ ( false ) ) ) ) $ ( if d580 then d1376 else false )
        d1535 : if true then ( ( Set -> Set ) ∋ ( ( λ x15380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15390 -> x15390 ) ) ) $ ( Bool )
        d1535 = ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> if d1181 then true else d471 ) ) ) $ ( x15360 ) ) ) ) $ ( if true then false else true )
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15420 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1540 = if if true then true else d232 then if d815 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> x15410 ) ) ) $ ( true )
        d1543 : ( ( Set -> Set ) ∋ ( ( λ x15450 -> if false then Bool else x15450 ) ) ) $ ( if false then Bool else Bool )
        d1543 = ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> if x15440 then x15440 else d1246 ) ) ) $ ( if true then d254 else true )
        d1546 : if true then ( ( Set -> Set ) ∋ ( ( λ x15490 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1546 = ( ( Bool -> Bool ) ∋ ( ( λ x15470 -> ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> if true then d344 else d238 ) ) ) $ ( x15470 ) ) ) ) $ ( if d615 then true else d1467 )
        d1550 : ( ( Set -> Set ) ∋ ( ( λ x15520 -> ( ( Set -> Set ) ∋ ( ( λ x15530 -> if false then Bool else x15520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1550 = if ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> d1283 ) ) ) $ ( d1125 ) then if true then d250 else d475 else if d22 then false else true
        d1554 : ( ( Set -> Set ) ∋ ( ( λ x15570 -> if false then x15570 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1554 = ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> if d210 then x15550 else x15560 ) ) ) $ ( x15550 ) ) ) ) $ ( if false then true else d140 )
        d1558 : ( ( Set -> Set ) ∋ ( ( λ x15610 -> if false then Bool else x15610 ) ) ) $ ( if false then Bool else Bool )
        d1558 = if ( ( Bool -> Bool ) ∋ ( ( λ x15590 -> d1443 ) ) ) $ ( d653 ) then if false then d475 else d55 else ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> x15600 ) ) ) $ ( d386 )
        d1562 : ( ( Set -> Set ) ∋ ( ( λ x15640 -> if true then Bool else x15640 ) ) ) $ ( if false then Bool else Bool )
        d1562 = ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> if false then false else false ) ) ) $ ( if d1320 then d1298 else d175 )
        d1565 : ( ( Set -> Set ) ∋ ( ( λ x15680 -> ( ( Set -> Set ) ∋ ( ( λ x15690 -> if true then Bool else x15690 ) ) ) $ ( x15680 ) ) ) ) $ ( if false then Bool else Bool )
        d1565 = ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> ( ( Bool -> Bool ) ∋ ( ( λ x15670 -> if x15670 then true else x15660 ) ) ) $ ( d1 ) ) ) ) $ ( if true then d1405 else false )
        d1570 : ( ( Set -> Set ) ∋ ( ( λ x15730 -> if false then x15730 else x15730 ) ) ) $ ( if false then Bool else Bool )
        d1570 = if if d915 then d6 else d1489 then ( ( Bool -> Bool ) ∋ ( ( λ x15710 -> d833 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> x15720 ) ) ) $ ( true )
        d1574 : if false then ( ( Set -> Set ) ∋ ( ( λ x15760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15770 -> x15770 ) ) ) $ ( Bool )
        d1574 = ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> if false then x15750 else false ) ) ) $ ( if d952 then false else d1009 )
        d1578 : ( ( Set -> Set ) ∋ ( ( λ x15800 -> ( ( Set -> Set ) ∋ ( ( λ x15810 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1578 = ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> if d1255 then x15790 else d1079 ) ) ) $ ( if d198 then d393 else d1153 )
        d1582 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1582 = ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> if true then x15830 else true ) ) ) $ ( x15830 ) ) ) ) $ ( if false then d1387 else false )
        d1585 : ( ( Set -> Set ) ∋ ( ( λ x15870 -> if false then x15870 else x15870 ) ) ) $ ( if false then Bool else Bool )
        d1585 = ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> if false then x15860 else false ) ) ) $ ( if true then d1217 else d344 )
        d1588 : ( ( Set -> Set ) ∋ ( ( λ x15890 -> ( ( Set -> Set ) ∋ ( ( λ x15900 -> if true then Bool else x15900 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1588 = if if false then d37 else d1235 then if false then false else true else if d700 then false else true
        d1591 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15940 -> Bool ) ) ) $ ( Bool )
        d1591 = ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> if x15920 then x15930 else d358 ) ) ) $ ( d55 ) ) ) ) $ ( if d675 then d1507 else false )
        d1595 : ( ( Set -> Set ) ∋ ( ( λ x15980 -> ( ( Set -> Set ) ∋ ( ( λ x15990 -> if true then x15980 else Bool ) ) ) $ ( x15980 ) ) ) ) $ ( if false then Bool else Bool )
        d1595 = if ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> true ) ) ) $ ( d704 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> true ) ) ) $ ( false ) else if d1129 then d537 else false
        d1600 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1600 = if ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> false ) ) ) $ ( d895 ) then if d1099 then true else d1164 else ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> true ) ) ) $ ( d746 )
        d1603 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16050 -> x16050 ) ) ) $ ( Bool )
        d1603 = if ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> x16040 ) ) ) $ ( false ) then if false then d494 else false else if d330 then true else true
        d1606 : ( ( Set -> Set ) ∋ ( ( λ x16070 -> if false then x16070 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1606 = if if true then d707 else d630 then if d500 then false else true else if true then true else true
        d1608 : ( ( Set -> Set ) ∋ ( ( λ x16110 -> if true then x16110 else x16110 ) ) ) $ ( if false then Bool else Bool )
        d1608 = if if d376 then true else d1516 then ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16100 -> x16100 ) ) ) $ ( d1489 )
        d1612 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16140 -> Bool ) ) ) $ ( Bool )
        d1612 = ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> if d1570 then d577 else x16130 ) ) ) $ ( if d198 then d1535 else false )
        d1615 : ( ( Set -> Set ) ∋ ( ( λ x16160 -> if true then x16160 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1615 = if if false then true else d74 then if d925 then false else d659 else if true then false else true
        d1617 : if true then ( ( Set -> Set ) ∋ ( ( λ x16200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16210 -> Bool ) ) ) $ ( Bool )
        d1617 = ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> if true then true else true ) ) ) $ ( x16180 ) ) ) ) $ ( if false then d229 else d509 )
        d1622 : if false then ( ( Set -> Set ) ∋ ( ( λ x16250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16260 -> Bool ) ) ) $ ( Bool )
        d1622 = if ( ( Bool -> Bool ) ∋ ( ( λ x16230 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> true ) ) ) $ ( d1013 ) else if true then true else false
        d1627 : ( ( Set -> Set ) ∋ ( ( λ x16300 -> ( ( Set -> Set ) ∋ ( ( λ x16310 -> if true then x16300 else x16300 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1627 = if ( ( Bool -> Bool ) ∋ ( ( λ x16280 -> x16280 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> x16290 ) ) ) $ ( d1270 ) else if d96 then true else d1612
        d1632 : if false then ( ( Set -> Set ) ∋ ( ( λ x16340 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16350 -> x16350 ) ) ) $ ( Bool )
        d1632 = if if true then d1333 else false then ( ( Bool -> Bool ) ∋ ( ( λ x16330 -> true ) ) ) $ ( d47 ) else if d1600 then d1017 else true
        d1636 : ( ( Set -> Set ) ∋ ( ( λ x16390 -> if false then x16390 else x16390 ) ) ) $ ( if false then Bool else Bool )
        d1636 = ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> if false then x16380 else x16370 ) ) ) $ ( x16370 ) ) ) ) $ ( if d843 then d980 else d47 )
        d1640 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1640 = if ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> d13 ) ) ) $ ( true ) then if d1510 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x16420 -> true ) ) ) $ ( d322 )
        d1643 : ( ( Set -> Set ) ∋ ( ( λ x16450 -> ( ( Set -> Set ) ∋ ( ( λ x16460 -> if false then x16460 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1643 = ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> if d489 then d281 else true ) ) ) $ ( if d489 then false else true )
        d1647 : if false then ( ( Set -> Set ) ∋ ( ( λ x16490 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1647 = ( ( Bool -> Bool ) ∋ ( ( λ x16480 -> if x16480 then d1540 else d957 ) ) ) $ ( if true then d1144 else true )
        d1650 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1650 = if if false then true else d855 then if false then d415 else d971 else ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> true ) ) ) $ ( d27 )
        d1652 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16550 -> x16550 ) ) ) $ ( Bool )
        d1652 = if ( ( Bool -> Bool ) ∋ ( ( λ x16530 -> false ) ) ) $ ( d1229 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> x16540 ) ) ) $ ( false ) else if true then true else d1393
        d1656 : if true then ( ( Set -> Set ) ∋ ( ( λ x16590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16600 -> Bool ) ) ) $ ( Bool )
        d1656 = if if d1323 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x16570 -> x16570 ) ) ) $ ( d6 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> d1095 ) ) ) $ ( d1333 )
        d1661 : ( ( Set -> Set ) ∋ ( ( λ x16640 -> ( ( Set -> Set ) ∋ ( ( λ x16650 -> if true then x16650 else Bool ) ) ) $ ( x16640 ) ) ) ) $ ( if false then Bool else Bool )
        d1661 = ( ( Bool -> Bool ) ∋ ( ( λ x16620 -> ( ( Bool -> Bool ) ∋ ( ( λ x16630 -> if true then d55 else x16630 ) ) ) $ ( d1129 ) ) ) ) $ ( if false then d381 else d100 )
        d1666 : ( ( Set -> Set ) ∋ ( ( λ x16670 -> ( ( Set -> Set ) ∋ ( ( λ x16680 -> if true then x16680 else x16680 ) ) ) $ ( x16670 ) ) ) ) $ ( if false then Bool else Bool )
        d1666 = if if d1368 then d561 else false then if false then d922 else d334 else if true then false else d344
        d1669 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1669 = ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> if x16700 then x16710 else false ) ) ) $ ( d990 ) ) ) ) $ ( if d162 then d1393 else false )
        d1672 : ( ( Set -> Set ) ∋ ( ( λ x16740 -> ( ( Set -> Set ) ∋ ( ( λ x16750 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1672 = if ( ( Bool -> Bool ) ∋ ( ( λ x16730 -> x16730 ) ) ) $ ( d752 ) then if d376 then d313 else d459 else if true then false else d494
        d1676 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1676 = if if d37 then d1020 else d749 then if d246 then false else d254 else if d1251 then d1666 else true
        d1677 : if true then ( ( Set -> Set ) ∋ ( ( λ x16790 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1677 = ( ( Bool -> Bool ) ∋ ( ( λ x16780 -> if true then d587 else x16780 ) ) ) $ ( if true then d1111 else false )
        d1680 : if false then ( ( Set -> Set ) ∋ ( ( λ x16820 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16830 -> x16830 ) ) ) $ ( Bool )
        d1680 = if if d1558 then d442 else true then ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> d74 ) ) ) $ ( d1200 ) else if false then d336 else true
        d1684 : if true then ( ( Set -> Set ) ∋ ( ( λ x16860 -> x16860 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1684 = if if d696 then d659 else d1516 then ( ( Bool -> Bool ) ∋ ( ( λ x16850 -> d1615 ) ) ) $ ( d446 ) else if d1408 then d1516 else true
        d1687 : ( ( Set -> Set ) ∋ ( ( λ x16900 -> if false then x16900 else x16900 ) ) ) $ ( if false then Bool else Bool )
        d1687 = if if d1095 then d870 else d587 then ( ( Bool -> Bool ) ∋ ( ( λ x16880 -> x16880 ) ) ) $ ( d679 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16890 -> x16890 ) ) ) $ ( d865 )
        d1691 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1691 = ( ( Bool -> Bool ) ∋ ( ( λ x16920 -> if x16920 then x16920 else x16920 ) ) ) $ ( if false then d1570 else d1174 )
        d1693 : if false then ( ( Set -> Set ) ∋ ( ( λ x16960 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1693 = ( ( Bool -> Bool ) ∋ ( ( λ x16940 -> ( ( Bool -> Bool ) ∋ ( ( λ x16950 -> if d1246 then false else d1174 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d1650 )
        d1697 : if false then ( ( Set -> Set ) ∋ ( ( λ x16990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x17000 -> Bool ) ) ) $ ( Bool )
        d1697 = if if false then true else d89 then if d530 then false else d136 else ( ( Bool -> Bool ) ∋ ( ( λ x16980 -> d1229 ) ) ) $ ( d273 )
        d1701 : ( ( Set -> Set ) ∋ ( ( λ x17040 -> ( ( Set -> Set ) ∋ ( ( λ x17050 -> if false then Bool else Bool ) ) ) $ ( x17040 ) ) ) ) $ ( if false then Bool else Bool )
        d1701 = ( ( Bool -> Bool ) ∋ ( ( λ x17020 -> ( ( Bool -> Bool ) ∋ ( ( λ x17030 -> if d1167 then false else x17030 ) ) ) $ ( x17020 ) ) ) ) $ ( if true then d1148 else d322 )
        d1706 : ( ( Set -> Set ) ∋ ( ( λ x17080 -> if true then x17080 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1706 = ( ( Bool -> Bool ) ∋ ( ( λ x17070 -> if d184 then true else x17070 ) ) ) $ ( if false then true else false )
        d1709 : if false then ( ( Set -> Set ) ∋ ( ( λ x17120 -> x17120 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1709 = ( ( Bool -> Bool ) ∋ ( ( λ x17100 -> ( ( Bool -> Bool ) ∋ ( ( λ x17110 -> if d89 then d1170 else d170 ) ) ) $ ( x17100 ) ) ) ) $ ( if true then d1211 else d113 )
        d1713 : if true then ( ( Set -> Set ) ∋ ( ( λ x17160 -> x17160 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1713 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x17140 -> d1687 ) ) ) $ ( d964 ) else ( ( Bool -> Bool ) ∋ ( ( λ x17150 -> true ) ) ) $ ( d847 )
        d1717 : ( ( Set -> Set ) ∋ ( ( λ x17200 -> ( ( Set -> Set ) ∋ ( ( λ x17210 -> if true then x17210 else Bool ) ) ) $ ( x17200 ) ) ) ) $ ( if false then Bool else Bool )
        d1717 = if ( ( Bool -> Bool ) ∋ ( ( λ x17180 -> x17180 ) ) ) $ ( d818 ) then if false then d310 else d110 else ( ( Bool -> Bool ) ∋ ( ( λ x17190 -> d1140 ) ) ) $ ( d1390 )
        d1722 : ( ( Set -> Set ) ∋ ( ( λ x17230 -> ( ( Set -> Set ) ∋ ( ( λ x17240 -> if false then Bool else x17230 ) ) ) $ ( x17230 ) ) ) ) $ ( if true then Bool else Bool )
        d1722 = if if false then d1376 else d1380 then if true then true else d1570 else if d1652 then true else true
        d1725 : if false then ( ( Set -> Set ) ∋ ( ( λ x17270 -> x17270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x17280 -> Bool ) ) ) $ ( Bool )
        d1725 = if ( ( Bool -> Bool ) ∋ ( ( λ x17260 -> d22 ) ) ) $ ( true ) then if d598 then d815 else d1000 else if d818 then d184 else false
        d1729 : ( ( Set -> Set ) ∋ ( ( λ x17330 -> ( ( Set -> Set ) ∋ ( ( λ x17340 -> if true then x17340 else x17330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1729 = if ( ( Bool -> Bool ) ∋ ( ( λ x17300 -> d232 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x17310 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x17320 -> d561 ) ) ) $ ( d63 )
        d1735 : ( ( Set -> Set ) ∋ ( ( λ x17380 -> if true then x17380 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1735 = ( ( Bool -> Bool ) ∋ ( ( λ x17360 -> ( ( Bool -> Bool ) ∋ ( ( λ x17370 -> if true then false else false ) ) ) $ ( d400 ) ) ) ) $ ( if d1093 then true else d1164 )