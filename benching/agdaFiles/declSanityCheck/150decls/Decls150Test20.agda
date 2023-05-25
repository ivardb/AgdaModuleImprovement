module Decls150Test20  where
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
        d1 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then false else x30 ) ) ) $ ( x20 ) ) ) ) $ ( if true then false else true )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else x80 ) ) ) $ ( if true then Bool else Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( d1 ) then if d1 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d1 ) ) ) $ ( false )
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d1 then x100 else d5 ) ) ) $ ( d1 ) ) ) ) $ ( if false then true else d5 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then x140 else x140 ) ) ) $ ( if true then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d9 then x130 else d9 ) ) ) $ ( if false then false else true )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> if false then Bool else x170 ) ) ) $ ( x170 ) ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if true then x160 else x160 ) ) ) $ ( if false then d12 else d12 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x220 -> if true then x220 else x220 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if d5 then x210 else x200 ) ) ) $ ( x200 ) ) ) ) $ ( if true then false else false )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x250 -> if true then x250 else x250 ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d19 then d9 else d12 ) ) ) $ ( if true then d9 else true )
        d26 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool )
        d26 = if if true then d15 else true then ( ( Bool -> Bool ) ∋ ( ( λ x270 -> false ) ) ) $ ( d15 ) else ( ( Bool -> Bool ) ∋ ( ( λ x280 -> true ) ) ) $ ( false )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if x310 then x310 else x310 ) ) ) $ ( if false then d26 else false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if true then x340 else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = if if true then false else false then if true then d23 else d19 else if true then false else true
        d35 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if d23 then false else d5 ) ) ) $ ( if d33 then false else true )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> if false then x400 else x410 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = if if d15 then d1 else d26 then if d19 then d19 else false else ( ( Bool -> Bool ) ∋ ( ( λ x390 -> true ) ) ) $ ( false )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x450 -> if false then x450 else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = if ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d9 ) ) ) $ ( d30 ) then ( ( Bool -> Bool ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( false ) else if d19 then d15 else false
        d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> if true then x500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d46 = if if true then d15 else d30 then ( ( Bool -> Bool ) ∋ ( ( λ x470 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x480 -> true ) ) ) $ ( false )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> if false then x550 else Bool ) ) ) $ ( x540 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if ( ( Bool -> Bool ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( true ) then if d42 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( d15 )
        d56 : if false then if true then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if x580 then d33 else x580 ) ) ) $ ( false ) ) ) ) $ ( if d30 then d5 else d42 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if true then x620 else Bool ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if true then x600 else x600 ) ) ) $ ( d42 ) ) ) ) $ ( if true then d12 else d15 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then x660 else x660 ) ) ) $ ( if false then Bool else Bool )
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( d35 ) then if d12 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x650 -> d9 ) ) ) $ ( d23 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then x690 else x700 ) ) ) $ ( x690 ) ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if d33 then true else d59 ) ) ) $ ( if d15 then d1 else d9 )
        d71 : if true then ( ( Set -> Set ) ∋ ( ( λ x730 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if x720 then x720 else true ) ) ) $ ( if d15 then d9 else true )
        d74 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool )
        d74 = if if d71 then d59 else d59 then if d71 then d67 else false else if false then true else false
        d76 : if true then ( ( Set -> Set ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x790 -> Bool ) ) ) $ ( Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if false then x770 else d33 ) ) ) $ ( if false then true else d51 )
        d80 : if true then if false then Bool else Bool else if false then Bool else Bool
        d80 = if if d76 then false else d46 then ( ( Bool -> Bool ) ∋ ( ( λ x810 -> d19 ) ) ) $ ( false ) else if false then d46 else false
        d82 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then x850 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> ( ( Bool -> Bool ) ∋ ( ( λ x840 -> if x830 then x830 else d12 ) ) ) $ ( d26 ) ) ) ) $ ( if false then false else d15 )
        d87 : if true then if false then Bool else Bool else if false then Bool else Bool
        d87 = if ( ( Bool -> Bool ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( false ) then if d5 then d35 else d15 else ( ( Bool -> Bool ) ∋ ( ( λ x890 -> false ) ) ) $ ( false )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> if false then Bool else x940 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if d63 then x910 else d76 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d95 : if true then ( ( Set -> Set ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if d1 then x960 else d82 ) ) ) $ ( if d74 then true else false )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> if true then x1000 else x1000 ) ) ) $ ( if true then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if x990 then d71 else d19 ) ) ) $ ( if false then d90 else d76 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then x1040 else Bool ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if x1020 then d23 else false ) ) ) $ ( false ) ) ) ) $ ( if d82 then d71 else d98 )
        d105 : if false then ( ( Set -> Set ) ∋ ( ( λ x1070 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if d42 then false else false ) ) ) $ ( if d51 then d98 else d46 )
        d108 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( Bool )
        d108 = if ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> d105 ) ) ) $ ( d56 ) then if false then d105 else d35 else ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> false ) ) ) $ ( false )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> if true then x1150 else Bool ) ) ) $ ( if false then Bool else Bool )
        d112 = if ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d9 ) ) ) $ ( d76 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d90 ) ) ) $ ( d108 ) else if true then true else false
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if false then x1200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d116 = if ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> d9 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> x1180 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> true ) ) ) $ ( true )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> ( ( Set -> Set ) ∋ ( ( λ x1250 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1220 then x1220 else d19 ) ) ) $ ( x1220 ) ) ) ) $ ( if d19 then true else d87 )
        d126 : if false then ( ( Set -> Set ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1300 -> x1300 ) ) ) $ ( Bool )
        d126 = if if d80 then d87 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( d35 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> d67 ) ) ) $ ( true )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> if true then Bool else x1330 ) ) ) $ ( x1330 ) ) ) ) $ ( if false then Bool else Bool )
        d131 = if if false then true else d71 then ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( true ) else if d112 then d67 else false
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> if false then x1370 else x1370 ) ) ) $ ( if true then Bool else Bool )
        d135 = if if d26 then d101 else d87 then ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> false ) ) ) $ ( false ) else if false then d126 else d131
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> ( ( Set -> Set ) ∋ ( ( λ x1420 -> if false then x1420 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> if d108 then d67 else false ) ) ) $ ( x1390 ) ) ) ) $ ( if d12 then d19 else true )
        d143 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d143 = if ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> true ) ) ) $ ( d67 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> x1450 ) ) ) $ ( d56 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( d23 )
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> ( ( Set -> Set ) ∋ ( ( λ x1510 -> if false then x1500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> if x1490 then true else d1 ) ) ) $ ( if false then d116 else d80 )
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then x1530 else Bool ) ) ) $ ( if false then Bool else Bool )
        d152 = if if true then true else d30 then if true then true else d126 else if d74 then true else d95
        d154 : if true then ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1580 -> Bool ) ) ) $ ( Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if x1560 then true else false ) ) ) $ ( d98 ) ) ) ) $ ( if true then d152 else d1 )
        d159 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1620 -> Bool ) ) ) $ ( Bool )
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if x1610 then d126 else d152 ) ) ) $ ( false ) ) ) ) $ ( if true then d33 else false )
        d163 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1670 -> x1670 ) ) ) $ ( Bool )
        d163 = if ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( d90 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> d82 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> x1660 ) ) ) $ ( d67 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> ( ( Set -> Set ) ∋ ( ( λ x1720 -> if false then Bool else x1710 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if d51 then x1700 else x1690 ) ) ) $ ( x1690 ) ) ) ) $ ( if false then d159 else d163 )
        d173 : if false then ( ( Set -> Set ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> if d1 then x1740 else true ) ) ) $ ( d143 ) ) ) ) $ ( if false then false else false )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then x1790 else x1790 ) ) ) $ ( x1790 ) ) ) ) $ ( if true then Bool else Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if d82 then true else false ) ) ) $ ( if d108 then true else true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> if true then x1830 else x1830 ) ) ) $ ( if false then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if d35 then d116 else d135 ) ) ) $ ( if false then d177 else d23 )
        d184 : if true then ( ( Set -> Set ) ∋ ( ( λ x1870 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if true then x1860 else x1850 ) ) ) $ ( d105 ) ) ) ) $ ( if false then true else true )
        d188 : ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then Bool else x1910 ) ) ) $ ( if true then Bool else Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> if x1890 then d90 else x1890 ) ) ) $ ( d112 ) ) ) ) $ ( if true then d168 else d131 )
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1950 -> if false then x1950 else x1950 ) ) ) $ ( if true then Bool else Bool )
        d192 = if if d121 then false else d116 then ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> d173 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> d148 ) ) ) $ ( d76 )
        d196 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1990 -> x1990 ) ) ) $ ( Bool )
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> if false then x1970 else x1970 ) ) ) $ ( false ) ) ) ) $ ( if true then d71 else true )
        d200 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2020 -> x2020 ) ) ) $ ( Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> if true then x2010 else false ) ) ) $ ( if d138 then d184 else false )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d203 = if ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> x2040 ) ) ) $ ( d67 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> d188 ) ) ) $ ( d90 ) else if d12 then false else d63
        d207 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2090 -> Bool ) ) ) $ ( Bool )
        d207 = if ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> true ) ) ) $ ( true ) then if true then false else d101 else if d38 then d30 else false
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> ( ( Set -> Set ) ∋ ( ( λ x2140 -> if false then x2130 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d210 = if if d154 then d82 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> true ) ) ) $ ( d90 )
        d215 : ( ( Set -> Set ) ∋ ( ( λ x2170 -> if false then x2170 else x2170 ) ) ) $ ( if true then Bool else Bool )
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> if x2160 then true else d210 ) ) ) $ ( if false then d71 else false )
        d218 : if true then ( ( Set -> Set ) ∋ ( ( λ x2190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2200 -> Bool ) ) ) $ ( Bool )
        d218 = if if d154 then false else d63 then if true then d138 else d98 else if true then d46 else true
        d221 : if false then ( ( Set -> Set ) ∋ ( ( λ x2230 -> x2230 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> if d135 then d131 else true ) ) ) $ ( if false then false else true )
        d224 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( Bool )
        d224 = ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> if true then true else false ) ) ) $ ( false ) ) ) ) $ ( if false then d221 else true )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x2310 -> ( ( Set -> Set ) ∋ ( ( λ x2320 -> if false then x2320 else x2320 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> if x2300 then d221 else d38 ) ) ) $ ( x2290 ) ) ) ) $ ( if false then d5 else d200 )
        d233 : ( ( Set -> Set ) ∋ ( ( λ x2350 -> ( ( Set -> Set ) ∋ ( ( λ x2360 -> if false then x2360 else Bool ) ) ) $ ( x2350 ) ) ) ) $ ( if true then Bool else Bool )
        d233 = if if d105 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( d135 ) else if false then false else d33
        d237 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2390 -> Bool ) ) ) $ ( Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> if x2380 then x2380 else true ) ) ) $ ( if d184 then false else d76 )
        d240 : ( ( Set -> Set ) ∋ ( ( λ x2430 -> ( ( Set -> Set ) ∋ ( ( λ x2440 -> if false then Bool else Bool ) ) ) $ ( x2430 ) ) ) ) $ ( if true then Bool else Bool )
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if d218 then d152 else d163 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d245 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then x2490 else x2490 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> if d200 then x2470 else d9 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d250 : if false then ( ( Set -> Set ) ∋ ( ( λ x2520 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d250 = if if d63 then true else d181 then if false then d138 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> x2510 ) ) ) $ ( true )
        d253 : if false then ( ( Set -> Set ) ∋ ( ( λ x2570 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d253 = if ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> d131 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> false ) ) ) $ ( d228 )
        d258 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2610 -> x2610 ) ) ) $ ( Bool )
        d258 = if if true then false else d143 then ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d224 ) ) ) $ ( d35 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> d253 ) ) ) $ ( false )
        d262 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2640 -> Bool ) ) ) $ ( Bool )
        d262 = if ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> true ) ) ) $ ( d95 ) then if true then true else true else if d192 then true else d112
        d265 : if true then ( ( Set -> Set ) ∋ ( ( λ x2680 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d265 = if ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> x2660 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> true ) ) ) $ ( true ) else if false then d67 else false
        d269 : if true then ( ( Set -> Set ) ∋ ( ( λ x2720 -> x2720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2730 -> x2730 ) ) ) $ ( Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if d82 then x2700 else true ) ) ) $ ( d168 ) ) ) ) $ ( if true then true else d177 )
        d274 : if false then ( ( Set -> Set ) ∋ ( ( λ x2760 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if d121 then d215 else false ) ) ) $ ( if false then true else true )
        d277 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2800 -> Bool ) ) ) $ ( Bool )
        d277 = if if true then true else d112 then ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> d200 ) ) ) $ ( d87 )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then x2850 else Bool ) ) ) $ ( x2840 ) ) ) ) $ ( if true then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if false then x2830 else true ) ) ) $ ( d101 ) ) ) ) $ ( if d192 then d59 else false )
        d286 : if false then ( ( Set -> Set ) ∋ ( ( λ x2870 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d286 = if if false then true else false then if false then d116 else d240 else if false then false else true
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> if true then x2910 else Bool ) ) ) $ ( if true then Bool else Bool )
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> if x2890 then false else x2900 ) ) ) $ ( x2890 ) ) ) ) $ ( if d131 then d33 else true )
        d292 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> if true then x2960 else x2950 ) ) ) $ ( x2950 ) ) ) ) $ ( if false then Bool else Bool )
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if d215 then d215 else d90 ) ) ) $ ( false ) ) ) ) $ ( if true then d112 else true )
        d297 : if false then ( ( Set -> Set ) ∋ ( ( λ x2980 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d297 = if if d9 then d207 else d262 then if false then d30 else d9 else if d105 then true else d59
        d299 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> ( ( Set -> Set ) ∋ ( ( λ x3020 -> if false then x3010 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> if x3000 then x3000 else true ) ) ) $ ( if d163 then d173 else d131 )
        d303 : if false then if false then Bool else Bool else if true then Bool else Bool
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> if x3050 then d258 else true ) ) ) $ ( d210 ) ) ) ) $ ( if false then true else d253 )
        d306 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3090 -> Bool ) ) ) $ ( Bool )
        d306 = if ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> false ) ) ) $ ( d121 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> x3080 ) ) ) $ ( true ) else if false then true else d262
        d310 : if true then ( ( Set -> Set ) ∋ ( ( λ x3110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3120 -> Bool ) ) ) $ ( Bool )
        d310 = if if d262 then d38 else false then if d138 then d218 else d253 else if d250 then false else false
        d313 : ( ( Set -> Set ) ∋ ( ( λ x3160 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> if false then d173 else x3140 ) ) ) $ ( x3140 ) ) ) ) $ ( if d131 then false else false )
        d317 : if true then if false then Bool else Bool else if false then Bool else Bool
        d317 = if ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> false ) ) ) $ ( d143 ) then if d9 then d218 else d87 else if false then d245 else d87
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> ( ( Set -> Set ) ∋ ( ( λ x3220 -> if true then Bool else x3220 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> if x3200 then x3200 else false ) ) ) $ ( if d192 then true else d112 )
        d323 : if true then if false then Bool else Bool else if false then Bool else Bool
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> if true then x3240 else x3240 ) ) ) $ ( x3240 ) ) ) ) $ ( if d26 then true else true )
        d326 : if false then ( ( Set -> Set ) ∋ ( ( λ x3280 -> x3280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3290 -> Bool ) ) ) $ ( Bool )
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> if d277 then d9 else true ) ) ) $ ( if true then d12 else d181 )
        d330 : if false then ( ( Set -> Set ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3330 -> Bool ) ) ) $ ( Bool )
        d330 = if if d143 then d253 else d168 then ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> x3310 ) ) ) $ ( true ) else if false then false else false
        d334 : if true then ( ( Set -> Set ) ∋ ( ( λ x3360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( Bool )
        d334 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> d221 ) ) ) $ ( false ) else if true then d152 else d148
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d338 = if ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> d306 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> d19 ) ) ) $ ( d265 ) else if d253 then false else d177
        d342 : if false then ( ( Set -> Set ) ∋ ( ( λ x3440 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3450 -> x3450 ) ) ) $ ( Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if d306 then d192 else x3430 ) ) ) $ ( if d159 then false else true )
        d346 : ( ( Set -> Set ) ∋ ( ( λ x3490 -> ( ( Set -> Set ) ∋ ( ( λ x3500 -> if true then x3490 else Bool ) ) ) $ ( x3490 ) ) ) ) $ ( if true then Bool else Bool )
        d346 = if ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> x3470 ) ) ) $ ( d67 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> false ) ) ) $ ( false ) else if d19 then d253 else d334
        d351 : if false then ( ( Set -> Set ) ∋ ( ( λ x3530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3540 -> Bool ) ) ) $ ( Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> if x3520 then true else x3520 ) ) ) $ ( if true then true else true )
        d355 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3580 -> Bool ) ) ) $ ( Bool )
        d355 = if ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> false ) ) ) $ ( d15 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> x3570 ) ) ) $ ( false ) else if d346 then d1 else d163
        d359 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3620 -> Bool ) ) ) $ ( Bool )
        d359 = ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if d87 then x3600 else false ) ) ) $ ( true ) ) ) ) $ ( if false then true else d342 )
        d363 : ( ( Set -> Set ) ∋ ( ( λ x3640 -> ( ( Set -> Set ) ∋ ( ( λ x3650 -> if true then x3640 else Bool ) ) ) $ ( x3640 ) ) ) ) $ ( if true then Bool else Bool )
        d363 = if if false then d351 else d173 then if d138 then true else d184 else if true then true else true
        d366 : if true then if false then Bool else Bool else if true then Bool else Bool
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> if d168 then d233 else x3680 ) ) ) $ ( x3670 ) ) ) ) $ ( if d42 then d63 else d292 )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x3710 -> if true then x3710 else Bool ) ) ) $ ( if false then Bool else Bool )
        d369 = if if d135 then d35 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> true ) ) ) $ ( d250 ) else if false then true else true
        d372 : ( ( Set -> Set ) ∋ ( ( λ x3740 -> if false then Bool else x3740 ) ) ) $ ( if false then Bool else Bool )
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> if x3730 then x3730 else d265 ) ) ) $ ( if false then true else d355 )
        d375 : if true then if true then Bool else Bool else if false then Bool else Bool
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> if x3760 then d240 else true ) ) ) $ ( if d200 then d297 else d76 )
        d377 : if false then if true then Bool else Bool else if true then Bool else Bool
        d377 = ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> if d148 then d108 else false ) ) ) $ ( x3780 ) ) ) ) $ ( if false then true else false )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> ( ( Set -> Set ) ∋ ( ( λ x3830 -> if false then Bool else Bool ) ) ) $ ( x3820 ) ) ) ) $ ( if true then Bool else Bool )
        d380 = if ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( true ) then if d159 then false else d196 else if true then d245 else d108
        d384 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d384 = if if d250 then false else d313 then ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> true ) ) ) $ ( false ) else if true then true else d245
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3890 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> if d35 then d265 else d56 ) ) ) $ ( if false then false else false )
        d390 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if d366 then true else d262 ) ) ) $ ( d42 ) ) ) ) $ ( if false then false else false )
        d394 : ( ( Set -> Set ) ∋ ( ( λ x3970 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> if d237 then false else x3950 ) ) ) $ ( d112 ) ) ) ) $ ( if d131 then false else d173 )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x4010 -> ( ( Set -> Set ) ∋ ( ( λ x4020 -> if true then Bool else x4010 ) ) ) $ ( x4010 ) ) ) ) $ ( if true then Bool else Bool )
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> if x3990 then d35 else x3990 ) ) ) $ ( d281 ) ) ) ) $ ( if d218 then true else d310 )
        d403 : if true then ( ( Set -> Set ) ∋ ( ( λ x4060 -> x4060 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4070 -> x4070 ) ) ) $ ( Bool )
        d403 = ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> if d338 then false else x4040 ) ) ) $ ( x4040 ) ) ) ) $ ( if false then false else d80 )
        d408 : ( ( Set -> Set ) ∋ ( ( λ x4110 -> ( ( Set -> Set ) ∋ ( ( λ x4120 -> if true then x4110 else x4110 ) ) ) $ ( x4110 ) ) ) ) $ ( if false then Bool else Bool )
        d408 = if if false then true else d288 then ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> x4090 ) ) ) $ ( d56 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( d56 )
        d413 : ( ( Set -> Set ) ∋ ( ( λ x4160 -> ( ( Set -> Set ) ∋ ( ( λ x4170 -> if true then x4170 else x4160 ) ) ) $ ( x4160 ) ) ) ) $ ( if false then Bool else Bool )
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> if true then x4140 else false ) ) ) $ ( x4140 ) ) ) ) $ ( if d387 then false else false )
        d418 : ( ( Set -> Set ) ∋ ( ( λ x4200 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> if x4190 then d387 else d326 ) ) ) $ ( if false then d9 else false )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4250 -> ( ( Set -> Set ) ∋ ( ( λ x4260 -> if true then Bool else x4260 ) ) ) $ ( x4250 ) ) ) ) $ ( if true then Bool else Bool )
        d421 = if ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> x4220 ) ) ) $ ( d203 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> x4230 ) ) ) $ ( d71 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> d112 ) ) ) $ ( d184 )
        d427 : if false then if true then Bool else Bool else if true then Bool else Bool
        d427 = if ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> x4280 ) ) ) $ ( true ) then if false then d210 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> x4290 ) ) ) $ ( d108 )
        d430 : ( ( Set -> Set ) ∋ ( ( λ x4330 -> ( ( Set -> Set ) ∋ ( ( λ x4340 -> if false then x4340 else Bool ) ) ) $ ( x4330 ) ) ) ) $ ( if true then Bool else Bool )
        d430 = if ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> d334 ) ) ) $ ( false ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> false ) ) ) $ ( d38 )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if false then x4380 else x4380 ) ) ) $ ( if true then Bool else Bool )
        d435 = if ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d143 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> d82 ) ) ) $ ( false ) else if false then d87 else true
        d439 : if false then if true then Bool else Bool else if false then Bool else Bool
        d439 = if if false then d228 else d303 then ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> x4410 ) ) ) $ ( false )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if false then x4440 else x4440 ) ) ) $ ( if false then Bool else Bool )
        d442 = if if d237 then false else true then if d323 then d159 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> true ) ) ) $ ( false )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> if false then x4480 else Bool ) ) ) $ ( if false then Bool else Bool )
        d445 = if ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> x4460 ) ) ) $ ( true ) then if true then false else d76 else ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> true ) ) ) $ ( d297 )
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> if true then Bool else x4510 ) ) ) $ ( if true then Bool else Bool )
        d449 = if if d277 then true else false then if d342 then true else d281 else ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> x4500 ) ) ) $ ( d177 )
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4550 -> if false then x4550 else Bool ) ) ) $ ( if false then Bool else Bool )
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if x4530 then false else x4540 ) ) ) $ ( false ) ) ) ) $ ( if d281 then false else true )
        d456 : if true then ( ( Set -> Set ) ∋ ( ( λ x4580 -> x4580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> if x4570 then x4570 else true ) ) ) $ ( if false then d355 else true )
        d459 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4600 -> Bool ) ) ) $ ( Bool )
        d459 = if if d42 then false else d338 then if d154 then d317 else true else if true then d121 else false
        d461 : ( ( Set -> Set ) ∋ ( ( λ x4620 -> ( ( Set -> Set ) ∋ ( ( λ x4630 -> if false then x4630 else x4620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d461 = if if d262 then d67 else true then if d421 then true else false else if false then d413 else true
        d464 : ( ( Set -> Set ) ∋ ( ( λ x4680 -> if true then x4680 else x4680 ) ) ) $ ( if false then Bool else Bool )
        d464 = if ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> d30 ) ) ) $ ( d452 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> d90 ) ) ) $ ( d277 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> true ) ) ) $ ( d221 )
        d469 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4710 -> x4710 ) ) ) $ ( Bool )
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> if x4700 then x4700 else d1 ) ) ) $ ( if false then d63 else true )
        d472 : ( ( Set -> Set ) ∋ ( ( λ x4750 -> ( ( Set -> Set ) ∋ ( ( λ x4760 -> if false then x4760 else x4760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if x4740 then d363 else false ) ) ) $ ( x4730 ) ) ) ) $ ( if d163 then true else true )
        d477 : if false then ( ( Set -> Set ) ∋ ( ( λ x4780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4790 -> Bool ) ) ) $ ( Bool )
        d477 = if if d375 then d250 else d12 then if false then d258 else true else if d421 then d319 else true
        d480 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4830 -> Bool ) ) ) $ ( Bool )
        d480 = if ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> d355 ) ) ) $ ( d33 ) then if true then false else d105 else ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( d80 )
        d484 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4870 -> Bool ) ) ) $ ( Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> if x4850 then d196 else true ) ) ) $ ( d292 ) ) ) ) $ ( if false then true else true )
        d488 : ( ( Set -> Set ) ∋ ( ( λ x4910 -> ( ( Set -> Set ) ∋ ( ( λ x4920 -> if true then x4910 else x4920 ) ) ) $ ( x4910 ) ) ) ) $ ( if false then Bool else Bool )
        d488 = if ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> d313 ) ) ) $ ( false ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> d101 ) ) ) $ ( false )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4960 -> ( ( Set -> Set ) ∋ ( ( λ x4970 -> if true then Bool else x4970 ) ) ) $ ( x4960 ) ) ) ) $ ( if true then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> if false then true else x4940 ) ) ) $ ( false ) ) ) ) $ ( if d334 then false else false )
        d498 : if false then ( ( Set -> Set ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5010 -> x5010 ) ) ) $ ( Bool )
        d498 = if if false then d221 else false then if false then d51 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> x4990 ) ) ) $ ( true )
        d502 : if true then if false then Bool else Bool else if true then Bool else Bool
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> if false then d469 else x5030 ) ) ) $ ( true ) ) ) ) $ ( if false then d435 else d342 )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if false then Bool else x5070 ) ) ) $ ( x5070 ) ) ) ) $ ( if true then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if d126 then d143 else true ) ) ) $ ( if d377 then d421 else d163 )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x5110 -> if false then x5110 else x5110 ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if true then x5100 else true ) ) ) $ ( if d258 then d253 else d108 )
        d512 : if true then ( ( Set -> Set ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5160 -> Bool ) ) ) $ ( Bool )
        d512 = if ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( d413 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> x5140 ) ) ) $ ( false ) else if true then d46 else true
        d517 : if true then ( ( Set -> Set ) ∋ ( ( λ x5190 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> if false then true else d442 ) ) ) $ ( if d148 then d173 else d233 )
        d520 : if false then ( ( Set -> Set ) ∋ ( ( λ x5230 -> x5230 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5240 -> x5240 ) ) ) $ ( Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> if d218 then x5220 else x5210 ) ) ) $ ( d138 ) ) ) ) $ ( if true then true else false )
        d525 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5270 -> x5270 ) ) ) $ ( Bool )
        d525 = if if true then d265 else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> false ) ) ) $ ( false )
        d528 : ( ( Set -> Set ) ∋ ( ( λ x5290 -> ( ( Set -> Set ) ∋ ( ( λ x5300 -> if false then x5300 else x5290 ) ) ) $ ( x5290 ) ) ) ) $ ( if false then Bool else Bool )
        d528 = if if d459 then true else d154 then if d366 then true else d74 else if true then true else d184
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5340 -> ( ( Set -> Set ) ∋ ( ( λ x5350 -> if false then Bool else Bool ) ) ) $ ( x5340 ) ) ) ) $ ( if true then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> if d317 then d456 else x5320 ) ) ) $ ( d461 ) ) ) ) $ ( if d42 then d56 else false )
        d536 : ( ( Set -> Set ) ∋ ( ( λ x5390 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> if true then true else d56 ) ) ) $ ( d435 ) ) ) ) $ ( if true then d375 else d297 )
        d540 : if false then ( ( Set -> Set ) ∋ ( ( λ x5420 -> x5420 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if d218 then true else true ) ) ) $ ( if d101 then true else d274 )
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> ( ( Set -> Set ) ∋ ( ( λ x5470 -> if true then x5460 else Bool ) ) ) $ ( x5460 ) ) ) ) $ ( if false then Bool else Bool )
        d543 = if ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> false ) ) ) $ ( d319 ) then if d33 then d359 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> d138 ) ) ) $ ( d23 )
        d548 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> if false then x5500 else Bool ) ) ) $ ( if true then Bool else Bool )
        d548 = if if d355 then d95 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> false ) ) ) $ ( true ) else if false then false else false
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5540 -> if true then Bool else x5540 ) ) ) $ ( if true then Bool else Bool )
        d551 = if ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> x5520 ) ) ) $ ( true ) then if d286 then d472 else d330 else ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> d82 ) ) ) $ ( true )
        d555 : ( ( Set -> Set ) ∋ ( ( λ x5580 -> ( ( Set -> Set ) ∋ ( ( λ x5590 -> if false then Bool else Bool ) ) ) $ ( x5580 ) ) ) ) $ ( if false then Bool else Bool )
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> if d177 then false else x5570 ) ) ) $ ( x5560 ) ) ) ) $ ( if false then d210 else d303 )
        d560 : ( ( Set -> Set ) ∋ ( ( λ x5620 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d560 = if ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> true ) ) ) $ ( d427 ) then if true then true else d35 else if d76 then false else d377
        d563 : ( ( Set -> Set ) ∋ ( ( λ x5650 -> if false then x5650 else x5650 ) ) ) $ ( if false then Bool else Bool )
        d563 = if if d281 then d421 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> x5640 ) ) ) $ ( false ) else if false then d143 else d269
        d566 : ( ( Set -> Set ) ∋ ( ( λ x5680 -> ( ( Set -> Set ) ∋ ( ( λ x5690 -> if false then Bool else Bool ) ) ) $ ( x5680 ) ) ) ) $ ( if false then Bool else Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> if d258 then d240 else false ) ) ) $ ( if d274 then false else d59 )