module Decls150Test4  where
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
        d1 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x40 -> true ) ) ) $ ( false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( false ) then if true then d1 else d1 else if d1 then false else d1
        d8 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if x100 then false else x90 ) ) ) $ ( d5 ) ) ) ) $ ( if true then true else d5 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then x160 else Bool ) ) ) $ ( if false then Bool else Bool )
        d12 = if ( ( Bool -> Bool ) ∋ ( ( λ x130 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x140 -> d5 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x150 -> true ) ) ) $ ( d8 )
        d17 : if false then if true then Bool else Bool else if false then Bool else Bool
        d17 = if ( ( Bool -> Bool ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( d12 ) else ( ( Bool -> Bool ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( d5 )
        d21 : if true then if true then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if true then d8 else d5 ) ) ) $ ( if d8 then false else d12 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then x270 else Bool ) ) ) $ ( x260 ) ) ) ) $ ( if true then Bool else Bool )
        d23 = if ( ( Bool -> Bool ) ∋ ( ( λ x240 -> d5 ) ) ) $ ( false ) then if d21 then d21 else d8 else ( ( Bool -> Bool ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( d8 )
        d28 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( Bool )
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( true ) then if true then true else d8 else if d12 then d5 else false
        d31 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> if false then x350 else Bool ) ) ) $ ( x340 ) ) ) ) $ ( if true then Bool else Bool )
        d31 = if ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d8 ) ) ) $ ( d23 ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x330 -> d12 ) ) ) $ ( true )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x390 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then Bool else x390 ) ) ) $ ( x390 ) ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if false then d23 else false ) ) ) $ ( d1 ) ) ) ) $ ( if d21 then d17 else d23 )
        d41 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if d23 then x420 else x430 ) ) ) $ ( d5 ) ) ) ) $ ( if false then d21 else true )
        d45 : if true then ( ( Set -> Set ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if true then true else x460 ) ) ) $ ( d8 ) ) ) ) $ ( if d23 then true else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then x530 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d50 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x510 -> x510 ) ) ) $ ( true ) else if d28 then true else d5
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = if ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d5 ) ) ) $ ( d31 ) then if true then d45 else d12 else if true then true else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x580 -> ( ( Set -> Set ) ∋ ( ( λ x590 -> if false then x590 else x590 ) ) ) $ ( x580 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if false then false else x570 ) ) ) $ ( if false then true else true )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if true then x620 else x620 ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if d8 then true else true ) ) ) $ ( if d28 then d36 else d50 )
        d63 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool )
        d63 = if if d60 then true else false then if d1 then true else d41 else if true then d21 else d1
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> if false then x680 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> true ) ) ) $ ( true ) then if d63 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( d31 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x720 -> if true then x720 else x720 ) ) ) $ ( if false then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if x710 then d28 else d45 ) ) ) $ ( if false then d45 else d41 )
        d73 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool )
        d73 = if ( ( Bool -> Bool ) ∋ ( ( λ x740 -> true ) ) ) $ ( d23 ) then if d63 then d28 else true else if false then d70 else d12
        d76 : ( ( Set -> Set ) ∋ ( ( λ x780 -> ( ( Set -> Set ) ∋ ( ( λ x790 -> if true then x780 else x780 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d76 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x770 -> true ) ) ) $ ( d28 ) else if false then d70 else d65
        d80 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x830 -> if false then Bool else Bool ) ) ) $ ( x820 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> if d41 then d70 else false ) ) ) $ ( if d60 then d41 else d12 )
        d84 : if false then ( ( Set -> Set ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if false then false else d50 ) ) ) $ ( if false then true else false )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x900 -> if true then x900 else Bool ) ) ) $ ( if true then Bool else Bool )
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( d28 ) then if true then false else false else if true then false else true
        d91 : if true then ( ( Set -> Set ) ∋ ( ( λ x940 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d91 = if if d1 then d88 else d28 then ( ( Bool -> Bool ) ∋ ( ( λ x920 -> d5 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d41 ) ) ) $ ( d80 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x980 -> if false then x980 else Bool ) ) ) $ ( if true then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if d63 then x970 else d36 ) ) ) $ ( d50 ) ) ) ) $ ( if true then false else false )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> if false then x1020 else Bool ) ) ) $ ( if true then Bool else Bool )
        d99 = if ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> true ) ) ) $ ( d28 ) else if true then true else d5
        d103 : if true then ( ( Set -> Set ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if false then false else true ) ) ) $ ( if true then false else false )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d106 = if ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> d21 ) ) ) $ ( d56 ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( d8 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then Bool else x1140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if true then d50 else true ) ) ) $ ( x1110 ) ) ) ) $ ( if d103 then true else true )
        d115 : if false then if true then Bool else Bool else if true then Bool else Bool
        d115 = if if d28 then false else d56 then ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> false ) ) ) $ ( d65 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> d28 ) ) ) $ ( d12 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if false then x1200 else x1200 ) ) ) $ ( if false then Bool else Bool )
        d118 = if if false then d31 else false then if true then true else d95 else ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> d95 ) ) ) $ ( true )
        d121 : if false then ( ( Set -> Set ) ∋ ( ( λ x1250 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d121 = if ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> true ) ) ) $ ( true )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> if true then x1280 else x1280 ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if d28 then x1270 else d56 ) ) ) $ ( if d17 then false else d41 )
        d129 : if true then if true then Bool else Bool else if false then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if x1300 then x1310 else x1310 ) ) ) $ ( d36 ) ) ) ) $ ( if false then false else true )
        d132 : if false then ( ( Set -> Set ) ∋ ( ( λ x1350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( Bool )
        d132 = if ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( d50 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> true ) ) ) $ ( d28 ) else if d91 then false else false
        d137 : ( ( Set -> Set ) ∋ ( ( λ x1390 -> ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then Bool else x1400 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if x1380 then d106 else x1380 ) ) ) $ ( if true then true else true )
        d141 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( Bool )
        d141 = if ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> d36 ) ) ) $ ( d56 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( d95 ) else if true then d31 else d126
        d145 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1460 -> Bool ) ) ) $ ( Bool )
        d145 = if if d45 then d132 else true then if false then d28 else false else if d115 then true else d8
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> ( ( Set -> Set ) ∋ ( ( λ x1500 -> if true then Bool else Bool ) ) ) $ ( x1490 ) ) ) ) $ ( if false then Bool else Bool )
        d147 = if if d110 then false else d91 then if true then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( true )
        d151 : if true then if false then Bool else Bool else if false then Bool else Bool
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if true then d56 else d99 ) ) ) $ ( true ) ) ) ) $ ( if d23 then false else false )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> ( ( Set -> Set ) ∋ ( ( λ x1580 -> if false then x1580 else x1580 ) ) ) $ ( x1570 ) ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if d126 then true else false ) ) ) $ ( x1550 ) ) ) ) $ ( if d121 then d31 else d56 )
        d159 : if false then if true then Bool else Bool else if true then Bool else Bool
        d159 = if if true then true else true then if d126 then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> false ) ) ) $ ( d147 )
        d161 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> ( ( Set -> Set ) ∋ ( ( λ x1640 -> if true then x1630 else Bool ) ) ) $ ( x1630 ) ) ) ) $ ( if false then Bool else Bool )
        d161 = if if d106 then true else d23 then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( d106 )
        d165 : if true then ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if d8 then d50 else x1660 ) ) ) $ ( d95 ) ) ) ) $ ( if true then true else false )
        d169 : if false then if false then Bool else Bool else if true then Bool else Bool
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if d54 then d65 else x1710 ) ) ) $ ( d65 ) ) ) ) $ ( if d103 then true else d137 )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> if true then x1750 else x1750 ) ) ) $ ( if true then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if false then d115 else true ) ) ) $ ( d41 ) ) ) ) $ ( if d65 then d118 else d161 )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if true then x1790 else x1790 ) ) ) $ ( if true then Bool else Bool )
        d176 = if if d88 then true else d95 then ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> true ) ) ) $ ( d70 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( true )
        d180 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then Bool else x1840 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if x1820 then d159 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d185 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> if false then Bool else x1890 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d185 = if if false then d60 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> d126 ) ) ) $ ( true )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if d28 then false else true ) ) ) $ ( x1910 ) ) ) ) $ ( if false then d50 else true )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> ( ( Set -> Set ) ∋ ( ( λ x1970 -> if false then x1960 else x1970 ) ) ) $ ( x1960 ) ) ) ) $ ( if false then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> if true then true else d41 ) ) ) $ ( if d88 then false else false )
        d198 : if false then ( ( Set -> Set ) ∋ ( ( λ x2000 -> x2000 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2010 -> Bool ) ) ) $ ( Bool )
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if d45 then true else d88 ) ) ) $ ( if d172 then true else true )
        d202 : if false then if true then Bool else Bool else if false then Bool else Bool
        d202 = if ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( d169 ) then if false then true else d56 else ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> x2040 ) ) ) $ ( true )
        d205 : if false then if true then Bool else Bool else if true then Bool else Bool
        d205 = ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> if x2070 then false else true ) ) ) $ ( true ) ) ) ) $ ( if d60 then true else d145 )
        d208 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( Bool )
        d208 = if ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> true ) ) ) $ ( true ) then if d106 then d106 else d41 else if d190 then true else true
        d211 : if true then ( ( Set -> Set ) ∋ ( ( λ x2140 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d211 = if ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( true ) then if d70 then d159 else d141 else ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> true ) ) ) $ ( d176 )
        d215 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if false then d73 else true ) ) ) $ ( false ) ) ) ) $ ( if d132 then d17 else true )
        d219 : if false then ( ( Set -> Set ) ∋ ( ( λ x2220 -> x2220 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d219 = if ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> false ) ) ) $ ( true ) else if d110 then d63 else false
        d223 : ( ( Set -> Set ) ∋ ( ( λ x2240 -> ( ( Set -> Set ) ∋ ( ( λ x2250 -> if false then Bool else Bool ) ) ) $ ( x2240 ) ) ) ) $ ( if false then Bool else Bool )
        d223 = if if false then true else d50 then if d73 then true else false else if false then d45 else false
        d226 : ( ( Set -> Set ) ∋ ( ( λ x2280 -> if true then x2280 else x2280 ) ) ) $ ( if false then Bool else Bool )
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> if false then false else true ) ) ) $ ( if d215 then d28 else false )
        d229 : if false then ( ( Set -> Set ) ∋ ( ( λ x2320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2330 -> Bool ) ) ) $ ( Bool )
        d229 = if ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> d31 ) ) ) $ ( d103 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> x2310 ) ) ) $ ( d50 ) else if false then true else d185
        d234 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d234 = if if true then false else d1 then if d41 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> x2350 ) ) ) $ ( false )
        d237 : if false then ( ( Set -> Set ) ∋ ( ( λ x2400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2410 -> Bool ) ) ) $ ( Bool )
        d237 = if ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> false ) ) ) $ ( d129 ) then if d161 then d215 else d45 else ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> true ) ) ) $ ( d1 )
        d242 : if true then ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2460 -> x2460 ) ) ) $ ( Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> if d151 then x2430 else false ) ) ) $ ( true ) ) ) ) $ ( if false then d180 else true )
        d247 : if true then ( ( Set -> Set ) ∋ ( ( λ x2490 -> x2490 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> if d161 then d5 else d45 ) ) ) $ ( if d12 then true else d60 )
        d250 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> if false then x2530 else x2530 ) ) ) $ ( if false then Bool else Bool )
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if false then x2510 else x2510 ) ) ) $ ( d237 ) ) ) ) $ ( if true then false else true )
        d254 : if true then ( ( Set -> Set ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool )
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> if d226 then x2550 else d23 ) ) ) $ ( if false then d247 else false )
        d258 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2610 -> x2610 ) ) ) $ ( Bool )
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> if d234 then d242 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d99 else false )
        d262 : if false then if true then Bool else Bool else if true then Bool else Bool
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> if true then false else d76 ) ) ) $ ( if d159 then d65 else false )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x2660 -> ( ( Set -> Set ) ∋ ( ( λ x2670 -> if true then Bool else Bool ) ) ) $ ( x2660 ) ) ) ) $ ( if false then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> if x2650 then x2650 else x2650 ) ) ) $ ( if true then d258 else true )
        d268 : if false then ( ( Set -> Set ) ∋ ( ( λ x2690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2700 -> Bool ) ) ) $ ( Bool )
        d268 = if if d80 then true else false then if d211 then false else d137 else if d172 then d185 else d73
        d271 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2740 -> x2740 ) ) ) $ ( Bool )
        d271 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> true ) ) ) $ ( d242 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> d198 ) ) ) $ ( true )
        d275 : if true then ( ( Set -> Set ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d275 = if ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> true ) ) ) $ ( true ) then if false then d12 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( d264 )
        d279 : ( ( Set -> Set ) ∋ ( ( λ x2810 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if false then false else false ) ) ) $ ( if true then d65 else d110 )
        d282 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if true then false else d169 ) ) ) $ ( if false then true else true )
        d285 : if true then ( ( Set -> Set ) ∋ ( ( λ x2870 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if x2860 then x2860 else x2860 ) ) ) $ ( if true then false else true )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if x2900 then true else x2900 ) ) ) $ ( false ) ) ) ) $ ( if d103 then false else false )
        d292 : if false then if false then Bool else Bool else if true then Bool else Bool
        d292 = if if d247 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> d141 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> true ) ) ) $ ( d237 )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> ( ( Set -> Set ) ∋ ( ( λ x3000 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d295 = if ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> x2960 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> x2970 ) ) ) $ ( d237 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> true ) ) ) $ ( true )
        d301 : ( ( Set -> Set ) ∋ ( ( λ x3030 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d301 = if if false then false else true then if true then false else d91 else ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> d54 ) ) ) $ ( true )
        d304 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then x3060 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d304 = if if true then d190 else d91 then ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> x3050 ) ) ) $ ( true ) else if d285 then d28 else d229
        d308 : if false then if true then Bool else Bool else if false then Bool else Bool
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> if true then true else d84 ) ) ) $ ( if false then d80 else true )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3110 -> ( ( Set -> Set ) ∋ ( ( λ x3120 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d310 = if if d21 then d45 else d21 then if true then false else false else if d223 then true else true
        d313 : if false then ( ( Set -> Set ) ∋ ( ( λ x3150 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d313 = if if d215 then d12 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> d129 ) ) ) $ ( false ) else if true then false else false
        d316 : if true then ( ( Set -> Set ) ∋ ( ( λ x3190 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d316 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> x3170 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> true ) ) ) $ ( true )
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then x3230 else x3240 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d320 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> false ) ) ) $ ( d84 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> true ) ) ) $ ( d110 )
        d325 : if true then ( ( Set -> Set ) ∋ ( ( λ x3280 -> x3280 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d325 = if ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> x3260 ) ) ) $ ( d271 ) then if d185 then d73 else d41 else ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> d198 ) ) ) $ ( d70 )
        d329 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( Bool )
        d329 = ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if d88 then d159 else false ) ) ) $ ( d95 ) ) ) ) $ ( if d21 then d17 else d169 )
        d333 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> if true then x3350 else Bool ) ) ) $ ( if true then Bool else Bool )
        d333 = if ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> false ) ) ) $ ( true ) then if true then true else false else if false then d12 else false
        d336 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3380 -> x3380 ) ) ) $ ( Bool )
        d336 = if if true then d190 else true then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( d76 )
        d339 : if false then if true then Bool else Bool else if true then Bool else Bool
        d339 = if if d17 then false else d262 then if d21 then true else d28 else ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> true ) ) ) $ ( false )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> ( ( Set -> Set ) ∋ ( ( λ x3450 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d341 = if ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> x3420 ) ) ) $ ( d95 ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> true ) ) ) $ ( d84 )
        d346 : if true then ( ( Set -> Set ) ∋ ( ( λ x3480 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3490 -> Bool ) ) ) $ ( Bool )
        d346 = if if d126 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> true ) ) ) $ ( d258 ) else if d147 then d219 else d258
        d350 : ( ( Set -> Set ) ∋ ( ( λ x3530 -> ( ( Set -> Set ) ∋ ( ( λ x3540 -> if false then x3540 else x3540 ) ) ) $ ( x3530 ) ) ) ) $ ( if true then Bool else Bool )
        d350 = if ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> x3510 ) ) ) $ ( false ) then if d271 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> d339 ) ) ) $ ( d8 )
        d355 : if true then ( ( Set -> Set ) ∋ ( ( λ x3580 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> if x3570 then d229 else d141 ) ) ) $ ( x3560 ) ) ) ) $ ( if d161 then false else false )
        d359 : ( ( Set -> Set ) ∋ ( ( λ x3610 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d359 = if if d320 then false else true then if true then d288 else d73 else ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> x3600 ) ) ) $ ( d346 )
        d362 : if true then ( ( Set -> Set ) ∋ ( ( λ x3630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3640 -> x3640 ) ) ) $ ( Bool )
        d362 = if if d91 then d23 else d229 then if d84 then true else d118 else if d36 then true else d329
        d365 : if false then if false then Bool else Bool else if true then Bool else Bool
        d365 = if ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> x3660 ) ) ) $ ( d91 ) then if d165 then false else d151 else ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> d91 ) ) ) $ ( false )
        d368 : ( ( Set -> Set ) ∋ ( ( λ x3710 -> ( ( Set -> Set ) ∋ ( ( λ x3720 -> if true then Bool else x3710 ) ) ) $ ( x3710 ) ) ) ) $ ( if true then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> if d23 then d45 else d320 ) ) ) $ ( true ) ) ) ) $ ( if d76 then d56 else d336 )
        d373 : if true then ( ( Set -> Set ) ∋ ( ( λ x3750 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d373 = if ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> d320 ) ) ) $ ( d88 ) then if false then true else true else if false then d333 else false
        d376 : ( ( Set -> Set ) ∋ ( ( λ x3790 -> ( ( Set -> Set ) ∋ ( ( λ x3800 -> if true then x3790 else x3790 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> if x3770 then false else d1 ) ) ) $ ( d215 ) ) ) ) $ ( if d185 then d362 else d350 )
        d381 : ( ( Set -> Set ) ∋ ( ( λ x3840 -> if false then Bool else x3840 ) ) ) $ ( if false then Bool else Bool )
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> if false then x3830 else d262 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d65 )
        d385 : if false then ( ( Set -> Set ) ∋ ( ( λ x3880 -> x3880 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3890 -> Bool ) ) ) $ ( Bool )
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if x3860 then x3860 else x3860 ) ) ) $ ( x3860 ) ) ) ) $ ( if d275 then true else d368 )
        d390 : if true then if false then Bool else Bool else if false then Bool else Bool
        d390 = if ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> true ) ) ) $ ( d365 ) then if d185 then d247 else d70 else if true then true else true
        d392 : if true then ( ( Set -> Set ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d392 = if ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( d346 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> x3950 ) ) ) $ ( false )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x4000 -> ( ( Set -> Set ) ∋ ( ( λ x4010 -> if false then x4000 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d397 = if if d392 then d165 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> true ) ) ) $ ( d169 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> d250 ) ) ) $ ( d362 )
        d402 : if true then ( ( Set -> Set ) ∋ ( ( λ x4060 -> x4060 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d402 = if ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> x4040 ) ) ) $ ( d91 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> false ) ) ) $ ( false )
        d407 : ( ( Set -> Set ) ∋ ( ( λ x4100 -> ( ( Set -> Set ) ∋ ( ( λ x4110 -> if false then Bool else x4100 ) ) ) $ ( x4100 ) ) ) ) $ ( if true then Bool else Bool )
        d407 = ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> if d56 then true else true ) ) ) $ ( false ) ) ) ) $ ( if d226 then d50 else true )
        d412 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d412 = if if d397 then d275 else true then if false then d118 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> d70 ) ) ) $ ( false )
        d415 : if true then ( ( Set -> Set ) ∋ ( ( λ x4170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4180 -> x4180 ) ) ) $ ( Bool )
        d415 = if if d339 then d376 else false then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> d333 ) ) ) $ ( false )
        d419 : ( ( Set -> Set ) ∋ ( ( λ x4220 -> if true then x4220 else x4220 ) ) ) $ ( if true then Bool else Bool )
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> if x4210 then x4200 else d304 ) ) ) $ ( x4200 ) ) ) ) $ ( if d271 then false else d202 )
        d423 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> if false then Bool else x4270 ) ) ) $ ( if false then Bool else Bool )
        d423 = if ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> true ) ) ) $ ( d41 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> d223 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> true ) ) ) $ ( d41 )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> if d88 then x4290 else d176 ) ) ) $ ( if false then false else true )
        d431 : ( ( Set -> Set ) ∋ ( ( λ x4340 -> ( ( Set -> Set ) ∋ ( ( λ x4350 -> if false then x4350 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if d169 then x4320 else true ) ) ) $ ( true ) ) ) ) $ ( if d308 then false else true )
        d436 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> ( ( Set -> Set ) ∋ ( ( λ x4390 -> if false then x4380 else x4390 ) ) ) $ ( x4380 ) ) ) ) $ ( if false then Bool else Bool )
        d436 = if if d12 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> d376 ) ) ) $ ( true ) else if d310 then d31 else d346
        d440 : ( ( Set -> Set ) ∋ ( ( λ x4430 -> ( ( Set -> Set ) ∋ ( ( λ x4440 -> if true then Bool else x4430 ) ) ) $ ( x4430 ) ) ) ) $ ( if true then Bool else Bool )
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> if d373 then true else d339 ) ) ) $ ( x4410 ) ) ) ) $ ( if d415 then d262 else d190 )
        d445 : if true then ( ( Set -> Set ) ∋ ( ( λ x4470 -> x4470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4480 -> Bool ) ) ) $ ( Bool )
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> if true then false else d275 ) ) ) $ ( if true then true else d316 )
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4500 -> ( ( Set -> Set ) ∋ ( ( λ x4510 -> if true then Bool else x4510 ) ) ) $ ( x4500 ) ) ) ) $ ( if true then Bool else Bool )
        d449 = if if false then false else d262 then if false then d373 else true else if d80 then d234 else false
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4540 -> ( ( Set -> Set ) ∋ ( ( λ x4550 -> if false then x4550 else x4550 ) ) ) $ ( x4540 ) ) ) ) $ ( if true then Bool else Bool )
        d452 = if ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> x4530 ) ) ) $ ( false ) then if d159 then true else d88 else if d110 then d226 else true
        d456 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> ( ( Set -> Set ) ∋ ( ( λ x4600 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> if false then x4570 else x4580 ) ) ) $ ( d254 ) ) ) ) $ ( if d250 then true else d407 )
        d461 : ( ( Set -> Set ) ∋ ( ( λ x4630 -> ( ( Set -> Set ) ∋ ( ( λ x4640 -> if true then Bool else x4640 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d461 = if ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> x4620 ) ) ) $ ( false ) then if d147 then d316 else d355 else if d70 then d402 else d137
        d465 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4680 -> x4680 ) ) ) $ ( Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> if false then x4660 else false ) ) ) $ ( x4660 ) ) ) ) $ ( if d176 then false else d56 )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x4700 -> if true then x4700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d469 = if if true then true else false then if d449 then true else true else if d76 then false else false
        d471 : ( ( Set -> Set ) ∋ ( ( λ x4730 -> ( ( Set -> Set ) ∋ ( ( λ x4740 -> if false then Bool else x4730 ) ) ) $ ( x4730 ) ) ) ) $ ( if true then Bool else Bool )
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> if x4720 then false else x4720 ) ) ) $ ( if false then d341 else d70 )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x4770 -> if true then x4770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d475 = if if true then d336 else true then if d359 then d205 else d355 else ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> d115 ) ) ) $ ( false )
        d478 : if true then ( ( Set -> Set ) ∋ ( ( λ x4810 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> if d461 then d23 else x4790 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d436 )
        d482 : if false then if false then Bool else Bool else if false then Bool else Bool
        d482 = if ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> x4830 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> d229 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> false ) ) ) $ ( false )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4880 -> ( ( Set -> Set ) ∋ ( ( λ x4890 -> if false then x4890 else x4880 ) ) ) $ ( x4880 ) ) ) ) $ ( if false then Bool else Bool )
        d486 = if if d301 then false else d99 then if d45 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( true )
        d490 : if true then if true then Bool else Bool else if true then Bool else Bool
        d490 = if if true then true else d54 then ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> x4910 ) ) ) $ ( true ) else if d23 then false else d288
        d492 : if false then ( ( Set -> Set ) ∋ ( ( λ x4950 -> x4950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4960 -> x4960 ) ) ) $ ( Bool )
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if d103 then true else x4930 ) ) ) $ ( x4930 ) ) ) ) $ ( if false then false else false )
        d497 : if false then ( ( Set -> Set ) ∋ ( ( λ x4990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( Bool )
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> if d198 then d275 else false ) ) ) $ ( if true then d226 else d402 )
        d501 : if true then ( ( Set -> Set ) ∋ ( ( λ x5020 -> x5020 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5030 -> Bool ) ) ) $ ( Bool )
        d501 = if if false then d215 else true then if d180 then d12 else true else if false then d176 else true
        d504 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5070 -> Bool ) ) ) $ ( Bool )
        d504 = if ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> false ) ) ) $ ( d295 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> x5060 ) ) ) $ ( false ) else if d141 then true else true
        d508 : if false then if true then Bool else Bool else if true then Bool else Bool
        d508 = if if false then false else false then if true then d247 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> true ) ) ) $ ( true )
        d510 : ( ( Set -> Set ) ∋ ( ( λ x5120 -> if true then Bool else x5120 ) ) ) $ ( if false then Bool else Bool )
        d510 = ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> if false then d60 else d219 ) ) ) $ ( if false then true else d41 )
        d513 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> ( ( Set -> Set ) ∋ ( ( λ x5160 -> if true then x5150 else x5160 ) ) ) $ ( x5150 ) ) ) ) $ ( if true then Bool else Bool )
        d513 = if if d36 then true else false then if d373 then d449 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> d159 ) ) ) $ ( true )
        d517 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5190 -> x5190 ) ) ) $ ( Bool )
        d517 = if ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> x5180 ) ) ) $ ( false ) then if d513 then true else d440 else if false then true else false
        d520 : if false then ( ( Set -> Set ) ∋ ( ( λ x5230 -> x5230 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> if x5210 then d320 else true ) ) ) $ ( d73 ) ) ) ) $ ( if d497 then d70 else d215 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x5270 -> ( ( Set -> Set ) ∋ ( ( λ x5280 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d524 = if ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> d31 ) ) ) $ ( d45 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> false ) ) ) $ ( d336 )
        d529 : if false then ( ( Set -> Set ) ∋ ( ( λ x5320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5330 -> x5330 ) ) ) $ ( Bool )
        d529 = if ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> d147 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> d497 ) ) ) $ ( d151 ) else if d465 then d242 else d145
        d534 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> ( ( Set -> Set ) ∋ ( ( λ x5370 -> if false then Bool else x5370 ) ) ) $ ( x5360 ) ) ) ) $ ( if true then Bool else Bool )
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if x5350 then d118 else false ) ) ) $ ( if d73 then true else true )
        d538 : ( ( Set -> Set ) ∋ ( ( λ x5390 -> ( ( Set -> Set ) ∋ ( ( λ x5400 -> if true then x5390 else x5400 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d538 = if if d247 then d41 else false then if false then false else false else if d452 then true else true
        d541 : if true then ( ( Set -> Set ) ∋ ( ( λ x5430 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d541 = if if true then true else d362 then ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> d478 ) ) ) $ ( d295 ) else if d469 then d110 else d63
        d544 : if true then if true then Bool else Bool else if false then Bool else Bool
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> if d431 then true else x5450 ) ) ) $ ( x5450 ) ) ) ) $ ( if false then d91 else true )
        d547 : if false then ( ( Set -> Set ) ∋ ( ( λ x5500 -> x5500 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> if true then d99 else x5480 ) ) ) $ ( true ) ) ) ) $ ( if d373 then d161 else true )
        d551 : if true then ( ( Set -> Set ) ∋ ( ( λ x5540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5550 -> Bool ) ) ) $ ( Bool )
        d551 = if ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> x5530 ) ) ) $ ( d99 ) else if d126 then d268 else false
        d556 : if false then ( ( Set -> Set ) ∋ ( ( λ x5570 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d556 = if if false then d292 else true then if d304 then true else d295 else if true then true else false
        d558 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if true then false else d301 ) ) ) $ ( d368 ) ) ) ) $ ( if d376 then false else d31 )
        d562 : if false then ( ( Set -> Set ) ∋ ( ( λ x5640 -> x5640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5650 -> Bool ) ) ) $ ( Bool )
        d562 = if ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> x5630 ) ) ) $ ( true ) then if d385 then d215 else d226 else if d118 then true else true