module Decls450Test5  where
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
        d1 : if false then ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x30 -> true ) ) ) $ ( true ) else if false then true else true
        d5 : if false then ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if false then d1 else d1 ) ) ) $ ( d1 ) ) ) ) $ ( if true then d1 else false )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then Bool else x120 ) ) ) $ ( if false then Bool else Bool )
        d10 = if if d1 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x110 -> false ) ) ) $ ( false ) else if false then d1 else d5
        d13 : if false then ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d13 = if ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( true ) then if d5 then d5 else d10 else if d5 then false else d1
        d16 : if false then ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if x170 then x170 else x170 ) ) ) $ ( if true then true else d13 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then x240 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d1 then true else d16 ) ) ) $ ( false ) ) ) ) $ ( if d16 then d13 else d13 )
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if false then d10 else false then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( d10 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> if true then Bool else x310 ) ) ) $ ( x310 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x300 -> true ) ) ) $ ( d13 ) else if d16 then d1 else d25
        d33 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if true then x350 else x350 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if true then true else x340 ) ) ) $ ( if true then false else true )
        d37 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( Bool )
        d37 = if if d28 then d28 else false then if false then d33 else false else if d13 then d25 else true
        d39 : if false then ( ( Set -> Set ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x420 -> Bool ) ) ) $ ( Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x400 then d1 else false ) ) ) $ ( if true then true else true )
        d43 : if false then if true then Bool else Bool else if false then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if x440 then x450 else true ) ) ) $ ( d1 ) ) ) ) $ ( if true then true else d20 )
        d46 : if true then ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if false then false else true ) ) ) $ ( d28 ) ) ) ) $ ( if false then true else d37 )
        d51 : if false then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if d10 then false else d10 ) ) ) $ ( if true then d33 else d13 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then Bool else x560 ) ) ) $ ( x560 ) ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if x540 then d46 else d25 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then Bool else x600 ) ) ) $ ( if true then Bool else Bool )
        d58 = if if false then d5 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x590 -> false ) ) ) $ ( false ) else if d39 then d10 else d39
        d61 : ( ( Set -> Set ) ∋ ( ( λ x630 -> ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then Bool else x640 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if false then false else d1 ) ) ) $ ( if d58 then d20 else true )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x670 -> ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then Bool else x680 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( false ) then if true then d37 else d61 else if false then d53 else d16
        d69 : ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d69 = if ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d10 ) ) ) $ ( d16 ) then ( ( Bool -> Bool ) ∋ ( ( λ x710 -> true ) ) ) $ ( true ) else if true then d28 else true
        d73 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if true then Bool else x760 ) ) ) $ ( if true then Bool else Bool )
        d73 = if ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d13 ) ) ) $ ( d33 ) then ( ( Bool -> Bool ) ∋ ( ( λ x750 -> true ) ) ) $ ( false ) else if true then d69 else d53
        d77 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if true then x800 else x800 ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if false then x790 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d51 else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then x840 else Bool ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if x830 then true else x830 ) ) ) $ ( x820 ) ) ) ) $ ( if false then d69 else d43 )
        d85 : if false then ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool )
        d85 = if if true then true else false then if d53 then d28 else false else if true then d25 else d77
        d88 : if true then ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( Bool )
        d88 = if if d69 then d1 else d51 then ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d25 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d69 ) ) ) $ ( d25 )
        d93 : if false then if false then Bool else Bool else if false then Bool else Bool
        d93 = if ( ( Bool -> Bool ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( d81 ) then ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d85 ) ) ) $ ( false ) else if false then false else d25
        d96 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if d16 then d61 else d73 ) ) ) $ ( if d81 then d93 else d1 )
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if true then x1010 else x1000 ) ) ) $ ( d96 ) ) ) ) $ ( if d85 then true else d96 )
        d102 : if false then if true then Bool else Bool else if true then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if d13 then true else true ) ) ) $ ( if d81 then d53 else d20 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then x1070 else x1070 ) ) ) $ ( x1070 ) ) ) ) $ ( if false then Bool else Bool )
        d104 = if ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> d58 ) ) ) $ ( d85 ) else if d25 then false else true
        d109 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> if false then x1110 else Bool ) ) ) $ ( if false then Bool else Bool )
        d109 = if if d61 then d51 else d81 then ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( true ) else if d13 then d39 else d85
        d112 : if false then if false then Bool else Bool else if false then Bool else Bool
        d112 = if if false then d81 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d69 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( true )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if d53 then false else x1160 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d119 : if true then ( ( Set -> Set ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1210 then d16 else false ) ) ) $ ( true ) ) ) ) $ ( if false then d77 else d39 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> if false then x1260 else Bool ) ) ) $ ( if true then Bool else Bool )
        d124 = if if true then d5 else d43 then ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( true ) else if false then d69 else d10
        d127 : if true then ( ( Set -> Set ) ∋ ( ( λ x1300 -> x1300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1310 -> Bool ) ) ) $ ( Bool )
        d127 = if ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> false ) ) ) $ ( d112 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> d1 ) ) ) $ ( true ) else if d112 then false else false
        d132 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> if false then Bool else x1340 ) ) ) $ ( if false then Bool else Bool )
        d132 = if if d93 then d73 else d99 then if d69 then false else d109 else ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( false )
        d135 : if false then ( ( Set -> Set ) ∋ ( ( λ x1370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1380 -> x1380 ) ) ) $ ( Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> if x1360 then d39 else d115 ) ) ) $ ( if d85 then false else true )
        d139 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> if false then Bool else x1410 ) ) ) $ ( if true then Bool else Bool )
        d139 = if ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> d115 ) ) ) $ ( true ) then if true then true else false else if false then d65 else true
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then Bool else x1440 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if d28 then false else x1430 ) ) ) $ ( if false then d37 else d58 )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> if true then Bool else x1480 ) ) ) $ ( if true then Bool else Bool )
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> if false then d25 else x1470 ) ) ) $ ( if d61 then d16 else d46 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then Bool else Bool ) ) ) $ ( x1510 ) ) ) ) $ ( if false then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if d93 then false else x1500 ) ) ) $ ( if true then d37 else d39 )
        d153 : if false then ( ( Set -> Set ) ∋ ( ( λ x1550 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d153 = if if true then false else d99 then ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( true ) else if true then false else false
        d156 : if false then ( ( Set -> Set ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> if d16 then x1570 else x1570 ) ) ) $ ( if d51 then d142 else false )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then x1630 else x1630 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d159 = if ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> false ) ) ) $ ( d1 ) then if true then true else d109 else ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> d69 ) ) ) $ ( d146 )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then x1670 else Bool ) ) ) $ ( if true then Bool else Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if false then x1650 else d93 ) ) ) $ ( d127 ) ) ) ) $ ( if true then d13 else d88 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then Bool else x1710 ) ) ) $ ( if true then Bool else Bool )
        d168 = if if d20 then d132 else d43 then ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> x1690 ) ) ) $ ( d61 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> false ) ) ) $ ( d127 )
        d172 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1740 -> Bool ) ) ) $ ( Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if x1730 then d10 else x1730 ) ) ) $ ( if d93 then d73 else d51 )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> ( ( Set -> Set ) ∋ ( ( λ x1790 -> if true then Bool else Bool ) ) ) $ ( x1780 ) ) ) ) $ ( if false then Bool else Bool )
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> if d81 then x1770 else true ) ) ) $ ( d16 ) ) ) ) $ ( if d77 then d119 else d37 )
        d180 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then x1830 else Bool ) ) ) $ ( x1830 ) ) ) ) $ ( if false then Bool else Bool )
        d180 = if ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> d93 ) ) ) $ ( false ) then if d124 then true else d25 else ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> x1820 ) ) ) $ ( true )
        d185 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> ( ( Set -> Set ) ∋ ( ( λ x1880 -> if false then Bool else Bool ) ) ) $ ( x1870 ) ) ) ) $ ( if true then Bool else Bool )
        d185 = if if d39 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> d153 ) ) ) $ ( false ) else if d39 then d28 else d43
        d189 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> if false then x1920 else x1920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d189 = if if d20 then d124 else d124 then ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> false ) ) ) $ ( d53 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> x1910 ) ) ) $ ( false )
        d194 : if false then ( ( Set -> Set ) ∋ ( ( λ x1960 -> x1960 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d194 = if if d112 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> d168 ) ) ) $ ( true ) else if d164 then d102 else d88
        d197 : if false then ( ( Set -> Set ) ∋ ( ( λ x1990 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d197 = if if d172 then true else d146 then ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> false ) ) ) $ ( d33 ) else if d185 then false else true
        d200 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d200 = if ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> x2010 ) ) ) $ ( false ) then if false then d135 else false else if true then true else d112
        d203 : if true then ( ( Set -> Set ) ∋ ( ( λ x2050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2060 -> Bool ) ) ) $ ( Bool )
        d203 = if if d149 then false else d53 then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> true ) ) ) $ ( d65 )
        d207 : if false then ( ( Set -> Set ) ∋ ( ( λ x2080 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2090 -> x2090 ) ) ) $ ( Bool )
        d207 = if if false then false else d115 then if d124 then false else false else if true then d149 else true
        d210 : if false then ( ( Set -> Set ) ∋ ( ( λ x2130 -> x2130 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d210 = if ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> d61 ) ) ) $ ( true ) then if d96 then d99 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( true )
        d214 : ( ( Set -> Set ) ∋ ( ( λ x2160 -> ( ( Set -> Set ) ∋ ( ( λ x2170 -> if false then Bool else Bool ) ) ) $ ( x2160 ) ) ) ) $ ( if false then Bool else Bool )
        d214 = if if true then d172 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> d61 ) ) ) $ ( d96 ) else if d207 then d115 else d135
        d218 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> if true then x2200 else x2200 ) ) ) $ ( if false then Bool else Bool )
        d218 = ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> if x2190 then false else false ) ) ) $ ( if d20 then d200 else d109 )
        d221 : ( ( Set -> Set ) ∋ ( ( λ x2240 -> if true then x2240 else x2240 ) ) ) $ ( if false then Bool else Bool )
        d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> if d127 then d132 else x2220 ) ) ) $ ( x2220 ) ) ) ) $ ( if d61 then d127 else true )
        d225 : if false then ( ( Set -> Set ) ∋ ( ( λ x2280 -> x2280 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d225 = if ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> x2260 ) ) ) $ ( d104 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( d189 ) else if false then d77 else false
        d229 : ( ( Set -> Set ) ∋ ( ( λ x2320 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if x2310 then d146 else x2310 ) ) ) $ ( x2300 ) ) ) ) $ ( if d88 then false else d20 )
        d233 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2350 -> x2350 ) ) ) $ ( Bool )
        d233 = ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> if x2340 then x2340 else true ) ) ) $ ( if d37 then d85 else false )
        d236 : if false then ( ( Set -> Set ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( Bool )
        d236 = if ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> d37 ) ) ) $ ( d119 ) then if d46 then true else d104 else ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> true ) ) ) $ ( d46 )
        d241 : ( ( Set -> Set ) ∋ ( ( λ x2450 -> ( ( Set -> Set ) ∋ ( ( λ x2460 -> if false then x2460 else x2450 ) ) ) $ ( x2450 ) ) ) ) $ ( if false then Bool else Bool )
        d241 = if ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> true ) ) ) $ ( d53 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> false ) ) ) $ ( d159 )
        d247 : ( ( Set -> Set ) ∋ ( ( λ x2510 -> if true then x2510 else x2510 ) ) ) $ ( if true then Bool else Bool )
        d247 = if ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> d142 ) ) ) $ ( d39 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> false ) ) ) $ ( d149 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> x2500 ) ) ) $ ( false )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> ( ( Set -> Set ) ∋ ( ( λ x2550 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d252 = if ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( d127 ) then if d58 then false else false else if true then d207 else true
        d256 : ( ( Set -> Set ) ∋ ( ( λ x2590 -> ( ( Set -> Set ) ∋ ( ( λ x2600 -> if true then Bool else x2590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if true then x2580 else true ) ) ) $ ( d132 ) ) ) ) $ ( if false then d153 else true )
        d261 : if true then if true then Bool else Bool else if false then Bool else Bool
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> if x2620 then x2620 else false ) ) ) $ ( if d16 then false else d65 )
        d263 : if false then if false then Bool else Bool else if false then Bool else Bool
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if d256 then d175 else false ) ) ) $ ( if false then d229 else false )
        d265 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> if false then x2670 else x2670 ) ) ) $ ( if true then Bool else Bool )
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if d96 then false else x2660 ) ) ) $ ( if d13 then d263 else d225 )
        d268 : ( ( Set -> Set ) ∋ ( ( λ x2700 -> ( ( Set -> Set ) ∋ ( ( λ x2710 -> if false then Bool else Bool ) ) ) $ ( x2700 ) ) ) ) $ ( if true then Bool else Bool )
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> if false then d39 else false ) ) ) $ ( if false then false else false )
        d272 : if false then ( ( Set -> Set ) ∋ ( ( λ x2750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( Bool )
        d272 = ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> if d65 then d88 else x2740 ) ) ) $ ( x2730 ) ) ) ) $ ( if true then d119 else false )
        d277 : if true then ( ( Set -> Set ) ∋ ( ( λ x2790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2800 -> x2800 ) ) ) $ ( Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if x2780 then false else x2780 ) ) ) $ ( if true then false else d46 )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> if true then x2840 else x2840 ) ) ) $ ( if true then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if true then d203 else x2830 ) ) ) $ ( d5 ) ) ) ) $ ( if true then true else true )
        d285 : if true then ( ( Set -> Set ) ∋ ( ( λ x2870 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if false then d142 else false ) ) ) $ ( if d241 then false else d77 )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2900 -> ( ( Set -> Set ) ∋ ( ( λ x2910 -> if true then x2910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> if d156 then d25 else false ) ) ) $ ( if true then true else d175 )
        d292 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> if false then Bool else x2960 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d292 = if ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> false ) ) ) $ ( d214 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> true ) ) ) $ ( true ) else if d39 then true else d210
        d297 : if false then ( ( Set -> Set ) ∋ ( ( λ x3000 -> x3000 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> if true then x2990 else false ) ) ) $ ( d25 ) ) ) ) $ ( if false then d159 else d180 )
        d301 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if false then x3050 else x3050 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d301 = ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> if d104 then false else d268 ) ) ) $ ( x3020 ) ) ) ) $ ( if true then d119 else d172 )
        d306 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3090 -> Bool ) ) ) $ ( Bool )
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> if d281 then d185 else false ) ) ) $ ( x3070 ) ) ) ) $ ( if false then d210 else true )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> ( ( Set -> Set ) ∋ ( ( λ x3130 -> if false then x3120 else x3130 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d310 = if if true then true else d93 then ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> d301 ) ) ) $ ( true ) else if d104 then false else true
        d314 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3170 -> x3170 ) ) ) $ ( Bool )
        d314 = ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> if false then false else true ) ) ) $ ( d292 ) ) ) ) $ ( if false then true else true )
        d318 : if false then if false then Bool else Bool else if false then Bool else Bool
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> if x3190 then d1 else true ) ) ) $ ( if true then false else true )
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3220 -> if false then Bool else x3220 ) ) ) $ ( if false then Bool else Bool )
        d320 = if if false then d265 else d168 then ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> x3210 ) ) ) $ ( d229 ) else if d301 then false else true
        d323 : if true then ( ( Set -> Set ) ∋ ( ( λ x3250 -> x3250 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d323 = if ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> false ) ) ) $ ( false ) then if d203 then d159 else true else if d142 then true else true
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> if false then x3290 else Bool ) ) ) $ ( if true then Bool else Bool )
        d326 = if if false then false else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> d115 ) ) ) $ ( false )
        d330 : if true then ( ( Set -> Set ) ∋ ( ( λ x3330 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> if x3320 then true else d115 ) ) ) $ ( x3310 ) ) ) ) $ ( if false then true else d261 )
        d334 : if true then ( ( Set -> Set ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d334 = if if d85 then d323 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> x3350 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> x3360 ) ) ) $ ( d306 )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3400 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d338 = if if false then d164 else d33 then if d225 then false else d214 else ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> d233 ) ) ) $ ( true )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3430 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d341 = if ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> false ) ) ) $ ( false ) then if d218 then d334 else d221 else if d93 then true else false
        d344 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> if true then x3460 else x3460 ) ) ) $ ( if false then Bool else Bool )
        d344 = if if false then d51 else d306 then if d175 then d265 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> d252 ) ) ) $ ( d51 )
        d347 : ( ( Set -> Set ) ∋ ( ( λ x3480 -> ( ( Set -> Set ) ∋ ( ( λ x3490 -> if true then x3490 else Bool ) ) ) $ ( x3480 ) ) ) ) $ ( if false then Bool else Bool )
        d347 = if if d115 then false else true then if d320 then d16 else true else if d306 then d185 else d51
        d350 : ( ( Set -> Set ) ∋ ( ( λ x3520 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d350 = if if false then d25 else d197 then ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> d124 ) ) ) $ ( true ) else if d139 then d43 else true
        d353 : if false then ( ( Set -> Set ) ∋ ( ( λ x3560 -> x3560 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> if true then false else false ) ) ) $ ( d39 ) ) ) ) $ ( if d104 then false else false )
        d357 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3590 -> x3590 ) ) ) $ ( Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> if x3580 then x3580 else d318 ) ) ) $ ( if d135 then d13 else true )
        d360 : if true then ( ( Set -> Set ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3640 -> x3640 ) ) ) $ ( Bool )
        d360 = if ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> d132 ) ) ) $ ( d292 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> d334 ) ) ) $ ( true ) else if d46 then d252 else false
        d365 : ( ( Set -> Set ) ∋ ( ( λ x3670 -> if false then Bool else x3670 ) ) ) $ ( if false then Bool else Bool )
        d365 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> x3660 ) ) ) $ ( d256 ) else if true then false else false
        d368 : if true then ( ( Set -> Set ) ∋ ( ( λ x3720 -> x3720 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d368 = if ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> x3690 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> x3700 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> d365 ) ) ) $ ( true )
        d373 : if true then if true then Bool else Bool else if false then Bool else Bool
        d373 = if ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> true ) ) ) $ ( d225 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> true ) ) ) $ ( d159 ) else if d37 then d149 else d334
        d376 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3780 -> x3780 ) ) ) $ ( Bool )
        d376 = if ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> d81 ) ) ) $ ( d373 ) then if false then true else d189 else if false then d142 else false
        d379 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3810 -> Bool ) ) ) $ ( Bool )
        d379 = ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if x3800 then x3800 else d194 ) ) ) $ ( if true then true else d203 )
        d382 : if false then ( ( Set -> Set ) ∋ ( ( λ x3840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( Bool )
        d382 = ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> if true then d16 else d306 ) ) ) $ ( if false then true else true )
        d386 : if false then ( ( Set -> Set ) ∋ ( ( λ x3890 -> x3890 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d386 = if if d310 then true else d210 then ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> x3870 ) ) ) $ ( d297 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> d373 ) ) ) $ ( true )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3930 -> if false then x3930 else Bool ) ) ) $ ( if true then Bool else Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if x3920 then d379 else d292 ) ) ) $ ( x3910 ) ) ) ) $ ( if d341 then true else d65 )
        d394 : if true then if false then Bool else Bool else if true then Bool else Bool
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> if x3950 then true else x3960 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x3990 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if d281 then x3980 else d200 ) ) ) $ ( if d16 then d236 else d104 )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4020 -> if true then x4020 else x4020 ) ) ) $ ( if false then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> if d146 then true else false ) ) ) $ ( if false then false else d132 )
        d403 : ( ( Set -> Set ) ∋ ( ( λ x4060 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d403 = if ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> true ) ) ) $ ( d58 ) then if d39 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> false ) ) ) $ ( true )
        d407 : ( ( Set -> Set ) ∋ ( ( λ x4090 -> if true then x4090 else Bool ) ) ) $ ( if false then Bool else Bool )
        d407 = ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> if x4080 then d297 else x4080 ) ) ) $ ( if d382 then false else false )
        d410 : if true then if false then Bool else Bool else if false then Bool else Bool
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> if x4110 then d16 else x4120 ) ) ) $ ( true ) ) ) ) $ ( if d292 then d353 else true )
        d413 : if true then ( ( Set -> Set ) ∋ ( ( λ x4150 -> x4150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> if x4140 then false else x4140 ) ) ) $ ( if false then d338 else d252 )
        d416 : if false then ( ( Set -> Set ) ∋ ( ( λ x4170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4180 -> Bool ) ) ) $ ( Bool )
        d416 = if if d306 then d314 else d13 then if true then d25 else true else if d310 then d320 else d102
        d419 : if true then if true then Bool else Bool else if true then Bool else Bool
        d419 = if if true then d344 else d297 then if d297 then d203 else d368 else if d256 then true else d164
        d420 : if false then if false then Bool else Bool else if false then Bool else Bool
        d420 = if ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> x4220 ) ) ) $ ( false ) else if true then d221 else true
        d423 : if false then if false then Bool else Bool else if false then Bool else Bool
        d423 = ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> if d268 then true else x4240 ) ) ) $ ( false ) ) ) ) $ ( if true then d43 else d53 )
        d426 : if true then ( ( Set -> Set ) ∋ ( ( λ x4280 -> x4280 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> if x4270 then false else x4270 ) ) ) $ ( if d265 then false else d353 )
        d429 : ( ( Set -> Set ) ∋ ( ( λ x4320 -> if true then x4320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d429 = ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> if x4310 then false else x4310 ) ) ) $ ( true ) ) ) ) $ ( if d261 then true else true )
        d433 : ( ( Set -> Set ) ∋ ( ( λ x4360 -> if false then x4360 else x4360 ) ) ) $ ( if true then Bool else Bool )
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> if true then x4340 else d390 ) ) ) $ ( x4340 ) ) ) ) $ ( if false then d124 else d426 )
        d437 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4390 -> Bool ) ) ) $ ( Bool )
        d437 = ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> if true then d13 else x4380 ) ) ) $ ( if true then d365 else d277 )
        d440 : if true then ( ( Set -> Set ) ∋ ( ( λ x4430 -> x4430 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> if false then true else true ) ) ) $ ( true ) ) ) ) $ ( if d96 then d397 else d135 )
        d444 : if false then if true then Bool else Bool else if false then Bool else Bool
        d444 = if ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> true ) ) ) $ ( true ) then if d197 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> d437 ) ) ) $ ( d46 )
        d447 : ( ( Set -> Set ) ∋ ( ( λ x4490 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d447 = ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> if true then true else d403 ) ) ) $ ( if d51 then d394 else true )
        d450 : if true then ( ( Set -> Set ) ∋ ( ( λ x4520 -> x4520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4530 -> x4530 ) ) ) $ ( Bool )
        d450 = if if d386 then false else false then if d112 then false else d69 else ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> true ) ) ) $ ( false )
        d454 : if false then if false then Bool else Bool else if false then Bool else Bool
        d454 = if ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> x4550 ) ) ) $ ( d159 ) then if d265 then d416 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> d156 ) ) ) $ ( true )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4600 -> if true then Bool else x4600 ) ) ) $ ( if false then Bool else Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if d53 then d407 else d265 ) ) ) $ ( d207 ) ) ) ) $ ( if true then d373 else false )
        d461 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4640 -> Bool ) ) ) $ ( Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if d368 then true else x4620 ) ) ) $ ( true ) ) ) ) $ ( if true then d164 else true )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x4680 -> ( ( Set -> Set ) ∋ ( ( λ x4690 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> if x4660 then d400 else false ) ) ) $ ( x4660 ) ) ) ) $ ( if d10 then d164 else d440 )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x4730 -> ( ( Set -> Set ) ∋ ( ( λ x4740 -> if false then Bool else x4740 ) ) ) $ ( x4730 ) ) ) ) $ ( if true then Bool else Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> if false then x4710 else false ) ) ) $ ( d112 ) ) ) ) $ ( if true then d146 else d16 )
        d475 : if true then ( ( Set -> Set ) ∋ ( ( λ x4780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4790 -> x4790 ) ) ) $ ( Bool )
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if x4770 then d426 else true ) ) ) $ ( d175 ) ) ) ) $ ( if false then false else false )
        d480 : ( ( Set -> Set ) ∋ ( ( λ x4820 -> ( ( Set -> Set ) ∋ ( ( λ x4830 -> if true then x4830 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> if true then x4810 else d301 ) ) ) $ ( if true then d247 else d301 )
        d484 : ( ( Set -> Set ) ∋ ( ( λ x4860 -> if false then x4860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> if false then x4850 else d416 ) ) ) $ ( if d225 then false else true )
        d487 : ( ( Set -> Set ) ∋ ( ( λ x4890 -> ( ( Set -> Set ) ∋ ( ( λ x4900 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d487 = ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if x4880 then x4880 else true ) ) ) $ ( if true then d268 else d350 )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4920 -> if true then Bool else x4920 ) ) ) $ ( if false then Bool else Bool )
        d491 = if if d61 then true else false then if d168 then d194 else d229 else if d43 then true else d465
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4950 -> if false then Bool else x4950 ) ) ) $ ( if false then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if d390 then x4940 else d410 ) ) ) $ ( if false then true else d440 )
        d496 : ( ( Set -> Set ) ∋ ( ( λ x4990 -> ( ( Set -> Set ) ∋ ( ( λ x5000 -> if false then Bool else x4990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d496 = if ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> d153 ) ) ) $ ( d256 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> x4980 ) ) ) $ ( d16 ) else if false then false else d306
        d501 : ( ( Set -> Set ) ∋ ( ( λ x5040 -> if false then x5040 else Bool ) ) ) $ ( if true then Bool else Bool )
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> if true then false else false ) ) ) $ ( x5020 ) ) ) ) $ ( if false then d247 else d58 )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if true then Bool else Bool ) ) ) $ ( x5070 ) ) ) ) $ ( if true then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if x5060 then d480 else x5060 ) ) ) $ ( if true then d168 else true )
        d509 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5110 -> Bool ) ) ) $ ( Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if d189 then true else false ) ) ) $ ( if d285 then d261 else true )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> if false then x5150 else Bool ) ) ) $ ( if false then Bool else Bool )
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> if x5140 then true else x5140 ) ) ) $ ( x5130 ) ) ) ) $ ( if d5 then d326 else true )
        d516 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5200 -> x5200 ) ) ) $ ( Bool )
        d516 = if ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> x5170 ) ) ) $ ( d104 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> x5180 ) ) ) $ ( d450 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> false ) ) ) $ ( d297 )
        d521 : if true then if false then Bool else Bool else if true then Bool else Bool
        d521 = if if d330 then true else d465 then ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> d285 ) ) ) $ ( d156 ) else if d314 then false else false
        d523 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> if true then x5250 else Bool ) ) ) $ ( if false then Bool else Bool )
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> if d310 then true else d306 ) ) ) $ ( if d207 then false else true )
        d526 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5300 -> x5300 ) ) ) $ ( Bool )
        d526 = if ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> x5270 ) ) ) $ ( d306 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> false ) ) ) $ ( d426 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> x5290 ) ) ) $ ( false )
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> if true then x5330 else Bool ) ) ) $ ( if false then Bool else Bool )
        d531 = if if false then d386 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> d310 ) ) ) $ ( true ) else if d203 then true else d487
        d534 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5360 -> Bool ) ) ) $ ( Bool )
        d534 = if if true then d301 else d338 then if d109 then true else d423 else ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> x5350 ) ) ) $ ( true )
        d537 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5410 -> Bool ) ) ) $ ( Bool )
        d537 = if ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> true ) ) ) $ ( d218 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> d320 ) ) ) $ ( d168 )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x5440 -> if true then x5440 else Bool ) ) ) $ ( if false then Bool else Bool )
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> if d407 then true else x5430 ) ) ) $ ( if false then d247 else false )
        d545 : ( ( Set -> Set ) ∋ ( ( λ x5470 -> ( ( Set -> Set ) ∋ ( ( λ x5480 -> if true then x5470 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> if false then x5460 else x5460 ) ) ) $ ( if d386 then d344 else false )
        d549 : if false then ( ( Set -> Set ) ∋ ( ( λ x5520 -> x5520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5530 -> x5530 ) ) ) $ ( Bool )
        d549 = if ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> d526 ) ) ) $ ( true ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> x5510 ) ) ) $ ( false )
        d554 : ( ( Set -> Set ) ∋ ( ( λ x5560 -> if false then x5560 else x5560 ) ) ) $ ( if false then Bool else Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> if d509 then d197 else d397 ) ) ) $ ( if true then true else true )
        d557 : ( ( Set -> Set ) ∋ ( ( λ x5600 -> ( ( Set -> Set ) ∋ ( ( λ x5610 -> if true then x5600 else Bool ) ) ) $ ( x5600 ) ) ) ) $ ( if true then Bool else Bool )
        d557 = if if true then true else d159 then ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> d509 ) ) ) $ ( d334 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> false ) ) ) $ ( d501 )
        d562 : ( ( Set -> Set ) ∋ ( ( λ x5640 -> ( ( Set -> Set ) ∋ ( ( λ x5650 -> if true then Bool else Bool ) ) ) $ ( x5640 ) ) ) ) $ ( if false then Bool else Bool )
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> if x5630 then x5630 else true ) ) ) $ ( if true then false else d85 )
        d566 : if false then ( ( Set -> Set ) ∋ ( ( λ x5680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5690 -> Bool ) ) ) $ ( Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> if x5670 then false else d69 ) ) ) $ ( if false then true else false )
        d570 : ( ( Set -> Set ) ∋ ( ( λ x5720 -> ( ( Set -> Set ) ∋ ( ( λ x5730 -> if false then Bool else x5730 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if false then false else d306 ) ) ) $ ( if false then d379 else true )
        d574 : if false then ( ( Set -> Set ) ∋ ( ( λ x5760 -> x5760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d574 = if if false then false else d93 then ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> d261 ) ) ) $ ( d334 ) else if false then d119 else d189
        d577 : if false then ( ( Set -> Set ) ∋ ( ( λ x5780 -> x5780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5790 -> x5790 ) ) ) $ ( Bool )
        d577 = if if true then false else d112 then if true then true else d454 else if true then false else d457
        d580 : if true then ( ( Set -> Set ) ∋ ( ( λ x5820 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d580 = if if false then false else d81 then if false then d229 else d20 else ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> false ) ) ) $ ( true )
        d583 : if true then ( ( Set -> Set ) ∋ ( ( λ x5860 -> x5860 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5870 -> Bool ) ) ) $ ( Bool )
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> if d203 then x5840 else true ) ) ) $ ( x5840 ) ) ) ) $ ( if d261 then d542 else d149 )
        d588 : if true then ( ( Set -> Set ) ∋ ( ( λ x5910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5920 -> Bool ) ) ) $ ( Bool )
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> if x5900 then x5890 else d214 ) ) ) $ ( x5890 ) ) ) ) $ ( if true then false else true )
        d593 : if false then ( ( Set -> Set ) ∋ ( ( λ x5950 -> x5950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> if d397 then x5940 else x5940 ) ) ) $ ( if false then true else true )
        d596 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5990 -> x5990 ) ) ) $ ( Bool )
        d596 = ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> if true then true else d413 ) ) ) $ ( false ) ) ) ) $ ( if d501 then d454 else d368 )
        d600 : ( ( Set -> Set ) ∋ ( ( λ x6020 -> if true then Bool else x6020 ) ) ) $ ( if true then Bool else Bool )
        d600 = ( ( Bool -> Bool ) ∋ ( ( λ x6010 -> if d20 then true else true ) ) ) $ ( if d194 then false else d423 )
        d603 : if false then ( ( Set -> Set ) ∋ ( ( λ x6050 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d603 = ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> if false then true else x6040 ) ) ) $ ( if false then d457 else false )
        d606 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6090 -> x6090 ) ) ) $ ( Bool )
        d606 = ( ( Bool -> Bool ) ∋ ( ( λ x6070 -> ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> if false then x6080 else true ) ) ) $ ( x6070 ) ) ) ) $ ( if true then true else d461 )
        d610 : ( ( Set -> Set ) ∋ ( ( λ x6140 -> if true then x6140 else x6140 ) ) ) $ ( if true then Bool else Bool )
        d610 = if ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> true ) ) ) $ ( d593 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6130 -> true ) ) ) $ ( true )
        d615 : if true then ( ( Set -> Set ) ∋ ( ( λ x6180 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d615 = ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> ( ( Bool -> Bool ) ∋ ( ( λ x6170 -> if x6160 then false else false ) ) ) $ ( x6160 ) ) ) ) $ ( if d562 then true else false )
        d619 : ( ( Set -> Set ) ∋ ( ( λ x6220 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> ( ( Bool -> Bool ) ∋ ( ( λ x6210 -> if true then x6200 else d310 ) ) ) $ ( true ) ) ) ) $ ( if d146 then d429 else false )
        d623 : if false then ( ( Set -> Set ) ∋ ( ( λ x6250 -> x6250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6260 -> Bool ) ) ) $ ( Bool )
        d623 = ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> if d69 then false else x6240 ) ) ) $ ( if true then true else false )
        d627 : if true then if true then Bool else Bool else if true then Bool else Bool
        d627 = ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> if d505 then false else x6280 ) ) ) $ ( if true then d570 else true )
        d629 : ( ( Set -> Set ) ∋ ( ( λ x6310 -> ( ( Set -> Set ) ∋ ( ( λ x6320 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> if d376 then x6300 else false ) ) ) $ ( if false then d338 else false )
        d633 : ( ( Set -> Set ) ∋ ( ( λ x6360 -> ( ( Set -> Set ) ∋ ( ( λ x6370 -> if true then Bool else Bool ) ) ) $ ( x6360 ) ) ) ) $ ( if false then Bool else Bool )
        d633 = ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> if d330 then true else x6340 ) ) ) $ ( x6340 ) ) ) ) $ ( if d5 then false else false )
        d638 : ( ( Set -> Set ) ∋ ( ( λ x6400 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d638 = if if d51 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x6390 -> d491 ) ) ) $ ( d99 ) else if true then true else d619
        d641 : ( ( Set -> Set ) ∋ ( ( λ x6440 -> if true then x6440 else x6440 ) ) ) $ ( if true then Bool else Bool )
        d641 = ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> ( ( Bool -> Bool ) ∋ ( ( λ x6430 -> if x6430 then true else d127 ) ) ) $ ( false ) ) ) ) $ ( if d301 then false else d484 )
        d645 : ( ( Set -> Set ) ∋ ( ( λ x6480 -> if true then Bool else x6480 ) ) ) $ ( if true then Bool else Bool )
        d645 = ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> if true then true else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d172 )
        d649 : ( ( Set -> Set ) ∋ ( ( λ x6510 -> ( ( Set -> Set ) ∋ ( ( λ x6520 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> if true then d13 else d433 ) ) ) $ ( if false then true else d629 )
        d653 : ( ( Set -> Set ) ∋ ( ( λ x6570 -> ( ( Set -> Set ) ∋ ( ( λ x6580 -> if false then x6580 else x6570 ) ) ) $ ( x6570 ) ) ) ) $ ( if true then Bool else Bool )
        d653 = if ( ( Bool -> Bool ) ∋ ( ( λ x6540 -> true ) ) ) $ ( d487 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6550 -> d606 ) ) ) $ ( d390 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> d413 ) ) ) $ ( true )
        d659 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6600 -> Bool ) ) ) $ ( Bool )
        d659 = if if d493 then false else true then if true then d509 else false else if d314 then d241 else true
        d661 : if false then ( ( Set -> Set ) ∋ ( ( λ x6640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6650 -> x6650 ) ) ) $ ( Bool )
        d661 = if ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> true ) ) ) $ ( d73 ) else if false then true else d37
        d666 : ( ( Set -> Set ) ∋ ( ( λ x6680 -> if false then x6680 else Bool ) ) ) $ ( if true then Bool else Bool )
        d666 = if if false then false else d61 then if d357 then d341 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> d554 ) ) ) $ ( false )
        d669 : ( ( Set -> Set ) ∋ ( ( λ x6710 -> ( ( Set -> Set ) ∋ ( ( λ x6720 -> if true then x6710 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d669 = ( ( Bool -> Bool ) ∋ ( ( λ x6700 -> if d615 then true else false ) ) ) $ ( if d475 then d334 else true )
        d673 : ( ( Set -> Set ) ∋ ( ( λ x6750 -> ( ( Set -> Set ) ∋ ( ( λ x6760 -> if false then x6750 else x6750 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d673 = ( ( Bool -> Bool ) ∋ ( ( λ x6740 -> if x6740 then x6740 else d444 ) ) ) $ ( if d132 then false else false )
        d677 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6800 -> x6800 ) ) ) $ ( Bool )
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> ( ( Bool -> Bool ) ∋ ( ( λ x6790 -> if d360 then x6780 else x6780 ) ) ) $ ( d545 ) ) ) ) $ ( if d320 then true else d596 )
        d681 : ( ( Set -> Set ) ∋ ( ( λ x6840 -> if true then Bool else x6840 ) ) ) $ ( if true then Bool else Bool )
        d681 = if ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> d207 ) ) ) $ ( true ) then if d96 then d233 else d423 else ( ( Bool -> Bool ) ∋ ( ( λ x6830 -> true ) ) ) $ ( d641 )
        d685 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6880 -> x6880 ) ) ) $ ( Bool )
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> if x6870 then d164 else false ) ) ) $ ( x6860 ) ) ) ) $ ( if d379 then true else false )
        d689 : if true then ( ( Set -> Set ) ∋ ( ( λ x6920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6930 -> Bool ) ) ) $ ( Bool )
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> if d104 then true else d444 ) ) ) $ ( false ) ) ) ) $ ( if d159 then false else d301 )
        d694 : ( ( Set -> Set ) ∋ ( ( λ x6960 -> ( ( Set -> Set ) ∋ ( ( λ x6970 -> if true then x6970 else x6970 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d694 = ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> if d341 then false else true ) ) ) $ ( if d629 then true else d85 )
        d698 : if true then ( ( Set -> Set ) ∋ ( ( λ x7000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d698 = if ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> true ) ) ) $ ( d373 ) then if false then true else false else if false then d43 else d247
        d701 : if true then if true then Bool else Bool else if true then Bool else Bool
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> if d77 then false else false ) ) ) $ ( if d146 then d256 else false )
        d703 : ( ( Set -> Set ) ∋ ( ( λ x7060 -> if false then Bool else x7060 ) ) ) $ ( if true then Bool else Bool )
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x7040 -> ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> if d301 then x7040 else x7040 ) ) ) $ ( false ) ) ) ) $ ( if d58 then d397 else false )
        d707 : ( ( Set -> Set ) ∋ ( ( λ x7090 -> ( ( Set -> Set ) ∋ ( ( λ x7100 -> if false then x7090 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> if x7080 then false else d314 ) ) ) $ ( if d496 then true else d281 )
        d711 : if false then ( ( Set -> Set ) ∋ ( ( λ x7140 -> x7140 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7150 -> Bool ) ) ) $ ( Bool )
        d711 = if ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> x7120 ) ) ) $ ( d701 ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> false ) ) ) $ ( true )
        d716 : if true then if false then Bool else Bool else if false then Bool else Bool
        d716 = if if false then d554 else true then ( ( Bool -> Bool ) ∋ ( ( λ x7170 -> x7170 ) ) ) $ ( d593 ) else if d172 then d265 else d156
        d718 : ( ( Set -> Set ) ∋ ( ( λ x7210 -> if false then x7210 else x7210 ) ) ) $ ( if false then Bool else Bool )
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> if x7190 then x7200 else d610 ) ) ) $ ( false ) ) ) ) $ ( if true then d265 else d347 )
        d722 : ( ( Set -> Set ) ∋ ( ( λ x7240 -> if false then x7240 else Bool ) ) ) $ ( if true then Bool else Bool )
        d722 = ( ( Bool -> Bool ) ∋ ( ( λ x7230 -> if x7230 then false else x7230 ) ) ) $ ( if d410 then d444 else false )
        d725 : ( ( Set -> Set ) ∋ ( ( λ x7280 -> if false then Bool else x7280 ) ) ) $ ( if true then Bool else Bool )
        d725 = if ( ( Bool -> Bool ) ∋ ( ( λ x7260 -> d386 ) ) ) $ ( d338 ) then if d433 then d265 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> x7270 ) ) ) $ ( false )
        d729 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7320 -> Bool ) ) ) $ ( Bool )
        d729 = ( ( Bool -> Bool ) ∋ ( ( λ x7300 -> ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> if false then d416 else d516 ) ) ) $ ( x7300 ) ) ) ) $ ( if false then false else d440 )
        d733 : ( ( Set -> Set ) ∋ ( ( λ x7360 -> ( ( Set -> Set ) ∋ ( ( λ x7370 -> if false then Bool else x7360 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d733 = ( ( Bool -> Bool ) ∋ ( ( λ x7340 -> ( ( Bool -> Bool ) ∋ ( ( λ x7350 -> if x7350 then d580 else d20 ) ) ) $ ( x7340 ) ) ) ) $ ( if d566 then d51 else false )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x7400 -> if false then Bool else x7400 ) ) ) $ ( if true then Bool else Bool )
        d738 = if if d153 then true else d562 then ( ( Bool -> Bool ) ∋ ( ( λ x7390 -> false ) ) ) $ ( false ) else if false then false else d701
        d741 : ( ( Set -> Set ) ∋ ( ( λ x7440 -> ( ( Set -> Set ) ∋ ( ( λ x7450 -> if true then Bool else x7440 ) ) ) $ ( x7440 ) ) ) ) $ ( if true then Bool else Bool )
        d741 = if ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> x7420 ) ) ) $ ( d236 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> d444 ) ) ) $ ( false ) else if true then d53 else d610
        d746 : ( ( Set -> Set ) ∋ ( ( λ x7480 -> if true then x7480 else Bool ) ) ) $ ( if false then Bool else Bool )
        d746 = ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> if d288 then true else d461 ) ) ) $ ( if d241 then true else d450 )
        d749 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7520 -> Bool ) ) ) $ ( Bool )
        d749 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> d397 ) ) ) $ ( d623 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7510 -> d470 ) ) ) $ ( true )
        d753 : ( ( Set -> Set ) ∋ ( ( λ x7540 -> if true then x7540 else x7540 ) ) ) $ ( if false then Bool else Bool )
        d753 = if if d306 then d330 else d168 then if false then d537 else d96 else if d210 then d423 else true
        d755 : ( ( Set -> Set ) ∋ ( ( λ x7590 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d755 = if ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> d330 ) ) ) $ ( d115 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7570 -> d583 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> d326 ) ) ) $ ( d461 )
        d760 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7630 -> x7630 ) ) ) $ ( Bool )
        d760 = if ( ( Bool -> Bool ) ∋ ( ( λ x7610 -> d326 ) ) ) $ ( d423 ) then if d413 then d394 else d588 else ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> d69 ) ) ) $ ( false )
        d764 : if false then ( ( Set -> Set ) ∋ ( ( λ x7670 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d764 = if if false then d46 else d484 then ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> x7650 ) ) ) $ ( d104 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> false ) ) ) $ ( false )
        d768 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7710 -> Bool ) ) ) $ ( Bool )
        d768 = ( ( Bool -> Bool ) ∋ ( ( λ x7690 -> ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> if x7690 then x7690 else d444 ) ) ) $ ( x7690 ) ) ) ) $ ( if true then true else false )
        d772 : if true then ( ( Set -> Set ) ∋ ( ( λ x7740 -> x7740 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d772 = ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> if d413 then x7730 else false ) ) ) $ ( if d496 then false else d225 )
        d775 : if false then if false then Bool else Bool else if true then Bool else Bool
        d775 = if if d450 then d749 else d73 then if d413 then true else false else if d416 then false else true
        d776 : if false then ( ( Set -> Set ) ∋ ( ( λ x7780 -> x7780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7790 -> x7790 ) ) ) $ ( Bool )
        d776 = ( ( Bool -> Bool ) ∋ ( ( λ x7770 -> if d25 then d241 else x7770 ) ) ) $ ( if d420 then d659 else false )
        d780 : ( ( Set -> Set ) ∋ ( ( λ x7820 -> if false then x7820 else Bool ) ) ) $ ( if false then Bool else Bool )
        d780 = ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> if false then false else false ) ) ) $ ( if true then true else d493 )
        d783 : if true then if true then Bool else Bool else if true then Bool else Bool
        d783 = if ( ( Bool -> Bool ) ∋ ( ( λ x7840 -> true ) ) ) $ ( d619 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> true ) ) ) $ ( d347 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> x7860 ) ) ) $ ( true )
        d787 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7900 -> Bool ) ) ) $ ( Bool )
        d787 = ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> if x7890 then true else true ) ) ) $ ( false ) ) ) ) $ ( if d641 then true else false )
        d791 : if false then ( ( Set -> Set ) ∋ ( ( λ x7930 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d791 = ( ( Bool -> Bool ) ∋ ( ( λ x7920 -> if d69 then true else false ) ) ) $ ( if d496 then true else true )
        d794 : if false then ( ( Set -> Set ) ∋ ( ( λ x7970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7980 -> Bool ) ) ) $ ( Bool )
        d794 = ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> if d480 then x7950 else d531 ) ) ) $ ( x7950 ) ) ) ) $ ( if false then d722 else true )
        d799 : ( ( Set -> Set ) ∋ ( ( λ x8020 -> ( ( Set -> Set ) ∋ ( ( λ x8030 -> if false then x8020 else x8030 ) ) ) $ ( x8020 ) ) ) ) $ ( if true then Bool else Bool )
        d799 = if if d457 then d420 else d433 then ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> x8000 ) ) ) $ ( d491 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8010 -> false ) ) ) $ ( true )
        d804 : ( ( Set -> Set ) ∋ ( ( λ x8050 -> ( ( Set -> Set ) ∋ ( ( λ x8060 -> if true then x8050 else x8050 ) ) ) $ ( x8050 ) ) ) ) $ ( if false then Bool else Bool )
        d804 = if if false then true else true then if d20 then d65 else d753 else if false then d301 else true
        d807 : ( ( Set -> Set ) ∋ ( ( λ x8090 -> ( ( Set -> Set ) ∋ ( ( λ x8100 -> if false then x8100 else x8100 ) ) ) $ ( x8090 ) ) ) ) $ ( if false then Bool else Bool )
        d807 = if if d760 then false else true then if false then true else d659 else ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> d69 ) ) ) $ ( true )
        d811 : ( ( Set -> Set ) ∋ ( ( λ x8130 -> ( ( Set -> Set ) ∋ ( ( λ x8140 -> if true then x8140 else x8130 ) ) ) $ ( x8130 ) ) ) ) $ ( if true then Bool else Bool )
        d811 = if ( ( Bool -> Bool ) ∋ ( ( λ x8120 -> false ) ) ) $ ( d521 ) then if false then d214 else false else if d61 then d596 else d1
        d815 : ( ( Set -> Set ) ∋ ( ( λ x8170 -> if true then x8170 else x8170 ) ) ) $ ( if true then Bool else Bool )
        d815 = if ( ( Bool -> Bool ) ∋ ( ( λ x8160 -> x8160 ) ) ) $ ( d153 ) then if true then d496 else d256 else if true then true else false
        d818 : ( ( Set -> Set ) ∋ ( ( λ x8210 -> ( ( Set -> Set ) ∋ ( ( λ x8220 -> if false then Bool else x8210 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d818 = ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> if d454 then x8200 else d96 ) ) ) $ ( d420 ) ) ) ) $ ( if true then d659 else d233 )
        d823 : ( ( Set -> Set ) ∋ ( ( λ x8260 -> ( ( Set -> Set ) ∋ ( ( λ x8270 -> if true then x8260 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d823 = if ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> x8240 ) ) ) $ ( d288 ) then if d444 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> true ) ) ) $ ( true )
        d828 : ( ( Set -> Set ) ∋ ( ( λ x8300 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d828 = if if d247 then d218 else true then if d394 then d545 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> d661 ) ) ) $ ( false )
        d831 : ( ( Set -> Set ) ∋ ( ( λ x8330 -> ( ( Set -> Set ) ∋ ( ( λ x8340 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if false then x8320 else d554 ) ) ) $ ( if d496 then true else d58 )
        d835 : if true then ( ( Set -> Set ) ∋ ( ( λ x8380 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d835 = ( ( Bool -> Bool ) ∋ ( ( λ x8360 -> ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> if x8360 then x8360 else d310 ) ) ) $ ( d407 ) ) ) ) $ ( if false then d413 else d741 )
        d839 : ( ( Set -> Set ) ∋ ( ( λ x8420 -> ( ( Set -> Set ) ∋ ( ( λ x8430 -> if true then x8430 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d839 = ( ( Bool -> Bool ) ∋ ( ( λ x8400 -> ( ( Bool -> Bool ) ∋ ( ( λ x8410 -> if d272 then x8400 else false ) ) ) $ ( x8400 ) ) ) ) $ ( if d10 then true else false )
        d844 : if true then ( ( Set -> Set ) ∋ ( ( λ x8480 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d844 = if ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> x8460 ) ) ) $ ( d426 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8470 -> d669 ) ) ) $ ( false )
        d849 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8520 -> x8520 ) ) ) $ ( Bool )
        d849 = if ( ( Bool -> Bool ) ∋ ( ( λ x8500 -> x8500 ) ) ) $ ( d516 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8510 -> x8510 ) ) ) $ ( d403 ) else if d277 then d722 else d505
        d853 : ( ( Set -> Set ) ∋ ( ( λ x8550 -> if true then Bool else x8550 ) ) ) $ ( if true then Bool else Bool )
        d853 = if if d397 then false else d760 then if d718 then true else d357 else ( ( Bool -> Bool ) ∋ ( ( λ x8540 -> true ) ) ) $ ( d811 )
        d856 : if false then ( ( Set -> Set ) ∋ ( ( λ x8580 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d856 = ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> if d347 then true else d104 ) ) ) $ ( if d461 then false else true )
        d859 : ( ( Set -> Set ) ∋ ( ( λ x8600 -> ( ( Set -> Set ) ∋ ( ( λ x8610 -> if true then x8610 else x8600 ) ) ) $ ( x8600 ) ) ) ) $ ( if false then Bool else Bool )
        d859 = if if true then true else false then if d185 then d760 else false else if d545 then true else d491
        d862 : if false then ( ( Set -> Set ) ∋ ( ( λ x8650 -> x8650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8660 -> Bool ) ) ) $ ( Bool )
        d862 = ( ( Bool -> Bool ) ∋ ( ( λ x8630 -> ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> if d268 then x8640 else d43 ) ) ) $ ( x8630 ) ) ) ) $ ( if d444 then d423 else false )
        d867 : if false then if false then Bool else Bool else if false then Bool else Bool
        d867 = if if false then d37 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> d46 ) ) ) $ ( false )
        d870 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8720 -> Bool ) ) ) $ ( Bool )
        d870 = ( ( Bool -> Bool ) ∋ ( ( λ x8710 -> if false then true else x8710 ) ) ) $ ( if d16 then true else true )
        d873 : ( ( Set -> Set ) ∋ ( ( λ x8750 -> if true then Bool else x8750 ) ) ) $ ( if false then Bool else Bool )
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> if x8740 then x8740 else d347 ) ) ) $ ( if false then d645 else true )
        d876 : ( ( Set -> Set ) ∋ ( ( λ x8780 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d876 = if ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> x8770 ) ) ) $ ( d390 ) then if false then d20 else true else if d407 then false else false
        d879 : ( ( Set -> Set ) ∋ ( ( λ x8810 -> ( ( Set -> Set ) ∋ ( ( λ x8820 -> if true then x8820 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d879 = ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> if x8800 then x8800 else x8800 ) ) ) $ ( if true then false else true )
        d883 : if false then if true then Bool else Bool else if true then Bool else Bool
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> if x8840 then true else x8840 ) ) ) $ ( if false then d386 else d357 )
        d885 : if false then if false then Bool else Bool else if true then Bool else Bool
        d885 = if if d450 then d416 else d344 then if true then d791 else d703 else if false then true else d839
        d886 : if true then if false then Bool else Bool else if false then Bool else Bool
        d886 = ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> if d711 then d127 else x8870 ) ) ) $ ( x8870 ) ) ) ) $ ( if d685 then d681 else d772 )
        d889 : ( ( Set -> Set ) ∋ ( ( λ x8920 -> ( ( Set -> Set ) ∋ ( ( λ x8930 -> if true then Bool else x8920 ) ) ) $ ( x8920 ) ) ) ) $ ( if true then Bool else Bool )
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x8900 -> ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> if false then x8900 else true ) ) ) $ ( x8900 ) ) ) ) $ ( if d753 then false else d433 )
        d894 : if false then ( ( Set -> Set ) ∋ ( ( λ x8970 -> x8970 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8980 -> x8980 ) ) ) $ ( Bool )
        d894 = ( ( Bool -> Bool ) ∋ ( ( λ x8950 -> ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> if false then x8950 else d292 ) ) ) $ ( x8950 ) ) ) ) $ ( if false then true else d889 )
        d899 : ( ( Set -> Set ) ∋ ( ( λ x9020 -> ( ( Set -> Set ) ∋ ( ( λ x9030 -> if true then x9030 else Bool ) ) ) $ ( x9020 ) ) ) ) $ ( if false then Bool else Bool )
        d899 = ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> ( ( Bool -> Bool ) ∋ ( ( λ x9010 -> if d5 then d200 else false ) ) ) $ ( x9000 ) ) ) ) $ ( if true then false else d856 )
        d904 : if false then if true then Bool else Bool else if true then Bool else Bool
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> if d353 then x9050 else d645 ) ) ) $ ( if true then d368 else d633 )
        d906 : if true then if true then Bool else Bool else if false then Bool else Bool
        d906 = if if d124 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> true ) ) ) $ ( false ) else if d703 then d43 else d461
        d908 : if true then ( ( Set -> Set ) ∋ ( ( λ x9110 -> x9110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d908 = ( ( Bool -> Bool ) ∋ ( ( λ x9090 -> ( ( Bool -> Bool ) ∋ ( ( λ x9100 -> if x9100 then d77 else true ) ) ) $ ( false ) ) ) ) $ ( if d815 then d124 else true )
        d912 : ( ( Set -> Set ) ∋ ( ( λ x9160 -> if false then x9160 else x9160 ) ) ) $ ( if true then Bool else Bool )
        d912 = if ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> x9130 ) ) ) $ ( d879 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> d588 ) ) ) $ ( d831 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> x9150 ) ) ) $ ( d876 )
        d917 : ( ( Set -> Set ) ∋ ( ( λ x9190 -> ( ( Set -> Set ) ∋ ( ( λ x9200 -> if true then x9200 else x9200 ) ) ) $ ( x9190 ) ) ) ) $ ( if false then Bool else Bool )
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x9180 -> if d749 then x9180 else d862 ) ) ) $ ( if d512 then false else false )
        d921 : if false then ( ( Set -> Set ) ∋ ( ( λ x9230 -> x9230 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d921 = ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> if x9220 then x9220 else false ) ) ) $ ( if false then true else d25 )
        d924 : if false then ( ( Set -> Set ) ∋ ( ( λ x9250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9260 -> Bool ) ) ) $ ( Bool )
        d924 = if if true then d516 else d659 then if d394 then d707 else true else if true then true else d807
        d927 : ( ( Set -> Set ) ∋ ( ( λ x9290 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d927 = if if d272 then d775 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> x9280 ) ) ) $ ( d627 ) else if d164 then false else true
        d930 : if true then ( ( Set -> Set ) ∋ ( ( λ x9320 -> x9320 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d930 = if if true then true else d5 then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> x9310 ) ) ) $ ( false )
        d933 : if false then ( ( Set -> Set ) ∋ ( ( λ x9360 -> x9360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9370 -> x9370 ) ) ) $ ( Bool )
        d933 = ( ( Bool -> Bool ) ∋ ( ( λ x9340 -> ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> if false then x9340 else x9340 ) ) ) $ ( x9340 ) ) ) ) $ ( if false then d175 else true )
        d938 : ( ( Set -> Set ) ∋ ( ( λ x9400 -> if true then x9400 else Bool ) ) ) $ ( if true then Bool else Bool )
        d938 = if ( ( Bool -> Bool ) ∋ ( ( λ x9390 -> d330 ) ) ) $ ( d310 ) then if d566 then true else d899 else if false then true else false
        d941 : if true then ( ( Set -> Set ) ∋ ( ( λ x9430 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d941 = ( ( Bool -> Bool ) ∋ ( ( λ x9420 -> if x9420 then d828 else true ) ) ) $ ( if d353 then false else d815 )
        d944 : ( ( Set -> Set ) ∋ ( ( λ x9450 -> ( ( Set -> Set ) ∋ ( ( λ x9460 -> if false then x9460 else x9460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d944 = if if true then true else d350 then if false then false else false else if false then true else false
        d947 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9500 -> Bool ) ) ) $ ( Bool )
        d947 = ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> if x9490 then d941 else false ) ) ) $ ( d261 ) ) ) ) $ ( if d323 then d185 else d272 )
        d951 : ( ( Set -> Set ) ∋ ( ( λ x9530 -> ( ( Set -> Set ) ∋ ( ( λ x9540 -> if true then Bool else x9530 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d951 = if ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> d341 ) ) ) $ ( true ) then if d109 then d491 else true else if d353 then d549 else false
        d955 : ( ( Set -> Set ) ∋ ( ( λ x9580 -> ( ( Set -> Set ) ∋ ( ( λ x9590 -> if false then x9590 else Bool ) ) ) $ ( x9580 ) ) ) ) $ ( if true then Bool else Bool )
        d955 = if ( ( Bool -> Bool ) ∋ ( ( λ x9560 -> x9560 ) ) ) $ ( d534 ) then if false then true else d263 else ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> true ) ) ) $ ( false )
        d960 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9630 -> Bool ) ) ) $ ( Bool )
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> if false then true else x9620 ) ) ) $ ( d423 ) ) ) ) $ ( if d666 then d172 else d912 )
        d964 : ( ( Set -> Set ) ∋ ( ( λ x9670 -> if true then Bool else x9670 ) ) ) $ ( if true then Bool else Bool )
        d964 = if ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> false ) ) ) $ ( d400 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> x9660 ) ) ) $ ( false ) else if d314 then d465 else false
        d968 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9710 -> Bool ) ) ) $ ( Bool )
        d968 = if ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> d265 ) ) ) $ ( true ) then if false then d115 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> x9700 ) ) ) $ ( false )
        d972 : if true then ( ( Set -> Set ) ∋ ( ( λ x9750 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d972 = ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> ( ( Bool -> Bool ) ∋ ( ( λ x9740 -> if false then false else x9740 ) ) ) $ ( true ) ) ) ) $ ( if false then d545 else false )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x9790 -> ( ( Set -> Set ) ∋ ( ( λ x9800 -> if false then Bool else x9800 ) ) ) $ ( x9790 ) ) ) ) $ ( if false then Bool else Bool )
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x9770 -> ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> if x9780 then x9780 else x9770 ) ) ) $ ( x9770 ) ) ) ) $ ( if d738 then false else true )
        d981 : ( ( Set -> Set ) ∋ ( ( λ x9840 -> ( ( Set -> Set ) ∋ ( ( λ x9850 -> if false then Bool else x9850 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d981 = ( ( Bool -> Bool ) ∋ ( ( λ x9820 -> ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> if false then true else d330 ) ) ) $ ( x9820 ) ) ) ) $ ( if d350 then d828 else d73 )
        d986 : ( ( Set -> Set ) ∋ ( ( λ x9880 -> ( ( Set -> Set ) ∋ ( ( λ x9890 -> if true then x9890 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d986 = ( ( Bool -> Bool ) ∋ ( ( λ x9870 -> if false then true else true ) ) ) $ ( if d661 then d65 else true )
        d990 : ( ( Set -> Set ) ∋ ( ( λ x9930 -> if true then Bool else x9930 ) ) ) $ ( if true then Bool else Bool )
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x9910 -> ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> if d623 then d908 else x9920 ) ) ) $ ( d440 ) ) ) ) $ ( if true then true else d96 )
        d994 : if true then if false then Bool else Bool else if true then Bool else Bool
        d994 = if if d831 then d496 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> d277 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> x9960 ) ) ) $ ( true )
        d997 : if false then ( ( Set -> Set ) ∋ ( ( λ x9990 -> x9990 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d997 = ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> if true then d146 else x9980 ) ) ) $ ( if d263 then d465 else true )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10020 -> ( ( Set -> Set ) ∋ ( ( λ x10030 -> if true then x10020 else x10020 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> if false then x10010 else d256 ) ) ) $ ( if true then false else false )
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x10070 -> if true then Bool else x10070 ) ) ) $ ( if false then Bool else Bool )
        d1004 = if ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> false ) ) ) $ ( d673 ) else if d99 then true else d859
        d1008 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10110 -> Bool ) ) ) $ ( Bool )
        d1008 = if ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> d894 ) ) ) $ ( d344 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> x10100 ) ) ) $ ( true ) else if d862 then true else false
        d1012 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1012 = if if false then true else d210 then ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> d603 ) ) ) $ ( d545 ) else if d440 then d645 else d420
        d1014 : ( ( Set -> Set ) ∋ ( ( λ x10170 -> ( ( Set -> Set ) ∋ ( ( λ x10180 -> if true then Bool else x10180 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1014 = ( ( Bool -> Bool ) ∋ ( ( λ x10150 -> ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> if x10150 then d566 else true ) ) ) $ ( true ) ) ) ) $ ( if d323 then d263 else false )
        d1019 : if false then ( ( Set -> Set ) ∋ ( ( λ x10220 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1019 = ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> ( ( Bool -> Bool ) ∋ ( ( λ x10210 -> if x10200 then d386 else x10200 ) ) ) $ ( d350 ) ) ) ) $ ( if true then true else false )
        d1023 : ( ( Set -> Set ) ∋ ( ( λ x10250 -> ( ( Set -> Set ) ∋ ( ( λ x10260 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1023 = ( ( Bool -> Bool ) ∋ ( ( λ x10240 -> if x10240 then false else d886 ) ) ) $ ( if d623 then true else true )
        d1027 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10290 -> Bool ) ) ) $ ( Bool )
        d1027 = if ( ( Bool -> Bool ) ∋ ( ( λ x10280 -> x10280 ) ) ) $ ( d51 ) then if d787 then false else d718 else if false then false else false
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x10330 -> ( ( Set -> Set ) ∋ ( ( λ x10340 -> if false then Bool else x10330 ) ) ) $ ( x10330 ) ) ) ) $ ( if false then Bool else Bool )
        d1030 = if if d69 then d241 else d859 then ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> d33 ) ) ) $ ( d791 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10320 -> x10320 ) ) ) $ ( d994 )
        d1035 : ( ( Set -> Set ) ∋ ( ( λ x10380 -> ( ( Set -> Set ) ∋ ( ( λ x10390 -> if false then Bool else x10390 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1035 = ( ( Bool -> Bool ) ∋ ( ( λ x10360 -> ( ( Bool -> Bool ) ∋ ( ( λ x10370 -> if d694 then x10360 else d593 ) ) ) $ ( d172 ) ) ) ) $ ( if d1008 then d885 else true )
        d1040 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1040 = ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> if false then false else d73 ) ) ) $ ( false ) ) ) ) $ ( if d707 then true else true )
        d1044 : ( ( Set -> Set ) ∋ ( ( λ x10460 -> ( ( Set -> Set ) ∋ ( ( λ x10470 -> if false then x10460 else x10460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1044 = ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> if d85 then d531 else x10450 ) ) ) $ ( if d889 then d698 else d306 )
        d1048 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1048 = if ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> false ) ) ) $ ( false ) then if false then true else d475 else if true then d403 else false
        d1050 : if false then ( ( Set -> Set ) ∋ ( ( λ x10530 -> x10530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1050 = if ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> d1012 ) ) ) $ ( d1014 ) then if d1008 then d5 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10520 -> false ) ) ) $ ( false )
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x10570 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1054 = ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> if d491 then d930 else true ) ) ) $ ( x10550 ) ) ) ) $ ( if d386 then d301 else d521 )
        d1058 : ( ( Set -> Set ) ∋ ( ( λ x10600 -> ( ( Set -> Set ) ∋ ( ( λ x10610 -> if true then x10610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1058 = if ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> true ) ) ) $ ( d225 ) then if false then false else false else if false then d927 else false
        d1062 : if false then ( ( Set -> Set ) ∋ ( ( λ x10650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1062 = if ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> x10630 ) ) ) $ ( d593 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10640 -> x10640 ) ) ) $ ( false ) else if false then d879 else false
        d1066 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1066 = ( ( Bool -> Bool ) ∋ ( ( λ x10670 -> ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> if d241 then d534 else d429 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d263 )
        d1069 : if false then ( ( Set -> Set ) ∋ ( ( λ x10710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10720 -> x10720 ) ) ) $ ( Bool )
        d1069 = if ( ( Bool -> Bool ) ∋ ( ( λ x10700 -> false ) ) ) $ ( true ) then if d853 then true else false else if false then d1054 else true
        d1073 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10770 -> Bool ) ) ) $ ( Bool )
        d1073 = if ( ( Bool -> Bool ) ∋ ( ( λ x10740 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10750 -> x10750 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> false ) ) ) $ ( d755 )
        d1078 : if true then ( ( Set -> Set ) ∋ ( ( λ x10800 -> x10800 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10810 -> Bool ) ) ) $ ( Bool )
        d1078 = if if true then d554 else d870 then if d512 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> true ) ) ) $ ( d357 )
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x10840 -> if false then Bool else x10840 ) ) ) $ ( if false then Bool else Bool )
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> if d912 then d1004 else d334 ) ) ) $ ( if false then d470 else true )
        d1085 : ( ( Set -> Set ) ∋ ( ( λ x10870 -> ( ( Set -> Set ) ∋ ( ( λ x10880 -> if true then Bool else Bool ) ) ) $ ( x10870 ) ) ) ) $ ( if true then Bool else Bool )
        d1085 = ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> if d43 then x10860 else d25 ) ) ) $ ( if false then d933 else false )
        d1089 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10910 -> Bool ) ) ) $ ( Bool )
        d1089 = ( ( Bool -> Bool ) ∋ ( ( λ x10900 -> if d61 then d606 else true ) ) ) $ ( if d310 then d876 else false )
        d1092 : ( ( Set -> Set ) ∋ ( ( λ x10950 -> if true then x10950 else x10950 ) ) ) $ ( if false then Bool else Bool )
        d1092 = ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> if false then d755 else d99 ) ) ) $ ( d501 ) ) ) ) $ ( if d233 then false else false )
        d1096 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10980 -> x10980 ) ) ) $ ( Bool )
        d1096 = if if false then d501 else false then if true then d633 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> x10970 ) ) ) $ ( true )
        d1099 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11020 -> x11020 ) ) ) $ ( Bool )
        d1099 = ( ( Bool -> Bool ) ∋ ( ( λ x11000 -> ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> if false then d780 else d876 ) ) ) $ ( x11000 ) ) ) ) $ ( if true then d112 else d487 )
        d1103 : ( ( Set -> Set ) ∋ ( ( λ x11060 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1103 = if ( ( Bool -> Bool ) ∋ ( ( λ x11040 -> d718 ) ) ) $ ( d1096 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> x11050 ) ) ) $ ( true ) else if true then d933 else true
        d1107 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1107 = if if d159 then d365 else d1044 then ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> d470 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11090 -> true ) ) ) $ ( d633 )
        d1110 : if false then ( ( Set -> Set ) ∋ ( ( λ x11120 -> x11120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1110 = ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> if d531 then d112 else true ) ) ) $ ( if d694 then d718 else true )
        d1113 : ( ( Set -> Set ) ∋ ( ( λ x11150 -> if true then x11150 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1113 = ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> if d889 then d844 else true ) ) ) $ ( if d768 then d484 else d828 )
        d1116 : ( ( Set -> Set ) ∋ ( ( λ x11180 -> ( ( Set -> Set ) ∋ ( ( λ x11190 -> if true then x11190 else Bool ) ) ) $ ( x11180 ) ) ) ) $ ( if true then Bool else Bool )
        d1116 = ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> if true then x11170 else x11170 ) ) ) $ ( if false then true else true )
        d1120 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11220 -> Bool ) ) ) $ ( Bool )
        d1120 = ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> if true then true else x11210 ) ) ) $ ( if true then false else d716 )
        d1123 : ( ( Set -> Set ) ∋ ( ( λ x11260 -> ( ( Set -> Set ) ∋ ( ( λ x11270 -> if true then Bool else x11270 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1123 = if ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> d1019 ) ) ) $ ( d716 ) then if d484 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> true ) ) ) $ ( d908 )
        d1128 : ( ( Set -> Set ) ∋ ( ( λ x11310 -> ( ( Set -> Set ) ∋ ( ( λ x11320 -> if true then Bool else x11310 ) ) ) $ ( x11310 ) ) ) ) $ ( if true then Bool else Bool )
        d1128 = ( ( Bool -> Bool ) ∋ ( ( λ x11290 -> ( ( Bool -> Bool ) ∋ ( ( λ x11300 -> if false then x11290 else true ) ) ) $ ( false ) ) ) ) $ ( if false then d1120 else d429 )
        d1133 : ( ( Set -> Set ) ∋ ( ( λ x11350 -> ( ( Set -> Set ) ∋ ( ( λ x11360 -> if false then x11350 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1133 = ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> if x11340 then false else d419 ) ) ) $ ( if false then true else d124 )
        d1137 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1137 = ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> ( ( Bool -> Bool ) ∋ ( ( λ x11390 -> if false then d397 else true ) ) ) $ ( false ) ) ) ) $ ( if d768 then d454 else false )
        d1140 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1140 = ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> if true then d593 else true ) ) ) $ ( d419 ) ) ) ) $ ( if d20 then d593 else d330 )
        d1143 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11460 -> x11460 ) ) ) $ ( Bool )
        d1143 = ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> if false then x11450 else d964 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d172 )
        d1147 : ( ( Set -> Set ) ∋ ( ( λ x11490 -> ( ( Set -> Set ) ∋ ( ( λ x11500 -> if true then x11500 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1147 = ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> if d397 then false else x11480 ) ) ) $ ( if true then true else false )
        d1151 : if false then ( ( Set -> Set ) ∋ ( ( λ x11540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11550 -> x11550 ) ) ) $ ( Bool )
        d1151 = if ( ( Bool -> Bool ) ∋ ( ( λ x11520 -> x11520 ) ) ) $ ( true ) then if d889 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> true ) ) ) $ ( d301 )
        d1156 : ( ( Set -> Set ) ∋ ( ( λ x11580 -> if true then x11580 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1156 = if if false then false else d883 then ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> x11570 ) ) ) $ ( true ) else if true then d214 else true
        d1159 : if true then ( ( Set -> Set ) ∋ ( ( λ x11620 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1159 = ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> if x11600 then x11600 else x11600 ) ) ) $ ( x11600 ) ) ) ) $ ( if true then false else d775 )
        d1163 : ( ( Set -> Set ) ∋ ( ( λ x11650 -> if false then Bool else x11650 ) ) ) $ ( if false then Bool else Bool )
        d1163 = if ( ( Bool -> Bool ) ∋ ( ( λ x11640 -> false ) ) ) $ ( d512 ) then if d738 then false else true else if false then false else true
        d1166 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1166 = ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> ( ( Bool -> Bool ) ∋ ( ( λ x11680 -> if x11680 then true else true ) ) ) $ ( x11670 ) ) ) ) $ ( if d876 then d386 else d1137 )
        d1169 : if false then ( ( Set -> Set ) ∋ ( ( λ x11720 -> x11720 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1169 = ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> if d924 then d420 else x11700 ) ) ) $ ( true ) ) ) ) $ ( if d811 then false else false )
        d1173 : if false then ( ( Set -> Set ) ∋ ( ( λ x11760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11770 -> Bool ) ) ) $ ( Bool )
        d1173 = ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> if d899 then d221 else x11740 ) ) ) $ ( x11740 ) ) ) ) $ ( if d496 then true else true )
        d1178 : ( ( Set -> Set ) ∋ ( ( λ x11800 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1178 = if ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> false ) ) ) $ ( true ) then if true then true else false else if d509 then d1133 else d876
        d1181 : ( ( Set -> Set ) ∋ ( ( λ x11840 -> ( ( Set -> Set ) ∋ ( ( λ x11850 -> if true then x11850 else x11840 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1181 = ( ( Bool -> Bool ) ∋ ( ( λ x11820 -> ( ( Bool -> Bool ) ∋ ( ( λ x11830 -> if false then d1066 else d879 ) ) ) $ ( x11820 ) ) ) ) $ ( if true then true else true )
        d1186 : if true then ( ( Set -> Set ) ∋ ( ( λ x11890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11900 -> Bool ) ) ) $ ( Bool )
        d1186 = if if true then false else d619 then ( ( Bool -> Bool ) ∋ ( ( λ x11870 -> d200 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> d783 ) ) ) $ ( false )
        d1191 : ( ( Set -> Set ) ∋ ( ( λ x11940 -> if true then Bool else x11940 ) ) ) $ ( if false then Bool else Bool )
        d1191 = ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> ( ( Bool -> Bool ) ∋ ( ( λ x11930 -> if d338 then false else false ) ) ) $ ( d610 ) ) ) ) $ ( if true then true else true )
        d1195 : ( ( Set -> Set ) ∋ ( ( λ x11970 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1195 = ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> if d77 then false else x11960 ) ) ) $ ( if d629 then d627 else true )
        d1198 : ( ( Set -> Set ) ∋ ( ( λ x12000 -> ( ( Set -> Set ) ∋ ( ( λ x12010 -> if false then Bool else x12000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1198 = ( ( Bool -> Bool ) ∋ ( ( λ x11990 -> if true then x11990 else d77 ) ) ) $ ( if d139 then d310 else true )
        d1202 : if true then ( ( Set -> Set ) ∋ ( ( λ x12040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12050 -> x12050 ) ) ) $ ( Bool )
        d1202 = if ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> d526 ) ) ) $ ( d722 ) then if d711 then d420 else false else if true then d85 else d941
        d1206 : ( ( Set -> Set ) ∋ ( ( λ x12080 -> ( ( Set -> Set ) ∋ ( ( λ x12090 -> if false then Bool else x12080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1206 = if ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> d964 ) ) ) $ ( false ) then if false then false else false else if false then false else d818
        d1210 : if true then ( ( Set -> Set ) ∋ ( ( λ x12130 -> x12130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1210 = ( ( Bool -> Bool ) ∋ ( ( λ x12110 -> ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> if x12110 then d338 else false ) ) ) $ ( true ) ) ) ) $ ( if d132 then d1140 else true )
        d1214 : ( ( Set -> Set ) ∋ ( ( λ x12160 -> ( ( Set -> Set ) ∋ ( ( λ x12170 -> if false then x12170 else x12170 ) ) ) $ ( x12160 ) ) ) ) $ ( if false then Bool else Bool )
        d1214 = ( ( Bool -> Bool ) ∋ ( ( λ x12150 -> if x12150 then x12150 else false ) ) ) $ ( if false then false else false )
        d1218 : if false then ( ( Set -> Set ) ∋ ( ( λ x12190 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1218 = if if d1096 then false else false then if false then d1137 else true else if true then true else true
        d1220 : ( ( Set -> Set ) ∋ ( ( λ x12210 -> ( ( Set -> Set ) ∋ ( ( λ x12220 -> if false then x12210 else Bool ) ) ) $ ( x12210 ) ) ) ) $ ( if false then Bool else Bool )
        d1220 = if if true then d168 else d159 then if false then d20 else d873 else if true then d883 else d596
        d1223 : ( ( Set -> Set ) ∋ ( ( λ x12260 -> ( ( Set -> Set ) ∋ ( ( λ x12270 -> if true then x12260 else x12260 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1223 = if ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> d318 ) ) ) $ ( d549 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> true ) ) ) $ ( d904 ) else if false then true else false
        d1228 : if false then ( ( Set -> Set ) ∋ ( ( λ x12300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12310 -> x12310 ) ) ) $ ( Bool )
        d1228 = ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> if true then x12290 else d263 ) ) ) $ ( if d318 then true else d400 )
        d1232 : ( ( Set -> Set ) ∋ ( ( λ x12350 -> ( ( Set -> Set ) ∋ ( ( λ x12360 -> if true then Bool else x12350 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1232 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> x12330 ) ) ) $ ( d1058 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> x12340 ) ) ) $ ( false )
        d1237 : ( ( Set -> Set ) ∋ ( ( λ x12410 -> ( ( Set -> Set ) ∋ ( ( λ x12420 -> if true then Bool else x12410 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1237 = if ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> x12380 ) ) ) $ ( d400 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> true ) ) ) $ ( d46 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> x12400 ) ) ) $ ( true )
        d1243 : ( ( Set -> Set ) ∋ ( ( λ x12460 -> if false then x12460 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1243 = if if d413 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12450 -> d360 ) ) ) $ ( false )
        d1247 : ( ( Set -> Set ) ∋ ( ( λ x12490 -> if true then Bool else x12490 ) ) ) $ ( if false then Bool else Bool )
        d1247 = if if d1181 then true else d252 then ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> false ) ) ) $ ( true ) else if true then true else false
        d1250 : ( ( Set -> Set ) ∋ ( ( λ x12530 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1250 = ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> if x12520 then d811 else x12520 ) ) ) $ ( x12510 ) ) ) ) $ ( if d804 then true else d804 )
        d1254 : ( ( Set -> Set ) ∋ ( ( λ x12570 -> ( ( Set -> Set ) ∋ ( ( λ x12580 -> if false then x12580 else x12570 ) ) ) $ ( x12570 ) ) ) ) $ ( if false then Bool else Bool )
        d1254 = ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> if d818 then false else x12560 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d1259 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1259 = if if d221 then d1012 else d549 then ( ( Bool -> Bool ) ∋ ( ( λ x12600 -> false ) ) ) $ ( d306 ) else if false then true else true
        d1261 : ( ( Set -> Set ) ∋ ( ( λ x12640 -> ( ( Set -> Set ) ∋ ( ( λ x12650 -> if true then Bool else x12640 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1261 = if ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> d306 ) ) ) $ ( d906 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> d701 ) ) ) $ ( d5 ) else if d876 then false else d203
        d1266 : ( ( Set -> Set ) ∋ ( ( λ x12690 -> if false then x12690 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1266 = ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> if d1259 then x12670 else d749 ) ) ) $ ( d531 ) ) ) ) $ ( if d288 then d1163 else false )
        d1270 : if true then ( ( Set -> Set ) ∋ ( ( λ x12730 -> x12730 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1270 = ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> ( ( Bool -> Bool ) ∋ ( ( λ x12720 -> if d320 then true else true ) ) ) $ ( x12710 ) ) ) ) $ ( if false then true else true )
        d1274 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12760 -> Bool ) ) ) $ ( Bool )
        d1274 = ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> if false then true else false ) ) ) $ ( if true then d1261 else d20 )
        d1277 : ( ( Set -> Set ) ∋ ( ( λ x12800 -> ( ( Set -> Set ) ∋ ( ( λ x12810 -> if false then x12800 else x12800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1277 = if ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> x12780 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> x12790 ) ) ) $ ( true ) else if d189 then true else d1110
        d1282 : ( ( Set -> Set ) ∋ ( ( λ x12840 -> if false then Bool else x12840 ) ) ) $ ( if false then Bool else Bool )
        d1282 = if if true then false else d373 then if false then d711 else true else ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> x12830 ) ) ) $ ( false )
        d1285 : ( ( Set -> Set ) ∋ ( ( λ x12880 -> if false then Bool else x12880 ) ) ) $ ( if true then Bool else Bool )
        d1285 = ( ( Bool -> Bool ) ∋ ( ( λ x12860 -> ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> if d301 then d423 else d711 ) ) ) $ ( d200 ) ) ) ) $ ( if d873 then true else d373 )
        d1289 : ( ( Set -> Set ) ∋ ( ( λ x12910 -> if false then x12910 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1289 = if ( ( Bool -> Bool ) ∋ ( ( λ x12900 -> false ) ) ) $ ( d475 ) then if d938 then false else d883 else if d787 then d292 else d149
        d1292 : ( ( Set -> Set ) ∋ ( ( λ x12950 -> ( ( Set -> Set ) ∋ ( ( λ x12960 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1292 = if ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> d886 ) ) ) $ ( false ) else if false then false else d1099
        d1297 : ( ( Set -> Set ) ∋ ( ( λ x13000 -> if true then x13000 else x13000 ) ) ) $ ( if true then Bool else Bool )
        d1297 = ( ( Bool -> Bool ) ∋ ( ( λ x12980 -> ( ( Bool -> Bool ) ∋ ( ( λ x12990 -> if x12990 then x12980 else d360 ) ) ) $ ( d619 ) ) ) ) $ ( if true then d661 else false )
        d1301 : ( ( Set -> Set ) ∋ ( ( λ x13030 -> if true then x13030 else x13030 ) ) ) $ ( if false then Bool else Bool )
        d1301 = ( ( Bool -> Bool ) ∋ ( ( λ x13020 -> if x13020 then d25 else x13020 ) ) ) $ ( if d306 then false else true )
        d1304 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13060 -> Bool ) ) ) $ ( Bool )
        d1304 = ( ( Bool -> Bool ) ∋ ( ( λ x13050 -> if x13050 then d930 else d93 ) ) ) $ ( if d386 then d990 else true )
        d1307 : ( ( Set -> Set ) ∋ ( ( λ x13080 -> if true then Bool else x13080 ) ) ) $ ( if false then Bool else Bool )
        d1307 = if if false then false else false then if false then d252 else d873 else if true then d263 else d115
        d1309 : if true then ( ( Set -> Set ) ∋ ( ( λ x13110 -> x13110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1309 = if if true then d1151 else d13 then ( ( Bool -> Bool ) ∋ ( ( λ x13100 -> d465 ) ) ) $ ( d681 ) else if false then d729 else d386
        d1312 : if false then ( ( Set -> Set ) ∋ ( ( λ x13130 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13140 -> x13140 ) ) ) $ ( Bool )
        d1312 = if if d461 then false else d314 then if true then d894 else true else if false then d549 else d531
        d1315 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1315 = ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> if x13160 then d1166 else d37 ) ) ) $ ( d1103 ) ) ) ) $ ( if true then false else false )
        d1318 : ( ( Set -> Set ) ∋ ( ( λ x13200 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1318 = ( ( Bool -> Bool ) ∋ ( ( λ x13190 -> if x13190 then x13190 else x13190 ) ) ) $ ( if d221 then false else true )
        d1321 : if false then ( ( Set -> Set ) ∋ ( ( λ x13240 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1321 = ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> if x13220 then d1137 else x13220 ) ) ) $ ( false ) ) ) ) $ ( if d562 then d127 else true )
        d1325 : ( ( Set -> Set ) ∋ ( ( λ x13280 -> if true then Bool else x13280 ) ) ) $ ( if false then Bool else Bool )
        d1325 = ( ( Bool -> Bool ) ∋ ( ( λ x13260 -> ( ( Bool -> Bool ) ∋ ( ( λ x13270 -> if x13270 then d25 else d252 ) ) ) $ ( d859 ) ) ) ) $ ( if d153 then d419 else true )
        d1329 : ( ( Set -> Set ) ∋ ( ( λ x13320 -> ( ( Set -> Set ) ∋ ( ( λ x13330 -> if true then x13330 else x13330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1329 = ( ( Bool -> Bool ) ∋ ( ( λ x13300 -> ( ( Bool -> Bool ) ∋ ( ( λ x13310 -> if false then d410 else x13300 ) ) ) $ ( true ) ) ) ) $ ( if d794 then true else d574 )
        d1334 : ( ( Set -> Set ) ∋ ( ( λ x13360 -> if false then Bool else x13360 ) ) ) $ ( if false then Bool else Bool )
        d1334 = if if false then d37 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13350 -> x13350 ) ) ) $ ( true ) else if true then d876 else true
        d1337 : ( ( Set -> Set ) ∋ ( ( λ x13390 -> ( ( Set -> Set ) ∋ ( ( λ x13400 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1337 = ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> if true then x13380 else false ) ) ) $ ( if false then true else false )
        d1341 : ( ( Set -> Set ) ∋ ( ( λ x13440 -> ( ( Set -> Set ) ∋ ( ( λ x13450 -> if true then Bool else x13450 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1341 = if if false then d10 else d419 then ( ( Bool -> Bool ) ∋ ( ( λ x13420 -> d390 ) ) ) $ ( d1223 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> x13430 ) ) ) $ ( true )
        d1346 : ( ( Set -> Set ) ∋ ( ( λ x13480 -> ( ( Set -> Set ) ∋ ( ( λ x13490 -> if true then x13480 else Bool ) ) ) $ ( x13480 ) ) ) ) $ ( if true then Bool else Bool )
        d1346 = ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> if d523 then false else true ) ) ) $ ( if false then true else d28 )
        d1350 : ( ( Set -> Set ) ∋ ( ( λ x13520 -> if false then Bool else x13520 ) ) ) $ ( if true then Bool else Bool )
        d1350 = if if false then d109 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13510 -> d912 ) ) ) $ ( d127 ) else if d972 then false else false
        d1353 : ( ( Set -> Set ) ∋ ( ( λ x13560 -> ( ( Set -> Set ) ∋ ( ( λ x13570 -> if false then Bool else x13560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1353 = if ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> d1058 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> true ) ) ) $ ( d870 ) else if d39 then d990 else true
        d1358 : ( ( Set -> Set ) ∋ ( ( λ x13600 -> ( ( Set -> Set ) ∋ ( ( λ x13610 -> if false then x13610 else x13600 ) ) ) $ ( x13600 ) ) ) ) $ ( if false then Bool else Bool )
        d1358 = ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> if x13590 then d876 else d867 ) ) ) $ ( if true then d1304 else true )
        d1362 : if false then ( ( Set -> Set ) ∋ ( ( λ x13640 -> x13640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1362 = if if d1069 then d1054 else d1198 then ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> true ) ) ) $ ( d109 ) else if d908 then false else d93
        d1365 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13680 -> x13680 ) ) ) $ ( Bool )
        d1365 = ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> if x13660 then true else d132 ) ) ) $ ( x13660 ) ) ) ) $ ( if d301 then false else true )
        d1369 : ( ( Set -> Set ) ∋ ( ( λ x13720 -> ( ( Set -> Set ) ∋ ( ( λ x13730 -> if false then x13720 else Bool ) ) ) $ ( x13720 ) ) ) ) $ ( if false then Bool else Bool )
        d1369 = if ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> true ) ) ) $ ( d807 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13710 -> x13710 ) ) ) $ ( d629 ) else if true then false else d96
        d1374 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13760 -> x13760 ) ) ) $ ( Bool )
        d1374 = ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> if x13750 then true else false ) ) ) $ ( if true then d419 else false )
        d1377 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1377 = if ( ( Bool -> Bool ) ∋ ( ( λ x13780 -> d1307 ) ) ) $ ( false ) then if d638 then d1266 else d828 else if d330 then false else d1292
        d1379 : ( ( Set -> Set ) ∋ ( ( λ x13820 -> ( ( Set -> Set ) ∋ ( ( λ x13830 -> if true then Bool else x13820 ) ) ) $ ( x13820 ) ) ) ) $ ( if true then Bool else Bool )
        d1379 = ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> if false then x13800 else false ) ) ) $ ( x13800 ) ) ) ) $ ( if d859 then d1259 else false )
        d1384 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13860 -> Bool ) ) ) $ ( Bool )
        d1384 = ( ( Bool -> Bool ) ∋ ( ( λ x13850 -> if true then d722 else d941 ) ) ) $ ( if d1346 then true else d994 )
        d1387 : ( ( Set -> Set ) ∋ ( ( λ x13890 -> ( ( Set -> Set ) ∋ ( ( λ x13900 -> if true then Bool else Bool ) ) ) $ ( x13890 ) ) ) ) $ ( if true then Bool else Bool )
        d1387 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> x13880 ) ) ) $ ( d501 ) else if d1297 then true else d102
        d1391 : if true then ( ( Set -> Set ) ∋ ( ( λ x13940 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1391 = ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> if d454 then true else true ) ) ) $ ( true ) ) ) ) $ ( if d288 then d175 else true )
        d1395 : ( ( Set -> Set ) ∋ ( ( λ x13970 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1395 = if if d588 then d1073 else d487 then ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> d1198 ) ) ) $ ( false ) else if d400 then true else true
        d1398 : ( ( Set -> Set ) ∋ ( ( λ x14010 -> ( ( Set -> Set ) ∋ ( ( λ x14020 -> if true then Bool else x14010 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1398 = ( ( Bool -> Bool ) ∋ ( ( λ x13990 -> ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> if x13990 then x14000 else d1066 ) ) ) $ ( false ) ) ) ) $ ( if true then d554 else false )
        d1403 : ( ( Set -> Set ) ∋ ( ( λ x14060 -> if true then x14060 else x14060 ) ) ) $ ( if false then Bool else Bool )
        d1403 = ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> if false then x14050 else x14040 ) ) ) $ ( x14040 ) ) ) ) $ ( if d164 then true else d124 )
        d1407 : if true then ( ( Set -> Set ) ∋ ( ( λ x14100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14110 -> x14110 ) ) ) $ ( Bool )
        d1407 = ( ( Bool -> Bool ) ∋ ( ( λ x14080 -> ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> if d379 then true else true ) ) ) $ ( x14080 ) ) ) ) $ ( if d889 then d139 else d288 )
        d1412 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14150 -> Bool ) ) ) $ ( Bool )
        d1412 = ( ( Bool -> Bool ) ∋ ( ( λ x14130 -> ( ( Bool -> Bool ) ∋ ( ( λ x14140 -> if d93 then true else d1198 ) ) ) $ ( d1096 ) ) ) ) $ ( if d1120 then d1365 else true )
        d1416 : ( ( Set -> Set ) ∋ ( ( λ x14190 -> ( ( Set -> Set ) ∋ ( ( λ x14200 -> if false then x14200 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1416 = ( ( Bool -> Bool ) ∋ ( ( λ x14170 -> ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> if x14170 then x14170 else false ) ) ) $ ( true ) ) ) ) $ ( if d437 then true else true )
        d1421 : if true then ( ( Set -> Set ) ∋ ( ( λ x14240 -> x14240 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1421 = if ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14230 -> d955 ) ) ) $ ( d1116 ) else if true then true else false
        d1425 : ( ( Set -> Set ) ∋ ( ( λ x14280 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1425 = ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> ( ( Bool -> Bool ) ∋ ( ( λ x14270 -> if d685 then true else x14270 ) ) ) $ ( d516 ) ) ) ) $ ( if true then d1421 else d941 )
        d1429 : ( ( Set -> Set ) ∋ ( ( λ x14320 -> ( ( Set -> Set ) ∋ ( ( λ x14330 -> if true then Bool else x14320 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1429 = if ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> true ) ) ) $ ( false ) then if false then true else d109 else ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> d990 ) ) ) $ ( d241 )
        d1434 : if true then ( ( Set -> Set ) ∋ ( ( λ x14370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14380 -> x14380 ) ) ) $ ( Bool )
        d1434 = ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> if d976 then d360 else d1040 ) ) ) $ ( d1214 ) ) ) ) $ ( if false then d1004 else true )
        d1439 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1439 = ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> if true then x14400 else d794 ) ) ) $ ( if d904 then d619 else true )
        d1441 : ( ( Set -> Set ) ∋ ( ( λ x14430 -> if true then x14430 else x14430 ) ) ) $ ( if true then Bool else Bool )
        d1441 = ( ( Bool -> Bool ) ∋ ( ( λ x14420 -> if false then x14420 else true ) ) ) $ ( if d885 then true else false )
        d1444 : ( ( Set -> Set ) ∋ ( ( λ x14470 -> if true then x14470 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1444 = if if d889 then d986 else d733 then ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> d698 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14460 -> true ) ) ) $ ( true )
        d1448 : ( ( Set -> Set ) ∋ ( ( λ x14500 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1448 = ( ( Bool -> Bool ) ∋ ( ( λ x14490 -> if d1040 then true else d1137 ) ) ) $ ( if true then d119 else true )
        d1451 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1451 = if if true then true else d1113 then ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> d694 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> d1159 ) ) ) $ ( true )
        d1454 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1454 = ( ( Bool -> Bool ) ∋ ( ( λ x14550 -> ( ( Bool -> Bool ) ∋ ( ( λ x14560 -> if true then d1374 else x14560 ) ) ) $ ( x14550 ) ) ) ) $ ( if false then true else d562 )
        d1457 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14600 -> Bool ) ) ) $ ( Bool )
        d1457 = ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> ( ( Bool -> Bool ) ∋ ( ( λ x14590 -> if x14580 then d794 else false ) ) ) $ ( d1391 ) ) ) ) $ ( if false then true else false )
        d1461 : ( ( Set -> Set ) ∋ ( ( λ x14640 -> ( ( Set -> Set ) ∋ ( ( λ x14650 -> if true then x14640 else x14650 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1461 = ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> ( ( Bool -> Bool ) ∋ ( ( λ x14630 -> if true then false else false ) ) ) $ ( false ) ) ) ) $ ( if d292 then d867 else true )
        d1466 : ( ( Set -> Set ) ∋ ( ( λ x14680 -> ( ( Set -> Set ) ∋ ( ( λ x14690 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1466 = if if false then true else d109 then if false then false else d1062 else ( ( Bool -> Bool ) ∋ ( ( λ x14670 -> d127 ) ) ) $ ( d1166 )
        d1470 : ( ( Set -> Set ) ∋ ( ( λ x14710 -> ( ( Set -> Set ) ∋ ( ( λ x14720 -> if false then Bool else Bool ) ) ) $ ( x14710 ) ) ) ) $ ( if false then Bool else Bool )
        d1470 = if if d338 then d1304 else true then if true then d1243 else false else if d1374 then d976 else false
        d1473 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1473 = ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> if false then x14740 else d1350 ) ) ) $ ( if true then d610 else true )
        d1475 : ( ( Set -> Set ) ∋ ( ( λ x14780 -> ( ( Set -> Set ) ∋ ( ( λ x14790 -> if true then Bool else x14790 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1475 = ( ( Bool -> Bool ) ∋ ( ( λ x14760 -> ( ( Bool -> Bool ) ∋ ( ( λ x14770 -> if x14760 then false else d873 ) ) ) $ ( true ) ) ) ) $ ( if d968 then true else false )
        d1480 : ( ( Set -> Set ) ∋ ( ( λ x14820 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1480 = ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> if x14810 then d185 else true ) ) ) $ ( if true then true else d791 )
        d1483 : ( ( Set -> Set ) ∋ ( ( λ x14860 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1483 = ( ( Bool -> Bool ) ∋ ( ( λ x14840 -> ( ( Bool -> Bool ) ∋ ( ( λ x14850 -> if d1120 then true else false ) ) ) $ ( d127 ) ) ) ) $ ( if true then true else d554 )
        d1487 : ( ( Set -> Set ) ∋ ( ( λ x14880 -> if true then x14880 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1487 = if if d1350 then false else d1181 then if d849 then false else d831 else if false then d28 else true
        d1489 : ( ( Set -> Set ) ∋ ( ( λ x14920 -> if true then x14920 else x14920 ) ) ) $ ( if true then Bool else Bool )
        d1489 = if ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> d236 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> x14910 ) ) ) $ ( true ) else if d1092 then false else true
        d1493 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14950 -> x14950 ) ) ) $ ( Bool )
        d1493 = ( ( Bool -> Bool ) ∋ ( ( λ x14940 -> if d261 then d606 else d610 ) ) ) $ ( if true then false else true )
        d1496 : ( ( Set -> Set ) ∋ ( ( λ x14970 -> if true then x14970 else x14970 ) ) ) $ ( if false then Bool else Bool )
        d1496 = if if d172 then true else d661 then if true then false else false else if true then d1078 else false
        d1498 : ( ( Set -> Set ) ∋ ( ( λ x15000 -> ( ( Set -> Set ) ∋ ( ( λ x15010 -> if false then x15010 else Bool ) ) ) $ ( x15000 ) ) ) ) $ ( if false then Bool else Bool )
        d1498 = ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> if x14990 then d899 else x14990 ) ) ) $ ( if false then true else d1493 )
        d1502 : ( ( Set -> Set ) ∋ ( ( λ x15040 -> if true then Bool else x15040 ) ) ) $ ( if false then Bool else Bool )
        d1502 = if if true then true else true then if true then d867 else d1451 else ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> false ) ) ) $ ( false )
        d1505 : ( ( Set -> Set ) ∋ ( ( λ x15080 -> ( ( Set -> Set ) ∋ ( ( λ x15090 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1505 = ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> if true then true else false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d1116 )
        d1510 : ( ( Set -> Set ) ∋ ( ( λ x15120 -> ( ( Set -> Set ) ∋ ( ( λ x15130 -> if false then x15120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1510 = if if d301 then d1377 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> d1505 ) ) ) $ ( true ) else if false then d484 else d407
        d1514 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15160 -> x15160 ) ) ) $ ( Bool )
        d1514 = if ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> true ) ) ) $ ( true ) then if false then d400 else d5 else if false then d20 else d1337
        d1517 : if false then ( ( Set -> Set ) ∋ ( ( λ x15200 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1517 = ( ( Bool -> Bool ) ∋ ( ( λ x15180 -> ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> if false then d580 else x15180 ) ) ) $ ( d947 ) ) ) ) $ ( if d787 then true else d677 )
        d1521 : if false then ( ( Set -> Set ) ∋ ( ( λ x15240 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15250 -> x15250 ) ) ) $ ( Bool )
        d1521 = if ( ( Bool -> Bool ) ∋ ( ( λ x15220 -> x15220 ) ) ) $ ( true ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> x15230 ) ) ) $ ( false )
        d1526 : if true then ( ( Set -> Set ) ∋ ( ( λ x15280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15290 -> Bool ) ) ) $ ( Bool )
        d1526 = if ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> x15270 ) ) ) $ ( d1202 ) then if d867 then d862 else true else if true then false else false
        d1530 : ( ( Set -> Set ) ∋ ( ( λ x15330 -> ( ( Set -> Set ) ∋ ( ( λ x15340 -> if false then x15340 else x15330 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1530 = ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> if d862 then d88 else false ) ) ) $ ( true ) ) ) ) $ ( if true then true else d764 )
        d1535 : ( ( Set -> Set ) ∋ ( ( λ x15380 -> if true then x15380 else x15380 ) ) ) $ ( if true then Bool else Bool )
        d1535 = if ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> true ) ) ) $ ( d149 ) then if d775 then d649 else d545 else ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> d787 ) ) ) $ ( false )
        d1539 : ( ( Set -> Set ) ∋ ( ( λ x15420 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1539 = if ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> d386 ) ) ) $ ( d1123 ) else if true then d1186 else true
        d1543 : ( ( Set -> Set ) ∋ ( ( λ x15450 -> ( ( Set -> Set ) ∋ ( ( λ x15460 -> if false then x15460 else x15460 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1543 = if if false then true else true then if true then d338 else d1487 else ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> d1535 ) ) ) $ ( true )
        d1547 : ( ( Set -> Set ) ∋ ( ( λ x15500 -> ( ( Set -> Set ) ∋ ( ( λ x15510 -> if false then Bool else x15500 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1547 = if ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> true ) ) ) $ ( false ) then if d718 then d885 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15490 -> d968 ) ) ) $ ( d1270 )
        d1552 : if false then ( ( Set -> Set ) ∋ ( ( λ x15550 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1552 = if ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> d1448 ) ) ) $ ( d753 ) then if d43 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x15540 -> x15540 ) ) ) $ ( d1521 )
        d1556 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15580 -> x15580 ) ) ) $ ( Bool )
        d1556 = ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> if x15570 then d139 else false ) ) ) $ ( if false then false else d1277 )
        d1559 : ( ( Set -> Set ) ∋ ( ( λ x15610 -> if true then x15610 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1559 = if ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> x15600 ) ) ) $ ( false ) then if false then true else true else if false then d1289 else false
        d1562 : if true then ( ( Set -> Set ) ∋ ( ( λ x15640 -> x15640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1562 = if if d447 then d288 else true then if false then d1505 else d955 else ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> d10 ) ) ) $ ( true )
        d1565 : if true then ( ( Set -> Set ) ∋ ( ( λ x15670 -> x15670 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15680 -> x15680 ) ) ) $ ( Bool )
        d1565 = ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> if true then d394 else false ) ) ) $ ( if true then d1505 else d447 )
        d1569 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1569 = if ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> d1220 ) ) ) $ ( true ) then if d5 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x15710 -> x15710 ) ) ) $ ( d906 )
        d1572 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1572 = ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> ( ( Bool -> Bool ) ∋ ( ( λ x15740 -> if true then x15740 else true ) ) ) $ ( x15730 ) ) ) ) $ ( if d1254 then false else d119 )
        d1575 : if false then ( ( Set -> Set ) ∋ ( ( λ x15780 -> x15780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1575 = ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> if x15770 then true else x15760 ) ) ) $ ( true ) ) ) ) $ ( if false then d776 else true )
        d1579 : ( ( Set -> Set ) ∋ ( ( λ x15800 -> if true then x15800 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1579 = if if d921 then d292 else true then if d1539 then false else true else if false then d1107 else d1483
        d1581 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15840 -> Bool ) ) ) $ ( Bool )
        d1581 = if ( ( Bool -> Bool ) ∋ ( ( λ x15820 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> x15830 ) ) ) $ ( true ) else if false then d221 else d58
        d1585 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15880 -> Bool ) ) ) $ ( Bool )
        d1585 = ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> ( ( Bool -> Bool ) ∋ ( ( λ x15870 -> if x15860 then x15860 else x15870 ) ) ) $ ( d484 ) ) ) ) $ ( if false then d1277 else true )
        d1589 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1589 = ( ( Bool -> Bool ) ∋ ( ( λ x15900 -> if d1502 then d1461 else false ) ) ) $ ( if true then true else d883 )
        d1591 : ( ( Set -> Set ) ∋ ( ( λ x15940 -> if true then Bool else x15940 ) ) ) $ ( if false then Bool else Bool )
        d1591 = if ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> x15920 ) ) ) $ ( true ) then if d1487 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> true ) ) ) $ ( false )
        d1595 : ( ( Set -> Set ) ∋ ( ( λ x15980 -> ( ( Set -> Set ) ∋ ( ( λ x15990 -> if false then Bool else x15990 ) ) ) $ ( x15980 ) ) ) ) $ ( if false then Bool else Bool )
        d1595 = if ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> d1210 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> x15970 ) ) ) $ ( false ) else if d791 then d912 else d823
        d1600 : ( ( Set -> Set ) ∋ ( ( λ x16030 -> ( ( Set -> Set ) ∋ ( ( λ x16040 -> if true then Bool else x16040 ) ) ) $ ( x16030 ) ) ) ) $ ( if true then Bool else Bool )
        d1600 = if ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> false ) ) ) $ ( d1092 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> x16020 ) ) ) $ ( true ) else if true then true else false
        d1605 : ( ( Set -> Set ) ∋ ( ( λ x16090 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1605 = if ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> x16060 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16070 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16080 -> x16080 ) ) ) $ ( d272 )
        d1610 : if false then ( ( Set -> Set ) ∋ ( ( λ x16130 -> x16130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16140 -> Bool ) ) ) $ ( Bool )
        d1610 = ( ( Bool -> Bool ) ∋ ( ( λ x16110 -> ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> if true then x16110 else x16110 ) ) ) $ ( false ) ) ) ) $ ( if true then d1341 else d1040 )
        d1615 : ( ( Set -> Set ) ∋ ( ( λ x16180 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1615 = ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> ( ( Bool -> Bool ) ∋ ( ( λ x16170 -> if false then d1243 else x16160 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d1619 : ( ( Set -> Set ) ∋ ( ( λ x16200 -> if true then x16200 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1619 = if if d1096 then true else d1569 then if d1444 then true else d365 else if false then d1429 else false
        d1621 : if true then ( ( Set -> Set ) ∋ ( ( λ x16240 -> x16240 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1621 = ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> ( ( Bool -> Bool ) ∋ ( ( λ x16230 -> if d883 then d1266 else x16230 ) ) ) $ ( x16220 ) ) ) ) $ ( if false then d562 else d491 )
        d1625 : if true then ( ( Set -> Set ) ∋ ( ( λ x16260 -> x16260 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16270 -> x16270 ) ) ) $ ( Bool )
        d1625 = if if d189 then d505 else true then if false then d420 else true else if d768 then d1092 else d1259
        d1628 : ( ( Set -> Set ) ∋ ( ( λ x16300 -> if false then x16300 else x16300 ) ) ) $ ( if true then Bool else Bool )
        d1628 = ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> if x16290 then d783 else false ) ) ) $ ( if false then d1585 else true )
        d1631 : ( ( Set -> Set ) ∋ ( ( λ x16330 -> if true then x16330 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1631 = ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> if x16320 then x16320 else d1159 ) ) ) $ ( if true then false else d58 )
        d1634 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1634 = ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> if false then true else x16360 ) ) ) $ ( d1166 ) ) ) ) $ ( if false then d379 else d768 )
        d1637 : ( ( Set -> Set ) ∋ ( ( λ x16380 -> if false then Bool else x16380 ) ) ) $ ( if false then Bool else Bool )
        d1637 = if if d673 then false else true then if d603 then false else d1425 else if true then true else false
        d1639 : if false then ( ( Set -> Set ) ∋ ( ( λ x16410 -> x16410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1639 = ( ( Bool -> Bool ) ∋ ( ( λ x16400 -> if false then x16400 else x16400 ) ) ) $ ( if d818 then true else d413 )
        d1642 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1642 = if ( ( Bool -> Bool ) ∋ ( ( λ x16430 -> x16430 ) ) ) $ ( true ) then if d1133 then true else d65 else ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> false ) ) ) $ ( d221 )
        d1645 : ( ( Set -> Set ) ∋ ( ( λ x16480 -> if true then x16480 else x16480 ) ) ) $ ( if true then Bool else Bool )
        d1645 = ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> ( ( Bool -> Bool ) ∋ ( ( λ x16470 -> if x16460 then x16470 else d1325 ) ) ) $ ( x16460 ) ) ) ) $ ( if false then d119 else d853 )
        d1649 : ( ( Set -> Set ) ∋ ( ( λ x16520 -> ( ( Set -> Set ) ∋ ( ( λ x16530 -> if true then Bool else Bool ) ) ) $ ( x16520 ) ) ) ) $ ( if true then Bool else Bool )
        d1649 = ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> if x16510 then x16500 else x16500 ) ) ) $ ( d1498 ) ) ) ) $ ( if true then false else d487 )
        d1654 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16560 -> x16560 ) ) ) $ ( Bool )
        d1654 = if ( ( Bool -> Bool ) ∋ ( ( λ x16550 -> false ) ) ) $ ( false ) then if true then true else false else if true then d645 else false
        d1657 : ( ( Set -> Set ) ∋ ( ( λ x16600 -> if true then x16600 else x16600 ) ) ) $ ( if false then Bool else Bool )
        d1657 = if if d1274 then d867 else d1369 then ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> x16580 ) ) ) $ ( d509 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> x16590 ) ) ) $ ( true )
        d1661 : if false then ( ( Set -> Set ) ∋ ( ( λ x16630 -> x16630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16640 -> x16640 ) ) ) $ ( Bool )
        d1661 = ( ( Bool -> Bool ) ∋ ( ( λ x16620 -> if x16620 then x16620 else d1054 ) ) ) $ ( if d600 then true else true )
        d1665 : ( ( Set -> Set ) ∋ ( ( λ x16680 -> ( ( Set -> Set ) ∋ ( ( λ x16690 -> if false then x16680 else x16680 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1665 = ( ( Bool -> Bool ) ∋ ( ( λ x16660 -> ( ( Bool -> Bool ) ∋ ( ( λ x16670 -> if d306 then x16660 else x16670 ) ) ) $ ( d1254 ) ) ) ) $ ( if d1365 then d360 else true )
        d1670 : ( ( Set -> Set ) ∋ ( ( λ x16730 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1670 = ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> ( ( Bool -> Bool ) ∋ ( ( λ x16720 -> if true then x16710 else d175 ) ) ) $ ( d1377 ) ) ) ) $ ( if false then false else true )
        d1674 : ( ( Set -> Set ) ∋ ( ( λ x16760 -> ( ( Set -> Set ) ∋ ( ( λ x16770 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1674 = if ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> false ) ) ) $ ( true ) then if d386 then true else d353 else if d526 then false else false
        d1678 : if false then ( ( Set -> Set ) ∋ ( ( λ x16800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16810 -> x16810 ) ) ) $ ( Bool )
        d1678 = if if d318 then d964 else false then if true then d707 else d685 else ( ( Bool -> Bool ) ∋ ( ( λ x16790 -> false ) ) ) $ ( d480 )