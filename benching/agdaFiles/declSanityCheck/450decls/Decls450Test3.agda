module Decls450Test3  where
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
        d1 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then x20 else x30 ) ) ) $ ( x20 ) ) ) ) $ ( if false then true else true )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x60 else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if d1 then false else d1 ) ) ) $ ( if d1 then d1 else d1 )
        d7 : if false then ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if false then x90 else x80 ) ) ) $ ( d1 ) ) ) ) $ ( if d4 then d1 else false )
        d11 : if false then ( ( Set -> Set ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( Bool )
        d11 = if if d7 then d7 else false then if d4 then d1 else d7 else ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d4 ) ) ) $ ( d1 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then x180 else Bool ) ) ) $ ( if true then Bool else Bool )
        d15 = if ( ( Bool -> Bool ) ∋ ( ( λ x160 -> d11 ) ) ) $ ( d1 ) then if d11 then d7 else true else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( d7 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> if true then Bool else x220 ) ) ) $ ( x210 ) ) ) ) $ ( if true then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if x200 then x200 else false ) ) ) $ ( if false then false else false )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then x270 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if x240 then x250 else x250 ) ) ) $ ( x240 ) ) ) ) $ ( if d19 then false else false )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x310 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if x290 then true else false ) ) ) $ ( if d15 then false else d19 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> if true then x340 else x350 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if x330 then x330 else x330 ) ) ) $ ( if d1 then false else true )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> if false then x400 else x400 ) ) ) $ ( x400 ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if ( ( Bool -> Bool ) ∋ ( ( λ x370 -> d15 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( d4 ) else ( ( Bool -> Bool ) ∋ ( ( λ x390 -> x390 ) ) ) $ ( true )
        d42 : if true then ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool )
        d42 = if if d32 then d1 else true then ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( false ) else if d23 then d32 else true
        d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d46 = if ( ( Bool -> Bool ) ∋ ( ( λ x470 -> true ) ) ) $ ( d42 ) then if d28 then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( true )
        d50 : if true then ( ( Set -> Set ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d50 = if ( ( Bool -> Bool ) ∋ ( ( λ x510 -> d42 ) ) ) $ ( d23 ) then if d1 then true else true else if true then false else d32
        d53 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> if false then Bool else x570 ) ) ) $ ( x570 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = if ( ( Bool -> Bool ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( false )
        d59 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( Bool )
        d59 = if ( ( Bool -> Bool ) ∋ ( ( λ x600 -> d28 ) ) ) $ ( d46 ) then ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d1 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x620 -> d36 ) ) ) $ ( false )
        d64 : if true then ( ( Set -> Set ) ∋ ( ( λ x660 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d64 = if if true then true else d53 then if true then d50 else true else ( ( Bool -> Bool ) ∋ ( ( λ x650 -> true ) ) ) $ ( true )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> if true then x700 else x710 ) ) ) $ ( x700 ) ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if true then false else d23 ) ) ) $ ( x680 ) ) ) ) $ ( if true then d32 else d1 )
        d72 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x750 -> Bool ) ) ) $ ( Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if x730 then false else d67 ) ) ) $ ( x730 ) ) ) ) $ ( if true then false else d4 )
        d76 : if false then ( ( Set -> Set ) ∋ ( ( λ x790 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d76 = if ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d19 ) ) ) $ ( d53 ) then ( ( Bool -> Bool ) ∋ ( ( λ x780 -> false ) ) ) $ ( d11 ) else if true then d7 else true
        d80 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if false then Bool else x830 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if d28 then x810 else d7 ) ) ) $ ( true ) ) ) ) $ ( if true then d11 else d11 )
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = if ( ( Bool -> Bool ) ∋ ( ( λ x860 -> d15 ) ) ) $ ( false ) then if d4 then d32 else d4 else ( ( Bool -> Bool ) ∋ ( ( λ x870 -> true ) ) ) $ ( true )
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( d72 ) then if d36 then true else d36 else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> false ) ) ) $ ( d4 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then x940 else Bool ) ) ) $ ( x940 ) ) ) ) $ ( if true then Bool else Bool )
        d91 = if ( ( Bool -> Bool ) ∋ ( ( λ x920 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x930 -> false ) ) ) $ ( true ) else if false then d67 else true
        d96 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x980 -> Bool ) ) ) $ ( Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if true then false else false ) ) ) $ ( if false then false else d76 )
        d99 : if true then ( ( Set -> Set ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d99 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( d64 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> true ) ) ) $ ( true )
        d103 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( Bool )
        d103 = if if d96 then d11 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> d28 ) ) ) $ ( d23 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> d23 ) ) ) $ ( d32 )
        d107 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if d15 then true else x1080 ) ) ) $ ( if true then false else d64 )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> if false then x1130 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d110 = if if d28 then d42 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> false ) ) ) $ ( d96 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> false ) ) ) $ ( false )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> if false then Bool else x1190 ) ) ) $ ( if true then Bool else Bool )
        d115 = if ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> d85 ) ) ) $ ( d103 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> d1 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> false ) ) ) $ ( true )
        d120 : if false then if true then Bool else Bool else if true then Bool else Bool
        d120 = if ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( d46 ) then if d42 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( false )
        d123 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1260 -> x1260 ) ) ) $ ( Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if x1250 then d11 else d32 ) ) ) $ ( d107 ) ) ) ) $ ( if d1 then false else true )
        d127 : if true then ( ( Set -> Set ) ∋ ( ( λ x1290 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d127 = if if d4 then d59 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> false ) ) ) $ ( d4 ) else if d28 then true else false
        d130 : if true then if true then Bool else Bool else if false then Bool else Bool
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d67 ) ) ) $ ( true ) then if false then d96 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> d88 ) ) ) $ ( d120 )
        d133 : if true then ( ( Set -> Set ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if d15 then d15 else x1340 ) ) ) $ ( if false then true else d59 )
        d136 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1370 -> Bool ) ) ) $ ( Bool )
        d136 = if if d107 then d32 else d88 then if true then true else false else if true then d103 else false
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then x1400 else x1410 ) ) ) $ ( x1400 ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if x1390 then false else x1390 ) ) ) $ ( if false then false else true )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then x1440 else x1440 ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if d72 then d91 else true ) ) ) $ ( if true then d130 else true )
        d145 : if false then ( ( Set -> Set ) ∋ ( ( λ x1480 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> if d64 then x1470 else d1 ) ) ) $ ( d80 ) ) ) ) $ ( if d130 then d123 else true )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d23 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> x1520 ) ) ) $ ( d7 )
        d155 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> if false then x1590 else x1590 ) ) ) $ ( x1580 ) ) ) ) $ ( if true then Bool else Bool )
        d155 = if if d32 then d64 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> true ) ) ) $ ( false )
        d160 : if true then if false then Bool else Bool else if false then Bool else Bool
        d160 = if if true then true else d28 then ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> d53 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> d15 ) ) ) $ ( d72 )
        d163 : if true then ( ( Set -> Set ) ∋ ( ( λ x1660 -> x1660 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> if x1640 then true else false ) ) ) $ ( x1640 ) ) ) ) $ ( if false then d28 else false )
        d167 : if true then ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if d149 then x1680 else d1 ) ) ) $ ( x1680 ) ) ) ) $ ( if d107 then true else d23 )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if true then x1730 else x1730 ) ) ) $ ( x1730 ) ) ) ) $ ( if false then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> if x1720 then true else d11 ) ) ) $ ( if d59 then d15 else d72 )
        d175 : if false then if false then Bool else Bool else if true then Bool else Bool
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( false ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d142 ) ) ) $ ( true )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then x1820 else x1820 ) ) ) $ ( if true then Bool else Bool )
        d178 = if ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> d42 ) ) ) $ ( d127 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( d88 )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> if false then Bool else x1860 ) ) ) $ ( if false then Bool else Bool )
        d183 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> x1840 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> false ) ) ) $ ( false )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then x1900 else Bool ) ) ) $ ( x1900 ) ) ) ) $ ( if false then Bool else Bool )
        d187 = if ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> x1880 ) ) ) $ ( d53 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> true ) ) ) $ ( false ) else if d138 then false else d123
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1950 -> if false then x1950 else Bool ) ) ) $ ( if false then Bool else Bool )
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> if x1930 then x1930 else false ) ) ) $ ( d163 ) ) ) ) $ ( if d133 then false else d53 )
        d196 : if true then if false then Bool else Bool else if true then Bool else Bool
        d196 = if if d127 then false else d80 then ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> false ) ) ) $ ( d59 ) else if d91 then false else d67
        d198 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> ( ( Set -> Set ) ∋ ( ( λ x2010 -> if true then Bool else x2000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if d160 then x1990 else x1990 ) ) ) $ ( if d196 then d120 else d136 )
        d202 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> if false then Bool else x2040 ) ) ) $ ( if true then Bool else Bool )
        d202 = if if d59 then d80 else d196 then ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( true ) else if true then d120 else d91
        d205 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2090 -> Bool ) ) ) $ ( Bool )
        d205 = if ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> x2060 ) ) ) $ ( d167 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> false ) ) ) $ ( d32 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> d196 ) ) ) $ ( d50 )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> if true then Bool else x2120 ) ) ) $ ( if false then Bool else Bool )
        d210 = ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> if false then d149 else true ) ) ) $ ( if false then d96 else false )
        d213 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if false then Bool else Bool ) ) ) $ ( x2140 ) ) ) ) $ ( if false then Bool else Bool )
        d213 = if if false then d120 else false then if d163 then d1 else true else if d88 then d136 else true
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> ( ( Set -> Set ) ∋ ( ( λ x2190 -> if false then x2180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d216 = if if d167 then d120 else true then if false then d127 else d107 else ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> d88 ) ) ) $ ( true )
        d220 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2220 -> x2220 ) ) ) $ ( Bool )
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> if true then x2210 else d67 ) ) ) $ ( if d145 then d145 else true )
        d223 : ( ( Set -> Set ) ∋ ( ( λ x2260 -> ( ( Set -> Set ) ∋ ( ( λ x2270 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d223 = if if d4 then d91 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> d7 ) ) ) $ ( false )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x2300 -> if false then x2300 else Bool ) ) ) $ ( if false then Bool else Bool )
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> if false then x2290 else d145 ) ) ) $ ( if true then d213 else d11 )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> ( ( Set -> Set ) ∋ ( ( λ x2340 -> if false then Bool else x2330 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d231 = if if true then d138 else true then if d4 then d175 else d205 else ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> d85 ) ) ) $ ( d136 )
        d235 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( Bool )
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> if d160 then true else d123 ) ) ) $ ( x2360 ) ) ) ) $ ( if d85 then d167 else false )
        d239 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2420 -> Bool ) ) ) $ ( Bool )
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> if d15 then true else d213 ) ) ) $ ( d205 ) ) ) ) $ ( if false then true else true )
        d243 : if false then ( ( Set -> Set ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( Bool )
        d243 = if if false then false else d28 then if false then true else false else if d96 then true else false
        d246 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then Bool else x2490 ) ) ) $ ( if false then Bool else Bool )
        d246 = if ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( false ) then if d4 then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> x2480 ) ) ) $ ( true )
        d250 : ( ( Set -> Set ) ∋ ( ( λ x2510 -> ( ( Set -> Set ) ∋ ( ( λ x2520 -> if false then x2510 else x2520 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d250 = if if d167 then false else d15 then if d202 then d59 else d46 else if d46 then d130 else d80
        d253 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> if true then Bool else x2540 ) ) ) $ ( if true then Bool else Bool )
        d253 = if if false then d250 else false then if false then d7 else false else if d72 then d213 else d53
        d255 : ( ( Set -> Set ) ∋ ( ( λ x2570 -> ( ( Set -> Set ) ∋ ( ( λ x2580 -> if false then Bool else Bool ) ) ) $ ( x2570 ) ) ) ) $ ( if true then Bool else Bool )
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> if true then d178 else x2560 ) ) ) $ ( if d127 then true else d133 )
        d259 : if true then ( ( Set -> Set ) ∋ ( ( λ x2610 -> x2610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2620 -> Bool ) ) ) $ ( Bool )
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> if d123 then d23 else d160 ) ) ) $ ( if true then d115 else true )
        d263 : if true then ( ( Set -> Set ) ∋ ( ( λ x2650 -> x2650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2660 -> Bool ) ) ) $ ( Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if true then d178 else false ) ) ) $ ( if d59 then false else false )
        d267 : ( ( Set -> Set ) ∋ ( ( λ x2690 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d267 = if if d259 then d53 else d32 then if d155 then true else d149 else ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> true ) ) ) $ ( false )
        d270 : ( ( Set -> Set ) ∋ ( ( λ x2730 -> ( ( Set -> Set ) ∋ ( ( λ x2740 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> if d133 then x2720 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d1 else d213 )
        d275 : if false then ( ( Set -> Set ) ∋ ( ( λ x2780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2790 -> Bool ) ) ) $ ( Bool )
        d275 = ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> if x2760 then d85 else false ) ) ) $ ( x2760 ) ) ) ) $ ( if d216 then d205 else d202 )
        d280 : if false then ( ( Set -> Set ) ∋ ( ( λ x2830 -> x2830 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2840 -> Bool ) ) ) $ ( Bool )
        d280 = if ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> x2810 ) ) ) $ ( true ) then if true then false else d255 else ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> true ) ) ) $ ( false )
        d285 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> if false then Bool else x2880 ) ) ) $ ( x2870 ) ) ) ) $ ( if true then Bool else Bool )
        d285 = if ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> false ) ) ) $ ( false ) then if d171 then d246 else false else if true then false else true
        d289 : if false then ( ( Set -> Set ) ∋ ( ( λ x2910 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d289 = if ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> x2900 ) ) ) $ ( d32 ) then if true then true else false else if false then d130 else d213
        d292 : if true then if true then Bool else Bool else if false then Bool else Bool
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if false then false else d167 ) ) ) $ ( x2930 ) ) ) ) $ ( if d23 then d138 else d175 )
        d295 : if false then ( ( Set -> Set ) ∋ ( ( λ x2980 -> x2980 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d295 = if if d198 then true else d123 then ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> x2960 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> x2970 ) ) ) $ ( d175 )
        d299 : if true then ( ( Set -> Set ) ∋ ( ( λ x3010 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3020 -> Bool ) ) ) $ ( Bool )
        d299 = if ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> x3000 ) ) ) $ ( true ) then if false then d163 else false else if true then false else true
        d303 : if true then ( ( Set -> Set ) ∋ ( ( λ x3060 -> x3060 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d303 = if ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> false ) ) ) $ ( true ) then if d133 then d289 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> false ) ) ) $ ( true )
        d307 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3100 -> x3100 ) ) ) $ ( Bool )
        d307 = if ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> x3080 ) ) ) $ ( true ) then if d303 then d32 else d23 else ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> d76 ) ) ) $ ( true )
        d311 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3140 -> x3140 ) ) ) $ ( Bool )
        d311 = ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> if false then false else d7 ) ) ) $ ( d167 ) ) ) ) $ ( if false then true else d64 )
        d315 : if true then ( ( Set -> Set ) ∋ ( ( λ x3180 -> x3180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3190 -> x3190 ) ) ) $ ( Bool )
        d315 = if ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> d36 ) ) ) $ ( d91 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> x3170 ) ) ) $ ( false ) else if d136 then false else true
        d320 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( Bool )
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> if false then false else x3210 ) ) ) $ ( if false then d88 else d36 )
        d323 : if true then ( ( Set -> Set ) ∋ ( ( λ x3260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( Bool )
        d323 = if if false then d110 else d255 then ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> d250 ) ) ) $ ( d130 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> false ) ) ) $ ( true )
        d328 : if true then if false then Bool else Bool else if true then Bool else Bool
        d328 = if if false then d255 else d96 then ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> d67 ) ) ) $ ( d103 ) else if true then d171 else false
        d330 : if true then ( ( Set -> Set ) ∋ ( ( λ x3330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3340 -> Bool ) ) ) $ ( Bool )
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if x3320 then d263 else d210 ) ) ) $ ( x3310 ) ) ) ) $ ( if d155 then true else false )
        d335 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> if true then d192 else d202 ) ) ) $ ( if true then d15 else true )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3420 -> ( ( Set -> Set ) ∋ ( ( λ x3430 -> if true then Bool else x3430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d338 = if ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> x3390 ) ) ) $ ( d220 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> d267 ) ) ) $ ( d295 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> false ) ) ) $ ( d53 )
        d344 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> ( ( Set -> Set ) ∋ ( ( λ x3480 -> if false then x3470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> if d198 then d167 else d299 ) ) ) $ ( x3450 ) ) ) ) $ ( if true then d183 else false )
        d349 : if true then ( ( Set -> Set ) ∋ ( ( λ x3510 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> if d231 then x3500 else true ) ) ) $ ( if true then d292 else true )
        d352 : if false then ( ( Set -> Set ) ∋ ( ( λ x3550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3560 -> x3560 ) ) ) $ ( Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> if d127 then x3540 else d231 ) ) ) $ ( d235 ) ) ) ) $ ( if true then d53 else d246 )
        d357 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3590 -> Bool ) ) ) $ ( Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> if d19 then d246 else x3580 ) ) ) $ ( if true then d7 else true )
        d360 : ( ( Set -> Set ) ∋ ( ( λ x3620 -> ( ( Set -> Set ) ∋ ( ( λ x3630 -> if false then Bool else Bool ) ) ) $ ( x3620 ) ) ) ) $ ( if true then Bool else Bool )
        d360 = ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if d330 then x3610 else d349 ) ) ) $ ( if false then true else true )
        d364 : if true then ( ( Set -> Set ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3680 -> Bool ) ) ) $ ( Bool )
        d364 = if ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> d85 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> d335 ) ) ) $ ( d163 ) else if d330 then d127 else false
        d369 : ( ( Set -> Set ) ∋ ( ( λ x3720 -> ( ( Set -> Set ) ∋ ( ( λ x3730 -> if false then x3720 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d369 = ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> if x3700 then d349 else x3700 ) ) ) $ ( true ) ) ) ) $ ( if d1 then true else d88 )
        d374 : if true then ( ( Set -> Set ) ∋ ( ( λ x3770 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d374 = if ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> d311 ) ) ) $ ( false ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> true ) ) ) $ ( d328 )
        d378 : ( ( Set -> Set ) ∋ ( ( λ x3810 -> if false then x3810 else Bool ) ) ) $ ( if false then Bool else Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if false then x3800 else x3790 ) ) ) $ ( x3790 ) ) ) ) $ ( if false then d136 else d138 )
        d382 : if false then if true then Bool else Bool else if true then Bool else Bool
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> x3830 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> d259 ) ) ) $ ( false ) else if true then false else true
        d385 : ( ( Set -> Set ) ∋ ( ( λ x3870 -> if true then x3870 else Bool ) ) ) $ ( if true then Bool else Bool )
        d385 = if if d369 then d216 else d235 then ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> x3860 ) ) ) $ ( d250 ) else if false then d76 else false
        d388 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> ( ( Set -> Set ) ∋ ( ( λ x3910 -> if true then Bool else x3900 ) ) ) $ ( x3900 ) ) ) ) $ ( if true then Bool else Bool )
        d388 = if ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> d360 ) ) ) $ ( false ) then if d349 then d231 else true else if d374 then true else false
        d392 : ( ( Set -> Set ) ∋ ( ( λ x3940 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d392 = if if d378 then d235 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( true ) else if d255 then d167 else false
        d395 : ( ( Set -> Set ) ∋ ( ( λ x3980 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if d136 then true else d255 ) ) ) $ ( true ) ) ) ) $ ( if d369 then false else d64 )
        d399 : ( ( Set -> Set ) ∋ ( ( λ x4010 -> if true then x4010 else x4010 ) ) ) $ ( if false then Bool else Bool )
        d399 = if if false then false else d250 then ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> false ) ) ) $ ( d80 ) else if d96 then false else d67
        d402 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4050 -> Bool ) ) ) $ ( Bool )
        d402 = if if d378 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> d267 ) ) ) $ ( d239 )
        d406 : if false then ( ( Set -> Set ) ∋ ( ( λ x4090 -> x4090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4100 -> Bool ) ) ) $ ( Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> if false then false else d338 ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d411 : ( ( Set -> Set ) ∋ ( ( λ x4130 -> ( ( Set -> Set ) ∋ ( ( λ x4140 -> if false then x4140 else x4130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d411 = if ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> d205 ) ) ) $ ( true ) then if true then false else false else if d91 then d133 else true
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> ( ( Set -> Set ) ∋ ( ( λ x4180 -> if true then Bool else Bool ) ) ) $ ( x4170 ) ) ) ) $ ( if true then Bool else Bool )
        d415 = if if d183 then d50 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> true ) ) ) $ ( true ) else if false then d411 else d198
        d419 : if false then ( ( Set -> Set ) ∋ ( ( λ x4220 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> if true then x4210 else x4210 ) ) ) $ ( d220 ) ) ) ) $ ( if true then true else d335 )
        d423 : if true then ( ( Set -> Set ) ∋ ( ( λ x4250 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d423 = ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> if d349 then x4240 else false ) ) ) $ ( if false then false else true )
        d426 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4280 -> Bool ) ) ) $ ( Bool )
        d426 = if if true then d196 else d80 then ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> false ) ) ) $ ( d36 ) else if false then true else d330
        d429 : if false then if false then Bool else Bool else if false then Bool else Bool
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if x4300 then x4300 else d145 ) ) ) $ ( if d46 then d303 else false )
        d431 : if true then ( ( Set -> Set ) ∋ ( ( λ x4320 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d431 = if if d378 then d330 else d103 then if true then d42 else false else if d303 then true else true
        d433 : ( ( Set -> Set ) ∋ ( ( λ x4350 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d433 = if ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> true ) ) ) $ ( true ) then if d429 then true else true else if d399 then false else false
        d436 : if false then if true then Bool else Bool else if true then Bool else Bool
        d436 = if if d320 then true else true then if d28 then false else d235 else if d59 then true else d145
        d437 : ( ( Set -> Set ) ∋ ( ( λ x4400 -> ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then x4410 else x4400 ) ) ) $ ( x4400 ) ) ) ) $ ( if true then Bool else Bool )
        d437 = if ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> false ) ) ) $ ( false ) then if d149 then d392 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( d295 )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if d142 then d67 else x4430 ) ) ) $ ( if true then true else true )
        d445 : if true then ( ( Set -> Set ) ∋ ( ( λ x4480 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4490 -> x4490 ) ) ) $ ( Bool )
        d445 = if if d360 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> d96 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> x4470 ) ) ) $ ( true )
        d450 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4510 -> Bool ) ) ) $ ( Bool )
        d450 = if if true then d187 else d107 then if d267 then true else false else if true then d307 else d323
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4540 -> if true then x4540 else Bool ) ) ) $ ( if true then Bool else Bool )
        d452 = if ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> x4530 ) ) ) $ ( d7 ) then if d115 then true else d149 else if true then d429 else d246
        d455 : ( ( Set -> Set ) ∋ ( ( λ x4570 -> ( ( Set -> Set ) ∋ ( ( λ x4580 -> if false then Bool else x4580 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d455 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> false ) ) ) $ ( false ) else if true then true else false
        d459 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4620 -> Bool ) ) ) $ ( Bool )
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if d235 then d419 else true ) ) ) $ ( x4600 ) ) ) ) $ ( if false then true else false )
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4650 -> ( ( Set -> Set ) ∋ ( ( λ x4660 -> if false then Bool else Bool ) ) ) $ ( x4650 ) ) ) ) $ ( if false then Bool else Bool )
        d463 = if if false then d436 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> true ) ) ) $ ( d59 ) else if d53 then d171 else true
        d467 : ( ( Set -> Set ) ∋ ( ( λ x4710 -> ( ( Set -> Set ) ∋ ( ( λ x4720 -> if false then x4710 else x4710 ) ) ) $ ( x4710 ) ) ) ) $ ( if true then Bool else Bool )
        d467 = if ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> false ) ) ) $ ( d328 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> false ) ) ) $ ( false )
        d473 : ( ( Set -> Set ) ∋ ( ( λ x4760 -> ( ( Set -> Set ) ∋ ( ( λ x4770 -> if false then Bool else Bool ) ) ) $ ( x4760 ) ) ) ) $ ( if true then Bool else Bool )
        d473 = if ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> d96 ) ) ) $ ( true ) then if d175 then d235 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> d231 ) ) ) $ ( true )
        d478 : ( ( Set -> Set ) ∋ ( ( λ x4800 -> ( ( Set -> Set ) ∋ ( ( λ x4810 -> if true then Bool else x4800 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d478 = if if d328 then d473 else false then if false then true else d59 else ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> true ) ) ) $ ( false )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x4840 -> ( ( Set -> Set ) ∋ ( ( λ x4850 -> if false then Bool else Bool ) ) ) $ ( x4840 ) ) ) ) $ ( if true then Bool else Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> if x4830 then d99 else true ) ) ) $ ( if d315 then true else false )
        d486 : if false then ( ( Set -> Set ) ∋ ( ( λ x4890 -> x4890 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if false then false else d423 ) ) ) $ ( x4870 ) ) ) ) $ ( if d442 then false else false )
        d490 : ( ( Set -> Set ) ∋ ( ( λ x4930 -> ( ( Set -> Set ) ∋ ( ( λ x4940 -> if true then Bool else Bool ) ) ) $ ( x4930 ) ) ) ) $ ( if false then Bool else Bool )
        d490 = if ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> false ) ) ) $ ( true ) then if d486 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> d53 ) ) ) $ ( d299 )
        d495 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4970 -> Bool ) ) ) $ ( Bool )
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> if false then x4960 else true ) ) ) $ ( if d64 then d64 else d192 )
        d498 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> ( ( Set -> Set ) ∋ ( ( λ x5000 -> if false then x5000 else x5000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d498 = if if true then d107 else false then if true then d76 else true else if d392 then false else false
        d501 : if true then ( ( Set -> Set ) ∋ ( ( λ x5030 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5040 -> x5040 ) ) ) $ ( Bool )
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> if x5020 then d335 else d235 ) ) ) $ ( if true then d478 else false )
        d505 : if true then ( ( Set -> Set ) ∋ ( ( λ x5070 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5080 -> x5080 ) ) ) $ ( Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if x5060 then false else false ) ) ) $ ( if d275 then d369 else true )
        d509 : if false then ( ( Set -> Set ) ∋ ( ( λ x5110 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d509 = if if d7 then d436 else d130 then ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> false ) ) ) $ ( d42 ) else if false then d349 else true
        d512 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( Bool )
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> if d392 then d220 else false ) ) ) $ ( x5130 ) ) ) ) $ ( if false then true else d99 )
        d516 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> ( ( Set -> Set ) ∋ ( ( λ x5200 -> if true then x5190 else Bool ) ) ) $ ( x5190 ) ) ) ) $ ( if true then Bool else Bool )
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> if d285 then false else x5170 ) ) ) $ ( x5170 ) ) ) ) $ ( if true then d299 else false )
        d521 : if true then if false then Bool else Bool else if false then Bool else Bool
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> if x5220 then d1 else false ) ) ) $ ( if true then true else false )
        d523 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> ( ( Set -> Set ) ∋ ( ( λ x5260 -> if true then x5250 else x5260 ) ) ) $ ( x5250 ) ) ) ) $ ( if true then Bool else Bool )
        d523 = if ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> x5240 ) ) ) $ ( d163 ) then if true then d196 else true else if true then d501 else false
        d527 : ( ( Set -> Set ) ∋ ( ( λ x5300 -> ( ( Set -> Set ) ∋ ( ( λ x5310 -> if false then Bool else x5300 ) ) ) $ ( x5300 ) ) ) ) $ ( if true then Bool else Bool )
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> if false then false else x5280 ) ) ) $ ( x5280 ) ) ) ) $ ( if true then true else d516 )
        d532 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5350 -> x5350 ) ) ) $ ( Bool )
        d532 = if ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> d96 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> false ) ) ) $ ( false ) else if d442 then d155 else true
        d536 : ( ( Set -> Set ) ∋ ( ( λ x5390 -> ( ( Set -> Set ) ∋ ( ( λ x5400 -> if true then Bool else Bool ) ) ) $ ( x5390 ) ) ) ) $ ( if true then Bool else Bool )
        d536 = if ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> d516 ) ) ) $ ( d442 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> d202 ) ) ) $ ( true )
        d541 : ( ( Set -> Set ) ∋ ( ( λ x5430 -> if true then Bool else x5430 ) ) ) $ ( if true then Bool else Bool )
        d541 = if if false then d452 else false then if true then d299 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> d527 ) ) ) $ ( d167 )
        d544 : if false then ( ( Set -> Set ) ∋ ( ( λ x5460 -> x5460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5470 -> Bool ) ) ) $ ( Bool )
        d544 = ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> if d228 then true else x5450 ) ) ) $ ( if d423 then true else false )
        d548 : ( ( Set -> Set ) ∋ ( ( λ x5510 -> if false then x5510 else Bool ) ) ) $ ( if false then Bool else Bool )
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> if d544 then false else d338 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d552 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5550 -> Bool ) ) ) $ ( Bool )
        d552 = ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> if false then d178 else true ) ) ) $ ( x5530 ) ) ) ) $ ( if d64 then d385 else d429 )
        d556 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5580 -> x5580 ) ) ) $ ( Bool )
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> if false then true else true ) ) ) $ ( if d315 then d142 else d382 )
        d559 : if false then ( ( Set -> Set ) ∋ ( ( λ x5620 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d559 = if ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> d442 ) ) ) $ ( false ) then if true then d473 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> d253 ) ) ) $ ( d285 )
        d563 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5650 -> Bool ) ) ) $ ( Bool )
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> if d130 then d452 else false ) ) ) $ ( if d295 then false else true )
        d566 : if false then ( ( Set -> Set ) ∋ ( ( λ x5700 -> x5700 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d566 = if ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> x5670 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> x5680 ) ) ) $ ( d285 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> x5690 ) ) ) $ ( d167 )
        d571 : if false then ( ( Set -> Set ) ∋ ( ( λ x5740 -> x5740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5750 -> Bool ) ) ) $ ( Bool )
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> if d239 then true else d431 ) ) ) $ ( x5720 ) ) ) ) $ ( if false then d378 else false )
        d576 : if true then ( ( Set -> Set ) ∋ ( ( λ x5780 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d576 = if if false then d231 else d307 then ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> x5770 ) ) ) $ ( true ) else if false then d235 else false
        d579 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5810 -> Bool ) ) ) $ ( Bool )
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> if d96 then x5800 else d501 ) ) ) $ ( if false then d235 else true )
        d582 : ( ( Set -> Set ) ∋ ( ( λ x5860 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d582 = if ( ( Bool -> Bool ) ∋ ( ( λ x5830 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> x5840 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> d442 ) ) ) $ ( false )
        d587 : ( ( Set -> Set ) ∋ ( ( λ x5910 -> ( ( Set -> Set ) ∋ ( ( λ x5920 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d587 = if ( ( Bool -> Bool ) ∋ ( ( λ x5880 -> x5880 ) ) ) $ ( d455 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> x5890 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> false ) ) ) $ ( d559 )
        d593 : ( ( Set -> Set ) ∋ ( ( λ x5940 -> ( ( Set -> Set ) ∋ ( ( λ x5950 -> if false then Bool else x5940 ) ) ) $ ( x5940 ) ) ) ) $ ( if false then Bool else Bool )
        d593 = if if d292 then d360 else false then if d246 then d255 else d263 else if false then d463 else true
        d596 : ( ( Set -> Set ) ∋ ( ( λ x6000 -> ( ( Set -> Set ) ∋ ( ( λ x6010 -> if false then x6000 else Bool ) ) ) $ ( x6000 ) ) ) ) $ ( if false then Bool else Bool )
        d596 = if ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> x5970 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> x5980 ) ) ) $ ( d59 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> true ) ) ) $ ( true )
        d602 : if false then ( ( Set -> Set ) ∋ ( ( λ x6050 -> x6050 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6060 -> Bool ) ) ) $ ( Bool )
        d602 = ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> if d364 then x6040 else false ) ) ) $ ( d292 ) ) ) ) $ ( if false then d512 else true )
        d607 : ( ( Set -> Set ) ∋ ( ( λ x6090 -> ( ( Set -> Set ) ∋ ( ( λ x6100 -> if false then x6090 else Bool ) ) ) $ ( x6090 ) ) ) ) $ ( if false then Bool else Bool )
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> if d255 then true else d72 ) ) ) $ ( if false then true else d473 )
        d611 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6130 -> x6130 ) ) ) $ ( Bool )
        d611 = if ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> x6120 ) ) ) $ ( d123 ) then if true then d352 else d167 else if d374 then false else true
        d614 : ( ( Set -> Set ) ∋ ( ( λ x6170 -> ( ( Set -> Set ) ∋ ( ( λ x6180 -> if true then Bool else Bool ) ) ) $ ( x6170 ) ) ) ) $ ( if false then Bool else Bool )
        d614 = if ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> false ) ) ) $ ( d402 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> d115 ) ) ) $ ( d596 ) else if true then d149 else true
        d619 : if false then ( ( Set -> Set ) ∋ ( ( λ x6210 -> x6210 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6220 -> Bool ) ) ) $ ( Bool )
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> if x6200 then d216 else d579 ) ) ) $ ( if false then d72 else d142 )
        d623 : if false then ( ( Set -> Set ) ∋ ( ( λ x6260 -> x6260 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d623 = ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> ( ( Bool -> Bool ) ∋ ( ( λ x6250 -> if x6240 then d183 else x6240 ) ) ) $ ( true ) ) ) ) $ ( if d364 then false else d607 )
        d627 : if false then if false then Bool else Bool else if false then Bool else Bool
        d627 = if if false then false else d392 then if false then d91 else d602 else if d532 then d402 else d423
        d628 : ( ( Set -> Set ) ∋ ( ( λ x6310 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d628 = ( ( Bool -> Bool ) ∋ ( ( λ x6290 -> ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> if x6290 then d450 else d80 ) ) ) $ ( x6290 ) ) ) ) $ ( if d374 then d619 else d107 )
        d632 : ( ( Set -> Set ) ∋ ( ( λ x6350 -> ( ( Set -> Set ) ∋ ( ( λ x6360 -> if false then x6350 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d632 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> d267 ) ) ) $ ( d411 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> true ) ) ) $ ( false )
        d637 : ( ( Set -> Set ) ∋ ( ( λ x6390 -> ( ( Set -> Set ) ∋ ( ( λ x6400 -> if false then x6390 else x6390 ) ) ) $ ( x6390 ) ) ) ) $ ( if true then Bool else Bool )
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> if true then d270 else x6380 ) ) ) $ ( if true then true else d395 )
        d641 : if true then ( ( Set -> Set ) ∋ ( ( λ x6450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6460 -> Bool ) ) ) $ ( Bool )
        d641 = if ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> d120 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6430 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6440 -> x6440 ) ) ) $ ( false )
        d647 : ( ( Set -> Set ) ∋ ( ( λ x6480 -> if false then x6480 else x6480 ) ) ) $ ( if false then Bool else Bool )
        d647 = if if d145 then d80 else d559 then if d532 then true else d614 else if true then false else true
        d649 : if true then ( ( Set -> Set ) ∋ ( ( λ x6520 -> x6520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> if x6510 then d548 else d127 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d653 : if true then ( ( Set -> Set ) ∋ ( ( λ x6560 -> x6560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d653 = if if false then d138 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6540 -> d505 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6550 -> x6550 ) ) ) $ ( d521 )
        d657 : ( ( Set -> Set ) ∋ ( ( λ x6600 -> ( ( Set -> Set ) ∋ ( ( λ x6610 -> if false then x6610 else x6610 ) ) ) $ ( x6600 ) ) ) ) $ ( if true then Bool else Bool )
        d657 = ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> ( ( Bool -> Bool ) ∋ ( ( λ x6590 -> if x6580 then x6590 else d385 ) ) ) $ ( true ) ) ) ) $ ( if d344 then d175 else false )
        d662 : ( ( Set -> Set ) ∋ ( ( λ x6640 -> if true then x6640 else x6640 ) ) ) $ ( if true then Bool else Bool )
        d662 = ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> if d445 then d459 else false ) ) ) $ ( if false then d228 else d130 )
        d665 : if false then if true then Bool else Bool else if false then Bool else Bool
        d665 = ( ( Bool -> Bool ) ∋ ( ( λ x6660 -> if false then false else x6660 ) ) ) $ ( if d253 then true else d433 )
        d667 : if true then ( ( Set -> Set ) ∋ ( ( λ x6700 -> x6700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6710 -> x6710 ) ) ) $ ( Bool )
        d667 = if ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> x6680 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( d490 ) else if d559 then false else d388
        d672 : if false then ( ( Set -> Set ) ∋ ( ( λ x6750 -> x6750 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6760 -> x6760 ) ) ) $ ( Bool )
        d672 = ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> ( ( Bool -> Bool ) ∋ ( ( λ x6740 -> if d352 then d107 else x6740 ) ) ) $ ( true ) ) ) ) $ ( if d649 then true else false )
        d677 : ( ( Set -> Set ) ∋ ( ( λ x6800 -> ( ( Set -> Set ) ∋ ( ( λ x6810 -> if false then Bool else Bool ) ) ) $ ( x6800 ) ) ) ) $ ( if false then Bool else Bool )
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> ( ( Bool -> Bool ) ∋ ( ( λ x6790 -> if x6790 then false else x6780 ) ) ) $ ( false ) ) ) ) $ ( if true then d183 else false )
        d682 : if true then if false then Bool else Bool else if true then Bool else Bool
        d682 = if if d15 then true else d7 then ( ( Bool -> Bool ) ∋ ( ( λ x6830 -> x6830 ) ) ) $ ( d138 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6840 -> d250 ) ) ) $ ( d442 )
        d685 : if false then if true then Bool else Bool else if true then Bool else Bool
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> if d107 then x6860 else true ) ) ) $ ( if true then d253 else d338 )
        d687 : ( ( Set -> Set ) ∋ ( ( λ x6900 -> if false then x6900 else Bool ) ) ) $ ( if true then Bool else Bool )
        d687 = ( ( Bool -> Bool ) ∋ ( ( λ x6880 -> ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> if true then x6890 else d450 ) ) ) $ ( d198 ) ) ) ) $ ( if false then false else true )
        d691 : ( ( Set -> Set ) ∋ ( ( λ x6930 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> if true then false else false ) ) ) $ ( if false then d72 else d250 )
        d694 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6970 -> Bool ) ) ) $ ( Bool )
        d694 = ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> if d593 then false else d685 ) ) ) $ ( x6950 ) ) ) ) $ ( if false then false else d120 )
        d698 : if true then if false then Bool else Bool else if false then Bool else Bool
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> ( ( Bool -> Bool ) ∋ ( ( λ x7000 -> if d544 then d50 else x6990 ) ) ) $ ( x6990 ) ) ) ) $ ( if d253 then d267 else d223 )
        d701 : ( ( Set -> Set ) ∋ ( ( λ x7030 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> if false then x7020 else x7020 ) ) ) $ ( if d431 then false else d388 )
        d704 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7070 -> x7070 ) ) ) $ ( Bool )
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> if false then true else false ) ) ) $ ( x7050 ) ) ) ) $ ( if true then true else d130 )
        d708 : ( ( Set -> Set ) ∋ ( ( λ x7110 -> ( ( Set -> Set ) ∋ ( ( λ x7120 -> if true then x7120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d708 = if ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> x7090 ) ) ) $ ( d579 ) then if d11 then d426 else d406 else ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> d292 ) ) ) $ ( false )
        d713 : if true then ( ( Set -> Set ) ∋ ( ( λ x7160 -> x7160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7170 -> x7170 ) ) ) $ ( Bool )
        d713 = if if false then true else d202 then ( ( Bool -> Bool ) ∋ ( ( λ x7140 -> d289 ) ) ) $ ( d85 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> x7150 ) ) ) $ ( d657 )
        d718 : if false then ( ( Set -> Set ) ∋ ( ( λ x7200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7210 -> Bool ) ) ) $ ( Bool )
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> if x7190 then d473 else x7190 ) ) ) $ ( if d388 then true else false )
        d722 : if true then ( ( Set -> Set ) ∋ ( ( λ x7240 -> x7240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7250 -> Bool ) ) ) $ ( Bool )
        d722 = ( ( Bool -> Bool ) ∋ ( ( λ x7230 -> if x7230 then true else d175 ) ) ) $ ( if d516 then d202 else false )
        d726 : ( ( Set -> Set ) ∋ ( ( λ x7280 -> ( ( Set -> Set ) ∋ ( ( λ x7290 -> if true then x7290 else x7280 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d726 = if if true then d243 else d275 then ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> x7270 ) ) ) $ ( true ) else if d11 then d450 else true
        d730 : ( ( Set -> Set ) ∋ ( ( λ x7330 -> ( ( Set -> Set ) ∋ ( ( λ x7340 -> if true then Bool else x7340 ) ) ) $ ( x7330 ) ) ) ) $ ( if false then Bool else Bool )
        d730 = ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> if x7310 then false else true ) ) ) $ ( x7310 ) ) ) ) $ ( if d548 then d292 else d36 )
        d735 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7370 -> x7370 ) ) ) $ ( Bool )
        d735 = if if d255 then d202 else d576 then ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> d187 ) ) ) $ ( d541 ) else if d436 then d72 else d395
        d738 : if false then if true then Bool else Bool else if false then Bool else Bool
        d738 = ( ( Bool -> Bool ) ∋ ( ( λ x7390 -> if x7390 then true else x7390 ) ) ) $ ( if d505 then d46 else d4 )
        d740 : ( ( Set -> Set ) ∋ ( ( λ x7430 -> ( ( Set -> Set ) ∋ ( ( λ x7440 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d740 = ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> if false then x7410 else false ) ) ) $ ( true ) ) ) ) $ ( if false then d450 else d364 )
        d745 : ( ( Set -> Set ) ∋ ( ( λ x7470 -> if true then x7470 else x7470 ) ) ) $ ( if true then Bool else Bool )
        d745 = ( ( Bool -> Bool ) ∋ ( ( λ x7460 -> if x7460 then d46 else x7460 ) ) ) $ ( if true then d50 else d160 )
        d748 : if false then ( ( Set -> Set ) ∋ ( ( λ x7510 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d748 = if ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> x7490 ) ) ) $ ( d382 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> d730 ) ) ) $ ( d463 ) else if false then d647 else false
        d752 : ( ( Set -> Set ) ∋ ( ( λ x7550 -> ( ( Set -> Set ) ∋ ( ( λ x7560 -> if false then x7550 else x7550 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d752 = ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> if d364 then x7530 else d213 ) ) ) $ ( x7530 ) ) ) ) $ ( if true then false else d220 )
        d757 : ( ( Set -> Set ) ∋ ( ( λ x7600 -> ( ( Set -> Set ) ∋ ( ( λ x7610 -> if false then Bool else x7600 ) ) ) $ ( x7600 ) ) ) ) $ ( if true then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> if d559 then d748 else false ) ) ) $ ( x7580 ) ) ) ) $ ( if d216 then true else d602 )
        d762 : ( ( Set -> Set ) ∋ ( ( λ x7640 -> ( ( Set -> Set ) ∋ ( ( λ x7650 -> if false then Bool else Bool ) ) ) $ ( x7640 ) ) ) ) $ ( if true then Bool else Bool )
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> if x7630 then false else false ) ) ) $ ( if d328 then false else false )
        d766 : ( ( Set -> Set ) ∋ ( ( λ x7690 -> if true then Bool else x7690 ) ) ) $ ( if false then Bool else Bool )
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> ( ( Bool -> Bool ) ∋ ( ( λ x7680 -> if x7670 then x7680 else d423 ) ) ) $ ( d455 ) ) ) ) $ ( if d556 then d253 else true )
        d770 : ( ( Set -> Set ) ∋ ( ( λ x7720 -> ( ( Set -> Set ) ∋ ( ( λ x7730 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d770 = if if d315 then true else d653 then ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> d482 ) ) ) $ ( d303 ) else if false then true else false
        d774 : if false then ( ( Set -> Set ) ∋ ( ( λ x7760 -> x7760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> if d509 then d19 else x7750 ) ) ) $ ( if d220 then false else false )
        d777 : ( ( Set -> Set ) ∋ ( ( λ x7800 -> ( ( Set -> Set ) ∋ ( ( λ x7810 -> if false then Bool else x7810 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d777 = if ( ( Bool -> Bool ) ∋ ( ( λ x7780 -> x7780 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> d649 ) ) ) $ ( true ) else if d255 then true else false
        d782 : ( ( Set -> Set ) ∋ ( ( λ x7840 -> ( ( Set -> Set ) ∋ ( ( λ x7850 -> if true then Bool else x7850 ) ) ) $ ( x7840 ) ) ) ) $ ( if false then Bool else Bool )
        d782 = ( ( Bool -> Bool ) ∋ ( ( λ x7830 -> if d210 then false else true ) ) ) $ ( if false then d450 else true )
        d786 : if false then if true then Bool else Bool else if true then Bool else Bool
        d786 = if ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> true ) ) ) $ ( d463 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> d490 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> false ) ) ) $ ( true )
        d790 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7920 -> Bool ) ) ) $ ( Bool )
        d790 = ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> if d662 then false else x7910 ) ) ) $ ( if false then false else true )
        d793 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7950 -> Bool ) ) ) $ ( Bool )
        d793 = if if true then d745 else false then ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> x7940 ) ) ) $ ( true ) else if d708 then d552 else d263
        d796 : if false then ( ( Set -> Set ) ∋ ( ( λ x7980 -> x7980 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d796 = if ( ( Bool -> Bool ) ∋ ( ( λ x7970 -> d32 ) ) ) $ ( d619 ) then if d96 then d415 else d349 else if false then d552 else d110
        d799 : if true then ( ( Set -> Set ) ∋ ( ( λ x8010 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d799 = if if d220 then d187 else d498 then ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> d59 ) ) ) $ ( false ) else if d523 then false else false
        d802 : ( ( Set -> Set ) ∋ ( ( λ x8040 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> if true then true else d521 ) ) ) $ ( if d582 then false else d701 )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x8080 -> if false then x8080 else Bool ) ) ) $ ( if true then Bool else Bool )
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> if true then x8070 else x8070 ) ) ) $ ( x8060 ) ) ) ) $ ( if true then false else d641 )
        d809 : ( ( Set -> Set ) ∋ ( ( λ x8120 -> if true then x8120 else x8120 ) ) ) $ ( if true then Bool else Bool )
        d809 = ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> if false then true else true ) ) ) $ ( d559 ) ) ) ) $ ( if d330 then true else d607 )
        d813 : ( ( Set -> Set ) ∋ ( ( λ x8150 -> ( ( Set -> Set ) ∋ ( ( λ x8160 -> if false then Bool else Bool ) ) ) $ ( x8150 ) ) ) ) $ ( if true then Bool else Bool )
        d813 = if if d691 then d399 else d628 then if true then d482 else d486 else ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> x8140 ) ) ) $ ( d406 )
        d817 : ( ( Set -> Set ) ∋ ( ( λ x8200 -> ( ( Set -> Set ) ∋ ( ( λ x8210 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d817 = if if true then d388 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> d571 ) ) ) $ ( true )
        d822 : ( ( Set -> Set ) ∋ ( ( λ x8250 -> ( ( Set -> Set ) ∋ ( ( λ x8260 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d822 = if if d512 then d790 else false then ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> d378 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> d160 ) ) ) $ ( d50 )
        d827 : ( ( Set -> Set ) ∋ ( ( λ x8290 -> if true then x8290 else Bool ) ) ) $ ( if true then Bool else Bool )
        d827 = ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> if true then d399 else d623 ) ) ) $ ( if d96 then false else d411 )
        d830 : if false then if false then Bool else Bool else if false then Bool else Bool
        d830 = ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> if false then x8310 else true ) ) ) $ ( if d178 then false else false )
        d832 : if true then ( ( Set -> Set ) ∋ ( ( λ x8350 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d832 = ( ( Bool -> Bool ) ∋ ( ( λ x8330 -> ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> if d330 then true else d805 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d315 )
        d836 : ( ( Set -> Set ) ∋ ( ( λ x8390 -> ( ( Set -> Set ) ∋ ( ( λ x8400 -> if true then x8390 else x8390 ) ) ) $ ( x8390 ) ) ) ) $ ( if false then Bool else Bool )
        d836 = if ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> x8370 ) ) ) $ ( true ) then if d163 then true else d210 else ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> x8380 ) ) ) $ ( d250 )
        d841 : if true then ( ( Set -> Set ) ∋ ( ( λ x8440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8450 -> x8450 ) ) ) $ ( Bool )
        d841 = ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> ( ( Bool -> Bool ) ∋ ( ( λ x8430 -> if true then d352 else false ) ) ) $ ( d64 ) ) ) ) $ ( if d192 then true else d452 )
        d846 : ( ( Set -> Set ) ∋ ( ( λ x8490 -> ( ( Set -> Set ) ∋ ( ( λ x8500 -> if true then x8490 else x8500 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d846 = ( ( Bool -> Bool ) ∋ ( ( λ x8470 -> ( ( Bool -> Bool ) ∋ ( ( λ x8480 -> if false then d399 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d851 : if false then if false then Bool else Bool else if true then Bool else Bool
        d851 = if ( ( Bool -> Bool ) ∋ ( ( λ x8520 -> d295 ) ) ) $ ( d411 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> d740 ) ) ) $ ( d722 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8540 -> false ) ) ) $ ( d64 )
        d855 : if false then if true then Bool else Bool else if false then Bool else Bool
        d855 = ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> if d822 then x8570 else false ) ) ) $ ( true ) ) ) ) $ ( if d516 then true else d415 )
        d858 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8620 -> Bool ) ) ) $ ( Bool )
        d858 = if ( ( Bool -> Bool ) ∋ ( ( λ x8590 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8600 -> x8600 ) ) ) $ ( d155 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> false ) ) ) $ ( d167 )
        d863 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8650 -> Bool ) ) ) $ ( Bool )
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> if x8640 then false else true ) ) ) $ ( if d115 then d429 else true )
        d866 : ( ( Set -> Set ) ∋ ( ( λ x8690 -> ( ( Set -> Set ) ∋ ( ( λ x8700 -> if false then x8700 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d866 = ( ( Bool -> Bool ) ∋ ( ( λ x8670 -> ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> if x8670 then d490 else x8680 ) ) ) $ ( d110 ) ) ) ) $ ( if d1 then d687 else false )
        d871 : ( ( Set -> Set ) ∋ ( ( λ x8730 -> ( ( Set -> Set ) ∋ ( ( λ x8740 -> if false then x8740 else Bool ) ) ) $ ( x8730 ) ) ) ) $ ( if true then Bool else Bool )
        d871 = if ( ( Bool -> Bool ) ∋ ( ( λ x8720 -> d96 ) ) ) $ ( d320 ) then if d809 then true else true else if false then d344 else true
        d875 : ( ( Set -> Set ) ∋ ( ( λ x8770 -> if false then x8770 else Bool ) ) ) $ ( if false then Bool else Bool )
        d875 = ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> if d532 then false else false ) ) ) $ ( if true then false else false )
        d878 : ( ( Set -> Set ) ∋ ( ( λ x8810 -> if true then Bool else x8810 ) ) ) $ ( if false then Bool else Bool )
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x8790 -> ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> if d120 then d532 else true ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d882 : ( ( Set -> Set ) ∋ ( ( λ x8850 -> if true then Bool else x8850 ) ) ) $ ( if true then Bool else Bool )
        d882 = if ( ( Bool -> Bool ) ∋ ( ( λ x8830 -> false ) ) ) $ ( false ) then if d352 then d473 else d307 else ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> x8840 ) ) ) $ ( d88 )
        d886 : if true then ( ( Set -> Set ) ∋ ( ( λ x8890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8900 -> Bool ) ) ) $ ( Bool )
        d886 = ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> if x8870 then x8880 else true ) ) ) $ ( true ) ) ) ) $ ( if d50 then d846 else d64 )
        d891 : ( ( Set -> Set ) ∋ ( ( λ x8940 -> if true then x8940 else x8940 ) ) ) $ ( if true then Bool else Bool )
        d891 = ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> if d602 then false else x8920 ) ) ) $ ( x8920 ) ) ) ) $ ( if true then d611 else d163 )
        d895 : ( ( Set -> Set ) ∋ ( ( λ x8980 -> if false then Bool else x8980 ) ) ) $ ( if true then Bool else Bool )
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> ( ( Bool -> Bool ) ∋ ( ( λ x8970 -> if x8960 then x8960 else d67 ) ) ) $ ( d527 ) ) ) ) $ ( if true then d657 else false )
        d899 : if true then if true then Bool else Bool else if false then Bool else Bool
        d899 = if if false then d138 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> false ) ) ) $ ( d423 ) else if false then false else d64
        d901 : ( ( Set -> Set ) ∋ ( ( λ x9050 -> ( ( Set -> Set ) ∋ ( ( λ x9060 -> if false then Bool else x9050 ) ) ) $ ( x9050 ) ) ) ) $ ( if false then Bool else Bool )
        d901 = if ( ( Bool -> Bool ) ∋ ( ( λ x9020 -> x9020 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> false ) ) ) $ ( d392 )
        d907 : if true then ( ( Set -> Set ) ∋ ( ( λ x9100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9110 -> Bool ) ) ) $ ( Bool )
        d907 = ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> ( ( Bool -> Bool ) ∋ ( ( λ x9090 -> if d145 then x9080 else d886 ) ) ) $ ( false ) ) ) ) $ ( if true then d275 else d726 )
        d912 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9140 -> x9140 ) ) ) $ ( Bool )
        d912 = ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> if true then true else x9130 ) ) ) $ ( if true then false else false )
        d915 : ( ( Set -> Set ) ∋ ( ( λ x9170 -> if true then x9170 else Bool ) ) ) $ ( if false then Bool else Bool )
        d915 = ( ( Bool -> Bool ) ∋ ( ( λ x9160 -> if d796 then false else x9160 ) ) ) $ ( if false then false else false )
        d918 : if false then if true then Bool else Bool else if true then Bool else Bool
        d918 = ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> ( ( Bool -> Bool ) ∋ ( ( λ x9200 -> if x9190 then d509 else x9190 ) ) ) $ ( true ) ) ) ) $ ( if true then d836 else d782 )
        d921 : ( ( Set -> Set ) ∋ ( ( λ x9230 -> ( ( Set -> Set ) ∋ ( ( λ x9240 -> if false then x9240 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d921 = if if d53 then false else d388 then ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> x9220 ) ) ) $ ( d231 ) else if d822 then d805 else d805
        d925 : ( ( Set -> Set ) ∋ ( ( λ x9260 -> if false then x9260 else Bool ) ) ) $ ( if false then Bool else Bool )
        d925 = if if true then d445 else false then if d786 then d495 else d498 else if d419 then d149 else d127
        d927 : if true then if true then Bool else Bool else if false then Bool else Bool
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> if true then x9280 else true ) ) ) $ ( if d691 then true else false )
        d929 : if true then if false then Bool else Bool else if false then Bool else Bool
        d929 = ( ( Bool -> Bool ) ∋ ( ( λ x9300 -> if false then d255 else d602 ) ) ) $ ( if true then d402 else true )
        d931 : ( ( Set -> Set ) ∋ ( ( λ x9330 -> if true then x9330 else x9330 ) ) ) $ ( if true then Bool else Bool )
        d931 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> x9320 ) ) ) $ ( d292 ) else if false then d886 else false
        d934 : if true then ( ( Set -> Set ) ∋ ( ( λ x9360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9370 -> x9370 ) ) ) $ ( Bool )
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> if false then d311 else d72 ) ) ) $ ( if false then true else true )
        d938 : if true then ( ( Set -> Set ) ∋ ( ( λ x9420 -> x9420 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d938 = if ( ( Bool -> Bool ) ∋ ( ( λ x9390 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> true ) ) ) $ ( d145 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> true ) ) ) $ ( true )
        d943 : if true then ( ( Set -> Set ) ∋ ( ( λ x9450 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9460 -> x9460 ) ) ) $ ( Bool )
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> if x9440 then false else true ) ) ) $ ( if d320 then true else false )
        d947 : if false then ( ( Set -> Set ) ∋ ( ( λ x9500 -> x9500 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9510 -> x9510 ) ) ) $ ( Bool )
        d947 = if ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> x9480 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> false ) ) ) $ ( d653 ) else if true then false else d799
        d952 : if false then if true then Bool else Bool else if false then Bool else Bool
        d952 = ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> if x9530 then true else false ) ) ) $ ( if d253 then false else false )
        d954 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9570 -> Bool ) ) ) $ ( Bool )
        d954 = if if true then d704 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> true ) ) ) $ ( d402 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9560 -> x9560 ) ) ) $ ( false )
        d958 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9600 -> x9600 ) ) ) $ ( Bool )
        d958 = if if true then d817 else d748 then if d19 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x9590 -> x9590 ) ) ) $ ( false )
        d961 : ( ( Set -> Set ) ∋ ( ( λ x9650 -> if true then Bool else x9650 ) ) ) $ ( if true then Bool else Bool )
        d961 = if ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9630 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> d541 ) ) ) $ ( d187 )
        d966 : ( ( Set -> Set ) ∋ ( ( λ x9680 -> ( ( Set -> Set ) ∋ ( ( λ x9690 -> if false then x9690 else x9680 ) ) ) $ ( x9680 ) ) ) ) $ ( if false then Bool else Bool )
        d966 = ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> if x9670 then x9670 else false ) ) ) $ ( if false then false else d315 )
        d970 : if false then ( ( Set -> Set ) ∋ ( ( λ x9730 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d970 = if if d866 then d392 else d171 then ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> x9710 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> d934 ) ) ) $ ( false )
        d974 : if true then ( ( Set -> Set ) ∋ ( ( λ x9770 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9780 -> x9780 ) ) ) $ ( Bool )
        d974 = ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> if x9750 then x9760 else x9760 ) ) ) $ ( x9750 ) ) ) ) $ ( if true then true else d175 )
        d979 : ( ( Set -> Set ) ∋ ( ( λ x9820 -> if false then x9820 else Bool ) ) ) $ ( if true then Bool else Bool )
        d979 = if ( ( Bool -> Bool ) ∋ ( ( λ x9800 -> d311 ) ) ) $ ( true ) then if true then false else d311 else ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> x9810 ) ) ) $ ( d4 )
        d983 : ( ( Set -> Set ) ∋ ( ( λ x9860 -> ( ( Set -> Set ) ∋ ( ( λ x9870 -> if true then x9860 else Bool ) ) ) $ ( x9860 ) ) ) ) $ ( if false then Bool else Bool )
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> if false then true else d388 ) ) ) $ ( true ) ) ) ) $ ( if d934 then false else d757 )
        d988 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9910 -> x9910 ) ) ) $ ( Bool )
        d988 = ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> ( ( Bool -> Bool ) ∋ ( ( λ x9900 -> if d947 then true else true ) ) ) $ ( d490 ) ) ) ) $ ( if false then d178 else false )
        d992 : if true then if true then Bool else Bool else if false then Bool else Bool
        d992 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x9930 -> true ) ) ) $ ( d685 ) else if d349 then d239 else d482
        d994 : ( ( Set -> Set ) ∋ ( ( λ x9950 -> ( ( Set -> Set ) ∋ ( ( λ x9960 -> if false then x9950 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d994 = if if d722 then d303 else true then if d110 then d374 else d582 else if true then false else true
        d997 : if false then if false then Bool else Bool else if true then Bool else Bool
        d997 = ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> if false then true else true ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d1000 : if true then ( ( Set -> Set ) ∋ ( ( λ x10030 -> x10030 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1000 = if ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> x10010 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> x10020 ) ) ) $ ( d701 ) else if d364 then true else false
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x10070 -> if false then Bool else x10070 ) ) ) $ ( if false then Bool else Bool )
        d1004 = ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> if x10050 then true else true ) ) ) $ ( d647 ) ) ) ) $ ( if true then true else d851 )
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x10100 -> if false then Bool else x10100 ) ) ) $ ( if true then Bool else Bool )
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> if x10090 then d556 else d455 ) ) ) $ ( if d103 then false else true )
        d1011 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10130 -> Bool ) ) ) $ ( Bool )
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> if true then true else true ) ) ) $ ( if d544 then d901 else true )
        d1014 : ( ( Set -> Set ) ∋ ( ( λ x10160 -> ( ( Set -> Set ) ∋ ( ( λ x10170 -> if true then Bool else Bool ) ) ) $ ( x10160 ) ) ) ) $ ( if false then Bool else Bool )
        d1014 = if if d918 then false else true then if false then d672 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10150 -> x10150 ) ) ) $ ( false )
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x10200 -> ( ( Set -> Set ) ∋ ( ( λ x10210 -> if false then x10200 else x10210 ) ) ) $ ( x10200 ) ) ) ) $ ( if false then Bool else Bool )
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> if x10190 then d50 else false ) ) ) $ ( if d740 then d335 else false )
        d1022 : if false then ( ( Set -> Set ) ∋ ( ( λ x10240 -> x10240 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1022 = ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> if d988 then x10230 else x10230 ) ) ) $ ( if d442 then true else d259 )
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x10280 -> if true then Bool else x10280 ) ) ) $ ( if true then Bool else Bool )
        d1025 = if ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> x10260 ) ) ) $ ( d433 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> x10270 ) ) ) $ ( d259 )
        d1029 : if false then ( ( Set -> Set ) ∋ ( ( λ x10320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10330 -> Bool ) ) ) $ ( Bool )
        d1029 = if ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> true ) ) ) $ ( false ) then if false then d330 else d698 else ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> x10310 ) ) ) $ ( d364 )
        d1034 : ( ( Set -> Set ) ∋ ( ( λ x10360 -> if true then x10360 else x10360 ) ) ) $ ( if true then Bool else Bool )
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if false then d213 else d672 ) ) ) $ ( if true then true else true )
        d1037 : ( ( Set -> Set ) ∋ ( ( λ x10400 -> if true then x10400 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1037 = ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> if x10390 then d115 else false ) ) ) $ ( true ) ) ) ) $ ( if d385 then true else false )
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> if true then Bool else x10430 ) ) ) $ ( if false then Bool else Bool )
        d1041 = ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> if d402 then d782 else x10420 ) ) ) $ ( if d790 then d213 else d793 )
        d1044 : ( ( Set -> Set ) ∋ ( ( λ x10460 -> if true then x10460 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1044 = if if d7 then d357 else d149 then if true then d627 else d677 else ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> x10450 ) ) ) $ ( false )
        d1047 : ( ( Set -> Set ) ∋ ( ( λ x10500 -> ( ( Set -> Set ) ∋ ( ( λ x10510 -> if false then x10510 else Bool ) ) ) $ ( x10500 ) ) ) ) $ ( if false then Bool else Bool )
        d1047 = if ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> x10480 ) ) ) $ ( d662 ) then if d855 then true else d123 else ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> false ) ) ) $ ( d323 )
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x10540 -> if false then x10540 else x10540 ) ) ) $ ( if false then Bool else Bool )
        d1052 = ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> if d846 then x10530 else true ) ) ) $ ( if d970 then true else true )
        d1055 : ( ( Set -> Set ) ∋ ( ( λ x10580 -> ( ( Set -> Set ) ∋ ( ( λ x10590 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1055 = ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> if x10570 then true else false ) ) ) $ ( d99 ) ) ) ) $ ( if d431 then true else d891 )
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x10610 -> ( ( Set -> Set ) ∋ ( ( λ x10620 -> if true then Bool else Bool ) ) ) $ ( x10610 ) ) ) ) $ ( if true then Bool else Bool )
        d1060 = if if false then true else true then if false then false else false else if true then false else d611
        d1063 : if true then ( ( Set -> Set ) ∋ ( ( λ x10650 -> x10650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10660 -> Bool ) ) ) $ ( Bool )
        d1063 = ( ( Bool -> Bool ) ∋ ( ( λ x10640 -> if x10640 then x10640 else x10640 ) ) ) $ ( if false then true else false )
        d1067 : if false then ( ( Set -> Set ) ∋ ( ( λ x10690 -> x10690 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1067 = ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> if true then true else false ) ) ) $ ( if false then false else d285 )
        d1070 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> ( ( Set -> Set ) ∋ ( ( λ x10750 -> if true then x10740 else x10750 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1070 = if ( ( Bool -> Bool ) ∋ ( ( λ x10710 -> d691 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10720 -> d596 ) ) ) $ ( d793 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> x10730 ) ) ) $ ( d912 )
        d1076 : if false then ( ( Set -> Set ) ∋ ( ( λ x10780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10790 -> Bool ) ) ) $ ( Bool )
        d1076 = ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> if x10770 then x10770 else d163 ) ) ) $ ( if d718 then true else d198 )
        d1080 : if true then ( ( Set -> Set ) ∋ ( ( λ x10820 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10830 -> Bool ) ) ) $ ( Bool )
        d1080 = if if true then d1 else d899 then ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> d253 ) ) ) $ ( d912 ) else if true then d160 else false
        d1084 : if false then ( ( Set -> Set ) ∋ ( ( λ x10860 -> x10860 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> if false then x10850 else false ) ) ) $ ( if d67 then d901 else d667 )
        d1087 : if true then ( ( Set -> Set ) ∋ ( ( λ x10900 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1087 = if ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> true ) ) ) $ ( d966 ) then if d891 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> x10890 ) ) ) $ ( false )
        d1091 : if false then ( ( Set -> Set ) ∋ ( ( λ x10930 -> x10930 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> if false then false else x10920 ) ) ) $ ( if d895 then d315 else d1087 )
        d1094 : if true then ( ( Set -> Set ) ∋ ( ( λ x10960 -> x10960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10970 -> x10970 ) ) ) $ ( Bool )
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if d579 then d1018 else false ) ) ) $ ( if true then true else d4 )
        d1098 : ( ( Set -> Set ) ∋ ( ( λ x11000 -> ( ( Set -> Set ) ∋ ( ( λ x11010 -> if true then Bool else Bool ) ) ) $ ( x11000 ) ) ) ) $ ( if false then Bool else Bool )
        d1098 = if if d28 then true else true then if false then d836 else d64 else ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> x10990 ) ) ) $ ( d735 )
        d1102 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1102 = ( ( Bool -> Bool ) ∋ ( ( λ x11030 -> if x11030 then x11030 else x11030 ) ) ) $ ( if true then true else d145 )
        d1104 : ( ( Set -> Set ) ∋ ( ( λ x11060 -> ( ( Set -> Set ) ∋ ( ( λ x11070 -> if false then Bool else Bool ) ) ) $ ( x11060 ) ) ) ) $ ( if false then Bool else Bool )
        d1104 = ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> if d259 then d133 else false ) ) ) $ ( if d878 then false else true )
        d1108 : if false then ( ( Set -> Set ) ∋ ( ( λ x11110 -> x11110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11120 -> Bool ) ) ) $ ( Bool )
        d1108 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x11090 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> false ) ) ) $ ( false )
        d1113 : ( ( Set -> Set ) ∋ ( ( λ x11150 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1113 = if if true then false else d76 then ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> false ) ) ) $ ( d374 ) else if d419 then d718 else d1063
        d1116 : if false then ( ( Set -> Set ) ∋ ( ( λ x11200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11210 -> x11210 ) ) ) $ ( Bool )
        d1116 = if ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> x11170 ) ) ) $ ( d11 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11180 -> true ) ) ) $ ( d243 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> x11190 ) ) ) $ ( true )
        d1122 : ( ( Set -> Set ) ∋ ( ( λ x11240 -> ( ( Set -> Set ) ∋ ( ( λ x11250 -> if true then x11240 else x11250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1122 = if if d292 then d239 else false then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> d1022 ) ) ) $ ( d415 )
        d1126 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1126 = if ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> false ) ) ) $ ( d303 ) then if true then true else d832 else ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> d171 ) ) ) $ ( d99 )
        d1129 : if true then ( ( Set -> Set ) ∋ ( ( λ x11310 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1129 = ( ( Bool -> Bool ) ∋ ( ( λ x11300 -> if d275 then d687 else d1116 ) ) ) $ ( if d23 then false else false )
        d1132 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1132 = ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> if d851 then x11330 else x11330 ) ) ) $ ( if true then false else false )
        d1134 : ( ( Set -> Set ) ∋ ( ( λ x11370 -> ( ( Set -> Set ) ∋ ( ( λ x11380 -> if true then x11370 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1134 = if if false then true else d216 then ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> x11350 ) ) ) $ ( d662 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11360 -> d929 ) ) ) $ ( false )
        d1139 : ( ( Set -> Set ) ∋ ( ( λ x11410 -> ( ( Set -> Set ) ∋ ( ( λ x11420 -> if true then Bool else x11410 ) ) ) $ ( x11410 ) ) ) ) $ ( if true then Bool else Bool )
        d1139 = if ( ( Bool -> Bool ) ∋ ( ( λ x11400 -> d1018 ) ) ) $ ( d292 ) then if d1129 then false else false else if d1129 then false else d1098
        d1143 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1143 = ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> if d1129 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d802 then d653 else d243 )
        d1146 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11490 -> Bool ) ) ) $ ( Bool )
        d1146 = ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> if d667 then x11470 else d455 ) ) ) $ ( x11470 ) ) ) ) $ ( if d774 then d966 else d694 )
        d1150 : ( ( Set -> Set ) ∋ ( ( λ x11520 -> ( ( Set -> Set ) ∋ ( ( λ x11530 -> if false then Bool else x11520 ) ) ) $ ( x11520 ) ) ) ) $ ( if false then Bool else Bool )
        d1150 = if ( ( Bool -> Bool ) ∋ ( ( λ x11510 -> true ) ) ) $ ( d1022 ) then if d997 then d28 else false else if true then false else false
        d1154 : ( ( Set -> Set ) ∋ ( ( λ x11560 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1154 = ( ( Bool -> Bool ) ∋ ( ( λ x11550 -> if d544 then false else false ) ) ) $ ( if false then d473 else d943 )
        d1157 : ( ( Set -> Set ) ∋ ( ( λ x11600 -> ( ( Set -> Set ) ∋ ( ( λ x11610 -> if false then Bool else x11610 ) ) ) $ ( x11600 ) ) ) ) $ ( if false then Bool else Bool )
        d1157 = ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> if false then false else false ) ) ) $ ( d891 ) ) ) ) $ ( if true then false else true )
        d1162 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11650 -> x11650 ) ) ) $ ( Bool )
        d1162 = ( ( Bool -> Bool ) ∋ ( ( λ x11630 -> ( ( Bool -> Bool ) ∋ ( ( λ x11640 -> if d357 then true else x11630 ) ) ) $ ( d556 ) ) ) ) $ ( if false then d947 else true )
        d1166 : if true then ( ( Set -> Set ) ∋ ( ( λ x11680 -> x11680 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1166 = ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> if false then x11670 else x11670 ) ) ) $ ( if d415 then d1008 else d1146 )
        d1169 : ( ( Set -> Set ) ∋ ( ( λ x11710 -> ( ( Set -> Set ) ∋ ( ( λ x11720 -> if false then Bool else Bool ) ) ) $ ( x11710 ) ) ) ) $ ( if false then Bool else Bool )
        d1169 = ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> if d285 then d817 else d556 ) ) ) $ ( if true then d299 else true )
        d1173 : ( ( Set -> Set ) ∋ ( ( λ x11760 -> if false then x11760 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1173 = if if true then false else d50 then ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> x11740 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> d406 ) ) ) $ ( d216 )
        d1177 : ( ( Set -> Set ) ∋ ( ( λ x11790 -> ( ( Set -> Set ) ∋ ( ( λ x11800 -> if true then x11800 else Bool ) ) ) $ ( x11790 ) ) ) ) $ ( if false then Bool else Bool )
        d1177 = if ( ( Bool -> Bool ) ∋ ( ( λ x11780 -> x11780 ) ) ) $ ( false ) then if false then d19 else d762 else if d138 then false else false
        d1181 : if false then ( ( Set -> Set ) ∋ ( ( λ x11830 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1181 = ( ( Bool -> Bool ) ∋ ( ( λ x11820 -> if false then true else x11820 ) ) ) $ ( if true then d1098 else true )
        d1184 : if false then ( ( Set -> Set ) ∋ ( ( λ x11860 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1184 = if ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> x11850 ) ) ) $ ( true ) then if d983 then d925 else d130 else if true then d246 else true
        d1187 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1187 = ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> if x11880 then x11880 else true ) ) ) $ ( if false then true else d1052 )
        d1189 : if true then ( ( Set -> Set ) ∋ ( ( λ x11930 -> x11930 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1189 = if ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> x11900 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11910 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> d486 ) ) ) $ ( true )
        d1194 : ( ( Set -> Set ) ∋ ( ( λ x11960 -> ( ( Set -> Set ) ∋ ( ( λ x11970 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1194 = ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> if d1014 then x11950 else x11950 ) ) ) $ ( if true then false else d891 )
        d1198 : ( ( Set -> Set ) ∋ ( ( λ x12010 -> if true then Bool else x12010 ) ) ) $ ( if true then Bool else Bool )
        d1198 = ( ( Bool -> Bool ) ∋ ( ( λ x11990 -> ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> if d23 then x11990 else x12000 ) ) ) $ ( x11990 ) ) ) ) $ ( if d943 then false else d994 )
        d1202 : ( ( Set -> Set ) ∋ ( ( λ x12040 -> ( ( Set -> Set ) ∋ ( ( λ x12050 -> if false then x12050 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1202 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> x12030 ) ) ) $ ( false ) else if d726 then true else false
        d1206 : ( ( Set -> Set ) ∋ ( ( λ x12070 -> ( ( Set -> Set ) ∋ ( ( λ x12080 -> if true then x12080 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1206 = if if false then false else d832 then if d907 then true else false else if true then true else false
        d1209 : ( ( Set -> Set ) ∋ ( ( λ x12130 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1209 = if ( ( Bool -> Bool ) ∋ ( ( λ x12100 -> x12100 ) ) ) $ ( d527 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12110 -> x12110 ) ) ) $ ( d259 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> true ) ) ) $ ( true )
        d1214 : ( ( Set -> Set ) ∋ ( ( λ x12180 -> if false then Bool else x12180 ) ) ) $ ( if false then Bool else Bool )
        d1214 = if ( ( Bool -> Bool ) ∋ ( ( λ x12150 -> x12150 ) ) ) $ ( d1076 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> d1134 ) ) ) $ ( d307 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> true ) ) ) $ ( d210 )
        d1219 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1219 = ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> if d886 then d730 else true ) ) ) $ ( x12200 ) ) ) ) $ ( if false then d299 else d1011 )
        d1222 : ( ( Set -> Set ) ∋ ( ( λ x12240 -> if false then Bool else x12240 ) ) ) $ ( if true then Bool else Bool )
        d1222 = ( ( Bool -> Bool ) ∋ ( ( λ x12230 -> if d67 then x12230 else true ) ) ) $ ( if d289 then false else d627 )
        d1225 : ( ( Set -> Set ) ∋ ( ( λ x12270 -> ( ( Set -> Set ) ∋ ( ( λ x12280 -> if false then x12270 else x12280 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1225 = ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> if d878 then false else true ) ) ) $ ( if false then d979 else d895 )
        d1229 : ( ( Set -> Set ) ∋ ( ( λ x12310 -> ( ( Set -> Set ) ∋ ( ( λ x12320 -> if true then Bool else x12320 ) ) ) $ ( x12310 ) ) ) ) $ ( if false then Bool else Bool )
        d1229 = ( ( Bool -> Bool ) ∋ ( ( λ x12300 -> if d463 then d263 else false ) ) ) $ ( if true then d490 else d378 )
        d1233 : ( ( Set -> Set ) ∋ ( ( λ x12360 -> if false then x12360 else x12360 ) ) ) $ ( if true then Bool else Bool )
        d1233 = if ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> x12340 ) ) ) $ ( true ) then if d1143 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x12350 -> d841 ) ) ) $ ( true )
        d1237 : if true then ( ( Set -> Set ) ∋ ( ( λ x12390 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1237 = ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> if true then x12380 else false ) ) ) $ ( if true then d667 else d1108 )
        d1240 : if false then ( ( Set -> Set ) ∋ ( ( λ x12420 -> x12420 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1240 = if ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> d793 ) ) ) $ ( true ) then if false then true else false else if true then true else d136
        d1243 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12450 -> Bool ) ) ) $ ( Bool )
        d1243 = ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> if x12440 then true else true ) ) ) $ ( if d748 then d330 else d855 )
        d1246 : ( ( Set -> Set ) ∋ ( ( λ x12480 -> ( ( Set -> Set ) ∋ ( ( λ x12490 -> if true then x12480 else x12480 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1246 = ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> if false then false else false ) ) ) $ ( if d1166 then d647 else false )
        d1250 : if true then ( ( Set -> Set ) ∋ ( ( λ x12530 -> x12530 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12540 -> Bool ) ) ) $ ( Bool )
        d1250 = if ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> d571 ) ) ) $ ( d899 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> x12520 ) ) ) $ ( d851 ) else if true then d463 else d855
        d1255 : ( ( Set -> Set ) ∋ ( ( λ x12580 -> if true then x12580 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1255 = ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> if x12560 then d23 else true ) ) ) $ ( x12560 ) ) ) ) $ ( if d704 then d657 else d958 )
        d1259 : ( ( Set -> Set ) ∋ ( ( λ x12620 -> if true then x12620 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1259 = ( ( Bool -> Bool ) ∋ ( ( λ x12600 -> ( ( Bool -> Bool ) ∋ ( ( λ x12610 -> if true then true else d918 ) ) ) $ ( false ) ) ) ) $ ( if false then d486 else d1000 )
        d1263 : ( ( Set -> Set ) ∋ ( ( λ x12660 -> if true then x12660 else x12660 ) ) ) $ ( if false then Bool else Bool )
        d1263 = ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> ( ( Bool -> Bool ) ∋ ( ( λ x12650 -> if d378 then d532 else x12640 ) ) ) $ ( false ) ) ) ) $ ( if d685 then true else d473 )
        d1267 : ( ( Set -> Set ) ∋ ( ( λ x12690 -> if false then x12690 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1267 = ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> if true then x12680 else x12680 ) ) ) $ ( if true then false else d210 )
        d1270 : ( ( Set -> Set ) ∋ ( ( λ x12720 -> ( ( Set -> Set ) ∋ ( ( λ x12730 -> if true then Bool else x12720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1270 = if if false then d685 else false then if d871 then false else d295 else ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> x12710 ) ) ) $ ( d1129 )
        d1274 : ( ( Set -> Set ) ∋ ( ( λ x12770 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1274 = ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> ( ( Bool -> Bool ) ∋ ( ( λ x12760 -> if true then true else x12750 ) ) ) $ ( false ) ) ) ) $ ( if d364 then d1267 else true )
        d1278 : if true then ( ( Set -> Set ) ∋ ( ( λ x12810 -> x12810 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1278 = if ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> x12790 ) ) ) $ ( d667 ) then if true then d130 else false else ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> d467 ) ) ) $ ( d505 )
        d1282 : if false then ( ( Set -> Set ) ∋ ( ( λ x12840 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1282 = ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> if true then true else false ) ) ) $ ( if d80 then d770 else d667 )
        d1285 : ( ( Set -> Set ) ∋ ( ( λ x12870 -> ( ( Set -> Set ) ∋ ( ( λ x12880 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1285 = if if false then false else d641 then ( ( Bool -> Bool ) ∋ ( ( λ x12860 -> true ) ) ) $ ( d907 ) else if false then d1194 else d943
        d1289 : ( ( Set -> Set ) ∋ ( ( λ x12920 -> ( ( Set -> Set ) ∋ ( ( λ x12930 -> if false then x12930 else x12920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1289 = if ( ( Bool -> Bool ) ∋ ( ( λ x12900 -> true ) ) ) $ ( d1150 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> false ) ) ) $ ( d1025 ) else if d571 then d1209 else true
        d1294 : ( ( Set -> Set ) ∋ ( ( λ x12970 -> ( ( Set -> Set ) ∋ ( ( λ x12980 -> if false then x12980 else x12970 ) ) ) $ ( x12970 ) ) ) ) $ ( if false then Bool else Bool )
        d1294 = if ( ( Bool -> Bool ) ∋ ( ( λ x12950 -> x12950 ) ) ) $ ( false ) then if d1225 then true else d532 else ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> true ) ) ) $ ( d548 )
        d1299 : ( ( Set -> Set ) ∋ ( ( λ x13020 -> ( ( Set -> Set ) ∋ ( ( λ x13030 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1299 = ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> if d809 then d1134 else d243 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d192 )
        d1304 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1304 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13050 -> true ) ) ) $ ( d292 ) else if d1139 then true else true
        d1306 : ( ( Set -> Set ) ∋ ( ( λ x13070 -> ( ( Set -> Set ) ∋ ( ( λ x13080 -> if true then x13070 else x13070 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1306 = if if d1104 then d1222 else d523 then if true then d498 else d1198 else if false then true else true
        d1309 : if true then ( ( Set -> Set ) ∋ ( ( λ x13130 -> x13130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1309 = if ( ( Bool -> Bool ) ∋ ( ( λ x13100 -> false ) ) ) $ ( d1150 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> x13110 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> d817 ) ) ) $ ( false )
        d1314 : if true then ( ( Set -> Set ) ∋ ( ( λ x13170 -> x13170 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1314 = if ( ( Bool -> Bool ) ∋ ( ( λ x13150 -> d1162 ) ) ) $ ( d328 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> false ) ) ) $ ( true ) else if d303 then d388 else false
        d1318 : ( ( Set -> Set ) ∋ ( ( λ x13200 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1318 = ( ( Bool -> Bool ) ∋ ( ( λ x13190 -> if d698 then d436 else d1246 ) ) ) $ ( if true then d653 else d433 )
        d1321 : if true then ( ( Set -> Set ) ∋ ( ( λ x13230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13240 -> x13240 ) ) ) $ ( Bool )
        d1321 = if ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> false ) ) ) $ ( true ) then if true then false else false else if false then false else d1008
        d1325 : ( ( Set -> Set ) ∋ ( ( λ x13280 -> if false then Bool else x13280 ) ) ) $ ( if false then Bool else Bool )
        d1325 = if ( ( Bool -> Bool ) ∋ ( ( λ x13260 -> false ) ) ) $ ( d827 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13270 -> false ) ) ) $ ( false ) else if d952 then false else d891
        d1329 : ( ( Set -> Set ) ∋ ( ( λ x13310 -> ( ( Set -> Set ) ∋ ( ( λ x13320 -> if true then x13320 else Bool ) ) ) $ ( x13310 ) ) ) ) $ ( if true then Bool else Bool )
        d1329 = if if false then d160 else d532 then if d415 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x13300 -> false ) ) ) $ ( d196 )
        d1333 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1333 = if ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> x13340 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> d886 ) ) ) $ ( d338 )
        d1337 : if true then ( ( Set -> Set ) ∋ ( ( λ x13390 -> x13390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13400 -> Bool ) ) ) $ ( Bool )
        d1337 = ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> if d423 then x13380 else x13380 ) ) ) $ ( if d1263 then d866 else d110 )
        d1341 : ( ( Set -> Set ) ∋ ( ( λ x13420 -> ( ( Set -> Set ) ∋ ( ( λ x13430 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1341 = if if d338 then d704 else true then if d596 then false else false else if d50 then d142 else d1329
        d1344 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13470 -> Bool ) ) ) $ ( Bool )
        d1344 = ( ( Bool -> Bool ) ∋ ( ( λ x13450 -> ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> if d943 then true else d708 ) ) ) $ ( x13450 ) ) ) ) $ ( if false then d1014 else d983 )
        d1348 : ( ( Set -> Set ) ∋ ( ( λ x13500 -> ( ( Set -> Set ) ∋ ( ( λ x13510 -> if false then x13500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1348 = ( ( Bool -> Bool ) ∋ ( ( λ x13490 -> if x13490 then x13490 else x13490 ) ) ) $ ( if true then true else true )
        d1352 : if false then ( ( Set -> Set ) ∋ ( ( λ x13550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13560 -> Bool ) ) ) $ ( Bool )
        d1352 = if ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> false ) ) ) $ ( d653 ) then if d927 then d198 else false else ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> x13540 ) ) ) $ ( true )
        d1357 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13600 -> x13600 ) ) ) $ ( Bool )
        d1357 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> d155 ) ) ) $ ( d80 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> d619 ) ) ) $ ( d395 )
        d1361 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1361 = if ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> false ) ) ) $ ( d171 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13640 -> x13640 ) ) ) $ ( d571 )
        d1365 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( Bool )
        d1365 = if if false then d799 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> d270 ) ) ) $ ( d623 ) else if true then true else true
        d1368 : ( ( Set -> Set ) ∋ ( ( λ x13700 -> if false then Bool else x13700 ) ) ) $ ( if false then Bool else Bool )
        d1368 = ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> if d1025 then false else false ) ) ) $ ( if d934 then false else d563 )
        d1371 : ( ( Set -> Set ) ∋ ( ( λ x13730 -> ( ( Set -> Set ) ∋ ( ( λ x13740 -> if true then x13730 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1371 = ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> if true then d901 else d992 ) ) ) $ ( if d138 then true else d1132 )
        d1375 : ( ( Set -> Set ) ∋ ( ( λ x13790 -> ( ( Set -> Set ) ∋ ( ( λ x13800 -> if false then x13790 else x13790 ) ) ) $ ( x13790 ) ) ) ) $ ( if false then Bool else Bool )
        d1375 = if ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13770 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13780 -> true ) ) ) $ ( d149 )
        d1381 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1381 = if ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> d1091 ) ) ) $ ( d740 ) then if d523 then true else true else if d23 then false else d983
        d1383 : ( ( Set -> Set ) ∋ ( ( λ x13850 -> if true then x13850 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1383 = ( ( Bool -> Bool ) ∋ ( ( λ x13840 -> if d395 then x13840 else d958 ) ) ) $ ( if false then true else d369 )
        d1386 : ( ( Set -> Set ) ∋ ( ( λ x13880 -> ( ( Set -> Set ) ∋ ( ( λ x13890 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1386 = if if false then d1314 else d855 then if d115 then d657 else true else ( ( Bool -> Bool ) ∋ ( ( λ x13870 -> x13870 ) ) ) $ ( true )
        d1390 : if true then ( ( Set -> Set ) ∋ ( ( λ x13930 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13940 -> Bool ) ) ) $ ( Bool )
        d1390 = ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> if d1259 then x13910 else d509 ) ) ) $ ( x13910 ) ) ) ) $ ( if false then d579 else d1102 )
        d1395 : if true then ( ( Set -> Set ) ∋ ( ( λ x13970 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1395 = ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> if true then x13960 else true ) ) ) $ ( if true then d1 else false )
        d1398 : if false then ( ( Set -> Set ) ∋ ( ( λ x14010 -> x14010 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1398 = if if false then true else d270 then ( ( Bool -> Bool ) ∋ ( ( λ x13990 -> d596 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> d402 ) ) ) $ ( d253 )
        d1402 : ( ( Set -> Set ) ∋ ( ( λ x14050 -> ( ( Set -> Set ) ∋ ( ( λ x14060 -> if true then Bool else x14060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1402 = ( ( Bool -> Bool ) ∋ ( ( λ x14030 -> ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> if d28 then d1146 else x14040 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d1407 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1407 = if if d1214 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> x14080 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> true ) ) ) $ ( d979 )
        d1410 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14130 -> Bool ) ) ) $ ( Bool )
        d1410 = ( ( Bool -> Bool ) ∋ ( ( λ x14110 -> ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> if d270 then x14120 else x14120 ) ) ) $ ( true ) ) ) ) $ ( if d799 then false else false )
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14160 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1414 = if ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> true ) ) ) $ ( true ) then if d142 then false else true else if false then true else false
        d1417 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14200 -> Bool ) ) ) $ ( Bool )
        d1417 = ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> if true then x14180 else true ) ) ) $ ( d235 ) ) ) ) $ ( if true then d571 else false )
        d1421 : ( ( Set -> Set ) ∋ ( ( λ x14230 -> ( ( Set -> Set ) ∋ ( ( λ x14240 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1421 = if if false then d912 else d246 then ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> d582 ) ) ) $ ( d836 ) else if d167 then d437 else d455
        d1425 : ( ( Set -> Set ) ∋ ( ( λ x14280 -> if true then Bool else x14280 ) ) ) $ ( if true then Bool else Bool )
        d1425 = if ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> x14260 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14270 -> x14270 ) ) ) $ ( false ) else if d704 then d931 else true
        d1429 : if false then ( ( Set -> Set ) ∋ ( ( λ x14320 -> x14320 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1429 = ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> if x14310 then d665 else false ) ) ) $ ( d344 ) ) ) ) $ ( if d1177 then d19 else true )
        d1433 : if false then ( ( Set -> Set ) ∋ ( ( λ x14350 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1433 = ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> if d1368 then d790 else x14340 ) ) ) $ ( if false then d136 else true )
        d1436 : ( ( Set -> Set ) ∋ ( ( λ x14380 -> if true then x14380 else x14380 ) ) ) $ ( if false then Bool else Bool )
        d1436 = ( ( Bool -> Bool ) ∋ ( ( λ x14370 -> if d1091 then x14370 else x14370 ) ) ) $ ( if d1104 then d799 else false )
        d1439 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1439 = ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> if x14410 then d19 else x14400 ) ) ) $ ( true ) ) ) ) $ ( if true then d682 else d1402 )
        d1442 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14450 -> x14450 ) ) ) $ ( Bool )
        d1442 = if if false then d1225 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> d1 ) ) ) $ ( d452 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> false ) ) ) $ ( d532 )
        d1446 : if false then ( ( Set -> Set ) ∋ ( ( λ x14490 -> x14490 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1446 = ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> if false then false else true ) ) ) $ ( false ) ) ) ) $ ( if d958 then true else d1 )
        d1450 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14520 -> x14520 ) ) ) $ ( Bool )
        d1450 = ( ( Bool -> Bool ) ∋ ( ( λ x14510 -> if true then d735 else d1166 ) ) ) $ ( if true then d1414 else d805 )
        d1453 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14560 -> x14560 ) ) ) $ ( Bool )
        d1453 = if if true then d571 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> false ) ) ) $ ( d255 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14550 -> x14550 ) ) ) $ ( d657 )
        d1457 : if true then ( ( Set -> Set ) ∋ ( ( λ x14590 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1457 = if if true then d11 else d431 then ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> d1209 ) ) ) $ ( d1008 ) else if d1126 then true else true
        d1460 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1460 = ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> if x14610 then false else x14620 ) ) ) $ ( x14610 ) ) ) ) $ ( if d740 then false else d369 )
        d1463 : ( ( Set -> Set ) ∋ ( ( λ x14660 -> ( ( Set -> Set ) ∋ ( ( λ x14670 -> if false then Bool else x14670 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1463 = if ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> false ) ) ) $ ( true ) then if d1108 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> x14650 ) ) ) $ ( d437 )
        d1468 : ( ( Set -> Set ) ∋ ( ( λ x14710 -> if true then x14710 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1468 = ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> ( ( Bool -> Bool ) ∋ ( ( λ x14700 -> if true then x14700 else x14690 ) ) ) $ ( false ) ) ) ) $ ( if d1189 then d328 else d1 )
        d1472 : ( ( Set -> Set ) ∋ ( ( λ x14750 -> ( ( Set -> Set ) ∋ ( ( λ x14760 -> if false then x14750 else x14760 ) ) ) $ ( x14750 ) ) ) ) $ ( if false then Bool else Bool )
        d1472 = if ( ( Bool -> Bool ) ∋ ( ( λ x14730 -> false ) ) ) $ ( true ) then if d1157 then true else d802 else ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> true ) ) ) $ ( true )
        d1477 : if true then ( ( Set -> Set ) ∋ ( ( λ x14790 -> x14790 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1477 = ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> if true then false else x14780 ) ) ) $ ( if d1375 then d722 else d320 )
        d1480 : ( ( Set -> Set ) ∋ ( ( λ x14830 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1480 = ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> if x14810 then false else x14810 ) ) ) $ ( x14810 ) ) ) ) $ ( if d1278 then false else d452 )
        d1484 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1484 = ( ( Bool -> Bool ) ∋ ( ( λ x14850 -> if true then true else d899 ) ) ) $ ( if false then d730 else false )
        d1486 : if true then ( ( Set -> Set ) ∋ ( ( λ x14890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14900 -> x14900 ) ) ) $ ( Bool )
        d1486 = if if d1 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> x14870 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14880 -> x14880 ) ) ) $ ( d1381 )
        d1491 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14930 -> Bool ) ) ) $ ( Bool )
        d1491 = ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> if true then x14920 else false ) ) ) $ ( if d46 then true else false )
        d1494 : if true then ( ( Set -> Set ) ∋ ( ( λ x14960 -> x14960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14970 -> x14970 ) ) ) $ ( Bool )
        d1494 = ( ( Bool -> Bool ) ∋ ( ( λ x14950 -> if x14950 then x14950 else d532 ) ) ) $ ( if true then d901 else true )
        d1498 : ( ( Set -> Set ) ∋ ( ( λ x15000 -> if true then Bool else x15000 ) ) ) $ ( if false then Bool else Bool )
        d1498 = ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> if true then d958 else d1442 ) ) ) $ ( if true then d320 else d1047 )
        d1501 : ( ( Set -> Set ) ∋ ( ( λ x15030 -> ( ( Set -> Set ) ∋ ( ( λ x15040 -> if false then Bool else x15030 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1501 = ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> if false then x15020 else d130 ) ) ) $ ( if d171 then d495 else false )
        d1505 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1505 = if if false then false else d512 then ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> x15060 ) ) ) $ ( true ) else if d641 then true else d1491
        d1507 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1507 = ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> ( ( Bool -> Bool ) ∋ ( ( λ x15090 -> if x15090 then x15090 else d541 ) ) ) $ ( x15080 ) ) ) ) $ ( if d328 then true else d1102 )
        d1510 : if true then ( ( Set -> Set ) ∋ ( ( λ x15120 -> x15120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1510 = ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> if true then x15110 else x15110 ) ) ) $ ( if true then false else d1104 )
        d1513 : if true then ( ( Set -> Set ) ∋ ( ( λ x15160 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1513 = ( ( Bool -> Bool ) ∋ ( ( λ x15140 -> ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> if d1460 then d1270 else x15140 ) ) ) $ ( true ) ) ) ) $ ( if false then d846 else d757 )
        d1517 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1517 = if ( ( Bool -> Bool ) ∋ ( ( λ x15180 -> x15180 ) ) ) $ ( d198 ) then if d1162 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> x15190 ) ) ) $ ( true )
        d1520 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1520 = ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> if d582 then d91 else x15210 ) ) ) $ ( if false then d437 else d1202 )
        d1522 : ( ( Set -> Set ) ∋ ( ( λ x15250 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1522 = ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> if false then x15240 else true ) ) ) $ ( x15230 ) ) ) ) $ ( if d512 then false else false )
        d1526 : if true then ( ( Set -> Set ) ∋ ( ( λ x15290 -> x15290 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1526 = ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> if x15270 then false else false ) ) ) $ ( x15270 ) ) ) ) $ ( if d495 then d433 else true )
        d1530 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1530 = if if d1067 then d149 else d1407 then if true then d925 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> d1314 ) ) ) $ ( d1237 )
        d1532 : if true then ( ( Set -> Set ) ∋ ( ( λ x15340 -> x15340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1532 = ( ( Bool -> Bool ) ∋ ( ( λ x15330 -> if d1386 then x15330 else x15330 ) ) ) $ ( if d220 then true else d490 )
        d1535 : ( ( Set -> Set ) ∋ ( ( λ x15370 -> ( ( Set -> Set ) ∋ ( ( λ x15380 -> if false then x15370 else x15370 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1535 = ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> if d637 then false else x15360 ) ) ) $ ( if d1294 then d559 else d1436 )
        d1539 : ( ( Set -> Set ) ∋ ( ( λ x15420 -> if false then Bool else x15420 ) ) ) $ ( if true then Bool else Bool )
        d1539 = ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> if x15410 then true else false ) ) ) $ ( d653 ) ) ) ) $ ( if true then true else d142 )
        d1543 : ( ( Set -> Set ) ∋ ( ( λ x15450 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1543 = if if true then d1022 else d478 then if d1468 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> x15440 ) ) ) $ ( d1029 )
        d1546 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1546 = if ( ( Bool -> Bool ) ∋ ( ( λ x15470 -> x15470 ) ) ) $ ( false ) then if false then d1530 else d250 else ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> d516 ) ) ) $ ( d433 )
        d1549 : if false then ( ( Set -> Set ) ∋ ( ( λ x15510 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15520 -> Bool ) ) ) $ ( Bool )
        d1549 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> false ) ) ) $ ( true ) else if d253 then d1189 else d167
        d1553 : ( ( Set -> Set ) ∋ ( ( λ x15570 -> ( ( Set -> Set ) ∋ ( ( λ x15580 -> if true then Bool else x15570 ) ) ) $ ( x15570 ) ) ) ) $ ( if false then Bool else Bool )
        d1553 = if ( ( Bool -> Bool ) ∋ ( ( λ x15540 -> x15540 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> x15550 ) ) ) $ ( d1450 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> true ) ) ) $ ( d979 )
        d1559 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15600 -> Bool ) ) ) $ ( Bool )
        d1559 = if if d388 then d934 else d1206 then if d1243 then d566 else true else if true then d1429 else true
        d1561 : ( ( Set -> Set ) ∋ ( ( λ x15650 -> if true then Bool else x15650 ) ) ) $ ( if false then Bool else Bool )
        d1561 = if ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> x15620 ) ) ) $ ( d1285 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> d67 ) ) ) $ ( d822 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15640 -> x15640 ) ) ) $ ( true )
        d1566 : ( ( Set -> Set ) ∋ ( ( λ x15690 -> ( ( Set -> Set ) ∋ ( ( λ x15700 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1566 = if ( ( Bool -> Bool ) ∋ ( ( λ x15670 -> x15670 ) ) ) $ ( d532 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15680 -> x15680 ) ) ) $ ( false ) else if true then d1014 else false
        d1571 : ( ( Set -> Set ) ∋ ( ( λ x15730 -> if false then Bool else x15730 ) ) ) $ ( if false then Bool else Bool )
        d1571 = ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> if x15720 then x15720 else false ) ) ) $ ( if d1146 then d250 else d1067 )
        d1574 : if true then ( ( Set -> Set ) ∋ ( ( λ x15770 -> x15770 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1574 = ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> if true then x15760 else true ) ) ) $ ( d23 ) ) ) ) $ ( if true then true else false )
        d1578 : ( ( Set -> Set ) ∋ ( ( λ x15810 -> ( ( Set -> Set ) ∋ ( ( λ x15820 -> if true then x15820 else Bool ) ) ) $ ( x15810 ) ) ) ) $ ( if true then Bool else Bool )
        d1578 = ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> ( ( Bool -> Bool ) ∋ ( ( λ x15800 -> if false then d566 else x15790 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d250 )
        d1583 : ( ( Set -> Set ) ∋ ( ( λ x15850 -> if false then x15850 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1583 = if if false then d701 else true then if d614 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> d85 ) ) ) $ ( true )
        d1586 : if true then ( ( Set -> Set ) ∋ ( ( λ x15890 -> x15890 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1586 = ( ( Bool -> Bool ) ∋ ( ( λ x15870 -> ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> if true then x15880 else d1225 ) ) ) $ ( d809 ) ) ) ) $ ( if false then d1263 else false )
        d1590 : if false then ( ( Set -> Set ) ∋ ( ( λ x15930 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1590 = if if d1574 then d582 else d437 then ( ( Bool -> Bool ) ∋ ( ( λ x15910 -> d858 ) ) ) $ ( d685 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> true ) ) ) $ ( d1229 )
        d1594 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1594 = ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> if x15950 then d423 else d450 ) ) ) $ ( true ) ) ) ) $ ( if d28 then false else true )
        d1597 : ( ( Set -> Set ) ∋ ( ( λ x16000 -> ( ( Set -> Set ) ∋ ( ( λ x16010 -> if false then x16000 else x16010 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1597 = ( ( Bool -> Bool ) ∋ ( ( λ x15980 -> ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> if x15990 then false else d958 ) ) ) $ ( x15980 ) ) ) ) $ ( if d918 then d1505 else true )
        d1602 : if false then ( ( Set -> Set ) ∋ ( ( λ x16040 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1602 = ( ( Bool -> Bool ) ∋ ( ( λ x16030 -> if d1146 then true else d947 ) ) ) $ ( if false then d1181 else d163 )
        d1605 : ( ( Set -> Set ) ∋ ( ( λ x16070 -> ( ( Set -> Set ) ∋ ( ( λ x16080 -> if false then Bool else x16080 ) ) ) $ ( x16070 ) ) ) ) $ ( if true then Bool else Bool )
        d1605 = ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> if d1436 then x16060 else true ) ) ) $ ( if d228 then d827 else false )
        d1609 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16100 -> x16100 ) ) ) $ ( Bool )
        d1609 = if if d267 then true else d1425 then if d243 then true else false else if true then d267 else false
        d1611 : ( ( Set -> Set ) ∋ ( ( λ x16150 -> if false then x16150 else x16150 ) ) ) $ ( if true then Bool else Bool )
        d1611 = if ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> x16120 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> d858 ) ) ) $ ( d1341 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> x16140 ) ) ) $ ( false )
        d1616 : ( ( Set -> Set ) ∋ ( ( λ x16190 -> ( ( Set -> Set ) ∋ ( ( λ x16200 -> if false then Bool else Bool ) ) ) $ ( x16190 ) ) ) ) $ ( if true then Bool else Bool )
        d1616 = if ( ( Bool -> Bool ) ∋ ( ( λ x16170 -> d1530 ) ) ) $ ( d1398 ) then if d822 then false else d1368 else ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> d498 ) ) ) $ ( true )
        d1621 : if false then ( ( Set -> Set ) ∋ ( ( λ x16250 -> x16250 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1621 = if ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16230 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> false ) ) ) $ ( true )
        d1626 : ( ( Set -> Set ) ∋ ( ( λ x16280 -> if false then x16280 else x16280 ) ) ) $ ( if true then Bool else Bool )
        d1626 = if ( ( Bool -> Bool ) ∋ ( ( λ x16270 -> x16270 ) ) ) $ ( d1375 ) then if false then d1173 else false else if d974 then d50 else true
        d1629 : ( ( Set -> Set ) ∋ ( ( λ x16330 -> if false then Bool else x16330 ) ) ) $ ( if false then Bool else Bool )
        d1629 = if ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> d827 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> d997 ) ) ) $ ( d431 )
        d1634 : ( ( Set -> Set ) ∋ ( ( λ x16360 -> ( ( Set -> Set ) ∋ ( ( λ x16370 -> if true then x16360 else x16370 ) ) ) $ ( x16360 ) ) ) ) $ ( if false then Bool else Bool )
        d1634 = ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> if x16350 then true else x16350 ) ) ) $ ( if true then true else false )
        d1638 : ( ( Set -> Set ) ∋ ( ( λ x16400 -> ( ( Set -> Set ) ∋ ( ( λ x16410 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1638 = if if false then false else d1047 then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> true ) ) ) $ ( d777 )
        d1642 : if false then ( ( Set -> Set ) ∋ ( ( λ x16450 -> x16450 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1642 = if ( ( Bool -> Bool ) ∋ ( ( λ x16430 -> d1571 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> x16440 ) ) ) $ ( false ) else if d1510 then d576 else true
        d1646 : if false then ( ( Set -> Set ) ∋ ( ( λ x16490 -> x16490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16500 -> x16500 ) ) ) $ ( Bool )
        d1646 = ( ( Bool -> Bool ) ∋ ( ( λ x16470 -> ( ( Bool -> Bool ) ∋ ( ( λ x16480 -> if d96 then d1433 else d921 ) ) ) $ ( x16470 ) ) ) ) $ ( if false then true else d1597 )
        d1651 : ( ( Set -> Set ) ∋ ( ( λ x16540 -> if true then x16540 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1651 = ( ( Bool -> Bool ) ∋ ( ( λ x16520 -> ( ( Bool -> Bool ) ∋ ( ( λ x16530 -> if true then d563 else x16530 ) ) ) $ ( d505 ) ) ) ) $ ( if d1080 then true else d1037 )
        d1655 : ( ( Set -> Set ) ∋ ( ( λ x16570 -> if false then x16570 else x16570 ) ) ) $ ( if true then Bool else Bool )
        d1655 = if if true then d1325 else false then if d123 then true else d559 else ( ( Bool -> Bool ) ∋ ( ( λ x16560 -> d1539 ) ) ) $ ( d1439 )
        d1658 : ( ( Set -> Set ) ∋ ( ( λ x16600 -> ( ( Set -> Set ) ∋ ( ( λ x16610 -> if false then x16600 else x16600 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1658 = if ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> d1067 ) ) ) $ ( d385 ) then if d665 then false else false else if true then false else false
        d1662 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1662 = ( ( Bool -> Bool ) ∋ ( ( λ x16630 -> if d509 then true else false ) ) ) $ ( if false then false else false )
        d1664 : ( ( Set -> Set ) ∋ ( ( λ x16660 -> if true then x16660 else x16660 ) ) ) $ ( if false then Bool else Bool )
        d1664 = ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> if d1543 then x16650 else true ) ) ) $ ( if false then false else d505 )
        d1667 : ( ( Set -> Set ) ∋ ( ( λ x16690 -> if true then x16690 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1667 = ( ( Bool -> Bool ) ∋ ( ( λ x16680 -> if x16680 then x16680 else d142 ) ) ) $ ( if d563 then false else d85 )
        d1670 : ( ( Set -> Set ) ∋ ( ( λ x16720 -> if false then x16720 else x16720 ) ) ) $ ( if false then Bool else Bool )
        d1670 = if ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> d385 ) ) ) $ ( d1067 ) then if false then d1304 else true else if d255 then d536 else d253
        d1673 : if false then ( ( Set -> Set ) ∋ ( ( λ x16770 -> x16770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16780 -> x16780 ) ) ) $ ( Bool )
        d1673 = if ( ( Bool -> Bool ) ∋ ( ( λ x16740 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> x16750 ) ) ) $ ( d4 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> x16760 ) ) ) $ ( d718 )
        d1679 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1679 = if if d163 then false else true then if d133 then d1194 else d50 else if d15 then false else d970
        d1680 : ( ( Set -> Set ) ∋ ( ( λ x16830 -> ( ( Set -> Set ) ∋ ( ( λ x16840 -> if false then Bool else Bool ) ) ) $ ( x16830 ) ) ) ) $ ( if true then Bool else Bool )
        d1680 = if ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> x16810 ) ) ) $ ( d1214 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16820 -> true ) ) ) $ ( d632 ) else if true then d495 else d1357
        d1685 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1685 = if ( ( Bool -> Bool ) ∋ ( ( λ x16860 -> x16860 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16870 -> d766 ) ) ) $ ( false ) else if true then false else true
        d1688 : ( ( Set -> Set ) ∋ ( ( λ x16890 -> if true then x16890 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1688 = if if false then false else true then if d1532 then d433 else d32 else if false then true else d1129
        d1690 : if true then ( ( Set -> Set ) ∋ ( ( λ x16930 -> x16930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16940 -> x16940 ) ) ) $ ( Bool )
        d1690 = ( ( Bool -> Bool ) ∋ ( ( λ x16910 -> ( ( Bool -> Bool ) ∋ ( ( λ x16920 -> if true then d851 else d822 ) ) ) $ ( x16910 ) ) ) ) $ ( if d832 then d1626 else true )
        d1695 : ( ( Set -> Set ) ∋ ( ( λ x16970 -> if true then x16970 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1695 = ( ( Bool -> Bool ) ∋ ( ( λ x16960 -> if false then x16960 else false ) ) ) $ ( if d1169 then false else true )
        d1698 : ( ( Set -> Set ) ∋ ( ( λ x17000 -> ( ( Set -> Set ) ∋ ( ( λ x17010 -> if false then Bool else Bool ) ) ) $ ( x17000 ) ) ) ) $ ( if false then Bool else Bool )
        d1698 = if if d1386 then true else true then if true then true else d136 else ( ( Bool -> Bool ) ∋ ( ( λ x16990 -> false ) ) ) $ ( d171 )
        d1702 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1702 = if if true then d1638 else true then if d667 then false else d1407 else ( ( Bool -> Bool ) ∋ ( ( λ x17030 -> x17030 ) ) ) $ ( false )
        d1704 : if false then ( ( Set -> Set ) ∋ ( ( λ x17080 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1704 = if ( ( Bool -> Bool ) ∋ ( ( λ x17050 -> x17050 ) ) ) $ ( d1605 ) then ( ( Bool -> Bool ) ∋ ( ( λ x17060 -> d335 ) ) ) $ ( d149 ) else ( ( Bool -> Bool ) ∋ ( ( λ x17070 -> d1414 ) ) ) $ ( false )
        d1709 : ( ( Set -> Set ) ∋ ( ( λ x17120 -> ( ( Set -> Set ) ∋ ( ( λ x17130 -> if true then x17120 else x17120 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1709 = if if d662 then d1041 else d253 then ( ( Bool -> Bool ) ∋ ( ( λ x17100 -> d171 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x17110 -> x17110 ) ) ) $ ( d223 )