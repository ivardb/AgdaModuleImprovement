module Decls150Test8  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else x40 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x20 then x20 else x20 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then Bool else x70 ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if x60 then false else d1 ) ) ) $ ( if false then false else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if d1 then false else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( true ) else if true then d1 else false
        d12 : if false then ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x160 -> Bool ) ) ) $ ( Bool )
        d12 = if ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( d8 ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( d5 )
        d17 : if true then if false then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d5 then d1 else d1 ) ) ) $ ( d5 ) ) ) ) $ ( if d12 then d12 else d12 )
        d20 : if false then ( ( Set -> Set ) ∋ ( ( λ x220 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x230 -> x230 ) ) ) $ ( Bool )
        d20 = if if false then d5 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( false ) else if d17 then d12 else false
        d24 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( Bool )
        d24 = if if d1 then false else true then if false then false else d17 else ( ( Bool -> Bool ) ∋ ( ( λ x250 -> d17 ) ) ) $ ( d20 )
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = if ( ( Bool -> Bool ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( true ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d12 ) ) ) $ ( d12 )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x320 -> ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then Bool else x330 ) ) ) $ ( x320 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if ( ( Bool -> Bool ) ∋ ( ( λ x310 -> true ) ) ) $ ( true ) then if d24 then false else false else if d27 then false else d24
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = if ( ( Bool -> Bool ) ∋ ( ( λ x350 -> false ) ) ) $ ( false ) then if true then true else d1 else if d24 then true else d1
        d36 : ( ( Set -> Set ) ∋ ( ( λ x390 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> if true then Bool else x400 ) ) ) $ ( x390 ) ) ) ) $ ( if true then Bool else Bool )
        d36 = if ( ( Bool -> Bool ) ∋ ( ( λ x370 -> d24 ) ) ) $ ( d27 ) then if d30 then false else d30 else ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d1 ) ) ) $ ( false )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x430 -> if true then x430 else x430 ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if x420 then d5 else false ) ) ) $ ( if d8 then d5 else d34 )
        d44 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if false then false else false ) ) ) $ ( if d20 then d24 else d12 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then Bool else x510 ) ) ) $ ( x500 ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if ( ( Bool -> Bool ) ∋ ( ( λ x480 -> true ) ) ) $ ( false ) then if true then false else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d44 ) ) ) $ ( false )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x550 -> ( ( Set -> Set ) ∋ ( ( λ x560 -> if true then Bool else x550 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if true then false else x530 ) ) ) $ ( d47 ) ) ) ) $ ( if false then d41 else d8 )
        d57 : if false then ( ( Set -> Set ) ∋ ( ( λ x590 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d57 = if ( ( Bool -> Bool ) ∋ ( ( λ x580 -> false ) ) ) $ ( false ) then if false then d5 else d17 else if false then d52 else d1
        d60 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x630 -> Bool ) ) ) $ ( Bool )
        d60 = if ( ( Bool -> Bool ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( d12 ) else if d17 then d52 else d44
        d64 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then Bool else x660 ) ) ) $ ( if true then Bool else Bool )
        d64 = if if d20 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( false ) else if false then true else d1
        d67 : if false then ( ( Set -> Set ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if x680 then d5 else d60 ) ) ) $ ( if d34 then d41 else false )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if true then Bool else x730 ) ) ) $ ( if true then Bool else Bool )
        d70 = if ( ( Bool -> Bool ) ∋ ( ( λ x710 -> false ) ) ) $ ( d12 ) then ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d36 ) ) ) $ ( d20 ) else if true then true else true
        d74 : ( ( Set -> Set ) ∋ ( ( λ x770 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> if true then Bool else Bool ) ) ) $ ( x770 ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if d24 then x760 else d70 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d79 : if true then if false then Bool else Bool else if false then Bool else Bool
        d79 = if ( ( Bool -> Bool ) ∋ ( ( λ x800 -> d44 ) ) ) $ ( d12 ) then if d17 then d1 else d41 else if d36 then d64 else true
        d81 : if false then ( ( Set -> Set ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x850 -> x850 ) ) ) $ ( Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if d60 then x820 else true ) ) ) $ ( x820 ) ) ) ) $ ( if d74 then false else false )
        d86 : if false then if false then Bool else Bool else if false then Bool else Bool
        d86 = if if d79 then d34 else false then if d17 then false else d57 else if true then true else true
        d87 : if false then ( ( Set -> Set ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if x880 then x880 else d41 ) ) ) $ ( if d20 then d52 else d79 )
        d90 : if false then ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if x920 then d36 else d86 ) ) ) $ ( false ) ) ) ) $ ( if d34 then true else d79 )
        d94 : if false then ( ( Set -> Set ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d94 = if ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d24 ) ) ) $ ( d57 ) then ( ( Bool -> Bool ) ∋ ( ( λ x960 -> d30 ) ) ) $ ( false ) else if false then d86 else d86
        d98 : if true then ( ( Set -> Set ) ∋ ( ( λ x1010 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( Bool )
        d98 = if if false then d30 else false then ( ( Bool -> Bool ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( d74 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> false ) ) ) $ ( d44 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then Bool else x1060 ) ) ) $ ( x1050 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if true then x1040 else false ) ) ) $ ( if false then d20 else d79 )
        d107 : if false then ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d107 = if ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> true ) ) ) $ ( true ) then if d86 then d94 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( d36 )
        d111 : if false then ( ( Set -> Set ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if true then d67 else true ) ) ) $ ( x1120 ) ) ) ) $ ( if true then d12 else d24 )
        d115 : if true then ( ( Set -> Set ) ∋ ( ( λ x1180 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d115 = if ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( d64 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> true ) ) ) $ ( d67 ) else if d57 then false else d17
        d119 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d119 = if if d24 then d52 else false then if true then true else d41 else ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> d86 ) ) ) $ ( true )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> ( ( Set -> Set ) ∋ ( ( λ x1250 -> if false then Bool else Bool ) ) ) $ ( x1240 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1230 then x1230 else d87 ) ) ) $ ( if false then false else d17 )
        d126 : if true then ( ( Set -> Set ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> if x1270 then d34 else x1280 ) ) ) $ ( false ) ) ) ) $ ( if true then d122 else true )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> if false then Bool else x1320 ) ) ) $ ( if true then Bool else Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> true ) ) ) $ ( d119 ) then if true then false else d111 else if true then d115 else true
        d133 : if false then ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1370 -> x1370 ) ) ) $ ( Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if true then false else d57 ) ) ) $ ( d24 ) ) ) ) $ ( if true then false else d57 )
        d138 : if false then ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1410 -> Bool ) ) ) $ ( Bool )
        d138 = if if d119 then d30 else d87 then ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> d44 ) ) ) $ ( d20 ) else if d34 then d133 else d74
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then Bool else x1440 ) ) ) $ ( x1440 ) ) ) ) $ ( if true then Bool else Bool )
        d142 = if if d107 then false else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> true ) ) ) $ ( d98 ) else if d60 then d8 else d5
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then x1500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d146 = if ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d74 ) ) ) $ ( d20 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( d52 )
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> if d41 then x1540 else x1540 ) ) ) $ ( true ) ) ) ) $ ( if d47 then false else d111 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> if false then Bool else Bool ) ) ) $ ( x1580 ) ) ) ) $ ( if false then Bool else Bool )
        d156 = if if true then d1 else d130 then if d103 then d8 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( d107 )
        d160 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if d8 then x1620 else d47 ) ) ) $ ( x1610 ) ) ) ) $ ( if d1 then d107 else false )
        d164 : if true then ( ( Set -> Set ) ∋ ( ( λ x1660 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> if false then d57 else true ) ) ) $ ( if d47 then false else false )
        d167 : if true then if false then Bool else Bool else if true then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if x1680 then true else false ) ) ) $ ( d20 ) ) ) ) $ ( if false then false else d30 )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then Bool else x1740 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d170 = if ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> d41 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( d98 ) else if d98 then false else d5
        d175 : if true then ( ( Set -> Set ) ∋ ( ( λ x1770 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1780 -> Bool ) ) ) $ ( Bool )
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if x1760 then d146 else false ) ) ) $ ( if d138 then true else d34 )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then x1810 else Bool ) ) ) $ ( if false then Bool else Bool )
        d179 = if if false then true else d152 then if d170 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( false )
        d182 : if false then if true then Bool else Bool else if true then Bool else Bool
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if x1840 then x1830 else d179 ) ) ) $ ( x1830 ) ) ) ) $ ( if d52 then d111 else true )
        d185 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1870 -> Bool ) ) ) $ ( Bool )
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if false then x1860 else x1860 ) ) ) $ ( if true then false else d44 )
        d188 : if false then if false then Bool else Bool else if true then Bool else Bool
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> if x1890 then d5 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d24 else false )
        d191 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1930 -> Bool ) ) ) $ ( Bool )
        d191 = if if true then false else true then if d17 then d27 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> true ) ) ) $ ( d119 )
        d194 : if false then ( ( Set -> Set ) ∋ ( ( λ x1970 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if d160 then d156 else d111 ) ) ) $ ( d20 ) ) ) ) $ ( if d152 then false else d122 )
        d198 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> ( ( Set -> Set ) ∋ ( ( λ x2010 -> if false then x2000 else Bool ) ) ) $ ( x2000 ) ) ) ) $ ( if false then Bool else Bool )
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if d1 then d188 else d47 ) ) ) $ ( if false then true else d90 )
        d202 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then x2050 else Bool ) ) ) $ ( if true then Bool else Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if x2040 then x2040 else d122 ) ) ) $ ( x2030 ) ) ) ) $ ( if true then false else true )
        d206 : if true then if true then Bool else Bool else if true then Bool else Bool
        d206 = if if false then d86 else true then if false then d170 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( d67 )
        d208 : ( ( Set -> Set ) ∋ ( ( λ x2100 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> if x2090 then true else true ) ) ) $ ( if d44 then false else false )
        d211 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> if true then Bool else x2130 ) ) ) $ ( if false then Bool else Bool )
        d211 = if if d179 then d126 else false then if d111 then false else d191 else ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( d119 )
        d214 : if true then ( ( Set -> Set ) ∋ ( ( λ x2170 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d214 = if ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> false ) ) ) $ ( false ) then if d70 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( false )
        d218 : if true then ( ( Set -> Set ) ∋ ( ( λ x2210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2220 -> x2220 ) ) ) $ ( Bool )
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> if true then x2200 else d126 ) ) ) $ ( x2190 ) ) ) ) $ ( if true then false else d138 )
        d223 : if true then ( ( Set -> Set ) ∋ ( ( λ x2250 -> x2250 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> if false then false else x2240 ) ) ) $ ( if d87 then d67 else true )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x2280 -> ( ( Set -> Set ) ∋ ( ( λ x2290 -> if true then x2290 else x2290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> if d156 then x2270 else x2270 ) ) ) $ ( if false then true else d27 )
        d230 : if true then ( ( Set -> Set ) ∋ ( ( λ x2320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( Bool )
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if d47 then d67 else x2310 ) ) ) $ ( if d146 then d47 else true )
        d234 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2360 -> Bool ) ) ) $ ( Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> if d191 then d74 else x2350 ) ) ) $ ( if false then d64 else d214 )
        d237 : ( ( Set -> Set ) ∋ ( ( λ x2390 -> if true then Bool else x2390 ) ) ) $ ( if true then Bool else Bool )
        d237 = if if d81 then d182 else d27 then ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> d211 ) ) ) $ ( d119 ) else if d191 then d87 else d5
        d240 : if false then if true then Bool else Bool else if false then Bool else Bool
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if d223 then x2410 else true ) ) ) $ ( d237 ) ) ) ) $ ( if d12 then d194 else d211 )
        d243 : if true then ( ( Set -> Set ) ∋ ( ( λ x2460 -> x2460 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d243 = if ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> d211 ) ) ) $ ( true ) then if true then d98 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> d17 ) ) ) $ ( d5 )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> ( ( Set -> Set ) ∋ ( ( λ x2500 -> if true then x2490 else Bool ) ) ) $ ( x2490 ) ) ) ) $ ( if true then Bool else Bool )
        d247 = if ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> d179 ) ) ) $ ( true ) then if d47 then d1 else false else if d74 then true else d234
        d251 : if false then if true then Bool else Bool else if false then Bool else Bool
        d251 = if if d226 then d194 else d67 then if true then d188 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> false ) ) ) $ ( d138 )
        d253 : ( ( Set -> Set ) ∋ ( ( λ x2550 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if d160 then true else x2540 ) ) ) $ ( if false then true else true )
        d256 : if true then if true then Bool else Bool else if false then Bool else Bool
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if false then false else x2570 ) ) ) $ ( true ) ) ) ) $ ( if true then d86 else d103 )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2600 -> ( ( Set -> Set ) ∋ ( ( λ x2610 -> if false then Bool else Bool ) ) ) $ ( x2600 ) ) ) ) $ ( if false then Bool else Bool )
        d259 = if if true then false else true then if d126 then true else d218 else if true then d230 else true
        d262 : if true then ( ( Set -> Set ) ∋ ( ( λ x2640 -> x2640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2650 -> Bool ) ) ) $ ( Bool )
        d262 = if if d167 then d107 else true then if d156 then d126 else d214 else ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> d1 ) ) ) $ ( d223 )
        d266 : ( ( Set -> Set ) ∋ ( ( λ x2690 -> if true then x2690 else x2690 ) ) ) $ ( if false then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> if true then true else d214 ) ) ) $ ( d60 ) ) ) ) $ ( if d262 then d90 else false )
        d270 : ( ( Set -> Set ) ∋ ( ( λ x2710 -> ( ( Set -> Set ) ∋ ( ( λ x2720 -> if true then x2720 else x2710 ) ) ) $ ( x2710 ) ) ) ) $ ( if true then Bool else Bool )
        d270 = if if d208 then true else d243 then if d259 then d206 else d240 else if true then d208 else false
        d273 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( Bool )
        d273 = if if true then d8 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> d115 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> x2750 ) ) ) $ ( d122 )
        d277 : if true then if true then Bool else Bool else if false then Bool else Bool
        d277 = if if d30 then d52 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> d146 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> x2790 ) ) ) $ ( d133 )
        d280 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( Bool )
        d280 = if if d175 then d79 else d270 then ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> d103 ) ) ) $ ( d179 ) else if false then false else d79
        d283 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then Bool else x2870 ) ) ) $ ( x2860 ) ) ) ) $ ( if false then Bool else Bool )
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> if x2850 then d175 else d67 ) ) ) $ ( x2840 ) ) ) ) $ ( if d103 then d111 else d130 )
        d288 : if true then ( ( Set -> Set ) ∋ ( ( λ x2900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2910 -> Bool ) ) ) $ ( Bool )
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> if x2890 then x2890 else d273 ) ) ) $ ( if true then d27 else d208 )
        d292 : if false then if false then Bool else Bool else if false then Bool else Bool
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> if d270 then x2930 else d194 ) ) ) $ ( if d34 then true else d138 )
        d294 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2970 -> x2970 ) ) ) $ ( Bool )
        d294 = if ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> true ) ) ) $ ( false ) then if d87 then false else d266 else ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> d259 ) ) ) $ ( d146 )
        d298 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> if false then x3000 else true ) ) ) $ ( x2990 ) ) ) ) $ ( if false then d294 else true )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if true then Bool else Bool ) ) ) $ ( x3040 ) ) ) ) $ ( if true then Bool else Bool )
        d302 = if if d119 then true else false then if true then d259 else d179 else ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> d259 ) ) ) $ ( true )
        d306 : if true then ( ( Set -> Set ) ∋ ( ( λ x3080 -> x3080 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if x3070 then x3070 else d86 ) ) ) $ ( if true then true else false )
        d309 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> ( ( Set -> Set ) ∋ ( ( λ x3130 -> if false then Bool else x3130 ) ) ) $ ( x3120 ) ) ) ) $ ( if true then Bool else Bool )
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> if x3110 then x3100 else d185 ) ) ) $ ( true ) ) ) ) $ ( if true then d34 else true )
        d314 : if true then ( ( Set -> Set ) ∋ ( ( λ x3150 -> x3150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d314 = if if d12 then d251 else d234 then if false then false else false else if true then d44 else false
        d316 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> ( ( Set -> Set ) ∋ ( ( λ x3190 -> if true then x3180 else x3180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> if false then x3170 else d288 ) ) ) $ ( if d251 then d60 else d280 )
        d320 : if true then ( ( Set -> Set ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> if x3210 then true else true ) ) ) $ ( if false then d175 else true )
        d323 : if true then if false then Bool else Bool else if false then Bool else Bool
        d323 = if if true then false else false then if d67 then true else d198 else ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> d247 ) ) ) $ ( d234 )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> if false then x3290 else x3290 ) ) ) $ ( if true then Bool else Bool )
        d325 = if ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> d230 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> false ) ) ) $ ( d138 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> d251 ) ) ) $ ( false )
        d330 : if false then if false then Bool else Bool else if false then Bool else Bool
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if d253 then d119 else d156 ) ) ) $ ( x3310 ) ) ) ) $ ( if d277 then false else false )
        d333 : ( ( Set -> Set ) ∋ ( ( λ x3340 -> if false then Bool else x3340 ) ) ) $ ( if false then Bool else Bool )
        d333 = if if true then d36 else true then if d191 then false else true else if d259 then d277 else true
        d335 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> if x3360 then true else d164 ) ) ) $ ( if d103 then true else false )
        d338 : if false then if true then Bool else Bool else if true then Bool else Bool
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> if x3390 then x3390 else true ) ) ) $ ( if d335 then false else false )
        d340 : if true then ( ( Set -> Set ) ∋ ( ( λ x3430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3440 -> x3440 ) ) ) $ ( Bool )
        d340 = if ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> d86 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> d280 ) ) ) $ ( d87 ) else if true then true else true
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> ( ( Set -> Set ) ∋ ( ( λ x3480 -> if true then Bool else Bool ) ) ) $ ( x3470 ) ) ) ) $ ( if false then Bool else Bool )
        d345 = if ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> d277 ) ) ) $ ( d218 ) then if true then d107 else false else if d198 then d142 else true
        d349 : ( ( Set -> Set ) ∋ ( ( λ x3520 -> if false then x3520 else Bool ) ) ) $ ( if true then Bool else Bool )
        d349 = if if true then d340 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> true ) ) ) $ ( d90 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> x3510 ) ) ) $ ( d64 )
        d353 : if false then ( ( Set -> Set ) ∋ ( ( λ x3560 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d353 = if ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> d133 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> x3550 ) ) ) $ ( d167 ) else if d194 then d316 else false
        d357 : ( ( Set -> Set ) ∋ ( ( λ x3580 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d357 = if if false then d52 else d160 then if d335 then false else d256 else if d138 then true else false
        d359 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3620 -> Bool ) ) ) $ ( Bool )
        d359 = if ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> d126 ) ) ) $ ( false ) then if true then d27 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> x3610 ) ) ) $ ( false )
        d363 : ( ( Set -> Set ) ∋ ( ( λ x3660 -> if false then x3660 else x3660 ) ) ) $ ( if false then Bool else Bool )
        d363 = if ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> x3640 ) ) ) $ ( d67 ) then if false then d156 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> x3650 ) ) ) $ ( true )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x3700 -> ( ( Set -> Set ) ∋ ( ( λ x3710 -> if true then x3710 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if d41 then true else false ) ) ) $ ( true ) ) ) ) $ ( if false then d44 else true )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x3740 -> ( ( Set -> Set ) ∋ ( ( λ x3750 -> if false then Bool else x3750 ) ) ) $ ( x3740 ) ) ) ) $ ( if false then Bool else Bool )
        d372 = if if d191 then d12 else false then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> d30 ) ) ) $ ( true )
        d376 : if false then ( ( Set -> Set ) ∋ ( ( λ x3780 -> x3780 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if d126 then d119 else x3770 ) ) ) $ ( if true then true else true )
        d379 : if false then ( ( Set -> Set ) ∋ ( ( λ x3820 -> x3820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3830 -> Bool ) ) ) $ ( Bool )
        d379 = if ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> x3800 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> false ) ) ) $ ( true ) else if true then false else d288
        d384 : if false then ( ( Set -> Set ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3860 -> Bool ) ) ) $ ( Bool )
        d384 = if if true then d185 else d259 then if true then true else d292 else if false then d353 else true
        d387 : if false then if true then Bool else Bool else if true then Bool else Bool
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if d57 then x3890 else d30 ) ) ) $ ( d280 ) ) ) ) $ ( if d338 then false else false )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> if false then Bool else x3920 ) ) ) $ ( if false then Bool else Bool )
        d390 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> d57 ) ) ) $ ( d384 ) else if d306 then d280 else d251
        d393 : ( ( Set -> Set ) ∋ ( ( λ x3950 -> if false then Bool else x3950 ) ) ) $ ( if true then Bool else Bool )
        d393 = if if d12 then false else false then if true then true else d103 else ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> true ) ) ) $ ( d259 )
        d396 : ( ( Set -> Set ) ∋ ( ( λ x3980 -> if false then x3980 else x3980 ) ) ) $ ( if false then Bool else Bool )
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if true then d251 else false ) ) ) $ ( if d316 then d335 else false )
        d399 : if false then ( ( Set -> Set ) ∋ ( ( λ x4010 -> x4010 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d399 = ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> if d60 then d202 else true ) ) ) $ ( if d294 then d27 else false )
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4050 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if d338 then x4030 else false ) ) ) $ ( false ) ) ) ) $ ( if d74 then d52 else true )
        d406 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4080 -> x4080 ) ) ) $ ( Bool )
        d406 = if if d393 then true else false then if true then true else d214 else ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> true ) ) ) $ ( true )
        d409 : if true then ( ( Set -> Set ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> if d396 then d138 else x4100 ) ) ) $ ( if true then d372 else true )
        d412 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> ( ( Set -> Set ) ∋ ( ( λ x4150 -> if false then Bool else x4140 ) ) ) $ ( x4140 ) ) ) ) $ ( if true then Bool else Bool )
        d412 = if if d57 then d298 else false then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> d167 ) ) ) $ ( false )
        d416 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4190 -> x4190 ) ) ) $ ( Bool )
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if x4180 then false else d292 ) ) ) $ ( d393 ) ) ) ) $ ( if d130 then d47 else d409 )
        d420 : if true then ( ( Set -> Set ) ∋ ( ( λ x4220 -> x4220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4230 -> Bool ) ) ) $ ( Bool )
        d420 = if ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> d316 ) ) ) $ ( d314 ) then if true then true else true else if false then d372 else d262
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> if true then x4270 else x4270 ) ) ) $ ( if true then Bool else Bool )
        d424 = if ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> x4250 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> x4260 ) ) ) $ ( false ) else if true then d8 else true
        d428 : if false then if true then Bool else Bool else if true then Bool else Bool
        d428 = if ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> true ) ) ) $ ( false ) else if d390 then false else true
        d431 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4330 -> Bool ) ) ) $ ( Bool )
        d431 = if if true then d402 else d179 then if d27 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> false ) ) ) $ ( false )
        d434 : if false then if true then Bool else Bool else if false then Bool else Bool
        d434 = if ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> true ) ) ) $ ( false ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d247 ) ) ) $ ( d170 )
        d437 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( Bool )
        d437 = if ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> x4380 ) ) ) $ ( d142 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> d277 ) ) ) $ ( true ) else if d243 then d396 else d60
        d441 : if false then ( ( Set -> Set ) ∋ ( ( λ x4440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4450 -> x4450 ) ) ) $ ( Bool )
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if x4420 then x4420 else false ) ) ) $ ( x4420 ) ) ) ) $ ( if true then false else d298 )
        d446 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> ( ( Set -> Set ) ∋ ( ( λ x4490 -> if true then x4490 else x4480 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d446 = if if true then d119 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> d24 ) ) ) $ ( d292 ) else if d338 then true else d64
        d450 : ( ( Set -> Set ) ∋ ( ( λ x4520 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d450 = ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> if false then d115 else x4510 ) ) ) $ ( if true then false else d130 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x4560 -> ( ( Set -> Set ) ∋ ( ( λ x4570 -> if true then Bool else x4560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> if d191 then x4550 else true ) ) ) $ ( d363 ) ) ) ) $ ( if d256 then true else true )
        d458 : if false then ( ( Set -> Set ) ∋ ( ( λ x4610 -> x4610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4620 -> Bool ) ) ) $ ( Bool )
        d458 = if ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> x4590 ) ) ) $ ( d223 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> d325 ) ) ) $ ( d8 ) else if d27 then d191 else true
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4650 -> ( ( Set -> Set ) ∋ ( ( λ x4660 -> if false then x4650 else Bool ) ) ) $ ( x4650 ) ) ) ) $ ( if false then Bool else Bool )
        d463 = if if true then false else d406 then ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( false ) else if false then d367 else d230
        d467 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> if false then Bool else x4690 ) ) ) $ ( if true then Bool else Bool )
        d467 = ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> if x4680 then d424 else d320 ) ) ) $ ( if d152 then true else d294 )
        d470 : if false then ( ( Set -> Set ) ∋ ( ( λ x4720 -> x4720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4730 -> Bool ) ) ) $ ( Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> if x4710 then x4710 else true ) ) ) $ ( if false then true else true )
        d474 : ( ( Set -> Set ) ∋ ( ( λ x4760 -> if false then x4760 else x4760 ) ) ) $ ( if true then Bool else Bool )
        d474 = if if false then d175 else d182 then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> false ) ) ) $ ( false )
        d477 : ( ( Set -> Set ) ∋ ( ( λ x4790 -> if false then x4790 else Bool ) ) ) $ ( if true then Bool else Bool )
        d477 = ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> if d74 then d259 else d188 ) ) ) $ ( if true then d359 else d359 )
        d480 : ( ( Set -> Set ) ∋ ( ( λ x4820 -> if false then Bool else x4820 ) ) ) $ ( if false then Bool else Bool )
        d480 = if if d167 then false else d446 then if d320 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> d126 ) ) ) $ ( d363 )
        d483 : if true then ( ( Set -> Set ) ∋ ( ( λ x4860 -> x4860 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> if d467 then x4850 else d223 ) ) ) $ ( false ) ) ) ) $ ( if true then d81 else true )
        d487 : ( ( Set -> Set ) ∋ ( ( λ x4890 -> if false then Bool else x4890 ) ) ) $ ( if false then Bool else Bool )
        d487 = if if d218 then true else d335 then if false then d57 else d138 else ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> x4880 ) ) ) $ ( false )
        d490 : ( ( Set -> Set ) ∋ ( ( λ x4930 -> ( ( Set -> Set ) ∋ ( ( λ x4940 -> if true then Bool else x4930 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d490 = if ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> d234 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> x4920 ) ) ) $ ( false ) else if true then d240 else d379
        d495 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> ( ( Set -> Set ) ∋ ( ( λ x4980 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d495 = if if true then d396 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> false ) ) ) $ ( false ) else if d458 then false else true
        d499 : if true then ( ( Set -> Set ) ∋ ( ( λ x5030 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d499 = if ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> d86 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> false ) ) ) $ ( d333 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> d237 ) ) ) $ ( d316 )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5060 -> if true then x5060 else x5060 ) ) ) $ ( if true then Bool else Bool )
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> if d349 then false else x5050 ) ) ) $ ( if d167 then false else d64 )
        d507 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5110 -> Bool ) ) ) $ ( Bool )
        d507 = if ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> x5080 ) ) ) $ ( d98 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> x5090 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> false ) ) ) $ ( d477 )
        d512 : if true then ( ( Set -> Set ) ∋ ( ( λ x5150 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d512 = if if false then d357 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( d335 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> x5140 ) ) ) $ ( true )
        d516 : if true then ( ( Set -> Set ) ∋ ( ( λ x5180 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d516 = if ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> x5170 ) ) ) $ ( d90 ) then if d111 then d345 else d130 else if true then d316 else d499
        d519 : ( ( Set -> Set ) ∋ ( ( λ x5210 -> ( ( Set -> Set ) ∋ ( ( λ x5220 -> if true then x5210 else Bool ) ) ) $ ( x5210 ) ) ) ) $ ( if false then Bool else Bool )
        d519 = if ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> true ) ) ) $ ( false ) then if d230 then d294 else d194 else if false then true else false
        d523 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> if d262 then d122 else false ) ) ) $ ( if true then true else d164 )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x5280 -> ( ( Set -> Set ) ∋ ( ( λ x5290 -> if true then x5280 else x5290 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d526 = ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if d87 then false else false ) ) ) $ ( if d152 then false else d111 )
        d530 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5320 -> x5320 ) ) ) $ ( Bool )
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> if d90 then x5310 else x5310 ) ) ) $ ( if d218 then d30 else d160 )
        d533 : ( ( Set -> Set ) ∋ ( ( λ x5350 -> if false then x5350 else x5350 ) ) ) $ ( if false then Bool else Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if d198 then d60 else d52 ) ) ) $ ( if false then true else false )
        d536 : if true then ( ( Set -> Set ) ∋ ( ( λ x5370 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d536 = if if d387 then true else true then if d1 then false else false else if false then d345 else d247
        d538 : ( ( Set -> Set ) ∋ ( ( λ x5390 -> ( ( Set -> Set ) ∋ ( ( λ x5400 -> if true then x5390 else Bool ) ) ) $ ( x5390 ) ) ) ) $ ( if false then Bool else Bool )
        d538 = if if true then d60 else d111 then if false then d402 else d470 else if d115 then d164 else true