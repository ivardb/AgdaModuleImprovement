module Decls450Test4  where
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
        d1 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then false else x30 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else x60 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if x50 then d1 else d1 ) ) ) $ ( if false then d1 else d1 )
        d8 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if false then false else true ) ) ) $ ( if d4 then false else d4 )
        d11 : if true then ( ( Set -> Set ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool )
        d11 = if if d8 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d4 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x130 -> d1 ) ) ) $ ( true )
        d16 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( Bool )
        d16 = if ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d11 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d8 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d4 ) ) ) $ ( d1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then x240 else x230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d21 = if if d16 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x220 -> x220 ) ) ) $ ( true ) else if false then d1 else d4
        d25 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if x260 then false else d8 ) ) ) $ ( if true then d11 else false )
        d29 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x310 -> Bool ) ) ) $ ( Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if d16 then d21 else x300 ) ) ) $ ( if false then d21 else true )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d32 = if ( ( Bool -> Bool ) ∋ ( ( λ x330 -> d1 ) ) ) $ ( true ) then if false then false else d4 else ( ( Bool -> Bool ) ∋ ( ( λ x340 -> true ) ) ) $ ( false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then x390 else Bool ) ) ) $ ( if true then Bool else Bool )
        d37 = if if d11 then false else d1 then if d29 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( true )
        d40 : if false then ( ( Set -> Set ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if x420 then x420 else x420 ) ) ) $ ( d8 ) ) ) ) $ ( if false then true else true )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if true then x470 else Bool ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d40 then false else x460 ) ) ) $ ( if d11 then d16 else d4 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then x520 else x530 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d48 = if ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d16 ) ) ) $ ( d11 ) then ( ( Bool -> Bool ) ∋ ( ( λ x500 -> d8 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x510 -> x510 ) ) ) $ ( d11 )
        d54 : if true then ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x580 -> x580 ) ) ) $ ( Bool )
        d54 = if ( ( Bool -> Bool ) ∋ ( ( λ x550 -> false ) ) ) $ ( d32 ) then if true then d37 else false else ( ( Bool -> Bool ) ∋ ( ( λ x560 -> false ) ) ) $ ( false )
        d59 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if true then d25 else true ) ) ) $ ( x600 ) ) ) ) $ ( if d21 then d48 else true )
        d63 : if false then if true then Bool else Bool else if true then Bool else Bool
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> true ) ) ) $ ( false ) then if d59 then d45 else true else if false then false else true
        d65 : ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( d63 ) then ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( d32 ) else ( ( Bool -> Bool ) ∋ ( ( λ x680 -> true ) ) ) $ ( d1 )
        d70 : if false then ( ( Set -> Set ) ∋ ( ( λ x730 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if x710 then x720 else x720 ) ) ) $ ( x710 ) ) ) ) $ ( if false then true else true )
        d74 : if true then ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if d8 then false else d4 ) ) ) $ ( if true then d59 else false )
        d78 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x800 then d32 else x790 ) ) ) $ ( x790 ) ) ) ) $ ( if d54 then false else d37 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then x850 else x850 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( d63 )
        d87 : if false then ( ( Set -> Set ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d87 = if if d74 then d25 else false then if false then false else false else if false then true else d16
        d89 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then x930 else Bool ) ) ) $ ( x920 ) ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if x900 then d40 else true ) ) ) $ ( d87 ) ) ) ) $ ( if true then false else false )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x970 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d94 = if if false then d21 else false then ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d65 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x960 -> true ) ) ) $ ( d74 )
        d98 : if false then ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d98 = if ( ( Bool -> Bool ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( false ) then if d87 then d29 else true else if true then true else false
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if x1020 then d16 else false ) ) ) $ ( if false then true else d65 )
        d103 : if true then ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( Bool )
        d103 = if ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> true ) ) ) $ ( d37 ) then if true then d70 else false else if true then true else d82
        d107 : if false then ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d107 = if if d94 then true else d87 then ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d45 ) ) ) $ ( true ) else if d65 then d11 else true
        d110 : if true then ( ( Set -> Set ) ∋ ( ( λ x1110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( Bool )
        d110 = if if d37 then d8 else true then if false then d98 else false else if false then d16 else d1
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then Bool else x1160 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if x1140 then x1140 else false ) ) ) $ ( if d1 then d40 else d70 )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> ( ( Set -> Set ) ∋ ( ( λ x1200 -> if true then Bool else Bool ) ) ) $ ( x1190 ) ) ) ) $ ( if true then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> if false then false else true ) ) ) $ ( if d54 then d45 else true )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> if false then x1250 else Bool ) ) ) $ ( if false then Bool else Bool )
        d121 = if ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> false ) ) ) $ ( d54 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> true ) ) ) $ ( d59 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( true )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then x1290 else Bool ) ) ) $ ( x1280 ) ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if x1270 then true else x1270 ) ) ) $ ( if d37 then true else d54 )
        d130 : if true then if false then Bool else Bool else if false then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if x1310 then x1310 else x1310 ) ) ) $ ( if d117 then true else true )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> if false then Bool else x1350 ) ) ) $ ( x1350 ) ) ) ) $ ( if true then Bool else Bool )
        d132 = if ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( d121 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( d40 )
        d137 : if false then ( ( Set -> Set ) ∋ ( ( λ x1400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1410 -> Bool ) ) ) $ ( Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if false then d87 else x1390 ) ) ) $ ( false ) ) ) ) $ ( if d40 then false else false )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then Bool else Bool ) ) ) $ ( x1440 ) ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if true then true else d21 ) ) ) $ ( if d4 then d121 else d32 )
        d146 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d146 = if if true then true else false then if d32 then d94 else d16 else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d16 ) ) ) $ ( d54 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> d117 ) ) ) $ ( true ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d16 ) ) ) $ ( d21 )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if true then Bool else x1560 ) ) ) $ ( if false then Bool else Bool )
        d154 = if if d74 then d16 else d126 then if true then false else d87 else ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> false ) ) ) $ ( false )
        d157 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1600 -> x1600 ) ) ) $ ( Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if true then false else x1590 ) ) ) $ ( x1580 ) ) ) ) $ ( if true then d89 else d21 )
        d161 : if true then ( ( Set -> Set ) ∋ ( ( λ x1640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1650 -> Bool ) ) ) $ ( Bool )
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> if x1620 then d78 else x1620 ) ) ) $ ( false ) ) ) ) $ ( if false then d110 else false )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if true then x1670 else x1670 ) ) ) $ ( if true then Bool else Bool )
        d166 = if if false then true else true then if true then d63 else d32 else if d29 then true else false
        d168 : if true then ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( Bool )
        d168 = if if d45 then true else false then if d40 then d54 else d117 else ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> false ) ) ) $ ( false )
        d172 : if true then ( ( Set -> Set ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1760 -> Bool ) ) ) $ ( Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if x1730 then d25 else true ) ) ) $ ( x1730 ) ) ) ) $ ( if false then true else true )
        d177 : if true then ( ( Set -> Set ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( Bool )
        d177 = if ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( d101 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> false ) ) ) $ ( d74 )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then x1840 else Bool ) ) ) $ ( if false then Bool else Bool )
        d182 = if ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> true ) ) ) $ ( false ) then if d177 then d21 else false else if false then true else true
        d185 : if false then if true then Bool else Bool else if false then Bool else Bool
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if x1860 then true else false ) ) ) $ ( if true then d40 else false )
        d187 : if false then ( ( Set -> Set ) ∋ ( ( λ x1890 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if d37 then d59 else true ) ) ) $ ( if d25 then d172 else d4 )
        d190 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1930 -> x1930 ) ) ) $ ( Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if false then x1920 else x1920 ) ) ) $ ( d70 ) ) ) ) $ ( if d78 then d8 else false )
        d194 : if false then ( ( Set -> Set ) ∋ ( ( λ x1960 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d194 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> d107 ) ) ) $ ( d74 ) else if false then d107 else false
        d197 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if d74 then false else d45 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d103 )
        d201 : if true then ( ( Set -> Set ) ∋ ( ( λ x2020 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d201 = if if true then true else true then if true then d132 else true else if true then true else d45
        d203 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2060 -> x2060 ) ) ) $ ( Bool )
        d203 = if ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> false ) ) ) $ ( d142 ) then if true then d130 else d65 else ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> x2050 ) ) ) $ ( false )
        d207 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> if true then x2090 else Bool ) ) ) $ ( if false then Bool else Bool )
        d207 = if if d126 then true else true then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> d113 ) ) ) $ ( d201 )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> if true then x2120 else Bool ) ) ) $ ( if true then Bool else Bool )
        d210 = if if d63 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( d37 ) else if d194 then true else true
        d213 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( Bool )
        d213 = if if d48 then d210 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> d166 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> x2150 ) ) ) $ ( d103 )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> if x2190 then false else d45 ) ) ) $ ( x2180 ) ) ) ) $ ( if d187 then d157 else false )
        d221 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2240 -> Bool ) ) ) $ ( Bool )
        d221 = if ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> d63 ) ) ) $ ( true ) then if d187 then d194 else d213 else ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> false ) ) ) $ ( true )
        d225 : if true then ( ( Set -> Set ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d225 = if if false then true else false then if d190 then false else d203 else ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> d157 ) ) ) $ ( true )
        d228 : if false then if true then Bool else Bool else if false then Bool else Bool
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> if x2290 then true else true ) ) ) $ ( false ) ) ) ) $ ( if d82 then d154 else false )
        d231 : if true then if true then Bool else Bool else if true then Bool else Bool
        d231 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> d168 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> false ) ) ) $ ( d217 )
        d234 : if false then ( ( Set -> Set ) ∋ ( ( λ x2370 -> x2370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( Bool )
        d234 = if if true then d40 else d98 then ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> d217 ) ) ) $ ( d16 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> d1 ) ) ) $ ( true )
        d239 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2420 -> Bool ) ) ) $ ( Bool )
        d239 = if ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> d161 ) ) ) $ ( false ) then if d168 then true else d59 else ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( true )
        d243 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2460 -> Bool ) ) ) $ ( Bool )
        d243 = ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> if d166 then true else d113 ) ) ) $ ( d197 ) ) ) ) $ ( if d149 then false else d82 )
        d247 : if true then ( ( Set -> Set ) ∋ ( ( λ x2500 -> x2500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d247 = if ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> d117 ) ) ) $ ( true ) then if false then true else d89 else ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> true ) ) ) $ ( false )
        d251 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> if true then x2530 else x2530 ) ) ) $ ( if true then Bool else Bool )
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if x2520 then d182 else false ) ) ) $ ( if d54 then false else d132 )
        d254 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> if false then Bool else x2580 ) ) ) $ ( if true then Bool else Bool )
        d254 = if ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> d32 ) ) ) $ ( d40 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> d142 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( d201 )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> if false then x2620 else x2620 ) ) ) $ ( if false then Bool else Bool )
        d259 = if ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> d82 ) ) ) $ ( d103 ) then if true then d45 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> d4 ) ) ) $ ( d130 )
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> ( ( Set -> Set ) ∋ ( ( λ x2680 -> if true then x2670 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d263 = if ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> x2640 ) ) ) $ ( d126 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> d172 ) ) ) $ ( d203 )
        d269 : if true then ( ( Set -> Set ) ∋ ( ( λ x2710 -> x2710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2720 -> x2720 ) ) ) $ ( Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> if x2700 then d197 else false ) ) ) $ ( if d201 then true else false )
        d273 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2760 -> Bool ) ) ) $ ( Bool )
        d273 = if ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> x2740 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> true ) ) ) $ ( d182 ) else if false then d45 else d207
        d277 : if false then if true then Bool else Bool else if true then Bool else Bool
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> if x2790 then d54 else true ) ) ) $ ( x2780 ) ) ) ) $ ( if d259 then d146 else d40 )
        d280 : if false then ( ( Set -> Set ) ∋ ( ( λ x2830 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d280 = if ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> false ) ) ) $ ( d149 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( d210 ) else if true then false else d273
        d284 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2870 -> Bool ) ) ) $ ( Bool )
        d284 = if ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> false ) ) ) $ ( false ) then if false then d82 else d185 else ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> x2860 ) ) ) $ ( d190 )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> ( ( Set -> Set ) ∋ ( ( λ x2920 -> if true then x2910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d288 = if ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> false ) ) ) $ ( d254 ) then if d161 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> true ) ) ) $ ( false )
        d293 : if false then ( ( Set -> Set ) ∋ ( ( λ x2950 -> x2950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2960 -> x2960 ) ) ) $ ( Bool )
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if x2940 then x2940 else false ) ) ) $ ( if true then false else true )
        d297 : if true then if false then Bool else Bool else if false then Bool else Bool
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> if x2980 then false else true ) ) ) $ ( x2980 ) ) ) ) $ ( if d37 then d70 else false )
        d300 : if true then if true then Bool else Bool else if true then Bool else Bool
        d300 = ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> if d157 then true else d154 ) ) ) $ ( if true then d45 else true )
        d302 : if true then if true then Bool else Bool else if false then Bool else Bool
        d302 = ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> if d213 then x3030 else x3030 ) ) ) $ ( if d87 then d40 else d300 )
        d304 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then Bool else x3070 ) ) ) $ ( if false then Bool else Bool )
        d304 = ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> if false then d70 else false ) ) ) $ ( true ) ) ) ) $ ( if false then true else d11 )
        d308 : ( ( Set -> Set ) ∋ ( ( λ x3100 -> ( ( Set -> Set ) ∋ ( ( λ x3110 -> if false then Bool else x3110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d308 = if if false then d40 else true then if d98 then d37 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( d54 )
        d312 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3140 -> x3140 ) ) ) $ ( Bool )
        d312 = ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> if d82 then d59 else true ) ) ) $ ( if false then d239 else true )
        d315 : if false then ( ( Set -> Set ) ∋ ( ( λ x3170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3180 -> Bool ) ) ) $ ( Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> if d142 then x3160 else false ) ) ) $ ( if false then false else d228 )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> ( ( Set -> Set ) ∋ ( ( λ x3240 -> if true then x3240 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d319 = if ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> d297 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> d280 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( true )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3270 -> ( ( Set -> Set ) ∋ ( ( λ x3280 -> if true then x3270 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d325 = if if true then d254 else d87 then if true then d82 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> d225 ) ) ) $ ( true )
        d329 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> if false then x3320 else x3320 ) ) ) $ ( if false then Bool else Bool )
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if true then d194 else d45 ) ) ) $ ( true ) ) ) ) $ ( if d94 then false else true )
        d333 : if true then ( ( Set -> Set ) ∋ ( ( λ x3340 -> x3340 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3350 -> Bool ) ) ) $ ( Bool )
        d333 = if if d194 then true else true then if true then false else d82 else if true then d45 else false
        d336 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if x3370 then d300 else d213 ) ) ) $ ( if true then d89 else false )
        d339 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3400 -> x3400 ) ) ) $ ( Bool )
        d339 = if if true then d234 else d146 then if d149 then d121 else d221 else if d87 then true else d142
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> ( ( Set -> Set ) ∋ ( ( λ x3450 -> if false then x3440 else Bool ) ) ) $ ( x3440 ) ) ) ) $ ( if false then Bool else Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if x3420 then true else true ) ) ) $ ( d293 ) ) ) ) $ ( if true then d168 else d4 )
        d346 : if true then if true then Bool else Bool else if true then Bool else Bool
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> if d190 then d341 else x3470 ) ) ) $ ( true ) ) ) ) $ ( if d78 then false else d1 )
        d349 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> if false then x3510 else Bool ) ) ) $ ( if false then Bool else Bool )
        d349 = if ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> d177 ) ) ) $ ( d304 ) then if false then true else true else if d87 then false else true
        d352 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> ( ( Set -> Set ) ∋ ( ( λ x3550 -> if false then x3540 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> if true then true else x3530 ) ) ) $ ( if d166 then true else d308 )
        d356 : if false then ( ( Set -> Set ) ∋ ( ( λ x3590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d356 = if ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> true ) ) ) $ ( true ) then if d234 then d21 else d11 else ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> false ) ) ) $ ( d277 )
        d360 : ( ( Set -> Set ) ∋ ( ( λ x3620 -> if true then Bool else x3620 ) ) ) $ ( if true then Bool else Bool )
        d360 = if if d239 then false else true then if d132 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> x3610 ) ) ) $ ( true )
        d363 : ( ( Set -> Set ) ∋ ( ( λ x3650 -> ( ( Set -> Set ) ∋ ( ( λ x3660 -> if true then x3660 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d363 = if if true then d70 else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> d234 ) ) ) $ ( true )
        d367 : if true then ( ( Set -> Set ) ∋ ( ( λ x3690 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d367 = if if true then d121 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> d4 ) ) ) $ ( false ) else if d142 then false else d110
        d370 : if false then ( ( Set -> Set ) ∋ ( ( λ x3720 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3730 -> x3730 ) ) ) $ ( Bool )
        d370 = if if true then d336 else true then if true then true else d8 else ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> d37 ) ) ) $ ( d297 )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then x3770 else x3770 ) ) ) $ ( if false then Bool else Bool )
        d374 = ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> if x3760 then d346 else true ) ) ) $ ( false ) ) ) ) $ ( if d32 then d356 else false )
        d378 : if true then ( ( Set -> Set ) ∋ ( ( λ x3810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3820 -> x3820 ) ) ) $ ( Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if d63 then false else d213 ) ) ) $ ( d132 ) ) ) ) $ ( if d40 then true else true )
        d383 : if true then ( ( Set -> Set ) ∋ ( ( λ x3850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3860 -> x3860 ) ) ) $ ( Bool )
        d383 = if if true then true else d157 then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( true )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3890 -> if false then Bool else x3890 ) ) ) $ ( if true then Bool else Bool )
        d387 = if if d130 then true else true then if true then true else d288 else ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> d126 ) ) ) $ ( d89 )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d390 = if if d210 then d234 else d16 then if d273 then d308 else d130 else ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> x3910 ) ) ) $ ( false )
        d393 : ( ( Set -> Set ) ∋ ( ( λ x3950 -> if true then x3950 else Bool ) ) ) $ ( if true then Bool else Bool )
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> if true then false else x3940 ) ) ) $ ( if true then d390 else false )
        d396 : ( ( Set -> Set ) ∋ ( ( λ x3980 -> ( ( Set -> Set ) ∋ ( ( λ x3990 -> if false then Bool else x3990 ) ) ) $ ( x3980 ) ) ) ) $ ( if true then Bool else Bool )
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if true then false else true ) ) ) $ ( if true then false else d185 )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4040 -> ( ( Set -> Set ) ∋ ( ( λ x4050 -> if true then Bool else Bool ) ) ) $ ( x4040 ) ) ) ) $ ( if true then Bool else Bool )
        d400 = if ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> x4010 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> d225 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> x4030 ) ) ) $ ( d390 )
        d406 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4080 -> x4080 ) ) ) $ ( Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if false then d251 else false ) ) ) $ ( if false then d297 else true )
        d409 : ( ( Set -> Set ) ∋ ( ( λ x4110 -> if false then x4110 else x4110 ) ) ) $ ( if true then Bool else Bool )
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> if x4100 then false else true ) ) ) $ ( if false then false else false )
        d412 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4150 -> x4150 ) ) ) $ ( Bool )
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> if x4130 then d333 else d217 ) ) ) $ ( false ) ) ) ) $ ( if d273 then d25 else d70 )
        d416 : ( ( Set -> Set ) ∋ ( ( λ x4180 -> ( ( Set -> Set ) ∋ ( ( λ x4190 -> if true then Bool else x4190 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d416 = if if d254 then true else d363 then if d126 then d308 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> true ) ) ) $ ( d98 )
        d420 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> if true then x4230 else x4230 ) ) ) $ ( if true then Bool else Bool )
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if x4210 then d231 else d349 ) ) ) $ ( d59 ) ) ) ) $ ( if d412 then false else d247 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4260 -> ( ( Set -> Set ) ∋ ( ( λ x4270 -> if true then x4260 else x4270 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> if true then d393 else x4250 ) ) ) $ ( if d325 then true else true )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x4310 -> ( ( Set -> Set ) ∋ ( ( λ x4320 -> if true then x4310 else Bool ) ) ) $ ( x4310 ) ) ) ) $ ( if false then Bool else Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if x4290 then x4300 else false ) ) ) $ ( false ) ) ) ) $ ( if d383 then d37 else d424 )
        d433 : ( ( Set -> Set ) ∋ ( ( λ x4360 -> ( ( Set -> Set ) ∋ ( ( λ x4370 -> if false then x4370 else Bool ) ) ) $ ( x4360 ) ) ) ) $ ( if false then Bool else Bool )
        d433 = if if d396 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> x4350 ) ) ) $ ( true )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d438 = if ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( d277 ) then if d387 then false else d166 else ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( false )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if false then x4440 else x4440 ) ) ) $ ( if false then Bool else Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if x4430 then d117 else x4430 ) ) ) $ ( if d4 then false else false )
        d445 : if false then ( ( Set -> Set ) ∋ ( ( λ x4470 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> if true then x4460 else d288 ) ) ) $ ( if d400 then d254 else false )
        d448 : if true then ( ( Set -> Set ) ∋ ( ( λ x4510 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d448 = if if false then true else d312 then ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> d315 ) ) ) $ ( d336 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> x4500 ) ) ) $ ( false )
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4550 -> ( ( Set -> Set ) ∋ ( ( λ x4560 -> if false then x4560 else x4560 ) ) ) $ ( x4550 ) ) ) ) $ ( if false then Bool else Bool )
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if true then x4540 else true ) ) ) $ ( false ) ) ) ) $ ( if d94 then d89 else d297 )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> ( ( Set -> Set ) ∋ ( ( λ x4600 -> if true then x4600 else Bool ) ) ) $ ( x4590 ) ) ) ) $ ( if true then Bool else Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> if false then x4580 else d146 ) ) ) $ ( if true then d346 else true )
        d461 : if true then ( ( Set -> Set ) ∋ ( ( λ x4650 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4660 -> Bool ) ) ) $ ( Bool )
        d461 = if ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> x4620 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> x4630 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> d273 ) ) ) $ ( true )
        d467 : ( ( Set -> Set ) ∋ ( ( λ x4700 -> if true then x4700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d467 = if ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> d29 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> d312 ) ) ) $ ( false ) else if d356 then d107 else d132
        d471 : ( ( Set -> Set ) ∋ ( ( λ x4750 -> ( ( Set -> Set ) ∋ ( ( λ x4760 -> if true then x4750 else Bool ) ) ) $ ( x4750 ) ) ) ) $ ( if true then Bool else Bool )
        d471 = if ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> d312 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> true ) ) ) $ ( d438 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> false ) ) ) $ ( false )
        d477 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4800 -> Bool ) ) ) $ ( Bool )
        d477 = if if false then d190 else d247 then ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> true ) ) ) $ ( d442 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> true ) ) ) $ ( false )
        d481 : ( ( Set -> Set ) ∋ ( ( λ x4830 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d481 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( true ) else if false then d63 else true
        d484 : if false then ( ( Set -> Set ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d484 = if if false then true else d409 then if d157 then d315 else false else if d247 then d247 else d336
        d486 : if false then ( ( Set -> Set ) ∋ ( ( λ x4880 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> if x4870 then true else true ) ) ) $ ( if d185 then true else false )
        d489 : ( ( Set -> Set ) ∋ ( ( λ x4900 -> ( ( Set -> Set ) ∋ ( ( λ x4910 -> if false then Bool else x4900 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d489 = if if false then d251 else true then if d32 then d87 else d146 else if true then false else d213
        d492 : if true then ( ( Set -> Set ) ∋ ( ( λ x4950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4960 -> x4960 ) ) ) $ ( Bool )
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if x4930 then true else x4930 ) ) ) $ ( x4930 ) ) ) ) $ ( if d110 then true else true )
        d497 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d497 = if if false then d221 else d63 then if false then false else d416 else ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> false ) ) ) $ ( d333 )
        d500 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5020 -> Bool ) ) ) $ ( Bool )
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> if d319 then true else false ) ) ) $ ( if d8 then true else false )
        d503 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5050 -> x5050 ) ) ) $ ( Bool )
        d503 = if ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> x5040 ) ) ) $ ( d428 ) then if true then d360 else d445 else if d409 then true else false
        d506 : if true then ( ( Set -> Set ) ∋ ( ( λ x5090 -> x5090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5100 -> Bool ) ) ) $ ( Bool )
        d506 = ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> if true then d154 else d21 ) ) ) $ ( d70 ) ) ) ) $ ( if d445 then d424 else d339 )
        d511 : ( ( Set -> Set ) ∋ ( ( λ x5130 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d511 = if ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> x5120 ) ) ) $ ( d280 ) then if d393 then d356 else d503 else if true then true else d461
        d514 : if false then ( ( Set -> Set ) ∋ ( ( λ x5150 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d514 = if if d500 then d438 else false then if false then d445 else true else if d126 then false else d339
        d516 : ( ( Set -> Set ) ∋ ( ( λ x5180 -> if false then x5180 else x5180 ) ) ) $ ( if true then Bool else Bool )
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> if x5170 then x5170 else true ) ) ) $ ( if false then true else true )
        d519 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5220 -> x5220 ) ) ) $ ( Bool )
        d519 = if ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> x5200 ) ) ) $ ( d197 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> true ) ) ) $ ( d412 ) else if d117 then d231 else true
        d523 : ( ( Set -> Set ) ∋ ( ( λ x5260 -> ( ( Set -> Set ) ∋ ( ( λ x5270 -> if true then x5260 else x5270 ) ) ) $ ( x5260 ) ) ) ) $ ( if false then Bool else Bool )
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> if x5240 then x5250 else false ) ) ) $ ( d300 ) ) ) ) $ ( if d471 then false else d172 )
        d528 : if true then if true then Bool else Bool else if true then Bool else Bool
        d528 = ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> if x5290 then x5290 else x5290 ) ) ) $ ( d101 ) ) ) ) $ ( if d32 then true else d280 )
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> ( ( Set -> Set ) ∋ ( ( λ x5340 -> if false then Bool else Bool ) ) ) $ ( x5330 ) ) ) ) $ ( if true then Bool else Bool )
        d531 = if if d45 then d409 else true then if true then true else d142 else ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> x5320 ) ) ) $ ( d231 )
        d535 : if false then if false then Bool else Bool else if true then Bool else Bool
        d535 = if ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> d484 ) ) ) $ ( false ) then if d11 then d393 else d25 else if d511 then true else true
        d537 : if false then ( ( Set -> Set ) ∋ ( ( λ x5400 -> x5400 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> if d519 then x5390 else true ) ) ) $ ( true ) ) ) ) $ ( if d11 then false else d157 )
        d541 : if true then if false then Bool else Bool else if false then Bool else Bool
        d541 = ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> if d356 then x5420 else false ) ) ) $ ( x5420 ) ) ) ) $ ( if d172 then false else d59 )
        d544 : if true then if false then Bool else Bool else if false then Bool else Bool
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> if true then x5450 else x5450 ) ) ) $ ( if true then d516 else d523 )
        d546 : ( ( Set -> Set ) ∋ ( ( λ x5490 -> ( ( Set -> Set ) ∋ ( ( λ x5500 -> if false then x5490 else Bool ) ) ) $ ( x5490 ) ) ) ) $ ( if true then Bool else Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> if d428 then false else d157 ) ) ) $ ( d284 ) ) ) ) $ ( if true then true else d433 )
        d551 : if false then ( ( Set -> Set ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5550 -> x5550 ) ) ) $ ( Bool )
        d551 = if if d4 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> x5520 ) ) ) $ ( d486 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> d433 ) ) ) $ ( true )
        d556 : ( ( Set -> Set ) ∋ ( ( λ x5590 -> if false then Bool else x5590 ) ) ) $ ( if false then Bool else Bool )
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> if true then d269 else true ) ) ) $ ( d416 ) ) ) ) $ ( if d511 then d352 else false )
        d560 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> if true then x5610 else Bool ) ) ) $ ( if true then Bool else Bool )
        d560 = if if d89 then false else d172 then if false then true else true else if true then d142 else false
        d562 : ( ( Set -> Set ) ∋ ( ( λ x5630 -> ( ( Set -> Set ) ∋ ( ( λ x5640 -> if true then x5630 else x5630 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d562 = if if true then true else d546 then if false then true else true else if true then d393 else d40
        d565 : if false then ( ( Set -> Set ) ∋ ( ( λ x5680 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d565 = if if false then d319 else d207 then ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> x5660 ) ) ) $ ( d514 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> d243 ) ) ) $ ( d70 )
        d569 : if false then if true then Bool else Bool else if false then Bool else Bool
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if d201 then d113 else x5700 ) ) ) $ ( true ) ) ) ) $ ( if d492 then false else false )
        d572 : ( ( Set -> Set ) ∋ ( ( λ x5740 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d572 = ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> if d126 then true else d59 ) ) ) $ ( if false then false else false )
        d575 : if false then if false then Bool else Bool else if true then Bool else Bool
        d575 = if ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> true ) ) ) $ ( d492 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> x5770 ) ) ) $ ( d126 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> false ) ) ) $ ( false )
        d579 : ( ( Set -> Set ) ∋ ( ( λ x5820 -> if false then x5820 else Bool ) ) ) $ ( if false then Bool else Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> if false then false else x5810 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d400 )
        d583 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5850 -> x5850 ) ) ) $ ( Bool )
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> if d516 then d302 else d378 ) ) ) $ ( if false then false else d572 )
        d586 : ( ( Set -> Set ) ∋ ( ( λ x5880 -> ( ( Set -> Set ) ∋ ( ( λ x5890 -> if false then x5890 else x5890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d586 = ( ( Bool -> Bool ) ∋ ( ( λ x5870 -> if x5870 then false else x5870 ) ) ) $ ( if true then true else true )
        d590 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5910 -> x5910 ) ) ) $ ( Bool )
        d590 = if if true then true else d37 then if d277 then false else false else if false then true else d370
        d592 : ( ( Set -> Set ) ∋ ( ( λ x5950 -> ( ( Set -> Set ) ∋ ( ( λ x5960 -> if true then Bool else x5960 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> if d194 then x5930 else d146 ) ) ) $ ( d537 ) ) ) ) $ ( if false then false else false )
        d597 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5990 -> Bool ) ) ) $ ( Bool )
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> if x5980 then false else d302 ) ) ) $ ( if d254 then false else false )
        d600 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6010 -> x6010 ) ) ) $ ( Bool )
        d600 = if if d489 then true else d239 then if d29 then d37 else false else if false then d492 else false
        d602 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6050 -> Bool ) ) ) $ ( Bool )
        d602 = if ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> true ) ) ) $ ( false ) then if true then d511 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> true ) ) ) $ ( d203 )
        d606 : if false then if true then Bool else Bool else if true then Bool else Bool
        d606 = ( ( Bool -> Bool ) ∋ ( ( λ x6070 -> if true then d416 else false ) ) ) $ ( if d217 then d514 else false )
        d608 : ( ( Set -> Set ) ∋ ( ( λ x6120 -> ( ( Set -> Set ) ∋ ( ( λ x6130 -> if true then Bool else x6120 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d608 = if ( ( Bool -> Bool ) ∋ ( ( λ x6090 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6100 -> d556 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> true ) ) ) $ ( d259 )
        d614 : ( ( Set -> Set ) ∋ ( ( λ x6160 -> ( ( Set -> Set ) ∋ ( ( λ x6170 -> if false then x6160 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d614 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> d590 ) ) ) $ ( false ) else if false then true else false
        d618 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6210 -> Bool ) ) ) $ ( Bool )
        d618 = if ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> x6190 ) ) ) $ ( true ) then if false then d308 else d251 else ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> x6200 ) ) ) $ ( d336 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x6240 -> if false then Bool else x6240 ) ) ) $ ( if false then Bool else Bool )
        d622 = if ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> x6230 ) ) ) $ ( d484 ) then if false then false else d448 else if true then false else d497
        d625 : ( ( Set -> Set ) ∋ ( ( λ x6270 -> if false then x6270 else Bool ) ) ) $ ( if true then Bool else Bool )
        d625 = ( ( Bool -> Bool ) ∋ ( ( λ x6260 -> if d393 then d217 else d586 ) ) ) $ ( if true then d130 else true )
        d628 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6310 -> x6310 ) ) ) $ ( Bool )
        d628 = ( ( Bool -> Bool ) ∋ ( ( λ x6290 -> ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> if d190 then d11 else true ) ) ) $ ( d203 ) ) ) ) $ ( if d117 then false else d137 )
        d632 : if true then if false then Bool else Bool else if false then Bool else Bool
        d632 = ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> if x6330 then x6330 else d457 ) ) ) $ ( if true then true else d412 )
        d634 : if true then ( ( Set -> Set ) ∋ ( ( λ x6360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6370 -> x6370 ) ) ) $ ( Bool )
        d634 = if if true then true else false then if d471 then d565 else false else ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> true ) ) ) $ ( d197 )
        d638 : if true then ( ( Set -> Set ) ∋ ( ( λ x6420 -> x6420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6430 -> x6430 ) ) ) $ ( Bool )
        d638 = if ( ( Bool -> Bool ) ∋ ( ( λ x6390 -> x6390 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6400 -> false ) ) ) $ ( d370 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> d471 ) ) ) $ ( true )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x6460 -> if false then x6460 else x6460 ) ) ) $ ( if false then Bool else Bool )
        d644 = ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> if x6450 then true else x6450 ) ) ) $ ( if true then d519 else d506 )
        d647 : if false then ( ( Set -> Set ) ∋ ( ( λ x6500 -> x6500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x6480 -> ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> if false then d142 else d98 ) ) ) $ ( x6480 ) ) ) ) $ ( if d239 then false else d37 )
        d651 : ( ( Set -> Set ) ∋ ( ( λ x6540 -> if true then x6540 else Bool ) ) ) $ ( if false then Bool else Bool )
        d651 = if if true then d608 else d194 then ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> d154 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6530 -> true ) ) ) $ ( d273 )
        d655 : if true then ( ( Set -> Set ) ∋ ( ( λ x6570 -> x6570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d655 = if if d210 then d259 else d396 then ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> true ) ) ) $ ( false ) else if d562 then d356 else d634
        d658 : if false then ( ( Set -> Set ) ∋ ( ( λ x6610 -> x6610 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x6590 -> ( ( Bool -> Bool ) ∋ ( ( λ x6600 -> if true then false else false ) ) ) $ ( d213 ) ) ) ) $ ( if false then d166 else false )
        d662 : ( ( Set -> Set ) ∋ ( ( λ x6650 -> if false then x6650 else Bool ) ) ) $ ( if true then Bool else Bool )
        d662 = if if d263 then d29 else d107 then ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> d383 ) ) ) $ ( d378 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> d503 ) ) ) $ ( false )
        d666 : ( ( Set -> Set ) ∋ ( ( λ x6690 -> if false then Bool else x6690 ) ) ) $ ( if true then Bool else Bool )
        d666 = ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> if true then d185 else false ) ) ) $ ( x6670 ) ) ) ) $ ( if d352 then d312 else false )
        d670 : if true then ( ( Set -> Set ) ∋ ( ( λ x6730 -> x6730 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6740 -> x6740 ) ) ) $ ( Bool )
        d670 = if ( ( Bool -> Bool ) ∋ ( ( λ x6710 -> x6710 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> x6720 ) ) ) $ ( true ) else if d535 then d312 else false
        d675 : if true then ( ( Set -> Set ) ∋ ( ( λ x6770 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6780 -> x6780 ) ) ) $ ( Bool )
        d675 = if if true then d618 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> false ) ) ) $ ( true ) else if true then false else false
        d679 : ( ( Set -> Set ) ∋ ( ( λ x6820 -> ( ( Set -> Set ) ∋ ( ( λ x6830 -> if true then Bool else x6830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> if x6810 then x6810 else true ) ) ) $ ( d514 ) ) ) ) $ ( if d121 then true else d393 )
        d684 : if false then if true then Bool else Bool else if false then Bool else Bool
        d684 = ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> if true then true else d172 ) ) ) $ ( d489 ) ) ) ) $ ( if true then d132 else true )
        d687 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6900 -> Bool ) ) ) $ ( Bool )
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x6880 -> ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> if d263 then false else d528 ) ) ) $ ( true ) ) ) ) $ ( if true then d352 else false )
        d691 : if false then if false then Bool else Bool else if true then Bool else Bool
        d691 = if if false then true else d210 then ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6930 -> d420 ) ) ) $ ( d94 )
        d694 : ( ( Set -> Set ) ∋ ( ( λ x6950 -> if false then Bool else x6950 ) ) ) $ ( if false then Bool else Bool )
        d694 = if if d684 then d132 else d48 then if true then d556 else d234 else if true then d319 else d172
        d696 : if true then if false then Bool else Bool else if true then Bool else Bool
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> if false then x6970 else x6970 ) ) ) $ ( if false then d207 else false )
        d698 : ( ( Set -> Set ) ∋ ( ( λ x7000 -> if true then x7000 else Bool ) ) ) $ ( if false then Bool else Bool )
        d698 = if if d628 then d428 else d696 then if false then d207 else false else ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> x6990 ) ) ) $ ( false )
        d701 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7050 -> x7050 ) ) ) $ ( Bool )
        d701 = if ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7030 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7040 -> x7040 ) ) ) $ ( d231 )
        d706 : ( ( Set -> Set ) ∋ ( ( λ x7090 -> ( ( Set -> Set ) ∋ ( ( λ x7100 -> if true then Bool else x7090 ) ) ) $ ( x7090 ) ) ) ) $ ( if false then Bool else Bool )
        d706 = ( ( Bool -> Bool ) ∋ ( ( λ x7070 -> ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> if x7080 then x7070 else x7080 ) ) ) $ ( x7070 ) ) ) ) $ ( if d560 then false else d187 )
        d711 : ( ( Set -> Set ) ∋ ( ( λ x7150 -> if false then Bool else x7150 ) ) ) $ ( if false then Bool else Bool )
        d711 = if ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> x7120 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> x7130 ) ) ) $ ( d544 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7140 -> d442 ) ) ) $ ( false )
        d716 : ( ( Set -> Set ) ∋ ( ( λ x7190 -> ( ( Set -> Set ) ∋ ( ( λ x7200 -> if true then Bool else Bool ) ) ) $ ( x7190 ) ) ) ) $ ( if true then Bool else Bool )
        d716 = ( ( Bool -> Bool ) ∋ ( ( λ x7170 -> ( ( Bool -> Bool ) ∋ ( ( λ x7180 -> if false then false else x7180 ) ) ) $ ( x7170 ) ) ) ) $ ( if true then d622 else d628 )
        d721 : if false then ( ( Set -> Set ) ∋ ( ( λ x7240 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> ( ( Bool -> Bool ) ∋ ( ( λ x7230 -> if d300 then x7230 else d471 ) ) ) $ ( d177 ) ) ) ) $ ( if d597 then true else true )
        d725 : if false then ( ( Set -> Set ) ∋ ( ( λ x7280 -> x7280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7290 -> x7290 ) ) ) $ ( Bool )
        d725 = ( ( Bool -> Bool ) ∋ ( ( λ x7260 -> ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> if d535 then x7260 else x7260 ) ) ) $ ( true ) ) ) ) $ ( if true then d628 else d387 )
        d730 : if true then if true then Bool else Bool else if true then Bool else Bool
        d730 = if if true then false else d367 then if d228 then d228 else d597 else ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> x7310 ) ) ) $ ( d634 )
        d732 : ( ( Set -> Set ) ∋ ( ( λ x7340 -> if true then x7340 else Bool ) ) ) $ ( if false then Bool else Bool )
        d732 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> true ) ) ) $ ( false ) else if true then false else d149
        d735 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7380 -> x7380 ) ) ) $ ( Bool )
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> if x7370 then x7360 else d349 ) ) ) $ ( false ) ) ) ) $ ( if d146 then d121 else false )
        d739 : ( ( Set -> Set ) ∋ ( ( λ x7410 -> if false then x7410 else x7410 ) ) ) $ ( if false then Bool else Bool )
        d739 = if ( ( Bool -> Bool ) ∋ ( ( λ x7400 -> true ) ) ) $ ( false ) then if d602 then false else d132 else if d54 then false else d197
        d742 : if false then ( ( Set -> Set ) ∋ ( ( λ x7450 -> x7450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7460 -> Bool ) ) ) $ ( Bool )
        d742 = ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> ( ( Bool -> Bool ) ∋ ( ( λ x7440 -> if d87 then false else x7440 ) ) ) $ ( x7430 ) ) ) ) $ ( if false then d37 else true )
        d747 : if false then ( ( Set -> Set ) ∋ ( ( λ x7510 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d747 = if ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> true ) ) ) $ ( d679 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> x7490 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> false ) ) ) $ ( d243 )
        d752 : if true then if false then Bool else Bool else if true then Bool else Bool
        d752 = if if d590 then d82 else d182 then if d168 then false else d387 else if d586 then true else d670
        d753 : ( ( Set -> Set ) ∋ ( ( λ x7560 -> ( ( Set -> Set ) ∋ ( ( λ x7570 -> if true then Bool else x7570 ) ) ) $ ( x7560 ) ) ) ) $ ( if true then Bool else Bool )
        d753 = if ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> x7540 ) ) ) $ ( d32 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7550 -> false ) ) ) $ ( false ) else if d428 then false else true
        d758 : ( ( Set -> Set ) ∋ ( ( λ x7600 -> ( ( Set -> Set ) ∋ ( ( λ x7610 -> if true then Bool else x7600 ) ) ) $ ( x7600 ) ) ) ) $ ( if true then Bool else Bool )
        d758 = if if true then d243 else false then ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> false ) ) ) $ ( true ) else if d117 then false else true
        d762 : ( ( Set -> Set ) ∋ ( ( λ x7640 -> if false then Bool else x7640 ) ) ) $ ( if true then Bool else Bool )
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> if x7630 then false else d486 ) ) ) $ ( if true then false else d231 )
        d765 : ( ( Set -> Set ) ∋ ( ( λ x7670 -> if true then x7670 else Bool ) ) ) $ ( if false then Bool else Bool )
        d765 = ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> if d263 then false else d406 ) ) ) $ ( if d461 then false else false )
        d768 : ( ( Set -> Set ) ∋ ( ( λ x7720 -> ( ( Set -> Set ) ∋ ( ( λ x7730 -> if true then Bool else x7720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d768 = if ( ( Bool -> Bool ) ∋ ( ( λ x7690 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> x7710 ) ) ) $ ( d336 )
        d774 : if false then if false then Bool else Bool else if true then Bool else Bool
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> ( ( Bool -> Bool ) ∋ ( ( λ x7760 -> if x7750 then x7750 else true ) ) ) $ ( x7750 ) ) ) ) $ ( if true then false else d592 )
        d777 : ( ( Set -> Set ) ∋ ( ( λ x7800 -> if true then x7800 else Bool ) ) ) $ ( if false then Bool else Bool )
        d777 = if if true then true else d210 then ( ( Bool -> Bool ) ∋ ( ( λ x7780 -> d608 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> x7790 ) ) ) $ ( d662 )
        d781 : ( ( Set -> Set ) ∋ ( ( λ x7840 -> ( ( Set -> Set ) ∋ ( ( λ x7850 -> if false then Bool else x7840 ) ) ) $ ( x7840 ) ) ) ) $ ( if false then Bool else Bool )
        d781 = if if d541 then true else d110 then ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> x7820 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7830 -> false ) ) ) $ ( true )
        d786 : ( ( Set -> Set ) ∋ ( ( λ x7890 -> ( ( Set -> Set ) ∋ ( ( λ x7900 -> if false then x7900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> if true then d551 else true ) ) ) $ ( d87 ) ) ) ) $ ( if false then false else d149 )
        d791 : if true then ( ( Set -> Set ) ∋ ( ( λ x7920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7930 -> Bool ) ) ) $ ( Bool )
        d791 = if if true then false else d8 then if false then false else d655 else if true then false else d1
        d794 : if false then ( ( Set -> Set ) ∋ ( ( λ x7970 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d794 = ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> if x7950 then x7950 else x7960 ) ) ) $ ( x7950 ) ) ) ) $ ( if d655 then false else false )
        d798 : ( ( Set -> Set ) ∋ ( ( λ x8000 -> ( ( Set -> Set ) ∋ ( ( λ x8010 -> if false then Bool else x8010 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d798 = ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> if true then d177 else d438 ) ) ) $ ( if false then d514 else d786 )
        d802 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8050 -> Bool ) ) ) $ ( Bool )
        d802 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> x8030 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> false ) ) ) $ ( true )
        d806 : if true then ( ( Set -> Set ) ∋ ( ( λ x8090 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d806 = ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> if false then d121 else d519 ) ) ) $ ( true ) ) ) ) $ ( if d781 then false else false )
        d810 : ( ( Set -> Set ) ∋ ( ( λ x8120 -> if true then Bool else x8120 ) ) ) $ ( if false then Bool else Bool )
        d810 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> d387 ) ) ) $ ( d711 ) else if true then false else true
        d813 : if true then ( ( Set -> Set ) ∋ ( ( λ x8150 -> x8150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d813 = if if d662 then d670 else true then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> d600 ) ) ) $ ( true )
        d816 : ( ( Set -> Set ) ∋ ( ( λ x8180 -> if false then x8180 else x8180 ) ) ) $ ( if true then Bool else Bool )
        d816 = if if true then d687 else false then if d452 then true else d378 else ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> x8170 ) ) ) $ ( true )
        d819 : ( ( Set -> Set ) ∋ ( ( λ x8210 -> ( ( Set -> Set ) ∋ ( ( λ x8220 -> if true then Bool else Bool ) ) ) $ ( x8210 ) ) ) ) $ ( if true then Bool else Bool )
        d819 = ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> if false then true else d221 ) ) ) $ ( if false then true else false )
        d823 : if true then if true then Bool else Bool else if false then Bool else Bool
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> if false then x8240 else false ) ) ) $ ( d132 ) ) ) ) $ ( if true then d618 else false )
        d826 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8280 -> Bool ) ) ) $ ( Bool )
        d826 = ( ( Bool -> Bool ) ∋ ( ( λ x8270 -> if d608 then false else x8270 ) ) ) $ ( if d602 then true else true )
        d829 : if true then if false then Bool else Bool else if true then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> if false then d730 else d546 ) ) ) $ ( if d711 then false else d94 )
        d831 : if true then if true then Bool else Bool else if false then Bool else Bool
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if d452 then d452 else d791 ) ) ) $ ( if false then d461 else d25 )
        d833 : ( ( Set -> Set ) ∋ ( ( λ x8350 -> ( ( Set -> Set ) ∋ ( ( λ x8360 -> if false then x8350 else x8360 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d833 = if ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> false ) ) ) $ ( d300 ) then if d182 then false else true else if d393 then true else false
        d837 : ( ( Set -> Set ) ∋ ( ( λ x8390 -> ( ( Set -> Set ) ∋ ( ( λ x8400 -> if false then Bool else x8390 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> if false then true else x8380 ) ) ) $ ( if true then true else false )
        d841 : ( ( Set -> Set ) ∋ ( ( λ x8430 -> ( ( Set -> Set ) ∋ ( ( λ x8440 -> if false then x8440 else Bool ) ) ) $ ( x8430 ) ) ) ) $ ( if true then Bool else Bool )
        d841 = ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> if true then d329 else d471 ) ) ) $ ( if false then true else d696 )
        d845 : ( ( Set -> Set ) ∋ ( ( λ x8480 -> if true then x8480 else x8480 ) ) ) $ ( if false then Bool else Bool )
        d845 = if if false then false else d481 then ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> true ) ) ) $ ( d263 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8470 -> x8470 ) ) ) $ ( false )
        d849 : if false then ( ( Set -> Set ) ∋ ( ( λ x8510 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d849 = ( ( Bool -> Bool ) ∋ ( ( λ x8500 -> if d378 then x8500 else x8500 ) ) ) $ ( if d777 then d251 else false )
        d852 : if true then ( ( Set -> Set ) ∋ ( ( λ x8560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8570 -> x8570 ) ) ) $ ( Bool )
        d852 = if ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> false ) ) ) $ ( d172 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8540 -> d762 ) ) ) $ ( d742 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8550 -> x8550 ) ) ) $ ( d544 )
        d858 : ( ( Set -> Set ) ∋ ( ( λ x8610 -> if false then x8610 else x8610 ) ) ) $ ( if false then Bool else Bool )
        d858 = ( ( Bool -> Bool ) ∋ ( ( λ x8590 -> ( ( Bool -> Bool ) ∋ ( ( λ x8600 -> if false then x8590 else d684 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d157 )
        d862 : if false then ( ( Set -> Set ) ∋ ( ( λ x8650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d862 = ( ( Bool -> Bool ) ∋ ( ( λ x8630 -> ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> if d117 then d339 else x8630 ) ) ) $ ( x8630 ) ) ) ) $ ( if true then false else d721 )
        d866 : if true then ( ( Set -> Set ) ∋ ( ( λ x8680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8690 -> Bool ) ) ) $ ( Bool )
        d866 = ( ( Bool -> Bool ) ∋ ( ( λ x8670 -> if false then x8670 else d742 ) ) ) $ ( if d592 then true else true )
        d870 : ( ( Set -> Set ) ∋ ( ( λ x8720 -> if false then x8720 else x8720 ) ) ) $ ( if false then Bool else Bool )
        d870 = if if d753 then true else d113 then if true then true else d684 else ( ( Bool -> Bool ) ∋ ( ( λ x8710 -> x8710 ) ) ) $ ( d54 )
        d873 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8750 -> x8750 ) ) ) $ ( Bool )
        d873 = if if true then d288 else false then ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> x8740 ) ) ) $ ( d339 ) else if d74 then d852 else d774
        d876 : ( ( Set -> Set ) ∋ ( ( λ x8790 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d876 = ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> ( ( Bool -> Bool ) ∋ ( ( λ x8780 -> if false then true else x8770 ) ) ) $ ( d166 ) ) ) ) $ ( if false then false else true )
        d880 : ( ( Set -> Set ) ∋ ( ( λ x8820 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d880 = if if d390 then d87 else d420 then ( ( Bool -> Bool ) ∋ ( ( λ x8810 -> false ) ) ) $ ( d259 ) else if d866 then false else false
        d883 : if true then ( ( Set -> Set ) ∋ ( ( λ x8860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8870 -> Bool ) ) ) $ ( Bool )
        d883 = if ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> d325 ) ) ) $ ( d263 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8850 -> true ) ) ) $ ( d132 ) else if false then d273 else d225
        d888 : if true then ( ( Set -> Set ) ∋ ( ( λ x8900 -> x8900 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d888 = ( ( Bool -> Bool ) ∋ ( ( λ x8890 -> if x8890 then d777 else false ) ) ) $ ( if d461 then false else true )
        d891 : ( ( Set -> Set ) ∋ ( ( λ x8950 -> ( ( Set -> Set ) ∋ ( ( λ x8960 -> if false then Bool else x8960 ) ) ) $ ( x8950 ) ) ) ) $ ( if true then Bool else Bool )
        d891 = if ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> false ) ) ) $ ( d852 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> d810 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> true ) ) ) $ ( false )
        d897 : ( ( Set -> Set ) ∋ ( ( λ x9010 -> if false then x9010 else x9010 ) ) ) $ ( if false then Bool else Bool )
        d897 = if ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> x8980 ) ) ) $ ( d535 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> d239 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> true ) ) ) $ ( true )
        d902 : if true then ( ( Set -> Set ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d902 = if if d166 then d82 else false then if d126 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> true ) ) ) $ ( true )
        d905 : ( ( Set -> Set ) ∋ ( ( λ x9080 -> ( ( Set -> Set ) ∋ ( ( λ x9090 -> if false then x9090 else x9090 ) ) ) $ ( x9080 ) ) ) ) $ ( if false then Bool else Bool )
        d905 = if ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> x9060 ) ) ) $ ( false ) then if true then d721 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> d810 ) ) ) $ ( false )
        d910 : if false then ( ( Set -> Set ) ∋ ( ( λ x9110 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d910 = if if d269 then d213 else false then if false then true else d888 else if d606 then d280 else d742
        d912 : ( ( Set -> Set ) ∋ ( ( λ x9140 -> ( ( Set -> Set ) ∋ ( ( λ x9150 -> if true then x9150 else Bool ) ) ) $ ( x9140 ) ) ) ) $ ( if false then Bool else Bool )
        d912 = if if true then d701 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> d716 ) ) ) $ ( true ) else if false then d412 else true
        d916 : if false then if false then Bool else Bool else if false then Bool else Bool
        d916 = ( ( Bool -> Bool ) ∋ ( ( λ x9170 -> if false then x9170 else d600 ) ) ) $ ( if false then true else d360 )
        d918 : if false then ( ( Set -> Set ) ∋ ( ( λ x9200 -> x9200 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d918 = if ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> false ) ) ) $ ( d98 ) then if d765 then false else d486 else if d1 then true else false
        d921 : ( ( Set -> Set ) ∋ ( ( λ x9230 -> if true then x9230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d921 = ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> if true then d201 else d65 ) ) ) $ ( if true then false else d711 )
        d924 : if false then if true then Bool else Bool else if false then Bool else Bool
        d924 = ( ( Bool -> Bool ) ∋ ( ( λ x9250 -> ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> if true then false else false ) ) ) $ ( true ) ) ) ) $ ( if d819 then true else true )
        d927 : ( ( Set -> Set ) ∋ ( ( λ x9290 -> if true then Bool else x9290 ) ) ) $ ( if false then Bool else Bool )
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> if false then d696 else x9280 ) ) ) $ ( if d592 then d716 else d207 )
        d930 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9330 -> x9330 ) ) ) $ ( Bool )
        d930 = ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> if x9320 then d137 else x9310 ) ) ) $ ( d319 ) ) ) ) $ ( if false then false else false )
        d934 : if false then ( ( Set -> Set ) ∋ ( ( λ x9360 -> x9360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9370 -> Bool ) ) ) $ ( Bool )
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> if false then false else x9350 ) ) ) $ ( if false then false else false )
        d938 : ( ( Set -> Set ) ∋ ( ( λ x9390 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d938 = if if d845 then true else true then if d231 then d146 else d684 else if d63 then false else d802
        d940 : ( ( Set -> Set ) ∋ ( ( λ x9420 -> ( ( Set -> Set ) ∋ ( ( λ x9430 -> if false then Bool else Bool ) ) ) $ ( x9420 ) ) ) ) $ ( if true then Bool else Bool )
        d940 = ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> if x9410 then false else x9410 ) ) ) $ ( if true then true else d288 )
        d944 : ( ( Set -> Set ) ∋ ( ( λ x9460 -> ( ( Set -> Set ) ∋ ( ( λ x9470 -> if false then Bool else Bool ) ) ) $ ( x9460 ) ) ) ) $ ( if false then Bool else Bool )
        d944 = ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> if d467 then d166 else false ) ) ) $ ( if true then false else d781 )
        d948 : ( ( Set -> Set ) ∋ ( ( λ x9500 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d948 = if if d445 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> x9490 ) ) ) $ ( d424 ) else if false then d203 else false
        d951 : if false then ( ( Set -> Set ) ∋ ( ( λ x9540 -> x9540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9550 -> Bool ) ) ) $ ( Bool )
        d951 = ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> if true then true else x9530 ) ) ) $ ( d691 ) ) ) ) $ ( if d177 then d638 else d349 )
        d956 : ( ( Set -> Set ) ∋ ( ( λ x9590 -> if true then x9590 else Bool ) ) ) $ ( if true then Bool else Bool )
        d956 = ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> if true then d819 else d489 ) ) ) $ ( d632 ) ) ) ) $ ( if false then d409 else d182 )
        d960 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9640 -> Bool ) ) ) $ ( Bool )
        d960 = if ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> x9620 ) ) ) $ ( d730 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9630 -> d201 ) ) ) $ ( false )
        d965 : ( ( Set -> Set ) ∋ ( ( λ x9680 -> ( ( Set -> Set ) ∋ ( ( λ x9690 -> if false then x9680 else Bool ) ) ) $ ( x9680 ) ) ) ) $ ( if true then Bool else Bool )
        d965 = ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> if x9670 then d684 else d481 ) ) ) $ ( x9660 ) ) ) ) $ ( if d370 then true else d203 )
        d970 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9730 -> x9730 ) ) ) $ ( Bool )
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> if x9720 then x9710 else true ) ) ) $ ( x9710 ) ) ) ) $ ( if d121 then d341 else false )
        d974 : if false then ( ( Set -> Set ) ∋ ( ( λ x9760 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d974 = ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> if d696 then true else false ) ) ) $ ( if true then false else true )
        d977 : if true then ( ( Set -> Set ) ∋ ( ( λ x9790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9800 -> Bool ) ) ) $ ( Bool )
        d977 = if if d544 then false else d694 then if true then d876 else d806 else ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> false ) ) ) $ ( true )
        d981 : ( ( Set -> Set ) ∋ ( ( λ x9850 -> ( ( Set -> Set ) ∋ ( ( λ x9860 -> if true then Bool else Bool ) ) ) $ ( x9850 ) ) ) ) $ ( if true then Bool else Bool )
        d981 = if ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> x9820 ) ) ) $ ( d546 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> x9830 ) ) ) $ ( d239 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> d383 ) ) ) $ ( false )
        d987 : if false then ( ( Set -> Set ) ∋ ( ( λ x9890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9900 -> Bool ) ) ) $ ( Bool )
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> if x9880 then x9880 else false ) ) ) $ ( if d503 then true else d346 )
        d991 : if true then ( ( Set -> Set ) ∋ ( ( λ x9920 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d991 = if if true then false else true then if true then d280 else d519 else if d500 then false else d40
        d993 : ( ( Set -> Set ) ∋ ( ( λ x9960 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d993 = if ( ( Bool -> Bool ) ∋ ( ( λ x9940 -> d25 ) ) ) $ ( d551 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> d187 ) ) ) $ ( false ) else if d698 then d651 else false
        d997 : if true then ( ( Set -> Set ) ∋ ( ( λ x9980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9990 -> Bool ) ) ) $ ( Bool )
        d997 = if if d679 then d876 else d798 then if true then true else false else if d711 then d367 else d161
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10020 -> ( ( Set -> Set ) ∋ ( ( λ x10030 -> if true then x10030 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> if x10010 then false else x10010 ) ) ) $ ( if false then true else false )
        d1004 : if true then ( ( Set -> Set ) ∋ ( ( λ x10060 -> x10060 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10070 -> x10070 ) ) ) $ ( Bool )
        d1004 = if ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> d924 ) ) ) $ ( true ) then if d221 then d65 else d333 else if false then d251 else d716
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x10100 -> if true then x10100 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> if x10090 then x10090 else x10090 ) ) ) $ ( if false then true else d544 )
        d1011 : ( ( Set -> Set ) ∋ ( ( λ x10140 -> ( ( Set -> Set ) ∋ ( ( λ x10150 -> if true then x10140 else x10150 ) ) ) $ ( x10140 ) ) ) ) $ ( if false then Bool else Bool )
        d1011 = if ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> x10120 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> d506 ) ) ) $ ( false ) else if d492 then d221 else d608
        d1016 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1016 = ( ( Bool -> Bool ) ∋ ( ( λ x10170 -> if false then d107 else d438 ) ) ) $ ( if d902 then true else d531 )
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x10210 -> ( ( Set -> Set ) ∋ ( ( λ x10220 -> if true then x10220 else x10210 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1018 = if ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> d154 ) ) ) $ ( true ) then if true then d110 else true else ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> d670 ) ) ) $ ( true )
        d1023 : ( ( Set -> Set ) ∋ ( ( λ x10260 -> ( ( Set -> Set ) ∋ ( ( λ x10270 -> if false then x10260 else Bool ) ) ) $ ( x10260 ) ) ) ) $ ( if false then Bool else Bool )
        d1023 = if ( ( Bool -> Bool ) ∋ ( ( λ x10240 -> true ) ) ) $ ( d597 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> d360 ) ) ) $ ( true ) else if d304 then d987 else true
        d1028 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1028 = if ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> true ) ) ) $ ( true ) then if d383 then d845 else d457 else if d883 then false else d333
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x10320 -> ( ( Set -> Set ) ∋ ( ( λ x10330 -> if true then x10320 else Bool ) ) ) $ ( x10320 ) ) ) ) $ ( if false then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> if x10310 then d247 else true ) ) ) $ ( if false then false else false )
        d1034 : if true then ( ( Set -> Set ) ∋ ( ( λ x10360 -> x10360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10370 -> x10370 ) ) ) $ ( Bool )
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if true then x10350 else d537 ) ) ) $ ( if false then false else true )
        d1038 : ( ( Set -> Set ) ∋ ( ( λ x10410 -> ( ( Set -> Set ) ∋ ( ( λ x10420 -> if true then x10410 else Bool ) ) ) $ ( x10410 ) ) ) ) $ ( if false then Bool else Bool )
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> ( ( Bool -> Bool ) ∋ ( ( λ x10400 -> if x10400 then d284 else d339 ) ) ) $ ( d711 ) ) ) ) $ ( if true then d400 else d597 )
        d1043 : if true then ( ( Set -> Set ) ∋ ( ( λ x10450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10460 -> Bool ) ) ) $ ( Bool )
        d1043 = if ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> true ) ) ) $ ( d284 ) then if false then d74 else d694 else if d528 then false else d614
        d1047 : ( ( Set -> Set ) ∋ ( ( λ x10490 -> ( ( Set -> Set ) ∋ ( ( λ x10500 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1047 = ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> if true then true else false ) ) ) $ ( if d831 then d190 else d1028 )
        d1051 : if true then ( ( Set -> Set ) ∋ ( ( λ x10540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10550 -> x10550 ) ) ) $ ( Bool )
        d1051 = ( ( Bool -> Bool ) ∋ ( ( λ x10520 -> ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> if true then d765 else true ) ) ) $ ( x10520 ) ) ) ) $ ( if d888 then false else true )
        d1056 : ( ( Set -> Set ) ∋ ( ( λ x10580 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1056 = ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> if x10570 then d565 else d970 ) ) ) $ ( if d203 then false else d416 )
        d1059 : if false then ( ( Set -> Set ) ∋ ( ( λ x10620 -> x10620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10630 -> x10630 ) ) ) $ ( Bool )
        d1059 = ( ( Bool -> Bool ) ∋ ( ( λ x10600 -> ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> if x10610 then d956 else x10600 ) ) ) $ ( false ) ) ) ) $ ( if d1028 then true else false )
        d1064 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10670 -> x10670 ) ) ) $ ( Bool )
        d1064 = ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> ( ( Bool -> Bool ) ∋ ( ( λ x10660 -> if d63 then true else true ) ) ) $ ( x10650 ) ) ) ) $ ( if true then d791 else false )
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x10700 -> if false then Bool else x10700 ) ) ) $ ( if true then Bool else Bool )
        d1068 = ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> if x10690 then false else false ) ) ) $ ( if d341 then d154 else d951 )
        d1071 : ( ( Set -> Set ) ∋ ( ( λ x10720 -> ( ( Set -> Set ) ∋ ( ( λ x10730 -> if true then Bool else Bool ) ) ) $ ( x10720 ) ) ) ) $ ( if false then Bool else Bool )
        d1071 = if if false then true else true then if false then d393 else d424 else if false then d651 else false
        d1074 : ( ( Set -> Set ) ∋ ( ( λ x10770 -> if false then Bool else x10770 ) ) ) $ ( if false then Bool else Bool )
        d1074 = ( ( Bool -> Bool ) ∋ ( ( λ x10750 -> ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> if d644 then d993 else d378 ) ) ) $ ( true ) ) ) ) $ ( if d360 then d182 else d87 )
        d1078 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1078 = if ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> d11 ) ) ) $ ( true ) then if false then d1018 else d625 else ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> false ) ) ) $ ( true )
        d1081 : ( ( Set -> Set ) ∋ ( ( λ x10840 -> if true then x10840 else x10840 ) ) ) $ ( if false then Bool else Bool )
        d1081 = ( ( Bool -> Bool ) ∋ ( ( λ x10820 -> ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> if x10820 then x10820 else x10820 ) ) ) $ ( d544 ) ) ) ) $ ( if d367 then d916 else true )
        d1085 : ( ( Set -> Set ) ∋ ( ( λ x10870 -> if true then x10870 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1085 = ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> if x10860 then x10860 else d658 ) ) ) $ ( if true then true else false )
        d1088 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10900 -> x10900 ) ) ) $ ( Bool )
        d1088 = if if d1011 then d333 else d655 then ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> x10890 ) ) ) $ ( d197 ) else if true then true else false
        d1091 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> if d873 then x10920 else true ) ) ) $ ( if d556 then false else d628 )
        d1093 : ( ( Set -> Set ) ∋ ( ( λ x10960 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1093 = ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if d960 then d1085 else d537 ) ) ) $ ( d883 ) ) ) ) $ ( if d826 then true else true )
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x11000 -> if true then x11000 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1097 = ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> if d197 then true else d569 ) ) ) $ ( x10980 ) ) ) ) $ ( if true then false else d831 )
        d1101 : if false then ( ( Set -> Set ) ∋ ( ( λ x11030 -> x11030 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11040 -> x11040 ) ) ) $ ( Bool )
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> if d905 then x11020 else false ) ) ) $ ( if false then true else d132 )
        d1105 : ( ( Set -> Set ) ∋ ( ( λ x11090 -> ( ( Set -> Set ) ∋ ( ( λ x11100 -> if true then x11090 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1105 = if ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> d1018 ) ) ) $ ( d910 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> x11080 ) ) ) $ ( d1011 )
        d1111 : if true then ( ( Set -> Set ) ∋ ( ( λ x11140 -> x11140 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11150 -> Bool ) ) ) $ ( Bool )
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> ( ( Bool -> Bool ) ∋ ( ( λ x11130 -> if false then false else x11130 ) ) ) $ ( d1043 ) ) ) ) $ ( if true then true else true )
        d1116 : ( ( Set -> Set ) ∋ ( ( λ x11190 -> ( ( Set -> Set ) ∋ ( ( λ x11200 -> if true then x11190 else x11190 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1116 = if if true then d876 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> x11170 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11180 -> x11180 ) ) ) $ ( true )
        d1121 : ( ( Set -> Set ) ∋ ( ( λ x11230 -> ( ( Set -> Set ) ∋ ( ( λ x11240 -> if false then Bool else x11240 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1121 = if if true then d866 else true then if true then d360 else true else ( ( Bool -> Bool ) ∋ ( ( λ x11220 -> d121 ) ) ) $ ( d325 )
        d1125 : ( ( Set -> Set ) ∋ ( ( λ x11280 -> ( ( Set -> Set ) ∋ ( ( λ x11290 -> if true then Bool else x11290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1125 = if ( ( Bool -> Bool ) ∋ ( ( λ x11260 -> false ) ) ) $ ( d948 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> d89 ) ) ) $ ( d590 ) else if true then d798 else true
        d1130 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11310 -> Bool ) ) ) $ ( Bool )
        d1130 = if if d902 then true else true then if false then d1043 else d691 else if d506 then d103 else true
        d1132 : ( ( Set -> Set ) ∋ ( ( λ x11350 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1132 = if ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> d810 ) ) ) $ ( d1000 ) then if true then d940 else d497 else ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> d329 ) ) ) $ ( d234 )
        d1136 : ( ( Set -> Set ) ∋ ( ( λ x11390 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1136 = if ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> false ) ) ) $ ( d535 ) then if d1056 then false else d217 else ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> x11380 ) ) ) $ ( d190 )
        d1140 : ( ( Set -> Set ) ∋ ( ( λ x11420 -> ( ( Set -> Set ) ∋ ( ( λ x11430 -> if false then x11430 else Bool ) ) ) $ ( x11420 ) ) ) ) $ ( if false then Bool else Bool )
        d1140 = ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> if x11410 then d918 else x11410 ) ) ) $ ( if d29 then d579 else true )
        d1144 : ( ( Set -> Set ) ∋ ( ( λ x11460 -> ( ( Set -> Set ) ∋ ( ( λ x11470 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1144 = if ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> d400 ) ) ) $ ( d367 ) then if d387 then false else d396 else if d618 then false else d600
        d1148 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11510 -> Bool ) ) ) $ ( Bool )
        d1148 = ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> ( ( Bool -> Bool ) ∋ ( ( λ x11500 -> if d991 then d284 else d880 ) ) ) $ ( d89 ) ) ) ) $ ( if false then false else true )
        d1152 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11550 -> x11550 ) ) ) $ ( Bool )
        d1152 = ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> if false then d78 else d696 ) ) ) $ ( false ) ) ) ) $ ( if d304 then false else false )
        d1156 : if true then ( ( Set -> Set ) ∋ ( ( λ x11590 -> x11590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11600 -> Bool ) ) ) $ ( Bool )
        d1156 = ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> if d781 then d1 else d234 ) ) ) $ ( d121 ) ) ) ) $ ( if false then false else false )
        d1161 : ( ( Set -> Set ) ∋ ( ( λ x11630 -> if false then x11630 else x11630 ) ) ) $ ( if true then Bool else Bool )
        d1161 = ( ( Bool -> Bool ) ∋ ( ( λ x11620 -> if x11620 then false else true ) ) ) $ ( if d1008 then false else true )
        d1164 : ( ( Set -> Set ) ∋ ( ( λ x11670 -> ( ( Set -> Set ) ∋ ( ( λ x11680 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1164 = if ( ( Bool -> Bool ) ∋ ( ( λ x11650 -> d409 ) ) ) $ ( d378 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> d600 ) ) ) $ ( d721 ) else if true then d625 else d675
        d1169 : if false then ( ( Set -> Set ) ∋ ( ( λ x11710 -> x11710 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1169 = if if true then true else d562 then ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> d944 ) ) ) $ ( false ) else if false then false else d339
        d1172 : ( ( Set -> Set ) ∋ ( ( λ x11750 -> if true then x11750 else x11750 ) ) ) $ ( if true then Bool else Bool )
        d1172 = ( ( Bool -> Bool ) ∋ ( ( λ x11730 -> ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> if x11740 then true else false ) ) ) $ ( d1078 ) ) ) ) $ ( if true then d1071 else false )
        d1176 : ( ( Set -> Set ) ∋ ( ( λ x11790 -> if true then x11790 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1176 = ( ( Bool -> Bool ) ∋ ( ( λ x11770 -> ( ( Bool -> Bool ) ∋ ( ( λ x11780 -> if x11780 then x11780 else x11770 ) ) ) $ ( d132 ) ) ) ) $ ( if true then true else false )
        d1180 : if true then ( ( Set -> Set ) ∋ ( ( λ x11820 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1180 = if ( ( Bool -> Bool ) ∋ ( ( λ x11810 -> true ) ) ) $ ( true ) then if d891 then true else d1085 else if true then false else true
        d1183 : ( ( Set -> Set ) ∋ ( ( λ x11860 -> ( ( Set -> Set ) ∋ ( ( λ x11870 -> if true then Bool else x11860 ) ) ) $ ( x11860 ) ) ) ) $ ( if true then Bool else Bool )
        d1183 = ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> if true then false else true ) ) ) $ ( false ) ) ) ) $ ( if d221 then d424 else d1078 )
        d1188 : ( ( Set -> Set ) ∋ ( ( λ x11900 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1188 = if ( ( Bool -> Bool ) ∋ ( ( λ x11890 -> d523 ) ) ) $ ( d666 ) then if false then true else true else if true then d259 else true
        d1191 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1191 = if if d225 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> true ) ) ) $ ( false ) else if false then d618 else d74
        d1193 : ( ( Set -> Set ) ∋ ( ( λ x11950 -> if true then x11950 else x11950 ) ) ) $ ( if true then Bool else Bool )
        d1193 = ( ( Bool -> Bool ) ∋ ( ( λ x11940 -> if true then false else x11940 ) ) ) $ ( if false then d511 else false )
        d1196 : ( ( Set -> Set ) ∋ ( ( λ x11980 -> if true then x11980 else x11980 ) ) ) $ ( if false then Bool else Bool )
        d1196 = if if d273 then false else false then if d1004 then false else d225 else ( ( Bool -> Bool ) ∋ ( ( λ x11970 -> true ) ) ) $ ( d905 )
        d1199 : ( ( Set -> Set ) ∋ ( ( λ x12010 -> if true then x12010 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1199 = ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> if x12000 then false else x12000 ) ) ) $ ( if d367 then d651 else d277 )
        d1202 : ( ( Set -> Set ) ∋ ( ( λ x12040 -> ( ( Set -> Set ) ∋ ( ( λ x12050 -> if false then x12040 else Bool ) ) ) $ ( x12040 ) ) ) ) $ ( if true then Bool else Bool )
        d1202 = if if d1028 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> x12030 ) ) ) $ ( true ) else if false then d531 else d78
        d1206 : ( ( Set -> Set ) ∋ ( ( λ x12090 -> ( ( Set -> Set ) ∋ ( ( λ x12100 -> if true then x12090 else Bool ) ) ) $ ( x12090 ) ) ) ) $ ( if true then Bool else Bool )
        d1206 = ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> if x12070 then true else d37 ) ) ) $ ( d304 ) ) ) ) $ ( if false then true else false )
        d1211 : ( ( Set -> Set ) ∋ ( ( λ x12140 -> ( ( Set -> Set ) ∋ ( ( λ x12150 -> if false then x12150 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1211 = if ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> d632 ) ) ) $ ( true ) then if false then d523 else false else ( ( Bool -> Bool ) ∋ ( ( λ x12130 -> false ) ) ) $ ( false )
        d1216 : ( ( Set -> Set ) ∋ ( ( λ x12180 -> ( ( Set -> Set ) ∋ ( ( λ x12190 -> if true then x12180 else x12180 ) ) ) $ ( x12180 ) ) ) ) $ ( if false then Bool else Bool )
        d1216 = ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> if true then true else d921 ) ) ) $ ( if false then false else d819 )
        d1220 : ( ( Set -> Set ) ∋ ( ( λ x12230 -> if false then x12230 else x12230 ) ) ) $ ( if true then Bool else Bool )
        d1220 = ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> if x12220 then d1144 else x12210 ) ) ) $ ( false ) ) ) ) $ ( if d406 then d658 else d194 )
        d1224 : ( ( Set -> Set ) ∋ ( ( λ x12260 -> ( ( Set -> Set ) ∋ ( ( λ x12270 -> if true then Bool else Bool ) ) ) $ ( x12260 ) ) ) ) $ ( if false then Bool else Bool )
        d1224 = if if true then d696 else d816 then ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> true ) ) ) $ ( true ) else if d806 then d101 else d452
        d1228 : ( ( Set -> Set ) ∋ ( ( λ x12300 -> if true then x12300 else x12300 ) ) ) $ ( if false then Bool else Bool )
        d1228 = if if d970 then d977 else d590 then if false then false else d489 else ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> true ) ) ) $ ( false )
        d1231 : if true then ( ( Set -> Set ) ∋ ( ( λ x12330 -> x12330 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1231 = if if d813 then false else true then if d974 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> d638 ) ) ) $ ( true )
        d1234 : ( ( Set -> Set ) ∋ ( ( λ x12360 -> ( ( Set -> Set ) ∋ ( ( λ x12370 -> if false then x12370 else x12370 ) ) ) $ ( x12360 ) ) ) ) $ ( if true then Bool else Bool )
        d1234 = if if false then d194 else true then ( ( Bool -> Bool ) ∋ ( ( λ x12350 -> d575 ) ) ) $ ( d876 ) else if d546 then true else d934
        d1238 : ( ( Set -> Set ) ∋ ( ( λ x12410 -> if false then x12410 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1238 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> d765 ) ) ) $ ( d319 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> x12400 ) ) ) $ ( d841 )
        d1242 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12440 -> Bool ) ) ) $ ( Bool )
        d1242 = if if true then false else d339 then if d956 then d544 else d924 else ( ( Bool -> Bool ) ∋ ( ( λ x12430 -> false ) ) ) $ ( d647 )
        d1245 : if false then ( ( Set -> Set ) ∋ ( ( λ x12470 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1245 = if if true then d500 else d691 then if d406 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> true ) ) ) $ ( d213 )
        d1248 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12510 -> x12510 ) ) ) $ ( Bool )
        d1248 = if ( ( Bool -> Bool ) ∋ ( ( λ x12490 -> false ) ) ) $ ( d816 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12500 -> true ) ) ) $ ( false ) else if true then d706 else d679
        d1252 : if false then ( ( Set -> Set ) ∋ ( ( λ x12560 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1252 = if ( ( Bool -> Bool ) ∋ ( ( λ x12530 -> x12530 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> d325 ) ) ) $ ( d506 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> x12550 ) ) ) $ ( d416 )
        d1257 : if true then ( ( Set -> Set ) ∋ ( ( λ x12590 -> x12590 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1257 = if if d45 then false else d1136 then ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> true ) ) ) $ ( false ) else if true then d1164 else true
        d1260 : ( ( Set -> Set ) ∋ ( ( λ x12620 -> if false then Bool else x12620 ) ) ) $ ( if true then Bool else Bool )
        d1260 = ( ( Bool -> Bool ) ∋ ( ( λ x12610 -> if true then x12610 else x12610 ) ) ) $ ( if d269 then d107 else d197 )
        d1263 : ( ( Set -> Set ) ∋ ( ( λ x12670 -> if false then x12670 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1263 = if ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> x12640 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12650 -> x12650 ) ) ) $ ( d662 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> x12660 ) ) ) $ ( true )
        d1268 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12710 -> Bool ) ) ) $ ( Bool )
        d1268 = if ( ( Bool -> Bool ) ∋ ( ( λ x12690 -> d74 ) ) ) $ ( d203 ) then if d231 then d1132 else d325 else ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> x12700 ) ) ) $ ( false )
        d1272 : if false then ( ( Set -> Set ) ∋ ( ( λ x12740 -> x12740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12750 -> x12750 ) ) ) $ ( Bool )
        d1272 = ( ( Bool -> Bool ) ∋ ( ( λ x12730 -> if d560 then d905 else x12730 ) ) ) $ ( if true then d182 else d1242 )
        d1276 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12790 -> x12790 ) ) ) $ ( Bool )
        d1276 = ( ( Bool -> Bool ) ∋ ( ( λ x12770 -> ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> if d107 then x12780 else true ) ) ) $ ( x12770 ) ) ) ) $ ( if true then d1064 else true )
        d1280 : ( ( Set -> Set ) ∋ ( ( λ x12820 -> if false then x12820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1280 = if if false then false else d1130 then ( ( Bool -> Bool ) ∋ ( ( λ x12810 -> false ) ) ) $ ( d651 ) else if d157 then false else false
        d1283 : if false then ( ( Set -> Set ) ∋ ( ( λ x12860 -> x12860 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1283 = if if d786 then d201 else d924 then ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> d625 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12850 -> true ) ) ) $ ( true )
        d1287 : if false then ( ( Set -> Set ) ∋ ( ( λ x12890 -> x12890 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1287 = if if d213 then d618 else d448 then ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> d747 ) ) ) $ ( d63 ) else if true then d938 else true
        d1290 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1290 = if if true then d1148 else true then ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> false ) ) ) $ ( d367 ) else if false then d70 else d477
        d1292 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12950 -> x12950 ) ) ) $ ( Bool )
        d1292 = ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> if false then d644 else false ) ) ) $ ( x12930 ) ) ) ) $ ( if d1016 then true else false )
        d1296 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1296 = ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> if d1292 then x12970 else d288 ) ) ) $ ( if false then true else d356 )
        d1298 : if true then ( ( Set -> Set ) ∋ ( ( λ x13000 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13010 -> x13010 ) ) ) $ ( Bool )
        d1298 = ( ( Bool -> Bool ) ∋ ( ( λ x12990 -> if x12990 then x12990 else x12990 ) ) ) $ ( if d862 then d774 else false )
        d1302 : ( ( Set -> Set ) ∋ ( ( λ x13050 -> ( ( Set -> Set ) ∋ ( ( λ x13060 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1302 = if ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> d1011 ) ) ) $ ( d1004 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> x13040 ) ) ) $ ( d528 ) else if true then d481 else false
        d1307 : ( ( Set -> Set ) ∋ ( ( λ x13090 -> if true then Bool else x13090 ) ) ) $ ( if true then Bool else Bool )
        d1307 = ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> if d927 then true else x13080 ) ) ) $ ( if true then d1064 else d1164 )
        d1310 : if false then ( ( Set -> Set ) ∋ ( ( λ x13130 -> x13130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13140 -> x13140 ) ) ) $ ( Bool )
        d1310 = if ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> false ) ) ) $ ( false ) then if true then d378 else d924 else ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> true ) ) ) $ ( false )
        d1315 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13170 -> x13170 ) ) ) $ ( Bool )
        d1315 = ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> if d753 then x13160 else false ) ) ) $ ( if false then d622 else d228 )
        d1318 : if false then ( ( Set -> Set ) ∋ ( ( λ x13220 -> x13220 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1318 = if ( ( Bool -> Bool ) ∋ ( ( λ x13190 -> x13190 ) ) ) $ ( d614 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13200 -> d370 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> true ) ) ) $ ( d711 )
        d1323 : if false then ( ( Set -> Set ) ∋ ( ( λ x13260 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1323 = ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> ( ( Bool -> Bool ) ∋ ( ( λ x13250 -> if d1211 then false else true ) ) ) $ ( x13240 ) ) ) ) $ ( if false then true else d1188 )
        d1327 : if false then ( ( Set -> Set ) ∋ ( ( λ x13290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13300 -> x13300 ) ) ) $ ( Bool )
        d1327 = if if d1059 then true else false then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> true ) ) ) $ ( d583 )
        d1331 : ( ( Set -> Set ) ∋ ( ( λ x13330 -> if false then Bool else x13330 ) ) ) $ ( if true then Bool else Bool )
        d1331 = ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> if d1111 then false else d1068 ) ) ) $ ( if d486 then d1220 else false )
        d1334 : if true then ( ( Set -> Set ) ∋ ( ( λ x13370 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1334 = if ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> x13350 ) ) ) $ ( d1290 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> x13360 ) ) ) $ ( false ) else if false then true else d891
        d1338 : ( ( Set -> Set ) ∋ ( ( λ x13410 -> ( ( Set -> Set ) ∋ ( ( λ x13420 -> if true then Bool else x13410 ) ) ) $ ( x13410 ) ) ) ) $ ( if true then Bool else Bool )
        d1338 = ( ( Bool -> Bool ) ∋ ( ( λ x13390 -> ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> if d65 then false else d974 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d1343 : ( ( Set -> Set ) ∋ ( ( λ x13460 -> if false then x13460 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1343 = ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> ( ( Bool -> Bool ) ∋ ( ( λ x13450 -> if x13440 then d781 else true ) ) ) $ ( x13440 ) ) ) ) $ ( if true then false else d300 )
        d1347 : if false then ( ( Set -> Set ) ∋ ( ( λ x13490 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1347 = if ( ( Bool -> Bool ) ∋ ( ( λ x13480 -> true ) ) ) $ ( d546 ) then if false then false else d489 else if d110 then d658 else d791
        d1350 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13520 -> x13520 ) ) ) $ ( Bool )
        d1350 = ( ( Bool -> Bool ) ∋ ( ( λ x13510 -> if x13510 then false else x13510 ) ) ) $ ( if d1183 then false else d774 )
        d1353 : if true then ( ( Set -> Set ) ∋ ( ( λ x13550 -> x13550 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1353 = if if false then true else true then if d1088 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> x13540 ) ) ) $ ( false )
        d1356 : if true then ( ( Set -> Set ) ∋ ( ( λ x13590 -> x13590 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1356 = if if d1224 then d280 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13570 -> x13570 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> d1343 ) ) ) $ ( d16 )
        d1360 : ( ( Set -> Set ) ∋ ( ( λ x13620 -> if true then x13620 else x13620 ) ) ) $ ( if true then Bool else Bool )
        d1360 = if if false then true else false then if d565 then true else d765 else ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> x13610 ) ) ) $ ( true )
        d1363 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1363 = if ( ( Bool -> Bool ) ∋ ( ( λ x13640 -> d393 ) ) ) $ ( false ) then if false then d185 else d541 else if false then true else true
        d1365 : if true then ( ( Set -> Set ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13680 -> x13680 ) ) ) $ ( Bool )
        d1365 = ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> if x13660 then d467 else true ) ) ) $ ( if d409 then d308 else d1257 )
        d1369 : if false then ( ( Set -> Set ) ∋ ( ( λ x13720 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13730 -> Bool ) ) ) $ ( Bool )
        d1369 = ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> ( ( Bool -> Bool ) ∋ ( ( λ x13710 -> if d608 then d528 else false ) ) ) $ ( x13700 ) ) ) ) $ ( if false then d207 else true )
        d1374 : if true then ( ( Set -> Set ) ∋ ( ( λ x13770 -> x13770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13780 -> x13780 ) ) ) $ ( Bool )
        d1374 = ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> if x13750 then true else false ) ) ) $ ( d739 ) ) ) ) $ ( if true then true else false )
        d1379 : if false then ( ( Set -> Set ) ∋ ( ( λ x13810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13820 -> x13820 ) ) ) $ ( Bool )
        d1379 = if ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> d562 ) ) ) $ ( d970 ) then if false then false else d304 else if d514 then d1071 else false
        d1383 : ( ( Set -> Set ) ∋ ( ( λ x13860 -> if true then x13860 else x13860 ) ) ) $ ( if false then Bool else Bool )
        d1383 = ( ( Bool -> Bool ) ∋ ( ( λ x13840 -> ( ( Bool -> Bool ) ∋ ( ( λ x13850 -> if d813 then x13850 else x13840 ) ) ) $ ( d201 ) ) ) ) $ ( if false then d390 else d747 )
        d1387 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13900 -> Bool ) ) ) $ ( Bool )
        d1387 = if if false then d523 else d378 then ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> false ) ) ) $ ( d829 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13890 -> false ) ) ) $ ( false )
        d1391 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13940 -> x13940 ) ) ) $ ( Bool )
        d1391 = if if d888 then d1078 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> d239 ) ) ) $ ( d29 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> x13930 ) ) ) $ ( d471 )
        d1395 : ( ( Set -> Set ) ∋ ( ( λ x13980 -> ( ( Set -> Set ) ∋ ( ( λ x13990 -> if true then x13980 else x13990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1395 = if if false then d1228 else d977 then ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> x13960 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13970 -> x13970 ) ) ) $ ( d1216 )
        d1400 : ( ( Set -> Set ) ∋ ( ( λ x14030 -> if false then Bool else x14030 ) ) ) $ ( if false then Bool else Bool )
        d1400 = if ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> false ) ) ) $ ( d970 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> d590 ) ) ) $ ( false ) else if true then false else d168
        d1404 : ( ( Set -> Set ) ∋ ( ( λ x14060 -> if false then x14060 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1404 = if if true then d333 else d217 then if d1283 then d716 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> d481 ) ) ) $ ( d1245 )
        d1407 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14100 -> x14100 ) ) ) $ ( Bool )
        d1407 = if if d655 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> d1318 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> d944 ) ) ) $ ( d101 )
        d1411 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1411 = ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> ( ( Bool -> Bool ) ∋ ( ( λ x14130 -> if x14120 then d29 else true ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14150 -> if false then x14150 else x14150 ) ) ) $ ( if true then Bool else Bool )
        d1414 = if if true then d930 else d146 then if d590 then d201 else false else if d304 then d628 else true
        d1416 : ( ( Set -> Set ) ∋ ( ( λ x14180 -> if false then x14180 else x14180 ) ) ) $ ( if false then Bool else Bool )
        d1416 = ( ( Bool -> Bool ) ∋ ( ( λ x14170 -> if x14170 then x14170 else x14170 ) ) ) $ ( if false then false else d1374 )
        d1419 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1419 = ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> if false then x14200 else d823 ) ) ) $ ( if d1302 then d333 else false )
        d1421 : ( ( Set -> Set ) ∋ ( ( λ x14230 -> ( ( Set -> Set ) ∋ ( ( λ x14240 -> if true then x14240 else Bool ) ) ) $ ( x14230 ) ) ) ) $ ( if true then Bool else Bool )
        d1421 = ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> if false then x14220 else d666 ) ) ) $ ( if true then false else true )
        d1425 : ( ( Set -> Set ) ∋ ( ( λ x14270 -> ( ( Set -> Set ) ∋ ( ( λ x14280 -> if true then Bool else x14280 ) ) ) $ ( x14270 ) ) ) ) $ ( if false then Bool else Bool )
        d1425 = ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> if true then d500 else d870 ) ) ) $ ( if d1199 then d213 else d837 )
        d1429 : ( ( Set -> Set ) ∋ ( ( λ x14310 -> ( ( Set -> Set ) ∋ ( ( λ x14320 -> if false then x14320 else x14310 ) ) ) $ ( x14310 ) ) ) ) $ ( if true then Bool else Bool )
        d1429 = ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> if d806 then x14300 else d569 ) ) ) $ ( if true then true else d541 )
        d1433 : ( ( Set -> Set ) ∋ ( ( λ x14350 -> ( ( Set -> Set ) ∋ ( ( λ x14360 -> if true then Bool else Bool ) ) ) $ ( x14350 ) ) ) ) $ ( if false then Bool else Bool )
        d1433 = ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> if false then d1169 else false ) ) ) $ ( if true then d409 else true )
        d1437 : if true then ( ( Set -> Set ) ∋ ( ( λ x14400 -> x14400 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1437 = ( ( Bool -> Bool ) ∋ ( ( λ x14380 -> ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> if x14390 then true else x14380 ) ) ) $ ( x14380 ) ) ) ) $ ( if true then d263 else d1338 )
        d1441 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1441 = ( ( Bool -> Bool ) ∋ ( ( λ x14420 -> ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> if d831 then d416 else d187 ) ) ) $ ( d416 ) ) ) ) $ ( if d121 then d1156 else d137 )
        d1444 : if false then ( ( Set -> Set ) ∋ ( ( λ x14470 -> x14470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14480 -> Bool ) ) ) $ ( Bool )
        d1444 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> x14450 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14460 -> x14460 ) ) ) $ ( d777 )
        d1449 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1449 = ( ( Bool -> Bool ) ∋ ( ( λ x14500 -> ( ( Bool -> Bool ) ∋ ( ( λ x14510 -> if d1224 then false else d831 ) ) ) $ ( false ) ) ) ) $ ( if d393 then d725 else d420 )
        d1452 : ( ( Set -> Set ) ∋ ( ( λ x14540 -> if false then x14540 else x14540 ) ) ) $ ( if true then Bool else Bool )
        d1452 = ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> if d1144 then d1023 else false ) ) ) $ ( if d247 then d8 else d1353 )
        d1455 : ( ( Set -> Set ) ∋ ( ( λ x14580 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1455 = if ( ( Bool -> Bool ) ∋ ( ( λ x14560 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> false ) ) ) $ ( d259 ) else if d70 then d562 else d194
        d1459 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1459 = ( ( Bool -> Bool ) ∋ ( ( λ x14600 -> ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> if x14610 then x14600 else x14600 ) ) ) $ ( x14600 ) ) ) ) $ ( if true then d1220 else true )
        d1462 : ( ( Set -> Set ) ∋ ( ( λ x14650 -> if false then Bool else x14650 ) ) ) $ ( if false then Bool else Bool )
        d1462 = ( ( Bool -> Bool ) ∋ ( ( λ x14630 -> ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> if x14640 then d1292 else d794 ) ) ) $ ( false ) ) ) ) $ ( if d213 then true else false )
        d1466 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1466 = ( ( Bool -> Bool ) ∋ ( ( λ x14670 -> if x14670 then false else d675 ) ) ) $ ( if d706 then d1292 else d1248 )
        d1468 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14700 -> x14700 ) ) ) $ ( Bool )
        d1468 = ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> if false then x14690 else d1216 ) ) ) $ ( if false then true else true )
        d1471 : ( ( Set -> Set ) ∋ ( ( λ x14730 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1471 = ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> if false then true else d45 ) ) ) $ ( if true then d1051 else false )
        d1474 : ( ( Set -> Set ) ∋ ( ( λ x14770 -> ( ( Set -> Set ) ∋ ( ( λ x14780 -> if true then x14780 else x14780 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1474 = ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> ( ( Bool -> Bool ) ∋ ( ( λ x14760 -> if x14750 then d1419 else x14760 ) ) ) $ ( d1008 ) ) ) ) $ ( if false then d387 else d1132 )
        d1479 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14810 -> Bool ) ) ) $ ( Bool )
        d1479 = ( ( Bool -> Bool ) ∋ ( ( λ x14800 -> if d1018 then d1263 else d1130 ) ) ) $ ( if d325 then true else true )
        d1482 : ( ( Set -> Set ) ∋ ( ( λ x14850 -> if true then x14850 else x14850 ) ) ) $ ( if true then Bool else Bool )
        d1482 = if if d1043 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> false ) ) ) $ ( d154 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14840 -> true ) ) ) $ ( true )
        d1486 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1486 = ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> if true then x14870 else x14870 ) ) ) $ ( if d562 then d329 else false )
        d1488 : if true then ( ( Set -> Set ) ∋ ( ( λ x14910 -> x14910 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1488 = if ( ( Bool -> Bool ) ∋ ( ( λ x14890 -> false ) ) ) $ ( false ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> true ) ) ) $ ( d54 )
        d1492 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14940 -> Bool ) ) ) $ ( Bool )
        d1492 = if ( ( Bool -> Bool ) ∋ ( ( λ x14930 -> x14930 ) ) ) $ ( true ) then if d991 then false else true else if d280 then true else false
        d1495 : if true then ( ( Set -> Set ) ∋ ( ( λ x14980 -> x14980 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1495 = ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> if x14970 then d1404 else false ) ) ) $ ( true ) ) ) ) $ ( if d1231 then true else false )
        d1499 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1499 = ( ( Bool -> Bool ) ∋ ( ( λ x15000 -> ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> if false then d1350 else x15000 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d1502 : ( ( Set -> Set ) ∋ ( ( λ x15050 -> ( ( Set -> Set ) ∋ ( ( λ x15060 -> if true then x15060 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1502 = ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> ( ( Bool -> Bool ) ∋ ( ( λ x15040 -> if false then false else x15030 ) ) ) $ ( true ) ) ) ) $ ( if false then d1016 else d956 )
        d1507 : ( ( Set -> Set ) ∋ ( ( λ x15110 -> ( ( Set -> Set ) ∋ ( ( λ x15120 -> if false then x15110 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1507 = if ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> d1296 ) ) ) $ ( d1374 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> d675 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> x15100 ) ) ) $ ( d658 )
        d1513 : ( ( Set -> Set ) ∋ ( ( λ x15160 -> ( ( Set -> Set ) ∋ ( ( λ x15170 -> if true then Bool else Bool ) ) ) $ ( x15160 ) ) ) ) $ ( if false then Bool else Bool )
        d1513 = if ( ( Bool -> Bool ) ∋ ( ( λ x15140 -> false ) ) ) $ ( false ) then if d730 then true else d277 else ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> true ) ) ) $ ( d1023 )
        d1518 : if true then ( ( Set -> Set ) ∋ ( ( λ x15210 -> x15210 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1518 = ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> if x15200 then d762 else d11 ) ) ) $ ( x15190 ) ) ) ) $ ( if d866 then d194 else d1455 )
        d1522 : if false then ( ( Set -> Set ) ∋ ( ( λ x15250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15260 -> x15260 ) ) ) $ ( Bool )
        d1522 = ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> if false then false else d110 ) ) ) $ ( d1148 ) ) ) ) $ ( if d1252 then d319 else d781 )
        d1527 : ( ( Set -> Set ) ∋ ( ( λ x15300 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1527 = ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> ( ( Bool -> Bool ) ∋ ( ( λ x15290 -> if true then false else false ) ) ) $ ( d1074 ) ) ) ) $ ( if true then d132 else true )
        d1531 : if true then ( ( Set -> Set ) ∋ ( ( λ x15330 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1531 = ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> if x15320 then d897 else x15320 ) ) ) $ ( if d1101 then d829 else false )
        d1534 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1534 = ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> if true then x15360 else x15360 ) ) ) $ ( x15350 ) ) ) ) $ ( if d1196 then d614 else d1343 )
        d1537 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1537 = ( ( Bool -> Bool ) ∋ ( ( λ x15380 -> ( ( Bool -> Bool ) ∋ ( ( λ x15390 -> if d905 then x15390 else d1016 ) ) ) $ ( true ) ) ) ) $ ( if true then d739 else true )
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15430 -> if false then x15430 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1540 = if if d1468 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> d378 ) ) ) $ ( d101 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15420 -> d732 ) ) ) $ ( false )
        d1544 : ( ( Set -> Set ) ∋ ( ( λ x15460 -> ( ( Set -> Set ) ∋ ( ( λ x15470 -> if false then x15470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1544 = if ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> x15450 ) ) ) $ ( false ) then if false then d378 else true else if d213 then true else true
        d1548 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1548 = if if true then d409 else d1172 then ( ( Bool -> Bool ) ∋ ( ( λ x15490 -> d182 ) ) ) $ ( d735 ) else if false then false else d339
        d1550 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1550 = ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> if true then d742 else false ) ) ) $ ( if true then d182 else false )
        d1552 : ( ( Set -> Set ) ∋ ( ( λ x15560 -> if true then x15560 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1552 = if ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> x15530 ) ) ) $ ( d849 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15540 -> x15540 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> true ) ) ) $ ( d1315 )
        d1557 : ( ( Set -> Set ) ∋ ( ( λ x15600 -> ( ( Set -> Set ) ∋ ( ( λ x15610 -> if false then x15600 else Bool ) ) ) $ ( x15600 ) ) ) ) $ ( if false then Bool else Bool )
        d1557 = ( ( Bool -> Bool ) ∋ ( ( λ x15580 -> ( ( Bool -> Bool ) ∋ ( ( λ x15590 -> if true then false else true ) ) ) $ ( d1502 ) ) ) ) $ ( if d1379 then d213 else false )
        d1562 : ( ( Set -> Set ) ∋ ( ( λ x15640 -> if true then x15640 else x15640 ) ) ) $ ( if true then Bool else Bool )
        d1562 = if if d876 then false else d600 then ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> x15630 ) ) ) $ ( d197 ) else if d831 then d1350 else true
        d1565 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1565 = if if true then false else true then if false then d562 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> true ) ) ) $ ( d217 )
        d1567 : ( ( Set -> Set ) ∋ ( ( λ x15690 -> ( ( Set -> Set ) ∋ ( ( λ x15700 -> if false then x15700 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1567 = if if d312 then d221 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15680 -> false ) ) ) $ ( d32 ) else if d1429 then true else d725
        d1571 : if true then ( ( Set -> Set ) ∋ ( ( λ x15740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15750 -> Bool ) ) ) $ ( Bool )
        d1571 = ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> if x15720 then d363 else d924 ) ) ) $ ( x15720 ) ) ) ) $ ( if true then d390 else d1234 )
        d1576 : if false then ( ( Set -> Set ) ∋ ( ( λ x15780 -> x15780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15790 -> x15790 ) ) ) $ ( Bool )
        d1576 = if if d916 then d1252 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> d1224 ) ) ) $ ( d1565 ) else if d78 then false else d280
        d1580 : ( ( Set -> Set ) ∋ ( ( λ x15820 -> ( ( Set -> Set ) ∋ ( ( λ x15830 -> if false then Bool else Bool ) ) ) $ ( x15820 ) ) ) ) $ ( if false then Bool else Bool )
        d1580 = if ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> d987 ) ) ) $ ( d888 ) then if d696 then true else d791 else if d694 then true else d1548
        d1584 : ( ( Set -> Set ) ∋ ( ( λ x15860 -> if false then x15860 else x15860 ) ) ) $ ( if false then Bool else Bool )
        d1584 = ( ( Bool -> Bool ) ∋ ( ( λ x15850 -> if x15850 then x15850 else true ) ) ) $ ( if d87 then d777 else d977 )
        d1587 : ( ( Set -> Set ) ∋ ( ( λ x15900 -> if false then Bool else x15900 ) ) ) $ ( if false then Bool else Bool )
        d1587 = ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> if true then x15890 else d560 ) ) ) $ ( d651 ) ) ) ) $ ( if d54 then false else true )
        d1591 : ( ( Set -> Set ) ∋ ( ( λ x15930 -> ( ( Set -> Set ) ∋ ( ( λ x15940 -> if false then x15930 else Bool ) ) ) $ ( x15930 ) ) ) ) $ ( if false then Bool else Bool )
        d1591 = ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> if true then d706 else true ) ) ) $ ( if true then false else d329 )
        d1595 : ( ( Set -> Set ) ∋ ( ( λ x15970 -> if false then x15970 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1595 = if if d519 then true else d269 then if d618 then true else d1220 else ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> true ) ) ) $ ( false )
        d1598 : ( ( Set -> Set ) ∋ ( ( λ x16000 -> if false then x16000 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1598 = if if d927 then d207 else false then if d221 then d930 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> true ) ) ) $ ( d826 )
        d1601 : ( ( Set -> Set ) ∋ ( ( λ x16040 -> if true then x16040 else x16040 ) ) ) $ ( if true then Bool else Bool )
        d1601 = ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> ( ( Bool -> Bool ) ∋ ( ( λ x16030 -> if x16020 then false else x16020 ) ) ) $ ( true ) ) ) ) $ ( if d1272 then true else d813 )
        d1605 : ( ( Set -> Set ) ∋ ( ( λ x16070 -> if true then Bool else x16070 ) ) ) $ ( if true then Bool else Bool )
        d1605 = ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> if d912 then x16060 else d1452 ) ) ) $ ( if false then d1562 else d263 )
        d1608 : ( ( Set -> Set ) ∋ ( ( λ x16100 -> if true then Bool else x16100 ) ) ) $ ( if false then Bool else Bool )
        d1608 = ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> if x16090 then x16090 else false ) ) ) $ ( if false then true else d304 )
        d1611 : if true then ( ( Set -> Set ) ∋ ( ( λ x16150 -> x16150 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1611 = if ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> d1004 ) ) ) $ ( d424 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> false ) ) ) $ ( d101 )
        d1616 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1616 = ( ( Bool -> Bool ) ∋ ( ( λ x16170 -> ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> if d590 then d94 else true ) ) ) $ ( x16170 ) ) ) ) $ ( if d1196 then false else false )
        d1619 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16220 -> x16220 ) ) ) $ ( Bool )
        d1619 = if ( ( Bool -> Bool ) ∋ ( ( λ x16200 -> true ) ) ) $ ( d45 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> d732 ) ) ) $ ( false ) else if true then true else false
        d1623 : if true then ( ( Set -> Set ) ∋ ( ( λ x16250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16260 -> x16260 ) ) ) $ ( Bool )
        d1623 = if if false then d4 else d254 then ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> d59 ) ) ) $ ( false ) else if false then true else d826
        d1627 : ( ( Set -> Set ) ∋ ( ( λ x16280 -> ( ( Set -> Set ) ∋ ( ( λ x16290 -> if true then x16290 else Bool ) ) ) $ ( x16280 ) ) ) ) $ ( if false then Bool else Bool )
        d1627 = if if d424 then d1093 else d921 then if false then d1196 else false else if false then d752 else true
        d1630 : ( ( Set -> Set ) ∋ ( ( λ x16330 -> ( ( Set -> Set ) ∋ ( ( λ x16340 -> if false then Bool else x16340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1630 = ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> if true then x16320 else x16310 ) ) ) $ ( x16310 ) ) ) ) $ ( if d546 then false else d500 )
        d1635 : if false then ( ( Set -> Set ) ∋ ( ( λ x16380 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1635 = if if d1369 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> d277 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> x16370 ) ) ) $ ( true )
        d1639 : if false then ( ( Set -> Set ) ∋ ( ( λ x16410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16420 -> Bool ) ) ) $ ( Bool )
        d1639 = if if true then false else d387 then if d1093 then d916 else d516 else ( ( Bool -> Bool ) ∋ ( ( λ x16400 -> d1132 ) ) ) $ ( true )
        d1643 : ( ( Set -> Set ) ∋ ( ( λ x16450 -> ( ( Set -> Set ) ∋ ( ( λ x16460 -> if false then x16460 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1643 = if if d1056 then d1623 else d1211 then if true then false else d304 else ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> d1635 ) ) ) $ ( true )
        d1647 : ( ( Set -> Set ) ∋ ( ( λ x16500 -> ( ( Set -> Set ) ∋ ( ( λ x16510 -> if false then Bool else x16510 ) ) ) $ ( x16500 ) ) ) ) $ ( if true then Bool else Bool )
        d1647 = if if d679 then d304 else d1004 then ( ( Bool -> Bool ) ∋ ( ( λ x16480 -> x16480 ) ) ) $ ( d21 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16490 -> d277 ) ) ) $ ( false )
        d1652 : ( ( Set -> Set ) ∋ ( ( λ x16550 -> ( ( Set -> Set ) ∋ ( ( λ x16560 -> if false then x16560 else Bool ) ) ) $ ( x16550 ) ) ) ) $ ( if true then Bool else Bool )
        d1652 = if if false then d625 else true then ( ( Bool -> Bool ) ∋ ( ( λ x16530 -> x16530 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> true ) ) ) $ ( d280 )
        d1657 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16600 -> x16600 ) ) ) $ ( Bool )
        d1657 = if ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> d228 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> true ) ) ) $ ( true ) else if d500 then d308 else d1471
        d1661 : ( ( Set -> Set ) ∋ ( ( λ x16620 -> ( ( Set -> Set ) ∋ ( ( λ x16630 -> if true then Bool else x16620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1661 = if if d269 then d1350 else false then if d1125 then true else d739 else if d40 then true else d1280
        d1664 : if true then ( ( Set -> Set ) ∋ ( ( λ x16670 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1664 = ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> ( ( Bool -> Bool ) ∋ ( ( λ x16660 -> if d194 then d190 else d730 ) ) ) $ ( x16650 ) ) ) ) $ ( if d1562 then d845 else d82 )
        d1668 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1668 = ( ( Bool -> Bool ) ∋ ( ( λ x16690 -> ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> if false then true else x16690 ) ) ) $ ( d1263 ) ) ) ) $ ( if false then d1601 else d1307 )
        d1671 : if false then ( ( Set -> Set ) ∋ ( ( λ x16740 -> x16740 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1671 = if ( ( Bool -> Bool ) ∋ ( ( λ x16720 -> x16720 ) ) ) $ ( true ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x16730 -> d367 ) ) ) $ ( d897 )
        d1675 : if true then ( ( Set -> Set ) ∋ ( ( λ x16780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16790 -> x16790 ) ) ) $ ( Bool )
        d1675 = ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> ( ( Bool -> Bool ) ∋ ( ( λ x16770 -> if x16760 then d346 else d1379 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d1584 )
        d1680 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16830 -> x16830 ) ) ) $ ( Bool )
        d1680 = ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> ( ( Bool -> Bool ) ∋ ( ( λ x16820 -> if true then true else x16820 ) ) ) $ ( x16810 ) ) ) ) $ ( if d849 then true else true )
        d1684 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16880 -> Bool ) ) ) $ ( Bool )
        d1684 = if ( ( Bool -> Bool ) ∋ ( ( λ x16850 -> d89 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16860 -> d497 ) ) ) $ ( d691 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16870 -> d758 ) ) ) $ ( false )