module Decls150Test19  where
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
        d1 : if false then ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if x20 then true else false ) ) ) $ ( if true then false else false )
        d4 : if true then ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then d1 else d1 ) ) ) $ ( if false then false else d1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x100 ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if x80 then d4 else d4 ) ) ) $ ( d1 ) ) ) ) $ ( if true then d1 else false )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then x170 else Bool ) ) ) $ ( x160 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = if ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x140 -> true ) ) ) $ ( d7 ) else ( ( Bool -> Bool ) ∋ ( ( λ x150 -> true ) ) ) $ ( false )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if true then x210 else x210 ) ) ) $ ( if false then Bool else Bool )
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> true ) ) ) $ ( d12 ) then if false then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d12 ) ) ) $ ( false )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then x260 else x260 ) ) ) $ ( x250 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = if ( ( Bool -> Bool ) ∋ ( ( λ x230 -> false ) ) ) $ ( d12 ) then if d12 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x240 -> false ) ) ) $ ( true )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if x290 then true else d12 ) ) ) $ ( d22 ) ) ) ) $ ( if true then true else d4 )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then x340 else x340 ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if false then x330 else x330 ) ) ) $ ( true ) ) ) ) $ ( if d18 then d27 else d18 )
        d35 : if false then ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if d27 then false else true ) ) ) $ ( d22 ) ) ) ) $ ( if false then d31 else d18 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x430 -> if true then x430 else x430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d31 then true else d12 ) ) ) $ ( d31 ) ) ) ) $ ( if d18 then d1 else d12 )
        d44 : if true then ( ( Set -> Set ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x470 -> x470 ) ) ) $ ( Bool )
        d44 = if ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( true ) then if d1 then d12 else d39 else if false then false else true
        d48 : if true then ( ( Set -> Set ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if x490 then d18 else false ) ) ) $ ( if true then false else false )
        d51 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool )
        d51 = if ( ( Bool -> Bool ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( d4 ) then if false then d48 else d35 else ( ( Bool -> Bool ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( d35 )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then x570 else Bool ) ) ) $ ( if false then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if d31 then d27 else x560 ) ) ) $ ( if d18 then true else d1 )
        d58 : if true then ( ( Set -> Set ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( true ) then if true then d39 else d12 else if d1 then false else d44
        d62 : ( ( Set -> Set ) ∋ ( ( λ x650 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if false then d7 else d35 ) ) ) $ ( false ) ) ) ) $ ( if d55 then d48 else d55 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if x670 then x670 else x680 ) ) ) $ ( x670 ) ) ) ) $ ( if false then d7 else true )
        d70 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x710 -> Bool ) ) ) $ ( Bool )
        d70 = if if d66 then d22 else d18 then if d51 then d7 else d31 else if d31 then d18 else d4
        d72 : ( ( Set -> Set ) ∋ ( ( λ x750 -> ( ( Set -> Set ) ∋ ( ( λ x760 -> if false then Bool else x760 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if x740 then x730 else true ) ) ) $ ( d55 ) ) ) ) $ ( if d12 then d27 else true )
        d77 : if true then ( ( Set -> Set ) ∋ ( ( λ x790 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if x780 then true else d18 ) ) ) $ ( if true then false else d18 )
        d80 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if d31 then d70 else x810 ) ) ) $ ( x810 ) ) ) ) $ ( if true then d70 else false )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> if true then x870 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if d58 then x860 else x860 ) ) ) $ ( x850 ) ) ) ) $ ( if d4 then false else true )
        d89 : if true then ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if false then true else true ) ) ) $ ( if d77 then true else d51 )
        d92 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x960 -> x960 ) ) ) $ ( Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d4 ) ) ) $ ( d72 ) then ( ( Bool -> Bool ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( d27 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> if true then Bool else Bool ) ) ) $ ( x990 ) ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if true then false else d80 ) ) ) $ ( if false then d58 else false )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if true then x1030 else Bool ) ) ) $ ( if false then Bool else Bool )
        d101 = if ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> false ) ) ) $ ( false ) then if d62 then false else true else if true then true else d97
        d104 : if true then ( ( Set -> Set ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d89 then d97 else true ) ) ) $ ( if d39 then d39 else d55 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then x1100 else x1090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if x1080 then d4 else x1080 ) ) ) $ ( if d44 then false else d51 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> if true then Bool else x1130 ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if x1120 then x1120 else d51 ) ) ) $ ( if d4 then false else true )
        d114 : if false then if true then Bool else Bool else if true then Bool else Bool
        d114 = if if d1 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> d77 ) ) ) $ ( d55 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( d80 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> ( ( Set -> Set ) ∋ ( ( λ x1200 -> if false then x1190 else Bool ) ) ) $ ( x1190 ) ) ) ) $ ( if true then Bool else Bool )
        d117 = if if d22 then true else true then if d62 then d12 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> d58 ) ) ) $ ( false )
        d121 : if false then ( ( Set -> Set ) ∋ ( ( λ x1230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if false then x1220 else true ) ) ) $ ( if true then false else true )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then Bool else Bool ) ) ) $ ( x1260 ) ) ) ) $ ( if true then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if d80 then d58 else x1250 ) ) ) $ ( if true then d39 else d58 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> if true then Bool else x1310 ) ) ) $ ( if false then Bool else Bool )
        d128 = if ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( d55 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> false ) ) ) $ ( false ) else if false then d18 else d101
        d132 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( Bool )
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if x1340 then x1330 else d31 ) ) ) $ ( x1330 ) ) ) ) $ ( if true then false else d84 )
        d136 : if false then ( ( Set -> Set ) ∋ ( ( λ x1380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( Bool )
        d136 = if ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> false ) ) ) $ ( d58 ) then if true then true else false else if true then true else false
        d140 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( Bool )
        d140 = if if true then d35 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> d117 ) ) ) $ ( true ) else if false then d39 else d4
        d143 : if true then ( ( Set -> Set ) ∋ ( ( λ x1450 -> x1450 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d143 = if ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( d101 ) then if false then false else false else if true then false else true
        d146 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1490 -> Bool ) ) ) $ ( Bool )
        d146 = if ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d58 ) ) ) $ ( false ) then if true then false else d35 else ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> false ) ) ) $ ( true )
        d150 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then Bool else x1520 ) ) ) $ ( if true then Bool else Bool )
        d150 = if if true then false else d27 then if d72 then d77 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> true ) ) ) $ ( false )
        d153 : ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then Bool else x1540 ) ) ) $ ( if false then Bool else Bool )
        d153 = if if d107 then true else false then if d143 then d66 else false else if false then true else false
        d155 : if false then ( ( Set -> Set ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool )
        d155 = if if true then d114 else d80 then ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> false ) ) ) $ ( d104 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> false ) ) ) $ ( false )
        d160 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1630 -> Bool ) ) ) $ ( Bool )
        d160 = if if true then d84 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> d51 ) ) ) $ ( d132 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( false )
        d164 : if false then ( ( Set -> Set ) ∋ ( ( λ x1670 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if d27 then true else false ) ) ) $ ( true ) ) ) ) $ ( if false then d153 else d55 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then x1710 else Bool ) ) ) $ ( if false then Bool else Bool )
        d168 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> d124 ) ) ) $ ( d101 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> false ) ) ) $ ( true )
        d172 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if d22 then x1730 else x1730 ) ) ) $ ( if true then d27 else false )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1770 -> ( ( Set -> Set ) ∋ ( ( λ x1780 -> if true then x1770 else x1780 ) ) ) $ ( x1770 ) ) ) ) $ ( if false then Bool else Bool )
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> true ) ) ) $ ( d58 ) then if false then d4 else d104 else if true then false else false
        d179 : if false then if true then Bool else Bool else if false then Bool else Bool
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> if x1800 then true else true ) ) ) $ ( if d62 then false else false )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d181 = if ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> x1820 ) ) ) $ ( false ) then if d155 then false else d84 else if d124 then d1 else d114
        d184 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if false then d111 else x1850 ) ) ) $ ( if d114 then true else true )
        d187 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( Bool )
        d187 = if ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> d146 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> false ) ) ) $ ( d150 ) else if true then false else d62
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then x1940 else x1940 ) ) ) $ ( if false then Bool else Bool )
        d191 = if ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> x1920 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> d44 ) ) ) $ ( d39 ) else if d39 then d70 else d143
        d195 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> if false then x1980 else Bool ) ) ) $ ( x1970 ) ) ) ) $ ( if false then Bool else Bool )
        d195 = ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if x1960 then x1960 else x1960 ) ) ) $ ( if false then d66 else d104 )
        d199 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2010 -> x2010 ) ) ) $ ( Bool )
        d199 = if ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> d72 ) ) ) $ ( false ) then if true then false else d66 else if false then false else true
        d202 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2050 -> Bool ) ) ) $ ( Bool )
        d202 = ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if x2030 then x2040 else true ) ) ) $ ( x2030 ) ) ) ) $ ( if d128 then true else d97 )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> if false then x2080 else x2080 ) ) ) $ ( if true then Bool else Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> if false then x2070 else d128 ) ) ) $ ( if false then d187 else d97 )
        d209 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> if false then x2120 else x2120 ) ) ) $ ( if false then Bool else Bool )
        d209 = ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> if x2100 then x2110 else x2100 ) ) ) $ ( false ) ) ) ) $ ( if d164 then d48 else d153 )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x2150 -> ( ( Set -> Set ) ∋ ( ( λ x2160 -> if true then Bool else Bool ) ) ) $ ( x2150 ) ) ) ) $ ( if true then Bool else Bool )
        d213 = if if d146 then d55 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> false ) ) ) $ ( false ) else if d184 then true else d206
        d217 : if false then ( ( Set -> Set ) ∋ ( ( λ x2190 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> if d44 then false else true ) ) ) $ ( if d172 then d12 else d48 )
        d220 : if false then ( ( Set -> Set ) ∋ ( ( λ x2230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d220 = if if false then d80 else d80 then ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d206 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> d84 ) ) ) $ ( d128 )
        d224 : if false then if false then Bool else Bool else if false then Bool else Bool
        d224 = if ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> false ) ) ) $ ( d160 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( true )
        d228 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2300 -> x2300 ) ) ) $ ( Bool )
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> if true then d146 else false ) ) ) $ ( if d58 then true else false )
        d231 : if true then ( ( Set -> Set ) ∋ ( ( λ x2340 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d231 = if if d27 then true else d195 then ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> x2320 ) ) ) $ ( d191 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( true )
        d235 : if false then ( ( Set -> Set ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d235 = if ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> d224 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> false ) ) ) $ ( d121 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( true )
        d240 : if true then ( ( Set -> Set ) ∋ ( ( λ x2430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2440 -> Bool ) ) ) $ ( Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if true then d168 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d31 else false )
        d245 : if false then ( ( Set -> Set ) ∋ ( ( λ x2470 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2480 -> Bool ) ) ) $ ( Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> if false then x2460 else x2460 ) ) ) $ ( if false then d72 else false )
        d249 : ( ( Set -> Set ) ∋ ( ( λ x2520 -> if false then Bool else x2520 ) ) ) $ ( if false then Bool else Bool )
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> if false then false else x2500 ) ) ) $ ( x2500 ) ) ) ) $ ( if d240 then true else d206 )
        d253 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2550 -> x2550 ) ) ) $ ( Bool )
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if false then true else true ) ) ) $ ( if d27 then d7 else d202 )
        d256 : if false then ( ( Set -> Set ) ∋ ( ( λ x2590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( Bool )
        d256 = if if d150 then d206 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> d107 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> x2580 ) ) ) $ ( false )
        d261 : ( ( Set -> Set ) ∋ ( ( λ x2630 -> if false then x2630 else Bool ) ) ) $ ( if true then Bool else Bool )
        d261 = if if d213 then d4 else d114 then ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> x2620 ) ) ) $ ( false ) else if true then true else d240
        d264 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2670 -> x2670 ) ) ) $ ( Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if x2660 then d175 else true ) ) ) $ ( d55 ) ) ) ) $ ( if d97 then d62 else d12 )
        d268 : if true then ( ( Set -> Set ) ∋ ( ( λ x2700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2710 -> Bool ) ) ) $ ( Bool )
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> if false then x2690 else true ) ) ) $ ( if d172 then true else false )
        d272 : ( ( Set -> Set ) ∋ ( ( λ x2750 -> ( ( Set -> Set ) ∋ ( ( λ x2760 -> if false then Bool else x2760 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d272 = ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> if d191 then d97 else d175 ) ) ) $ ( x2730 ) ) ) ) $ ( if false then false else d62 )
        d277 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2790 -> Bool ) ) ) $ ( Bool )
        d277 = if if d77 then false else true then if d140 then false else d256 else ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( d150 )
        d280 : if false then ( ( Set -> Set ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2840 -> Bool ) ) ) $ ( Bool )
        d280 = if if true then d268 else d206 then ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( d7 )
        d285 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> if true then Bool else x2880 ) ) ) $ ( x2870 ) ) ) ) $ ( if false then Bool else Bool )
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if x2860 then true else x2860 ) ) ) $ ( if true then d124 else true )
        d289 : if true then if false then Bool else Bool else if true then Bool else Bool
        d289 = if if true then true else d104 then ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> d104 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> true ) ) ) $ ( false )
        d292 : if true then ( ( Set -> Set ) ∋ ( ( λ x2940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> if x2930 then x2930 else true ) ) ) $ ( if true then d153 else d7 )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x2970 -> ( ( Set -> Set ) ∋ ( ( λ x2980 -> if false then Bool else x2980 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> if x2960 then d12 else x2960 ) ) ) $ ( if d104 then false else d143 )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x3020 -> ( ( Set -> Set ) ∋ ( ( λ x3030 -> if false then x3030 else x3020 ) ) ) $ ( x3020 ) ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> if d92 then true else x3010 ) ) ) $ ( x3000 ) ) ) ) $ ( if d277 then d150 else true )
        d304 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> if false then x3070 else x3070 ) ) ) $ ( if false then Bool else Bool )
        d304 = ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> if x3050 then x3050 else x3060 ) ) ) $ ( d256 ) ) ) ) $ ( if d84 then true else d35 )
        d308 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3100 -> x3100 ) ) ) $ ( Bool )
        d308 = if if d140 then false else d114 then if d202 then d44 else d104 else ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> true ) ) ) $ ( false )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> if true then x3130 else Bool ) ) ) $ ( if false then Bool else Bool )
        d311 = if if false then d280 else true then if false then d89 else d55 else ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> x3120 ) ) ) $ ( d146 )
        d314 : if false then if true then Bool else Bool else if false then Bool else Bool
        d314 = if if false then d7 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> false ) ) ) $ ( d235 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> x3160 ) ) ) $ ( true )
        d317 : ( ( Set -> Set ) ∋ ( ( λ x3200 -> if true then x3200 else x3200 ) ) ) $ ( if false then Bool else Bool )
        d317 = if ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> x3180 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> d111 ) ) ) $ ( d314 ) else if true then d153 else true
        d321 : if true then ( ( Set -> Set ) ∋ ( ( λ x3230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3240 -> x3240 ) ) ) $ ( Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> if false then x3220 else d140 ) ) ) $ ( if true then d314 else false )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> if true then x3280 else x3280 ) ) ) $ ( if true then Bool else Bool )
        d325 = ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> if true then false else d97 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d308 )
        d329 : if true then ( ( Set -> Set ) ∋ ( ( λ x3320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool )
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if d92 then d277 else true ) ) ) $ ( d44 ) ) ) ) $ ( if false then d184 else d12 )
        d334 : if true then ( ( Set -> Set ) ∋ ( ( λ x3360 -> x3360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3370 -> Bool ) ) ) $ ( Bool )
        d334 = if if true then true else true then if true then true else d101 else ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> d62 ) ) ) $ ( false )
        d338 : if true then ( ( Set -> Set ) ∋ ( ( λ x3400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3410 -> Bool ) ) ) $ ( Bool )
        d338 = if if d84 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> x3390 ) ) ) $ ( false ) else if d292 then d199 else false
        d342 : if true then ( ( Set -> Set ) ∋ ( ( λ x3450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3460 -> Bool ) ) ) $ ( Bool )
        d342 = if ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> d77 ) ) ) $ ( false ) then if d111 then d12 else d58 else ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> d1 ) ) ) $ ( false )
        d347 : if false then ( ( Set -> Set ) ∋ ( ( λ x3490 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3500 -> Bool ) ) ) $ ( Bool )
        d347 = if if true then false else false then if d7 then d77 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> true ) ) ) $ ( d35 )
        d351 : if true then ( ( Set -> Set ) ∋ ( ( λ x3530 -> x3530 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3540 -> Bool ) ) ) $ ( Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> if d48 then false else x3520 ) ) ) $ ( if d253 then false else d55 )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x3570 -> ( ( Set -> Set ) ∋ ( ( λ x3580 -> if false then Bool else Bool ) ) ) $ ( x3570 ) ) ) ) $ ( if false then Bool else Bool )
        d355 = if ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> x3560 ) ) ) $ ( true ) then if d256 then false else d224 else if true then true else true
        d359 : if true then if true then Bool else Bool else if false then Bool else Bool
        d359 = if if true then d329 else d84 then if false then true else d195 else ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> x3600 ) ) ) $ ( false )
        d361 : ( ( Set -> Set ) ∋ ( ( λ x3640 -> if true then Bool else x3640 ) ) ) $ ( if false then Bool else Bool )
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> true ) ) ) $ ( d66 ) else if false then true else true
        d365 : ( ( Set -> Set ) ∋ ( ( λ x3690 -> if false then Bool else x3690 ) ) ) $ ( if false then Bool else Bool )
        d365 = if ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> d132 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> d128 ) ) ) $ ( d179 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> x3680 ) ) ) $ ( d347 )
        d370 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3740 -> Bool ) ) ) $ ( Bool )
        d370 = if ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> false ) ) ) $ ( d317 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> d365 ) ) ) $ ( d140 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> true ) ) ) $ ( d224 )
        d375 : if true then ( ( Set -> Set ) ∋ ( ( λ x3780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3790 -> x3790 ) ) ) $ ( Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if d62 then d12 else true ) ) ) $ ( d18 ) ) ) ) $ ( if d107 then true else false )
        d380 : if false then ( ( Set -> Set ) ∋ ( ( λ x3830 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d380 = ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> if false then d12 else d338 ) ) ) $ ( d92 ) ) ) ) $ ( if false then d359 else d292 )
        d384 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> if false then x3860 else Bool ) ) ) $ ( if true then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if d172 then false else x3850 ) ) ) $ ( if d58 then false else true )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> if false then x3900 else x3900 ) ) ) $ ( if true then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if false then false else d117 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d114 )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x3950 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d391 = if ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> true ) ) ) $ ( d35 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> false ) ) ) $ ( d146 )
        d396 : if false then if true then Bool else Bool else if false then Bool else Bool
        d396 = if ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> false ) ) ) $ ( d351 ) then if d27 then d51 else d355 else ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> x3980 ) ) ) $ ( d146 )
        d399 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> ( ( Set -> Set ) ∋ ( ( λ x4040 -> if false then Bool else Bool ) ) ) $ ( x4030 ) ) ) ) $ ( if true then Bool else Bool )
        d399 = if ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> d334 ) ) ) $ ( d114 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> x4020 ) ) ) $ ( d12 )
        d405 : if false then ( ( Set -> Set ) ∋ ( ( λ x4090 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d405 = if ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> d295 ) ) ) $ ( d111 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> d235 ) ) ) $ ( false )
        d410 : if false then if true then Bool else Bool else if true then Bool else Bool
        d410 = if ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> true ) ) ) $ ( d184 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> x4120 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> x4130 ) ) ) $ ( d292 )
        d414 : ( ( Set -> Set ) ∋ ( ( λ x4180 -> ( ( Set -> Set ) ∋ ( ( λ x4190 -> if true then x4190 else x4190 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d414 = if ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> false ) ) ) $ ( d114 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> d311 ) ) ) $ ( false )
        d420 : if true then ( ( Set -> Set ) ∋ ( ( λ x4230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4240 -> x4240 ) ) ) $ ( Bool )
        d420 = if if d132 then d84 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> d77 ) ) ) $ ( d245 )
        d425 : if false then if false then Bool else Bool else if false then Bool else Bool
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> if true then d121 else false ) ) ) $ ( false ) ) ) ) $ ( if d399 then d172 else false )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> ( ( Set -> Set ) ∋ ( ( λ x4310 -> if false then Bool else x4300 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> if x4290 then d39 else true ) ) ) $ ( if d249 then false else d295 )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4340 -> ( ( Set -> Set ) ∋ ( ( λ x4350 -> if false then Bool else x4340 ) ) ) $ ( x4340 ) ) ) ) $ ( if true then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if d160 then true else d304 ) ) ) $ ( if true then d321 else d314 )
        d436 : if false then ( ( Set -> Set ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( Bool )
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> if x4370 then d410 else x4370 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d124 )
        d441 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4430 -> Bool ) ) ) $ ( Bool )
        d441 = if ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> x4420 ) ) ) $ ( false ) then if true then true else d240 else if true then d184 else d380
        d444 : ( ( Set -> Set ) ∋ ( ( λ x4460 -> ( ( Set -> Set ) ∋ ( ( λ x4470 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> if true then false else x4450 ) ) ) $ ( if d375 then d235 else false )
        d448 : if false then ( ( Set -> Set ) ∋ ( ( λ x4510 -> x4510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4520 -> Bool ) ) ) $ ( Bool )
        d448 = if if false then false else d117 then ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> d359 ) ) ) $ ( d80 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> d338 ) ) ) $ ( false )
        d453 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4540 -> Bool ) ) ) $ ( Bool )
        d453 = if if d361 then d342 else true then if false then d228 else true else if d240 then false else true
        d455 : if true then if true then Bool else Bool else if true then Bool else Bool
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> if false then x4560 else true ) ) ) $ ( if d217 then false else false )
        d457 : if true then ( ( Set -> Set ) ∋ ( ( λ x4600 -> x4600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4610 -> x4610 ) ) ) $ ( Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if true then x4590 else x4590 ) ) ) $ ( true ) ) ) ) $ ( if false then d304 else true )
        d462 : ( ( Set -> Set ) ∋ ( ( λ x4640 -> if true then x4640 else x4640 ) ) ) $ ( if true then Bool else Bool )
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if x4630 then x4630 else d140 ) ) ) $ ( if d432 then d448 else false )
        d465 : if false then ( ( Set -> Set ) ∋ ( ( λ x4670 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4680 -> Bool ) ) ) $ ( Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> if x4660 then false else d462 ) ) ) $ ( if d191 then true else false )
        d469 : if true then ( ( Set -> Set ) ∋ ( ( λ x4710 -> x4710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4720 -> Bool ) ) ) $ ( Bool )
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> if false then d292 else true ) ) ) $ ( if false then false else d206 )
        d473 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4750 -> x4750 ) ) ) $ ( Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if false then d448 else true ) ) ) $ ( if d245 then true else true )
        d476 : ( ( Set -> Set ) ∋ ( ( λ x4780 -> ( ( Set -> Set ) ∋ ( ( λ x4790 -> if false then x4780 else Bool ) ) ) $ ( x4780 ) ) ) ) $ ( if true then Bool else Bool )
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if x4770 then d325 else x4770 ) ) ) $ ( if d235 then true else true )
        d480 : ( ( Set -> Set ) ∋ ( ( λ x4820 -> ( ( Set -> Set ) ∋ ( ( λ x4830 -> if false then Bool else x4830 ) ) ) $ ( x4820 ) ) ) ) $ ( if false then Bool else Bool )
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> if d359 then x4810 else d31 ) ) ) $ ( if false then d231 else d70 )
        d484 : ( ( Set -> Set ) ∋ ( ( λ x4870 -> ( ( Set -> Set ) ∋ ( ( λ x4880 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d484 = if ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> true ) ) ) $ ( false ) then if d217 then d209 else d107 else ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> x4860 ) ) ) $ ( d465 )
        d489 : if true then ( ( Set -> Set ) ∋ ( ( λ x4910 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> if false then true else x4900 ) ) ) $ ( if d231 then d160 else d329 )
        d492 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4950 -> Bool ) ) ) $ ( Bool )
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if false then true else false ) ) ) $ ( d384 ) ) ) ) $ ( if d184 then true else true )
        d496 : if false then if false then Bool else Bool else if true then Bool else Bool
        d496 = if ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> x4970 ) ) ) $ ( d253 ) then if true then d253 else false else if d289 then true else d285
        d498 : if false then if false then Bool else Bool else if true then Bool else Bool
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> if x4990 then true else false ) ) ) $ ( if false then false else true )
        d500 : if true then ( ( Set -> Set ) ∋ ( ( λ x5020 -> x5020 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5030 -> Bool ) ) ) $ ( Bool )
        d500 = if if false then d261 else d199 then if d220 then d338 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> d184 ) ) ) $ ( true )
        d504 : if true then if false then Bool else Bool else if false then Bool else Bool
        d504 = if if d414 then d289 else d150 then if d51 then false else true else if d48 then true else d51
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d505 = if if d228 then d202 else d240 then ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> x5060 ) ) ) $ ( d97 ) else if d308 then false else false
        d509 : ( ( Set -> Set ) ∋ ( ( λ x5110 -> ( ( Set -> Set ) ∋ ( ( λ x5120 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if true then d428 else true ) ) ) $ ( if true then d465 else false )
        d513 : ( ( Set -> Set ) ∋ ( ( λ x5140 -> if true then Bool else x5140 ) ) ) $ ( if false then Bool else Bool )
        d513 = if if d213 then d160 else d181 then if true then false else true else if false then true else d304
        d515 : ( ( Set -> Set ) ∋ ( ( λ x5170 -> ( ( Set -> Set ) ∋ ( ( λ x5180 -> if false then Bool else Bool ) ) ) $ ( x5170 ) ) ) ) $ ( if false then Bool else Bool )
        d515 = if ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> d84 ) ) ) $ ( d285 ) then if true then d308 else false else if true then true else false
        d519 : ( ( Set -> Set ) ∋ ( ( λ x5220 -> ( ( Set -> Set ) ∋ ( ( λ x5230 -> if true then Bool else x5230 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d519 = if ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> x5210 ) ) ) $ ( true ) else if d44 then true else d480
        d524 : ( ( Set -> Set ) ∋ ( ( λ x5270 -> ( ( Set -> Set ) ∋ ( ( λ x5280 -> if false then x5270 else Bool ) ) ) $ ( x5270 ) ) ) ) $ ( if true then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> if d504 then d380 else x5260 ) ) ) $ ( d387 ) ) ) ) $ ( if true then d172 else false )
        d529 : if false then if false then Bool else Bool else if false then Bool else Bool
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> if x5310 then x5300 else false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d72 )
        d532 : if true then if true then Bool else Bool else if true then Bool else Bool
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if x5330 then x5340 else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else d355 )
        d535 : if true then ( ( Set -> Set ) ∋ ( ( λ x5360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5370 -> Bool ) ) ) $ ( Bool )
        d535 = if if false then false else d391 then if d27 then false else d299 else if false then d191 else false
        d538 : ( ( Set -> Set ) ∋ ( ( λ x5400 -> ( ( Set -> Set ) ∋ ( ( λ x5410 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> if true then d66 else x5390 ) ) ) $ ( if d453 then false else d4 )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d542 = if ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> d146 ) ) ) $ ( d272 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> d51 ) ) ) $ ( d524 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> false ) ) ) $ ( d351 )
        d547 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( Bool )
        d547 = if if d285 then d1 else true then if d240 then true else true else if d58 then d428 else d410
        d549 : if false then ( ( Set -> Set ) ∋ ( ( λ x5500 -> x5500 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d549 = if if d261 then false else d289 then if true then d199 else d146 else if true then false else d448
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5530 -> if false then x5530 else x5530 ) ) ) $ ( if false then Bool else Bool )
        d551 = if if true then d299 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> x5520 ) ) ) $ ( true ) else if d465 then d27 else false
        d554 : if false then ( ( Set -> Set ) ∋ ( ( λ x5570 -> x5570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> if d121 then true else d235 ) ) ) $ ( true ) ) ) ) $ ( if true then d321 else d18 )
        d558 : ( ( Set -> Set ) ∋ ( ( λ x5600 -> if true then x5600 else Bool ) ) ) $ ( if true then Bool else Bool )
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> if d172 then x5590 else x5590 ) ) ) $ ( if false then d143 else d292 )
        d561 : ( ( Set -> Set ) ∋ ( ( λ x5630 -> if false then x5630 else x5630 ) ) ) $ ( if true then Bool else Bool )
        d561 = if if false then d361 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> true ) ) ) $ ( true ) else if false then d334 else d384
        d564 : ( ( Set -> Set ) ∋ ( ( λ x5660 -> ( ( Set -> Set ) ∋ ( ( λ x5670 -> if false then Bool else Bool ) ) ) $ ( x5660 ) ) ) ) $ ( if false then Bool else Bool )
        d564 = if ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> true ) ) ) $ ( d220 ) then if d444 then false else d114 else if true then d89 else d384