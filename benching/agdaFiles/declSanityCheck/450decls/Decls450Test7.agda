module Decls450Test7  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x20 then true else x20 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else x80 ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d1 then false else false ) ) ) $ ( if false then d1 else d1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x130 else x130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d9 = if ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d1 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d1 ) ) ) $ ( d5 )
        d15 : if true then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if d9 then x170 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d1 else d1 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then x200 else x200 ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d5 then x190 else x190 ) ) ) $ ( if d1 then true else d1 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if x220 then d9 else x230 ) ) ) $ ( d1 ) ) ) ) $ ( if d9 then false else true )
        d26 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if d1 then x270 else d21 ) ) ) $ ( if d5 then false else true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x320 -> ( ( Set -> Set ) ∋ ( ( λ x330 -> if false then x320 else x330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if x310 then x310 else x300 ) ) ) $ ( false ) ) ) ) $ ( if true then d1 else d1 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x360 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> if false then x360 else x360 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if ( ( Bool -> Bool ) ∋ ( ( λ x350 -> x350 ) ) ) $ ( true ) then if false then true else d26 else if d5 then false else true
        d38 : ( ( Set -> Set ) ∋ ( ( λ x400 -> if true then x400 else Bool ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if d26 then false else d21 ) ) ) $ ( if false then false else false )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x450 -> ( ( Set -> Set ) ∋ ( ( λ x460 -> if false then x450 else x450 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d41 = if ( ( Bool -> Bool ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( d15 ) else ( ( Bool -> Bool ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( d26 )
        d47 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x490 -> Bool ) ) ) $ ( Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if d21 then true else false ) ) ) $ ( if d15 then d18 else d41 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if false then Bool else Bool ) ) ) $ ( x520 ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if true then x510 else d34 ) ) ) $ ( if true then d15 else false )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d54 = if ( ( Bool -> Bool ) ∋ ( ( λ x550 -> true ) ) ) $ ( d26 ) then ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d9 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x570 -> false ) ) ) $ ( d18 )
        d59 : if false then ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( Bool )
        d59 = if if false then false else d9 then if false then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( false )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x650 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if x640 then x640 else x640 ) ) ) $ ( if d47 then false else false )
        d66 : if true then ( ( Set -> Set ) ∋ ( ( λ x690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if x670 then true else true ) ) ) $ ( x670 ) ) ) ) $ ( if false then d41 else true )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then x740 else x740 ) ) ) $ ( if true then Bool else Bool )
        d71 = if ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d15 ) ) ) $ ( false ) then if d66 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d41 ) ) ) $ ( d66 )
        d75 : if true then ( ( Set -> Set ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if false then x770 else x760 ) ) ) $ ( x760 ) ) ) ) $ ( if false then d50 else d50 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> if true then Bool else x810 ) ) ) $ ( x800 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = if if d9 then false else false then if d38 then true else d66 else if true then d26 else false
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = if if d38 then false else d79 then ( ( Bool -> Bool ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( false ) else if true then d21 else true
        d84 : if true then ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if true then true else false ) ) ) $ ( x850 ) ) ) ) $ ( if true then d63 else d21 )
        d88 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( Bool )
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x900 -> x900 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x910 -> true ) ) ) $ ( false )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x970 -> if false then Bool else x960 ) ) ) $ ( x960 ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if x940 then d38 else false ) ) ) $ ( x940 ) ) ) ) $ ( if true then false else d1 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> if false then x1010 else Bool ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if false then d26 else x990 ) ) ) $ ( false ) ) ) ) $ ( if false then d75 else false )
        d102 : if false then ( ( Set -> Set ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if true then d9 else d41 ) ) ) $ ( if d79 then true else false )
        d106 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if d59 then x1070 else d38 ) ) ) $ ( false ) ) ) ) $ ( if false then d82 else false )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> if true then Bool else Bool ) ) ) $ ( x1120 ) ) ) ) $ ( if false then Bool else Bool )
        d110 = if ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( d98 ) then if false then d5 else d79 else if d63 then true else false
        d114 : if true then ( ( Set -> Set ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d114 = if if false then d1 else d54 then if d102 then d15 else d38 else ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> true ) ) ) $ ( true )
        d117 : if false then if true then Bool else Bool else if true then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if d41 then true else x1180 ) ) ) $ ( d41 ) ) ) ) $ ( if false then d110 else true )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> if true then Bool else x1230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d120 = if if d34 then true else d75 then if d1 then d75 else d34 else ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> d93 ) ) ) $ ( false )
        d124 : if false then ( ( Set -> Set ) ∋ ( ( λ x1270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( Bool )
        d124 = if ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> d120 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d63 ) ) ) $ ( d59 ) else if d114 then true else false
        d129 : if true then ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1330 -> Bool ) ) ) $ ( Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if x1300 then d84 else d71 ) ) ) $ ( x1300 ) ) ) ) $ ( if d106 then true else true )
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> ( ( Set -> Set ) ∋ ( ( λ x1370 -> if false then x1360 else x1370 ) ) ) $ ( x1360 ) ) ) ) $ ( if true then Bool else Bool )
        d134 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( d106 ) else if true then d71 else d114
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then x1400 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if x1390 then x1390 else false ) ) ) $ ( if d117 then true else true )
        d142 : if true then if true then Bool else Bool else if false then Bool else Bool
        d142 = if if false then d124 else d93 then if true then true else d114 else if d9 then false else d124
        d143 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if d1 then true else x1450 ) ) ) $ ( x1440 ) ) ) ) $ ( if false then true else d106 )
        d148 : if true then ( ( Set -> Set ) ∋ ( ( λ x1500 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d148 = if if true then d38 else false then if true then true else d21 else ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> false ) ) ) $ ( false )
        d151 : ( ( Set -> Set ) ∋ ( ( λ x1540 -> ( ( Set -> Set ) ∋ ( ( λ x1550 -> if true then x1540 else Bool ) ) ) $ ( x1540 ) ) ) ) $ ( if false then Bool else Bool )
        d151 = if ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> x1520 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> x1530 ) ) ) $ ( false ) else if d75 then false else d75
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> if false then x1580 else x1590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d156 = if ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> d142 ) ) ) $ ( true ) then if d5 then true else d120 else if d151 then d129 else d148
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d160 = if ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( d59 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> d41 ) ) ) $ ( d110 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> true ) ) ) $ ( d75 )
        d165 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then Bool else x1680 ) ) ) $ ( x1670 ) ) ) ) $ ( if false then Bool else Bool )
        d165 = if if true then d63 else d106 then if d15 then false else d151 else ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> true ) ) ) $ ( false )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> if false then x1710 else x1710 ) ) ) $ ( if false then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if d156 then true else d26 ) ) ) $ ( if true then d71 else d75 )
        d172 : if true then ( ( Set -> Set ) ∋ ( ( λ x1760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1770 -> Bool ) ) ) $ ( Bool )
        d172 = if ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> false ) ) ) $ ( true )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then x1810 else Bool ) ) ) $ ( x1800 ) ) ) ) $ ( if true then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if d88 then d88 else x1790 ) ) ) $ ( if true then d148 else d54 )
        d182 : if false then ( ( Set -> Set ) ∋ ( ( λ x1850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if true then d15 else x1840 ) ) ) $ ( false ) ) ) ) $ ( if false then d59 else d54 )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> ( ( Set -> Set ) ∋ ( ( λ x1900 -> if false then x1890 else Bool ) ) ) $ ( x1890 ) ) ) ) $ ( if true then Bool else Bool )
        d187 = if ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> x1880 ) ) ) $ ( false ) then if true then d178 else d75 else if d34 then d156 else false
        d191 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( Bool )
        d191 = if if false then d110 else d142 then ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> x1920 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> true ) ) ) $ ( d88 )
        d195 : ( ( Set -> Set ) ∋ ( ( λ x1980 -> ( ( Set -> Set ) ∋ ( ( λ x1990 -> if false then Bool else x1990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> false ) ) ) $ ( true ) then if false then d124 else d165 else ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> d156 ) ) ) $ ( true )
        d200 : ( ( Set -> Set ) ∋ ( ( λ x2030 -> if true then Bool else x2030 ) ) ) $ ( if true then Bool else Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> if d114 then false else true ) ) ) $ ( d41 ) ) ) ) $ ( if false then d143 else false )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x2070 -> if true then x2070 else x2070 ) ) ) $ ( if false then Bool else Bool )
        d204 = if if d178 then d110 else d195 then ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> d18 ) ) ) $ ( d200 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> false ) ) ) $ ( false )
        d208 : if true then ( ( Set -> Set ) ∋ ( ( λ x2100 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> if x2090 then true else true ) ) ) $ ( if d79 then d151 else true )
        d211 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2130 -> x2130 ) ) ) $ ( Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> if x2120 then x2120 else x2120 ) ) ) $ ( if d106 then false else d9 )
        d214 : if false then ( ( Set -> Set ) ∋ ( ( λ x2170 -> x2170 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d214 = ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> if d138 then true else d120 ) ) ) $ ( false ) ) ) ) $ ( if false then d110 else d29 )
        d218 : ( ( Set -> Set ) ∋ ( ( λ x2210 -> ( ( Set -> Set ) ∋ ( ( λ x2220 -> if false then Bool else x2220 ) ) ) $ ( x2210 ) ) ) ) $ ( if false then Bool else Bool )
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> if x2200 then true else d195 ) ) ) $ ( x2190 ) ) ) ) $ ( if d106 then false else true )
        d223 : if true then ( ( Set -> Set ) ∋ ( ( λ x2240 -> x2240 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d223 = if if d66 then d178 else d191 then if d84 then d82 else d88 else if false then d106 else d82
        d225 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( Bool )
        d225 = ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> if true then true else true ) ) ) $ ( if d82 then true else d41 )
        d228 : if true then ( ( Set -> Set ) ∋ ( ( λ x2300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2310 -> x2310 ) ) ) $ ( Bool )
        d228 = if ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> x2290 ) ) ) $ ( false ) then if true then false else true else if d29 then true else true
        d232 : if true then ( ( Set -> Set ) ∋ ( ( λ x2350 -> x2350 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d232 = if ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> d21 ) ) ) $ ( d191 ) then if d98 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( d187 )
        d236 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2400 -> Bool ) ) ) $ ( Bool )
        d236 = if ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> d200 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( d218 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> true ) ) ) $ ( d59 )
        d241 : if false then ( ( Set -> Set ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if x2420 then d38 else true ) ) ) $ ( d208 ) ) ) ) $ ( if false then true else true )
        d246 : if true then ( ( Set -> Set ) ∋ ( ( λ x2480 -> x2480 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d246 = if if false then d79 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> false ) ) ) $ ( false ) else if d208 then d223 else d82
        d249 : if true then ( ( Set -> Set ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> if x2500 then d228 else false ) ) ) $ ( x2500 ) ) ) ) $ ( if true then d195 else d218 )
        d253 : ( ( Set -> Set ) ∋ ( ( λ x2550 -> ( ( Set -> Set ) ∋ ( ( λ x2560 -> if false then x2560 else x2550 ) ) ) $ ( x2550 ) ) ) ) $ ( if true then Bool else Bool )
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if d71 then d93 else x2540 ) ) ) $ ( if true then false else false )
        d257 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( Bool )
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> if false then d102 else d249 ) ) ) $ ( false ) ) ) ) $ ( if d84 then true else true )
        d261 : if false then ( ( Set -> Set ) ∋ ( ( λ x2630 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if x2620 then d211 else x2620 ) ) ) $ ( if d208 then false else true )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if d21 then x2660 else false ) ) ) $ ( d106 ) ) ) ) $ ( if d29 then true else true )
        d268 : if true then if false then Bool else Bool else if false then Bool else Bool
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> if x2690 then d261 else x2690 ) ) ) $ ( if d148 then d47 else true )
        d270 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> if false then x2720 else x2720 ) ) ) $ ( if true then Bool else Bool )
        d270 = if if d160 then true else d15 then ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> true ) ) ) $ ( d264 ) else if false then d38 else d26
        d273 : if false then ( ( Set -> Set ) ∋ ( ( λ x2750 -> x2750 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d273 = if if d257 then false else d241 then ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> false ) ) ) $ ( d34 ) else if d71 then d21 else false
        d276 : if false then if false then Bool else Bool else if false then Bool else Bool
        d276 = if ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> d47 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> true ) ) ) $ ( d21 ) else if true then d26 else true
        d279 : if false then if false then Bool else Bool else if false then Bool else Bool
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if d232 then d249 else x2800 ) ) ) $ ( if d261 then d204 else d257 )
        d281 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2830 -> Bool ) ) ) $ ( Bool )
        d281 = if if d75 then d54 else false then if true then false else d102 else ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> d169 ) ) ) $ ( d257 )
        d284 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then x2870 else Bool ) ) ) $ ( x2860 ) ) ) ) $ ( if true then Bool else Bool )
        d284 = if ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> x2850 ) ) ) $ ( d66 ) then if false then d264 else d261 else if false then false else d21
        d288 : if false then ( ( Set -> Set ) ∋ ( ( λ x2900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2910 -> x2910 ) ) ) $ ( Bool )
        d288 = if ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> true ) ) ) $ ( d75 ) then if d82 then d93 else true else if d249 then true else true
        d292 : if false then ( ( Set -> Set ) ∋ ( ( λ x2940 -> x2940 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d292 = if if false then false else true then if false then d82 else d284 else ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> d200 ) ) ) $ ( true )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x2970 -> if true then x2970 else Bool ) ) ) $ ( if true then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> if x2960 then d273 else x2960 ) ) ) $ ( if true then d160 else d288 )
        d298 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> if true then x3010 else x3010 ) ) ) $ ( if true then Bool else Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> if x2990 then x3000 else x3000 ) ) ) $ ( true ) ) ) ) $ ( if d79 then d156 else false )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x3050 -> if false then x3050 else Bool ) ) ) $ ( if false then Bool else Bool )
        d302 = ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> if d268 then x3040 else d200 ) ) ) $ ( x3030 ) ) ) ) $ ( if true then true else false )
        d306 : if true then ( ( Set -> Set ) ∋ ( ( λ x3090 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> if d138 then d288 else d93 ) ) ) $ ( d232 ) ) ) ) $ ( if d211 then false else false )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d310 = if ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( d178 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> false ) ) ) $ ( true ) else if d228 then false else false
        d314 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3150 -> Bool ) ) ) $ ( Bool )
        d314 = if if false then d93 else d273 then if d66 then false else false else if d268 then d134 else true
        d316 : ( ( Set -> Set ) ∋ ( ( λ x3190 -> ( ( Set -> Set ) ∋ ( ( λ x3200 -> if false then Bool else x3200 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d316 = if ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> d117 ) ) ) $ ( d298 ) then if true then true else d151 else ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> false ) ) ) $ ( false )
        d321 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3230 -> x3230 ) ) ) $ ( Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> if true then d264 else x3220 ) ) ) $ ( if false then false else d9 )
        d324 : if false then ( ( Set -> Set ) ∋ ( ( λ x3260 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> if x3250 then d138 else false ) ) ) $ ( if true then d253 else d34 )
        d327 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then Bool else Bool ) ) ) $ ( x3290 ) ) ) ) $ ( if false then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> if d79 then x3280 else x3280 ) ) ) $ ( if d270 then d314 else d204 )
        d331 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3340 -> Bool ) ) ) $ ( Bool )
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> if x3320 then true else false ) ) ) $ ( x3320 ) ) ) ) $ ( if false then true else d169 )
        d335 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> if false then Bool else x3380 ) ) ) $ ( if false then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if d214 then false else d257 ) ) ) $ ( x3360 ) ) ) ) $ ( if d295 then d324 else d102 )
        d339 : if true then ( ( Set -> Set ) ∋ ( ( λ x3410 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d339 = if ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> x3400 ) ) ) $ ( d268 ) then if d241 then d117 else true else if true then true else true
        d342 : if false then if true then Bool else Bool else if true then Bool else Bool
        d342 = if ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> true ) ) ) $ ( true ) then if false then d38 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> x3440 ) ) ) $ ( d93 )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3480 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> if d236 then d187 else true ) ) ) $ ( true ) ) ) ) $ ( if d316 then false else d66 )
        d349 : if true then ( ( Set -> Set ) ∋ ( ( λ x3520 -> x3520 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d349 = if ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> d71 ) ) ) $ ( true ) then if false then true else d134 else ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> d5 ) ) ) $ ( true )
        d353 : ( ( Set -> Set ) ∋ ( ( λ x3550 -> if true then x3550 else x3550 ) ) ) $ ( if false then Bool else Bool )
        d353 = if ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> false ) ) ) $ ( true ) then if false then d273 else true else if true then d284 else false
        d356 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> ( ( Set -> Set ) ∋ ( ( λ x3610 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d356 = if ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> x3570 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> x3590 ) ) ) $ ( d66 )
        d362 : if true then if true then Bool else Bool else if true then Bool else Bool
        d362 = if ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> d47 ) ) ) $ ( d29 ) else if d214 then d15 else true
        d365 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3680 -> Bool ) ) ) $ ( Bool )
        d365 = if if d356 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> x3660 ) ) ) $ ( d117 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( d284 )
        d369 : ( ( Set -> Set ) ∋ ( ( λ x3730 -> ( ( Set -> Set ) ∋ ( ( λ x3740 -> if false then Bool else Bool ) ) ) $ ( x3730 ) ) ) ) $ ( if false then Bool else Bool )
        d369 = if ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> d38 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> d246 ) ) ) $ ( true )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then x3790 else x3780 ) ) ) $ ( x3780 ) ) ) ) $ ( if false then Bool else Bool )
        d375 = if if true then d148 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> d120 ) ) ) $ ( false )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3830 -> if true then x3830 else x3830 ) ) ) $ ( if true then Bool else Bool )
        d380 = if ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> false ) ) ) $ ( true ) else if d191 then false else d151
        d384 : if true then ( ( Set -> Set ) ∋ ( ( λ x3860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3870 -> x3870 ) ) ) $ ( Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if true then true else d236 ) ) ) $ ( if d270 then true else d253 )
        d388 : if false then ( ( Set -> Set ) ∋ ( ( λ x3910 -> x3910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3920 -> x3920 ) ) ) $ ( Bool )
        d388 = if ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> x3890 ) ) ) $ ( d66 ) then if true then d335 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> x3900 ) ) ) $ ( d228 )
        d393 : if true then ( ( Set -> Set ) ∋ ( ( λ x3960 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> if false then d388 else d138 ) ) ) $ ( x3940 ) ) ) ) $ ( if d5 then d59 else false )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x4000 -> ( ( Set -> Set ) ∋ ( ( λ x4010 -> if false then Bool else x4000 ) ) ) $ ( x4000 ) ) ) ) $ ( if false then Bool else Bool )
        d397 = if if true then d138 else d273 then ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> d79 ) ) ) $ ( d273 )
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4050 -> ( ( Set -> Set ) ∋ ( ( λ x4060 -> if false then Bool else x4060 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if false then x4040 else false ) ) ) $ ( d321 ) ) ) ) $ ( if d331 then true else d397 )
        d407 : ( ( Set -> Set ) ∋ ( ( λ x4100 -> ( ( Set -> Set ) ∋ ( ( λ x4110 -> if true then x4100 else x4100 ) ) ) $ ( x4100 ) ) ) ) $ ( if true then Bool else Bool )
        d407 = if ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> d71 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> d223 ) ) ) $ ( true ) else if true then d365 else false
        d412 : if true then ( ( Set -> Set ) ∋ ( ( λ x4150 -> x4150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( Bool )
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> if d236 then d362 else false ) ) ) $ ( true ) ) ) ) $ ( if d200 then d5 else d236 )
        d417 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( Bool )
        d417 = if if true then d15 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> d228 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> d21 ) ) ) $ ( true )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> ( ( Set -> Set ) ∋ ( ( λ x4240 -> if false then Bool else x4230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if x4220 then d191 else false ) ) ) $ ( if d59 then false else false )
        d425 : if true then ( ( Set -> Set ) ∋ ( ( λ x4280 -> x4280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4290 -> Bool ) ) ) $ ( Bool )
        d425 = if if true then true else d134 then ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> true ) ) ) $ ( d276 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> d225 ) ) ) $ ( true )
        d430 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4330 -> x4330 ) ) ) $ ( Bool )
        d430 = ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> if x4310 then x4320 else d295 ) ) ) $ ( d114 ) ) ) ) $ ( if d218 then true else true )
        d434 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4370 -> Bool ) ) ) $ ( Bool )
        d434 = if if d182 then d38 else d191 then ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> false ) ) ) $ ( d335 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d204 ) ) ) $ ( d310 )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x4410 -> if false then x4410 else Bool ) ) ) $ ( if false then Bool else Bool )
        d438 = ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> if d114 then d18 else x4390 ) ) ) $ ( true ) ) ) ) $ ( if true then d349 else false )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> if true then x4440 else Bool ) ) ) $ ( if true then Bool else Bool )
        d442 = if if d331 then true else d169 then if d232 then false else d195 else ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> true ) ) ) $ ( true )
        d445 : if false then ( ( Set -> Set ) ∋ ( ( λ x4470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d445 = if ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> x4460 ) ) ) $ ( d225 ) then if d223 then true else d98 else if d26 then true else d211
        d448 : ( ( Set -> Set ) ∋ ( ( λ x4500 -> ( ( Set -> Set ) ∋ ( ( λ x4510 -> if true then Bool else x4510 ) ) ) $ ( x4500 ) ) ) ) $ ( if true then Bool else Bool )
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> if d268 then true else d356 ) ) ) $ ( if d15 then true else d34 )
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4540 -> ( ( Set -> Set ) ∋ ( ( λ x4550 -> if true then x4540 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> if false then true else true ) ) ) $ ( if d1 then false else true )
        d456 : if false then if false then Bool else Bool else if true then Bool else Bool
        d456 = if ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> d156 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> true ) ) ) $ ( d228 ) else if false then d41 else true
        d459 : ( ( Set -> Set ) ∋ ( ( λ x4630 -> ( ( Set -> Set ) ∋ ( ( λ x4640 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d459 = if ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> d281 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> x4610 ) ) ) $ ( d218 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> true ) ) ) $ ( true )
        d465 : if true then ( ( Set -> Set ) ∋ ( ( λ x4680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4690 -> Bool ) ) ) $ ( Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> if false then false else d82 ) ) ) $ ( d84 ) ) ) ) $ ( if false then d362 else true )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x4730 -> if true then x4730 else Bool ) ) ) $ ( if false then Bool else Bool )
        d470 = if if d225 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> d353 ) ) ) $ ( d15 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> true ) ) ) $ ( false )
        d474 : if false then ( ( Set -> Set ) ∋ ( ( λ x4760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4770 -> x4770 ) ) ) $ ( Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if false then true else false ) ) ) $ ( if false then false else d1 )
        d478 : ( ( Set -> Set ) ∋ ( ( λ x4810 -> ( ( Set -> Set ) ∋ ( ( λ x4820 -> if false then x4810 else x4820 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> if false then d5 else false ) ) ) $ ( d335 ) ) ) ) $ ( if false then d178 else false )
        d483 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4860 -> x4860 ) ) ) $ ( Bool )
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> if x4840 then d349 else true ) ) ) $ ( x4840 ) ) ) ) $ ( if d26 then false else true )
        d487 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4890 -> x4890 ) ) ) $ ( Bool )
        d487 = ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if true then true else d165 ) ) ) $ ( if false then d302 else d214 )
        d490 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4920 -> x4920 ) ) ) $ ( Bool )
        d490 = ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> if x4910 then false else false ) ) ) $ ( if true then d349 else d470 )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4960 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> if d63 then x4940 else true ) ) ) $ ( x4940 ) ) ) ) $ ( if d117 then d339 else false )
        d497 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( Bool )
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> if d292 then false else true ) ) ) $ ( true ) ) ) ) $ ( if false then d306 else false )
        d501 : ( ( Set -> Set ) ∋ ( ( λ x5040 -> ( ( Set -> Set ) ∋ ( ( λ x5050 -> if false then x5040 else Bool ) ) ) $ ( x5040 ) ) ) ) $ ( if false then Bool else Bool )
        d501 = if ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> d268 ) ) ) $ ( d430 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> false ) ) ) $ ( false )
        d506 : ( ( Set -> Set ) ∋ ( ( λ x5090 -> ( ( Set -> Set ) ∋ ( ( λ x5100 -> if false then x5100 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d506 = if ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> d353 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> x5080 ) ) ) $ ( false ) else if true then d156 else d397
        d511 : ( ( Set -> Set ) ∋ ( ( λ x5140 -> ( ( Set -> Set ) ∋ ( ( λ x5150 -> if true then x5150 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d511 = ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> if d117 then true else false ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d516 : if false then ( ( Set -> Set ) ∋ ( ( λ x5190 -> x5190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5200 -> Bool ) ) ) $ ( Bool )
        d516 = if if true then d66 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> true ) ) ) $ ( false )
        d521 : ( ( Set -> Set ) ∋ ( ( λ x5230 -> ( ( Set -> Set ) ∋ ( ( λ x5240 -> if false then x5230 else x5240 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> if d316 then x5220 else d218 ) ) ) $ ( if d102 then d425 else true )
        d525 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5270 -> x5270 ) ) ) $ ( Bool )
        d525 = if if d187 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> d172 ) ) ) $ ( d41 ) else if d493 then d264 else d15
        d528 : if true then ( ( Set -> Set ) ∋ ( ( λ x5300 -> x5300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5310 -> x5310 ) ) ) $ ( Bool )
        d528 = if if d459 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> false ) ) ) $ ( d187 ) else if d445 then d493 else d292
        d532 : ( ( Set -> Set ) ∋ ( ( λ x5350 -> ( ( Set -> Set ) ∋ ( ( λ x5360 -> if false then x5350 else x5360 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d532 = if ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> d261 ) ) ) $ ( d465 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> x5340 ) ) ) $ ( false ) else if d369 then true else true
        d537 : if true then if true then Bool else Bool else if false then Bool else Bool
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> if false then d349 else x5380 ) ) ) $ ( if d84 then d417 else d264 )
        d539 : ( ( Set -> Set ) ∋ ( ( λ x5410 -> ( ( Set -> Set ) ∋ ( ( λ x5420 -> if true then Bool else x5410 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d539 = if if false then true else true then if d331 then d82 else d50 else ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> false ) ) ) $ ( d362 )
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> ( ( Set -> Set ) ∋ ( ( λ x5460 -> if false then x5460 else x5450 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if x5440 then true else false ) ) ) $ ( if d442 then d241 else d511 )
        d547 : if true then if false then Bool else Bool else if false then Bool else Bool
        d547 = if ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( d120 ) then if d487 then d314 else false else if d50 then true else d21
        d549 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> if true then Bool else x5500 ) ) ) $ ( if false then Bool else Bool )
        d549 = if if true then false else true then if d506 then false else d264 else if d425 then false else false
        d551 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5530 -> x5530 ) ) ) $ ( Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> if d5 then x5520 else x5520 ) ) ) $ ( if d66 then false else false )
        d554 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5550 -> Bool ) ) ) $ ( Bool )
        d554 = if if d142 then d257 else false then if false then d59 else false else if true then true else d459
        d556 : ( ( Set -> Set ) ∋ ( ( λ x5590 -> if true then x5590 else Bool ) ) ) $ ( if true then Bool else Bool )
        d556 = ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> if x5580 then d465 else d50 ) ) ) $ ( d497 ) ) ) ) $ ( if d331 then false else d506 )
        d560 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5630 -> Bool ) ) ) $ ( Bool )
        d560 = if if true then d47 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> true ) ) ) $ ( d393 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> x5620 ) ) ) $ ( true )
        d564 : ( ( Set -> Set ) ∋ ( ( λ x5670 -> if false then Bool else x5670 ) ) ) $ ( if false then Bool else Bool )
        d564 = if if true then d501 else d532 then ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> d98 ) ) ) $ ( d474 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> x5660 ) ) ) $ ( d321 )
        d568 : ( ( Set -> Set ) ∋ ( ( λ x5710 -> if true then x5710 else x5710 ) ) ) $ ( if true then Bool else Bool )
        d568 = if ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> x5700 ) ) ) $ ( d362 ) else if true then d292 else false
        d572 : ( ( Set -> Set ) ∋ ( ( λ x5750 -> ( ( Set -> Set ) ∋ ( ( λ x5760 -> if true then x5760 else x5760 ) ) ) $ ( x5750 ) ) ) ) $ ( if false then Bool else Bool )
        d572 = ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> ( ( Bool -> Bool ) ∋ ( ( λ x5740 -> if d273 then false else x5730 ) ) ) $ ( d241 ) ) ) ) $ ( if false then true else false )
        d577 : ( ( Set -> Set ) ∋ ( ( λ x5790 -> if true then x5790 else Bool ) ) ) $ ( if false then Bool else Bool )
        d577 = ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> if x5780 then d543 else d532 ) ) ) $ ( if d228 then d129 else true )
        d580 : ( ( Set -> Set ) ∋ ( ( λ x5820 -> if false then x5820 else x5820 ) ) ) $ ( if false then Bool else Bool )
        d580 = if if d430 then true else d356 then if d572 then d331 else d261 else ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> x5810 ) ) ) $ ( false )
        d583 : if true then ( ( Set -> Set ) ∋ ( ( λ x5860 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> if true then d79 else d165 ) ) ) $ ( x5840 ) ) ) ) $ ( if false then true else d71 )
        d587 : ( ( Set -> Set ) ∋ ( ( λ x5900 -> ( ( Set -> Set ) ∋ ( ( λ x5910 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d587 = ( ( Bool -> Bool ) ∋ ( ( λ x5880 -> ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> if x5890 then false else x5880 ) ) ) $ ( x5880 ) ) ) ) $ ( if d257 then true else false )
        d592 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5950 -> x5950 ) ) ) $ ( Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> if false then true else x5930 ) ) ) $ ( x5930 ) ) ) ) $ ( if d38 then d50 else d393 )
        d596 : if true then ( ( Set -> Set ) ∋ ( ( λ x5980 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d596 = ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> if x5970 then x5970 else false ) ) ) $ ( if true then d165 else d21 )
        d599 : if true then if false then Bool else Bool else if false then Bool else Bool
        d599 = ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> if x6000 then d264 else d178 ) ) ) $ ( if false then false else d487 )
        d601 : if true then ( ( Set -> Set ) ∋ ( ( λ x6030 -> x6030 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6040 -> Bool ) ) ) $ ( Bool )
        d601 = if if d15 then d102 else d490 then ( ( Bool -> Bool ) ∋ ( ( λ x6020 -> true ) ) ) $ ( d324 ) else if true then true else d564
        d605 : if true then ( ( Set -> Set ) ∋ ( ( λ x6080 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6090 -> Bool ) ) ) $ ( Bool )
        d605 = ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> ( ( Bool -> Bool ) ∋ ( ( λ x6070 -> if x6070 then d506 else x6070 ) ) ) $ ( x6060 ) ) ) ) $ ( if false then false else d204 )
        d610 : ( ( Set -> Set ) ∋ ( ( λ x6130 -> if false then x6130 else x6130 ) ) ) $ ( if false then Bool else Bool )
        d610 = if ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> x6110 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> x6120 ) ) ) $ ( true ) else if false then d214 else true
        d614 : ( ( Set -> Set ) ∋ ( ( λ x6170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> if d497 then false else d483 ) ) ) $ ( x6150 ) ) ) ) $ ( if d270 then true else false )
        d618 : ( ( Set -> Set ) ∋ ( ( λ x6210 -> ( ( Set -> Set ) ∋ ( ( λ x6220 -> if true then x6210 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> if x6190 then true else x6200 ) ) ) $ ( d560 ) ) ) ) $ ( if d47 then d182 else d554 )
        d623 : ( ( Set -> Set ) ∋ ( ( λ x6250 -> ( ( Set -> Set ) ∋ ( ( λ x6260 -> if true then Bool else x6250 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d623 = ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> if d288 then x6240 else x6240 ) ) ) $ ( if d279 then false else false )
        d627 : if true then ( ( Set -> Set ) ∋ ( ( λ x6300 -> x6300 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d627 = if ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> true ) ) ) $ ( d506 ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x6290 -> false ) ) ) $ ( true )
        d631 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6350 -> Bool ) ) ) $ ( Bool )
        d631 = if ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> false ) ) ) $ ( false )
        d636 : ( ( Set -> Set ) ∋ ( ( λ x6390 -> if false then x6390 else Bool ) ) ) $ ( if true then Bool else Bool )
        d636 = ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> if d142 then d281 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d129 else false )
        d640 : ( ( Set -> Set ) ∋ ( ( λ x6430 -> ( ( Set -> Set ) ∋ ( ( λ x6440 -> if true then x6440 else Bool ) ) ) $ ( x6430 ) ) ) ) $ ( if true then Bool else Bool )
        d640 = if ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> d601 ) ) ) $ ( d214 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> d516 ) ) ) $ ( true ) else if d169 then d279 else false
        d645 : ( ( Set -> Set ) ∋ ( ( λ x6470 -> if true then x6470 else x6470 ) ) ) $ ( if true then Bool else Bool )
        d645 = if ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> x6460 ) ) ) $ ( d84 ) then if d430 then d631 else d288 else if true then true else true
        d648 : if false then ( ( Set -> Set ) ∋ ( ( λ x6500 -> x6500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d648 = if if d490 then false else d470 then if false then d345 else false else ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> d583 ) ) ) $ ( false )
        d651 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6540 -> x6540 ) ) ) $ ( Bool )
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> ( ( Bool -> Bool ) ∋ ( ( λ x6530 -> if false then d268 else false ) ) ) $ ( x6520 ) ) ) ) $ ( if d497 then d284 else false )
        d655 : ( ( Set -> Set ) ∋ ( ( λ x6570 -> ( ( Set -> Set ) ∋ ( ( λ x6580 -> if true then x6570 else x6570 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d655 = ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> if true then d284 else false ) ) ) $ ( if false then false else true )
        d659 : if false then ( ( Set -> Set ) ∋ ( ( λ x6620 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d659 = if if true then false else d547 then ( ( Bool -> Bool ) ∋ ( ( λ x6600 -> true ) ) ) $ ( d292 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> true ) ) ) $ ( true )
        d663 : ( ( Set -> Set ) ∋ ( ( λ x6660 -> ( ( Set -> Set ) ∋ ( ( λ x6670 -> if false then x6670 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d663 = ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> ( ( Bool -> Bool ) ∋ ( ( λ x6650 -> if x6640 then x6640 else true ) ) ) $ ( x6640 ) ) ) ) $ ( if true then d623 else false )
        d668 : ( ( Set -> Set ) ∋ ( ( λ x6700 -> ( ( Set -> Set ) ∋ ( ( λ x6710 -> if true then Bool else x6700 ) ) ) $ ( x6700 ) ) ) ) $ ( if true then Bool else Bool )
        d668 = if ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( d102 ) then if true then d393 else true else if d264 then d442 else true
        d672 : ( ( Set -> Set ) ∋ ( ( λ x6740 -> if false then Bool else x6740 ) ) ) $ ( if true then Bool else Bool )
        d672 = ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> if true then x6730 else x6730 ) ) ) $ ( if d610 then false else d605 )
        d675 : if false then ( ( Set -> Set ) ∋ ( ( λ x6780 -> x6780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d675 = if ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> x6760 ) ) ) $ ( true ) then if d430 then d417 else false else ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> d264 ) ) ) $ ( false )
        d679 : ( ( Set -> Set ) ∋ ( ( λ x6830 -> ( ( Set -> Set ) ∋ ( ( λ x6840 -> if false then x6830 else x6830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d679 = if ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> true ) ) ) $ ( d316 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> d102 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> false ) ) ) $ ( true )
        d685 : if false then if true then Bool else Bool else if true then Bool else Bool
        d685 = if if d663 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> x6860 ) ) ) $ ( d490 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> d79 ) ) ) $ ( false )
        d688 : if false then ( ( Set -> Set ) ∋ ( ( λ x6900 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> if true then x6890 else d298 ) ) ) $ ( if d402 then false else true )
        d691 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6940 -> x6940 ) ) ) $ ( Bool )
        d691 = if ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> x6920 ) ) ) $ ( d583 ) then if false then d241 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6930 -> x6930 ) ) ) $ ( true )
        d695 : if true then if true then Bool else Bool else if false then Bool else Bool
        d695 = if ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> d539 ) ) ) $ ( d257 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> d549 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6980 -> x6980 ) ) ) $ ( true )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x7030 -> ( ( Set -> Set ) ∋ ( ( λ x7040 -> if false then x7040 else x7030 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d699 = if ( ( Bool -> Bool ) ∋ ( ( λ x7000 -> x7000 ) ) ) $ ( d71 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7010 -> x7010 ) ) ) $ ( d191 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> x7020 ) ) ) $ ( d478 )
        d705 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7080 -> x7080 ) ) ) $ ( Bool )
        d705 = if ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7070 -> x7070 ) ) ) $ ( d560 ) else if d448 then d659 else d63
        d709 : ( ( Set -> Set ) ∋ ( ( λ x7110 -> ( ( Set -> Set ) ∋ ( ( λ x7120 -> if true then Bool else Bool ) ) ) $ ( x7110 ) ) ) ) $ ( if true then Bool else Bool )
        d709 = if if false then d493 else d465 then ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> d292 ) ) ) $ ( false ) else if d253 then true else false
        d713 : if true then ( ( Set -> Set ) ∋ ( ( λ x7160 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d713 = ( ( Bool -> Bool ) ∋ ( ( λ x7140 -> ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> if true then d388 else false ) ) ) $ ( x7140 ) ) ) ) $ ( if d169 then d292 else d349 )
        d717 : if true then ( ( Set -> Set ) ∋ ( ( λ x7190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7200 -> Bool ) ) ) $ ( Bool )
        d717 = ( ( Bool -> Bool ) ∋ ( ( λ x7180 -> if d705 then x7180 else true ) ) ) $ ( if d430 then d407 else d417 )
        d721 : if true then ( ( Set -> Set ) ∋ ( ( λ x7230 -> x7230 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d721 = if if false then true else false then if false then false else d191 else ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> d264 ) ) ) $ ( true )
        d724 : if true then ( ( Set -> Set ) ∋ ( ( λ x7270 -> x7270 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> ( ( Bool -> Bool ) ∋ ( ( λ x7260 -> if x7250 then x7260 else true ) ) ) $ ( true ) ) ) ) $ ( if d487 then d273 else d114 )
        d728 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7300 -> Bool ) ) ) $ ( Bool )
        d728 = if ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> d713 ) ) ) $ ( false ) then if d261 then d5 else true else if true then false else true
        d731 : ( ( Set -> Set ) ∋ ( ( λ x7330 -> ( ( Set -> Set ) ∋ ( ( λ x7340 -> if false then x7340 else x7330 ) ) ) $ ( x7330 ) ) ) ) $ ( if true then Bool else Bool )
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> if d182 then x7320 else true ) ) ) $ ( if true then d434 else true )
        d735 : ( ( Set -> Set ) ∋ ( ( λ x7370 -> ( ( Set -> Set ) ∋ ( ( λ x7380 -> if true then x7370 else x7370 ) ) ) $ ( x7370 ) ) ) ) $ ( if true then Bool else Bool )
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> if x7360 then d685 else false ) ) ) $ ( if d288 then false else true )
        d739 : ( ( Set -> Set ) ∋ ( ( λ x7400 -> ( ( Set -> Set ) ∋ ( ( λ x7410 -> if false then x7410 else x7400 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d739 = if if d279 then d728 else true then if false then d539 else d618 else if d501 then d178 else d75
        d742 : if false then ( ( Set -> Set ) ∋ ( ( λ x7450 -> x7450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7460 -> Bool ) ) ) $ ( Bool )
        d742 = ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> ( ( Bool -> Bool ) ∋ ( ( λ x7440 -> if d651 then true else x7430 ) ) ) $ ( x7430 ) ) ) ) $ ( if true then d264 else d321 )
        d747 : if false then if false then Bool else Bool else if true then Bool else Bool
        d747 = ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> if true then false else d5 ) ) ) $ ( if d648 then d26 else true )
        d749 : ( ( Set -> Set ) ∋ ( ( λ x7510 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> if x7500 then d456 else false ) ) ) $ ( if d182 then d425 else d497 )
        d752 : if true then ( ( Set -> Set ) ∋ ( ( λ x7550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7560 -> Bool ) ) ) $ ( Bool )
        d752 = if if d384 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> d724 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> false ) ) ) $ ( d572 )
        d757 : ( ( Set -> Set ) ∋ ( ( λ x7600 -> ( ( Set -> Set ) ∋ ( ( λ x7610 -> if true then x7600 else x7600 ) ) ) $ ( x7600 ) ) ) ) $ ( if true then Bool else Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> if x7580 then true else x7580 ) ) ) $ ( x7580 ) ) ) ) $ ( if d554 then false else d302 )
        d762 : if false then ( ( Set -> Set ) ∋ ( ( λ x7640 -> x7640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> if x7630 then x7630 else d160 ) ) ) $ ( if true then true else false )
        d765 : ( ( Set -> Set ) ∋ ( ( λ x7680 -> ( ( Set -> Set ) ∋ ( ( λ x7690 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d765 = if if d21 then d321 else d211 then ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> d302 ) ) ) $ ( d525 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> true ) ) ) $ ( d688 )
        d770 : ( ( Set -> Set ) ∋ ( ( λ x7720 -> ( ( Set -> Set ) ∋ ( ( λ x7730 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d770 = ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> if true then true else false ) ) ) $ ( if true then false else true )
        d774 : if true then ( ( Set -> Set ) ∋ ( ( λ x7760 -> x7760 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7770 -> x7770 ) ) ) $ ( Bool )
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> if true then true else false ) ) ) $ ( if d261 then false else true )
        d778 : ( ( Set -> Set ) ∋ ( ( λ x7800 -> if false then x7800 else x7800 ) ) ) $ ( if true then Bool else Bool )
        d778 = ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> if true then d75 else false ) ) ) $ ( if d430 then d349 else false )
        d781 : ( ( Set -> Set ) ∋ ( ( λ x7830 -> if true then x7830 else x7830 ) ) ) $ ( if true then Bool else Bool )
        d781 = if if d316 then d765 else d724 then ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> true ) ) ) $ ( false ) else if d483 then true else d169
        d784 : ( ( Set -> Set ) ∋ ( ( λ x7870 -> if false then x7870 else Bool ) ) ) $ ( if false then Bool else Bool )
        d784 = ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> if d554 then d172 else d98 ) ) ) $ ( false ) ) ) ) $ ( if d380 then true else d572 )
        d788 : ( ( Set -> Set ) ∋ ( ( λ x7890 -> if false then x7890 else x7890 ) ) ) $ ( if true then Bool else Bool )
        d788 = if if false then d156 else d71 then if false then true else true else if d549 then true else d187
        d790 : ( ( Set -> Set ) ∋ ( ( λ x7920 -> if false then x7920 else Bool ) ) ) $ ( if true then Bool else Bool )
        d790 = ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> if x7910 then x7910 else d434 ) ) ) $ ( if d182 then false else d63 )
        d793 : ( ( Set -> Set ) ∋ ( ( λ x7960 -> ( ( Set -> Set ) ∋ ( ( λ x7970 -> if true then x7960 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d793 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> d601 ) ) ) $ ( d316 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> d321 ) ) ) $ ( false )
        d798 : if true then ( ( Set -> Set ) ∋ ( ( λ x8000 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8010 -> Bool ) ) ) $ ( Bool )
        d798 = ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> if d249 then d762 else d253 ) ) ) $ ( if d148 then true else true )
        d802 : if false then ( ( Set -> Set ) ∋ ( ( λ x8040 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d802 = if ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> d138 ) ) ) $ ( true ) then if d143 then false else d765 else if d421 then d456 else d442
        d805 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8080 -> x8080 ) ) ) $ ( Bool )
        d805 = if ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> d802 ) ) ) $ ( false ) then if d369 then d685 else true else ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> d273 ) ) ) $ ( d456 )
        d809 : ( ( Set -> Set ) ∋ ( ( λ x8110 -> ( ( Set -> Set ) ∋ ( ( λ x8120 -> if false then Bool else x8110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d809 = ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> if x8100 then true else true ) ) ) $ ( if d169 then d384 else false )
        d813 : ( ( Set -> Set ) ∋ ( ( λ x8150 -> if false then Bool else x8150 ) ) ) $ ( if true then Bool else Bool )
        d813 = if if true then d165 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> false ) ) ) $ ( d117 ) else if false then d195 else true
        d816 : if false then ( ( Set -> Set ) ∋ ( ( λ x8190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8200 -> Bool ) ) ) $ ( Bool )
        d816 = if ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> false ) ) ) $ ( false ) then if false then d9 else true else ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> false ) ) ) $ ( d560 )
        d821 : if false then if false then Bool else Bool else if false then Bool else Bool
        d821 = ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> if x8220 then d757 else x8230 ) ) ) $ ( x8220 ) ) ) ) $ ( if d208 then d430 else true )
        d824 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8270 -> x8270 ) ) ) $ ( Bool )
        d824 = ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> ( ( Bool -> Bool ) ∋ ( ( λ x8260 -> if x8250 then x8260 else d798 ) ) ) $ ( d288 ) ) ) ) $ ( if true then false else d577 )
        d828 : if false then if false then Bool else Bool else if false then Bool else Bool
        d828 = ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> if x8290 then x8290 else d587 ) ) ) $ ( if d679 then true else d298 )
        d830 : if true then if true then Bool else Bool else if true then Bool else Bool
        d830 = ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if false then true else d120 ) ) ) $ ( false ) ) ) ) $ ( if d124 then d236 else d465 )
        d833 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8350 -> x8350 ) ) ) $ ( Bool )
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> if d339 then x8340 else d521 ) ) ) $ ( if true then true else false )
        d836 : if true then if true then Bool else Bool else if true then Bool else Bool
        d836 = if if true then d525 else false then ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> d402 ) ) ) $ ( false )
        d839 : ( ( Set -> Set ) ∋ ( ( λ x8430 -> if false then Bool else x8430 ) ) ) $ ( if false then Bool else Bool )
        d839 = if ( ( Bool -> Bool ) ∋ ( ( λ x8400 -> x8400 ) ) ) $ ( d284 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8410 -> x8410 ) ) ) $ ( d551 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> x8420 ) ) ) $ ( true )
        d844 : ( ( Set -> Set ) ∋ ( ( λ x8450 -> if true then x8450 else x8450 ) ) ) $ ( if false then Bool else Bool )
        d844 = if if false then false else false then if d345 then true else false else if true then d79 else true
        d846 : if false then ( ( Set -> Set ) ∋ ( ( λ x8480 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8490 -> Bool ) ) ) $ ( Bool )
        d846 = ( ( Bool -> Bool ) ∋ ( ( λ x8470 -> if x8470 then x8470 else false ) ) ) $ ( if false then true else false )
        d850 : if false then ( ( Set -> Set ) ∋ ( ( λ x8520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8530 -> Bool ) ) ) $ ( Bool )
        d850 = ( ( Bool -> Bool ) ∋ ( ( λ x8510 -> if d182 then d497 else true ) ) ) $ ( if d29 then d747 else true )
        d854 : ( ( Set -> Set ) ∋ ( ( λ x8560 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d854 = ( ( Bool -> Bool ) ∋ ( ( λ x8550 -> if true then d605 else false ) ) ) $ ( if d324 then d813 else true )
        d857 : ( ( Set -> Set ) ∋ ( ( λ x8600 -> if false then x8600 else x8600 ) ) ) $ ( if true then Bool else Bool )
        d857 = if ( ( Bool -> Bool ) ∋ ( ( λ x8580 -> false ) ) ) $ ( false ) then if d160 then d342 else true else ( ( Bool -> Bool ) ∋ ( ( λ x8590 -> d264 ) ) ) $ ( d129 )
        d861 : if true then if false then Bool else Bool else if true then Bool else Bool
        d861 = ( ( Bool -> Bool ) ∋ ( ( λ x8620 -> if false then d110 else x8620 ) ) ) $ ( if true then true else d241 )
        d863 : if false then ( ( Set -> Set ) ∋ ( ( λ x8650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> if true then false else false ) ) ) $ ( if d839 then d295 else d695 )
        d866 : ( ( Set -> Set ) ∋ ( ( λ x8680 -> ( ( Set -> Set ) ∋ ( ( λ x8690 -> if true then x8690 else Bool ) ) ) $ ( x8680 ) ) ) ) $ ( if true then Bool else Bool )
        d866 = ( ( Bool -> Bool ) ∋ ( ( λ x8670 -> if false then d675 else d279 ) ) ) $ ( if d601 then true else d384 )
        d870 : if true then ( ( Set -> Set ) ∋ ( ( λ x8730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8740 -> Bool ) ) ) $ ( Bool )
        d870 = if if d501 then d623 else d310 then ( ( Bool -> Bool ) ∋ ( ( λ x8710 -> true ) ) ) $ ( d292 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8720 -> x8720 ) ) ) $ ( true )
        d875 : if true then ( ( Set -> Set ) ∋ ( ( λ x8780 -> x8780 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d875 = ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> if x8760 then false else true ) ) ) $ ( x8760 ) ) ) ) $ ( if d425 then d223 else false )
        d879 : ( ( Set -> Set ) ∋ ( ( λ x8820 -> ( ( Set -> Set ) ∋ ( ( λ x8830 -> if true then Bool else Bool ) ) ) $ ( x8820 ) ) ) ) $ ( if true then Bool else Bool )
        d879 = ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> ( ( Bool -> Bool ) ∋ ( ( λ x8810 -> if d850 then false else d276 ) ) ) $ ( d844 ) ) ) ) $ ( if true then false else d465 )
        d884 : if true then if true then Bool else Bool else if true then Bool else Bool
        d884 = if ( ( Bool -> Bool ) ∋ ( ( λ x8850 -> true ) ) ) $ ( d532 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8860 -> d50 ) ) ) $ ( d143 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> x8870 ) ) ) $ ( true )
        d888 : if true then ( ( Set -> Set ) ∋ ( ( λ x8900 -> x8900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8910 -> x8910 ) ) ) $ ( Bool )
        d888 = ( ( Bool -> Bool ) ∋ ( ( λ x8890 -> if false then d688 else false ) ) ) $ ( if d731 then d388 else d821 )
        d892 : if true then ( ( Set -> Set ) ∋ ( ( λ x8950 -> x8950 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d892 = ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> if d547 then true else x8940 ) ) ) $ ( true ) ) ) ) $ ( if d549 then d802 else true )
        d896 : ( ( Set -> Set ) ∋ ( ( λ x8980 -> ( ( Set -> Set ) ∋ ( ( λ x8990 -> if false then x8980 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d896 = ( ( Bool -> Bool ) ∋ ( ( λ x8970 -> if false then false else d839 ) ) ) $ ( if true then d709 else d138 )
        d900 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9010 -> x9010 ) ) ) $ ( Bool )
        d900 = if if false then true else true then if true then d276 else d310 else if true then d276 else d456
        d902 : ( ( Set -> Set ) ∋ ( ( λ x9060 -> if false then x9060 else Bool ) ) ) $ ( if true then Bool else Bool )
        d902 = if ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> false ) ) ) $ ( d79 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> d747 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> false ) ) ) $ ( d836 )
        d907 : if false then ( ( Set -> Set ) ∋ ( ( λ x9100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d907 = if ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> d839 ) ) ) $ ( d830 ) then if d21 then d483 else d195 else ( ( Bool -> Bool ) ∋ ( ( λ x9090 -> d438 ) ) ) $ ( d596 )
        d911 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9150 -> Bool ) ) ) $ ( Bool )
        d911 = if ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> d345 ) ) ) $ ( d63 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> false ) ) ) $ ( d572 )
        d916 : if false then ( ( Set -> Set ) ∋ ( ( λ x9180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9190 -> x9190 ) ) ) $ ( Bool )
        d916 = ( ( Bool -> Bool ) ∋ ( ( λ x9170 -> if false then true else d728 ) ) ) $ ( if true then d442 else false )
        d920 : ( ( Set -> Set ) ∋ ( ( λ x9220 -> if false then Bool else x9220 ) ) ) $ ( if false then Bool else Bool )
        d920 = if if d651 then false else d765 then ( ( Bool -> Bool ) ∋ ( ( λ x9210 -> false ) ) ) $ ( d663 ) else if true then true else true
        d923 : if false then ( ( Set -> Set ) ∋ ( ( λ x9250 -> x9250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9260 -> x9260 ) ) ) $ ( Bool )
        d923 = if ( ( Bool -> Bool ) ∋ ( ( λ x9240 -> d781 ) ) ) $ ( true ) then if false then d442 else d169 else if d587 then true else d774
        d927 : if true then ( ( Set -> Set ) ∋ ( ( λ x9300 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> if false then x9280 else d321 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d388 )
        d931 : ( ( Set -> Set ) ∋ ( ( λ x9340 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d931 = ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> ( ( Bool -> Bool ) ∋ ( ( λ x9330 -> if x9330 then d452 else x9320 ) ) ) $ ( x9320 ) ) ) ) $ ( if d824 then d204 else true )
        d935 : if true then if true then Bool else Bool else if true then Bool else Bool
        d935 = if if d705 then false else false then if false then d34 else d728 else ( ( Bool -> Bool ) ∋ ( ( λ x9360 -> d675 ) ) ) $ ( true )
        d937 : ( ( Set -> Set ) ∋ ( ( λ x9400 -> ( ( Set -> Set ) ∋ ( ( λ x9410 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d937 = if ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> x9380 ) ) ) $ ( true ) then if d345 then d705 else d802 else ( ( Bool -> Bool ) ∋ ( ( λ x9390 -> false ) ) ) $ ( d651 )
        d942 : ( ( Set -> Set ) ∋ ( ( λ x9450 -> if true then x9450 else x9450 ) ) ) $ ( if false then Bool else Bool )
        d942 = if ( ( Bool -> Bool ) ∋ ( ( λ x9430 -> x9430 ) ) ) $ ( d813 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> true ) ) ) $ ( d892 ) else if true then false else true
        d946 : ( ( Set -> Set ) ∋ ( ( λ x9490 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d946 = if if false then d839 else d465 then ( ( Bool -> Bool ) ∋ ( ( λ x9470 -> x9470 ) ) ) $ ( d362 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> true ) ) ) $ ( true )
        d950 : if false then ( ( Set -> Set ) ∋ ( ( λ x9530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9540 -> x9540 ) ) ) $ ( Bool )
        d950 = if ( ( Bool -> Bool ) ∋ ( ( λ x9510 -> x9510 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> true ) ) ) $ ( d434 ) else if d178 then d802 else true
        d955 : if true then ( ( Set -> Set ) ∋ ( ( λ x9580 -> x9580 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9590 -> x9590 ) ) ) $ ( Bool )
        d955 = ( ( Bool -> Bool ) ∋ ( ( λ x9560 -> ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> if d26 then x9560 else x9570 ) ) ) $ ( x9560 ) ) ) ) $ ( if d270 then d452 else d465 )
        d960 : if true then ( ( Set -> Set ) ∋ ( ( λ x9620 -> x9620 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d960 = if ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> d640 ) ) ) $ ( d273 ) then if true then false else d430 else if false then d655 else d610
        d963 : ( ( Set -> Set ) ∋ ( ( λ x9650 -> if false then Bool else x9650 ) ) ) $ ( if true then Bool else Bool )
        d963 = ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> if true then false else true ) ) ) $ ( if d295 then false else d731 )
        d966 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9690 -> Bool ) ) ) $ ( Bool )
        d966 = ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> ( ( Bool -> Bool ) ∋ ( ( λ x9680 -> if true then d549 else d699 ) ) ) $ ( d223 ) ) ) ) $ ( if false then d623 else false )
        d970 : ( ( Set -> Set ) ∋ ( ( λ x9720 -> ( ( Set -> Set ) ∋ ( ( λ x9730 -> if false then Bool else x9720 ) ) ) $ ( x9720 ) ) ) ) $ ( if true then Bool else Bool )
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> if true then true else true ) ) ) $ ( if d679 then d273 else true )
        d974 : if true then ( ( Set -> Set ) ∋ ( ( λ x9770 -> x9770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9780 -> x9780 ) ) ) $ ( Bool )
        d974 = if ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> false ) ) ) $ ( d645 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> true ) ) ) $ ( d511 )
        d979 : if true then ( ( Set -> Set ) ∋ ( ( λ x9820 -> x9820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9830 -> x9830 ) ) ) $ ( Bool )
        d979 = if ( ( Bool -> Bool ) ∋ ( ( λ x9800 -> d648 ) ) ) $ ( d169 ) then if d384 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> d165 ) ) ) $ ( false )
        d984 : if false then if true then Bool else Bool else if false then Bool else Bool
        d984 = if if d41 then d236 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> x9850 ) ) ) $ ( d892 ) else if false then false else d863
        d986 : ( ( Set -> Set ) ∋ ( ( λ x9880 -> ( ( Set -> Set ) ∋ ( ( λ x9890 -> if true then x9880 else Bool ) ) ) $ ( x9880 ) ) ) ) $ ( if true then Bool else Bool )
        d986 = ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> if d187 then d82 else x9870 ) ) ) $ ( if d532 then true else false )
        d990 : ( ( Set -> Set ) ∋ ( ( λ x9920 -> if true then x9920 else x9920 ) ) ) $ ( if false then Bool else Bool )
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x9910 -> if true then x9910 else x9910 ) ) ) $ ( if d672 then true else d165 )
        d993 : ( ( Set -> Set ) ∋ ( ( λ x9950 -> ( ( Set -> Set ) ∋ ( ( λ x9960 -> if true then x9960 else x9950 ) ) ) $ ( x9950 ) ) ) ) $ ( if true then Bool else Bool )
        d993 = if if true then d724 else d970 then ( ( Bool -> Bool ) ∋ ( ( λ x9940 -> d717 ) ) ) $ ( false ) else if false then false else d816
        d997 : ( ( Set -> Set ) ∋ ( ( λ x9990 -> if true then x9990 else Bool ) ) ) $ ( if false then Bool else Bool )
        d997 = ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> if d821 then d870 else d830 ) ) ) $ ( if true then d511 else d388 )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10020 -> ( ( Set -> Set ) ∋ ( ( λ x10030 -> if true then x10020 else Bool ) ) ) $ ( x10020 ) ) ) ) $ ( if true then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> if x10010 then x10010 else x10010 ) ) ) $ ( if true then d675 else d547 )
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x10070 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1004 = if ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> false ) ) ) $ ( d18 ) then if true then false else d709 else ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> d375 ) ) ) $ ( d106 )
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x10100 -> ( ( Set -> Set ) ∋ ( ( λ x10110 -> if false then x10100 else x10110 ) ) ) $ ( x10100 ) ) ) ) $ ( if false then Bool else Bool )
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> if d474 then x10090 else x10090 ) ) ) $ ( if false then d651 else true )
        d1012 : ( ( Set -> Set ) ∋ ( ( λ x10150 -> if false then x10150 else x10150 ) ) ) $ ( if false then Bool else Bool )
        d1012 = if if d986 then d211 else d551 then ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> x10130 ) ) ) $ ( d264 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10140 -> d511 ) ) ) $ ( false )
        d1016 : ( ( Set -> Set ) ∋ ( ( λ x10180 -> if true then x10180 else x10180 ) ) ) $ ( if false then Bool else Bool )
        d1016 = if ( ( Bool -> Bool ) ∋ ( ( λ x10170 -> x10170 ) ) ) $ ( false ) then if d356 then false else false else if true then d232 else false
        d1019 : if true then ( ( Set -> Set ) ∋ ( ( λ x10220 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1019 = ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> ( ( Bool -> Bool ) ∋ ( ( λ x10210 -> if x10200 then d950 else x10200 ) ) ) $ ( true ) ) ) ) $ ( if d169 then true else d900 )
        d1023 : if true then ( ( Set -> Set ) ∋ ( ( λ x10270 -> x10270 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1023 = if ( ( Bool -> Bool ) ∋ ( ( λ x10240 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> d225 ) ) ) $ ( d110 )
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x10300 -> if false then Bool else x10300 ) ) ) $ ( if true then Bool else Bool )
        d1028 = if if d990 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> true ) ) ) $ ( d1008 ) else if d191 then true else false
        d1031 : ( ( Set -> Set ) ∋ ( ( λ x10340 -> if false then Bool else x10340 ) ) ) $ ( if false then Bool else Bool )
        d1031 = if ( ( Bool -> Bool ) ∋ ( ( λ x10320 -> true ) ) ) $ ( d331 ) then if d445 then d134 else d1016 else ( ( Bool -> Bool ) ∋ ( ( λ x10330 -> d931 ) ) ) $ ( d273 )
        d1035 : if false then ( ( Set -> Set ) ∋ ( ( λ x10380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10390 -> Bool ) ) ) $ ( Bool )
        d1035 = ( ( Bool -> Bool ) ∋ ( ( λ x10360 -> ( ( Bool -> Bool ) ∋ ( ( λ x10370 -> if true then false else x10360 ) ) ) $ ( x10360 ) ) ) ) $ ( if d699 then d430 else false )
        d1040 : if true then ( ( Set -> Set ) ∋ ( ( λ x10430 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1040 = ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> if true then d836 else false ) ) ) $ ( true ) ) ) ) $ ( if d295 then true else d1019 )
        d1044 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10460 -> Bool ) ) ) $ ( Bool )
        d1044 = ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> if d288 then d762 else d393 ) ) ) $ ( if d836 then d900 else d749 )
        d1047 : ( ( Set -> Set ) ∋ ( ( λ x10510 -> ( ( Set -> Set ) ∋ ( ( λ x10520 -> if false then Bool else Bool ) ) ) $ ( x10510 ) ) ) ) $ ( if false then Bool else Bool )
        d1047 = if ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> d892 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> d412 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> x10500 ) ) ) $ ( true )
        d1053 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1053 = if ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> x10540 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> d793 ) ) ) $ ( d749 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> d1016 ) ) ) $ ( true )
        d1057 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1057 = ( ( Bool -> Bool ) ∋ ( ( λ x10580 -> if true then d774 else x10580 ) ) ) $ ( if false then d525 else true )
        d1059 : ( ( Set -> Set ) ∋ ( ( λ x10620 -> ( ( Set -> Set ) ∋ ( ( λ x10630 -> if true then x10630 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1059 = ( ( Bool -> Bool ) ∋ ( ( λ x10600 -> ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> if d232 then x10600 else x10610 ) ) ) $ ( x10600 ) ) ) ) $ ( if false then false else true )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x10670 -> if false then x10670 else x10670 ) ) ) $ ( if false then Bool else Bool )
        d1064 = if ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10660 -> x10660 ) ) ) $ ( d172 ) else if d688 then true else d178
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x10700 -> if true then x10700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1068 = if if d292 then d974 else false then ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> true ) ) ) $ ( true ) else if true then d380 else d870
        d1071 : if false then ( ( Set -> Set ) ∋ ( ( λ x10730 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1071 = if if d425 then d5 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10720 -> x10720 ) ) ) $ ( true ) else if d539 then false else false
        d1074 : if true then ( ( Set -> Set ) ∋ ( ( λ x10770 -> x10770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10780 -> Bool ) ) ) $ ( Bool )
        d1074 = if ( ( Bool -> Bool ) ∋ ( ( λ x10750 -> x10750 ) ) ) $ ( d679 ) then if d106 then d264 else d380 else ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> x10760 ) ) ) $ ( d528 )
        d1079 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1079 = if if d888 then d211 else d788 then ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> x10810 ) ) ) $ ( false )
        d1082 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> if true then d191 else x10830 ) ) ) $ ( if d636 then d935 else false )
        d1084 : ( ( Set -> Set ) ∋ ( ( λ x10860 -> ( ( Set -> Set ) ∋ ( ( λ x10870 -> if false then x10870 else x10860 ) ) ) $ ( x10860 ) ) ) ) $ ( if false then Bool else Bool )
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> if true then x10850 else x10850 ) ) ) $ ( if d651 then d695 else true )
        d1088 : if true then ( ( Set -> Set ) ∋ ( ( λ x10900 -> x10900 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1088 = ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> if d735 then false else false ) ) ) $ ( if true then false else false )
        d1091 : ( ( Set -> Set ) ∋ ( ( λ x10940 -> ( ( Set -> Set ) ∋ ( ( λ x10950 -> if true then x10950 else x10940 ) ) ) $ ( x10940 ) ) ) ) $ ( if true then Bool else Bool )
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> if false then d774 else x10930 ) ) ) $ ( x10920 ) ) ) ) $ ( if d802 then false else false )
        d1096 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10990 -> Bool ) ) ) $ ( Bool )
        d1096 = ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> if false then false else x10980 ) ) ) $ ( false ) ) ) ) $ ( if d1079 then d599 else true )
        d1100 : ( ( Set -> Set ) ∋ ( ( λ x11020 -> ( ( Set -> Set ) ∋ ( ( λ x11030 -> if true then x11020 else x11020 ) ) ) $ ( x11020 ) ) ) ) $ ( if true then Bool else Bool )
        d1100 = if ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> true ) ) ) $ ( d828 ) then if true then true else false else if d71 then true else false
        d1104 : ( ( Set -> Set ) ∋ ( ( λ x11070 -> if true then x11070 else x11070 ) ) ) $ ( if false then Bool else Bool )
        d1104 = if ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> x11060 ) ) ) $ ( true ) else if false then d916 else true
        d1108 : if true then ( ( Set -> Set ) ∋ ( ( λ x11110 -> x11110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11120 -> Bool ) ) ) $ ( Bool )
        d1108 = ( ( Bool -> Bool ) ∋ ( ( λ x11090 -> ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> if d923 then x11090 else d896 ) ) ) $ ( x11090 ) ) ) ) $ ( if true then false else d556 )
        d1113 : ( ( Set -> Set ) ∋ ( ( λ x11170 -> ( ( Set -> Set ) ∋ ( ( λ x11180 -> if true then x11170 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1113 = if ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> d1008 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> true ) ) ) $ ( d465 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> false ) ) ) $ ( true )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x11210 -> ( ( Set -> Set ) ∋ ( ( λ x11220 -> if false then Bool else Bool ) ) ) $ ( x11210 ) ) ) ) $ ( if false then Bool else Bool )
        d1119 = if if true then d1023 else d349 then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x11200 -> x11200 ) ) ) $ ( d1028 )
        d1123 : ( ( Set -> Set ) ∋ ( ( λ x11260 -> ( ( Set -> Set ) ∋ ( ( λ x11270 -> if false then Bool else Bool ) ) ) $ ( x11260 ) ) ) ) $ ( if true then Bool else Bool )
        d1123 = ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> if x11250 then false else x11250 ) ) ) $ ( x11240 ) ) ) ) $ ( if d770 then d857 else d742 )
        d1128 : if false then ( ( Set -> Set ) ∋ ( ( λ x11290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11300 -> Bool ) ) ) $ ( Bool )
        d1128 = if if d218 then true else d784 then if true then false else d483 else if true then d257 else false
        d1131 : ( ( Set -> Set ) ∋ ( ( λ x11330 -> if false then x11330 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> if true then d434 else x11320 ) ) ) $ ( if false then d430 else d182 )
        d1134 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1134 = if ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> x11350 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11360 -> d487 ) ) ) $ ( d596 ) else if d172 then true else d102
        d1137 : ( ( Set -> Set ) ∋ ( ( λ x11390 -> ( ( Set -> Set ) ∋ ( ( λ x11400 -> if true then Bool else Bool ) ) ) $ ( x11390 ) ) ) ) $ ( if false then Bool else Bool )
        d1137 = ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> if x11380 then x11380 else x11380 ) ) ) $ ( if true then d356 else true )
        d1141 : if false then ( ( Set -> Set ) ∋ ( ( λ x11440 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1141 = ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> ( ( Bool -> Bool ) ∋ ( ( λ x11430 -> if false then x11420 else d1044 ) ) ) $ ( x11420 ) ) ) ) $ ( if d38 then d828 else false )
        d1145 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1145 = if if d974 then true else true then if d979 then d705 else true else ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> d270 ) ) ) $ ( true )
        d1147 : ( ( Set -> Set ) ∋ ( ( λ x11510 -> ( ( Set -> Set ) ∋ ( ( λ x11520 -> if false then x11510 else x11520 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1147 = if ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> d884 ) ) ) $ ( d261 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11500 -> false ) ) ) $ ( d846 )
        d1153 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11540 -> Bool ) ) ) $ ( Bool )
        d1153 = if if d349 then false else d430 then if d752 then d195 else false else if false then true else d1088
        d1155 : ( ( Set -> Set ) ∋ ( ( λ x11570 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1155 = if ( ( Bool -> Bool ) ∋ ( ( λ x11560 -> true ) ) ) $ ( false ) then if d264 then d749 else d218 else if false then true else d501
        d1158 : if false then ( ( Set -> Set ) ∋ ( ( λ x11610 -> x11610 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1158 = if ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> x11590 ) ) ) $ ( d788 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> x11600 ) ) ) $ ( d828 ) else if false then true else d875
        d1162 : ( ( Set -> Set ) ∋ ( ( λ x11640 -> ( ( Set -> Set ) ∋ ( ( λ x11650 -> if false then Bool else Bool ) ) ) $ ( x11640 ) ) ) ) $ ( if true then Bool else Bool )
        d1162 = ( ( Bool -> Bool ) ∋ ( ( λ x11630 -> if d26 then false else x11630 ) ) ) $ ( if false then d117 else false )
        d1166 : ( ( Set -> Set ) ∋ ( ( λ x11680 -> if false then x11680 else x11680 ) ) ) $ ( if false then Bool else Bool )
        d1166 = ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> if false then d456 else x11670 ) ) ) $ ( if true then false else true )
        d1169 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1169 = if ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> x11700 ) ) ) $ ( d5 ) then if false then false else false else if d1047 then d861 else d974
        d1171 : if true then ( ( Set -> Set ) ∋ ( ( λ x11740 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1171 = if if d356 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> true ) ) ) $ ( d599 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11730 -> x11730 ) ) ) $ ( true )
        d1175 : ( ( Set -> Set ) ∋ ( ( λ x11760 -> ( ( Set -> Set ) ∋ ( ( λ x11770 -> if false then Bool else x11770 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1175 = if if d228 then false else d384 then if false then false else true else if d946 then d1040 else d651
        d1178 : if true then ( ( Set -> Set ) ∋ ( ( λ x11800 -> x11800 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1178 = if if true then d59 else d26 then ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> x11790 ) ) ) $ ( true ) else if d71 then d79 else false
        d1181 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1181 = ( ( Bool -> Bool ) ∋ ( ( λ x11820 -> if false then d1091 else d452 ) ) ) $ ( if d946 then true else true )
        d1183 : ( ( Set -> Set ) ∋ ( ( λ x11850 -> ( ( Set -> Set ) ∋ ( ( λ x11860 -> if true then x11860 else x11860 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1183 = ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> if x11840 then d257 else d728 ) ) ) $ ( if d543 then false else false )
        d1187 : ( ( Set -> Set ) ∋ ( ( λ x11910 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1187 = if ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> x11880 ) ) ) $ ( d1000 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11890 -> x11890 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> d688 ) ) ) $ ( d335 )
        d1192 : if false then ( ( Set -> Set ) ∋ ( ( λ x11940 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1192 = ( ( Bool -> Bool ) ∋ ( ( λ x11930 -> if d288 then d757 else true ) ) ) $ ( if true then d724 else true )
        d1195 : ( ( Set -> Set ) ∋ ( ( λ x11980 -> ( ( Set -> Set ) ∋ ( ( λ x11990 -> if true then Bool else Bool ) ) ) $ ( x11980 ) ) ) ) $ ( if false then Bool else Bool )
        d1195 = if ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> d1074 ) ) ) $ ( d134 ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x11970 -> d41 ) ) ) $ ( true )
        d1200 : if false then ( ( Set -> Set ) ∋ ( ( λ x12030 -> x12030 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12040 -> x12040 ) ) ) $ ( Bool )
        d1200 = ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> if false then true else d537 ) ) ) $ ( d749 ) ) ) ) $ ( if d430 then d63 else true )
        d1205 : if false then ( ( Set -> Set ) ∋ ( ( λ x12080 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1205 = if if d691 then d474 else true then ( ( Bool -> Bool ) ∋ ( ( λ x12060 -> d327 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> true ) ) ) $ ( true )
        d1209 : ( ( Set -> Set ) ∋ ( ( λ x12110 -> ( ( Set -> Set ) ∋ ( ( λ x12120 -> if false then x12110 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1209 = ( ( Bool -> Bool ) ∋ ( ( λ x12100 -> if false then false else d675 ) ) ) $ ( if d63 then false else d685 )
        d1213 : ( ( Set -> Set ) ∋ ( ( λ x12160 -> ( ( Set -> Set ) ∋ ( ( λ x12170 -> if true then x12170 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1213 = ( ( Bool -> Bool ) ∋ ( ( λ x12140 -> ( ( Bool -> Bool ) ∋ ( ( λ x12150 -> if true then false else x12150 ) ) ) $ ( false ) ) ) ) $ ( if d172 then d614 else false )
        d1218 : ( ( Set -> Set ) ∋ ( ( λ x12210 -> ( ( Set -> Set ) ∋ ( ( λ x12220 -> if false then Bool else Bool ) ) ) $ ( x12210 ) ) ) ) $ ( if true then Bool else Bool )
        d1218 = if ( ( Bool -> Bool ) ∋ ( ( λ x12190 -> true ) ) ) $ ( true ) then if true then d474 else d813 else ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> x12200 ) ) ) $ ( d1187 )
        d1223 : ( ( Set -> Set ) ∋ ( ( λ x12250 -> ( ( Set -> Set ) ∋ ( ( λ x12260 -> if true then Bool else x12260 ) ) ) $ ( x12250 ) ) ) ) $ ( if false then Bool else Bool )
        d1223 = if if d160 then d556 else d709 then ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> d846 ) ) ) $ ( true ) else if false then d402 else false
        d1227 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12300 -> Bool ) ) ) $ ( Bool )
        d1227 = if ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> d836 ) ) ) $ ( d214 ) then if d270 then d788 else d397 else ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> x12290 ) ) ) $ ( d1057 )
        d1231 : if true then ( ( Set -> Set ) ∋ ( ( λ x12330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12340 -> Bool ) ) ) $ ( Bool )
        d1231 = ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> if true then x12320 else d757 ) ) ) $ ( if d474 then d339 else d902 )
        d1235 : ( ( Set -> Set ) ∋ ( ( λ x12390 -> ( ( Set -> Set ) ∋ ( ( λ x12400 -> if true then x12400 else x12390 ) ) ) $ ( x12390 ) ) ) ) $ ( if true then Bool else Bool )
        d1235 = if ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> x12360 ) ) ) $ ( d270 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> d425 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> true ) ) ) $ ( false )
        d1241 : ( ( Set -> Set ) ∋ ( ( λ x12440 -> if false then Bool else x12440 ) ) ) $ ( if true then Bool else Bool )
        d1241 = ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> ( ( Bool -> Bool ) ∋ ( ( λ x12430 -> if x12420 then x12420 else d407 ) ) ) $ ( x12420 ) ) ) ) $ ( if false then true else false )
        d1245 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12470 -> x12470 ) ) ) $ ( Bool )
        d1245 = if if false then true else d790 then if true then true else d960 else ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> x12460 ) ) ) $ ( d525 )
        d1248 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12490 -> Bool ) ) ) $ ( Bool )
        d1248 = if if false then true else true then if true then d920 else d824 else if false then true else true
        d1250 : ( ( Set -> Set ) ∋ ( ( λ x12520 -> if false then x12520 else x12520 ) ) ) $ ( if true then Bool else Bool )
        d1250 = if if d721 then true else d770 then ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> true ) ) ) $ ( d659 ) else if d335 then false else d241
        d1253 : ( ( Set -> Set ) ∋ ( ( λ x12550 -> if false then Bool else x12550 ) ) ) $ ( if false then Bool else Bool )
        d1253 = ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> if true then d668 else x12540 ) ) ) $ ( if false then true else d1040 )
        d1256 : if false then ( ( Set -> Set ) ∋ ( ( λ x12590 -> x12590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12600 -> x12600 ) ) ) $ ( Bool )
        d1256 = if ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> x12570 ) ) ) $ ( d459 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> d321 ) ) ) $ ( d888 ) else if true then true else d784
        d1261 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1261 = ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> if d345 then true else false ) ) ) $ ( if d302 then false else d927 )
        d1263 : ( ( Set -> Set ) ∋ ( ( λ x12650 -> if false then x12650 else x12650 ) ) ) $ ( if true then Bool else Bool )
        d1263 = if ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> false ) ) ) $ ( d114 ) then if false then true else true else if true then d1205 else true
        d1266 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1266 = if ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> x12670 ) ) ) $ ( true ) then if d487 then d75 else d1123 else ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> false ) ) ) $ ( true )
        d1269 : ( ( Set -> Set ) ∋ ( ( λ x12720 -> ( ( Set -> Set ) ∋ ( ( λ x12730 -> if false then x12720 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1269 = ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> if x12710 then d1091 else true ) ) ) $ ( d204 ) ) ) ) $ ( if d214 then d356 else false )
        d1274 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1274 = ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> if false then false else d1269 ) ) ) $ ( if true then d273 else true )
        d1276 : ( ( Set -> Set ) ∋ ( ( λ x12780 -> if true then x12780 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1276 = if if d1231 then false else d402 then ( ( Bool -> Bool ) ∋ ( ( λ x12770 -> d778 ) ) ) $ ( false ) else if d456 then d778 else d631
        d1279 : ( ( Set -> Set ) ∋ ( ( λ x12820 -> ( ( Set -> Set ) ∋ ( ( λ x12830 -> if true then x12830 else x12830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1279 = ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> ( ( Bool -> Bool ) ∋ ( ( λ x12810 -> if x12800 then d1166 else x12810 ) ) ) $ ( x12800 ) ) ) ) $ ( if false then d88 else true )
        d1284 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12860 -> Bool ) ) ) $ ( Bool )
        d1284 = ( ( Bool -> Bool ) ∋ ( ( λ x12850 -> if d63 then x12850 else true ) ) ) $ ( if d813 then d946 else d596 )
        d1287 : ( ( Set -> Set ) ∋ ( ( λ x12890 -> ( ( Set -> Set ) ∋ ( ( λ x12900 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1287 = if if false then d790 else d857 then if true then d1158 else d257 else ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> d587 ) ) ) $ ( false )
        d1291 : ( ( Set -> Set ) ∋ ( ( λ x12940 -> if true then x12940 else x12940 ) ) ) $ ( if false then Bool else Bool )
        d1291 = ( ( Bool -> Bool ) ∋ ( ( λ x12920 -> ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> if true then true else x12920 ) ) ) $ ( x12920 ) ) ) ) $ ( if true then d430 else d833 )
        d1295 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1295 = ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> if d731 then x12960 else d172 ) ) ) $ ( if d717 then d802 else d907 )
        d1297 : if true then ( ( Set -> Set ) ∋ ( ( λ x12990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13000 -> x13000 ) ) ) $ ( Bool )
        d1297 = ( ( Bool -> Bool ) ∋ ( ( λ x12980 -> if true then d774 else d866 ) ) ) $ ( if d1004 then d963 else d1295 )
        d1301 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1301 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13020 -> false ) ) ) $ ( d551 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> d445 ) ) ) $ ( false )
        d1304 : if true then ( ( Set -> Set ) ∋ ( ( λ x13060 -> x13060 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13070 -> Bool ) ) ) $ ( Bool )
        d1304 = ( ( Bool -> Bool ) ∋ ( ( λ x13050 -> if true then x13050 else x13050 ) ) ) $ ( if true then d816 else false )
        d1308 : ( ( Set -> Set ) ∋ ( ( λ x13110 -> ( ( Set -> Set ) ∋ ( ( λ x13120 -> if true then x13120 else x13120 ) ) ) $ ( x13110 ) ) ) ) $ ( if true then Bool else Bool )
        d1308 = if ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13100 -> false ) ) ) $ ( d907 ) else if false then d120 else false
        d1313 : if true then ( ( Set -> Set ) ∋ ( ( λ x13140 -> x13140 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1313 = if if d1053 then true else true then if d249 then d306 else d640 else if true then false else d165
        d1315 : ( ( Set -> Set ) ∋ ( ( λ x13180 -> if false then x13180 else x13180 ) ) ) $ ( if true then Bool else Bool )
        d1315 = ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> if x13170 then true else false ) ) ) $ ( d1016 ) ) ) ) $ ( if d781 then d1040 else false )
        d1319 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1319 = if if false then false else d648 then if true then d388 else d691 else if d1131 then d38 else true
        d1320 : if true then ( ( Set -> Set ) ∋ ( ( λ x13220 -> x13220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13230 -> x13230 ) ) ) $ ( Bool )
        d1320 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> x13210 ) ) ) $ ( d1205 ) else if false then false else false
        d1324 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1324 = if if d636 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x13250 -> true ) ) ) $ ( d551 ) else if d1187 then true else true
        d1326 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13290 -> x13290 ) ) ) $ ( Bool )
        d1326 = ( ( Bool -> Bool ) ∋ ( ( λ x13270 -> ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> if x13280 then x13280 else d1313 ) ) ) $ ( d1320 ) ) ) ) $ ( if true then d1284 else d430 )
        d1330 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13330 -> x13330 ) ) ) $ ( Bool )
        d1330 = ( ( Bool -> Bool ) ∋ ( ( λ x13310 -> ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> if true then x13310 else d1223 ) ) ) $ ( d645 ) ) ) ) $ ( if d124 then false else true )
        d1334 : if true then ( ( Set -> Set ) ∋ ( ( λ x13370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13380 -> x13380 ) ) ) $ ( Bool )
        d1334 = ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> if false then false else false ) ) ) $ ( d1175 ) ) ) ) $ ( if d232 then d21 else true )
        d1339 : if true then ( ( Set -> Set ) ∋ ( ( λ x13410 -> x13410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13420 -> x13420 ) ) ) $ ( Bool )
        d1339 = ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> if d857 then x13400 else x13400 ) ) ) $ ( if d844 then d516 else d218 )
        d1343 : ( ( Set -> Set ) ∋ ( ( λ x13450 -> ( ( Set -> Set ) ∋ ( ( λ x13460 -> if false then x13460 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1343 = ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> if false then false else d970 ) ) ) $ ( if true then true else false )
        d1347 : ( ( Set -> Set ) ∋ ( ( λ x13500 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1347 = ( ( Bool -> Bool ) ∋ ( ( λ x13480 -> ( ( Bool -> Bool ) ∋ ( ( λ x13490 -> if d640 then x13480 else x13490 ) ) ) $ ( true ) ) ) ) $ ( if true then d888 else true )
        d1351 : ( ( Set -> Set ) ∋ ( ( λ x13540 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1351 = if ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> true ) ) ) $ ( d1183 ) then if true then true else d960 else ( ( Bool -> Bool ) ∋ ( ( λ x13530 -> d798 ) ) ) $ ( d452 )
        d1355 : ( ( Set -> Set ) ∋ ( ( λ x13570 -> ( ( Set -> Set ) ∋ ( ( λ x13580 -> if true then x13580 else x13580 ) ) ) $ ( x13570 ) ) ) ) $ ( if true then Bool else Bool )
        d1355 = if if d679 then true else d970 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> x13560 ) ) ) $ ( true )
        d1359 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13610 -> Bool ) ) ) $ ( Bool )
        d1359 = ( ( Bool -> Bool ) ∋ ( ( λ x13600 -> if true then false else x13600 ) ) ) $ ( if false then true else true )
        d1362 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13640 -> Bool ) ) ) $ ( Bool )
        d1362 = if ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> x13630 ) ) ) $ ( true ) then if true then d937 else d724 else if d1100 then true else true
        d1365 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13680 -> Bool ) ) ) $ ( Bool )
        d1365 = if ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> x13660 ) ) ) $ ( true ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( d724 )
        d1369 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13720 -> x13720 ) ) ) $ ( Bool )
        d1369 = if if d757 then d1200 else d685 then ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> x13700 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13710 -> x13710 ) ) ) $ ( false )
        d1373 : if false then ( ( Set -> Set ) ∋ ( ( λ x13750 -> x13750 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13760 -> x13760 ) ) ) $ ( Bool )
        d1373 = if ( ( Bool -> Bool ) ∋ ( ( λ x13740 -> x13740 ) ) ) $ ( false ) then if d9 then false else true else if d990 then false else d960
        d1377 : if false then ( ( Set -> Set ) ∋ ( ( λ x13790 -> x13790 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13800 -> Bool ) ) ) $ ( Bool )
        d1377 = if if true then d1035 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13780 -> x13780 ) ) ) $ ( d1355 ) else if true then d742 else d165
        d1381 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13830 -> Bool ) ) ) $ ( Bool )
        d1381 = ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> if x13820 then true else false ) ) ) $ ( if d29 then false else false )
        d1384 : ( ( Set -> Set ) ∋ ( ( λ x13850 -> if true then Bool else x13850 ) ) ) $ ( if false then Bool else Bool )
        d1384 = if if d1245 then true else d854 then if true then d169 else d731 else if false then d1347 else false
        d1386 : ( ( Set -> Set ) ∋ ( ( λ x13880 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1386 = ( ( Bool -> Bool ) ∋ ( ( λ x13870 -> if x13870 then true else false ) ) ) $ ( if false then false else false )
        d1389 : ( ( Set -> Set ) ∋ ( ( λ x13920 -> ( ( Set -> Set ) ∋ ( ( λ x13930 -> if false then x13920 else x13920 ) ) ) $ ( x13920 ) ) ) ) $ ( if false then Bool else Bool )
        d1389 = ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> if false then x13910 else d1088 ) ) ) $ ( d402 ) ) ) ) $ ( if true then d501 else d268 )
        d1394 : ( ( Set -> Set ) ∋ ( ( λ x13970 -> ( ( Set -> Set ) ∋ ( ( λ x13980 -> if false then Bool else x13980 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1394 = ( ( Bool -> Bool ) ∋ ( ( λ x13950 -> ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> if d986 then d691 else d1235 ) ) ) $ ( x13950 ) ) ) ) $ ( if false then false else d302 )
        d1399 : ( ( Set -> Set ) ∋ ( ( λ x14020 -> if true then x14020 else x14020 ) ) ) $ ( if true then Bool else Bool )
        d1399 = if ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> x14000 ) ) ) $ ( true ) then if false then d407 else d232 else ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> false ) ) ) $ ( d71 )
        d1403 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1403 = ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> if d636 then x14040 else x14040 ) ) ) $ ( x14040 ) ) ) ) $ ( if d273 then d465 else true )
        d1406 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14090 -> x14090 ) ) ) $ ( Bool )
        d1406 = ( ( Bool -> Bool ) ∋ ( ( λ x14070 -> ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> if x14070 then d26 else d1213 ) ) ) $ ( x14070 ) ) ) ) $ ( if d54 then d310 else d554 )
        d1410 : ( ( Set -> Set ) ∋ ( ( λ x14130 -> if true then x14130 else x14130 ) ) ) $ ( if false then Bool else Bool )
        d1410 = if ( ( Bool -> Bool ) ∋ ( ( λ x14110 -> x14110 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> x14120 ) ) ) $ ( d828 ) else if true then d393 else true
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14170 -> ( ( Set -> Set ) ∋ ( ( λ x14180 -> if false then x14170 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1414 = if ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14160 -> x14160 ) ) ) $ ( d1209 ) else if d543 then false else false
        d1419 : ( ( Set -> Set ) ∋ ( ( λ x14220 -> ( ( Set -> Set ) ∋ ( ( λ x14230 -> if true then x14230 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1419 = if if d380 then d1059 else d863 then ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> x14200 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14210 -> true ) ) ) $ ( false )
        d1424 : if true then ( ( Set -> Set ) ∋ ( ( λ x14260 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1424 = ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> if d537 then x14250 else d547 ) ) ) $ ( if d699 then false else d143 )
        d1427 : if true then ( ( Set -> Set ) ∋ ( ( λ x14290 -> x14290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14300 -> x14300 ) ) ) $ ( Bool )
        d1427 = ( ( Bool -> Bool ) ∋ ( ( λ x14280 -> if d721 then x14280 else d937 ) ) ) $ ( if true then false else true )
        d1431 : ( ( Set -> Set ) ∋ ( ( λ x14340 -> ( ( Set -> Set ) ∋ ( ( λ x14350 -> if true then x14340 else x14350 ) ) ) $ ( x14340 ) ) ) ) $ ( if false then Bool else Bool )
        d1431 = ( ( Bool -> Bool ) ∋ ( ( λ x14320 -> ( ( Bool -> Bool ) ∋ ( ( λ x14330 -> if x14330 then x14320 else d580 ) ) ) $ ( true ) ) ) ) $ ( if d1119 then true else false )
        d1436 : if false then ( ( Set -> Set ) ∋ ( ( λ x14400 -> x14400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14410 -> x14410 ) ) ) $ ( Bool )
        d1436 = if ( ( Bool -> Bool ) ∋ ( ( λ x14370 -> true ) ) ) $ ( d15 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14380 -> x14380 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> false ) ) ) $ ( d1057 )
        d1442 : ( ( Set -> Set ) ∋ ( ( λ x14440 -> if false then x14440 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1442 = if if d1192 then true else d1008 then ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> true ) ) ) $ ( true ) else if false then d809 else false
        d1445 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14470 -> Bool ) ) ) $ ( Bool )
        d1445 = ( ( Bool -> Bool ) ∋ ( ( λ x14460 -> if d560 then false else d1304 ) ) ) $ ( if false then false else d182 )
        d1448 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1448 = if if false then d1178 else true then if d339 then false else false else if true then true else d1355
        d1449 : ( ( Set -> Set ) ∋ ( ( λ x14510 -> ( ( Set -> Set ) ∋ ( ( λ x14520 -> if true then Bool else x14510 ) ) ) $ ( x14510 ) ) ) ) $ ( if false then Bool else Bool )
        d1449 = ( ( Bool -> Bool ) ∋ ( ( λ x14500 -> if d1079 then x14500 else x14500 ) ) ) $ ( if d1324 then true else false )
        d1453 : ( ( Set -> Set ) ∋ ( ( λ x14550 -> ( ( Set -> Set ) ∋ ( ( λ x14560 -> if false then Bool else x14560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1453 = ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> if x14540 then true else d861 ) ) ) $ ( if d438 then true else d1399 )
        d1457 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1457 = if ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> x14580 ) ) ) $ ( d614 ) then if false then false else d1113 else ( ( Bool -> Bool ) ∋ ( ( λ x14590 -> d1079 ) ) ) $ ( false )
        d1460 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1460 = ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> if x14620 then d790 else d648 ) ) ) $ ( true ) ) ) ) $ ( if false then d963 else d1213 )
        d1463 : ( ( Set -> Set ) ∋ ( ( λ x14660 -> ( ( Set -> Set ) ∋ ( ( λ x14670 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1463 = ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> if d1175 then d273 else d946 ) ) ) $ ( false ) ) ) ) $ ( if d264 then false else false )
        d1468 : ( ( Set -> Set ) ∋ ( ( λ x14700 -> if false then Bool else x14700 ) ) ) $ ( if true then Bool else Bool )
        d1468 = if if true then true else d129 then ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> x14690 ) ) ) $ ( d1227 ) else if d1334 then true else false
        d1471 : if true then ( ( Set -> Set ) ∋ ( ( λ x14740 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1471 = ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> ( ( Bool -> Bool ) ∋ ( ( λ x14730 -> if x14720 then d821 else d1187 ) ) ) $ ( d739 ) ) ) ) $ ( if d752 then d778 else d1044 )
        d1475 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1475 = if if d1158 then true else d816 then if true then d875 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14760 -> x14760 ) ) ) $ ( d1453 )
        d1477 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1477 = if ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> d1235 ) ) ) $ ( d321 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14790 -> d742 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14800 -> d1195 ) ) ) $ ( d986 )
        d1481 : if true then ( ( Set -> Set ) ∋ ( ( λ x14840 -> x14840 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1481 = if ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> x14820 ) ) ) $ ( false ) then if d1147 then d556 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> d264 ) ) ) $ ( d836 )
        d1485 : ( ( Set -> Set ) ∋ ( ( λ x14880 -> ( ( Set -> Set ) ∋ ( ( λ x14890 -> if true then Bool else x14890 ) ) ) $ ( x14880 ) ) ) ) $ ( if true then Bool else Bool )
        d1485 = if if d833 then true else d1100 then ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> d1141 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> true ) ) ) $ ( false )
        d1490 : if true then ( ( Set -> Set ) ∋ ( ( λ x14920 -> x14920 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1490 = ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> if x14910 then x14910 else x14910 ) ) ) $ ( if true then d384 else d927 )
        d1493 : ( ( Set -> Set ) ∋ ( ( λ x14960 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1493 = ( ( Bool -> Bool ) ∋ ( ( λ x14940 -> ( ( Bool -> Bool ) ∋ ( ( λ x14950 -> if false then true else x14940 ) ) ) $ ( d288 ) ) ) ) $ ( if d833 then true else true )
        d1497 : ( ( Set -> Set ) ∋ ( ( λ x14990 -> if false then Bool else x14990 ) ) ) $ ( if false then Bool else Bool )
        d1497 = if ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> x14980 ) ) ) $ ( d1227 ) then if true then true else d34 else if d1460 then true else d892
        d1500 : ( ( Set -> Set ) ∋ ( ( λ x15030 -> ( ( Set -> Set ) ∋ ( ( λ x15040 -> if true then x15030 else x15030 ) ) ) $ ( x15030 ) ) ) ) $ ( if true then Bool else Bool )
        d1500 = ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> if x15020 then true else false ) ) ) $ ( false ) ) ) ) $ ( if true then false else d830 )
        d1505 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1505 = if ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> d281 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> x15080 ) ) ) $ ( false )
        d1509 : if false then ( ( Set -> Set ) ∋ ( ( λ x15110 -> x15110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1509 = ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> if x15100 then x15100 else d884 ) ) ) $ ( if true then d1128 else true )
        d1512 : ( ( Set -> Set ) ∋ ( ( λ x15140 -> ( ( Set -> Set ) ∋ ( ( λ x15150 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1512 = ( ( Bool -> Bool ) ∋ ( ( λ x15130 -> if x15130 then x15130 else false ) ) ) $ ( if false then true else true )
        d1516 : ( ( Set -> Set ) ∋ ( ( λ x15180 -> ( ( Set -> Set ) ∋ ( ( λ x15190 -> if false then Bool else x15190 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1516 = ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> if false then d88 else d739 ) ) ) $ ( if d228 then d1104 else true )
        d1520 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15230 -> Bool ) ) ) $ ( Bool )
        d1520 = if ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> d38 ) ) ) $ ( d156 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15220 -> d1158 ) ) ) $ ( false ) else if d990 then d1181 else true
        d1524 : ( ( Set -> Set ) ∋ ( ( λ x15260 -> ( ( Set -> Set ) ∋ ( ( λ x15270 -> if false then x15260 else x15260 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1524 = if if d1330 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x15250 -> x15250 ) ) ) $ ( d1436 ) else if d506 then true else d547
        d1528 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1528 = ( ( Bool -> Bool ) ∋ ( ( λ x15290 -> if true then d79 else d549 ) ) ) $ ( if false then true else d778 )
        d1530 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1530 = ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> if true then d114 else true ) ) ) $ ( if false then d417 else d1381 )
        d1532 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1532 = if ( ( Bool -> Bool ) ∋ ( ( λ x15330 -> x15330 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15340 -> x15340 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> d1460 ) ) ) $ ( false )
        d1536 : if true then ( ( Set -> Set ) ∋ ( ( λ x15380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15390 -> Bool ) ) ) $ ( Bool )
        d1536 = if ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> true ) ) ) $ ( d327 ) then if true then d1471 else true else if true then false else d1334
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15430 -> if false then x15430 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1540 = if ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> d1223 ) ) ) $ ( true ) then if d124 then true else d438 else ( ( Bool -> Bool ) ∋ ( ( λ x15420 -> false ) ) ) $ ( true )
        d1544 : if true then ( ( Set -> Set ) ∋ ( ( λ x15470 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15480 -> x15480 ) ) ) $ ( Bool )
        d1544 = ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> if false then d1410 else true ) ) ) $ ( d757 ) ) ) ) $ ( if true then false else d1134 )
        d1549 : ( ( Set -> Set ) ∋ ( ( λ x15510 -> ( ( Set -> Set ) ∋ ( ( λ x15520 -> if true then x15520 else Bool ) ) ) $ ( x15510 ) ) ) ) $ ( if true then Bool else Bool )
        d1549 = ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> if false then x15500 else x15500 ) ) ) $ ( if d288 then false else d875 )
        d1553 : ( ( Set -> Set ) ∋ ( ( λ x15550 -> if true then x15550 else x15550 ) ) ) $ ( if false then Bool else Bool )
        d1553 = ( ( Bool -> Bool ) ∋ ( ( λ x15540 -> if x15540 then x15540 else d528 ) ) ) $ ( if false then d950 else true )
        d1556 : ( ( Set -> Set ) ∋ ( ( λ x15590 -> if true then x15590 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1556 = ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> ( ( Bool -> Bool ) ∋ ( ( λ x15580 -> if d1195 then true else false ) ) ) $ ( d456 ) ) ) ) $ ( if d537 then false else d59 )
        d1560 : ( ( Set -> Set ) ∋ ( ( λ x15630 -> ( ( Set -> Set ) ∋ ( ( λ x15640 -> if false then x15640 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1560 = if ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> false ) ) ) $ ( d728 ) then if false then false else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> d1365 ) ) ) $ ( false )
        d1565 : if true then ( ( Set -> Set ) ∋ ( ( λ x15670 -> x15670 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1565 = if if false then true else false then if false then d1016 else d946 else ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> false ) ) ) $ ( d211 )
        d1568 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15700 -> Bool ) ) ) $ ( Bool )
        d1568 = if if false then true else d264 then if d911 then false else d281 else ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> false ) ) ) $ ( d191 )
        d1571 : if true then ( ( Set -> Set ) ∋ ( ( λ x15730 -> x15730 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1571 = ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> if d1509 then x15720 else d1128 ) ) ) $ ( if d1068 then d1427 else false )
        d1574 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15770 -> x15770 ) ) ) $ ( Bool )
        d1574 = ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> if x15750 then x15750 else d762 ) ) ) $ ( d986 ) ) ) ) $ ( if d1057 then true else d204 )
        d1578 : ( ( Set -> Set ) ∋ ( ( λ x15810 -> if false then Bool else x15810 ) ) ) $ ( if false then Bool else Bool )
        d1578 = if ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> d1384 ) ) ) $ ( false ) then if d900 then true else d1362 else ( ( Bool -> Bool ) ∋ ( ( λ x15800 -> true ) ) ) $ ( true )
        d1582 : if false then ( ( Set -> Set ) ∋ ( ( λ x15840 -> x15840 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1582 = ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> if x15830 then x15830 else x15830 ) ) ) $ ( if d1414 then d270 else false )
        d1585 : if false then ( ( Set -> Set ) ∋ ( ( λ x15870 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15880 -> x15880 ) ) ) $ ( Bool )
        d1585 = if ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> true ) ) ) $ ( d1096 ) then if d511 then false else d1445 else if d1091 then d88 else false
        d1589 : ( ( Set -> Set ) ∋ ( ( λ x15910 -> if false then x15910 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1589 = if if d1500 then d1500 else d923 then ( ( Bool -> Bool ) ∋ ( ( λ x15900 -> d1524 ) ) ) $ ( true ) else if d1485 then d636 else true
        d1592 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1592 = ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> ( ( Bool -> Bool ) ∋ ( ( λ x15940 -> if x15940 then x15940 else true ) ) ) $ ( x15930 ) ) ) ) $ ( if d1253 then true else d1274 )
        d1595 : if false then ( ( Set -> Set ) ∋ ( ( λ x15970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15980 -> Bool ) ) ) $ ( Bool )
        d1595 = ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> if true then d18 else false ) ) ) $ ( if true then d839 else d38 )
        d1599 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1599 = if ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> d273 ) ) ) $ ( d1269 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> x16010 ) ) ) $ ( d124 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> false ) ) ) $ ( d879 )
        d1603 : ( ( Set -> Set ) ∋ ( ( λ x16050 -> ( ( Set -> Set ) ∋ ( ( λ x16060 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1603 = if if true then true else false then if d1330 then d747 else d1399 else ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> d1000 ) ) ) $ ( d1582 )
        d1607 : ( ( Set -> Set ) ∋ ( ( λ x16090 -> if true then Bool else x16090 ) ) ) $ ( if false then Bool else Bool )
        d1607 = if if d1369 then d1315 else d850 then ( ( Bool -> Bool ) ∋ ( ( λ x16080 -> x16080 ) ) ) $ ( false ) else if false then d1399 else false
        d1610 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1610 = ( ( Bool -> Bool ) ∋ ( ( λ x16110 -> ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> if d407 then false else x16120 ) ) ) $ ( true ) ) ) ) $ ( if true then d1505 else d1485 )
        d1613 : ( ( Set -> Set ) ∋ ( ( λ x16150 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1613 = if ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> d1153 ) ) ) $ ( d79 ) then if d1436 then d124 else d236 else if d1365 then d844 else false
        d1616 : if false then ( ( Set -> Set ) ∋ ( ( λ x16190 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1616 = if ( ( Bool -> Bool ) ∋ ( ( λ x16170 -> x16170 ) ) ) $ ( true ) then if false then d276 else d1192 else ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> d195 ) ) ) $ ( d1373 )
        d1620 : ( ( Set -> Set ) ∋ ( ( λ x16230 -> if false then x16230 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1620 = ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> if x16210 then true else false ) ) ) $ ( x16210 ) ) ) ) $ ( if true then d204 else true )
        d1624 : ( ( Set -> Set ) ∋ ( ( λ x16260 -> ( ( Set -> Set ) ∋ ( ( λ x16270 -> if false then x16260 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1624 = ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> if true then d974 else x16250 ) ) ) $ ( if d459 then true else false )
        d1628 : ( ( Set -> Set ) ∋ ( ( λ x16310 -> ( ( Set -> Set ) ∋ ( ( λ x16320 -> if false then x16310 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1628 = ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> if d178 then d50 else true ) ) ) $ ( x16290 ) ) ) ) $ ( if false then d1355 else false )
        d1633 : if false then ( ( Set -> Set ) ∋ ( ( λ x16360 -> x16360 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1633 = if ( ( Bool -> Bool ) ∋ ( ( λ x16340 -> d316 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> d1384 ) ) ) $ ( false ) else if d1145 then true else d82
        d1637 : if false then ( ( Set -> Set ) ∋ ( ( λ x16390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16400 -> x16400 ) ) ) $ ( Bool )
        d1637 = ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> if x16380 then d331 else x16380 ) ) ) $ ( if d474 then false else d705 )
        d1641 : if false then ( ( Set -> Set ) ∋ ( ( λ x16430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16440 -> Bool ) ) ) $ ( Bool )
        d1641 = ( ( Bool -> Bool ) ∋ ( ( λ x16420 -> if true then x16420 else d1520 ) ) ) $ ( if d1330 then d916 else false )
        d1645 : if false then ( ( Set -> Set ) ∋ ( ( λ x16480 -> x16480 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1645 = if ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> d1471 ) ) ) $ ( d1544 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16470 -> x16470 ) ) ) $ ( d1235 ) else if d1047 then d793 else d21
        d1649 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1649 = if ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> x16500 ) ) ) $ ( d1381 ) then if false then d120 else d846 else ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> false ) ) ) $ ( d1449 )
        d1652 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1652 = if ( ( Bool -> Bool ) ∋ ( ( λ x16530 -> x16530 ) ) ) $ ( d1449 ) then if true then d129 else d577 else if d1512 then false else d98
        d1654 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1654 = if if true then true else true then if true then d1253 else d809 else ( ( Bool -> Bool ) ∋ ( ( λ x16550 -> false ) ) ) $ ( d393 )
        d1656 : ( ( Set -> Set ) ∋ ( ( λ x16590 -> if false then x16590 else x16590 ) ) ) $ ( if true then Bool else Bool )
        d1656 = ( ( Bool -> Bool ) ∋ ( ( λ x16570 -> ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> if d1362 then x16580 else x16580 ) ) ) $ ( d465 ) ) ) ) $ ( if d442 then true else true )
        d1660 : if true then ( ( Set -> Set ) ∋ ( ( λ x16620 -> x16620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16630 -> Bool ) ) ) $ ( Bool )
        d1660 = if if d1155 then d66 else true then if d896 then d1381 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16610 -> d1205 ) ) ) $ ( d1448 )
        d1664 : ( ( Set -> Set ) ∋ ( ( λ x16670 -> ( ( Set -> Set ) ∋ ( ( λ x16680 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1664 = ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> ( ( Bool -> Bool ) ∋ ( ( λ x16660 -> if false then true else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d1669 : ( ( Set -> Set ) ∋ ( ( λ x16710 -> ( ( Set -> Set ) ∋ ( ( λ x16720 -> if false then x16710 else Bool ) ) ) $ ( x16710 ) ) ) ) $ ( if true then Bool else Bool )
        d1669 = ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> if d1553 then x16700 else x16700 ) ) ) $ ( if d236 then d75 else true )
        d1673 : ( ( Set -> Set ) ∋ ( ( λ x16750 -> if false then x16750 else x16750 ) ) ) $ ( if false then Bool else Bool )
        d1673 = if ( ( Bool -> Bool ) ∋ ( ( λ x16740 -> d71 ) ) ) $ ( d663 ) then if d1304 then true else true else if d1656 then d321 else d1123
        d1676 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16780 -> x16780 ) ) ) $ ( Bool )
        d1676 = if if false then d1084 else d888 then if false then d1516 else true else ( ( Bool -> Bool ) ∋ ( ( λ x16770 -> x16770 ) ) ) $ ( d1553 )
        d1679 : ( ( Set -> Set ) ∋ ( ( λ x16810 -> ( ( Set -> Set ) ∋ ( ( λ x16820 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1679 = ( ( Bool -> Bool ) ∋ ( ( λ x16800 -> if x16800 then true else d456 ) ) ) $ ( if true then true else d1471 )
        d1683 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16840 -> x16840 ) ) ) $ ( Bool )
        d1683 = if if true then d1384 else d1427 then if true then false else true else if true then d425 else true
        d1685 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16880 -> x16880 ) ) ) $ ( Bool )
        d1685 = ( ( Bool -> Bool ) ∋ ( ( λ x16860 -> ( ( Bool -> Bool ) ∋ ( ( λ x16870 -> if d1571 then x16870 else x16860 ) ) ) $ ( x16860 ) ) ) ) $ ( if true then true else false )
        d1689 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16920 -> x16920 ) ) ) $ ( Bool )
        d1689 = if if false then d986 else d1468 then ( ( Bool -> Bool ) ∋ ( ( λ x16900 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16910 -> false ) ) ) $ ( false )
        d1693 : ( ( Set -> Set ) ∋ ( ( λ x16960 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1693 = ( ( Bool -> Bool ) ∋ ( ( λ x16940 -> ( ( Bool -> Bool ) ∋ ( ( λ x16950 -> if true then false else x16950 ) ) ) $ ( x16940 ) ) ) ) $ ( if d506 then d1297 else false )
        d1697 : if false then ( ( Set -> Set ) ∋ ( ( λ x16990 -> x16990 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x17000 -> x17000 ) ) ) $ ( Bool )
        d1697 = if ( ( Bool -> Bool ) ∋ ( ( λ x16980 -> true ) ) ) $ ( false ) then if d1123 then false else d1162 else if false then true else d1403
        d1701 : ( ( Set -> Set ) ∋ ( ( λ x17030 -> ( ( Set -> Set ) ∋ ( ( λ x17040 -> if true then x17040 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1701 = ( ( Bool -> Bool ) ∋ ( ( λ x17020 -> if x17020 then false else x17020 ) ) ) $ ( if d1291 then false else d249 )
        d1705 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1705 = if ( ( Bool -> Bool ) ∋ ( ( λ x17060 -> d950 ) ) ) $ ( true ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x17070 -> d82 ) ) ) $ ( d200 )
        d1708 : ( ( Set -> Set ) ∋ ( ( λ x17110 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1708 = if if true then d1633 else d1100 then ( ( Bool -> Bool ) ∋ ( ( λ x17090 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x17100 -> true ) ) ) $ ( false )