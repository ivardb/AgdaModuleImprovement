module Decls150Test3  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then x20 else true ) ) ) $ ( x20 ) ) ) ) $ ( if true then false else true )
        d5 : if true then ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if d1 then x60 else false ) ) ) $ ( d1 ) ) ) ) $ ( if true then d1 else d1 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else x130 ) ) ) $ ( x120 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = if ( ( Bool -> Bool ) ∋ ( ( λ x110 -> false ) ) ) $ ( false ) then if true then d1 else d5 else if false then d1 else d1
        d14 : if false then ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d10 then true else true ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d19 : if false then if false then Bool else Bool else if false then Bool else Bool
        d19 = if if false then false else true then if true then d1 else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x200 -> false ) ) ) $ ( d1 )
        d21 : if false then if false then Bool else Bool else if true then Bool else Bool
        d21 = if if false then false else d19 then if false then true else d19 else if false then false else true
        d22 : if false then ( ( Set -> Set ) ∋ ( ( λ x240 -> x240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( Bool )
        d22 = if if false then d1 else d10 then if true then d14 else d10 else ( ( Bool -> Bool ) ∋ ( ( λ x230 -> x230 ) ) ) $ ( false )
        d26 : if false then ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d26 = if ( ( Bool -> Bool ) ∋ ( ( λ x270 -> d22 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x280 -> d14 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( true )
        d31 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x330 -> Bool ) ) ) $ ( Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if d22 then true else d14 ) ) ) $ ( if true then d10 else true )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x370 -> if false then x370 else x370 ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if d26 then x350 else d14 ) ) ) $ ( d21 ) ) ) ) $ ( if d31 then d5 else d26 )
        d38 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x400 -> Bool ) ) ) $ ( Bool )
        d38 = if ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d21 ) ) ) $ ( d5 ) then if true then d34 else false else if true then d31 else false
        d41 : if true then if false then Bool else Bool else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if true then false else x420 ) ) ) $ ( if true then false else d10 )
        d43 : if false then ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x470 -> Bool ) ) ) $ ( Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if d10 then x440 else true ) ) ) $ ( x440 ) ) ) ) $ ( if false then true else true )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then Bool else x510 ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if x500 then true else d10 ) ) ) $ ( true ) ) ) ) $ ( if d34 then false else d31 )
        d52 : if false then if false then Bool else Bool else if true then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if x530 then x540 else false ) ) ) $ ( d38 ) ) ) ) $ ( if true then d48 else d43 )
        d55 : if false then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if d34 then x560 else d14 ) ) ) $ ( if d19 then false else d43 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> if true then Bool else x610 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if d41 then x580 else true ) ) ) $ ( d1 ) ) ) ) $ ( if d41 then true else false )
        d62 : if true then ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if false then x630 else true ) ) ) $ ( if true then true else d10 )
        d66 : if false then if false then Bool else Bool else if false then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if x670 then x670 else d31 ) ) ) $ ( if d52 then d57 else false )
        d68 : if false then ( ( Set -> Set ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if x700 then false else d5 ) ) ) $ ( d5 ) ) ) ) $ ( if false then d48 else d43 )
        d72 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( Bool )
        d72 = if if true then true else true then if true then d66 else true else ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d55 ) ) ) $ ( d22 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x780 -> ( ( Set -> Set ) ∋ ( ( λ x790 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if true then true else true ) ) ) $ ( x760 ) ) ) ) $ ( if false then d48 else false )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if false then x840 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if d66 then x810 else d52 ) ) ) $ ( d68 ) ) ) ) $ ( if d34 then d31 else d10 )
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if x860 then d52 else d1 ) ) ) $ ( if d72 then true else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x900 -> if false then x900 else x900 ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if d5 then x890 else true ) ) ) $ ( x880 ) ) ) ) $ ( if true then true else d48 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x940 -> if false then x940 else Bool ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if x930 then true else true ) ) ) $ ( x920 ) ) ) ) $ ( if true then true else false )
        d95 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool )
        d95 = if if d80 then true else d34 then if d48 then true else true else if false then d31 else true
        d97 : if false then if false then Bool else Bool else if false then Bool else Bool
        d97 = if ( ( Bool -> Bool ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( d91 ) then ( ( Bool -> Bool ) ∋ ( ( λ x990 -> true ) ) ) $ ( d19 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> true ) ) ) $ ( d38 )
        d101 : if true then if true then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if true then d22 else x1020 ) ) ) $ ( if false then false else false )
        d103 : if false then ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if x1040 then d66 else d19 ) ) ) $ ( if d55 then d10 else d52 )
        d106 : if false then ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if x1070 then true else true ) ) ) $ ( x1070 ) ) ) ) $ ( if true then d19 else true )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then x1130 else Bool ) ) ) $ ( x1130 ) ) ) ) $ ( if false then Bool else Bool )
        d110 = if ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( false ) then if d21 then false else d10 else ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d26 ) ) ) $ ( true )
        d115 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1170 -> Bool ) ) ) $ ( Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if false then true else d52 ) ) ) $ ( if d62 then false else false )
        d118 : if false then ( ( Set -> Set ) ∋ ( ( λ x1200 -> x1200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if x1190 then false else true ) ) ) $ ( if d85 then d72 else false )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> if true then x1240 else x1240 ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if true then d52 else d97 ) ) ) $ ( if false then false else false )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> if true then Bool else x1280 ) ) ) $ ( if true then Bool else Bool )
        d125 = if ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> true ) ) ) $ ( false ) then if false then d48 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> false ) ) ) $ ( false )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> if false then Bool else Bool ) ) ) $ ( x1310 ) ) ) ) $ ( if true then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if true then d75 else d101 ) ) ) $ ( if true then true else d34 )
        d133 : if true then ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( Bool )
        d133 = if if true then false else true then if d10 then false else true else if false then true else d48
        d136 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if false then x1380 else Bool ) ) ) $ ( x1380 ) ) ) ) $ ( if false then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if true then x1370 else d22 ) ) ) $ ( if false then false else d103 )
        d140 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then Bool else x1440 ) ) ) $ ( x1430 ) ) ) ) $ ( if false then Bool else Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if true then true else d110 ) ) ) $ ( d48 ) ) ) ) $ ( if false then false else d85 )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> if true then x1480 else x1480 ) ) ) $ ( if false then Bool else Bool )
        d145 = if ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( d34 ) then if d1 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( false )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> if false then x1520 else Bool ) ) ) $ ( if true then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if false then d1 else d129 ) ) ) $ ( false ) ) ) ) $ ( if d145 then true else true )
        d153 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d10 then false else false ) ) ) $ ( d140 ) ) ) ) $ ( if d48 then d87 else d140 )
        d158 : if true then ( ( Set -> Set ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d158 = if if d153 then d129 else d52 then ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d133 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> false ) ) ) $ ( d101 )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> if true then x1650 else x1650 ) ) ) $ ( if false then Bool else Bool )
        d162 = if ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> d103 ) ) ) $ ( false ) then if true then d158 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( true )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> if true then Bool else x1690 ) ) ) $ ( if true then Bool else Bool )
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if false then x1680 else x1670 ) ) ) $ ( d66 ) ) ) ) $ ( if false then d158 else false )
        d170 : if false then ( ( Set -> Set ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1730 -> Bool ) ) ) $ ( Bool )
        d170 = if if false then d21 else false then if true then d72 else d75 else ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> true ) ) ) $ ( false )
        d174 : if false then ( ( Set -> Set ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1770 -> Bool ) ) ) $ ( Bool )
        d174 = if ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> d115 ) ) ) $ ( d97 ) then if d145 then d115 else d149 else if false then d80 else false
        d178 : if true then ( ( Set -> Set ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if x1790 then d118 else d133 ) ) ) $ ( if d57 then d19 else true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if false then Bool else x1820 ) ) ) $ ( if false then Bool else Bool )
        d181 = if if false then d91 else d115 then if d72 then false else true else if true then false else d41
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> ( ( Set -> Set ) ∋ ( ( λ x1860 -> if false then x1850 else x1860 ) ) ) $ ( x1850 ) ) ) ) $ ( if true then Bool else Bool )
        d183 = if if d26 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> d48 ) ) ) $ ( false ) else if d87 then d22 else d1
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if false then d145 else d19 ) ) ) $ ( true ) ) ) ) $ ( if d87 then d115 else false )
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then x1940 else Bool ) ) ) $ ( if true then Bool else Bool )
        d192 = if if d91 then false else false then if d101 then d14 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> d122 ) ) ) $ ( d103 )
        d195 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( Bool )
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> x1960 ) ) ) $ ( false ) then if d91 then true else d57 else if d62 then false else false
        d198 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> ( ( Set -> Set ) ∋ ( ( λ x2020 -> if true then Bool else x2020 ) ) ) $ ( x2010 ) ) ) ) $ ( if false then Bool else Bool )
        d198 = ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if x2000 then x2000 else x2000 ) ) ) $ ( x1990 ) ) ) ) $ ( if d68 then d1 else d149 )
        d203 : if true then ( ( Set -> Set ) ∋ ( ( λ x2050 -> x2050 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2060 -> x2060 ) ) ) $ ( Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if x2040 then false else true ) ) ) $ ( if d22 then d195 else d198 )
        d207 : ( ( Set -> Set ) ∋ ( ( λ x2100 -> ( ( Set -> Set ) ∋ ( ( λ x2110 -> if true then x2100 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d207 = if ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> x2080 ) ) ) $ ( false ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> x2090 ) ) ) $ ( true )
        d212 : ( ( Set -> Set ) ∋ ( ( λ x2150 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d212 = if if d72 then true else d95 then ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> d181 ) ) ) $ ( d118 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> true ) ) ) $ ( false )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> ( ( Set -> Set ) ∋ ( ( λ x2200 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d216 = if if d103 then d68 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> false ) ) ) $ ( d101 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> false ) ) ) $ ( true )
        d221 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2240 -> Bool ) ) ) $ ( Bool )
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> if d75 then x2220 else x2230 ) ) ) $ ( d149 ) ) ) ) $ ( if false then false else true )
        d225 : if true then if true then Bool else Bool else if true then Bool else Bool
        d225 = ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> if d62 then false else d149 ) ) ) $ ( x2260 ) ) ) ) $ ( if d178 then d52 else true )
        d228 : if true then if false then Bool else Bool else if true then Bool else Bool
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> if x2300 then x2300 else d212 ) ) ) $ ( x2290 ) ) ) ) $ ( if d43 then d80 else true )
        d231 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( Bool )
        d231 = if if false then d153 else d203 then ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> false ) ) ) $ ( true ) else if d136 then true else true
        d234 : if false then ( ( Set -> Set ) ∋ ( ( λ x2370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> if x2350 then x2360 else x2350 ) ) ) $ ( x2350 ) ) ) ) $ ( if true then false else d55 )
        d239 : if true then ( ( Set -> Set ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> if d195 then x2400 else x2400 ) ) ) $ ( if d19 then false else d48 )
        d242 : if false then ( ( Set -> Set ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( Bool )
        d242 = if if true then true else d212 then ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> x2430 ) ) ) $ ( false ) else if d68 then false else d115
        d246 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then x2490 else Bool ) ) ) $ ( if true then Bool else Bool )
        d246 = ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> if x2480 then false else d221 ) ) ) $ ( d87 ) ) ) ) $ ( if d85 then d22 else true )
        d250 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2530 -> Bool ) ) ) $ ( Bool )
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> if x2510 then x2510 else x2510 ) ) ) $ ( x2510 ) ) ) ) $ ( if true then d153 else false )
        d254 : if true then ( ( Set -> Set ) ∋ ( ( λ x2560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool )
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> if x2550 then x2550 else false ) ) ) $ ( if d106 then d85 else false )
        d258 : if true then ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d258 = if if d48 then false else true then if true then d145 else d34 else ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d95 ) ) ) $ ( false )
        d261 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2640 -> Bool ) ) ) $ ( Bool )
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> if d174 then d242 else d212 ) ) ) $ ( d140 ) ) ) ) $ ( if true then d118 else d136 )
        d265 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2680 -> Bool ) ) ) $ ( Bool )
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> if x2660 then d34 else x2670 ) ) ) $ ( d170 ) ) ) ) $ ( if d178 then d162 else false )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> if true then x2730 else x2730 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if d170 then x2710 else true ) ) ) $ ( x2700 ) ) ) ) $ ( if true then true else true )
        d274 : ( ( Set -> Set ) ∋ ( ( λ x2770 -> if true then x2770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> if x2750 then d68 else x2760 ) ) ) $ ( d203 ) ) ) ) $ ( if d122 then true else true )
        d278 : ( ( Set -> Set ) ∋ ( ( λ x2800 -> if false then x2800 else x2800 ) ) ) $ ( if false then Bool else Bool )
        d278 = if if d22 then d118 else false then if d68 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> x2790 ) ) ) $ ( true )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> if true then x2840 else Bool ) ) ) $ ( if true then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if false then true else d43 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d75 )
        d285 : if true then if true then Bool else Bool else if true then Bool else Bool
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if d195 then x2860 else x2860 ) ) ) $ ( if true then d261 else false )
        d287 : ( ( Set -> Set ) ∋ ( ( λ x2890 -> ( ( Set -> Set ) ∋ ( ( λ x2900 -> if false then x2900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d287 = ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> if d261 then d258 else false ) ) ) $ ( if d34 then d26 else true )
        d291 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2930 -> Bool ) ) ) $ ( Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> if x2920 then x2920 else true ) ) ) $ ( if true then false else false )
        d294 : if false then if true then Bool else Bool else if true then Bool else Bool
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> if d140 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d57 then d41 else d203 )
        d297 : if true then ( ( Set -> Set ) ∋ ( ( λ x2990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3000 -> Bool ) ) ) $ ( Bool )
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> if x2980 then x2980 else x2980 ) ) ) $ ( if false then d66 else d103 )
        d301 : if true then ( ( Set -> Set ) ∋ ( ( λ x3030 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d301 = if if d26 then true else true then if d228 then d21 else d97 else ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> d106 ) ) ) $ ( true )
        d304 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3070 -> x3070 ) ) ) $ ( Bool )
        d304 = if if d246 then d239 else d19 then ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> false ) ) ) $ ( d183 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> x3060 ) ) ) $ ( d95 )
        d308 : if false then ( ( Set -> Set ) ∋ ( ( λ x3100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( Bool )
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> if d242 then x3090 else x3090 ) ) ) $ ( if d158 then false else d225 )
        d312 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3140 -> x3140 ) ) ) $ ( Bool )
        d312 = if if d91 then d212 else d145 then ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> false ) ) ) $ ( false ) else if d52 then d22 else true
        d315 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> ( ( Set -> Set ) ∋ ( ( λ x3190 -> if false then Bool else x3190 ) ) ) $ ( x3180 ) ) ) ) $ ( if true then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> if x3170 then d183 else x3160 ) ) ) $ ( x3160 ) ) ) ) $ ( if d228 then d87 else false )
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> ( ( Set -> Set ) ∋ ( ( λ x3240 -> if true then Bool else x3230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d320 = if ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> d87 ) ) ) $ ( false ) then if true then true else d10 else ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( false )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d325 = if ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> x3260 ) ) ) $ ( d285 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> d5 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> x3280 ) ) ) $ ( false )
        d331 : if true then ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d331 = if if d21 then true else false then if d5 then d261 else d221 else ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( true )
        d334 : if true then ( ( Set -> Set ) ∋ ( ( λ x3360 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d334 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> d170 ) ) ) $ ( d231 ) else if d106 then d212 else d87
        d337 : if false then ( ( Set -> Set ) ∋ ( ( λ x3390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3400 -> x3400 ) ) ) $ ( Bool )
        d337 = if ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> x3380 ) ) ) $ ( d274 ) then if d103 then d234 else true else if false then d21 else d315
        d341 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3430 -> x3430 ) ) ) $ ( Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> if d97 then false else true ) ) ) $ ( if d274 then d106 else false )
        d344 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3460 -> Bool ) ) ) $ ( Bool )
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> if d278 then x3450 else x3450 ) ) ) $ ( if d304 then false else d110 )
        d347 : if true then if false then Bool else Bool else if false then Bool else Bool
        d347 = if ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> d265 ) ) ) $ ( d66 ) then if true then d19 else false else if d122 then d52 else true
        d349 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> ( ( Set -> Set ) ∋ ( ( λ x3520 -> if false then Bool else x3510 ) ) ) $ ( x3510 ) ) ) ) $ ( if false then Bool else Bool )
        d349 = if if true then d187 else false then if d87 then true else d195 else ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> x3500 ) ) ) $ ( true )
        d353 : ( ( Set -> Set ) ∋ ( ( λ x3550 -> ( ( Set -> Set ) ∋ ( ( λ x3560 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d353 = if if false then true else false then if false then d91 else d95 else ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> true ) ) ) $ ( d129 )
        d357 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> ( ( Set -> Set ) ∋ ( ( λ x3610 -> if true then x3610 else Bool ) ) ) $ ( x3600 ) ) ) ) $ ( if true then Bool else Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if false then d198 else false ) ) ) $ ( x3580 ) ) ) ) $ ( if d331 then d170 else false )
        d362 : if false then ( ( Set -> Set ) ∋ ( ( λ x3650 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d362 = ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> if d308 then x3640 else true ) ) ) $ ( true ) ) ) ) $ ( if d315 then d162 else true )
        d366 : if false then ( ( Set -> Set ) ∋ ( ( λ x3700 -> x3700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( Bool )
        d366 = if ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> x3680 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> d234 ) ) ) $ ( d308 )
        d372 : if true then ( ( Set -> Set ) ∋ ( ( λ x3740 -> x3740 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> if x3730 then d315 else d320 ) ) ) $ ( if false then true else d103 )
        d375 : if true then ( ( Set -> Set ) ∋ ( ( λ x3770 -> x3770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3780 -> x3780 ) ) ) $ ( Bool )
        d375 = if ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> x3760 ) ) ) $ ( true ) then if d122 then d140 else d158 else if true then d281 else false
        d379 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3820 -> x3820 ) ) ) $ ( Bool )
        d379 = if ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> false ) ) ) $ ( d285 ) then if true then d149 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( d26 )
        d383 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( Bool )
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> if true then x3840 else false ) ) ) $ ( if false then d38 else true )
        d386 : if false then if false then Bool else Bool else if false then Bool else Bool
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if false then true else true ) ) ) $ ( if true then d72 else false )
        d388 : if true then ( ( Set -> Set ) ∋ ( ( λ x3890 -> x3890 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d388 = if if d216 then d297 else d325 then if d344 then false else d297 else if true then false else true
        d390 : if true then ( ( Set -> Set ) ∋ ( ( λ x3940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d390 = if ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> x3910 ) ) ) $ ( d122 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> false ) ) ) $ ( d21 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> true ) ) ) $ ( false )
        d395 : if true then ( ( Set -> Set ) ∋ ( ( λ x3980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3990 -> Bool ) ) ) $ ( Bool )
        d395 = if if d26 then d62 else d301 then ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> x3970 ) ) ) $ ( true )
        d400 : if false then if true then Bool else Bool else if true then Bool else Bool
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> if d19 then false else x4010 ) ) ) $ ( if d129 then d274 else false )
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4050 -> if false then x4050 else x4050 ) ) ) $ ( if false then Bool else Bool )
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if x4040 then false else d315 ) ) ) $ ( x4030 ) ) ) ) $ ( if d198 then false else d75 )
        d406 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4080 -> Bool ) ) ) $ ( Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if d278 then d231 else d269 ) ) ) $ ( if d166 then true else d308 )
        d409 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> ( ( Set -> Set ) ∋ ( ( λ x4130 -> if false then x4130 else Bool ) ) ) $ ( x4120 ) ) ) ) $ ( if true then Bool else Bool )
        d409 = if ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> d158 ) ) ) $ ( d375 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> false ) ) ) $ ( true ) else if true then d31 else d379
        d414 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> if x4150 then x4160 else x4160 ) ) ) $ ( d287 ) ) ) ) $ ( if d136 then true else d315 )
        d418 : if true then ( ( Set -> Set ) ∋ ( ( λ x4210 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> if d344 then false else d136 ) ) ) $ ( false ) ) ) ) $ ( if true then d312 else false )
        d422 : if true then ( ( Set -> Set ) ∋ ( ( λ x4250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4260 -> Bool ) ) ) $ ( Bool )
        d422 = ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> if false then x4240 else false ) ) ) $ ( true ) ) ) ) $ ( if d174 then d207 else d357 )
        d427 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> ( ( Set -> Set ) ∋ ( ( λ x4310 -> if true then Bool else Bool ) ) ) $ ( x4300 ) ) ) ) $ ( if true then Bool else Bool )
        d427 = if if d43 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> d174 ) ) ) $ ( d87 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> x4290 ) ) ) $ ( d66 )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4350 -> ( ( Set -> Set ) ∋ ( ( λ x4360 -> if true then Bool else x4350 ) ) ) $ ( x4350 ) ) ) ) $ ( if true then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> if d406 then d145 else x4330 ) ) ) $ ( x4330 ) ) ) ) $ ( if false then false else d383 )
        d437 : ( ( Set -> Set ) ∋ ( ( λ x4390 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d437 = if ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> d379 ) ) ) $ ( false ) then if false then d68 else d379 else if d72 then false else d301
        d440 : ( ( Set -> Set ) ∋ ( ( λ x4420 -> if true then Bool else x4420 ) ) ) $ ( if true then Bool else Bool )
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> if d386 then x4410 else d437 ) ) ) $ ( if d80 then true else d225 )
        d443 : if false then ( ( Set -> Set ) ∋ ( ( λ x4470 -> x4470 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d443 = if ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> x4440 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> d379 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> d14 ) ) ) $ ( false )
        d448 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> ( ( Set -> Set ) ∋ ( ( λ x4520 -> if false then x4520 else Bool ) ) ) $ ( x4510 ) ) ) ) $ ( if false then Bool else Bool )
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> if x4490 then d62 else d68 ) ) ) $ ( d353 ) ) ) ) $ ( if false then true else d55 )
        d453 : if true then ( ( Set -> Set ) ∋ ( ( λ x4570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4580 -> x4580 ) ) ) $ ( Bool )
        d453 = if ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> false ) ) ) $ ( d228 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> d110 ) ) ) $ ( false )
        d459 : if true then ( ( Set -> Set ) ∋ ( ( λ x4620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4630 -> Bool ) ) ) $ ( Bool )
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if d57 then true else d453 ) ) ) $ ( x4600 ) ) ) ) $ ( if d254 then true else true )
        d464 : ( ( Set -> Set ) ∋ ( ( λ x4670 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d464 = if ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> d203 ) ) ) $ ( d347 ) then if true then d331 else d52 else ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> false ) ) ) $ ( d285 )
        d468 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4700 -> x4700 ) ) ) $ ( Bool )
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> if x4690 then false else d294 ) ) ) $ ( if d331 then d344 else false )
        d471 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4740 -> x4740 ) ) ) $ ( Bool )
        d471 = if if d341 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> d68 ) ) ) $ ( true )
        d475 : if false then ( ( Set -> Set ) ∋ ( ( λ x4770 -> x4770 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> if x4760 then d118 else x4760 ) ) ) $ ( if d80 then d239 else false )
        d478 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4810 -> x4810 ) ) ) $ ( Bool )
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> if x4800 then x4800 else d26 ) ) ) $ ( false ) ) ) ) $ ( if d366 then d166 else true )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x4850 -> ( ( Set -> Set ) ∋ ( ( λ x4860 -> if false then Bool else Bool ) ) ) $ ( x4850 ) ) ) ) $ ( if true then Bool else Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> if false then x4840 else x4830 ) ) ) $ ( x4830 ) ) ) ) $ ( if d145 then d453 else d129 )
        d487 : if false then ( ( Set -> Set ) ∋ ( ( λ x4890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4900 -> Bool ) ) ) $ ( Bool )
        d487 = ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if d400 then d409 else false ) ) ) $ ( if true then false else false )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4940 -> ( ( Set -> Set ) ∋ ( ( λ x4950 -> if false then Bool else x4950 ) ) ) $ ( x4940 ) ) ) ) $ ( if false then Bool else Bool )
        d491 = if if true then true else d41 then ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> d386 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> false ) ) ) $ ( d337 )
        d496 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> if true then Bool else x4990 ) ) ) $ ( if true then Bool else Bool )
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> if true then false else x4970 ) ) ) $ ( d372 ) ) ) ) $ ( if true then false else true )
        d500 : ( ( Set -> Set ) ∋ ( ( λ x5030 -> if false then Bool else x5030 ) ) ) $ ( if false then Bool else Bool )
        d500 = if if d97 then d162 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> d212 ) ) ) $ ( d261 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> d427 ) ) ) $ ( false )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> if false then x5070 else x5070 ) ) ) $ ( if false then Bool else Bool )
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if d14 then d440 else false ) ) ) $ ( false ) ) ) ) $ ( if d414 then d437 else d19 )
        d508 : if false then ( ( Set -> Set ) ∋ ( ( λ x5100 -> x5100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> if x5090 then false else x5090 ) ) ) $ ( if true then d402 else d418 )
        d512 : if true then ( ( Set -> Set ) ∋ ( ( λ x5140 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d512 = if ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( d453 ) then if false then d26 else d291 else if true then d278 else true
        d515 : if true then ( ( Set -> Set ) ∋ ( ( λ x5180 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d515 = ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> if d31 then x5160 else x5170 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d31 )
        d519 : if false then if false then Bool else Bool else if false then Bool else Bool
        d519 = if if false then false else d334 then ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> d453 ) ) ) $ ( false ) else if true then d145 else d149
        d521 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5240 -> Bool ) ) ) $ ( Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if d62 then x5230 else true ) ) ) $ ( d136 ) ) ) ) $ ( if d362 then true else d149 )
        d525 : ( ( Set -> Set ) ∋ ( ( λ x5280 -> ( ( Set -> Set ) ∋ ( ( λ x5290 -> if true then x5290 else x5280 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if true then true else x5270 ) ) ) $ ( d274 ) ) ) ) $ ( if d395 then true else d87 )
        d530 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5320 -> x5320 ) ) ) $ ( Bool )
        d530 = if ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> x5310 ) ) ) $ ( true ) then if d308 then d106 else d101 else if d140 then true else d158
        d533 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> ( ( Set -> Set ) ∋ ( ( λ x5370 -> if false then x5360 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d533 = if if false then d344 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> d225 ) ) ) $ ( d57 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> d153 ) ) ) $ ( d192 )
        d538 : if false then ( ( Set -> Set ) ∋ ( ( λ x5410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5420 -> x5420 ) ) ) $ ( Bool )
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> if false then x5400 else x5400 ) ) ) $ ( x5390 ) ) ) ) $ ( if d122 then d508 else false )
        d543 : if false then ( ( Set -> Set ) ∋ ( ( λ x5460 -> x5460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5470 -> x5470 ) ) ) $ ( Bool )
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> if x5440 then x5440 else true ) ) ) $ ( x5440 ) ) ) ) $ ( if true then d68 else d274 )
        d548 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> if true then x5500 else x5500 ) ) ) $ ( if true then Bool else Bool )
        d548 = ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> if x5490 then true else false ) ) ) $ ( if d136 then d478 else true )
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5530 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d551 = if ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> x5520 ) ) ) $ ( d291 ) then if false then true else d207 else if d265 then true else d52
        d554 : ( ( Set -> Set ) ∋ ( ( λ x5570 -> ( ( Set -> Set ) ∋ ( ( λ x5580 -> if false then Bool else x5580 ) ) ) $ ( x5570 ) ) ) ) $ ( if true then Bool else Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> if d294 then false else true ) ) ) $ ( x5550 ) ) ) ) $ ( if true then d287 else false )
        d559 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> ( ( Set -> Set ) ∋ ( ( λ x5620 -> if true then Bool else x5610 ) ) ) $ ( x5610 ) ) ) ) $ ( if true then Bool else Bool )
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if d43 then true else true ) ) ) $ ( if d118 then d118 else false )
        d563 : ( ( Set -> Set ) ∋ ( ( λ x5650 -> if false then x5650 else x5650 ) ) ) $ ( if false then Bool else Bool )
        d563 = ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> if d250 then x5640 else x5640 ) ) ) $ ( if false then d166 else false )
        d566 : ( ( Set -> Set ) ∋ ( ( λ x5680 -> if false then Bool else x5680 ) ) ) $ ( if false then Bool else Bool )
        d566 = if if d388 then d491 else d278 then ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> d68 ) ) ) $ ( d26 ) else if false then false else false
        d569 : ( ( Set -> Set ) ∋ ( ( λ x5720 -> ( ( Set -> Set ) ∋ ( ( λ x5730 -> if true then x5720 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if false then d432 else true ) ) ) $ ( x5700 ) ) ) ) $ ( if true then false else false )