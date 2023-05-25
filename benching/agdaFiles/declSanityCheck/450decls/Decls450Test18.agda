module Decls450Test18  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1 = if if true then true else true then if false then false else false else if false then false else false
        d3 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if d1 then false else x50 ) ) ) $ ( x40 ) ) ) ) $ ( if false then true else d1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then x100 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = if if d1 then d3 else d3 then ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x90 -> false ) ) ) $ ( d1 )
        d11 : if false then if true then Bool else Bool else if false then Bool else Bool
        d11 = if if true then true else true then if d3 then d1 else d7 else ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d1 ) ) ) $ ( false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then x160 else Bool ) ) ) $ ( x150 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = if ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( true ) then if false then d7 else d7 else if false then d7 else d1
        d17 : if false then ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if x190 then x190 else x190 ) ) ) $ ( x180 ) ) ) ) $ ( if d13 then d1 else true )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x230 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d21 = if if d11 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x220 -> x220 ) ) ) $ ( d17 ) else if d1 then true else true
        d24 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then x270 else Bool ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if d3 then x260 else x260 ) ) ) $ ( x250 ) ) ) ) $ ( if true then true else true )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if true then x300 else x300 ) ) ) $ ( if false then Bool else Bool )
        d28 = if if true then true else true then if true then false else d7 else ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d7 ) ) ) $ ( true )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then Bool else x350 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d31 = if ( ( Bool -> Bool ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x340 -> true ) ) ) $ ( false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if false then Bool else x390 ) ) ) $ ( if false then Bool else Bool )
        d37 = if if true then false else d13 then ( ( Bool -> Bool ) ∋ ( ( λ x380 -> false ) ) ) $ ( false ) else if d13 then d24 else d13
        d40 : ( ( Set -> Set ) ∋ ( ( λ x430 -> if false then Bool else x430 ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if false then x420 else d11 ) ) ) $ ( x410 ) ) ) ) $ ( if d24 then false else d31 )
        d44 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x470 -> x470 ) ) ) $ ( Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d40 then true else false ) ) ) $ ( d11 ) ) ) ) $ ( if d7 then false else d37 )
        d48 : if false then ( ( Set -> Set ) ∋ ( ( λ x500 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x510 -> Bool ) ) ) $ ( Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if x490 then x490 else d7 ) ) ) $ ( if d37 then d28 else true )
        d52 : if true then ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( Bool )
        d52 = if if false then true else true then if d7 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d11 ) ) ) $ ( d7 )
        d56 : if false then if false then Bool else Bool else if false then Bool else Bool
        d56 = if ( ( Bool -> Bool ) ∋ ( ( λ x570 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x580 -> d13 ) ) ) $ ( d24 ) else if true then false else true
        d59 : ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then Bool else x610 ) ) ) $ ( if true then Bool else Bool )
        d59 = if if d7 then false else d17 then ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( true ) else if false then d24 else false
        d62 : if false then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if d21 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x630 -> false ) ) ) $ ( d40 ) else if d3 then true else false
        d64 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if x650 then true else true ) ) ) $ ( if d40 then false else false )
        d67 : if true then if true then Bool else Bool else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if false then true else x680 ) ) ) $ ( if d7 then true else d24 )
        d69 : if false then ( ( Set -> Set ) ∋ ( ( λ x710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x720 -> Bool ) ) ) $ ( Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if false then x700 else d11 ) ) ) $ ( if false then true else d24 )
        d73 : if false then ( ( Set -> Set ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d73 = if if d59 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d37 ) ) ) $ ( d31 ) else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( true )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> if false then x800 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if true then false else d31 ) ) ) $ ( true ) ) ) ) $ ( if false then d73 else true )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if true then false else d69 ) ) ) $ ( if true then d52 else d48 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if true then Bool else x890 ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if x880 then true else d40 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x930 -> if true then x930 else x930 ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if d64 then d11 else x920 ) ) ) $ ( d82 ) ) ) ) $ ( if d11 then true else false )
        d94 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool )
        d94 = if if true then d24 else d7 then ( ( Bool -> Bool ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( d82 ) else if d21 then d3 else true
        d97 : if false then ( ( Set -> Set ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d97 = if ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d37 ) ) ) $ ( false ) then if d28 then d44 else false else ( ( Bool -> Bool ) ∋ ( ( λ x990 -> false ) ) ) $ ( d56 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if true then x1030 else x1030 ) ) ) $ ( if false then Bool else Bool )
        d101 = if if true then d97 else d17 then ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> d7 ) ) ) $ ( true ) else if false then true else false
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then Bool else x1060 ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d52 then false else x1050 ) ) ) $ ( if false then d94 else d3 )
        d107 : if false then ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d107 = if ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( false ) else if false then d56 else true
        d111 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if d86 then true else true ) ) ) $ ( x1120 ) ) ) ) $ ( if d31 then true else true )
        d115 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1180 -> Bool ) ) ) $ ( Bool )
        d115 = if ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> false ) ) ) $ ( d3 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> d3 ) ) ) $ ( true ) else if true then d69 else d94
        d119 : if true then if false then Bool else Bool else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1210 then true else x1200 ) ) ) $ ( x1200 ) ) ) ) $ ( if d24 then true else d97 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then x1270 else x1260 ) ) ) $ ( x1260 ) ) ) ) $ ( if false then Bool else Bool )
        d122 = if ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> false ) ) ) $ ( d56 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> d56 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> d17 ) ) ) $ ( d62 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> if true then Bool else x1320 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d128 = if if false then d17 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> d111 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> x1300 ) ) ) $ ( false )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> if false then x1350 else x1350 ) ) ) $ ( if false then Bool else Bool )
        d133 = if ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> true ) ) ) $ ( true ) then if d3 then d90 else d48 else if true then false else d111
        d136 : ( ( Set -> Set ) ∋ ( ( λ x1390 -> ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then x1390 else Bool ) ) ) $ ( x1390 ) ) ) ) $ ( if false then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if x1370 then d13 else false ) ) ) $ ( d97 ) ) ) ) $ ( if d94 then true else true )
        d141 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1430 -> Bool ) ) ) $ ( Bool )
        d141 = if if d24 then d104 else false then if d67 then d17 else d56 else ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> d69 ) ) ) $ ( false )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> if true then x1460 else x1460 ) ) ) $ ( if true then Bool else Bool )
        d144 = if ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> false ) ) ) $ ( true ) then if false then false else d133 else if d122 then d67 else d3
        d147 : if false then if false then Bool else Bool else if true then Bool else Bool
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> if x1480 then x1480 else x1480 ) ) ) $ ( if false then d111 else true )
        d149 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1510 -> Bool ) ) ) $ ( Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if d7 then x1500 else d31 ) ) ) $ ( if d17 then false else true )
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then Bool else x1530 ) ) ) $ ( if true then Bool else Bool )
        d152 = if if false then d94 else d48 then if d122 then d77 else d136 else if true then d122 else false
        d154 : if false then if false then Bool else Bool else if false then Bool else Bool
        d154 = if if true then false else d69 then if false then true else true else if d24 then d40 else d64
        d155 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool )
        d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if x1560 then false else x1560 ) ) ) $ ( if d133 then d40 else d13 )
        d158 : if false then ( ( Set -> Set ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> if d48 then x1590 else false ) ) ) $ ( x1590 ) ) ) ) $ ( if true then true else d147 )
        d162 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> if d52 then x1630 else false ) ) ) $ ( x1630 ) ) ) ) $ ( if d122 then d141 else false )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> ( ( Set -> Set ) ∋ ( ( λ x1690 -> if true then x1680 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if x1670 then true else d77 ) ) ) $ ( if d158 then true else false )
        d170 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if x1710 then x1710 else false ) ) ) $ ( if false then d97 else d7 )
        d173 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> if true then Bool else x1750 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d173 = if ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( d73 ) then if d3 then true else false else if false then d122 else d17
        d177 : if false then if true then Bool else Bool else if true then Bool else Bool
        d177 = if ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> true ) ) ) $ ( d82 ) then if false then true else true else if d119 then d48 else d141
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> if false then Bool else Bool ) ) ) $ ( x1810 ) ) ) ) $ ( if false then Bool else Bool )
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> if d77 then d56 else x1800 ) ) ) $ ( if d48 then false else false )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then x1850 else x1850 ) ) ) $ ( if false then Bool else Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if x1840 then true else false ) ) ) $ ( if false then false else true )
        d186 : if true then ( ( Set -> Set ) ∋ ( ( λ x1890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1900 -> x1900 ) ) ) $ ( Bool )
        d186 = if ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> false ) ) ) $ ( d44 ) else if d62 then false else d149
        d191 : if false then ( ( Set -> Set ) ∋ ( ( λ x1930 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( Bool )
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if true then false else d48 ) ) ) $ ( if false then d149 else true )
        d195 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1980 -> Bool ) ) ) $ ( Bool )
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> x1960 ) ) ) $ ( d107 ) then if d101 then false else d21 else ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( d24 )
        d199 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> if false then Bool else x2010 ) ) ) $ ( if true then Bool else Bool )
        d199 = if ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> x2000 ) ) ) $ ( true ) then if d17 then true else false else if d177 then d11 else d3
        d202 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then x2050 else Bool ) ) ) $ ( if false then Bool else Bool )
        d202 = if ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( d37 ) then if d183 then d13 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> true ) ) ) $ ( false )
        d206 : if false then if false then Bool else Bool else if false then Bool else Bool
        d206 = if if d21 then true else true then if d90 then d144 else true else if false then d67 else false
        d207 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d207 = if if false then d44 else d28 then ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> d186 ) ) ) $ ( d119 ) else if false then true else d107
        d210 : if true then ( ( Set -> Set ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2120 -> Bool ) ) ) $ ( Bool )
        d210 = if if false then false else d69 then if false then d119 else true else if d152 then true else true
        d213 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( Bool )
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if x2140 then d206 else d155 ) ) ) $ ( d147 ) ) ) ) $ ( if d191 then d147 else true )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> if false then x2190 else x2190 ) ) ) $ ( if true then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> if x2180 then false else d202 ) ) ) $ ( if true then false else true )
        d220 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> if d170 then false else d179 ) ) ) $ ( if true then true else true )
        d223 : if false then ( ( Set -> Set ) ∋ ( ( λ x2250 -> x2250 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d223 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> true ) ) ) $ ( false ) else if true then d186 else d170
        d226 : if true then ( ( Set -> Set ) ∋ ( ( λ x2280 -> x2280 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> if true then x2270 else d170 ) ) ) $ ( if d170 then true else false )
        d229 : if true then if false then Bool else Bool else if false then Bool else Bool
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if false then false else true ) ) ) $ ( true ) ) ) ) $ ( if false then d28 else true )
        d232 : if false then if true then Bool else Bool else if true then Bool else Bool
        d232 = if if false then true else true then if true then true else d62 else ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> true ) ) ) $ ( d147 )
        d234 : ( ( Set -> Set ) ∋ ( ( λ x2370 -> if true then Bool else x2370 ) ) ) $ ( if false then Bool else Bool )
        d234 = if ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> false ) ) ) $ ( d122 ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> true ) ) ) $ ( d149 )
        d238 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> ( ( Set -> Set ) ∋ ( ( λ x2420 -> if false then x2420 else x2410 ) ) ) $ ( x2410 ) ) ) ) $ ( if true then Bool else Bool )
        d238 = if ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> d229 ) ) ) $ ( d199 ) else if d62 then d202 else d191
        d243 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> if false then x2460 else x2460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> if false then x2450 else d64 ) ) ) $ ( x2440 ) ) ) ) $ ( if false then false else d31 )
        d248 : ( ( Set -> Set ) ∋ ( ( λ x2500 -> if false then Bool else x2500 ) ) ) $ ( if false then Bool else Bool )
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> if d13 then false else x2490 ) ) ) $ ( if true then d206 else d128 )
        d251 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if d206 then d155 else true ) ) ) $ ( if false then false else d213 )
        d255 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> ( ( Set -> Set ) ∋ ( ( λ x2590 -> if false then x2590 else x2590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d255 = if ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> d213 ) ) ) $ ( d243 ) then if d199 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( true )
        d260 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> if true then x2620 else Bool ) ) ) $ ( if true then Bool else Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> if x2610 then false else x2610 ) ) ) $ ( if d21 then d173 else d149 )
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2650 -> if true then x2650 else Bool ) ) ) $ ( if true then Bool else Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if x2640 then false else x2640 ) ) ) $ ( if false then d155 else true )
        d266 : ( ( Set -> Set ) ∋ ( ( λ x2690 -> if false then Bool else x2690 ) ) ) $ ( if false then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> if false then true else true ) ) ) $ ( x2670 ) ) ) ) $ ( if true then d31 else d122 )
        d270 : if true then if true then Bool else Bool else if true then Bool else Bool
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if false then false else false ) ) ) $ ( if d195 then d101 else d210 )
        d272 : ( ( Set -> Set ) ∋ ( ( λ x2760 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d272 = if ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> d263 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> d119 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> false ) ) ) $ ( false )
        d277 : if true then ( ( Set -> Set ) ∋ ( ( λ x2790 -> x2790 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2800 -> Bool ) ) ) $ ( Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if false then d82 else false ) ) ) $ ( if false then d52 else false )
        d281 : if true then if true then Bool else Bool else if false then Bool else Bool
        d281 = if if d133 then false else d97 then if false then d7 else true else if true then false else d248
        d282 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then x2840 else x2850 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d282 = if if d272 then d136 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( d3 ) else if true then false else true
        d286 : if true then if true then Bool else Bool else if true then Bool else Bool
        d286 = ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> if d186 then x2870 else x2870 ) ) ) $ ( if false then true else true )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2890 -> ( ( Set -> Set ) ∋ ( ( λ x2900 -> if true then x2890 else x2900 ) ) ) $ ( x2890 ) ) ) ) $ ( if true then Bool else Bool )
        d288 = if if false then d248 else d97 then if d13 then d104 else true else if d195 then false else d3
        d291 : ( ( Set -> Set ) ∋ ( ( λ x2920 -> if false then x2920 else Bool ) ) ) $ ( if false then Bool else Bool )
        d291 = if if d223 then false else true then if false then false else d94 else if false then true else false
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> if false then x2950 else Bool ) ) ) $ ( if false then Bool else Bool )
        d293 = if if false then d147 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> x2940 ) ) ) $ ( true ) else if false then false else d122
        d296 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d296 = if ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> true ) ) ) $ ( true ) else if d133 then false else d226
        d300 : ( ( Set -> Set ) ∋ ( ( λ x3020 -> if false then x3020 else x3020 ) ) ) $ ( if true then Bool else Bool )
        d300 = if if false then true else d162 then if d260 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> x3010 ) ) ) $ ( false )
        d303 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> ( ( Set -> Set ) ∋ ( ( λ x3070 -> if false then x3060 else x3070 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> if false then true else d40 ) ) ) $ ( d206 ) ) ) ) $ ( if true then true else true )
        d308 : if true then ( ( Set -> Set ) ∋ ( ( λ x3100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> if d277 then false else d133 ) ) ) $ ( if d69 then true else d101 )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> if true then x3120 else x3120 ) ) ) $ ( if false then Bool else Bool )
        d311 = if if false then d191 else d128 then if false then false else d104 else if true then d183 else false
        d313 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> if true then Bool else x3150 ) ) ) $ ( if false then Bool else Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> if x3140 then d170 else true ) ) ) $ ( if false then true else d291 )
        d316 : if false then if true then Bool else Bool else if true then Bool else Bool
        d316 = if ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> d272 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> true ) ) ) $ ( false ) else if false then true else d128
        d319 : if false then ( ( Set -> Set ) ∋ ( ( λ x3210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> if false then d199 else true ) ) ) $ ( if true then true else d111 )
        d323 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3250 -> x3250 ) ) ) $ ( Bool )
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> if d170 then x3240 else x3240 ) ) ) $ ( if d31 then d40 else true )
        d326 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3270 -> Bool ) ) ) $ ( Bool )
        d326 = if if d308 then d281 else false then if d101 then true else true else if true then true else true
        d328 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> if true then Bool else x3290 ) ) ) $ ( if false then Bool else Bool )
        d328 = if if d223 then d179 else false then if d326 then d170 else d7 else if true then d94 else true
        d330 : if true then if false then Bool else Bool else if false then Bool else Bool
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if false then x3310 else x3310 ) ) ) $ ( if false then d291 else d263 )
        d332 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> ( ( Set -> Set ) ∋ ( ( λ x3360 -> if false then Bool else Bool ) ) ) $ ( x3350 ) ) ) ) $ ( if false then Bool else Bool )
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> if d300 then true else x3330 ) ) ) $ ( true ) ) ) ) $ ( if d282 then d296 else d300 )
        d337 : if true then ( ( Set -> Set ) ∋ ( ( λ x3390 -> x3390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3400 -> Bool ) ) ) $ ( Bool )
        d337 = ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> if d141 then d101 else x3380 ) ) ) $ ( if d59 then true else true )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> if true then x3440 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> if d337 then x3420 else d24 ) ) ) $ ( if true then false else d282 )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> if true then x3470 else Bool ) ) ) $ ( if false then Bool else Bool )
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> if x3460 then true else d277 ) ) ) $ ( if d155 then false else d155 )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> ( ( Set -> Set ) ∋ ( ( λ x3520 -> if true then x3520 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d348 = if ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> false ) ) ) $ ( d277 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> d77 ) ) ) $ ( true ) else if d288 then false else true
        d353 : if true then if true then Bool else Bool else if false then Bool else Bool
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> if d191 then d319 else x3550 ) ) ) $ ( x3540 ) ) ) ) $ ( if d155 then d220 else true )
        d356 : if true then if true then Bool else Bool else if false then Bool else Bool
        d356 = if ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> d62 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( true ) else if d104 then false else d341
        d359 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( Bool )
        d359 = if if d28 then d56 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> true ) ) ) $ ( d67 )
        d363 : if true then ( ( Set -> Set ) ∋ ( ( λ x3660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( Bool )
        d363 = if ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> true ) ) ) $ ( true ) then if d272 then d24 else d90 else ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> d332 ) ) ) $ ( false )
        d368 : if true then if false then Bool else Bool else if true then Bool else Bool
        d368 = if ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> x3690 ) ) ) $ ( d166 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> true ) ) ) $ ( d308 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> d59 ) ) ) $ ( d213 )
        d372 : if true then ( ( Set -> Set ) ∋ ( ( λ x3750 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> if false then d270 else x3730 ) ) ) $ ( x3730 ) ) ) ) $ ( if d303 then d69 else false )
        d376 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then Bool else x3790 ) ) ) $ ( x3780 ) ) ) ) $ ( if false then Bool else Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if d122 then false else x3770 ) ) ) $ ( if d101 then true else d122 )
        d380 : if true then ( ( Set -> Set ) ∋ ( ( λ x3820 -> x3820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3830 -> x3830 ) ) ) $ ( Bool )
        d380 = if if true then d376 else d319 then if true then d154 else d37 else ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( true )
        d384 : if true then if false then Bool else Bool else if true then Bool else Bool
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if x3850 then d272 else true ) ) ) $ ( if d31 then d286 else false )
        d386 : if false then if true then Bool else Bool else if true then Bool else Bool
        d386 = if if d31 then d122 else d199 then if d44 then d21 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> d341 ) ) ) $ ( d3 )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> ( ( Set -> Set ) ∋ ( ( λ x3910 -> if true then x3910 else Bool ) ) ) $ ( x3900 ) ) ) ) $ ( if false then Bool else Bool )
        d388 = if if d213 then d119 else true then if d363 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> x3890 ) ) ) $ ( d166 )
        d392 : if false then if true then Bool else Bool else if false then Bool else Bool
        d392 = if ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> d207 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> x3950 ) ) ) $ ( false )
        d396 : ( ( Set -> Set ) ∋ ( ( λ x3990 -> if false then x3990 else x3990 ) ) ) $ ( if false then Bool else Bool )
        d396 = if ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> x3970 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> d251 ) ) ) $ ( d234 ) else if true then d376 else d229
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> ( ( Set -> Set ) ∋ ( ( λ x4040 -> if false then x4040 else x4040 ) ) ) $ ( x4030 ) ) ) ) $ ( if true then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> if d202 then d207 else x4020 ) ) ) $ ( x4010 ) ) ) ) $ ( if d291 then d136 else true )
        d405 : ( ( Set -> Set ) ∋ ( ( λ x4080 -> ( ( Set -> Set ) ∋ ( ( λ x4090 -> if true then x4090 else x4080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if d149 then false else d191 ) ) ) $ ( d291 ) ) ) ) $ ( if d313 then true else true )
        d410 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> ( ( Set -> Set ) ∋ ( ( λ x4130 -> if false then x4120 else x4130 ) ) ) $ ( x4120 ) ) ) ) $ ( if false then Bool else Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> if d7 then x4110 else x4110 ) ) ) $ ( if true then false else d232 )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> ( ( Set -> Set ) ∋ ( ( λ x4180 -> if true then Bool else x4180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d414 = if ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> true ) ) ) $ ( d210 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> d226 ) ) ) $ ( true ) else if false then true else d270
        d419 : if true then if false then Bool else Bool else if false then Bool else Bool
        d419 = if ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> false ) ) ) $ ( d28 ) then if false then d21 else d220 else if false then false else d277
        d421 : if false then ( ( Set -> Set ) ∋ ( ( λ x4230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if false then false else x4220 ) ) ) $ ( if d166 then d179 else d300 )
        d424 : if true then ( ( Set -> Set ) ∋ ( ( λ x4270 -> x4270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4280 -> Bool ) ) ) $ ( Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> if d291 then d56 else x4250 ) ) ) $ ( x4250 ) ) ) ) $ ( if false then true else d348 )
        d429 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> ( ( Set -> Set ) ∋ ( ( λ x4310 -> if true then x4300 else Bool ) ) ) $ ( x4300 ) ) ) ) $ ( if false then Bool else Bool )
        d429 = if if true then true else d195 then if d421 then d44 else true else if true then true else true
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4340 -> ( ( Set -> Set ) ∋ ( ( λ x4350 -> if true then x4340 else x4340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d432 = if ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> x4330 ) ) ) $ ( d313 ) then if false then d62 else false else if d291 then d82 else d206
        d436 : if true then if false then Bool else Bool else if false then Bool else Bool
        d436 = if ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> x4370 ) ) ) $ ( d133 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> true ) ) ) $ ( d323 ) else if d429 then d37 else true
        d439 : if false then ( ( Set -> Set ) ∋ ( ( λ x4410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4420 -> Bool ) ) ) $ ( Bool )
        d439 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> d414 ) ) ) $ ( false ) else if true then true else false
        d443 : ( ( Set -> Set ) ∋ ( ( λ x4460 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d443 = if ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> d291 ) ) ) $ ( d376 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> x4450 ) ) ) $ ( true ) else if true then d59 else d220
        d447 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> ( ( Set -> Set ) ∋ ( ( λ x4490 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d447 = if if false then false else false then if true then d414 else d37 else if d183 then d386 else d308
        d450 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4520 -> Bool ) ) ) $ ( Bool )
        d450 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> x4510 ) ) ) $ ( true ) else if d368 then d119 else false
        d453 : ( ( Set -> Set ) ∋ ( ( λ x4550 -> ( ( Set -> Set ) ∋ ( ( λ x4560 -> if true then x4550 else x4550 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if false then x4540 else true ) ) ) $ ( if d332 then d166 else d356 )
        d457 : if false then ( ( Set -> Set ) ∋ ( ( λ x4600 -> x4600 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d457 = if ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> true ) ) ) $ ( d37 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> d372 ) ) ) $ ( d73 ) else if false then d263 else d97
        d461 : if true then if true then Bool else Bool else if false then Bool else Bool
        d461 = if ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> x4620 ) ) ) $ ( d48 ) then if true then false else d177 else if true then false else d238
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4660 -> ( ( Set -> Set ) ∋ ( ( λ x4670 -> if false then Bool else x4660 ) ) ) $ ( x4660 ) ) ) ) $ ( if true then Bool else Bool )
        d463 = if if true then d202 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( false )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> ( ( Set -> Set ) ∋ ( ( λ x4700 -> if false then x4700 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d468 = if if true then d359 else d286 then if d94 then false else d368 else if true then d419 else d368
        d471 : ( ( Set -> Set ) ∋ ( ( λ x4730 -> ( ( Set -> Set ) ∋ ( ( λ x4740 -> if true then Bool else x4730 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> if x4720 then d210 else false ) ) ) $ ( if true then d443 else true )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x4780 -> ( ( Set -> Set ) ∋ ( ( λ x4790 -> if true then x4780 else x4780 ) ) ) $ ( x4780 ) ) ) ) $ ( if false then Bool else Bool )
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if true then false else x4760 ) ) ) $ ( x4760 ) ) ) ) $ ( if true then false else d432 )
        d480 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4820 -> Bool ) ) ) $ ( Bool )
        d480 = if if d144 then false else d177 then if d149 then d21 else d226 else ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> d183 ) ) ) $ ( d316 )
        d483 : ( ( Set -> Set ) ∋ ( ( λ x4850 -> ( ( Set -> Set ) ∋ ( ( λ x4860 -> if false then x4860 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> if d144 then true else d277 ) ) ) $ ( if true then d149 else d439 )
        d487 : if true then if true then Bool else Bool else if false then Bool else Bool
        d487 = ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> if x4880 then false else true ) ) ) $ ( true ) ) ) ) $ ( if false then d37 else false )
        d490 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4930 -> x4930 ) ) ) $ ( Bool )
        d490 = if if true then false else d147 then ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> x4910 ) ) ) $ ( d461 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> x4920 ) ) ) $ ( d199 )
        d494 : ( ( Set -> Set ) ∋ ( ( λ x4950 -> ( ( Set -> Set ) ∋ ( ( λ x4960 -> if true then x4950 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d494 = if if d313 then d64 else true then if d173 then d152 else d255 else if d419 then false else true
        d497 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> ( ( Set -> Set ) ∋ ( ( λ x5000 -> if false then Bool else x5000 ) ) ) $ ( x4990 ) ) ) ) $ ( if true then Bool else Bool )
        d497 = if if d277 then false else d97 then if true then d291 else d380 else ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> x4980 ) ) ) $ ( true )
        d501 : ( ( Set -> Set ) ∋ ( ( λ x5040 -> ( ( Set -> Set ) ∋ ( ( λ x5050 -> if false then Bool else x5040 ) ) ) $ ( x5040 ) ) ) ) $ ( if true then Bool else Bool )
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> if d186 then x5020 else x5020 ) ) ) $ ( d291 ) ) ) ) $ ( if false then true else false )
        d506 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5090 -> x5090 ) ) ) $ ( Bool )
        d506 = if ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> d17 ) ) ) $ ( true ) then if true then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> false ) ) ) $ ( false )
        d510 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( Bool )
        d510 = if ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( d386 ) then if d419 then d59 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> x5120 ) ) ) $ ( false )
        d514 : ( ( Set -> Set ) ∋ ( ( λ x5170 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> if false then true else d64 ) ) ) $ ( d372 ) ) ) ) $ ( if d177 then false else d432 )
        d518 : ( ( Set -> Set ) ∋ ( ( λ x5200 -> ( ( Set -> Set ) ∋ ( ( λ x5210 -> if false then x5210 else x5210 ) ) ) $ ( x5200 ) ) ) ) $ ( if true then Bool else Bool )
        d518 = if ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> d154 ) ) ) $ ( true ) then if false then d277 else false else if d443 then d311 else false
        d522 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> ( ( Set -> Set ) ∋ ( ( λ x5260 -> if true then x5260 else x5260 ) ) ) $ ( x5250 ) ) ) ) $ ( if false then Bool else Bool )
        d522 = if ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> x5230 ) ) ) $ ( d447 ) then if d217 then d424 else d368 else ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> true ) ) ) $ ( d490 )
        d527 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5290 -> x5290 ) ) ) $ ( Bool )
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> if d251 then d251 else d384 ) ) ) $ ( if d56 then d457 else d461 )
        d530 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5310 -> x5310 ) ) ) $ ( Bool )
        d530 = if if true then d155 else d281 then if d308 then d326 else d363 else if false then false else d353
        d532 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5350 -> x5350 ) ) ) $ ( Bool )
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if x5340 then true else x5330 ) ) ) $ ( x5330 ) ) ) ) $ ( if false then true else false )
        d536 : if true then if true then Bool else Bool else if true then Bool else Bool
        d536 = if if d21 then false else true then if false then false else true else if false then d154 else true
        d537 : if true then ( ( Set -> Set ) ∋ ( ( λ x5400 -> x5400 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> if x5390 then d170 else x5380 ) ) ) $ ( d199 ) ) ) ) $ ( if false then d494 else true )
        d541 : ( ( Set -> Set ) ∋ ( ( λ x5440 -> ( ( Set -> Set ) ∋ ( ( λ x5450 -> if true then Bool else x5440 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d541 = ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> if d119 then d368 else false ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d546 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> if x5470 then x5470 else true ) ) ) $ ( if d56 then false else false )
        d549 : if false then if true then Bool else Bool else if false then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> if d514 then false else x5510 ) ) ) $ ( d461 ) ) ) ) $ ( if true then true else true )
        d552 : ( ( Set -> Set ) ∋ ( ( λ x5560 -> ( ( Set -> Set ) ∋ ( ( λ x5570 -> if false then Bool else x5560 ) ) ) $ ( x5560 ) ) ) ) $ ( if false then Bool else Bool )
        d552 = if ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> x5530 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> d24 ) ) ) $ ( d541 )
        d558 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> if true then x5610 else x5610 ) ) ) $ ( if false then Bool else Bool )
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if false then true else x5590 ) ) ) $ ( x5590 ) ) ) ) $ ( if true then d291 else false )
        d562 : if true then ( ( Set -> Set ) ∋ ( ( λ x5640 -> x5640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d562 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> true ) ) ) $ ( d475 ) else if false then d251 else d101
        d565 : ( ( Set -> Set ) ∋ ( ( λ x5680 -> if false then x5680 else x5680 ) ) ) $ ( if true then Bool else Bool )
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> if true then x5660 else x5660 ) ) ) $ ( d272 ) ) ) ) $ ( if d207 then d386 else d141 )
        d569 : ( ( Set -> Set ) ∋ ( ( λ x5720 -> if false then x5720 else Bool ) ) ) $ ( if true then Bool else Bool )
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if x5700 then true else d388 ) ) ) $ ( d232 ) ) ) ) $ ( if true then false else d400 )
        d573 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5750 -> x5750 ) ) ) $ ( Bool )
        d573 = if ( ( Bool -> Bool ) ∋ ( ( λ x5740 -> false ) ) ) $ ( d506 ) then if true then false else true else if d177 then d326 else false
        d576 : if false then if true then Bool else Bool else if true then Bool else Bool
        d576 = if ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> x5770 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> d450 ) ) ) $ ( d133 ) else if true then d48 else d439
        d579 : if true then if false then Bool else Bool else if false then Bool else Bool
        d579 = if if true then true else true then if true then d101 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> x5800 ) ) ) $ ( true )
        d581 : ( ( Set -> Set ) ∋ ( ( λ x5830 -> if true then Bool else x5830 ) ) ) $ ( if true then Bool else Bool )
        d581 = if ( ( Bool -> Bool ) ∋ ( ( λ x5820 -> false ) ) ) $ ( false ) then if d101 then true else d414 else if d536 then d323 else true
        d584 : if true then if true then Bool else Bool else if false then Bool else Bool
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> ( ( Bool -> Bool ) ∋ ( ( λ x5860 -> if true then x5860 else d337 ) ) ) $ ( true ) ) ) ) $ ( if d552 then true else true )
        d587 : if true then ( ( Set -> Set ) ∋ ( ( λ x5900 -> x5900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5910 -> x5910 ) ) ) $ ( Bool )
        d587 = if ( ( Bool -> Bool ) ∋ ( ( λ x5880 -> d141 ) ) ) $ ( d260 ) then if true then false else d270 else ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> d263 ) ) ) $ ( false )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x5940 -> if true then x5940 else x5940 ) ) ) $ ( if true then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> if d1 then true else x5930 ) ) ) $ ( if true then d386 else true )
        d595 : ( ( Set -> Set ) ∋ ( ( λ x5970 -> if false then Bool else x5970 ) ) ) $ ( if true then Bool else Bool )
        d595 = ( ( Bool -> Bool ) ∋ ( ( λ x5960 -> if false then x5960 else d1 ) ) ) $ ( if d483 then d552 else d104 )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x6010 -> ( ( Set -> Set ) ∋ ( ( λ x6020 -> if true then Bool else x6020 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> if x5990 then false else x5990 ) ) ) $ ( x5990 ) ) ) ) $ ( if false then d506 else false )
        d603 : ( ( Set -> Set ) ∋ ( ( λ x6050 -> ( ( Set -> Set ) ∋ ( ( λ x6060 -> if false then x6050 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d603 = ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> if x6040 then d207 else d11 ) ) ) $ ( if d530 then true else d429 )
        d607 : ( ( Set -> Set ) ∋ ( ( λ x6090 -> if true then x6090 else Bool ) ) ) $ ( if true then Bool else Bool )
        d607 = if ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> d490 ) ) ) $ ( true ) then if false then true else d308 else if true then true else d392
        d610 : if true then ( ( Set -> Set ) ∋ ( ( λ x6120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6130 -> Bool ) ) ) $ ( Bool )
        d610 = if if true then d576 else d514 then if d82 then false else d177 else ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> d210 ) ) ) $ ( true )
        d614 : ( ( Set -> Set ) ∋ ( ( λ x6170 -> ( ( Set -> Set ) ∋ ( ( λ x6180 -> if false then x6180 else x6170 ) ) ) $ ( x6170 ) ) ) ) $ ( if true then Bool else Bool )
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> if x6150 then x6160 else d414 ) ) ) $ ( x6150 ) ) ) ) $ ( if d263 then true else d186 )
        d619 : ( ( Set -> Set ) ∋ ( ( λ x6210 -> if true then x6210 else x6210 ) ) ) $ ( if true then Bool else Bool )
        d619 = if if true then d363 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> false ) ) ) $ ( d453 ) else if d173 then false else d592
        d622 : ( ( Set -> Set ) ∋ ( ( λ x6250 -> ( ( Set -> Set ) ∋ ( ( λ x6260 -> if true then x6250 else x6250 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d622 = ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> if x6230 then d368 else x6240 ) ) ) $ ( x6230 ) ) ) ) $ ( if false then true else false )
        d627 : ( ( Set -> Set ) ∋ ( ( λ x6290 -> ( ( Set -> Set ) ∋ ( ( λ x6300 -> if true then Bool else x6300 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d627 = if ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> x6280 ) ) ) $ ( true ) then if false then true else true else if d300 then false else d13
        d631 : ( ( Set -> Set ) ∋ ( ( λ x6340 -> ( ( Set -> Set ) ∋ ( ( λ x6350 -> if true then Bool else Bool ) ) ) $ ( x6340 ) ) ) ) $ ( if true then Bool else Bool )
        d631 = ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> if x6330 then d191 else false ) ) ) $ ( x6320 ) ) ) ) $ ( if true then false else true )
        d636 : if false then if false then Bool else Bool else if true then Bool else Bool
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> if false then x6370 else d206 ) ) ) $ ( true ) ) ) ) $ ( if true then d40 else d260 )
        d639 : if true then if false then Bool else Bool else if false then Bool else Bool
        d639 = if ( ( Bool -> Bool ) ∋ ( ( λ x6400 -> x6400 ) ) ) $ ( false ) then if false then false else false else if d202 then true else d24
        d641 : ( ( Set -> Set ) ∋ ( ( λ x6430 -> ( ( Set -> Set ) ∋ ( ( λ x6440 -> if true then x6440 else x6440 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d641 = if if d439 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> true ) ) ) $ ( false ) else if true then true else d210
        d645 : ( ( Set -> Set ) ∋ ( ( λ x6480 -> ( ( Set -> Set ) ∋ ( ( λ x6490 -> if false then x6480 else Bool ) ) ) $ ( x6480 ) ) ) ) $ ( if true then Bool else Bool )
        d645 = if ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> d468 ) ) ) $ ( d158 ) then if true then d536 else d506 else ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> true ) ) ) $ ( true )
        d650 : if true then ( ( Set -> Set ) ∋ ( ( λ x6530 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d650 = if ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> d107 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> d627 ) ) ) $ ( false ) else if true then d610 else d598
        d654 : ( ( Set -> Set ) ∋ ( ( λ x6560 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d654 = if if d510 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x6550 -> x6550 ) ) ) $ ( d263 ) else if d468 then false else d527
        d657 : if true then ( ( Set -> Set ) ∋ ( ( λ x6590 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d657 = if if false then d226 else true then if false then false else d549 else ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> d62 ) ) ) $ ( d90 )
        d660 : if true then if false then Bool else Bool else if true then Bool else Bool
        d660 = ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> if d136 then d251 else false ) ) ) $ ( true ) ) ) ) $ ( if d206 then false else true )
        d663 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6640 -> x6640 ) ) ) $ ( Bool )
        d663 = if if false then d141 else false then if false then d392 else d552 else if false then d28 else d363
        d665 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6660 -> Bool ) ) ) $ ( Bool )
        d665 = if if d31 then d291 else false then if false then d522 else d657 else if d149 then d293 else d639
        d667 : if true then ( ( Set -> Set ) ∋ ( ( λ x6690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6700 -> x6700 ) ) ) $ ( Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> if d243 then d1 else true ) ) ) $ ( if true then d179 else d537 )
        d671 : if false then ( ( Set -> Set ) ∋ ( ( λ x6730 -> x6730 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6740 -> x6740 ) ) ) $ ( Bool )
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> if d296 then false else x6720 ) ) ) $ ( if false then true else d532 )
        d675 : ( ( Set -> Set ) ∋ ( ( λ x6770 -> ( ( Set -> Set ) ∋ ( ( λ x6780 -> if false then x6770 else x6770 ) ) ) $ ( x6770 ) ) ) ) $ ( if true then Bool else Bool )
        d675 = ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> if d266 then d501 else x6760 ) ) ) $ ( if false then true else true )
        d679 : if false then if true then Bool else Bool else if true then Bool else Bool
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> if d206 then d213 else x6810 ) ) ) $ ( x6800 ) ) ) ) $ ( if false then true else false )
        d682 : ( ( Set -> Set ) ∋ ( ( λ x6840 -> ( ( Set -> Set ) ∋ ( ( λ x6850 -> if false then x6840 else x6850 ) ) ) $ ( x6840 ) ) ) ) $ ( if true then Bool else Bool )
        d682 = ( ( Bool -> Bool ) ∋ ( ( λ x6830 -> if x6830 then d414 else x6830 ) ) ) $ ( if d536 then d59 else false )
        d686 : ( ( Set -> Set ) ∋ ( ( λ x6890 -> ( ( Set -> Set ) ∋ ( ( λ x6900 -> if true then Bool else x6900 ) ) ) $ ( x6890 ) ) ) ) $ ( if false then Bool else Bool )
        d686 = if ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6880 -> d97 ) ) ) $ ( d328 ) else if false then false else d170
        d691 : if false then if false then Bool else Bool else if true then Bool else Bool
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> if false then x6920 else true ) ) ) $ ( if false then false else d641 )
        d693 : ( ( Set -> Set ) ∋ ( ( λ x6950 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d693 = if ( ( Bool -> Bool ) ∋ ( ( λ x6940 -> true ) ) ) $ ( false ) then if d627 then false else d380 else if d251 then d424 else true
        d696 : ( ( Set -> Set ) ∋ ( ( λ x6980 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d696 = if if d86 then d410 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> x6970 ) ) ) $ ( true ) else if true then d541 else true
        d699 : if true then ( ( Set -> Set ) ∋ ( ( λ x7020 -> x7020 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7030 -> Bool ) ) ) $ ( Bool )
        d699 = if if true then d207 else d11 then ( ( Bool -> Bool ) ∋ ( ( λ x7000 -> x7000 ) ) ) $ ( d173 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7010 -> d569 ) ) ) $ ( d31 )
        d704 : if true then ( ( Set -> Set ) ∋ ( ( λ x7070 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d704 = if ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> x7050 ) ) ) $ ( false ) then if true then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> d52 ) ) ) $ ( d232 )
        d708 : if true then ( ( Set -> Set ) ∋ ( ( λ x7110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7120 -> x7120 ) ) ) $ ( Bool )
        d708 = if ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> true ) ) ) $ ( false ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> x7100 ) ) ) $ ( d136 )
        d713 : if false then if true then Bool else Bool else if false then Bool else Bool
        d713 = if ( ( Bool -> Bool ) ∋ ( ( λ x7140 -> x7140 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> true ) ) ) $ ( d186 ) else if d101 then d303 else false
        d716 : if false then ( ( Set -> Set ) ∋ ( ( λ x7180 -> x7180 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d716 = ( ( Bool -> Bool ) ∋ ( ( λ x7170 -> if x7170 then d263 else x7170 ) ) ) $ ( if d549 then true else true )
        d719 : if false then if false then Bool else Bool else if true then Bool else Bool
        d719 = ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> if x7200 then true else false ) ) ) $ ( if d549 then false else false )
        d721 : if false then ( ( Set -> Set ) ∋ ( ( λ x7230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7240 -> x7240 ) ) ) $ ( Bool )
        d721 = if if true then false else false then if d243 then true else d696 else ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> d641 ) ) ) $ ( d149 )
        d725 : if true then ( ( Set -> Set ) ∋ ( ( λ x7280 -> x7280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7290 -> Bool ) ) ) $ ( Bool )
        d725 = ( ( Bool -> Bool ) ∋ ( ( λ x7260 -> ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> if d704 then d471 else x7260 ) ) ) $ ( false ) ) ) ) $ ( if d155 then d639 else false )
        d730 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7330 -> Bool ) ) ) $ ( Bool )
        d730 = if ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> x7310 ) ) ) $ ( d21 ) then if d97 then true else d44 else ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> x7320 ) ) ) $ ( false )
        d734 : ( ( Set -> Set ) ∋ ( ( λ x7350 -> ( ( Set -> Set ) ∋ ( ( λ x7360 -> if false then Bool else x7350 ) ) ) $ ( x7350 ) ) ) ) $ ( if true then Bool else Bool )
        d734 = if if false then d494 else true then if d392 then false else d549 else if d541 then d363 else d725
        d737 : ( ( Set -> Set ) ∋ ( ( λ x7390 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d737 = ( ( Bool -> Bool ) ∋ ( ( λ x7380 -> if x7380 then false else d530 ) ) ) $ ( if d326 then d603 else d671 )
        d740 : if false then ( ( Set -> Set ) ∋ ( ( λ x7420 -> x7420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7430 -> x7430 ) ) ) $ ( Bool )
        d740 = ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> if false then d111 else d316 ) ) ) $ ( if false then true else d686 )
        d744 : ( ( Set -> Set ) ∋ ( ( λ x7460 -> if true then x7460 else Bool ) ) ) $ ( if false then Bool else Bool )
        d744 = ( ( Bool -> Bool ) ∋ ( ( λ x7450 -> if x7450 then true else d494 ) ) ) $ ( if d40 then true else d152 )
        d747 : ( ( Set -> Set ) ∋ ( ( λ x7490 -> if false then Bool else x7490 ) ) ) $ ( if true then Bool else Bool )
        d747 = ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> if true then x7480 else x7480 ) ) ) $ ( if d386 then false else d457 )
        d750 : if false then ( ( Set -> Set ) ∋ ( ( λ x7520 -> x7520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7530 -> x7530 ) ) ) $ ( Bool )
        d750 = if ( ( Bool -> Bool ) ∋ ( ( λ x7510 -> false ) ) ) $ ( d277 ) then if true then true else d654 else if false then false else d453
        d754 : if false then if true then Bool else Bool else if true then Bool else Bool
        d754 = if if d654 then false else d356 then ( ( Bool -> Bool ) ∋ ( ( λ x7550 -> d345 ) ) ) $ ( d725 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> d468 ) ) ) $ ( d56 )
        d757 : ( ( Set -> Set ) ∋ ( ( λ x7600 -> if false then Bool else x7600 ) ) ) $ ( if true then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> if true then d56 else true ) ) ) $ ( x7580 ) ) ) ) $ ( if false then d288 else d372 )
        d761 : ( ( Set -> Set ) ∋ ( ( λ x7630 -> ( ( Set -> Set ) ∋ ( ( λ x7640 -> if false then Bool else Bool ) ) ) $ ( x7630 ) ) ) ) $ ( if true then Bool else Bool )
        d761 = if if d461 then false else d128 then ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> d573 ) ) ) $ ( false ) else if d270 then d497 else false
        d765 : if true then ( ( Set -> Set ) ∋ ( ( λ x7680 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d765 = if ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> false ) ) ) $ ( true ) then if d573 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> true ) ) ) $ ( d243 )
        d769 : if false then ( ( Set -> Set ) ∋ ( ( λ x7700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7710 -> x7710 ) ) ) $ ( Bool )
        d769 = if if true then d636 else d754 then if true then d693 else d636 else if d277 then d514 else d90
        d772 : if true then ( ( Set -> Set ) ∋ ( ( λ x7740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7750 -> Bool ) ) ) $ ( Bool )
        d772 = ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> if d522 then true else x7730 ) ) ) $ ( if d263 then true else true )
        d776 : ( ( Set -> Set ) ∋ ( ( λ x7770 -> if false then Bool else x7770 ) ) ) $ ( if true then Bool else Bool )
        d776 = if if false then false else false then if d202 then d716 else d765 else if d62 then d133 else d432
        d778 : if true then if false then Bool else Bool else if false then Bool else Bool
        d778 = if if d356 then false else d195 then ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> x7790 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> d11 ) ) ) $ ( true )
        d781 : ( ( Set -> Set ) ∋ ( ( λ x7840 -> if true then x7840 else Bool ) ) ) $ ( if true then Bool else Bool )
        d781 = ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> ( ( Bool -> Bool ) ∋ ( ( λ x7830 -> if true then true else d549 ) ) ) $ ( x7820 ) ) ) ) $ ( if d569 then d645 else d7 )
        d785 : ( ( Set -> Set ) ∋ ( ( λ x7870 -> ( ( Set -> Set ) ∋ ( ( λ x7880 -> if false then Bool else x7880 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d785 = ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> if x7860 then x7860 else false ) ) ) $ ( if false then d73 else true )
        d789 : if false then if false then Bool else Bool else if false then Bool else Bool
        d789 = ( ( Bool -> Bool ) ∋ ( ( λ x7900 -> ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> if true then true else false ) ) ) $ ( x7900 ) ) ) ) $ ( if false then d475 else d443 )
        d792 : ( ( Set -> Set ) ∋ ( ( λ x7940 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d792 = ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> if d622 then x7930 else false ) ) ) $ ( if d665 then d734 else d457 )
        d795 : if false then ( ( Set -> Set ) ∋ ( ( λ x7970 -> x7970 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7980 -> x7980 ) ) ) $ ( Bool )
        d795 = ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> if d67 then d86 else x7960 ) ) ) $ ( if d104 then true else true )
        d799 : ( ( Set -> Set ) ∋ ( ( λ x8010 -> ( ( Set -> Set ) ∋ ( ( λ x8020 -> if true then x8010 else x8010 ) ) ) $ ( x8010 ) ) ) ) $ ( if false then Bool else Bool )
        d799 = ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> if true then x8000 else x8000 ) ) ) $ ( if d94 then false else d243 )
        d803 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8060 -> Bool ) ) ) $ ( Bool )
        d803 = ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> ( ( Bool -> Bool ) ∋ ( ( λ x8050 -> if d737 then true else x8050 ) ) ) $ ( false ) ) ) ) $ ( if d260 then true else true )
        d807 : if false then if false then Bool else Bool else if false then Bool else Bool
        d807 = if ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8090 -> x8090 ) ) ) $ ( d537 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> x8100 ) ) ) $ ( d186 )
        d811 : ( ( Set -> Set ) ∋ ( ( λ x8130 -> ( ( Set -> Set ) ∋ ( ( λ x8140 -> if true then Bool else Bool ) ) ) $ ( x8130 ) ) ) ) $ ( if true then Bool else Bool )
        d811 = if if d754 then false else true then if false then false else d546 else ( ( Bool -> Bool ) ∋ ( ( λ x8120 -> d149 ) ) ) $ ( false )
        d815 : if false then if false then Bool else Bool else if true then Bool else Bool
        d815 = ( ( Bool -> Bool ) ∋ ( ( λ x8160 -> ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> if x8170 then x8160 else false ) ) ) $ ( x8160 ) ) ) ) $ ( if d475 then d232 else d581 )
        d818 : if true then ( ( Set -> Set ) ∋ ( ( λ x8200 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d818 = ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> if false then x8190 else x8190 ) ) ) $ ( if d158 then d772 else true )
        d821 : ( ( Set -> Set ) ∋ ( ( λ x8230 -> ( ( Set -> Set ) ∋ ( ( λ x8240 -> if false then x8230 else x8240 ) ) ) $ ( x8230 ) ) ) ) $ ( if false then Bool else Bool )
        d821 = if ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> x8220 ) ) ) $ ( d811 ) then if true then d155 else d73 else if d497 then false else false
        d825 : if true then ( ( Set -> Set ) ∋ ( ( λ x8270 -> x8270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8280 -> x8280 ) ) ) $ ( Bool )
        d825 = ( ( Bool -> Bool ) ∋ ( ( λ x8260 -> if false then true else x8260 ) ) ) $ ( if true then false else d226 )
        d829 : if true then ( ( Set -> Set ) ∋ ( ( λ x8310 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> if x8300 then x8300 else d619 ) ) ) $ ( if d603 then false else d453 )
        d832 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8340 -> Bool ) ) ) $ ( Bool )
        d832 = if if true then d522 else d641 then if false then d421 else true else ( ( Bool -> Bool ) ∋ ( ( λ x8330 -> d300 ) ) ) $ ( d506 )
        d835 : ( ( Set -> Set ) ∋ ( ( λ x8380 -> ( ( Set -> Set ) ∋ ( ( λ x8390 -> if true then x8380 else Bool ) ) ) $ ( x8380 ) ) ) ) $ ( if true then Bool else Bool )
        d835 = ( ( Bool -> Bool ) ∋ ( ( λ x8360 -> ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> if x8370 then x8360 else false ) ) ) $ ( d405 ) ) ) ) $ ( if true then true else true )
        d840 : if true then ( ( Set -> Set ) ∋ ( ( λ x8430 -> x8430 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d840 = ( ( Bool -> Bool ) ∋ ( ( λ x8410 -> ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> if false then d429 else d522 ) ) ) $ ( d136 ) ) ) ) $ ( if d719 then d552 else false )
        d844 : ( ( Set -> Set ) ∋ ( ( λ x8460 -> if true then x8460 else x8460 ) ) ) $ ( if true then Bool else Bool )
        d844 = if if d716 then true else true then if false then d552 else d614 else ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> d686 ) ) ) $ ( false )
        d847 : if true then ( ( Set -> Set ) ∋ ( ( λ x8500 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8510 -> Bool ) ) ) $ ( Bool )
        d847 = ( ( Bool -> Bool ) ∋ ( ( λ x8480 -> ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> if true then d536 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d40 )
        d852 : if false then ( ( Set -> Set ) ∋ ( ( λ x8550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8560 -> x8560 ) ) ) $ ( Bool )
        d852 = if if d119 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> x8530 ) ) ) $ ( d463 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8540 -> x8540 ) ) ) $ ( true )
        d857 : if true then ( ( Set -> Set ) ∋ ( ( λ x8590 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d857 = if ( ( Bool -> Bool ) ∋ ( ( λ x8580 -> x8580 ) ) ) $ ( false ) then if d639 then d266 else d789 else if d744 then false else d598
        d860 : if true then if false then Bool else Bool else if true then Bool else Bool
        d860 = if if true then d405 else false then ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> false ) ) ) $ ( true ) else if d614 then true else false
        d862 : ( ( Set -> Set ) ∋ ( ( λ x8630 -> ( ( Set -> Set ) ∋ ( ( λ x8640 -> if false then x8630 else x8630 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d862 = if if d101 then true else true then if true then d376 else false else if false then true else d162
        d865 : if true then ( ( Set -> Set ) ∋ ( ( λ x8670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8680 -> Bool ) ) ) $ ( Bool )
        d865 = ( ( Bool -> Bool ) ∋ ( ( λ x8660 -> if d852 then d744 else true ) ) ) $ ( if d610 then true else false )
        d869 : ( ( Set -> Set ) ∋ ( ( λ x8710 -> ( ( Set -> Set ) ∋ ( ( λ x8720 -> if false then x8720 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d869 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x8700 -> d821 ) ) ) $ ( false ) else if true then d119 else true
        d873 : ( ( Set -> Set ) ∋ ( ( λ x8770 -> ( ( Set -> Set ) ∋ ( ( λ x8780 -> if false then x8770 else x8780 ) ) ) $ ( x8770 ) ) ) ) $ ( if false then Bool else Bool )
        d873 = if ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> x8740 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8750 -> x8750 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> x8760 ) ) ) $ ( true )
        d879 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8810 -> x8810 ) ) ) $ ( Bool )
        d879 = if ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> d177 ) ) ) $ ( false ) then if d761 then d316 else d372 else if d645 then false else d675
        d882 : ( ( Set -> Set ) ∋ ( ( λ x8850 -> ( ( Set -> Set ) ∋ ( ( λ x8860 -> if false then x8850 else x8850 ) ) ) $ ( x8850 ) ) ) ) $ ( if false then Bool else Bool )
        d882 = if if d778 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x8830 -> true ) ) ) $ ( d149 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> true ) ) ) $ ( d141 )
        d887 : if true then ( ( Set -> Set ) ∋ ( ( λ x8900 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d887 = ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> ( ( Bool -> Bool ) ∋ ( ( λ x8890 -> if x8880 then d450 else d424 ) ) ) $ ( false ) ) ) ) $ ( if d815 then false else d419 )
        d891 : if false then if true then Bool else Bool else if true then Bool else Bool
        d891 = if if true then true else d359 then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> false ) ) ) $ ( true )
        d893 : ( ( Set -> Set ) ∋ ( ( λ x8960 -> ( ( Set -> Set ) ∋ ( ( λ x8970 -> if false then x8960 else Bool ) ) ) $ ( x8960 ) ) ) ) $ ( if true then Bool else Bool )
        d893 = if ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> x8940 ) ) ) $ ( true ) then if false then d527 else d439 else ( ( Bool -> Bool ) ∋ ( ( λ x8950 -> d173 ) ) ) $ ( false )
        d898 : ( ( Set -> Set ) ∋ ( ( λ x9010 -> if false then x9010 else Bool ) ) ) $ ( if false then Bool else Bool )
        d898 = ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> if d217 then x9000 else true ) ) ) $ ( d296 ) ) ) ) $ ( if false then d82 else true )
        d902 : ( ( Set -> Set ) ∋ ( ( λ x9040 -> if false then Bool else x9040 ) ) ) $ ( if false then Bool else Bool )
        d902 = if if false then d569 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> d207 ) ) ) $ ( d650 ) else if d28 then false else false
        d905 : ( ( Set -> Set ) ∋ ( ( λ x9090 -> ( ( Set -> Set ) ∋ ( ( λ x9100 -> if true then Bool else x9100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d905 = if ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> d40 ) ) ) $ ( d569 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> true ) ) ) $ ( d77 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> x9080 ) ) ) $ ( d627 )
        d911 : ( ( Set -> Set ) ∋ ( ( λ x9130 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d911 = ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> if x9120 then x9120 else false ) ) ) $ ( if d792 then true else d598 )
        d914 : ( ( Set -> Set ) ∋ ( ( λ x9160 -> ( ( Set -> Set ) ∋ ( ( λ x9170 -> if true then x9170 else Bool ) ) ) $ ( x9160 ) ) ) ) $ ( if false then Bool else Bool )
        d914 = if if false then false else d40 then ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> x9150 ) ) ) $ ( d639 ) else if false then false else d107
        d918 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9200 -> Bool ) ) ) $ ( Bool )
        d918 = ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> if d569 then false else x9190 ) ) ) $ ( if false then d286 else false )
        d921 : ( ( Set -> Set ) ∋ ( ( λ x9230 -> if false then x9230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d921 = if if true then true else d64 then if true then false else d232 else ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> false ) ) ) $ ( d789 )
        d924 : if true then ( ( Set -> Set ) ∋ ( ( λ x9270 -> x9270 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d924 = if ( ( Bool -> Bool ) ∋ ( ( λ x9250 -> x9250 ) ) ) $ ( d270 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> false ) ) ) $ ( false ) else if d645 then true else d282
        d928 : ( ( Set -> Set ) ∋ ( ( λ x9300 -> if false then x9300 else Bool ) ) ) $ ( if false then Bool else Bool )
        d928 = ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> if x9290 then x9290 else true ) ) ) $ ( if false then d873 else d514 )
        d931 : ( ( Set -> Set ) ∋ ( ( λ x9340 -> ( ( Set -> Set ) ∋ ( ( λ x9350 -> if true then x9340 else Bool ) ) ) $ ( x9340 ) ) ) ) $ ( if true then Bool else Bool )
        d931 = ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> ( ( Bool -> Bool ) ∋ ( ( λ x9330 -> if x9330 then d414 else d337 ) ) ) $ ( x9320 ) ) ) ) $ ( if d675 then d587 else false )
        d936 : ( ( Set -> Set ) ∋ ( ( λ x9390 -> ( ( Set -> Set ) ∋ ( ( λ x9400 -> if true then x9390 else x9390 ) ) ) $ ( x9390 ) ) ) ) $ ( if false then Bool else Bool )
        d936 = ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> if true then d359 else d73 ) ) ) $ ( d497 ) ) ) ) $ ( if false then d471 else false )
        d941 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9430 -> x9430 ) ) ) $ ( Bool )
        d941 = if ( ( Bool -> Bool ) ∋ ( ( λ x9420 -> false ) ) ) $ ( false ) then if d573 then true else true else if d815 then d693 else d195
        d944 : ( ( Set -> Set ) ∋ ( ( λ x9470 -> ( ( Set -> Set ) ∋ ( ( λ x9480 -> if false then x9480 else x9480 ) ) ) $ ( x9470 ) ) ) ) $ ( if true then Bool else Bool )
        d944 = ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> ( ( Bool -> Bool ) ∋ ( ( λ x9460 -> if false then true else false ) ) ) $ ( false ) ) ) ) $ ( if d56 then true else false )
        d949 : ( ( Set -> Set ) ∋ ( ( λ x9520 -> ( ( Set -> Set ) ∋ ( ( λ x9530 -> if true then Bool else Bool ) ) ) $ ( x9520 ) ) ) ) $ ( if true then Bool else Bool )
        d949 = ( ( Bool -> Bool ) ∋ ( ( λ x9500 -> ( ( Bool -> Bool ) ∋ ( ( λ x9510 -> if false then x9500 else x9500 ) ) ) $ ( d704 ) ) ) ) $ ( if false then d323 else true )
        d954 : ( ( Set -> Set ) ∋ ( ( λ x9570 -> ( ( Set -> Set ) ∋ ( ( λ x9580 -> if false then x9580 else x9580 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d954 = ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> ( ( Bool -> Bool ) ∋ ( ( λ x9560 -> if d166 then x9550 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d281 else d272 )
        d959 : if false then if true then Bool else Bool else if false then Bool else Bool
        d959 = if ( ( Bool -> Bool ) ∋ ( ( λ x9600 -> x9600 ) ) ) $ ( false ) then if d319 then d924 else false else if d576 then false else false
        d961 : if false then ( ( Set -> Set ) ∋ ( ( λ x9630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9640 -> x9640 ) ) ) $ ( Bool )
        d961 = ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> if false then true else x9620 ) ) ) $ ( if true then true else d803 )
        d965 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9680 -> x9680 ) ) ) $ ( Bool )
        d965 = if if true then true else d716 then ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> d122 ) ) ) $ ( d719 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> x9670 ) ) ) $ ( false )
        d969 : if true then ( ( Set -> Set ) ∋ ( ( λ x9720 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d969 = ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> if x9700 then false else d487 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d744 )
        d973 : ( ( Set -> Set ) ∋ ( ( λ x9760 -> ( ( Set -> Set ) ∋ ( ( λ x9770 -> if false then x9760 else x9760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d973 = if if d671 then d914 else d463 then ( ( Bool -> Bool ) ∋ ( ( λ x9740 -> false ) ) ) $ ( d3 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> x9750 ) ) ) $ ( true )
        d978 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9810 -> x9810 ) ) ) $ ( Bool )
        d978 = ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> ( ( Bool -> Bool ) ∋ ( ( λ x9800 -> if true then true else x9800 ) ) ) $ ( true ) ) ) ) $ ( if d372 then true else d308 )
        d982 : ( ( Set -> Set ) ∋ ( ( λ x9850 -> if true then x9850 else Bool ) ) ) $ ( if true then Bool else Bool )
        d982 = ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> if false then d56 else x9830 ) ) ) $ ( true ) ) ) ) $ ( if d384 then false else false )
        d986 : ( ( Set -> Set ) ∋ ( ( λ x9880 -> if false then x9880 else Bool ) ) ) $ ( if false then Bool else Bool )
        d986 = if ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> true ) ) ) $ ( false ) then if d263 then d750 else d558 else if d944 then false else false
        d989 : if false then ( ( Set -> Set ) ∋ ( ( λ x9910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9920 -> Bool ) ) ) $ ( Bool )
        d989 = ( ( Bool -> Bool ) ∋ ( ( λ x9900 -> if x9900 then x9900 else x9900 ) ) ) $ ( if false then true else true )
        d993 : ( ( Set -> Set ) ∋ ( ( λ x9940 -> ( ( Set -> Set ) ∋ ( ( λ x9950 -> if false then Bool else x9950 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d993 = if if false then d549 else d708 then if true then d480 else d154 else if d471 then true else d392
        d996 : if true then ( ( Set -> Set ) ∋ ( ( λ x9980 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> if x9970 then x9970 else false ) ) ) $ ( if true then d179 else d691 )
        d999 : ( ( Set -> Set ) ∋ ( ( λ x10020 -> if true then Bool else x10020 ) ) ) $ ( if false then Bool else Bool )
        d999 = if if d260 then false else d772 then ( ( Bool -> Bool ) ∋ ( ( λ x10000 -> d532 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> d119 ) ) ) $ ( d537 )
        d1003 : ( ( Set -> Set ) ∋ ( ( λ x10050 -> ( ( Set -> Set ) ∋ ( ( λ x10060 -> if true then x10050 else Bool ) ) ) $ ( x10050 ) ) ) ) $ ( if false then Bool else Bool )
        d1003 = ( ( Bool -> Bool ) ∋ ( ( λ x10040 -> if false then true else x10040 ) ) ) $ ( if false then d825 else d368 )
        d1007 : if true then ( ( Set -> Set ) ∋ ( ( λ x10090 -> x10090 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1007 = if ( ( Bool -> Bool ) ∋ ( ( λ x10080 -> true ) ) ) $ ( false ) then if d59 then d497 else false else if false then d682 else true
        d1010 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10140 -> Bool ) ) ) $ ( Bool )
        d1010 = if ( ( Bool -> Bool ) ∋ ( ( λ x10110 -> d740 ) ) ) $ ( d439 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> false ) ) ) $ ( d419 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> false ) ) ) $ ( false )
        d1015 : ( ( Set -> Set ) ∋ ( ( λ x10170 -> ( ( Set -> Set ) ∋ ( ( λ x10180 -> if false then Bool else Bool ) ) ) $ ( x10170 ) ) ) ) $ ( if false then Bool else Bool )
        d1015 = ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> if d447 then d270 else d471 ) ) ) $ ( if d186 then d993 else false )
        d1019 : if false then ( ( Set -> Set ) ∋ ( ( λ x10220 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10230 -> Bool ) ) ) $ ( Bool )
        d1019 = if ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> x10200 ) ) ) $ ( d286 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10210 -> d195 ) ) ) $ ( d234 ) else if true then true else false
        d1024 : ( ( Set -> Set ) ∋ ( ( λ x10260 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1024 = if if true then false else false then if false then false else d308 else ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> true ) ) ) $ ( d300 )
        d1027 : if true then ( ( Set -> Set ) ∋ ( ( λ x10300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10310 -> x10310 ) ) ) $ ( Bool )
        d1027 = if if d576 then d332 else d514 then ( ( Bool -> Bool ) ∋ ( ( λ x10280 -> x10280 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> false ) ) ) $ ( d887 )
        d1032 : ( ( Set -> Set ) ∋ ( ( λ x10350 -> ( ( Set -> Set ) ∋ ( ( λ x10360 -> if false then Bool else x10350 ) ) ) $ ( x10350 ) ) ) ) $ ( if false then Bool else Bool )
        d1032 = ( ( Bool -> Bool ) ∋ ( ( λ x10330 -> ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> if false then d21 else d905 ) ) ) $ ( x10330 ) ) ) ) $ ( if true then d144 else d622 )
        d1037 : if true then ( ( Set -> Set ) ∋ ( ( λ x10400 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1037 = ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> if false then x10390 else true ) ) ) $ ( d902 ) ) ) ) $ ( if false then d721 else true )
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1041 = if if true then d785 else d372 then ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> false ) ) ) $ ( d1 ) else if d527 then d353 else d90
        d1044 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10470 -> x10470 ) ) ) $ ( Bool )
        d1044 = if if true then false else d177 then ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> true ) ) ) $ ( d847 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> x10460 ) ) ) $ ( false )
        d1048 : ( ( Set -> Set ) ∋ ( ( λ x10510 -> if true then x10510 else x10510 ) ) ) $ ( if true then Bool else Bool )
        d1048 = ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> if x10500 then true else true ) ) ) $ ( d59 ) ) ) ) $ ( if d941 then true else true )
        d1052 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1052 = ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> if true then d226 else x10540 ) ) ) $ ( x10530 ) ) ) ) $ ( if true then d949 else false )
        d1055 : ( ( Set -> Set ) ∋ ( ( λ x10560 -> ( ( Set -> Set ) ∋ ( ( λ x10570 -> if true then Bool else Bool ) ) ) $ ( x10560 ) ) ) ) $ ( if false then Bool else Bool )
        d1055 = if if false then true else d260 then if false then true else d104 else if d7 then true else true
        d1058 : ( ( Set -> Set ) ∋ ( ( λ x10600 -> ( ( Set -> Set ) ∋ ( ( λ x10610 -> if true then x10610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1058 = if if d77 then false else false then if true then true else d281 else ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> x10590 ) ) ) $ ( d898 )
        d1062 : if false then ( ( Set -> Set ) ∋ ( ( λ x10640 -> x10640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10650 -> x10650 ) ) ) $ ( Bool )
        d1062 = ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> if false then d1044 else x10630 ) ) ) $ ( if false then true else d248 )
        d1066 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1066 = ( ( Bool -> Bool ) ∋ ( ( λ x10670 -> if d282 then d993 else d857 ) ) ) $ ( if d11 then false else d607 )
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x10710 -> ( ( Set -> Set ) ∋ ( ( λ x10720 -> if false then x10710 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1068 = ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> ( ( Bool -> Bool ) ∋ ( ( λ x10700 -> if d471 then x10700 else x10690 ) ) ) $ ( d238 ) ) ) ) $ ( if true then false else d266 )
        d1073 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> ( ( Set -> Set ) ∋ ( ( λ x10750 -> if true then x10740 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1073 = if if d326 then false else true then if d1 then d281 else d177 else if false then d260 else d696
        d1076 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10790 -> Bool ) ) ) $ ( Bool )
        d1076 = if ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> d686 ) ) ) $ ( true ) then if d821 then false else d1010 else ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> true ) ) ) $ ( d1068 )
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x10830 -> if true then x10830 else x10830 ) ) ) $ ( if false then Bool else Bool )
        d1080 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> d94 ) ) ) $ ( d1055 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10820 -> true ) ) ) $ ( true )
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x10870 -> ( ( Set -> Set ) ∋ ( ( λ x10880 -> if false then Bool else x10880 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> if x10860 then x10850 else true ) ) ) $ ( d552 ) ) ) ) $ ( if d607 then true else true )
        d1089 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1089 = if if d882 then d388 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10900 -> true ) ) ) $ ( true ) else if false then d220 else true
        d1091 : if true then ( ( Set -> Set ) ∋ ( ( λ x10930 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> if true then x10920 else x10920 ) ) ) $ ( if d704 then d326 else d1019 )
        d1094 : ( ( Set -> Set ) ∋ ( ( λ x10960 -> ( ( Set -> Set ) ∋ ( ( λ x10970 -> if true then Bool else Bool ) ) ) $ ( x10960 ) ) ) ) $ ( if true then Bool else Bool )
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if x10950 then d359 else x10950 ) ) ) $ ( if d713 then d480 else d243 )
        d1098 : ( ( Set -> Set ) ∋ ( ( λ x11020 -> ( ( Set -> Set ) ∋ ( ( λ x11030 -> if false then x11030 else x11020 ) ) ) $ ( x11020 ) ) ) ) $ ( if false then Bool else Bool )
        d1098 = if ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> d328 ) ) ) $ ( d713 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11000 -> d914 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> true ) ) ) $ ( false )
        d1104 : ( ( Set -> Set ) ∋ ( ( λ x11060 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1104 = if ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> true ) ) ) $ ( d313 ) then if d969 then true else false else if d514 then true else d463
        d1107 : ( ( Set -> Set ) ∋ ( ( λ x11080 -> ( ( Set -> Set ) ∋ ( ( λ x11090 -> if false then Bool else Bool ) ) ) $ ( x11080 ) ) ) ) $ ( if true then Bool else Bool )
        d1107 = if if true then false else d177 then if true then false else d811 else if d396 then true else d122
        d1110 : if false then ( ( Set -> Set ) ∋ ( ( λ x11130 -> x11130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11140 -> x11140 ) ) ) $ ( Bool )
        d1110 = ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> if false then d368 else false ) ) ) $ ( d965 ) ) ) ) $ ( if d308 then d584 else d914 )
        d1115 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1115 = if ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> false ) ) ) $ ( false ) then if false then false else d1019 else ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> true ) ) ) $ ( d795 )
        d1118 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> if d13 then d1073 else x11190 ) ) ) $ ( if d1104 then d785 else false )
        d1120 : ( ( Set -> Set ) ∋ ( ( λ x11240 -> ( ( Set -> Set ) ∋ ( ( λ x11250 -> if false then x11250 else Bool ) ) ) $ ( x11240 ) ) ) ) $ ( if false then Bool else Bool )
        d1120 = if ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> d260 ) ) ) $ ( d721 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11220 -> d1062 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> x11230 ) ) ) $ ( d483 )
        d1126 : ( ( Set -> Set ) ∋ ( ( λ x11290 -> ( ( Set -> Set ) ∋ ( ( λ x11300 -> if true then x11290 else Bool ) ) ) $ ( x11290 ) ) ) ) $ ( if true then Bool else Bool )
        d1126 = ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> if x11280 then true else x11270 ) ) ) $ ( d410 ) ) ) ) $ ( if true then d719 else true )
        d1131 : ( ( Set -> Set ) ∋ ( ( λ x11340 -> ( ( Set -> Set ) ∋ ( ( λ x11350 -> if true then x11350 else x11350 ) ) ) $ ( x11340 ) ) ) ) $ ( if true then Bool else Bool )
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> if d359 then x11320 else d82 ) ) ) $ ( d386 ) ) ) ) $ ( if d1044 then d665 else d844 )
        d1136 : if false then ( ( Set -> Set ) ∋ ( ( λ x11380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11390 -> Bool ) ) ) $ ( Bool )
        d1136 = ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> if x11370 then d603 else d541 ) ) ) $ ( if false then false else d514 )
        d1140 : ( ( Set -> Set ) ∋ ( ( λ x11420 -> if true then x11420 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1140 = ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> if d288 then x11410 else d754 ) ) ) $ ( if d792 then true else d581 )
        d1143 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1143 = ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> if d461 then false else x11440 ) ) ) $ ( if d558 then d177 else false )
        d1145 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1145 = ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> if x11470 then true else false ) ) ) $ ( x11460 ) ) ) ) $ ( if d541 then false else false )
        d1148 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11500 -> Bool ) ) ) $ ( Bool )
        d1148 = ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> if d675 then false else x11490 ) ) ) $ ( if true then d660 else true )
        d1151 : ( ( Set -> Set ) ∋ ( ( λ x11550 -> ( ( Set -> Set ) ∋ ( ( λ x11560 -> if false then Bool else x11560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1151 = if ( ( Bool -> Bool ) ∋ ( ( λ x11520 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> x11540 ) ) ) $ ( true )
        d1157 : if true then ( ( Set -> Set ) ∋ ( ( λ x11600 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1157 = ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> if d785 then true else x11580 ) ) ) $ ( d179 ) ) ) ) $ ( if false then true else false )
        d1161 : ( ( Set -> Set ) ∋ ( ( λ x11630 -> ( ( Set -> Set ) ∋ ( ( λ x11640 -> if false then Bool else x11640 ) ) ) $ ( x11630 ) ) ) ) $ ( if false then Bool else Bool )
        d1161 = ( ( Bool -> Bool ) ∋ ( ( λ x11620 -> if x11620 then d1120 else x11620 ) ) ) $ ( if false then d210 else d650 )
        d1165 : ( ( Set -> Set ) ∋ ( ( λ x11670 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1165 = ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> if true then false else d144 ) ) ) $ ( if d973 then d541 else d107 )
        d1168 : ( ( Set -> Set ) ∋ ( ( λ x11700 -> if true then x11700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1168 = ( ( Bool -> Bool ) ∋ ( ( λ x11690 -> if true then x11690 else x11690 ) ) ) $ ( if d537 then false else true )
        d1171 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11730 -> Bool ) ) ) $ ( Bool )
        d1171 = ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> if d713 then true else x11720 ) ) ) $ ( if false then true else true )
        d1174 : ( ( Set -> Set ) ∋ ( ( λ x11760 -> ( ( Set -> Set ) ∋ ( ( λ x11770 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1174 = ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> if x11750 then d86 else false ) ) ) $ ( if d11 then false else true )
        d1178 : if false then ( ( Set -> Set ) ∋ ( ( λ x11820 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11830 -> Bool ) ) ) $ ( Bool )
        d1178 = if ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> x11790 ) ) ) $ ( d993 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> d532 ) ) ) $ ( d789 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11810 -> x11810 ) ) ) $ ( false )
        d1184 : if true then ( ( Set -> Set ) ∋ ( ( λ x11870 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11880 -> Bool ) ) ) $ ( Bool )
        d1184 = ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> if x11860 then x11850 else false ) ) ) $ ( d1076 ) ) ) ) $ ( if d1084 then d56 else false )
        d1189 : if true then ( ( Set -> Set ) ∋ ( ( λ x11910 -> x11910 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1189 = if if true then false else d260 then if false then d281 else true else ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> x11900 ) ) ) $ ( d734 )
        d1192 : ( ( Set -> Set ) ∋ ( ( λ x11940 -> if true then x11940 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1192 = if ( ( Bool -> Bool ) ∋ ( ( λ x11930 -> false ) ) ) $ ( d982 ) then if false then false else d277 else if true then true else true
        d1195 : ( ( Set -> Set ) ∋ ( ( λ x11970 -> if true then x11970 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1195 = if if false then d879 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> x11960 ) ) ) $ ( true ) else if d713 then d303 else false
        d1198 : if false then ( ( Set -> Set ) ∋ ( ( λ x12000 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12010 -> x12010 ) ) ) $ ( Bool )
        d1198 = ( ( Bool -> Bool ) ∋ ( ( λ x11990 -> if d457 then x11990 else true ) ) ) $ ( if d844 then true else d1161 )
        d1202 : ( ( Set -> Set ) ∋ ( ( λ x12040 -> ( ( Set -> Set ) ∋ ( ( λ x12050 -> if true then x12040 else x12040 ) ) ) $ ( x12040 ) ) ) ) $ ( if true then Bool else Bool )
        d1202 = ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> if false then true else d220 ) ) ) $ ( if true then d48 else false )
        d1206 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12100 -> Bool ) ) ) $ ( Bool )
        d1206 = if ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> x12070 ) ) ) $ ( d31 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> d319 ) ) ) $ ( d807 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12090 -> x12090 ) ) ) $ ( d11 )
        d1211 : ( ( Set -> Set ) ∋ ( ( λ x12130 -> ( ( Set -> Set ) ∋ ( ( λ x12140 -> if true then x12140 else x12140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1211 = ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> if true then true else d691 ) ) ) $ ( if d11 then false else false )
        d1215 : ( ( Set -> Set ) ∋ ( ( λ x12180 -> ( ( Set -> Set ) ∋ ( ( λ x12190 -> if false then x12180 else x12180 ) ) ) $ ( x12180 ) ) ) ) $ ( if false then Bool else Bool )
        d1215 = if ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> true ) ) ) $ ( false ) then if d3 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> x12170 ) ) ) $ ( true )
        d1220 : ( ( Set -> Set ) ∋ ( ( λ x12220 -> if false then x12220 else x12220 ) ) ) $ ( if true then Bool else Bool )
        d1220 = ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> if x12210 then x12210 else false ) ) ) $ ( if d162 then d1044 else d829 )
        d1223 : ( ( Set -> Set ) ∋ ( ( λ x12250 -> ( ( Set -> Set ) ∋ ( ( λ x12260 -> if true then x12250 else x12250 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1223 = ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> if d603 then d747 else x12240 ) ) ) $ ( if true then d1143 else d541 )
        d1227 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12290 -> Bool ) ) ) $ ( Bool )
        d1227 = if if true then d832 else d1189 then ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> x12280 ) ) ) $ ( d286 ) else if false then true else false
        d1230 : ( ( Set -> Set ) ∋ ( ( λ x12320 -> if false then Bool else x12320 ) ) ) $ ( if false then Bool else Bool )
        d1230 = ( ( Bool -> Bool ) ∋ ( ( λ x12310 -> if x12310 then d1080 else d1115 ) ) ) $ ( if d1015 then false else true )
        d1233 : ( ( Set -> Set ) ∋ ( ( λ x12360 -> ( ( Set -> Set ) ∋ ( ( λ x12370 -> if false then x12360 else Bool ) ) ) $ ( x12360 ) ) ) ) $ ( if false then Bool else Bool )
        d1233 = ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> ( ( Bool -> Bool ) ∋ ( ( λ x12350 -> if x12350 then false else d1192 ) ) ) $ ( d471 ) ) ) ) $ ( if true then d439 else d781 )
        d1238 : ( ( Set -> Set ) ∋ ( ( λ x12400 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1238 = ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> if false then false else d206 ) ) ) $ ( if false then d999 else d77 )
        d1241 : ( ( Set -> Set ) ∋ ( ( λ x12440 -> ( ( Set -> Set ) ∋ ( ( λ x12450 -> if true then x12440 else x12450 ) ) ) $ ( x12440 ) ) ) ) $ ( if true then Bool else Bool )
        d1241 = if ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> false ) ) ) $ ( d627 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12430 -> false ) ) ) $ ( d954 ) else if d323 then true else true
        d1246 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1246 = if ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> d562 ) ) ) $ ( d368 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> false ) ) ) $ ( d497 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12490 -> true ) ) ) $ ( d319 )
        d1250 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1250 = if ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> d1241 ) ) ) $ ( false ) then if d982 then false else false else if d345 then d136 else false
        d1252 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12550 -> x12550 ) ) ) $ ( Bool )
        d1252 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x12530 -> d795 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> x12540 ) ) ) $ ( false )
        d1256 : if false then ( ( Set -> Set ) ∋ ( ( λ x12580 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1256 = ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> if x12570 then d847 else x12570 ) ) ) $ ( if d263 then false else d944 )
        d1259 : ( ( Set -> Set ) ∋ ( ( λ x12610 -> ( ( Set -> Set ) ∋ ( ( λ x12620 -> if false then x12610 else Bool ) ) ) $ ( x12610 ) ) ) ) $ ( if false then Bool else Bool )
        d1259 = ( ( Bool -> Bool ) ∋ ( ( λ x12600 -> if x12600 then x12600 else x12600 ) ) ) $ ( if true then d1184 else d501 )
        d1263 : ( ( Set -> Set ) ∋ ( ( λ x12650 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1263 = ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> if false then x12640 else false ) ) ) $ ( if true then true else d453 )
        d1266 : ( ( Set -> Set ) ∋ ( ( λ x12690 -> ( ( Set -> Set ) ∋ ( ( λ x12700 -> if false then Bool else Bool ) ) ) $ ( x12690 ) ) ) ) $ ( if false then Bool else Bool )
        d1266 = if if true then d291 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> d811 ) ) ) $ ( d1091 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> true ) ) ) $ ( true )
        d1271 : if false then ( ( Set -> Set ) ∋ ( ( λ x12730 -> x12730 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12740 -> x12740 ) ) ) $ ( Bool )
        d1271 = ( ( Bool -> Bool ) ∋ ( ( λ x12720 -> if true then d1084 else d414 ) ) ) $ ( if d337 then true else d345 )
        d1275 : ( ( Set -> Set ) ∋ ( ( λ x12780 -> if true then x12780 else x12780 ) ) ) $ ( if true then Bool else Bool )
        d1275 = ( ( Bool -> Bool ) ∋ ( ( λ x12760 -> ( ( Bool -> Bool ) ∋ ( ( λ x12770 -> if d954 then true else false ) ) ) $ ( d199 ) ) ) ) $ ( if d1189 then true else false )
        d1279 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1279 = ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> if false then false else d1076 ) ) ) $ ( if d229 then d296 else d595 )
        d1281 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1281 = if if d291 then true else d296 then ( ( Bool -> Bool ) ∋ ( ( λ x12820 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> x12830 ) ) ) $ ( true )
        d1284 : ( ( Set -> Set ) ∋ ( ( λ x12860 -> ( ( Set -> Set ) ∋ ( ( λ x12870 -> if true then x12870 else Bool ) ) ) $ ( x12860 ) ) ) ) $ ( if true then Bool else Bool )
        d1284 = if ( ( Bool -> Bool ) ∋ ( ( λ x12850 -> x12850 ) ) ) $ ( true ) then if false then d847 else true else if true then d928 else d1032
        d1288 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1288 = if ( ( Bool -> Bool ) ∋ ( ( λ x12890 -> x12890 ) ) ) $ ( true ) then if false then false else d1195 else if false then d1227 else true
        d1290 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12930 -> x12930 ) ) ) $ ( Bool )
        d1290 = ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> ( ( Bool -> Bool ) ∋ ( ( λ x12920 -> if x12910 then false else x12910 ) ) ) $ ( d372 ) ) ) ) $ ( if d769 then true else d650 )
        d1294 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12970 -> Bool ) ) ) $ ( Bool )
        d1294 = if ( ( Bool -> Bool ) ∋ ( ( λ x12950 -> x12950 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> false ) ) ) $ ( d410 ) else if false then d631 else true
        d1298 : ( ( Set -> Set ) ∋ ( ( λ x13010 -> if false then x13010 else x13010 ) ) ) $ ( if false then Bool else Bool )
        d1298 = ( ( Bool -> Bool ) ∋ ( ( λ x12990 -> ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> if d21 then d1206 else d959 ) ) ) $ ( d1241 ) ) ) ) $ ( if d82 then d199 else false )
        d1302 : if false then ( ( Set -> Set ) ∋ ( ( λ x13050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13060 -> x13060 ) ) ) $ ( Bool )
        d1302 = if ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> x13030 ) ) ) $ ( true ) then if d691 then true else d1107 else ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> false ) ) ) $ ( false )
        d1307 : ( ( Set -> Set ) ∋ ( ( λ x13100 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1307 = ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> if d1120 then x13080 else x13080 ) ) ) $ ( x13080 ) ) ) ) $ ( if d97 then d173 else true )
        d1311 : ( ( Set -> Set ) ∋ ( ( λ x13140 -> if false then x13140 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1311 = if if d862 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> x13120 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> x13130 ) ) ) $ ( false )
        d1315 : ( ( Set -> Set ) ∋ ( ( λ x13160 -> if false then x13160 else x13160 ) ) ) $ ( if false then Bool else Bool )
        d1315 = if if d296 then true else d384 then if false then d914 else false else if d821 then false else true
        d1317 : ( ( Set -> Set ) ∋ ( ( λ x13190 -> ( ( Set -> Set ) ∋ ( ( λ x13200 -> if true then x13190 else x13190 ) ) ) $ ( x13190 ) ) ) ) $ ( if true then Bool else Bool )
        d1317 = ( ( Bool -> Bool ) ∋ ( ( λ x13180 -> if false then false else x13180 ) ) ) $ ( if false then false else false )
        d1321 : if true then ( ( Set -> Set ) ∋ ( ( λ x13250 -> x13250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13260 -> Bool ) ) ) $ ( Bool )
        d1321 = if ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> false ) ) ) $ ( d811 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> false ) ) ) $ ( d40 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> x13240 ) ) ) $ ( d319 )
        d1327 : if true then ( ( Set -> Set ) ∋ ( ( λ x13300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13310 -> Bool ) ) ) $ ( Bool )
        d1327 = if if d579 then false else d667 then ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> d510 ) ) ) $ ( false )
        d1332 : ( ( Set -> Set ) ∋ ( ( λ x13350 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1332 = ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> if d667 then false else true ) ) ) $ ( x13330 ) ) ) ) $ ( if false then d1311 else true )
        d1336 : ( ( Set -> Set ) ∋ ( ( λ x13370 -> if false then x13370 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1336 = if if true then true else true then if true then false else d1073 else if d368 then d24 else true
        d1338 : if false then ( ( Set -> Set ) ∋ ( ( λ x13400 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1338 = ( ( Bool -> Bool ) ∋ ( ( λ x13390 -> if false then d1302 else x13390 ) ) ) $ ( if false then d1073 else d1089 )
        d1341 : ( ( Set -> Set ) ∋ ( ( λ x13450 -> ( ( Set -> Set ) ∋ ( ( λ x13460 -> if true then Bool else Bool ) ) ) $ ( x13450 ) ) ) ) $ ( if true then Bool else Bool )
        d1341 = if ( ( Bool -> Bool ) ∋ ( ( λ x13420 -> x13420 ) ) ) $ ( d1327 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> false ) ) ) $ ( d931 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> d1118 ) ) ) $ ( d671 )
        d1347 : ( ( Set -> Set ) ∋ ( ( λ x13490 -> ( ( Set -> Set ) ∋ ( ( λ x13500 -> if true then Bool else x13490 ) ) ) $ ( x13490 ) ) ) ) $ ( if true then Bool else Bool )
        d1347 = if ( ( Bool -> Bool ) ∋ ( ( λ x13480 -> d223 ) ) ) $ ( d13 ) then if d1037 then d699 else d1174 else if d1089 then false else d380
        d1351 : ( ( Set -> Set ) ∋ ( ( λ x13540 -> if false then x13540 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1351 = if if d737 then true else d576 then ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> x13530 ) ) ) $ ( d835 )
        d1355 : ( ( Set -> Set ) ∋ ( ( λ x13580 -> if false then x13580 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1355 = ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> ( ( Bool -> Bool ) ∋ ( ( λ x13570 -> if d847 then x13560 else d152 ) ) ) $ ( x13560 ) ) ) ) $ ( if false then d1168 else d207 )
        d1359 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13620 -> x13620 ) ) ) $ ( Bool )
        d1359 = if if d380 then d313 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13600 -> d654 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> true ) ) ) $ ( d436 )
        d1363 : ( ( Set -> Set ) ∋ ( ( λ x13660 -> ( ( Set -> Set ) ∋ ( ( λ x13670 -> if true then x13670 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1363 = if if d1279 then d77 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13640 -> x13640 ) ) ) $ ( d73 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13650 -> d447 ) ) ) $ ( true )
        d1368 : ( ( Set -> Set ) ∋ ( ( λ x13700 -> if true then x13700 else x13700 ) ) ) $ ( if false then Bool else Bool )
        d1368 = ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> if true then d419 else x13690 ) ) ) $ ( if false then d162 else true )
        d1371 : ( ( Set -> Set ) ∋ ( ( λ x13730 -> if true then Bool else x13730 ) ) ) $ ( if false then Bool else Bool )
        d1371 = ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> if d368 then false else d887 ) ) ) $ ( if d1368 then d1178 else false )
        d1374 : ( ( Set -> Set ) ∋ ( ( λ x13760 -> if false then x13760 else x13760 ) ) ) $ ( if true then Bool else Bool )
        d1374 = ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> if true then d795 else x13750 ) ) ) $ ( if d311 then d818 else true )
        d1377 : ( ( Set -> Set ) ∋ ( ( λ x13800 -> ( ( Set -> Set ) ∋ ( ( λ x13810 -> if false then x13810 else Bool ) ) ) $ ( x13800 ) ) ) ) $ ( if false then Bool else Bool )
        d1377 = ( ( Bool -> Bool ) ∋ ( ( λ x13780 -> ( ( Bool -> Bool ) ∋ ( ( λ x13790 -> if d1332 then d1003 else false ) ) ) $ ( x13780 ) ) ) ) $ ( if d356 then true else true )
        d1382 : ( ( Set -> Set ) ∋ ( ( λ x13840 -> ( ( Set -> Set ) ∋ ( ( λ x13850 -> if true then Bool else x13840 ) ) ) $ ( x13840 ) ) ) ) $ ( if false then Bool else Bool )
        d1382 = if if false then d217 else d1178 then if true then d639 else d64 else ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> d1233 ) ) ) $ ( d206 )
        d1386 : ( ( Set -> Set ) ∋ ( ( λ x13890 -> ( ( Set -> Set ) ∋ ( ( λ x13900 -> if false then x13900 else x13900 ) ) ) $ ( x13890 ) ) ) ) $ ( if false then Bool else Bool )
        d1386 = if ( ( Bool -> Bool ) ∋ ( ( λ x13870 -> x13870 ) ) ) $ ( d1171 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> d177 ) ) ) $ ( d67 ) else if d914 then false else false
        d1391 : ( ( Set -> Set ) ∋ ( ( λ x13930 -> ( ( Set -> Set ) ∋ ( ( λ x13940 -> if true then x13930 else x13940 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1391 = ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> if x13920 then x13920 else d825 ) ) ) $ ( if d21 then d1250 else true )
        d1395 : if false then ( ( Set -> Set ) ∋ ( ( λ x13980 -> x13980 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1395 = ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> ( ( Bool -> Bool ) ∋ ( ( λ x13970 -> if true then d17 else x13960 ) ) ) $ ( x13960 ) ) ) ) $ ( if d785 then false else false )
        d1399 : if true then ( ( Set -> Set ) ∋ ( ( λ x14020 -> x14020 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1399 = if if false then d1104 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> d7 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> x14010 ) ) ) $ ( false )
        d1403 : ( ( Set -> Set ) ∋ ( ( λ x14050 -> ( ( Set -> Set ) ∋ ( ( λ x14060 -> if false then x14050 else x14050 ) ) ) $ ( x14050 ) ) ) ) $ ( if false then Bool else Bool )
        d1403 = ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> if true then d510 else d645 ) ) ) $ ( if d789 then false else false )
        d1407 : ( ( Set -> Set ) ∋ ( ( λ x14090 -> if true then Bool else x14090 ) ) ) $ ( if false then Bool else Bool )
        d1407 = ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> if d1227 then d400 else d1174 ) ) ) $ ( if d281 then true else false )
        d1410 : ( ( Set -> Set ) ∋ ( ( λ x14110 -> if false then x14110 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1410 = if if true then false else d1395 then if true then true else d386 else if true then true else d747
        d1412 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1412 = if ( ( Bool -> Bool ) ∋ ( ( λ x14130 -> d69 ) ) ) $ ( d56 ) then if false then d40 else d905 else if d141 then d501 else d569
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14170 -> if true then x14170 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1414 = ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> ( ( Bool -> Bool ) ∋ ( ( λ x14160 -> if d1391 then x14160 else x14150 ) ) ) $ ( false ) ) ) ) $ ( if true then d207 else true )
        d1418 : if true then ( ( Set -> Set ) ∋ ( ( λ x14210 -> x14210 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1418 = if ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> true ) ) ) $ ( true ) then if d480 then d56 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> d341 ) ) ) $ ( d158 )
        d1422 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1422 = ( ( Bool -> Bool ) ∋ ( ( λ x14230 -> ( ( Bool -> Bool ) ∋ ( ( λ x14240 -> if d682 then true else d396 ) ) ) $ ( d595 ) ) ) ) $ ( if d73 then d1131 else d1115 )
        d1425 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14280 -> x14280 ) ) ) $ ( Bool )
        d1425 = ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> ( ( Bool -> Bool ) ∋ ( ( λ x14270 -> if x14260 then d754 else false ) ) ) $ ( x14260 ) ) ) ) $ ( if d328 then d682 else false )
        d1429 : if false then ( ( Set -> Set ) ∋ ( ( λ x14320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14330 -> Bool ) ) ) $ ( Bool )
        d1429 = ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> if d341 then x14310 else false ) ) ) $ ( d835 ) ) ) ) $ ( if d136 then d815 else d811 )
        d1434 : ( ( Set -> Set ) ∋ ( ( λ x14360 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1434 = if if d1120 then false else d1195 then ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> d443 ) ) ) $ ( d1359 ) else if false then d734 else false
        d1437 : ( ( Set -> Set ) ∋ ( ( λ x14380 -> if false then Bool else x14380 ) ) ) $ ( if true then Bool else Bool )
        d1437 = if if false then true else d1076 then if false then d149 else d1336 else if d432 then d792 else d1412
        d1439 : ( ( Set -> Set ) ∋ ( ( λ x14420 -> if false then Bool else x14420 ) ) ) $ ( if true then Bool else Bool )
        d1439 = ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> if d1271 then x14410 else d527 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d1443 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1443 = if ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> d353 ) ) ) $ ( true ) then if d115 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> d1386 ) ) ) $ ( false )
        d1446 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14490 -> Bool ) ) ) $ ( Bool )
        d1446 = if if false then d206 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> x14480 ) ) ) $ ( true )
        d1450 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14520 -> Bool ) ) ) $ ( Bool )
        d1450 = ( ( Bool -> Bool ) ∋ ( ( λ x14510 -> if d94 then false else x14510 ) ) ) $ ( if d1143 then d1290 else d296 )
        d1453 : ( ( Set -> Set ) ∋ ( ( λ x14550 -> if false then x14550 else x14550 ) ) ) $ ( if true then Bool else Bool )
        d1453 = ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> if x14540 then d1027 else d1165 ) ) ) $ ( if d924 then d847 else d213 )
        d1456 : ( ( Set -> Set ) ∋ ( ( λ x14580 -> ( ( Set -> Set ) ∋ ( ( λ x14590 -> if true then Bool else Bool ) ) ) $ ( x14580 ) ) ) ) $ ( if false then Bool else Bool )
        d1456 = ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> if d67 then d682 else x14570 ) ) ) $ ( if d592 then true else d536 )
        d1460 : ( ( Set -> Set ) ∋ ( ( λ x14620 -> ( ( Set -> Set ) ∋ ( ( λ x14630 -> if true then Bool else Bool ) ) ) $ ( x14620 ) ) ) ) $ ( if false then Bool else Bool )
        d1460 = if if false then false else false then if true then d1399 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> true ) ) ) $ ( false )
        d1464 : ( ( Set -> Set ) ∋ ( ( λ x14660 -> if false then Bool else x14660 ) ) ) $ ( if false then Bool else Bool )
        d1464 = if if true then d229 else d384 then if true then d1341 else d69 else ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> true ) ) ) $ ( false )
        d1467 : if true then ( ( Set -> Set ) ∋ ( ( λ x14700 -> x14700 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1467 = if ( ( Bool -> Bool ) ∋ ( ( λ x14680 -> x14680 ) ) ) $ ( true ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> x14690 ) ) ) $ ( d293 )
        d1471 : if false then ( ( Set -> Set ) ∋ ( ( λ x14750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14760 -> x14760 ) ) ) $ ( Bool )
        d1471 = if ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> false ) ) ) $ ( d1165 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14730 -> false ) ) ) $ ( d576 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> x14740 ) ) ) $ ( d1391 )
        d1477 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1477 = ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> if true then x14780 else true ) ) ) $ ( if d453 then d1055 else d1174 )
        d1479 : ( ( Set -> Set ) ∋ ( ( λ x14820 -> ( ( Set -> Set ) ∋ ( ( λ x14830 -> if true then x14830 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1479 = ( ( Bool -> Bool ) ∋ ( ( λ x14800 -> ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> if d311 then x14800 else true ) ) ) $ ( x14800 ) ) ) ) $ ( if false then d303 else d607 )
        d1484 : ( ( Set -> Set ) ∋ ( ( λ x14860 -> ( ( Set -> Set ) ∋ ( ( λ x14870 -> if false then x14870 else Bool ) ) ) $ ( x14860 ) ) ) ) $ ( if false then Bool else Bool )
        d1484 = if if false then false else false then if d603 then true else d1073 else ( ( Bool -> Bool ) ∋ ( ( λ x14850 -> x14850 ) ) ) $ ( d921 )
        d1488 : ( ( Set -> Set ) ∋ ( ( λ x14910 -> if false then x14910 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1488 = ( ( Bool -> Bool ) ∋ ( ( λ x14890 -> ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> if x14890 then x14900 else d973 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d248 )
        d1492 : if false then ( ( Set -> Set ) ∋ ( ( λ x14950 -> x14950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14960 -> x14960 ) ) ) $ ( Bool )
        d1492 = ( ( Bool -> Bool ) ∋ ( ( λ x14930 -> ( ( Bool -> Bool ) ∋ ( ( λ x14940 -> if true then x14940 else x14940 ) ) ) $ ( d552 ) ) ) ) $ ( if d852 then d21 else false )
        d1497 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1497 = ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> if x14980 then d144 else false ) ) ) $ ( if false then d1198 else false )
        d1499 : ( ( Set -> Set ) ∋ ( ( λ x15020 -> if true then x15020 else x15020 ) ) ) $ ( if false then Bool else Bool )
        d1499 = ( ( Bool -> Bool ) ∋ ( ( λ x15000 -> ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> if d410 then x15010 else x15010 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d1503 : ( ( Set -> Set ) ∋ ( ( λ x15060 -> ( ( Set -> Set ) ∋ ( ( λ x15070 -> if true then Bool else x15060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1503 = if ( ( Bool -> Bool ) ∋ ( ( λ x15040 -> d607 ) ) ) $ ( d627 ) then if d807 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x15050 -> x15050 ) ) ) $ ( d675 )
        d1508 : ( ( Set -> Set ) ∋ ( ( λ x15120 -> if false then x15120 else x15120 ) ) ) $ ( if false then Bool else Bool )
        d1508 = if ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> x15090 ) ) ) $ ( d1414 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> d704 ) ) ) $ ( d1003 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> d1015 ) ) ) $ ( d708 )
        d1513 : if false then ( ( Set -> Set ) ∋ ( ( λ x15140 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1513 = if if true then false else d1062 then if d17 then false else false else if d898 then d1223 else d1450
        d1515 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15180 -> Bool ) ) ) $ ( Bool )
        d1515 = if ( ( Bool -> Bool ) ∋ ( ( λ x15160 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> x15170 ) ) ) $ ( false ) else if true then true else false
        d1519 : ( ( Set -> Set ) ∋ ( ( λ x15210 -> ( ( Set -> Set ) ∋ ( ( λ x15220 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1519 = if ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> x15200 ) ) ) $ ( d128 ) then if true then true else false else if true then d1052 else false
        d1523 : ( ( Set -> Set ) ∋ ( ( λ x15250 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1523 = if if false then true else d186 then if false then true else d761 else ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> d1275 ) ) ) $ ( false )
        d1526 : ( ( Set -> Set ) ∋ ( ( λ x15290 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1526 = ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> if false then d1515 else x15270 ) ) ) $ ( d1223 ) ) ) ) $ ( if d59 then d1488 else false )
        d1530 : if true then ( ( Set -> Set ) ∋ ( ( λ x15330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1530 = ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> if true then true else x15320 ) ) ) $ ( x15310 ) ) ) ) $ ( if d1467 then d754 else true )
        d1534 : ( ( Set -> Set ) ∋ ( ( λ x15370 -> ( ( Set -> Set ) ∋ ( ( λ x15380 -> if true then x15380 else x15380 ) ) ) $ ( x15370 ) ) ) ) $ ( if true then Bool else Bool )
        d1534 = ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> if x15360 then x15360 else x15360 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d691 )
        d1539 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15410 -> x15410 ) ) ) $ ( Bool )
        d1539 = ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> if true then false else x15400 ) ) ) $ ( if d69 then true else false )
        d1542 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1542 = ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> if true then d1391 else true ) ) ) $ ( if d893 then true else d94 )
        d1544 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1544 = if if d902 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> x15450 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> true ) ) ) $ ( d1446 )
        d1547 : if true then ( ( Set -> Set ) ∋ ( ( λ x15480 -> x15480 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15490 -> Bool ) ) ) $ ( Bool )
        d1547 = if if true then d1094 else d1027 then if d308 then d326 else true else if false then false else d603
        d1550 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1550 = if ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> true ) ) ) $ ( d255 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> d1544 ) ) ) $ ( d69 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> x15530 ) ) ) $ ( true )
        d1554 : ( ( Set -> Set ) ∋ ( ( λ x15580 -> ( ( Set -> Set ) ∋ ( ( λ x15590 -> if true then Bool else x15590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1554 = if ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> true ) ) ) $ ( d902 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> false ) ) ) $ ( d541 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> false ) ) ) $ ( d1298 )
        d1560 : if true then ( ( Set -> Set ) ∋ ( ( λ x15620 -> x15620 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1560 = ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> if x15610 then false else true ) ) ) $ ( if d1418 then d1238 else d213 )
        d1563 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15660 -> x15660 ) ) ) $ ( Bool )
        d1563 = ( ( Bool -> Bool ) ∋ ( ( λ x15640 -> ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> if false then true else d1266 ) ) ) $ ( false ) ) ) ) $ ( if false then d323 else d708 )
        d1567 : ( ( Set -> Set ) ∋ ( ( λ x15680 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1567 = if if true then d581 else d56 then if false then true else false else if d579 then d708 else d154
        d1569 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1569 = ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> if d565 then d234 else false ) ) ) $ ( if d1386 then d1471 else d847 )
        d1571 : if true then ( ( Set -> Set ) ∋ ( ( λ x15740 -> x15740 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1571 = if ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> x15720 ) ) ) $ ( false ) then if true then d587 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> false ) ) ) $ ( d522 )
        d1575 : if false then ( ( Set -> Set ) ∋ ( ( λ x15780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15790 -> Bool ) ) ) $ ( Bool )
        d1575 = ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> if x15760 then d747 else d1165 ) ) ) $ ( x15760 ) ) ) ) $ ( if false then false else true )
        d1580 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1580 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> d1484 ) ) ) $ ( d1294 ) else if false then false else false
        d1582 : ( ( Set -> Set ) ∋ ( ( λ x15840 -> ( ( Set -> Set ) ∋ ( ( λ x15850 -> if true then x15840 else x15850 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1582 = ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> if x15830 then d1259 else d1115 ) ) ) $ ( if false then false else false )
        d1586 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15890 -> Bool ) ) ) $ ( Bool )
        d1586 = if if d73 then d1425 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15870 -> x15870 ) ) ) $ ( d598 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> true ) ) ) $ ( true )
        d1590 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15930 -> Bool ) ) ) $ ( Bool )
        d1590 = if ( ( Bool -> Bool ) ∋ ( ( λ x15910 -> x15910 ) ) ) $ ( d52 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> d421 ) ) ) $ ( d1238 ) else if true then true else true
        d1594 : if false then ( ( Set -> Set ) ∋ ( ( λ x15970 -> x15970 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1594 = if if d750 then true else d778 then ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> false ) ) ) $ ( d663 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> true ) ) ) $ ( false )
        d1598 : ( ( Set -> Set ) ∋ ( ( λ x16000 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1598 = if ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> false ) ) ) $ ( false ) then if true then d332 else false else if false then d248 else false
        d1601 : if false then ( ( Set -> Set ) ∋ ( ( λ x16030 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1601 = if if d1037 then false else d1298 then ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> x16020 ) ) ) $ ( false ) else if d1544 then d162 else d1554
        d1604 : ( ( Set -> Set ) ∋ ( ( λ x16060 -> ( ( Set -> Set ) ∋ ( ( λ x16070 -> if false then x16070 else Bool ) ) ) $ ( x16060 ) ) ) ) $ ( if true then Bool else Bool )
        d1604 = ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> if false then x16050 else x16050 ) ) ) $ ( if d384 then d107 else d619 )
        d1608 : ( ( Set -> Set ) ∋ ( ( λ x16100 -> if true then x16100 else x16100 ) ) ) $ ( if false then Bool else Bool )
        d1608 = if if false then true else d1284 then ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> d815 ) ) ) $ ( d97 ) else if true then d48 else d1073
        d1611 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1611 = if ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> d48 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> true ) ) ) $ ( d173 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> false ) ) ) $ ( d348 )
        d1615 : if true then ( ( Set -> Set ) ∋ ( ( λ x16170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16180 -> Bool ) ) ) $ ( Bool )
        d1615 = if if false then d1145 else false then if d921 then false else d82 else ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> d173 ) ) ) $ ( false )
        d1619 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16220 -> x16220 ) ) ) $ ( Bool )
        d1619 = ( ( Bool -> Bool ) ∋ ( ( λ x16200 -> ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> if x16210 then d1279 else true ) ) ) $ ( false ) ) ) ) $ ( if d565 then d716 else true )
        d1623 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1623 = if ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> d1464 ) ) ) $ ( true ) then if false then d941 else d368 else if false then d410 else true
        d1625 : ( ( Set -> Set ) ∋ ( ( λ x16280 -> if true then x16280 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1625 = ( ( Bool -> Bool ) ∋ ( ( λ x16260 -> ( ( Bool -> Bool ) ∋ ( ( λ x16270 -> if false then d1598 else false ) ) ) $ ( d1414 ) ) ) ) $ ( if false then false else false )
        d1629 : ( ( Set -> Set ) ∋ ( ( λ x16310 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1629 = if ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> true ) ) ) $ ( d173 ) then if true then true else d353 else if d682 then true else d1395
        d1632 : ( ( Set -> Set ) ∋ ( ( λ x16340 -> ( ( Set -> Set ) ∋ ( ( λ x16350 -> if true then x16340 else Bool ) ) ) $ ( x16340 ) ) ) ) $ ( if false then Bool else Bool )
        d1632 = if ( ( Bool -> Bool ) ∋ ( ( λ x16330 -> d1189 ) ) ) $ ( true ) then if false then true else true else if d973 then false else d882
        d1636 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1636 = ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> if d3 then d1550 else d675 ) ) ) $ ( if false then false else d1062 )
        d1638 : ( ( Set -> Set ) ∋ ( ( λ x16420 -> ( ( Set -> Set ) ∋ ( ( λ x16430 -> if false then x16420 else x16430 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1638 = if ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> false ) ) ) $ ( d757 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16400 -> d686 ) ) ) $ ( d1259 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> d725 ) ) ) $ ( d1580 )