module Decls150Test5  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> true ) ) ) $ ( true ) then if false then true else true else if true then false else false
        d5 : if true then ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d1 then d1 else false ) ) ) $ ( if d1 then d1 else true )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else x90 ) ) ) $ ( if true then Bool else Bool )
        d8 = if if d1 then true else true then if d5 then d1 else d5 else if d5 then false else false
        d10 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else Bool ) ) ) $ ( x130 ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( d8 ) then ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d5 ) ) ) $ ( true ) else if true then d8 else d5
        d15 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if true then x160 else d1 ) ) ) $ ( if d10 then d8 else d8 )
        d18 : if false then ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d15 then d15 else d15 ) ) ) $ ( if true then d15 else d5 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> if true then Bool else x240 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if false then x230 else false ) ) ) $ ( x220 ) ) ) ) $ ( if d18 then d18 else true )
        d26 : if true then ( ( Set -> Set ) ∋ ( ( λ x300 -> x300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( Bool )
        d26 = if ( ( Bool -> Bool ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x280 -> d10 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( d21 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x340 -> d21 ) ) ) $ ( true ) else if d1 then d1 else d18
        d37 : if true then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if true then false else x380 ) ) ) $ ( if d8 then d8 else d10 )
        d39 : if true then ( ( Set -> Set ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if true then true else x400 ) ) ) $ ( d5 ) ) ) ) $ ( if d10 then false else true )
        d43 : if false then ( ( Set -> Set ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if x440 then d10 else d5 ) ) ) $ ( x440 ) ) ) ) $ ( if false then d1 else false )
        d47 : if true then ( ( Set -> Set ) ∋ ( ( λ x500 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if x480 then d1 else d32 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x530 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if d37 then x520 else x520 ) ) ) $ ( if d26 then d26 else d15 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then x570 else x570 ) ) ) $ ( if false then Bool else Bool )
        d54 = if if false then true else d32 then ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d37 ) ) ) $ ( d10 ) else ( ( Bool -> Bool ) ∋ ( ( λ x560 -> false ) ) ) $ ( false )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x610 -> ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then Bool else Bool ) ) ) $ ( x610 ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> false ) ) ) $ ( d21 ) then if d5 then false else d51 else ( ( Bool -> Bool ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( d32 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then x640 else Bool ) ) ) $ ( if true then Bool else Bool )
        d63 = if if d51 then true else d15 then if false then d54 else d32 else if true then d15 else false
        d65 : if true then ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if d63 then d47 else d37 ) ) ) $ ( if true then true else false )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then Bool else x730 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d10 ) ) ) $ ( d51 ) then ( ( Bool -> Bool ) ∋ ( ( λ x700 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x710 -> d43 ) ) ) $ ( d58 )
        d74 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x770 -> Bool ) ) ) $ ( Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if x750 then x750 else x750 ) ) ) $ ( x750 ) ) ) ) $ ( if d43 then d26 else d43 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if true then x800 else Bool ) ) ) $ ( if true then Bool else Bool )
        d78 = if if true then d8 else d54 then if true then d54 else true else ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d54 ) ) ) $ ( d18 )
        d81 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( Bool )
        d81 = if if true then d37 else true then ( ( Bool -> Bool ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( d5 ) else if d1 then true else true
        d84 : if true then ( ( Set -> Set ) ∋ ( ( λ x870 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x880 -> Bool ) ) ) $ ( Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if d43 then true else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then Bool else x920 ) ) ) $ ( x920 ) ) ) ) $ ( if true then Bool else Bool )
        d89 = if if true then false else d84 then ( ( Bool -> Bool ) ∋ ( ( λ x900 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d8 ) ) ) $ ( d32 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x970 -> if false then x970 else x960 ) ) ) $ ( x960 ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if ( ( Bool -> Bool ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( d26 ) then if d15 then false else true else if false then d68 else d68
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> if true then x1000 else Bool ) ) ) $ ( x1000 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if x990 then false else false ) ) ) $ ( if true then false else false )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then Bool else Bool ) ) ) $ ( x1050 ) ) ) ) $ ( if true then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if d58 then false else false ) ) ) $ ( d37 ) ) ) ) $ ( if d8 then true else d94 )
        d107 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if false then d98 else d84 ) ) ) $ ( if true then true else d8 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then Bool else x1130 ) ) ) $ ( x1130 ) ) ) ) $ ( if false then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if d58 then true else x1110 ) ) ) $ ( x1110 ) ) ) ) $ ( if false then true else d1 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> if false then Bool else x1180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if x1160 then d68 else true ) ) ) $ ( if d37 then d21 else false )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1210 then false else false ) ) ) $ ( true ) ) ) ) $ ( if d68 then false else false )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> if true then x1250 else Bool ) ) ) $ ( if false then Bool else Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if d15 then true else d39 ) ) ) $ ( if d51 then false else false )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> if d89 then x1270 else false ) ) ) $ ( d39 ) ) ) ) $ ( if false then false else d102 )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> ( ( Set -> Set ) ∋ ( ( λ x1330 -> if true then Bool else x1320 ) ) ) $ ( x1320 ) ) ) ) $ ( if false then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if d78 then true else x1310 ) ) ) $ ( if d58 then d123 else d98 )
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> if x1360 then true else d10 ) ) ) $ ( x1350 ) ) ) ) $ ( if false then true else true )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then Bool else x1400 ) ) ) $ ( if true then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if d65 then x1390 else x1390 ) ) ) $ ( if d8 then d102 else d10 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then Bool else x1440 ) ) ) $ ( if true then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if d126 then d32 else false ) ) ) $ ( d74 ) ) ) ) $ ( if d84 then d65 else false )
        d145 : if false then ( ( Set -> Set ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d145 = if if d10 then false else d39 then if d115 then false else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( false )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then Bool else x1520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d149 = if if false then d126 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d102 ) ) ) $ ( false )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then x1560 else Bool ) ) ) $ ( if false then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d145 then x1550 else x1550 ) ) ) $ ( if d84 then true else d130 )
        d157 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> if false then Bool else x1590 ) ) ) $ ( if false then Bool else Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if false then x1580 else x1580 ) ) ) $ ( if d126 then true else false )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d160 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> true ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> false ) ) ) $ ( true )
        d164 : if true then ( ( Set -> Set ) ∋ ( ( λ x1670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( Bool )
        d164 = if ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> false ) ) ) $ ( false ) then if d32 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> true ) ) ) $ ( d54 )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if true then true else true ) ) ) $ ( true ) ) ) ) $ ( if true then d94 else true )
        d173 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> if true then x1750 else Bool ) ) ) $ ( if true then Bool else Bool )
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if x1740 then d110 else d8 ) ) ) $ ( if false then d10 else false )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if true then Bool else x1790 ) ) ) $ ( if true then Bool else Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if d5 then x1780 else true ) ) ) $ ( x1770 ) ) ) ) $ ( if true then false else d141 )
        d180 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( Bool )
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if x1810 then x1820 else x1820 ) ) ) $ ( true ) ) ) ) $ ( if d43 then d63 else false )
        d184 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d184 = if ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( d10 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( d43 )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> if false then x1930 else x1920 ) ) ) $ ( x1920 ) ) ) ) $ ( if false then Bool else Bool )
        d190 = if if d89 then d43 else d130 then ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> d102 ) ) ) $ ( true ) else if d5 then false else d173
        d194 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> if true then x1960 else Bool ) ) ) $ ( if true then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> if x1950 then false else d134 ) ) ) $ ( if d102 then d160 else true )
        d197 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2000 -> x2000 ) ) ) $ ( Bool )
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if false then x1990 else x1990 ) ) ) $ ( x1980 ) ) ) ) $ ( if d164 then false else d134 )
        d201 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> ( ( Set -> Set ) ∋ ( ( λ x2060 -> if false then x2050 else x2060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d201 = if ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> d74 ) ) ) $ ( d154 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> d98 ) ) ) $ ( true )
        d207 : ( ( Set -> Set ) ∋ ( ( λ x2100 -> ( ( Set -> Set ) ∋ ( ( λ x2110 -> if true then Bool else Bool ) ) ) $ ( x2100 ) ) ) ) $ ( if true then Bool else Bool )
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> if true then false else d126 ) ) ) $ ( true ) ) ) ) $ ( if d74 then true else d8 )
        d212 : if true then if false then Bool else Bool else if true then Bool else Bool
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> if x2130 then x2130 else x2130 ) ) ) $ ( if true then true else true )
        d214 : ( ( Set -> Set ) ∋ ( ( λ x2170 -> ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then x2170 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d214 = ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> if d63 then d173 else d32 ) ) ) $ ( false ) ) ) ) $ ( if d157 then true else d65 )
        d219 : if false then if true then Bool else Bool else if false then Bool else Bool
        d219 = if ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> x2200 ) ) ) $ ( d169 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> x2210 ) ) ) $ ( d54 ) else if false then d102 else false
        d222 : if true then ( ( Set -> Set ) ∋ ( ( λ x2240 -> x2240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2250 -> Bool ) ) ) $ ( Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> if d15 then true else d78 ) ) ) $ ( if true then d18 else d219 )
        d226 : if false then if false then Bool else Bool else if false then Bool else Bool
        d226 = if if d169 then true else d15 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> d126 ) ) ) $ ( d8 )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x2300 -> ( ( Set -> Set ) ∋ ( ( λ x2310 -> if false then x2300 else x2310 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> if d154 then x2290 else d226 ) ) ) $ ( if true then false else d18 )
        d232 : if true then if true then Bool else Bool else if true then Bool else Bool
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> if x2330 then false else d110 ) ) ) $ ( if false then false else d219 )
        d234 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> ( ( Set -> Set ) ∋ ( ( λ x2370 -> if true then Bool else x2370 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> if x2350 then true else d160 ) ) ) $ ( if d58 then d157 else d84 )
        d238 : if true then ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2410 -> Bool ) ) ) $ ( Bool )
        d238 = if if d26 then false else d94 then if d154 then true else d226 else ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( false )
        d242 : ( ( Set -> Set ) ∋ ( ( λ x2450 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> if x2440 then x2430 else d201 ) ) ) $ ( false ) ) ) ) $ ( if false then d102 else false )
        d246 : if false then if true then Bool else Bool else if false then Bool else Bool
        d246 = if if false then d207 else false then if d74 then false else true else if true then d5 else true
        d247 : if true then ( ( Set -> Set ) ∋ ( ( λ x2500 -> x2500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d247 = if ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> x2480 ) ) ) $ ( d74 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> false ) ) ) $ ( true ) else if true then false else d51
        d251 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then Bool else x2540 ) ) ) $ ( if true then Bool else Bool )
        d251 = if ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( false ) then if false then d145 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( true )
        d255 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> ( ( Set -> Set ) ∋ ( ( λ x2590 -> if false then x2590 else x2590 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> if x2560 then d130 else false ) ) ) $ ( x2560 ) ) ) ) $ ( if true then false else d226 )
        d260 : if false then ( ( Set -> Set ) ∋ ( ( λ x2620 -> x2620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2630 -> Bool ) ) ) $ ( Bool )
        d260 = if if false then true else d65 then if d226 then d126 else d176 else ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> false ) ) ) $ ( d190 )
        d264 : if false then ( ( Set -> Set ) ∋ ( ( λ x2660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2670 -> Bool ) ) ) $ ( Bool )
        d264 = if if false then d232 else d164 then ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> true ) ) ) $ ( d89 ) else if d176 then d32 else d63
        d268 : ( ( Set -> Set ) ∋ ( ( λ x2710 -> ( ( Set -> Set ) ∋ ( ( λ x2720 -> if false then x2720 else x2710 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> if x2700 then d81 else x2690 ) ) ) $ ( d173 ) ) ) ) $ ( if d222 then d98 else d226 )
        d273 : ( ( Set -> Set ) ∋ ( ( λ x2740 -> ( ( Set -> Set ) ∋ ( ( λ x2750 -> if false then x2740 else Bool ) ) ) $ ( x2740 ) ) ) ) $ ( if false then Bool else Bool )
        d273 = if if d68 then d15 else d123 then if false then d190 else true else if false then true else true
        d276 : if false then ( ( Set -> Set ) ∋ ( ( λ x2790 -> x2790 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d276 = if ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( d115 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> d8 ) ) ) $ ( true ) else if d169 then false else d74
        d280 : ( ( Set -> Set ) ∋ ( ( λ x2820 -> ( ( Set -> Set ) ∋ ( ( λ x2830 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d280 = if if d81 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> true ) ) ) $ ( true ) else if true then d110 else d247
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> if false then Bool else Bool ) ) ) $ ( x2870 ) ) ) ) $ ( if false then Bool else Bool )
        d284 = if ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> x2850 ) ) ) $ ( d134 ) then if d226 then d242 else d58 else ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> true ) ) ) $ ( true )
        d289 : if true then if true then Bool else Bool else if false then Bool else Bool
        d289 = if if d169 then true else d238 then ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> x2900 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> d276 ) ) ) $ ( true )
        d292 : if true then ( ( Set -> Set ) ∋ ( ( λ x2940 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2950 -> Bool ) ) ) $ ( Bool )
        d292 = if ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> d58 ) ) ) $ ( true ) then if d78 then false else d154 else if true then false else false
        d296 : if false then ( ( Set -> Set ) ∋ ( ( λ x2990 -> x2990 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3000 -> Bool ) ) ) $ ( Bool )
        d296 = if if d238 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> true ) ) ) $ ( d251 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> x2980 ) ) ) $ ( false )
        d301 : if true then if false then Bool else Bool else if false then Bool else Bool
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> if x3020 then true else false ) ) ) $ ( d81 ) ) ) ) $ ( if d98 then false else false )
        d304 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then x3070 else Bool ) ) ) $ ( if false then Bool else Bool )
        d304 = ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> if false then x3060 else d228 ) ) ) $ ( false ) ) ) ) $ ( if d81 then d234 else d201 )
        d308 : if false then ( ( Set -> Set ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3120 -> Bool ) ) ) $ ( Bool )
        d308 = if ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> true ) ) ) $ ( true ) then if d141 then d226 else d289 else ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> true ) ) ) $ ( d149 )
        d313 : if true then ( ( Set -> Set ) ∋ ( ( λ x3160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3170 -> x3170 ) ) ) $ ( Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> if true then false else true ) ) ) $ ( d276 ) ) ) ) $ ( if d89 then false else d74 )
        d318 : ( ( Set -> Set ) ∋ ( ( λ x3200 -> ( ( Set -> Set ) ∋ ( ( λ x3210 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> if d246 then x3190 else x3190 ) ) ) $ ( if d21 then d234 else d180 )
        d322 : if false then ( ( Set -> Set ) ∋ ( ( λ x3240 -> x3240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3250 -> Bool ) ) ) $ ( Bool )
        d322 = if ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> d123 ) ) ) $ ( false ) then if d123 then false else d54 else if d74 then d318 else true
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> if false then x3280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d326 = if if d149 then true else d164 then ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> d190 ) ) ) $ ( d154 ) else if true then true else d134
        d329 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> ( ( Set -> Set ) ∋ ( ( λ x3330 -> if true then Bool else Bool ) ) ) $ ( x3320 ) ) ) ) $ ( if true then Bool else Bool )
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if x3310 then true else d264 ) ) ) $ ( false ) ) ) ) $ ( if false then d268 else d318 )
        d334 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d334 = ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> if d301 then true else d32 ) ) ) $ ( if false then d43 else d280 )
        d337 : if true then if false then Bool else Bool else if false then Bool else Bool
        d337 = if ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> d123 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> true ) ) ) $ ( d268 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> x3400 ) ) ) $ ( false )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3430 -> if true then x3430 else Bool ) ) ) $ ( if false then Bool else Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> if d296 then d154 else true ) ) ) $ ( if d289 then true else false )
        d344 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> if true then Bool else x3470 ) ) ) $ ( if false then Bool else Bool )
        d344 = if ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> false ) ) ) $ ( d219 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> x3460 ) ) ) $ ( false ) else if true then false else false
        d348 : if false then if true then Bool else Bool else if true then Bool else Bool
        d348 = if ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> x3500 ) ) ) $ ( d110 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> x3510 ) ) ) $ ( d184 )
        d352 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> ( ( Set -> Set ) ∋ ( ( λ x3550 -> if false then Bool else x3540 ) ) ) $ ( x3540 ) ) ) ) $ ( if true then Bool else Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> if false then d26 else d149 ) ) ) $ ( if false then false else false )
        d356 : if true then if true then Bool else Bool else if true then Bool else Bool
        d356 = if if true then false else false then if true then d201 else d289 else if d214 then d157 else false
        d357 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3590 -> Bool ) ) ) $ ( Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> if true then d276 else true ) ) ) $ ( if d107 then d238 else false )
        d360 : if true then ( ( Set -> Set ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if x3610 then false else x3610 ) ) ) $ ( if true then d180 else d268 )
        d363 : if true then ( ( Set -> Set ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d363 = if ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> false ) ) ) $ ( d54 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> x3650 ) ) ) $ ( d329 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> d329 ) ) ) $ ( d5 )
        d368 : ( ( Set -> Set ) ∋ ( ( λ x3710 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d368 = if ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> x3690 ) ) ) $ ( d26 ) then if d107 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> true ) ) ) $ ( d264 )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x3740 -> ( ( Set -> Set ) ∋ ( ( λ x3750 -> if false then Bool else x3740 ) ) ) $ ( x3740 ) ) ) ) $ ( if false then Bool else Bool )
        d372 = if ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> false ) ) ) $ ( d301 ) then if d280 then d5 else d10 else if d304 then d344 else d308
        d376 : if false then ( ( Set -> Set ) ∋ ( ( λ x3790 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> if x3770 then false else d264 ) ) ) $ ( d32 ) ) ) ) $ ( if true then true else d360 )
        d380 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3820 -> Bool ) ) ) $ ( Bool )
        d380 = if if false then false else d81 then ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> d154 ) ) ) $ ( d352 ) else if false then d242 else false
        d383 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3860 -> Bool ) ) ) $ ( Bool )
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if d130 then x3850 else x3850 ) ) ) $ ( d89 ) ) ) ) $ ( if d348 then false else true )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3880 -> if false then x3880 else x3880 ) ) ) $ ( if false then Bool else Bool )
        d387 = if if false then false else d15 then if true then true else true else if true then d78 else true
        d389 : ( ( Set -> Set ) ∋ ( ( λ x3910 -> if true then x3910 else Bool ) ) ) $ ( if true then Bool else Bool )
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> if d190 then d313 else x3900 ) ) ) $ ( if false then d296 else d149 )
        d392 : if false then ( ( Set -> Set ) ∋ ( ( λ x3940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d392 = ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> if false then x3930 else x3930 ) ) ) $ ( if true then false else true )
        d395 : ( ( Set -> Set ) ∋ ( ( λ x3980 -> ( ( Set -> Set ) ∋ ( ( λ x3990 -> if false then x3990 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if x3960 then false else d157 ) ) ) $ ( d356 ) ) ) ) $ ( if d39 then false else true )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> ( ( Set -> Set ) ∋ ( ( λ x4040 -> if true then x4040 else x4040 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d400 = if ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> d176 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> true ) ) ) $ ( d284 ) else if true then false else true
        d405 : ( ( Set -> Set ) ∋ ( ( λ x4080 -> ( ( Set -> Set ) ∋ ( ( λ x4090 -> if false then Bool else x4080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if false then d102 else x4060 ) ) ) $ ( d107 ) ) ) ) $ ( if d21 then false else d15 )
        d410 : ( ( Set -> Set ) ∋ ( ( λ x4130 -> ( ( Set -> Set ) ∋ ( ( λ x4140 -> if true then Bool else x4130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d410 = if if false then true else d284 then ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> d107 ) ) ) $ ( d264 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> true ) ) ) $ ( true )
        d415 : if true then ( ( Set -> Set ) ∋ ( ( λ x4170 -> x4170 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4180 -> Bool ) ) ) $ ( Bool )
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> if d326 then x4160 else d304 ) ) ) $ ( if d292 then true else false )
        d419 : if true then ( ( Set -> Set ) ∋ ( ( λ x4210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4220 -> Bool ) ) ) $ ( Bool )
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> if x4200 then d160 else x4200 ) ) ) $ ( if false then true else false )
        d423 : if false then ( ( Set -> Set ) ∋ ( ( λ x4260 -> x4260 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4270 -> Bool ) ) ) $ ( Bool )
        d423 = if ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> true ) ) ) $ ( d173 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> x4250 ) ) ) $ ( false ) else if d58 then false else d184
        d428 : if true then ( ( Set -> Set ) ∋ ( ( λ x4300 -> x4300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4310 -> Bool ) ) ) $ ( Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> if d273 then d264 else x4290 ) ) ) $ ( if d8 then true else d173 )
        d432 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4350 -> Bool ) ) ) $ ( Bool )
        d432 = if if d428 then d368 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> x4330 ) ) ) $ ( d276 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> x4340 ) ) ) $ ( d68 )
        d436 : if true then ( ( Set -> Set ) ∋ ( ( λ x4380 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d436 = if ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> x4370 ) ) ) $ ( d337 ) then if false then true else d234 else if true then d207 else d201
        d439 : if false then if false then Bool else Bool else if false then Bool else Bool
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> if d47 then true else true ) ) ) $ ( x4400 ) ) ) ) $ ( if d26 then d226 else true )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if true then x4440 else Bool ) ) ) $ ( if true then Bool else Bool )
        d442 = if ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> x4430 ) ) ) $ ( d395 ) then if false then d289 else d197 else if false then true else true
        d445 : if true then ( ( Set -> Set ) ∋ ( ( λ x4480 -> x4480 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4490 -> Bool ) ) ) $ ( Bool )
        d445 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> false ) ) ) $ ( d228 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> true ) ) ) $ ( true )
        d450 : if false then if true then Bool else Bool else if false then Bool else Bool
        d450 = ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> if d68 then d84 else d197 ) ) ) $ ( true ) ) ) ) $ ( if true then d154 else true )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x4560 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> if x4550 then d322 else d89 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d51 )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4600 -> ( ( Set -> Set ) ∋ ( ( λ x4610 -> if false then x4610 else x4600 ) ) ) $ ( x4600 ) ) ) ) $ ( if true then Bool else Bool )
        d457 = if ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> d184 ) ) ) $ ( d123 ) then if d164 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> x4590 ) ) ) $ ( d329 )
        d462 : ( ( Set -> Set ) ∋ ( ( λ x4630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d462 = if if d234 then d214 else true then if true then true else d405 else if d141 then false else false
        d464 : if false then ( ( Set -> Set ) ∋ ( ( λ x4670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4680 -> x4680 ) ) ) $ ( Bool )
        d464 = ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> if d194 then true else true ) ) ) $ ( d368 ) ) ) ) $ ( if d180 then false else d160 )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x4710 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d469 = if ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> d457 ) ) ) $ ( false ) then if true then false else false else if d51 then d228 else false
        d472 : ( ( Set -> Set ) ∋ ( ( λ x4750 -> ( ( Set -> Set ) ∋ ( ( λ x4760 -> if false then Bool else Bool ) ) ) $ ( x4750 ) ) ) ) $ ( if true then Bool else Bool )
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if true then x4730 else x4730 ) ) ) $ ( true ) ) ) ) $ ( if d348 then d226 else false )
        d477 : if false then if false then Bool else Bool else if true then Bool else Bool
        d477 = if if d154 then true else d54 then if true then d400 else d344 else ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> x4780 ) ) ) $ ( d380 )
        d479 : ( ( Set -> Set ) ∋ ( ( λ x4810 -> ( ( Set -> Set ) ∋ ( ( λ x4820 -> if true then Bool else x4820 ) ) ) $ ( x4810 ) ) ) ) $ ( if true then Bool else Bool )
        d479 = ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> if false then true else true ) ) ) $ ( if d58 then false else d184 )
        d483 : ( ( Set -> Set ) ∋ ( ( λ x4850 -> ( ( Set -> Set ) ∋ ( ( λ x4860 -> if true then x4850 else Bool ) ) ) $ ( x4850 ) ) ) ) $ ( if true then Bool else Bool )
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> if false then false else x4840 ) ) ) $ ( if d110 then false else true )
        d487 : if false then if false then Bool else Bool else if true then Bool else Bool
        d487 = ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> if true then x4890 else true ) ) ) $ ( true ) ) ) ) $ ( if false then d251 else false )
        d490 : if true then ( ( Set -> Set ) ∋ ( ( λ x4920 -> x4920 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d490 = ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> if d68 then d464 else x4910 ) ) ) $ ( if d304 then true else false )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4960 -> if true then Bool else x4960 ) ) ) $ ( if false then Bool else Bool )
        d493 = if if false then d368 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> d98 ) ) ) $ ( d58 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> d368 ) ) ) $ ( false )
        d497 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> ( ( Set -> Set ) ∋ ( ( λ x5000 -> if true then Bool else x5000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d497 = if ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> true ) ) ) $ ( d415 ) then if false then d490 else d329 else if d63 then true else false
        d501 : if false then if true then Bool else Bool else if true then Bool else Bool
        d501 = if ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> x5020 ) ) ) $ ( d301 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> d400 ) ) ) $ ( d207 ) else if false then d322 else false
        d504 : if false then ( ( Set -> Set ) ∋ ( ( λ x5060 -> x5060 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> if false then false else x5050 ) ) ) $ ( if true then true else true )
        d507 : ( ( Set -> Set ) ∋ ( ( λ x5090 -> if false then x5090 else Bool ) ) ) $ ( if true then Bool else Bool )
        d507 = ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> if d15 then d344 else false ) ) ) $ ( if d405 then true else d326 )
        d510 : if false then if true then Bool else Bool else if true then Bool else Bool
        d510 = if ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> true ) ) ) $ ( d432 ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> true ) ) ) $ ( true )
        d513 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> if false then Bool else x5150 ) ) ) $ ( if false then Bool else Bool )
        d513 = if if d318 then d276 else d368 then if d78 then d47 else d126 else ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> true ) ) ) $ ( d110 )
        d516 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5190 -> x5190 ) ) ) $ ( Bool )
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> if x5180 then d138 else true ) ) ) $ ( x5170 ) ) ) ) $ ( if false then false else false )
        d520 : ( ( Set -> Set ) ∋ ( ( λ x5230 -> ( ( Set -> Set ) ∋ ( ( λ x5240 -> if true then x5230 else x5240 ) ) ) $ ( x5230 ) ) ) ) $ ( if true then Bool else Bool )
        d520 = if ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> d450 ) ) ) $ ( d234 ) then if d169 then d32 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> false ) ) ) $ ( d190 )
        d525 : ( ( Set -> Set ) ∋ ( ( λ x5280 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d525 = if ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> d507 ) ) ) $ ( d232 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> x5270 ) ) ) $ ( d102 ) else if d439 then true else true
        d529 : ( ( Set -> Set ) ∋ ( ( λ x5310 -> ( ( Set -> Set ) ∋ ( ( λ x5320 -> if true then Bool else x5310 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> if x5300 then d234 else x5300 ) ) ) $ ( if d462 then true else false )
        d533 : ( ( Set -> Set ) ∋ ( ( λ x5350 -> ( ( Set -> Set ) ∋ ( ( λ x5360 -> if false then x5360 else Bool ) ) ) $ ( x5350 ) ) ) ) $ ( if true then Bool else Bool )
        d533 = if ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> d110 ) ) ) $ ( true ) then if d457 then d479 else false else if d337 then true else d264
        d537 : ( ( Set -> Set ) ∋ ( ( λ x5380 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d537 = if if d479 then d450 else true then if true then d130 else d445 else if d520 then d8 else false
        d539 : ( ( Set -> Set ) ∋ ( ( λ x5410 -> if true then Bool else x5410 ) ) ) $ ( if true then Bool else Bool )
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> if true then d419 else true ) ) ) $ ( if d389 then true else d289 )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x5440 -> ( ( Set -> Set ) ∋ ( ( λ x5450 -> if false then x5440 else x5450 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> if false then d289 else true ) ) ) $ ( if false then true else false )
        d546 : ( ( Set -> Set ) ∋ ( ( λ x5480 -> ( ( Set -> Set ) ∋ ( ( λ x5490 -> if false then x5490 else Bool ) ) ) $ ( x5480 ) ) ) ) $ ( if false then Bool else Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> if d472 then true else d273 ) ) ) $ ( if true then false else false )
        d550 : if true then if false then Bool else Bool else if false then Bool else Bool
        d550 = ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> if true then true else d542 ) ) ) $ ( false ) ) ) ) $ ( if d247 then d348 else d539 )
        d553 : if true then ( ( Set -> Set ) ∋ ( ( λ x5560 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d553 = ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> if false then x5550 else d392 ) ) ) $ ( d160 ) ) ) ) $ ( if d63 then d247 else true )
        d557 : ( ( Set -> Set ) ∋ ( ( λ x5590 -> if false then x5590 else Bool ) ) ) $ ( if true then Bool else Bool )
        d557 = if if d490 then d222 else d119 then if false then false else d442 else ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> d357 ) ) ) $ ( true )
        d560 : ( ( Set -> Set ) ∋ ( ( λ x5620 -> ( ( Set -> Set ) ∋ ( ( λ x5630 -> if false then x5620 else x5630 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d560 = ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> if x5610 then d497 else x5610 ) ) ) $ ( if d21 then true else d102 )
        d564 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5650 -> Bool ) ) ) $ ( Bool )
        d564 = if if d134 then d190 else d284 then if d318 then d68 else true else if d383 then true else d102
        d566 : ( ( Set -> Set ) ∋ ( ( λ x5680 -> ( ( Set -> Set ) ∋ ( ( λ x5690 -> if false then Bool else x5690 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> if x5670 then false else false ) ) ) $ ( if true then d37 else false )