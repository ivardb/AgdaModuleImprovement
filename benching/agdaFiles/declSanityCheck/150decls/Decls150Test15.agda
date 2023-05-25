module Decls150Test15  where
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
        d1 : if true then ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( false )
        d5 : if false then if true then Bool else Bool else if true then Bool else Bool
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( false ) then if false then false else d1 else if false then d1 else d1
        d7 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then x100 else x100 ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if x90 then x80 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = if ( ( Bool -> Bool ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( d5 ) then ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( d5 ) else if d7 then true else false
        d15 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then Bool else x160 ) ) ) $ ( if true then Bool else Bool )
        d15 = if if true then d1 else d1 then if d7 then d1 else d11 else if d1 then d11 else false
        d17 : if false then ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if false then false else d1 ) ) ) $ ( if d7 then d15 else d1 )
        d21 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x230 -> Bool ) ) ) $ ( Bool )
        d21 = if if false then true else d5 then if true then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x220 -> true ) ) ) $ ( false )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if false then Bool else x270 ) ) ) $ ( if true then Bool else Bool )
        d24 = if ( ( Bool -> Bool ) ∋ ( ( λ x250 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( true ) else if true then true else d21
        d28 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if x290 then d24 else false ) ) ) $ ( if d5 then false else true )
        d31 : if false then ( ( Set -> Set ) ∋ ( ( λ x330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d31 = if if true then d11 else d28 then ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d15 ) ) ) $ ( d5 ) else if false then false else d21
        d34 : if false then ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if x350 then d15 else true ) ) ) $ ( if false then true else d28 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if false then x390 else Bool ) ) ) $ ( if true then Bool else Bool )
        d37 = if if d31 then d34 else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d17 ) ) ) $ ( d5 ) else if true then true else d28
        d40 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if false then true else d17 ) ) ) $ ( d1 ) ) ) ) $ ( if d21 then d15 else false )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x460 -> if true then x460 else x460 ) ) ) $ ( if false then Bool else Bool )
        d44 = if if false then true else d5 then if d34 then false else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( d37 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if true then Bool else x490 ) ) ) $ ( if false then Bool else Bool )
        d47 = if if true then true else true then if d11 then false else d7 else ( ( Bool -> Bool ) ∋ ( ( λ x480 -> d17 ) ) ) $ ( true )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then x520 else x530 ) ) ) $ ( x520 ) ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if d47 then x510 else false ) ) ) $ ( if d47 then true else d1 )
        d54 : if true then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if d5 then true else d11 then ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d1 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x560 -> true ) ) ) $ ( d24 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> if true then x610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if d31 then d40 else d17 ) ) ) $ ( x580 ) ) ) ) $ ( if d37 then d47 else d47 )
        d62 : if true then ( ( Set -> Set ) ∋ ( ( λ x630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool )
        d62 = if if d21 then false else true then if true then d34 else d57 else if false then d5 else true
        d65 : ( ( Set -> Set ) ∋ ( ( λ x670 -> ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then x670 else x680 ) ) ) $ ( x670 ) ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if false then d28 else true ) ) ) $ ( if true then d57 else true )
        d69 : if false then ( ( Set -> Set ) ∋ ( ( λ x710 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d69 = if if d1 then false else d62 then ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d57 ) ) ) $ ( false ) else if d31 then true else false
        d72 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool )
        d72 = if ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d28 ) ) ) $ ( d7 ) then ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d54 ) ) ) $ ( false ) else if true then d40 else d11
        d76 : if true then if true then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if d24 then x770 else d28 ) ) ) $ ( if true then d5 else false )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x810 -> if true then Bool else x810 ) ) ) $ ( if false then Bool else Bool )
        d78 = if ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d47 ) ) ) $ ( true ) then if d28 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( true )
        d82 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if d31 then true else false ) ) ) $ ( if false then false else true )
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if x860 then x860 else true ) ) ) $ ( if false then true else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> if true then x900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if d21 then x880 else false ) ) ) $ ( if d47 then d76 else d17 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then x930 else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if d37 then x920 else x920 ) ) ) $ ( if d54 then true else true )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x970 -> if true then Bool else x970 ) ) ) $ ( x960 ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if false then false else false ) ) ) $ ( if false then d50 else d78 )
        d98 : if true then ( ( Set -> Set ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d98 = if if d57 then d85 else true then ( ( Bool -> Bool ) ∋ ( ( λ x990 -> false ) ) ) $ ( d91 ) else if false then d85 else false
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then Bool else x1040 ) ) ) $ ( if true then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if x1030 then false else true ) ) ) $ ( x1020 ) ) ) ) $ ( if d98 then true else d24 )
        d105 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1080 -> Bool ) ) ) $ ( Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if d47 then x1060 else d7 ) ) ) $ ( false ) ) ) ) $ ( if d21 then true else d85 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> if false then x1120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if false then d87 else x1100 ) ) ) $ ( x1100 ) ) ) ) $ ( if d94 then d69 else d57 )
        d114 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if d78 then x1150 else false ) ) ) $ ( d91 ) ) ) ) $ ( if true then d24 else d50 )
        d118 : if true then if false then Bool else Bool else if false then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if true then false else false ) ) ) $ ( if false then d76 else true )
        d120 : if true then ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( Bool )
        d120 = if if d24 then d76 else true then if false then d44 else d114 else if true then true else d62
        d123 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if false then x1240 else d85 ) ) ) $ ( if true then d28 else d44 )
        d126 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1290 -> Bool ) ) ) $ ( Bool )
        d126 = if ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> d17 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> false ) ) ) $ ( d69 ) else if d105 then false else true
        d130 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> ( ( Set -> Set ) ∋ ( ( λ x1330 -> if true then x1320 else x1330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> true ) ) ) $ ( d24 ) then if d31 then d11 else true else if true then d24 else d120
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> if false then x1360 else Bool ) ) ) $ ( if true then Bool else Bool )
        d134 = if if true then d98 else d114 then if d94 then d34 else d37 else ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> d17 ) ) ) $ ( true )
        d137 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1400 -> Bool ) ) ) $ ( Bool )
        d137 = if ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> true ) ) ) $ ( true ) then if d105 then d47 else d31 else ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( d120 )
        d141 : if false then ( ( Set -> Set ) ∋ ( ( λ x1430 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d141 = if if d62 then d34 else d76 then ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> d118 ) ) ) $ ( d87 ) else if false then false else d72
        d144 : if true then ( ( Set -> Set ) ∋ ( ( λ x1460 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if d72 then x1450 else x1450 ) ) ) $ ( if true then true else d69 )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> if true then x1480 else Bool ) ) ) $ ( x1480 ) ) ) ) $ ( if true then Bool else Bool )
        d147 = if if d118 then false else true then if d5 then d24 else d57 else if false then true else true
        d150 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then Bool else x1530 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d150 = if ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d62 ) ) ) $ ( true ) then if d44 then d65 else d5 else if false then true else d118
        d154 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if x1550 then d57 else x1550 ) ) ) $ ( x1550 ) ) ) ) $ ( if d134 then true else false )
        d158 : if false then ( ( Set -> Set ) ∋ ( ( λ x1600 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( Bool )
        d158 = if ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( true ) then if true then false else d126 else if true then true else d141
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> if true then false else d98 ) ) ) $ ( if d150 then false else false )
        d166 : if true then ( ( Set -> Set ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if x1670 then false else d31 ) ) ) $ ( if false then d44 else d87 )
        d169 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( Bool )
        d169 = if ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> d1 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> d144 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( d166 )
        d174 : if false then if false then Bool else Bool else if false then Bool else Bool
        d174 = if ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> d91 ) ) ) $ ( d69 ) then if false then d147 else d150 else ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> d24 ) ) ) $ ( d82 )
        d177 : if false then ( ( Set -> Set ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( Bool )
        d177 = if ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( false ) else if true then false else true
        d182 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then x1850 else x1850 ) ) ) $ ( if false then Bool else Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if d141 then true else d28 ) ) ) $ ( x1830 ) ) ) ) $ ( if true then d94 else d17 )
        d186 : if true then ( ( Set -> Set ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if false then false else x1880 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d158 )
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> if false then x1930 else Bool ) ) ) $ ( if false then Bool else Bool )
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if true then x1920 else d34 ) ) ) $ ( if false then true else d109 )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> ( ( Set -> Set ) ∋ ( ( λ x1970 -> if false then x1960 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d194 = if if true then true else d65 then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( d169 ) else if true then d31 else d182
        d198 : if false then ( ( Set -> Set ) ∋ ( ( λ x1990 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d198 = if if true then false else d98 then if true then d182 else d54 else if true then true else d78
        d200 : ( ( Set -> Set ) ∋ ( ( λ x2030 -> if false then Bool else x2030 ) ) ) $ ( if false then Bool else Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> if true then x2020 else d105 ) ) ) $ ( true ) ) ) ) $ ( if true then d105 else true )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x2070 -> ( ( Set -> Set ) ∋ ( ( λ x2080 -> if false then x2080 else x2070 ) ) ) $ ( x2070 ) ) ) ) $ ( if false then Bool else Bool )
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> if d47 then false else false ) ) ) $ ( x2050 ) ) ) ) $ ( if d85 then false else d130 )
        d209 : if false then if false then Bool else Bool else if true then Bool else Bool
        d209 = if ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> d150 ) ) ) $ ( false ) then if d98 then d150 else d162 else if d204 then d158 else false
        d211 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if true then x2140 else x2140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> if false then false else x2120 ) ) ) $ ( d198 ) ) ) ) $ ( if d7 then d82 else d24 )
        d216 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2190 -> x2190 ) ) ) $ ( Bool )
        d216 = if if false then false else d69 then ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> d47 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> d5 ) ) ) $ ( d82 )
        d220 : if false then if false then Bool else Bool else if true then Bool else Bool
        d220 = if ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d11 ) ) ) $ ( d186 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> true ) ) ) $ ( d31 ) else if d21 then false else d50
        d223 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2260 -> Bool ) ) ) $ ( Bool )
        d223 = if if true then d87 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> d150 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> d220 ) ) ) $ ( true )
        d227 : ( ( Set -> Set ) ∋ ( ( λ x2300 -> ( ( Set -> Set ) ∋ ( ( λ x2310 -> if true then Bool else x2300 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d227 = if if true then d162 else d147 then ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> d109 ) ) ) $ ( d194 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> d31 ) ) ) $ ( true )
        d232 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> if true then x2330 else Bool ) ) ) $ ( if true then Bool else Bool )
        d232 = if if true then true else d174 then if d211 then false else false else if d11 then d216 else true
        d234 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2370 -> Bool ) ) ) $ ( Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> if x2360 then true else x2350 ) ) ) $ ( true ) ) ) ) $ ( if true then d78 else false )
        d238 : if true then if true then Bool else Bool else if false then Bool else Bool
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> if x2400 then x2400 else false ) ) ) $ ( false ) ) ) ) $ ( if d7 then true else d182 )
        d241 : ( ( Set -> Set ) ∋ ( ( λ x2430 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if true then d211 else x2420 ) ) ) $ ( if d87 then true else false )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x2470 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d244 = if ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> true ) ) ) $ ( true ) then if d137 then d169 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> x2460 ) ) ) $ ( true )
        d248 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then x2490 else Bool ) ) ) $ ( if true then Bool else Bool )
        d248 = if if true then d72 else true then if d134 then d87 else d28 else if d72 then d40 else false
        d250 : ( ( Set -> Set ) ∋ ( ( λ x2520 -> ( ( Set -> Set ) ∋ ( ( λ x2530 -> if false then Bool else x2520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> if d118 then d241 else false ) ) ) $ ( if d109 then d144 else d130 )
        d254 : if true then ( ( Set -> Set ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> if x2550 then false else d200 ) ) ) $ ( if true then d200 else false )
        d257 : if true then ( ( Set -> Set ) ∋ ( ( λ x2590 -> x2590 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if x2580 then d177 else x2580 ) ) ) $ ( if true then true else false )
        d260 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2630 -> Bool ) ) ) $ ( Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if d37 then true else x2620 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d264 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2660 -> Bool ) ) ) $ ( Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> if true then x2650 else x2650 ) ) ) $ ( if d223 then false else d21 )
        d267 : ( ( Set -> Set ) ∋ ( ( λ x2700 -> if true then Bool else x2700 ) ) ) $ ( if false then Bool else Bool )
        d267 = if ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> true ) ) ) $ ( true ) then if d37 then false else d141 else ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> x2690 ) ) ) $ ( d31 )
        d271 : ( ( Set -> Set ) ∋ ( ( λ x2730 -> ( ( Set -> Set ) ∋ ( ( λ x2740 -> if true then x2740 else x2740 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d271 = if if d82 then true else d78 then ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> false ) ) ) $ ( d5 ) else if false then d21 else d11
        d275 : ( ( Set -> Set ) ∋ ( ( λ x2780 -> ( ( Set -> Set ) ∋ ( ( λ x2790 -> if true then x2790 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d275 = ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> if true then x2770 else d174 ) ) ) $ ( d166 ) ) ) ) $ ( if d182 then d54 else false )
        d280 : ( ( Set -> Set ) ∋ ( ( λ x2820 -> if true then Bool else x2820 ) ) ) $ ( if true then Bool else Bool )
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> if d267 then d275 else x2810 ) ) ) $ ( if true then d17 else false )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> if false then false else d147 ) ) ) $ ( if true then d37 else d238 )
        d286 : ( ( Set -> Set ) ∋ ( ( λ x2880 -> if false then Bool else x2880 ) ) ) $ ( if true then Bool else Bool )
        d286 = if if true then d87 else d220 then ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> x2870 ) ) ) $ ( true ) else if d257 then d54 else d158
        d289 : if false then ( ( Set -> Set ) ∋ ( ( λ x2910 -> x2910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2920 -> x2920 ) ) ) $ ( Bool )
        d289 = if ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> false ) ) ) $ ( d87 ) then if false then false else false else if d147 then true else true
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2960 -> ( ( Set -> Set ) ∋ ( ( λ x2970 -> if true then Bool else x2960 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> if true then true else d191 ) ) ) $ ( x2940 ) ) ) ) $ ( if d283 then d31 else false )
        d298 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> ( ( Set -> Set ) ∋ ( ( λ x3020 -> if false then x3020 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> if true then true else true ) ) ) $ ( true ) ) ) ) $ ( if d234 then d150 else false )
        d303 : ( ( Set -> Set ) ∋ ( ( λ x3050 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> if false then false else d250 ) ) ) $ ( if false then false else true )
        d306 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( Bool )
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> if false then x3080 else false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d40 )
        d310 : if false then ( ( Set -> Set ) ∋ ( ( λ x3120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3130 -> Bool ) ) ) $ ( Bool )
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> if d82 then true else x3110 ) ) ) $ ( if d126 then d293 else true )
        d314 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> if false then x3150 else x3150 ) ) ) $ ( if false then Bool else Bool )
        d314 = if if d50 then false else true then if false then d158 else false else if true then d194 else d204
        d316 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> ( ( Set -> Set ) ∋ ( ( λ x3190 -> if true then x3180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d316 = if if d220 then d216 else d303 then ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> true ) ) ) $ ( d241 ) else if d169 then true else d123
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3220 -> ( ( Set -> Set ) ∋ ( ( λ x3230 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> if x3210 then d85 else x3210 ) ) ) $ ( if false then true else false )
        d324 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3260 -> x3260 ) ) ) $ ( Bool )
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> if x3250 then x3250 else d7 ) ) ) $ ( if d87 then d130 else false )
        d327 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then Bool else x3300 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> if false then x3280 else x3280 ) ) ) $ ( if d275 then d50 else d250 )
        d331 : ( ( Set -> Set ) ∋ ( ( λ x3330 -> ( ( Set -> Set ) ∋ ( ( λ x3340 -> if false then x3330 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d331 = if if false then d11 else d123 then ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( d248 ) else if d34 then false else false
        d335 : if true then ( ( Set -> Set ) ∋ ( ( λ x3360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3370 -> Bool ) ) ) $ ( Bool )
        d335 = if if true then true else false then if true then d316 else true else if d87 then d293 else d293
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3400 -> ( ( Set -> Set ) ∋ ( ( λ x3410 -> if false then x3400 else x3400 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> if x3390 then false else true ) ) ) $ ( if true then false else d286 )
        d342 : if false then ( ( Set -> Set ) ∋ ( ( λ x3440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3450 -> x3450 ) ) ) $ ( Bool )
        d342 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> d191 ) ) ) $ ( false ) else if true then d37 else true
        d346 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d346 = if ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> d298 ) ) ) $ ( d150 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> d227 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> x3490 ) ) ) $ ( d85 )
        d351 : if true then ( ( Set -> Set ) ∋ ( ( λ x3540 -> x3540 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d351 = if if false then d44 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> d275 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> d76 ) ) ) $ ( true )
        d355 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3570 -> x3570 ) ) ) $ ( Bool )
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> if x3560 then false else x3560 ) ) ) $ ( if true then false else true )
        d358 : if true then ( ( Set -> Set ) ∋ ( ( λ x3600 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d358 = ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if x3590 then false else d338 ) ) ) $ ( if d289 then false else d232 )
        d361 : if false then if false then Bool else Bool else if false then Bool else Bool
        d361 = if if d275 then d147 else d101 then ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> d1 ) ) ) $ ( true )
        d364 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( Bool )
        d364 = if ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> d47 ) ) ) $ ( false ) else if false then d47 else d283
        d368 : if false then ( ( Set -> Set ) ∋ ( ( λ x3700 -> x3700 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if d248 then false else d54 ) ) ) $ ( if false then d358 else false )
        d371 : if false then ( ( Set -> Set ) ∋ ( ( λ x3730 -> x3730 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3740 -> Bool ) ) ) $ ( Bool )
        d371 = if if false then true else d303 then if d169 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> true ) ) ) $ ( true )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then Bool else x3770 ) ) ) $ ( if true then Bool else Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> if d87 then x3760 else x3760 ) ) ) $ ( if d87 then d31 else true )
        d378 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if x3800 then false else d331 ) ) ) $ ( false ) ) ) ) $ ( if d293 then false else true )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> if true then x3860 else x3860 ) ) ) $ ( if true then Bool else Bool )
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( d198 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> d238 ) ) ) $ ( true )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> if false then Bool else x3900 ) ) ) $ ( if false then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if true then d34 else x3890 ) ) ) $ ( d267 ) ) ) ) $ ( if d31 then true else d191 )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x3930 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if d335 then x3920 else true ) ) ) $ ( if false then false else false )
        d394 : ( ( Set -> Set ) ∋ ( ( λ x3960 -> ( ( Set -> Set ) ∋ ( ( λ x3970 -> if false then x3960 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d394 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> x3950 ) ) ) $ ( d87 ) else if d31 then true else true
        d398 : if false then ( ( Set -> Set ) ∋ ( ( λ x4010 -> x4010 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4020 -> Bool ) ) ) $ ( Bool )
        d398 = if ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> x3990 ) ) ) $ ( d162 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> x4000 ) ) ) $ ( d293 ) else if d200 then false else d44
        d403 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( Bool )
        d403 = if ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> d144 ) ) ) $ ( true ) then if true then false else false else if d316 then false else false
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4090 -> if true then Bool else x4090 ) ) ) $ ( if true then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> if true then x4080 else x4070 ) ) ) $ ( x4070 ) ) ) ) $ ( if true then false else true )
        d410 : if false then if true then Bool else Bool else if true then Bool else Bool
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> if x4110 then d76 else d244 ) ) ) $ ( if d286 then true else d314 )
        d412 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> ( ( Set -> Set ) ∋ ( ( λ x4150 -> if false then Bool else x4140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d412 = if ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> d338 ) ) ) $ ( false ) then if true then true else false else if true then false else true
        d416 : if true then ( ( Set -> Set ) ∋ ( ( λ x4190 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d416 = if ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> d150 ) ) ) $ ( d209 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> true ) ) ) $ ( true ) else if false then false else true
        d420 : ( ( Set -> Set ) ∋ ( ( λ x4220 -> ( ( Set -> Set ) ∋ ( ( λ x4230 -> if true then x4220 else Bool ) ) ) $ ( x4220 ) ) ) ) $ ( if true then Bool else Bool )
        d420 = if if d1 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> false ) ) ) $ ( d209 ) else if true then true else d5
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4260 -> ( ( Set -> Set ) ∋ ( ( λ x4270 -> if true then Bool else Bool ) ) ) $ ( x4260 ) ) ) ) $ ( if true then Bool else Bool )
        d424 = if if d87 then d220 else true then if false then d34 else d391 else ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> d15 ) ) ) $ ( false )
        d428 : if false then ( ( Set -> Set ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if true then d331 else true ) ) ) $ ( d21 ) ) ) ) $ ( if d298 then d31 else d182 )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4340 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if x4330 then d211 else false ) ) ) $ ( if d324 then false else false )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if false then x4380 else x4380 ) ) ) $ ( if true then Bool else Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> if x4370 then x4370 else false ) ) ) $ ( d114 ) ) ) ) $ ( if d424 then d21 else false )
        d439 : if false then ( ( Set -> Set ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d439 = if if d21 then d28 else d118 then if false then d147 else d28 else if false then true else false
        d441 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> ( ( Set -> Set ) ∋ ( ( λ x4450 -> if true then x4440 else x4440 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d441 = if ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> x4420 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> x4430 ) ) ) $ ( true ) else if false then d137 else false
        d446 : if false then ( ( Set -> Set ) ∋ ( ( λ x4490 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4500 -> Bool ) ) ) $ ( Bool )
        d446 = if ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> true ) ) ) $ ( d15 ) then if true then d40 else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> d209 ) ) ) $ ( d169 )
        d451 : if true then ( ( Set -> Set ) ∋ ( ( λ x4530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4540 -> x4540 ) ) ) $ ( Bool )
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> if true then x4520 else d280 ) ) ) $ ( if d109 then true else d15 )
        d455 : if false then ( ( Set -> Set ) ∋ ( ( λ x4570 -> x4570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4580 -> x4580 ) ) ) $ ( Bool )
        d455 = if ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> d283 ) ) ) $ ( d98 ) then if d394 then true else d398 else if true then true else true
        d459 : if true then ( ( Set -> Set ) ∋ ( ( λ x4620 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if x4610 then d31 else x4600 ) ) ) $ ( false ) ) ) ) $ ( if d368 then true else false )
        d463 : if true then ( ( Set -> Set ) ∋ ( ( λ x4660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4670 -> Bool ) ) ) $ ( Bool )
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> if x4640 then d412 else false ) ) ) $ ( d37 ) ) ) ) $ ( if d211 then false else false )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4700 -> ( ( Set -> Set ) ∋ ( ( λ x4710 -> if false then Bool else Bool ) ) ) $ ( x4700 ) ) ) ) $ ( if false then Bool else Bool )
        d468 = if if d331 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> false ) ) ) $ ( d439 ) else if d65 then true else d105
        d472 : if true then ( ( Set -> Set ) ∋ ( ( λ x4760 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d472 = if ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> x4730 ) ) ) $ ( d147 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> d283 ) ) ) $ ( d254 )
        d477 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4790 -> Bool ) ) ) $ ( Bool )
        d477 = ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> if false then d5 else x4780 ) ) ) $ ( if d260 then d382 else true )
        d480 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4830 -> x4830 ) ) ) $ ( Bool )
        d480 = if ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> d91 ) ) ) $ ( d351 ) then if d424 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> false ) ) ) $ ( true )
        d484 : if true then if true then Bool else Bool else if true then Bool else Bool
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> if false then d65 else d31 ) ) ) $ ( if true then false else d355 )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4880 -> if true then Bool else x4880 ) ) ) $ ( if true then Bool else Bool )
        d486 = if if d342 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( d144 ) else if d327 then d382 else d439
        d489 : ( ( Set -> Set ) ∋ ( ( λ x4910 -> ( ( Set -> Set ) ∋ ( ( λ x4920 -> if false then x4910 else Bool ) ) ) $ ( x4910 ) ) ) ) $ ( if true then Bool else Bool )
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> if false then d114 else true ) ) ) $ ( if true then d211 else d459 )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4960 -> ( ( Set -> Set ) ∋ ( ( λ x4970 -> if true then Bool else Bool ) ) ) $ ( x4960 ) ) ) ) $ ( if false then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> if d324 then x4950 else x4950 ) ) ) $ ( d162 ) ) ) ) $ ( if false then false else d394 )
        d498 : ( ( Set -> Set ) ∋ ( ( λ x5010 -> if false then x5010 else Bool ) ) ) $ ( if true then Bool else Bool )
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> if d141 then d375 else d355 ) ) ) $ ( d87 ) ) ) ) $ ( if d342 then d82 else true )
        d502 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5040 -> x5040 ) ) ) $ ( Bool )
        d502 = if ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> true ) ) ) $ ( d244 ) then if false then d489 else d182 else if d368 then d351 else d439
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d505 = if if false then false else d432 then ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> x5060 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> x5070 ) ) ) $ ( d105 )
        d509 : if true then ( ( Set -> Set ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5120 -> x5120 ) ) ) $ ( Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if d21 then x5100 else false ) ) ) $ ( if true then d493 else false )
        d513 : if true then ( ( Set -> Set ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d513 = ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> if d137 then x5140 else x5140 ) ) ) $ ( if false then d289 else true )
        d516 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> if false then Bool else x5190 ) ) ) $ ( if false then Bool else Bool )
        d516 = if if false then d406 else d498 then ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> d50 ) ) ) $ ( d204 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> false ) ) ) $ ( d54 )
        d520 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5230 -> x5230 ) ) ) $ ( Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> if d114 then false else false ) ) ) $ ( x5210 ) ) ) ) $ ( if d391 then false else d5 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x5260 -> ( ( Set -> Set ) ∋ ( ( λ x5270 -> if false then x5270 else Bool ) ) ) $ ( x5260 ) ) ) ) $ ( if true then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> if true then false else true ) ) ) $ ( if d31 then false else d435 )
        d528 : ( ( Set -> Set ) ∋ ( ( λ x5310 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d528 = if ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> x5290 ) ) ) $ ( true ) then if d391 then false else d91 else ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> d211 ) ) ) $ ( false )
        d532 : ( ( Set -> Set ) ∋ ( ( λ x5340 -> if true then x5340 else x5340 ) ) ) $ ( if true then Bool else Bool )
        d532 = if if true then d5 else false then if d62 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> x5330 ) ) ) $ ( true )
        d535 : ( ( Set -> Set ) ∋ ( ( λ x5370 -> if false then Bool else x5370 ) ) ) $ ( if false then Bool else Bool )
        d535 = if ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> false ) ) ) $ ( true ) then if d403 then d34 else true else if true then d47 else d532
        d538 : ( ( Set -> Set ) ∋ ( ( λ x5410 -> ( ( Set -> Set ) ∋ ( ( λ x5420 -> if true then Bool else x5410 ) ) ) $ ( x5410 ) ) ) ) $ ( if false then Bool else Bool )
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> if d87 then false else d286 ) ) ) $ ( d177 ) ) ) ) $ ( if d502 then d44 else false )
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> if true then Bool else x5460 ) ) ) $ ( if true then Bool else Bool )
        d543 = if ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> false ) ) ) $ ( d477 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> d410 ) ) ) $ ( d177 ) else if d264 then true else false