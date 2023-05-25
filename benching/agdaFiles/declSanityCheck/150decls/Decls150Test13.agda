module Decls150Test13  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( false ) else if true then false else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x80 else x90 ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if x70 then true else x70 ) ) ) $ ( if true then false else false )
        d10 : if true then ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( Bool )
        d10 = if if d6 then d6 else d1 then if true then d6 else false else ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d1 ) ) ) $ ( true )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then x180 else Bool ) ) ) $ ( x180 ) ) ) ) $ ( if true then Bool else Bool )
        d14 = if ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x160 -> true ) ) ) $ ( d6 ) else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( true )
        d20 : if false then if false then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d10 then true else x220 ) ) ) $ ( d14 ) ) ) ) $ ( if true then d1 else d6 )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then x250 else x250 ) ) ) $ ( if false then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if x240 then d20 else d6 ) ) ) $ ( if false then false else true )
        d26 : if true then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if true then x270 else x270 ) ) ) $ ( if d23 then d20 else false )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if d23 then x290 else d20 ) ) ) $ ( if d1 then d20 else false )
        d31 : if true then ( ( Set -> Set ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d31 = if if d14 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d10 ) ) ) $ ( d10 ) else if false then false else d14
        d34 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if x350 then d10 else d26 ) ) ) $ ( if d6 then true else d10 )
        d37 : if true then if true then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if true then true else d6 ) ) ) $ ( if false then true else d26 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x410 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if d20 then x400 else d20 ) ) ) $ ( if false then true else true )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> if true then x470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( d28 ) then ( ( Bool -> Bool ) ∋ ( ( λ x440 -> d28 ) ) ) $ ( d37 ) else ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( true )
        d48 : if true then ( ( Set -> Set ) ∋ ( ( λ x520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( Bool )
        d48 = if ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d26 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x500 -> d28 ) ) ) $ ( d28 ) else ( ( Bool -> Bool ) ∋ ( ( λ x510 -> x510 ) ) ) $ ( true )
        d54 : if false then ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x580 -> x580 ) ) ) $ ( Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if false then true else false ) ) ) $ ( x550 ) ) ) ) $ ( if d42 then d6 else d42 )
        d59 : if false then ( ( Set -> Set ) ∋ ( ( λ x620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x630 -> Bool ) ) ) $ ( Bool )
        d59 = if ( ( Bool -> Bool ) ∋ ( ( λ x600 -> true ) ) ) $ ( true ) then if d28 then d20 else d42 else ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d42 ) ) ) $ ( true )
        d64 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if d1 then x650 else true ) ) ) $ ( if d14 then d37 else false )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then x690 else Bool ) ) ) $ ( x690 ) ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if d59 then x680 else true ) ) ) $ ( if false then false else d20 )
        d71 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool )
        d71 = if ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d64 ) ) ) $ ( d14 ) then ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( d37 ) else ( ( Bool -> Bool ) ∋ ( ( λ x740 -> false ) ) ) $ ( true )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x790 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if d64 then false else d71 ) ) ) $ ( false ) ) ) ) $ ( if true then d23 else d10 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x820 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d80 = if if false then d54 else false then ( ( Bool -> Bool ) ∋ ( ( λ x810 -> false ) ) ) $ ( true ) else if true then d48 else d39
        d83 : ( ( Set -> Set ) ∋ ( ( λ x860 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> if true then x870 else x860 ) ) ) $ ( x860 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = if ( ( Bool -> Bool ) ∋ ( ( λ x840 -> true ) ) ) $ ( d42 ) then ( ( Bool -> Bool ) ∋ ( ( λ x850 -> x850 ) ) ) $ ( false ) else if d76 then false else false
        d88 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if true then Bool else x910 ) ) ) $ ( if false then Bool else Bool )
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( true ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> false ) ) ) $ ( false )
        d92 : if false then ( ( Set -> Set ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d92 = if if true then d67 else d28 then if false then d26 else false else ( ( Bool -> Bool ) ∋ ( ( λ x930 -> true ) ) ) $ ( false )
        d95 : if false then ( ( Set -> Set ) ∋ ( ( λ x970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if true then d88 else true ) ) ) $ ( if d34 then d26 else true )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then x1020 else x1030 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d99 = if ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( d20 ) then if true then false else d92 else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d14 ) ) ) $ ( true )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if false then d34 else x1050 ) ) ) $ ( if d1 then true else true )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if false then Bool else x1100 ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if d95 then false else d80 ) ) ) $ ( x1080 ) ) ) ) $ ( if d59 then false else true )
        d111 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( Bool )
        d111 = if if d80 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d54 ) ) ) $ ( d64 ) else if true then d76 else false
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if true then Bool else x1160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if d64 then x1150 else true ) ) ) $ ( if true then d83 else true )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> if false then x1210 else Bool ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if d26 then true else false ) ) ) $ ( d1 ) ) ) ) $ ( if d14 then d37 else d107 )
        d122 : if false then if false then Bool else Bool else if true then Bool else Bool
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1230 then false else d37 ) ) ) $ ( if false then d71 else true )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> if false then d54 else x1260 ) ) ) $ ( true ) ) ) ) $ ( if d42 then d28 else d14 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if true then x1300 else Bool ) ) ) $ ( if true then Bool else Bool )
        d128 = if if false then false else d26 then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( d104 )
        d131 : if false then if false then Bool else Bool else if true then Bool else Bool
        d131 = if if d83 then d26 else false then if true then d20 else d71 else ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> false ) ) ) $ ( d99 )
        d133 : if false then if false then Bool else Bool else if false then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if true then x1340 else false ) ) ) $ ( if d88 then d20 else d88 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> if true then x1370 else Bool ) ) ) $ ( if false then Bool else Bool )
        d135 = if if false then d37 else d122 then ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> false ) ) ) $ ( true ) else if d122 then true else d128
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then x1410 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if x1390 then false else x1390 ) ) ) $ ( if d1 then d34 else d122 )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then x1450 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if d28 then true else d92 ) ) ) $ ( if d133 then d10 else false )
        d146 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1480 -> Bool ) ) ) $ ( Bool )
        d146 = if ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> false ) ) ) $ ( false ) then if false then true else d99 else if true then d37 else true
        d149 : if true then ( ( Set -> Set ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1520 -> x1520 ) ) ) $ ( Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if x1500 then false else x1500 ) ) ) $ ( if false then false else d88 )
        d153 : if false then if true then Bool else Bool else if true then Bool else Bool
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d107 then d6 else true ) ) ) $ ( true ) ) ) ) $ ( if d76 then false else true )
        d156 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if x1570 then d54 else x1580 ) ) ) $ ( d153 ) ) ) ) $ ( if false then d34 else false )
        d160 : if false then ( ( Set -> Set ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if false then x1610 else x1620 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d111 )
        d165 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then Bool else x1680 ) ) ) $ ( if false then Bool else Bool )
        d165 = if if d64 then d135 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> d14 ) ) ) $ ( d138 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> x1670 ) ) ) $ ( false )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> if false then x1720 else Bool ) ) ) $ ( if true then Bool else Bool )
        d169 = if ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( true ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> true ) ) ) $ ( d54 )
        d173 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1750 -> Bool ) ) ) $ ( Bool )
        d173 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> true ) ) ) $ ( d39 ) else if d107 then false else true
        d176 : if true then ( ( Set -> Set ) ∋ ( ( λ x1780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1790 -> Bool ) ) ) $ ( Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> if x1770 then d71 else false ) ) ) $ ( if d124 then true else true )
        d180 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> if true then x1830 else Bool ) ) ) $ ( if false then Bool else Bool )
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if x1820 then x1820 else d165 ) ) ) $ ( x1810 ) ) ) ) $ ( if d1 then d23 else false )
        d184 : if true then ( ( Set -> Set ) ∋ ( ( λ x1860 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if true then true else true ) ) ) $ ( if true then d67 else false )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> ( ( Set -> Set ) ∋ ( ( λ x1900 -> if true then Bool else x1900 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if true then d95 else true ) ) ) $ ( if true then false else false )
        d191 : if false then ( ( Set -> Set ) ∋ ( ( λ x1930 -> x1930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1940 -> Bool ) ) ) $ ( Bool )
        d191 = if ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> true ) ) ) $ ( d135 ) then if true then true else false else if d1 then d39 else false
        d195 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> if true then x1970 else x1970 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d195 = ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if false then d64 else false ) ) ) $ ( if false then d26 else false )
        d199 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> if true then x2020 else Bool ) ) ) $ ( if true then Bool else Bool )
        d199 = if ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> d95 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> true ) ) ) $ ( false ) else if false then d39 else true
        d203 : if false then ( ( Set -> Set ) ∋ ( ( λ x2060 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> if d59 then x2040 else true ) ) ) $ ( d195 ) ) ) ) $ ( if d142 then true else d146 )
        d208 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2110 -> Bool ) ) ) $ ( Bool )
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> if x2100 then x2090 else true ) ) ) $ ( x2090 ) ) ) ) $ ( if d39 then d124 else false )
        d212 : if false then if false then Bool else Bool else if false then Bool else Bool
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> if x2130 then d20 else d111 ) ) ) $ ( if true then false else d195 )
        d214 : if true then ( ( Set -> Set ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2170 -> Bool ) ) ) $ ( Bool )
        d214 = if ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> true ) ) ) $ ( d146 ) then if d111 then true else false else if false then d165 else d133
        d218 : ( ( Set -> Set ) ∋ ( ( λ x2210 -> if false then x2210 else Bool ) ) ) $ ( if false then Bool else Bool )
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> if true then x2200 else false ) ) ) $ ( d48 ) ) ) ) $ ( if d80 then false else true )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x2240 -> ( ( Set -> Set ) ∋ ( ( λ x2250 -> if false then x2250 else x2250 ) ) ) $ ( x2240 ) ) ) ) $ ( if false then Bool else Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> if d114 then x2230 else d214 ) ) ) $ ( if d95 then true else true )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x2290 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d226 = if if d20 then d64 else d165 then ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> d31 ) ) ) $ ( false )
        d230 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> if true then Bool else x2330 ) ) ) $ ( if true then Bool else Bool )
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> if x2310 then d1 else false ) ) ) $ ( false ) ) ) ) $ ( if false then true else d31 )
        d234 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> if false then Bool else x2360 ) ) ) $ ( if false then Bool else Bool )
        d234 = if ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> false ) ) ) $ ( true ) then if false then false else d80 else if false then true else d133
        d237 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( Bool )
        d237 = if ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> d180 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> d191 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> true ) ) ) $ ( false )
        d242 : if false then if false then Bool else Bool else if true then Bool else Bool
        d242 = if ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> x2430 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( true ) else if d218 then d203 else d160
        d245 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2480 -> Bool ) ) ) $ ( Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> if d135 then x2460 else true ) ) ) $ ( d173 ) ) ) ) $ ( if d31 then true else true )
        d249 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> ( ( Set -> Set ) ∋ ( ( λ x2540 -> if true then x2540 else x2540 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d249 = if ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> x2500 ) ) ) $ ( d34 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> true ) ) ) $ ( d208 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( false )
        d255 : if false then ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2580 -> x2580 ) ) ) $ ( Bool )
        d255 = if ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( d222 ) then if d199 then d242 else d142 else if d160 then true else false
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> ( ( Set -> Set ) ∋ ( ( λ x2630 -> if false then x2630 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> if x2600 then false else d138 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d111 )
        d264 : if false then ( ( Set -> Set ) ∋ ( ( λ x2680 -> x2680 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2690 -> Bool ) ) ) $ ( Bool )
        d264 = if ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> d135 ) ) ) $ ( d48 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> d226 ) ) ) $ ( d76 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> true ) ) ) $ ( d28 )
        d270 : if false then ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> if true then x2710 else false ) ) ) $ ( x2710 ) ) ) ) $ ( if d34 then d124 else d37 )
        d274 : ( ( Set -> Set ) ∋ ( ( λ x2760 -> ( ( Set -> Set ) ∋ ( ( λ x2770 -> if false then Bool else x2760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if true then x2750 else x2750 ) ) ) $ ( if true then d88 else true )
        d278 : ( ( Set -> Set ) ∋ ( ( λ x2800 -> if false then x2800 else x2800 ) ) ) $ ( if false then Bool else Bool )
        d278 = if ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> false ) ) ) $ ( d59 ) then if d135 then d124 else d149 else if d64 then true else d71
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2830 -> ( ( Set -> Set ) ∋ ( ( λ x2840 -> if false then x2840 else x2840 ) ) ) $ ( x2830 ) ) ) ) $ ( if false then Bool else Bool )
        d281 = if ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( true ) then if d165 then d1 else false else if d71 then true else d245
        d285 : if false then ( ( Set -> Set ) ∋ ( ( λ x2880 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> if true then x2870 else true ) ) ) $ ( d133 ) ) ) ) $ ( if d39 then d14 else false )
        d289 : ( ( Set -> Set ) ∋ ( ( λ x2900 -> if true then Bool else x2900 ) ) ) $ ( if false then Bool else Bool )
        d289 = if if d135 then d146 else false then if d95 then false else d107 else if d31 then true else d222
        d291 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> if true then Bool else x2930 ) ) ) $ ( if true then Bool else Bool )
        d291 = if if false then false else d28 then ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> false ) ) ) $ ( d146 ) else if d23 then true else true
        d294 : if true then ( ( Set -> Set ) ∋ ( ( λ x2980 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d294 = if ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> x2960 ) ) ) $ ( d153 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> d291 ) ) ) $ ( false )
        d299 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3020 -> x3020 ) ) ) $ ( Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> if true then x3010 else x3010 ) ) ) $ ( true ) ) ) ) $ ( if d212 then d165 else false )
        d303 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> if true then x3060 else x3060 ) ) ) $ ( if true then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> if x3050 then true else d37 ) ) ) $ ( x3040 ) ) ) ) $ ( if d92 then d111 else d34 )
        d307 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> ( ( Set -> Set ) ∋ ( ( λ x3100 -> if true then x3090 else x3100 ) ) ) $ ( x3090 ) ) ) ) $ ( if true then Bool else Bool )
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> if true then d212 else x3080 ) ) ) $ ( if d138 then true else d64 )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x3140 -> ( ( Set -> Set ) ∋ ( ( λ x3150 -> if false then Bool else Bool ) ) ) $ ( x3140 ) ) ) ) $ ( if true then Bool else Bool )
        d311 = if ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> x3120 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> false ) ) ) $ ( d222 ) else if true then true else d37
        d316 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> if false then x3180 else Bool ) ) ) $ ( if false then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> if x3170 then false else d160 ) ) ) $ ( if d76 then d114 else false )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> if true then x3210 else Bool ) ) ) $ ( if false then Bool else Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> if false then d104 else x3200 ) ) ) $ ( if false then true else true )
        d322 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> if x3230 then d212 else x3230 ) ) ) $ ( if false then false else true )
        d325 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3270 -> Bool ) ) ) $ ( Bool )
        d325 = ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> if true then true else false ) ) ) $ ( if true then d291 else false )
        d328 : ( ( Set -> Set ) ∋ ( ( λ x3300 -> if false then Bool else x3300 ) ) ) $ ( if false then Bool else Bool )
        d328 = if ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> x3290 ) ) ) $ ( d34 ) then if d226 then true else false else if true then true else false
        d331 : ( ( Set -> Set ) ∋ ( ( λ x3330 -> ( ( Set -> Set ) ∋ ( ( λ x3340 -> if false then x3330 else x3330 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if x3320 then x3320 else x3320 ) ) ) $ ( if true then true else d311 )
        d335 : if false then ( ( Set -> Set ) ∋ ( ( λ x3380 -> x3380 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3390 -> x3390 ) ) ) $ ( Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if d48 then true else true ) ) ) $ ( d31 ) ) ) ) $ ( if false then true else d291 )
        d340 : if true then ( ( Set -> Set ) ∋ ( ( λ x3430 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d340 = ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> if d259 then x3420 else d37 ) ) ) $ ( x3410 ) ) ) ) $ ( if d142 then d59 else d104 )
        d344 : if false then if true then Bool else Bool else if false then Bool else Bool
        d344 = ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> if d114 then x3450 else true ) ) ) $ ( if true then true else d99 )
        d346 : ( ( Set -> Set ) ∋ ( ( λ x3490 -> ( ( Set -> Set ) ∋ ( ( λ x3500 -> if false then Bool else x3490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d346 = if ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> d133 ) ) ) $ ( d311 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> true ) ) ) $ ( d218 )
        d351 : ( ( Set -> Set ) ∋ ( ( λ x3530 -> ( ( Set -> Set ) ∋ ( ( λ x3540 -> if true then x3540 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> if d237 then x3520 else false ) ) ) $ ( if false then d95 else true )
        d355 : ( ( Set -> Set ) ∋ ( ( λ x3560 -> ( ( Set -> Set ) ∋ ( ( λ x3570 -> if false then Bool else x3570 ) ) ) $ ( x3560 ) ) ) ) $ ( if false then Bool else Bool )
        d355 = if if d294 then true else true then if false then d54 else false else if d307 then true else d214
        d358 : if false then ( ( Set -> Set ) ∋ ( ( λ x3600 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d358 = if if false then false else false then if true then d107 else d214 else ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> d234 ) ) ) $ ( false )
        d361 : ( ( Set -> Set ) ∋ ( ( λ x3650 -> ( ( Set -> Set ) ∋ ( ( λ x3660 -> if true then Bool else x3660 ) ) ) $ ( x3650 ) ) ) ) $ ( if true then Bool else Bool )
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( d118 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> false ) ) ) $ ( false )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x3680 -> if true then x3680 else x3680 ) ) ) $ ( if false then Bool else Bool )
        d367 = if if false then d255 else false then if d59 then false else true else if d118 then true else d20
        d369 : ( ( Set -> Set ) ∋ ( ( λ x3710 -> ( ( Set -> Set ) ∋ ( ( λ x3720 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d369 = if ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> x3700 ) ) ) $ ( true ) then if false then d80 else false else if d208 then d142 else false
        d373 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3750 -> Bool ) ) ) $ ( Bool )
        d373 = if if d285 then false else d71 then ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> d149 ) ) ) $ ( false ) else if false then true else d291
        d376 : if true then if false then Bool else Bool else if false then Bool else Bool
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> if true then d165 else d54 ) ) ) $ ( x3770 ) ) ) ) $ ( if false then d165 else d54 )
        d379 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> ( ( Set -> Set ) ∋ ( ( λ x3830 -> if false then x3820 else x3820 ) ) ) $ ( x3820 ) ) ) ) $ ( if true then Bool else Bool )
        d379 = ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> if x3800 then d187 else false ) ) ) $ ( x3800 ) ) ) ) $ ( if true then d26 else d311 )
        d384 : if false then if false then Bool else Bool else if false then Bool else Bool
        d384 = if if d307 then d71 else d64 then if d10 then d14 else d270 else if d176 then false else d346
        d385 : if true then if true then Bool else Bool else if false then Bool else Bool
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if x3860 then x3870 else true ) ) ) $ ( x3860 ) ) ) ) $ ( if d303 then d76 else true )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x3910 -> ( ( Set -> Set ) ∋ ( ( λ x3920 -> if true then Bool else x3910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d388 = ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> if x3890 then x3890 else false ) ) ) $ ( true ) ) ) ) $ ( if d92 then true else d278 )
        d393 : if false then ( ( Set -> Set ) ∋ ( ( λ x3950 -> x3950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( Bool )
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> if false then d369 else true ) ) ) $ ( if false then d242 else false )
        d397 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4000 -> Bool ) ) ) $ ( Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> if d346 then false else d149 ) ) ) $ ( x3980 ) ) ) ) $ ( if d259 then d344 else false )
        d401 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> ( ( Set -> Set ) ∋ ( ( λ x4040 -> if true then Bool else Bool ) ) ) $ ( x4030 ) ) ) ) $ ( if true then Bool else Bool )
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> if false then true else x4020 ) ) ) $ ( if false then d373 else d20 )
        d405 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4080 -> Bool ) ) ) $ ( Bool )
        d405 = if ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> d149 ) ) ) $ ( d138 ) then if d278 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> x4070 ) ) ) $ ( false )
        d409 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> if true then x4120 else x4120 ) ) ) $ ( if true then Bool else Bool )
        d409 = if ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( false ) then if d355 then d83 else d285 else ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( false )
        d413 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> if false then x4140 else x4140 ) ) ) $ ( if false then Bool else Bool )
        d413 = if if true then false else d259 then if d146 then d367 else d270 else if false then false else false
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4160 -> if true then x4160 else x4160 ) ) ) $ ( if true then Bool else Bool )
        d415 = if if d208 then false else d285 then if false then false else true else if false then false else true
        d417 : ( ( Set -> Set ) ∋ ( ( λ x4200 -> if false then x4200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d417 = if ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> x4180 ) ) ) $ ( d328 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> d191 ) ) ) $ ( d355 )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4240 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d421 = if ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> d6 ) ) ) $ ( d274 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> false ) ) ) $ ( true ) else if true then true else true
        d425 : ( ( Set -> Set ) ∋ ( ( λ x4280 -> ( ( Set -> Set ) ∋ ( ( λ x4290 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d425 = ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> if x4260 then x4260 else false ) ) ) $ ( d114 ) ) ) ) $ ( if true then true else d281 )
        d430 : ( ( Set -> Set ) ∋ ( ( λ x4330 -> ( ( Set -> Set ) ∋ ( ( λ x4340 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> if x4310 then x4320 else d242 ) ) ) $ ( d401 ) ) ) ) $ ( if true then false else true )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4370 -> ( ( Set -> Set ) ∋ ( ( λ x4380 -> if false then x4380 else x4380 ) ) ) $ ( x4370 ) ) ) ) $ ( if true then Bool else Bool )
        d435 = if if true then d430 else d367 then ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> x4360 ) ) ) $ ( d111 ) else if d180 then d270 else false
        d439 : if true then ( ( Set -> Set ) ∋ ( ( λ x4410 -> x4410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d439 = if if d59 then false else false then if d303 then true else d203 else ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> d218 ) ) ) $ ( false )
        d442 : if true then if false then Bool else Bool else if true then Bool else Bool
        d442 = if if d311 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> x4430 ) ) ) $ ( false ) else if true then d37 else d376
        d444 : if true then ( ( Set -> Set ) ∋ ( ( λ x4470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d444 = if if true then true else d361 then ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> false ) ) ) $ ( d340 )
        d448 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> ( ( Set -> Set ) ∋ ( ( λ x4520 -> if true then x4510 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> if false then d237 else false ) ) ) $ ( d20 ) ) ) ) $ ( if d42 then true else d118 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x4560 -> if true then x4560 else Bool ) ) ) $ ( if false then Bool else Bool )
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> if d118 then x4550 else d195 ) ) ) $ ( d124 ) ) ) ) $ ( if d264 then false else true )
        d457 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4590 -> x4590 ) ) ) $ ( Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> if false then false else x4580 ) ) ) $ ( if false then true else false )
        d460 : if true then if false then Bool else Bool else if true then Bool else Bool
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if d1 then d435 else d59 ) ) ) $ ( if false then d448 else d169 )
        d462 : if false then ( ( Set -> Set ) ∋ ( ( λ x4650 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d462 = ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> if false then true else true ) ) ) $ ( x4630 ) ) ) ) $ ( if d373 then true else d361 )
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> if d203 then d264 else x4680 ) ) ) $ ( d80 ) ) ) ) $ ( if true then true else d462 )
        d470 : if true then ( ( Set -> Set ) ∋ ( ( λ x4730 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d470 = if ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> false ) ) ) $ ( d26 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> x4720 ) ) ) $ ( true ) else if false then false else true
        d474 : ( ( Set -> Set ) ∋ ( ( λ x4760 -> ( ( Set -> Set ) ∋ ( ( λ x4770 -> if false then x4770 else x4770 ) ) ) $ ( x4760 ) ) ) ) $ ( if true then Bool else Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if d135 then d160 else true ) ) ) $ ( if d344 then false else true )
        d478 : if false then ( ( Set -> Set ) ∋ ( ( λ x4800 -> x4800 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4810 -> Bool ) ) ) $ ( Bool )
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> if x4790 then x4790 else d328 ) ) ) $ ( if d417 then d384 else true )
        d482 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4840 -> x4840 ) ) ) $ ( Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> if d156 then true else d104 ) ) ) $ ( if false then true else true )
        d485 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( Bool )
        d485 = ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> if true then x4860 else true ) ) ) $ ( if d10 then false else d453 )
        d488 : if false then ( ( Set -> Set ) ∋ ( ( λ x4900 -> x4900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4910 -> Bool ) ) ) $ ( Bool )
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> if x4890 then x4890 else true ) ) ) $ ( if d281 then d462 else d291 )
        d492 : ( ( Set -> Set ) ∋ ( ( λ x4940 -> if false then x4940 else x4940 ) ) ) $ ( if false then Bool else Bool )
        d492 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> false ) ) ) $ ( true ) else if false then true else true
        d495 : if false then if true then Bool else Bool else if true then Bool else Bool
        d495 = if if d34 then false else d173 then if d259 then d409 else d466 else ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> x4960 ) ) ) $ ( d492 )
        d497 : if false then if true then Bool else Bool else if false then Bool else Bool
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> if x4990 then x4990 else true ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d500 : ( ( Set -> Set ) ∋ ( ( λ x5030 -> if true then x5030 else Bool ) ) ) $ ( if true then Bool else Bool )
        d500 = ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> if x5010 then d249 else x5010 ) ) ) $ ( x5010 ) ) ) ) $ ( if true then true else d111 )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5060 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d504 = if if true then false else true then if d466 then false else d444 else ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> x5050 ) ) ) $ ( d278 )
        d507 : if false then ( ( Set -> Set ) ∋ ( ( λ x5090 -> x5090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5100 -> Bool ) ) ) $ ( Bool )
        d507 = ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> if x5080 then x5080 else true ) ) ) $ ( if true then d358 else true )
        d511 : if true then ( ( Set -> Set ) ∋ ( ( λ x5130 -> x5130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5140 -> Bool ) ) ) $ ( Bool )
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> if true then d435 else x5120 ) ) ) $ ( if d111 then d495 else true )
        d515 : ( ( Set -> Set ) ∋ ( ( λ x5180 -> if true then Bool else x5180 ) ) ) $ ( if false then Bool else Bool )
        d515 = if if d111 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> d379 ) ) ) $ ( d26 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> d42 ) ) ) $ ( d67 )
        d519 : ( ( Set -> Set ) ∋ ( ( λ x5210 -> ( ( Set -> Set ) ∋ ( ( λ x5220 -> if true then x5210 else x5220 ) ) ) $ ( x5210 ) ) ) ) $ ( if false then Bool else Bool )
        d519 = ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> if d355 then d448 else d379 ) ) ) $ ( if false then true else d488 )
        d523 : ( ( Set -> Set ) ∋ ( ( λ x5240 -> if false then x5240 else x5240 ) ) ) $ ( if false then Bool else Bool )
        d523 = if if d156 then d328 else d114 then if true then d138 else d376 else if false then d358 else true
        d525 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5280 -> x5280 ) ) ) $ ( Bool )
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if x5270 then d388 else false ) ) ) $ ( x5260 ) ) ) ) $ ( if true then true else d107 )
        d529 : ( ( Set -> Set ) ∋ ( ( λ x5320 -> ( ( Set -> Set ) ∋ ( ( λ x5330 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> if d48 then true else true ) ) ) $ ( x5300 ) ) ) ) $ ( if d401 then true else d212 )
        d534 : if true then if false then Bool else Bool else if false then Bool else Bool
        d534 = if ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> x5350 ) ) ) $ ( true ) then if d270 then false else d470 else ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( true )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x5390 -> if true then x5390 else x5390 ) ) ) $ ( if false then Bool else Bool )
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> if d291 then false else x5380 ) ) ) $ ( if false then d307 else d165 )
        d540 : if true then ( ( Set -> Set ) ∋ ( ( λ x5420 -> x5420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5430 -> x5430 ) ) ) $ ( Bool )
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if x5410 then x5410 else x5410 ) ) ) $ ( if d529 then d92 else false )
        d544 : if false then ( ( Set -> Set ) ∋ ( ( λ x5470 -> x5470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5480 -> Bool ) ) ) $ ( Bool )
        d544 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> false ) ) ) $ ( d485 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> x5460 ) ) ) $ ( d212 )
        d549 : if false then if true then Bool else Bool else if false then Bool else Bool
        d549 = if ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> false ) ) ) $ ( d335 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> d335 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> false ) ) ) $ ( false )
        d553 : if true then if true then Bool else Bool else if false then Bool else Bool
        d553 = if ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> d245 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> x5550 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> false ) ) ) $ ( d453 )
        d557 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5590 -> x5590 ) ) ) $ ( Bool )
        d557 = ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> if false then d128 else d23 ) ) ) $ ( if d218 then d67 else true )