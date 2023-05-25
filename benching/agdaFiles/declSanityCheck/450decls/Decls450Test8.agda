module Decls450Test8  where
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
        d1 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( false ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> true ) ) ) $ ( false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then x80 else x70 ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( true ) then if d1 then false else false else if d1 then d1 else d1
        d9 : if false then ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d9 = if if true then d5 else d1 then if d5 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( false )
        d12 : if true then if false then Bool else Bool else if false then Bool else Bool
        d12 = if ( ( Bool -> Bool ) ∋ ( ( λ x130 -> d9 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x140 -> d9 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( true )
        d16 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool )
        d16 = if if true then true else false then if false then d9 else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> true ) ) ) $ ( d5 )
        d19 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x220 -> x220 ) ) ) $ ( Bool )
        d19 = if ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d5 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d16 ) ) ) $ ( d1 ) else if false then true else d1
        d23 : if true then ( ( Set -> Set ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d23 = if if d5 then true else d9 then if false then false else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x240 -> d16 ) ) ) $ ( true )
        d26 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if true then false else d1 ) ) ) $ ( x270 ) ) ) ) $ ( if d9 then d23 else false )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then x320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d30 = if if d1 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x310 -> false ) ) ) $ ( d23 ) else if false then d1 else d1
        d33 : if false then ( ( Set -> Set ) ∋ ( ( λ x350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d9 then x340 else d23 ) ) ) $ ( if d12 then d23 else d5 )
        d37 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x390 -> x390 ) ) ) $ ( Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if x380 then d1 else d9 ) ) ) $ ( if d9 then d5 else true )
        d40 : if true then ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d40 = if ( ( Bool -> Bool ) ∋ ( ( λ x410 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d30 ) ) ) $ ( d19 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then Bool else Bool ) ) ) $ ( x470 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = if ( ( Bool -> Bool ) ∋ ( ( λ x460 -> d12 ) ) ) $ ( d9 ) then if d26 then d5 else d12 else if false then true else d40
        d49 : ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> if true then Bool else x520 ) ) ) $ ( x510 ) ) ) ) $ ( if true then Bool else Bool )
        d49 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x500 -> true ) ) ) $ ( true ) else if d45 then true else d19
        d53 : ( ( Set -> Set ) ∋ ( ( λ x560 -> if false then x560 else x560 ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if x550 then x540 else d12 ) ) ) $ ( d9 ) ) ) ) $ ( if true then d5 else d49 )
        d57 : if true then if true then Bool else Bool else if true then Bool else Bool
        d57 = if if false then d16 else d19 then ( ( Bool -> Bool ) ∋ ( ( λ x580 -> true ) ) ) $ ( d1 ) else if false then false else d5
        d59 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if d40 then x600 else x600 ) ) ) $ ( if true then d1 else false )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then x650 else Bool ) ) ) $ ( x650 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = if ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( true ) then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( true )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> if false then Bool else x690 ) ) ) $ ( x680 ) ) ) ) $ ( if true then Bool else Bool )
        d67 = if if false then true else d53 then if d26 then d16 else d37 else if d23 then false else d26
        d70 : if false then ( ( Set -> Set ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if d45 then x710 else true ) ) ) $ ( x710 ) ) ) ) $ ( if d67 then d33 else true )
        d75 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool )
        d75 = if if d53 then d19 else d23 then ( ( Bool -> Bool ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( false ) else if true then true else d67
        d78 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if true then x800 else Bool ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if d33 then x790 else d1 ) ) ) $ ( if false then d75 else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x830 -> if true then x820 else Bool ) ) ) $ ( x820 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if d5 then false else false then if d62 then d59 else false else if true then d40 else d49
        d84 : ( ( Set -> Set ) ∋ ( ( λ x860 -> if true then Bool else x860 ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if x850 then true else x850 ) ) ) $ ( if false then true else true )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x900 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if d84 then x880 else d5 ) ) ) $ ( x880 ) ) ) ) $ ( if d78 then d30 else false )
        d91 : if false then ( ( Set -> Set ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( Bool )
        d91 = if ( ( Bool -> Bool ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( d45 ) then if d16 then d16 else d16 else ( ( Bool -> Bool ) ∋ ( ( λ x930 -> false ) ) ) $ ( false )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> if false then x1000 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if d84 then x980 else d33 ) ) ) $ ( false ) ) ) ) $ ( if d9 then false else d67 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then Bool else x1030 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if x1020 then true else x1020 ) ) ) $ ( if true then d96 else d84 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> if true then x1060 else x1070 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if x1050 then false else false ) ) ) $ ( if d53 then d49 else false )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> if true then x1120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d108 = if if d12 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> false ) ) ) $ ( d104 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( false )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> if true then Bool else x1150 ) ) ) $ ( if false then Bool else Bool )
        d113 = if if d19 then true else true then if true then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( false )
        d116 : if false then ( ( Set -> Set ) ∋ ( ( λ x1200 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d116 = if ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> d9 ) ) ) $ ( d87 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> d23 ) ) ) $ ( d62 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> true ) ) ) $ ( d91 )
        d121 : if true then ( ( Set -> Set ) ∋ ( ( λ x1230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d121 = if if d78 then d91 else d59 then ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> true ) ) ) $ ( false ) else if false then false else false
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> if true then Bool else Bool ) ) ) $ ( x1260 ) ) ) ) $ ( if false then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if x1250 then d37 else x1250 ) ) ) $ ( if true then d121 else d19 )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if false then x1300 else Bool ) ) ) $ ( if true then Bool else Bool )
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> if d16 then true else false ) ) ) $ ( if d26 then d96 else false )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> if false then x1330 else x1340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if x1320 then false else d49 ) ) ) $ ( if d81 then false else d78 )
        d135 : if true then if false then Bool else Bool else if false then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> if false then false else true ) ) ) $ ( if true then false else d33 )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> if true then x1400 else Bool ) ) ) $ ( if true then Bool else Bool )
        d137 = if ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> false ) ) ) $ ( d81 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> false ) ) ) $ ( d96 ) else if d84 then false else d49
        d141 : if false then ( ( Set -> Set ) ∋ ( ( λ x1430 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if false then d26 else x1420 ) ) ) $ ( if d57 then d137 else d135 )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then Bool else x1470 ) ) ) $ ( if true then Bool else Bool )
        d144 = if ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> d70 ) ) ) $ ( false ) then if d30 then false else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( false )
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d148 = if ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( d121 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( false ) else if d124 then true else false
        d152 : if true then if true then Bool else Bool else if true then Bool else Bool
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if true then true else d131 ) ) ) $ ( if false then false else true )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if false then x1560 else x1560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if x1550 then x1550 else d53 ) ) ) $ ( if d57 then d70 else d148 )
        d158 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( Bool )
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> if d152 then false else x1590 ) ) ) $ ( x1590 ) ) ) ) $ ( if false then true else true )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then Bool else x1650 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d162 = if if d37 then d84 else d40 then ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> true ) ) ) $ ( d59 ) else if d70 then d124 else d1
        d166 : if false then ( ( Set -> Set ) ∋ ( ( λ x1690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( Bool )
        d166 = if ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> d158 ) ) ) $ ( d33 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> true ) ) ) $ ( d33 ) else if true then d148 else d49
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> if true then x1740 else x1740 ) ) ) $ ( if false then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if x1720 then x1720 else x1730 ) ) ) $ ( false ) ) ) ) $ ( if d16 then true else d152 )
        d175 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1770 -> Bool ) ) ) $ ( Bool )
        d175 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( true ) else if false then d1 else true
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> ( ( Set -> Set ) ∋ ( ( λ x1810 -> if true then Bool else x1810 ) ) ) $ ( x1800 ) ) ) ) $ ( if true then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if false then x1790 else x1790 ) ) ) $ ( if d57 then false else true )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> if false then Bool else Bool ) ) ) $ ( x1840 ) ) ) ) $ ( if false then Bool else Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if false then false else x1830 ) ) ) $ ( if true then true else d87 )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> if d33 then x1870 else d162 ) ) ) $ ( if true then true else true )
        d189 : if true then ( ( Set -> Set ) ∋ ( ( λ x1920 -> x1920 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d189 = if if false then d40 else d19 then ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> x1900 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> x1910 ) ) ) $ ( false )
        d193 : if false then ( ( Set -> Set ) ∋ ( ( λ x1970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool )
        d193 = if ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> d104 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( d45 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> true ) ) ) $ ( true )
        d199 : if false then ( ( Set -> Set ) ∋ ( ( λ x2010 -> x2010 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2020 -> Bool ) ) ) $ ( Bool )
        d199 = if if false then d19 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> x2000 ) ) ) $ ( true ) else if d128 then false else true
        d203 : if false then ( ( Set -> Set ) ∋ ( ( λ x2060 -> x2060 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> if x2050 then d199 else d40 ) ) ) $ ( d199 ) ) ) ) $ ( if true then d101 else false )
        d208 : ( ( Set -> Set ) ∋ ( ( λ x2100 -> ( ( Set -> Set ) ∋ ( ( λ x2110 -> if true then x2100 else x2110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> if false then d49 else d70 ) ) ) $ ( if d81 then d137 else true )
        d212 : if true then ( ( Set -> Set ) ∋ ( ( λ x2140 -> x2140 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> if d152 then x2130 else x2130 ) ) ) $ ( if d30 then true else false )
        d215 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2170 -> x2170 ) ) ) $ ( Bool )
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> if d131 then false else true ) ) ) $ ( if false then true else false )
        d218 : if true then if true then Bool else Bool else if true then Bool else Bool
        d218 = if ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> d121 ) ) ) $ ( false ) then if false then d101 else d121 else if d131 then d67 else d78
        d220 : if false then ( ( Set -> Set ) ∋ ( ( λ x2230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> if true then d144 else true ) ) ) $ ( false ) ) ) ) $ ( if false then true else d104 )
        d224 : ( ( Set -> Set ) ∋ ( ( λ x2270 -> ( ( Set -> Set ) ∋ ( ( λ x2280 -> if false then x2270 else x2270 ) ) ) $ ( x2270 ) ) ) ) $ ( if false then Bool else Bool )
        d224 = ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> if x2250 then d178 else x2250 ) ) ) $ ( d166 ) ) ) ) $ ( if d37 then true else d220 )
        d229 : if true then if false then Bool else Bool else if true then Bool else Bool
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> if x2300 then true else false ) ) ) $ ( if d23 then d166 else d108 )
        d231 : if false then ( ( Set -> Set ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d231 = if if true then true else d215 then ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> d189 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( d26 )
        d235 : if false then ( ( Set -> Set ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( Bool )
        d235 = if ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> x2360 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> false ) ) ) $ ( true ) else if d212 then true else false
        d240 : if false then ( ( Set -> Set ) ∋ ( ( λ x2420 -> x2420 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d240 = ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> if false then true else x2410 ) ) ) $ ( if d148 then true else false )
        d243 : if false then ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2460 -> Bool ) ) ) $ ( Bool )
        d243 = if ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> true ) ) ) $ ( true ) then if true then d81 else true else if d62 then false else true
        d247 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then x2490 else Bool ) ) ) $ ( if true then Bool else Bool )
        d247 = if if d1 then true else false then if d104 then d121 else d229 else ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> d231 ) ) ) $ ( false )
        d250 : if true then if true then Bool else Bool else if true then Bool else Bool
        d250 = if ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> x2510 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> d87 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> true ) ) ) $ ( true )
        d254 : if true then if true then Bool else Bool else if false then Bool else Bool
        d254 = if ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> x2550 ) ) ) $ ( false ) then if d101 then d70 else true else if true then true else d12
        d256 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> ( ( Set -> Set ) ∋ ( ( λ x2590 -> if false then x2590 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> if x2570 then true else x2570 ) ) ) $ ( if d254 then true else false )
        d260 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> if false then x2620 else x2620 ) ) ) $ ( if true then Bool else Bool )
        d260 = if if d37 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> true ) ) ) $ ( d91 ) else if false then d152 else true
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2650 -> if true then x2650 else x2650 ) ) ) $ ( if true then Bool else Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if x2640 then x2640 else d250 ) ) ) $ ( if false then false else d104 )
        d266 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> if false then x2680 else x2680 ) ) ) $ ( if false then Bool else Bool )
        d266 = if if d137 then false else true then if d247 then d16 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> true ) ) ) $ ( d5 )
        d269 : if false then ( ( Set -> Set ) ∋ ( ( λ x2720 -> x2720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool )
        d269 = if ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> d40 ) ) ) $ ( d37 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> false ) ) ) $ ( d148 ) else if true then d171 else false
        d274 : ( ( Set -> Set ) ∋ ( ( λ x2770 -> ( ( Set -> Set ) ∋ ( ( λ x2780 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d274 = if if d5 then false else d247 then ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> x2750 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> false ) ) ) $ ( d1 )
        d279 : ( ( Set -> Set ) ∋ ( ( λ x2810 -> ( ( Set -> Set ) ∋ ( ( λ x2820 -> if true then x2810 else x2820 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if x2800 then true else d53 ) ) ) $ ( if true then d40 else true )
        d283 : if false then ( ( Set -> Set ) ∋ ( ( λ x2850 -> x2850 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> if x2840 then x2840 else false ) ) ) $ ( if d23 then false else true )
        d286 : ( ( Set -> Set ) ∋ ( ( λ x2890 -> ( ( Set -> Set ) ∋ ( ( λ x2900 -> if false then x2890 else x2890 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d286 = if ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> x2870 ) ) ) $ ( d33 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> x2880 ) ) ) $ ( true ) else if true then true else false
        d291 : if true then ( ( Set -> Set ) ∋ ( ( λ x2930 -> x2930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2940 -> x2940 ) ) ) $ ( Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> if x2920 then true else d215 ) ) ) $ ( if true then true else false )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x2970 -> ( ( Set -> Set ) ∋ ( ( λ x2980 -> if true then Bool else x2970 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> if x2960 then d144 else d49 ) ) ) $ ( if false then true else d59 )
        d299 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3020 -> x3020 ) ) ) $ ( Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> if false then d274 else d189 ) ) ) $ ( d33 ) ) ) ) $ ( if d67 then false else d235 )
        d303 : if true then ( ( Set -> Set ) ∋ ( ( λ x3060 -> x3060 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3070 -> x3070 ) ) ) $ ( Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> if d141 then x3050 else d59 ) ) ) $ ( false ) ) ) ) $ ( if d203 then d131 else d283 )
        d308 : if true then ( ( Set -> Set ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d308 = if if false then true else d67 then if d260 then d23 else true else if false then d263 else true
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> if true then x3120 else Bool ) ) ) $ ( if false then Bool else Bool )
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> if x3110 then d53 else false ) ) ) $ ( if true then d186 else d135 )
        d313 : if false then ( ( Set -> Set ) ∋ ( ( λ x3150 -> x3150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3160 -> Bool ) ) ) $ ( Bool )
        d313 = if if d215 then true else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> false ) ) ) $ ( d40 ) else if d299 then d240 else true
        d317 : ( ( Set -> Set ) ∋ ( ( λ x3190 -> if false then x3190 else x3190 ) ) ) $ ( if false then Bool else Bool )
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> if d16 then d116 else true ) ) ) $ ( if d57 then d59 else d78 )
        d320 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> if true then x3230 else x3230 ) ) ) $ ( if true then Bool else Bool )
        d320 = if ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> x3210 ) ) ) $ ( false ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( d229 )
        d324 : if false then ( ( Set -> Set ) ∋ ( ( λ x3260 -> x3260 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3270 -> Bool ) ) ) $ ( Bool )
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> if d49 then true else x3250 ) ) ) $ ( if d171 then true else true )
        d328 : ( ( Set -> Set ) ∋ ( ( λ x3310 -> if true then x3310 else Bool ) ) ) $ ( if true then Bool else Bool )
        d328 = if ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> x3290 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> x3300 ) ) ) $ ( d101 ) else if false then true else false
        d332 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> if true then Bool else x3350 ) ) ) $ ( if false then Bool else Bool )
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> if x3330 then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then d128 else d212 )
        d336 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> ( ( Set -> Set ) ∋ ( ( λ x3390 -> if false then Bool else x3390 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d336 = if if d266 then d269 else true then if d166 then d250 else d26 else ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> true ) ) ) $ ( d87 )
        d340 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3420 -> x3420 ) ) ) $ ( Bool )
        d340 = ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> if x3410 then d283 else true ) ) ) $ ( if false then false else false )
        d343 : if false then ( ( Set -> Set ) ∋ ( ( λ x3460 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d343 = ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> if x3440 then true else d340 ) ) ) $ ( d310 ) ) ) ) $ ( if d78 then d175 else false )
        d347 : if false then if true then Bool else Bool else if false then Bool else Bool
        d347 = ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> if d9 then false else x3480 ) ) ) $ ( if d9 then d247 else true )
        d349 : if false then ( ( Set -> Set ) ∋ ( ( λ x3520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3530 -> x3530 ) ) ) $ ( Bool )
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> if x3500 then true else true ) ) ) $ ( false ) ) ) ) $ ( if d5 then d59 else d152 )
        d354 : ( ( Set -> Set ) ∋ ( ( λ x3570 -> ( ( Set -> Set ) ∋ ( ( λ x3580 -> if false then Bool else x3570 ) ) ) $ ( x3570 ) ) ) ) $ ( if true then Bool else Bool )
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> if x3550 then false else true ) ) ) $ ( x3550 ) ) ) ) $ ( if false then false else d231 )
        d359 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3610 -> x3610 ) ) ) $ ( Bool )
        d359 = if if true then false else true then if d9 then d96 else d59 else ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> x3600 ) ) ) $ ( d104 )
        d362 : if true then ( ( Set -> Set ) ∋ ( ( λ x3640 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d362 = ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> if d295 then d116 else false ) ) ) $ ( if d37 then true else false )
        d365 : ( ( Set -> Set ) ∋ ( ( λ x3670 -> if true then x3670 else Bool ) ) ) $ ( if true then Bool else Bool )
        d365 = if if true then d101 else d128 then ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> true ) ) ) $ ( true ) else if d131 then false else d243
        d368 : ( ( Set -> Set ) ∋ ( ( λ x3700 -> ( ( Set -> Set ) ∋ ( ( λ x3710 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if d166 then x3690 else true ) ) ) $ ( if true then d96 else false )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x3740 -> ( ( Set -> Set ) ∋ ( ( λ x3750 -> if true then x3750 else x3750 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d372 = if ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> d135 ) ) ) $ ( false ) then if true then d308 else false else if true then false else false
        d376 : if false then if true then Bool else Bool else if true then Bool else Bool
        d376 = if ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> x3770 ) ) ) $ ( d203 ) then if d104 then d141 else false else if true then d340 else d220
        d378 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( Bool )
        d378 = ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if true then x3790 else true ) ) ) $ ( x3790 ) ) ) ) $ ( if d215 then d96 else d121 )
        d382 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3860 -> x3860 ) ) ) $ ( Bool )
        d382 = if ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> d154 ) ) ) $ ( d108 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( d340 )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if d256 then x3880 else d53 ) ) ) $ ( d193 ) ) ) ) $ ( if d23 then false else true )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x3930 -> if true then x3930 else x3930 ) ) ) $ ( if false then Bool else Bool )
        d391 = ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if x3920 then d208 else d87 ) ) ) $ ( if true then d91 else d299 )
        d394 : if true then if false then Bool else Bool else if false then Bool else Bool
        d394 = if ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> d121 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> d199 ) ) ) $ ( d108 )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x4010 -> if false then x4010 else x4010 ) ) ) $ ( if true then Bool else Bool )
        d398 = if ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> d310 ) ) ) $ ( d295 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> d303 ) ) ) $ ( d26 )
        d402 : if false then if false then Bool else Bool else if true then Bool else Bool
        d402 = if if d372 then true else d84 then if d368 then false else d96 else ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> false ) ) ) $ ( true )
        d404 : ( ( Set -> Set ) ∋ ( ( λ x4070 -> ( ( Set -> Set ) ∋ ( ( λ x4080 -> if false then x4080 else Bool ) ) ) $ ( x4070 ) ) ) ) $ ( if true then Bool else Bool )
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> if false then d340 else x4050 ) ) ) $ ( x4050 ) ) ) ) $ ( if d16 then d62 else true )
        d409 : if false then ( ( Set -> Set ) ∋ ( ( λ x4120 -> x4120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d409 = if ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> true ) ) ) $ ( false ) else if true then d391 else true
        d413 : if false then ( ( Set -> Set ) ∋ ( ( λ x4150 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( Bool )
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> if x4140 then false else d96 ) ) ) $ ( if d359 then false else d9 )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x4180 -> ( ( Set -> Set ) ∋ ( ( λ x4190 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d417 = if if d193 then d413 else false then if true then d33 else false else if true then true else d84
        d420 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> ( ( Set -> Set ) ∋ ( ( λ x4240 -> if false then x4240 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if x4220 then false else x4220 ) ) ) $ ( x4210 ) ) ) ) $ ( if d37 then true else d378 )
        d425 : if true then if true then Bool else Bool else if false then Bool else Bool
        d425 = if if d286 then true else d417 then ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> true ) ) ) $ ( false ) else if d70 then true else true
        d427 : if false then ( ( Set -> Set ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d427 = if ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> x4280 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> x4300 ) ) ) $ ( d254 )
        d432 : if false then if false then Bool else Bool else if false then Bool else Bool
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> if d5 then d189 else x4330 ) ) ) $ ( true ) ) ) ) $ ( if false then d199 else true )
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if false then x4380 else Bool ) ) ) $ ( if true then Bool else Bool )
        d435 = if ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d45 ) ) ) $ ( false ) then if false then d279 else d57 else ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> x4370 ) ) ) $ ( d324 )
        d439 : if false then if false then Bool else Bool else if true then Bool else Bool
        d439 = if ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> false ) ) ) $ ( false ) then if false then true else d432 else ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> false ) ) ) $ ( true )
        d442 : if false then if true then Bool else Bool else if true then Bool else Bool
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if false then true else true ) ) ) $ ( if true then d295 else d128 )
        d444 : if true then if true then Bool else Bool else if false then Bool else Bool
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> if false then d256 else true ) ) ) $ ( if d256 then false else d186 )
        d446 : ( ( Set -> Set ) ∋ ( ( λ x4490 -> if true then x4490 else x4490 ) ) ) $ ( if true then Bool else Bool )
        d446 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> true ) ) ) $ ( d243 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> x4480 ) ) ) $ ( true )
        d450 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> ( ( Set -> Set ) ∋ ( ( λ x4520 -> if false then x4510 else x4520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d450 = if if d154 then d266 else d340 then if true then d347 else d382 else if d404 then true else d250
        d453 : if true then if true then Bool else Bool else if false then Bool else Bool
        d453 = if if d57 then d324 else d178 then if false then d425 else d274 else if true then true else d193
        d454 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4560 -> Bool ) ) ) $ ( Bool )
        d454 = ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> if true then true else x4550 ) ) ) $ ( if d128 then true else d387 )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4600 -> ( ( Set -> Set ) ∋ ( ( λ x4610 -> if false then x4610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if true then false else d347 ) ) ) $ ( d199 ) ) ) ) $ ( if false then false else d332 )
        d462 : ( ( Set -> Set ) ∋ ( ( λ x4650 -> ( ( Set -> Set ) ∋ ( ( λ x4660 -> if false then Bool else x4660 ) ) ) $ ( x4650 ) ) ) ) $ ( if false then Bool else Bool )
        d462 = if if d218 then false else d128 then ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> d144 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( false )
        d467 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> ( ( Set -> Set ) ∋ ( ( λ x4700 -> if true then x4690 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d467 = ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> if true then d70 else x4680 ) ) ) $ ( if d263 then false else true )
        d471 : ( ( Set -> Set ) ∋ ( ( λ x4730 -> if true then x4730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d471 = if if d193 then false else d439 then ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> false ) ) ) $ ( true ) else if d84 then false else true
        d474 : if false then if false then Bool else Bool else if true then Bool else Bool
        d474 = if if d19 then false else true then if false then false else d137 else ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> true ) ) ) $ ( d269 )
        d476 : if true then ( ( Set -> Set ) ∋ ( ( λ x4780 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if x4770 then d442 else false ) ) ) $ ( if false then false else false )
        d479 : ( ( Set -> Set ) ∋ ( ( λ x4820 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d479 = if if d457 then d417 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> d376 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> d1 ) ) ) $ ( false )
        d483 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( Bool )
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> if false then x4840 else x4840 ) ) ) $ ( if false then true else false )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4880 -> ( ( Set -> Set ) ∋ ( ( λ x4890 -> if true then x4880 else Bool ) ) ) $ ( x4880 ) ) ) ) $ ( if true then Bool else Bool )
        d486 = if ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( false ) then if true then d101 else false else if true then true else d256
        d490 : ( ( Set -> Set ) ∋ ( ( λ x4910 -> ( ( Set -> Set ) ∋ ( ( λ x4920 -> if true then Bool else Bool ) ) ) $ ( x4910 ) ) ) ) $ ( if false then Bool else Bool )
        d490 = if if d87 then false else d91 then if false then d215 else d59 else if true then d382 else d425
        d493 : if false then ( ( Set -> Set ) ∋ ( ( λ x4970 -> x4970 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4980 -> x4980 ) ) ) $ ( Bool )
        d493 = if ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> d454 ) ) ) $ ( d303 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> d175 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> d359 ) ) ) $ ( true )
        d499 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5010 -> Bool ) ) ) $ ( Bool )
        d499 = if ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> true ) ) ) $ ( d486 ) then if d343 then d340 else true else if true then d442 else true
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5050 -> if true then x5050 else x5050 ) ) ) $ ( if true then Bool else Bool )
        d502 = if ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> d283 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> false ) ) ) $ ( true ) else if false then d493 else false
        d506 : if true then if false then Bool else Bool else if false then Bool else Bool
        d506 = if ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> d116 ) ) ) $ ( d442 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> d166 ) ) ) $ ( d37 ) else if d240 then false else d67
        d509 : if false then if true then Bool else Bool else if false then Bool else Bool
        d509 = if ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> d310 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> false ) ) ) $ ( d365 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> true ) ) ) $ ( d313 )
        d513 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5160 -> x5160 ) ) ) $ ( Bool )
        d513 = if ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> true ) ) ) $ ( d203 ) then if d378 then d49 else d365 else ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> d101 ) ) ) $ ( d432 )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x5200 -> ( ( Set -> Set ) ∋ ( ( λ x5210 -> if true then x5210 else x5200 ) ) ) $ ( x5200 ) ) ) ) $ ( if false then Bool else Bool )
        d517 = if if d359 then d332 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> true ) ) ) $ ( d199 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> true ) ) ) $ ( true )
        d522 : ( ( Set -> Set ) ∋ ( ( λ x5250 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d522 = if if d124 then true else d453 then ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> x5230 ) ) ) $ ( d453 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> false ) ) ) $ ( d263 )
        d526 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5290 -> Bool ) ) ) $ ( Bool )
        d526 = if if true then d283 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> false ) ) ) $ ( false )
        d530 : if false then ( ( Set -> Set ) ∋ ( ( λ x5320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5330 -> Bool ) ) ) $ ( Bool )
        d530 = ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> if false then d328 else d266 ) ) ) $ ( if d141 then true else d23 )
        d534 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> ( ( Set -> Set ) ∋ ( ( λ x5370 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if true then x5350 else false ) ) ) $ ( if false then false else false )
        d538 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5410 -> Bool ) ) ) $ ( Bool )
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> if d343 then d224 else false ) ) ) $ ( x5390 ) ) ) ) $ ( if d162 then d128 else d354 )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> if false then x5450 else x5450 ) ) ) $ ( if false then Bool else Bool )
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if d332 then true else false ) ) ) $ ( x5430 ) ) ) ) $ ( if d116 then false else d404 )
        d546 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> if x5470 then d493 else d476 ) ) ) $ ( if false then d108 else d203 )
        d549 : if true then if false then Bool else Bool else if false then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> if false then true else x5500 ) ) ) $ ( x5500 ) ) ) ) $ ( if true then false else d175 )
        d552 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( Bool )
        d552 = if if d291 then d101 else d104 then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> x5530 ) ) ) $ ( d263 )
        d555 : ( ( Set -> Set ) ∋ ( ( λ x5580 -> ( ( Set -> Set ) ∋ ( ( λ x5590 -> if true then Bool else x5590 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> if x5570 then true else d378 ) ) ) $ ( x5560 ) ) ) ) $ ( if d128 then true else d175 )
        d560 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5640 -> x5640 ) ) ) $ ( Bool )
        d560 = if ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> x5610 ) ) ) $ ( d121 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> true ) ) ) $ ( d121 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> true ) ) ) $ ( d555 )
        d565 : ( ( Set -> Set ) ∋ ( ( λ x5680 -> ( ( Set -> Set ) ∋ ( ( λ x5690 -> if false then Bool else x5690 ) ) ) $ ( x5680 ) ) ) ) $ ( if false then Bool else Bool )
        d565 = if if d382 then d59 else d283 then ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> false ) ) ) $ ( true )
        d570 : ( ( Set -> Set ) ∋ ( ( λ x5720 -> ( ( Set -> Set ) ∋ ( ( λ x5730 -> if true then x5730 else x5720 ) ) ) $ ( x5720 ) ) ) ) $ ( if false then Bool else Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if x5710 then d166 else x5710 ) ) ) $ ( if false then d135 else d493 )
        d574 : if false then ( ( Set -> Set ) ∋ ( ( λ x5760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5770 -> Bool ) ) ) $ ( Bool )
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> if true then d365 else d49 ) ) ) $ ( if true then d509 else false )
        d578 : if true then ( ( Set -> Set ) ∋ ( ( λ x5800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5810 -> Bool ) ) ) $ ( Bool )
        d578 = ( ( Bool -> Bool ) ∋ ( ( λ x5790 -> if true then false else d359 ) ) ) $ ( if d229 then d96 else false )
        d582 : if false then ( ( Set -> Set ) ∋ ( ( λ x5840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5850 -> x5850 ) ) ) $ ( Bool )
        d582 = if if false then d328 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5830 -> d96 ) ) ) $ ( true ) else if true then false else true
        d586 : ( ( Set -> Set ) ∋ ( ( λ x5880 -> ( ( Set -> Set ) ∋ ( ( λ x5890 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d586 = if if d269 then true else d260 then ( ( Bool -> Bool ) ∋ ( ( λ x5870 -> x5870 ) ) ) $ ( false ) else if true then false else d320
        d590 : ( ( Set -> Set ) ∋ ( ( λ x5930 -> if true then x5930 else Bool ) ) ) $ ( if true then Bool else Bool )
        d590 = if ( ( Bool -> Bool ) ∋ ( ( λ x5910 -> d538 ) ) ) $ ( false ) then if d131 then d274 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5920 -> x5920 ) ) ) $ ( d203 )
        d594 : if true then if false then Bool else Bool else if true then Bool else Bool
        d594 = if if d84 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5950 -> d124 ) ) ) $ ( d574 ) else if d391 then d493 else false
        d596 : ( ( Set -> Set ) ∋ ( ( λ x5990 -> if false then Bool else x5990 ) ) ) $ ( if true then Bool else Bool )
        d596 = if ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> d299 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> x5980 ) ) ) $ ( d269 ) else if d12 then true else false
        d600 : ( ( Set -> Set ) ∋ ( ( λ x6020 -> ( ( Set -> Set ) ∋ ( ( λ x6030 -> if true then Bool else Bool ) ) ) $ ( x6020 ) ) ) ) $ ( if false then Bool else Bool )
        d600 = if ( ( Bool -> Bool ) ∋ ( ( λ x6010 -> true ) ) ) $ ( d171 ) then if d247 then true else true else if d376 then true else d135
        d604 : ( ( Set -> Set ) ∋ ( ( λ x6070 -> ( ( Set -> Set ) ∋ ( ( λ x6080 -> if true then Bool else x6080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d604 = ( ( Bool -> Bool ) ∋ ( ( λ x6050 -> ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> if true then false else false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d218 )
        d609 : ( ( Set -> Set ) ∋ ( ( λ x6120 -> ( ( Set -> Set ) ∋ ( ( λ x6130 -> if false then x6130 else Bool ) ) ) $ ( x6120 ) ) ) ) $ ( if false then Bool else Bool )
        d609 = if ( ( Bool -> Bool ) ∋ ( ( λ x6100 -> true ) ) ) $ ( d391 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> x6110 ) ) ) $ ( false ) else if false then true else d91
        d614 : ( ( Set -> Set ) ∋ ( ( λ x6160 -> if false then x6160 else x6160 ) ) ) $ ( if true then Bool else Bool )
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> if d49 then x6150 else d502 ) ) ) $ ( if true then true else false )
        d617 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6200 -> Bool ) ) ) $ ( Bool )
        d617 = ( ( Bool -> Bool ) ∋ ( ( λ x6180 -> ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> if false then true else d274 ) ) ) $ ( x6180 ) ) ) ) $ ( if d534 then d479 else d9 )
        d621 : ( ( Set -> Set ) ∋ ( ( λ x6240 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d621 = ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> if true then d231 else x6220 ) ) ) $ ( false ) ) ) ) $ ( if d476 then false else false )
        d625 : ( ( Set -> Set ) ∋ ( ( λ x6270 -> ( ( Set -> Set ) ∋ ( ( λ x6280 -> if true then Bool else Bool ) ) ) $ ( x6270 ) ) ) ) $ ( if false then Bool else Bool )
        d625 = if if d299 then false else d474 then if d570 then d291 else d359 else ( ( Bool -> Bool ) ∋ ( ( λ x6260 -> d286 ) ) ) $ ( d116 )
        d629 : ( ( Set -> Set ) ∋ ( ( λ x6310 -> ( ( Set -> Set ) ∋ ( ( λ x6320 -> if true then x6310 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> if true then x6300 else true ) ) ) $ ( if true then false else d101 )
        d633 : ( ( Set -> Set ) ∋ ( ( λ x6350 -> if true then x6350 else Bool ) ) ) $ ( if false then Bool else Bool )
        d633 = ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> if d546 then d483 else false ) ) ) $ ( if true then false else d439 )
        d636 : if true then ( ( Set -> Set ) ∋ ( ( λ x6380 -> x6380 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d636 = if if false then d75 else d137 then ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> x6370 ) ) ) $ ( false ) else if true then d442 else true
        d639 : if true then if false then Bool else Bool else if false then Bool else Bool
        d639 = if if true then true else d299 then ( ( Bool -> Bool ) ∋ ( ( λ x6400 -> x6400 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> x6410 ) ) ) $ ( true )
        d642 : ( ( Set -> Set ) ∋ ( ( λ x6450 -> ( ( Set -> Set ) ∋ ( ( λ x6460 -> if false then Bool else x6450 ) ) ) $ ( x6450 ) ) ) ) $ ( if true then Bool else Bool )
        d642 = ( ( Bool -> Bool ) ∋ ( ( λ x6430 -> ( ( Bool -> Bool ) ∋ ( ( λ x6440 -> if d235 then d9 else x6440 ) ) ) $ ( false ) ) ) ) $ ( if d594 then d208 else d81 )
        d647 : ( ( Set -> Set ) ∋ ( ( λ x6500 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x6480 -> ( ( Bool -> Bool ) ∋ ( ( λ x6490 -> if d5 then false else d349 ) ) ) $ ( x6480 ) ) ) ) $ ( if d113 then d320 else d263 )
        d651 : ( ( Set -> Set ) ∋ ( ( λ x6530 -> ( ( Set -> Set ) ∋ ( ( λ x6540 -> if true then x6530 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d651 = ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> if x6520 then false else d376 ) ) ) $ ( if true then d182 else false )
        d655 : ( ( Set -> Set ) ∋ ( ( λ x6570 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d655 = if if true then d215 else d12 then ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> false ) ) ) $ ( false ) else if false then false else d78
        d658 : ( ( Set -> Set ) ∋ ( ( λ x6590 -> ( ( Set -> Set ) ∋ ( ( λ x6600 -> if false then Bool else x6600 ) ) ) $ ( x6590 ) ) ) ) $ ( if true then Bool else Bool )
        d658 = if if false then true else false then if true then true else true else if d427 then false else d425
        d661 : if false then if true then Bool else Bool else if false then Bool else Bool
        d661 = if if true then d450 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> false ) ) ) $ ( d435 )
        d664 : ( ( Set -> Set ) ∋ ( ( λ x6660 -> if true then x6660 else Bool ) ) ) $ ( if false then Bool else Bool )
        d664 = ( ( Bool -> Bool ) ∋ ( ( λ x6650 -> if d474 then x6650 else true ) ) ) $ ( if d530 then d243 else false )
        d667 : if false then ( ( Set -> Set ) ∋ ( ( λ x6700 -> x6700 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d667 = if if true then d499 else d661 then ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> d53 ) ) ) $ ( d336 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( d530 )
        d671 : ( ( Set -> Set ) ∋ ( ( λ x6730 -> if false then Bool else x6730 ) ) ) $ ( if true then Bool else Bool )
        d671 = if if d96 then d317 else true then if d490 then d442 else false else ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> d212 ) ) ) $ ( false )
        d674 : if true then ( ( Set -> Set ) ∋ ( ( λ x6760 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x6750 -> if false then d382 else d617 ) ) ) $ ( if d116 then d218 else d137 )
        d677 : ( ( Set -> Set ) ∋ ( ( λ x6780 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d677 = if if d243 then d279 else d409 then if d162 then d479 else d308 else if true then d250 else true
        d679 : if true then ( ( Set -> Set ) ∋ ( ( λ x6820 -> x6820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6830 -> Bool ) ) ) $ ( Bool )
        d679 = if if d340 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> d538 ) ) ) $ ( false )
        d684 : ( ( Set -> Set ) ∋ ( ( λ x6860 -> if false then x6860 else x6860 ) ) ) $ ( if false then Bool else Bool )
        d684 = ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> if x6850 then false else false ) ) ) $ ( if d203 then true else true )
        d687 : ( ( Set -> Set ) ∋ ( ( λ x6880 -> ( ( Set -> Set ) ∋ ( ( λ x6890 -> if false then Bool else x6880 ) ) ) $ ( x6880 ) ) ) ) $ ( if true then Bool else Bool )
        d687 = if if d651 then false else true then if d349 then d483 else d661 else if d121 then false else true
        d690 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6930 -> Bool ) ) ) $ ( Bool )
        d690 = ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> if d40 then d474 else false ) ) ) $ ( x6910 ) ) ) ) $ ( if false then false else d332 )
        d694 : if true then if true then Bool else Bool else if false then Bool else Bool
        d694 = if if true then false else d617 then ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> true ) ) ) $ ( d546 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> d295 ) ) ) $ ( d45 )
        d697 : if false then if false then Bool else Bool else if false then Bool else Bool
        d697 = if if true then true else true then if true then d254 else true else if true then true else true
        d698 : ( ( Set -> Set ) ∋ ( ( λ x7010 -> if false then x7010 else Bool ) ) ) $ ( if true then Bool else Bool )
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> ( ( Bool -> Bool ) ∋ ( ( λ x7000 -> if x6990 then x7000 else x7000 ) ) ) $ ( false ) ) ) ) $ ( if d694 then d224 else false )
        d702 : ( ( Set -> Set ) ∋ ( ( λ x7040 -> if false then x7040 else x7040 ) ) ) $ ( if false then Bool else Bool )
        d702 = if if true then d154 else true then ( ( Bool -> Bool ) ∋ ( ( λ x7030 -> d677 ) ) ) $ ( d23 ) else if true then false else d104
        d705 : if true then ( ( Set -> Set ) ∋ ( ( λ x7080 -> x7080 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d705 = if if d49 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> d642 ) ) ) $ ( d502 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7070 -> x7070 ) ) ) $ ( true )
        d709 : ( ( Set -> Set ) ∋ ( ( λ x7120 -> ( ( Set -> Set ) ∋ ( ( λ x7130 -> if true then x7130 else x7130 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d709 = ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> ( ( Bool -> Bool ) ∋ ( ( λ x7110 -> if d444 then false else x7110 ) ) ) $ ( false ) ) ) ) $ ( if d1 then true else d274 )
        d714 : ( ( Set -> Set ) ∋ ( ( λ x7170 -> if true then x7170 else Bool ) ) ) $ ( if false then Bool else Bool )
        d714 = ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> ( ( Bool -> Bool ) ∋ ( ( λ x7160 -> if d479 then true else true ) ) ) $ ( d144 ) ) ) ) $ ( if false then d490 else true )
        d718 : ( ( Set -> Set ) ∋ ( ( λ x7200 -> if true then Bool else x7200 ) ) ) $ ( if true then Bool else Bool )
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> if d560 then x7190 else d555 ) ) ) $ ( if d398 then true else false )
        d721 : ( ( Set -> Set ) ∋ ( ( λ x7230 -> if true then x7230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> if true then false else d62 ) ) ) $ ( if true then d398 else true )
        d724 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7260 -> Bool ) ) ) $ ( Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> if d26 then true else x7250 ) ) ) $ ( if true then false else d158 )
        d727 : ( ( Set -> Set ) ∋ ( ( λ x7290 -> ( ( Set -> Set ) ∋ ( ( λ x7300 -> if false then Bool else x7290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> if d91 then x7280 else x7280 ) ) ) $ ( if d166 then false else d332 )
        d731 : ( ( Set -> Set ) ∋ ( ( λ x7330 -> ( ( Set -> Set ) ∋ ( ( λ x7340 -> if false then x7330 else x7330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> if d12 then x7320 else d78 ) ) ) $ ( if d372 then false else true )
        d735 : if true then ( ( Set -> Set ) ∋ ( ( λ x7390 -> x7390 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d735 = if ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> d609 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> d313 ) ) ) $ ( d328 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7380 -> true ) ) ) $ ( false )
        d740 : if true then ( ( Set -> Set ) ∋ ( ( λ x7410 -> x7410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d740 = if if true then false else false then if d235 then d442 else d368 else if false then d621 else false
        d742 : if true then ( ( Set -> Set ) ∋ ( ( λ x7460 -> x7460 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d742 = if ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> x7430 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7440 -> true ) ) ) $ ( d247 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7450 -> x7450 ) ) ) $ ( d427 )
        d747 : if true then ( ( Set -> Set ) ∋ ( ( λ x7500 -> x7500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d747 = if ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> x7480 ) ) ) $ ( false ) then if false then d37 else true else ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> d59 ) ) ) $ ( false )
        d751 : ( ( Set -> Set ) ∋ ( ( λ x7540 -> ( ( Set -> Set ) ∋ ( ( λ x7550 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d751 = ( ( Bool -> Bool ) ∋ ( ( λ x7520 -> ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> if d684 then true else false ) ) ) $ ( d310 ) ) ) ) $ ( if false then d124 else d376 )
        d756 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7590 -> x7590 ) ) ) $ ( Bool )
        d756 = ( ( Bool -> Bool ) ∋ ( ( λ x7570 -> ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> if false then true else x7570 ) ) ) $ ( d368 ) ) ) ) $ ( if false then false else d590 )
        d760 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7630 -> x7630 ) ) ) $ ( Bool )
        d760 = if ( ( Bool -> Bool ) ∋ ( ( λ x7610 -> true ) ) ) $ ( d162 ) then if d702 then false else d144 else ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> x7620 ) ) ) $ ( true )
        d764 : if true then if true then Bool else Bool else if true then Bool else Bool
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> if d714 then d362 else x7650 ) ) ) $ ( if false then true else true )
        d766 : ( ( Set -> Set ) ∋ ( ( λ x7680 -> ( ( Set -> Set ) ∋ ( ( λ x7690 -> if false then Bool else x7680 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> if d324 then x7670 else d684 ) ) ) $ ( if true then true else true )
        d770 : ( ( Set -> Set ) ∋ ( ( λ x7720 -> if false then x7720 else Bool ) ) ) $ ( if false then Bool else Bool )
        d770 = if if d667 then d67 else false then ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> x7710 ) ) ) $ ( false ) else if d336 then d714 else d372
        d773 : if false then if false then Bool else Bool else if false then Bool else Bool
        d773 = ( ( Bool -> Bool ) ∋ ( ( λ x7740 -> if false then x7740 else false ) ) ) $ ( if false then false else d444 )
        d775 : if false then ( ( Set -> Set ) ∋ ( ( λ x7780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7790 -> x7790 ) ) ) $ ( Bool )
        d775 = if ( ( Bool -> Bool ) ∋ ( ( λ x7760 -> x7760 ) ) ) $ ( d546 ) then if d565 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x7770 -> true ) ) ) $ ( false )
        d780 : if true then ( ( Set -> Set ) ∋ ( ( λ x7830 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d780 = if ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> x7810 ) ) ) $ ( d664 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> d721 ) ) ) $ ( d87 ) else if d382 then d698 else false
        d784 : ( ( Set -> Set ) ∋ ( ( λ x7860 -> if false then x7860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d784 = ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> if true then d116 else false ) ) ) $ ( if d247 then false else true )
        d787 : ( ( Set -> Set ) ∋ ( ( λ x7890 -> if false then x7890 else Bool ) ) ) $ ( if false then Bool else Bool )
        d787 = if if true then false else true then if false then true else d453 else ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> true ) ) ) $ ( false )
        d790 : ( ( Set -> Set ) ∋ ( ( λ x7920 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d790 = if ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> x7910 ) ) ) $ ( d655 ) then if d40 then d555 else false else if true then d454 else d420
        d793 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7950 -> x7950 ) ) ) $ ( Bool )
        d793 = ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> if false then false else x7940 ) ) ) $ ( if true then d742 else d420 )
        d796 : if true then if false then Bool else Bool else if false then Bool else Bool
        d796 = ( ( Bool -> Bool ) ∋ ( ( λ x7970 -> if true then false else x7970 ) ) ) $ ( if false then false else false )
        d798 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8000 -> x8000 ) ) ) $ ( Bool )
        d798 = ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> if x7990 then true else x7990 ) ) ) $ ( if d560 then d96 else d404 )
        d801 : if true then if true then Bool else Bool else if true then Bool else Bool
        d801 = ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> if true then d303 else d409 ) ) ) $ ( if true then d731 else false )
        d803 : if true then if false then Bool else Bool else if true then Bool else Bool
        d803 = if ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> false ) ) ) $ ( d633 ) then if true then true else d727 else ( ( Bool -> Bool ) ∋ ( ( λ x8050 -> d506 ) ) ) $ ( true )
        d806 : ( ( Set -> Set ) ∋ ( ( λ x8080 -> ( ( Set -> Set ) ∋ ( ( λ x8090 -> if true then Bool else Bool ) ) ) $ ( x8080 ) ) ) ) $ ( if false then Bool else Bool )
        d806 = ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> if x8070 then x8070 else true ) ) ) $ ( if d731 then d454 else true )
        d810 : ( ( Set -> Set ) ∋ ( ( λ x8130 -> ( ( Set -> Set ) ∋ ( ( λ x8140 -> if false then x8140 else x8140 ) ) ) $ ( x8130 ) ) ) ) $ ( if false then Bool else Bool )
        d810 = if ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8120 -> true ) ) ) $ ( d724 ) else if false then true else true
        d815 : ( ( Set -> Set ) ∋ ( ( λ x8180 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d815 = if ( ( Bool -> Bool ) ∋ ( ( λ x8160 -> d343 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> false ) ) ) $ ( d154 ) else if d16 then false else d740
        d819 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8210 -> x8210 ) ) ) $ ( Bool )
        d819 = if ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> x8200 ) ) ) $ ( d798 ) then if d582 then false else false else if d586 then d199 else false
        d822 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8250 -> Bool ) ) ) $ ( Bool )
        d822 = if ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> d764 ) ) ) $ ( false ) else if d144 then d224 else true
        d826 : if true then ( ( Set -> Set ) ∋ ( ( λ x8300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8310 -> Bool ) ) ) $ ( Bool )
        d826 = if ( ( Bool -> Bool ) ∋ ( ( λ x8270 -> d751 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> true ) ) ) $ ( d502 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> x8290 ) ) ) $ ( d740 )
        d832 : ( ( Set -> Set ) ∋ ( ( λ x8350 -> ( ( Set -> Set ) ∋ ( ( λ x8360 -> if true then x8360 else x8350 ) ) ) $ ( x8350 ) ) ) ) $ ( if false then Bool else Bool )
        d832 = ( ( Bool -> Bool ) ∋ ( ( λ x8330 -> ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> if d295 then false else d614 ) ) ) $ ( d193 ) ) ) ) $ ( if true then false else d506 )
        d837 : if true then ( ( Set -> Set ) ∋ ( ( λ x8390 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> if true then d131 else false ) ) ) $ ( if false then true else d647 )
        d840 : ( ( Set -> Set ) ∋ ( ( λ x8430 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d840 = if ( ( Bool -> Bool ) ∋ ( ( λ x8410 -> false ) ) ) $ ( d803 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> x8420 ) ) ) $ ( true ) else if false then true else true
        d844 : ( ( Set -> Set ) ∋ ( ( λ x8470 -> if false then Bool else x8470 ) ) ) $ ( if false then Bool else Bool )
        d844 = if ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> d37 ) ) ) $ ( true ) else if true then false else d256
        d848 : if false then if true then Bool else Bool else if false then Bool else Bool
        d848 = ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> if x8490 then x8490 else d651 ) ) ) $ ( if d764 then d621 else d175 )
        d850 : ( ( Set -> Set ) ∋ ( ( λ x8520 -> ( ( Set -> Set ) ∋ ( ( λ x8530 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d850 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x8510 -> d697 ) ) ) $ ( true ) else if true then d735 else true
        d854 : ( ( Set -> Set ) ∋ ( ( λ x8580 -> ( ( Set -> Set ) ∋ ( ( λ x8590 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d854 = if ( ( Bool -> Bool ) ∋ ( ( λ x8550 -> d837 ) ) ) $ ( d574 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> d220 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> d343 ) ) ) $ ( false )
        d860 : ( ( Set -> Set ) ∋ ( ( λ x8620 -> if true then Bool else x8620 ) ) ) $ ( if true then Bool else Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> if false then x8610 else d286 ) ) ) $ ( if d538 then d647 else d45 )
        d863 : ( ( Set -> Set ) ∋ ( ( λ x8660 -> if true then Bool else x8660 ) ) ) $ ( if true then Bool else Bool )
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> if x8640 then d62 else d387 ) ) ) $ ( d801 ) ) ) ) $ ( if false then d108 else true )
        d867 : ( ( Set -> Set ) ∋ ( ( λ x8680 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d867 = if if true then true else true then if d220 then true else d664 else if d131 then false else true
        d869 : ( ( Set -> Set ) ∋ ( ( λ x8710 -> ( ( Set -> Set ) ∋ ( ( λ x8720 -> if true then x8720 else x8710 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d869 = if if false then true else true then if d182 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x8700 -> false ) ) ) $ ( d822 )
        d873 : ( ( Set -> Set ) ∋ ( ( λ x8760 -> ( ( Set -> Set ) ∋ ( ( λ x8770 -> if false then x8760 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d873 = if ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> true ) ) ) $ ( true ) then if false then true else d457 else ( ( Bool -> Bool ) ∋ ( ( λ x8750 -> x8750 ) ) ) $ ( true )
        d878 : if true then if true then Bool else Bool else if true then Bool else Bool
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x8790 -> if true then x8790 else false ) ) ) $ ( if false then d208 else d175 )
        d880 : if false then ( ( Set -> Set ) ∋ ( ( λ x8830 -> x8830 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d880 = if ( ( Bool -> Bool ) ∋ ( ( λ x8810 -> x8810 ) ) ) $ ( d175 ) then if d402 then d810 else d793 else ( ( Bool -> Bool ) ∋ ( ( λ x8820 -> x8820 ) ) ) $ ( true )
        d884 : if true then ( ( Set -> Set ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d884 = if ( ( Bool -> Bool ) ∋ ( ( λ x8850 -> true ) ) ) $ ( d175 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8860 -> d709 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> d600 ) ) ) $ ( d636 )
        d889 : if false then ( ( Set -> Set ) ∋ ( ( λ x8900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8910 -> x8910 ) ) ) $ ( Bool )
        d889 = if if true then d279 else d884 then if d636 then true else true else if false then true else d721
        d892 : if false then ( ( Set -> Set ) ∋ ( ( λ x8950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8960 -> Bool ) ) ) $ ( Bool )
        d892 = if if d658 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> d152 ) ) ) $ ( d87 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8940 -> x8940 ) ) ) $ ( true )
        d897 : ( ( Set -> Set ) ∋ ( ( λ x9000 -> if false then Bool else x9000 ) ) ) $ ( if false then Bool else Bool )
        d897 = ( ( Bool -> Bool ) ∋ ( ( λ x8980 -> ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> if x8980 then x8980 else false ) ) ) $ ( x8980 ) ) ) ) $ ( if d614 then d848 else true )
        d901 : if true then ( ( Set -> Set ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9050 -> Bool ) ) ) $ ( Bool )
        d901 = if ( ( Bool -> Bool ) ∋ ( ( λ x9020 -> x9020 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9030 -> x9030 ) ) ) $ ( true ) else if false then true else false
        d906 : if false then ( ( Set -> Set ) ∋ ( ( λ x9080 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9090 -> x9090 ) ) ) $ ( Bool )
        d906 = ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> if x9070 then x9070 else x9070 ) ) ) $ ( if false then true else d417 )
        d910 : if false then ( ( Set -> Set ) ∋ ( ( λ x9120 -> x9120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9130 -> x9130 ) ) ) $ ( Bool )
        d910 = ( ( Bool -> Bool ) ∋ ( ( λ x9110 -> if d124 then true else d594 ) ) ) $ ( if true then d450 else d427 )
        d914 : if false then ( ( Set -> Set ) ∋ ( ( λ x9160 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d914 = ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> if false then true else d286 ) ) ) $ ( if d684 then d832 else d313 )
        d917 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9200 -> Bool ) ) ) $ ( Bool )
        d917 = ( ( Bool -> Bool ) ∋ ( ( λ x9180 -> ( ( Bool -> Bool ) ∋ ( ( λ x9190 -> if d844 then d336 else x9190 ) ) ) $ ( x9180 ) ) ) ) $ ( if true then false else true )
        d921 : ( ( Set -> Set ) ∋ ( ( λ x9240 -> ( ( Set -> Set ) ∋ ( ( λ x9250 -> if true then Bool else Bool ) ) ) $ ( x9240 ) ) ) ) $ ( if true then Bool else Bool )
        d921 = if ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> true ) ) ) $ ( false ) then if false then false else d336 else ( ( Bool -> Bool ) ∋ ( ( λ x9230 -> false ) ) ) $ ( false )
        d926 : ( ( Set -> Set ) ∋ ( ( λ x9290 -> ( ( Set -> Set ) ∋ ( ( λ x9300 -> if true then x9290 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x9270 -> ( ( Bool -> Bool ) ∋ ( ( λ x9280 -> if x9270 then d450 else d240 ) ) ) $ ( d26 ) ) ) ) $ ( if d664 then d376 else true )
        d931 : if false then if false then Bool else Bool else if false then Bool else Bool
        d931 = if ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> d30 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9330 -> x9330 ) ) ) $ ( d467 ) else if d493 then d546 else false
        d934 : if false then ( ( Set -> Set ) ∋ ( ( λ x9360 -> x9360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9370 -> x9370 ) ) ) $ ( Bool )
        d934 = ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> if x9350 then true else d340 ) ) ) $ ( if false then false else false )
        d938 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9400 -> Bool ) ) ) $ ( Bool )
        d938 = ( ( Bool -> Bool ) ∋ ( ( λ x9390 -> if d731 then x9390 else x9390 ) ) ) $ ( if false then true else false )
        d941 : ( ( Set -> Set ) ∋ ( ( λ x9430 -> if false then x9430 else x9430 ) ) ) $ ( if false then Bool else Bool )
        d941 = ( ( Bool -> Bool ) ∋ ( ( λ x9420 -> if x9420 then x9420 else d490 ) ) ) $ ( if true then d724 else false )
        d944 : ( ( Set -> Set ) ∋ ( ( λ x9470 -> if false then x9470 else Bool ) ) ) $ ( if true then Bool else Bool )
        d944 = if ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> true ) ) ) $ ( true ) then if true then d509 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9460 -> d780 ) ) ) $ ( d621 )
        d948 : if false then ( ( Set -> Set ) ∋ ( ( λ x9500 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d948 = if if true then d625 else d320 then ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> x9490 ) ) ) $ ( false ) else if d220 then true else d359
        d951 : if false then ( ( Set -> Set ) ∋ ( ( λ x9540 -> x9540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9550 -> x9550 ) ) ) $ ( Bool )
        d951 = ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> if x9530 then d860 else d578 ) ) ) $ ( true ) ) ) ) $ ( if d621 then d921 else d435 )
        d956 : if true then ( ( Set -> Set ) ∋ ( ( λ x9590 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d956 = ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> if false then x9570 else d552 ) ) ) $ ( x9570 ) ) ) ) $ ( if false then d801 else true )
        d960 : if true then ( ( Set -> Set ) ∋ ( ( λ x9620 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> if x9610 then x9610 else true ) ) ) $ ( if d897 then true else d869 )
        d963 : ( ( Set -> Set ) ∋ ( ( λ x9660 -> ( ( Set -> Set ) ∋ ( ( λ x9670 -> if true then x9670 else x9670 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d963 = if ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> false ) ) ) $ ( d256 ) then if true then d796 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> d658 ) ) ) $ ( false )
        d968 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9710 -> Bool ) ) ) $ ( Bool )
        d968 = ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> if x9700 then d506 else false ) ) ) $ ( x9690 ) ) ) ) $ ( if true then d840 else true )
        d972 : if false then ( ( Set -> Set ) ∋ ( ( λ x9750 -> x9750 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9760 -> x9760 ) ) ) $ ( Bool )
        d972 = if ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> d250 ) ) ) $ ( d647 ) then if d775 then d104 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9740 -> d667 ) ) ) $ ( d199 )
        d977 : ( ( Set -> Set ) ∋ ( ( λ x9790 -> if false then x9790 else Bool ) ) ) $ ( if true then Bool else Bool )
        d977 = ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> if d793 then x9780 else d320 ) ) ) $ ( if d880 then false else false )
        d980 : ( ( Set -> Set ) ∋ ( ( λ x9820 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d980 = if ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> true ) ) ) $ ( true ) then if d502 then d376 else d53 else if d96 then d796 else d844
        d983 : ( ( Set -> Set ) ∋ ( ( λ x9850 -> ( ( Set -> Set ) ∋ ( ( λ x9860 -> if false then x9850 else x9850 ) ) ) $ ( x9850 ) ) ) ) $ ( if true then Bool else Bool )
        d983 = if if false then d530 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> true ) ) ) $ ( true ) else if d679 then false else d709
        d987 : if true then ( ( Set -> Set ) ∋ ( ( λ x9900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9910 -> Bool ) ) ) $ ( Bool )
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> if d596 then x9890 else d698 ) ) ) $ ( d574 ) ) ) ) $ ( if true then false else d250 )
        d992 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9950 -> x9950 ) ) ) $ ( Bool )
        d992 = ( ( Bool -> Bool ) ∋ ( ( λ x9930 -> ( ( Bool -> Bool ) ∋ ( ( λ x9940 -> if x9930 then false else x9930 ) ) ) $ ( d332 ) ) ) ) $ ( if true then true else d679 )
        d996 : ( ( Set -> Set ) ∋ ( ( λ x9990 -> if true then x9990 else x9990 ) ) ) $ ( if true then Bool else Bool )
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> ( ( Bool -> Bool ) ∋ ( ( λ x9980 -> if d303 then x9970 else d135 ) ) ) $ ( x9970 ) ) ) ) $ ( if true then true else true )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10030 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1000 = if ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> d658 ) ) ) $ ( d517 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> true ) ) ) $ ( d803 ) else if d453 then d655 else d538
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x10070 -> ( ( Set -> Set ) ∋ ( ( λ x10080 -> if true then Bool else x10070 ) ) ) $ ( x10070 ) ) ) ) $ ( if false then Bool else Bool )
        d1004 = ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> if d848 then d892 else false ) ) ) $ ( false ) ) ) ) $ ( if true then true else d256 )
        d1009 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1009 = if if false then d67 else true then if true then false else d760 else ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> x10100 ) ) ) $ ( false )
        d1011 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10140 -> Bool ) ) ) $ ( Bool )
        d1011 = if if d59 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> d522 ) ) ) $ ( d81 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> d435 ) ) ) $ ( d224 )
        d1015 : ( ( Set -> Set ) ∋ ( ( λ x10170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1015 = if if d394 then true else true then if d215 then d247 else d526 else ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> x10160 ) ) ) $ ( true )
        d1018 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> if d158 then x10200 else false ) ) ) $ ( false ) ) ) ) $ ( if d526 then true else false )
        d1021 : if false then ( ( Set -> Set ) ∋ ( ( λ x10230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10240 -> Bool ) ) ) $ ( Bool )
        d1021 = ( ( Bool -> Bool ) ∋ ( ( λ x10220 -> if false then x10220 else false ) ) ) $ ( if d62 then true else true )
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x10280 -> ( ( Set -> Set ) ∋ ( ( λ x10290 -> if false then Bool else x10290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> if false then x10260 else d359 ) ) ) $ ( d586 ) ) ) ) $ ( if true then true else d229 )
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x10320 -> ( ( Set -> Set ) ∋ ( ( λ x10330 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> if d75 then d639 else false ) ) ) $ ( if d629 then false else true )
        d1034 : if true then ( ( Set -> Set ) ∋ ( ( λ x10370 -> x10370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10380 -> Bool ) ) ) $ ( Bool )
        d1034 = if if d404 then d892 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> x10350 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10360 -> true ) ) ) $ ( d347 )
        d1039 : ( ( Set -> Set ) ∋ ( ( λ x10410 -> ( ( Set -> Set ) ∋ ( ( λ x10420 -> if false then x10420 else x10410 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1039 = if if d1015 then false else true then if d926 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x10400 -> d647 ) ) ) $ ( true )
        d1043 : if false then ( ( Set -> Set ) ∋ ( ( λ x10460 -> x10460 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> if x10440 then x10450 else true ) ) ) $ ( false ) ) ) ) $ ( if d546 then d506 else d462 )
        d1047 : if true then ( ( Set -> Set ) ∋ ( ( λ x10500 -> x10500 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10510 -> Bool ) ) ) $ ( Bool )
        d1047 = if ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> x10480 ) ) ) $ ( true ) then if d642 then d75 else false else ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> true ) ) ) $ ( false )
        d1052 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1052 = ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> if d1015 then d274 else true ) ) ) $ ( false ) ) ) ) $ ( if d84 then true else d91 )
        d1055 : if false then ( ( Set -> Set ) ∋ ( ( λ x10570 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1055 = if if d806 then false else true then if d354 then true else d256 else ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> x10560 ) ) ) $ ( false )
        d1058 : if true then ( ( Set -> Set ) ∋ ( ( λ x10600 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10610 -> x10610 ) ) ) $ ( Bool )
        d1058 = ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> if d144 then d328 else x10590 ) ) ) $ ( if d826 then d387 else false )
        d1062 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1062 = ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> if true then d1039 else x10630 ) ) ) $ ( if true then d343 else d840 )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x10660 -> ( ( Set -> Set ) ∋ ( ( λ x10670 -> if false then x10670 else x10670 ) ) ) $ ( x10660 ) ) ) ) $ ( if false then Bool else Bool )
        d1064 = ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> if x10650 then d144 else false ) ) ) $ ( if true then d552 else true )
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x10710 -> ( ( Set -> Set ) ∋ ( ( λ x10720 -> if false then x10710 else x10720 ) ) ) $ ( x10710 ) ) ) ) $ ( if false then Bool else Bool )
        d1068 = ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> ( ( Bool -> Bool ) ∋ ( ( λ x10700 -> if d502 then x10700 else false ) ) ) $ ( d378 ) ) ) ) $ ( if d724 then true else d444 )
        d1073 : if false then ( ( Set -> Set ) ∋ ( ( λ x10760 -> x10760 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10770 -> x10770 ) ) ) $ ( Bool )
        d1073 = if ( ( Bool -> Bool ) ∋ ( ( λ x10740 -> d328 ) ) ) $ ( d751 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10750 -> false ) ) ) $ ( true ) else if true then true else false
        d1078 : ( ( Set -> Set ) ∋ ( ( λ x10820 -> ( ( Set -> Set ) ∋ ( ( λ x10830 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1078 = if ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> d1015 ) ) ) $ ( d269 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> false ) ) ) $ ( d474 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> x10810 ) ) ) $ ( d546 )
        d1084 : if false then ( ( Set -> Set ) ∋ ( ( λ x10860 -> x10860 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10870 -> Bool ) ) ) $ ( Bool )
        d1084 = ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> if true then x10850 else d212 ) ) ) $ ( if d697 then d362 else d162 )
        d1088 : ( ( Set -> Set ) ∋ ( ( λ x10900 -> ( ( Set -> Set ) ∋ ( ( λ x10910 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1088 = ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> if x10890 then false else x10890 ) ) ) $ ( if false then true else true )
        d1092 : ( ( Set -> Set ) ∋ ( ( λ x10940 -> ( ( Set -> Set ) ∋ ( ( λ x10950 -> if false then x10950 else x10950 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1092 = ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> if d166 then d362 else x10930 ) ) ) $ ( if d658 then false else d522 )
        d1096 : ( ( Set -> Set ) ∋ ( ( λ x11000 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1096 = if ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> d509 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> d526 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> d796 ) ) ) $ ( d884 )
        d1101 : if true then ( ( Set -> Set ) ∋ ( ( λ x11030 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11040 -> Bool ) ) ) $ ( Bool )
        d1101 = ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> if d394 then x11020 else true ) ) ) $ ( if d810 then true else false )
        d1105 : if true then ( ( Set -> Set ) ∋ ( ( λ x11090 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11100 -> x11100 ) ) ) $ ( Bool )
        d1105 = if ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> d600 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> x11070 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> true ) ) ) $ ( d724 )
        d1111 : ( ( Set -> Set ) ∋ ( ( λ x11130 -> if false then Bool else x11130 ) ) ) $ ( if true then Bool else Bool )
        d1111 = if ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> false ) ) ) $ ( false ) then if d931 then false else true else if d70 then d493 else d131
        d1114 : ( ( Set -> Set ) ∋ ( ( λ x11170 -> if false then x11170 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1114 = ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> if false then d960 else false ) ) ) $ ( x11150 ) ) ) ) $ ( if d193 then d770 else true )
        d1118 : ( ( Set -> Set ) ∋ ( ( λ x11200 -> ( ( Set -> Set ) ∋ ( ( λ x11210 -> if false then x11210 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> if d854 then true else false ) ) ) $ ( if d844 then false else false )
        d1122 : ( ( Set -> Set ) ∋ ( ( λ x11250 -> ( ( Set -> Set ) ∋ ( ( λ x11260 -> if false then x11250 else x11260 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1122 = if ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> d542 ) ) ) $ ( d108 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> true ) ) ) $ ( d806 ) else if true then d1018 else false
        d1127 : ( ( Set -> Set ) ∋ ( ( λ x11290 -> ( ( Set -> Set ) ∋ ( ( λ x11300 -> if false then Bool else x11300 ) ) ) $ ( x11290 ) ) ) ) $ ( if false then Bool else Bool )
        d1127 = if ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> x11280 ) ) ) $ ( false ) then if true then d1088 else false else if d980 then true else true
        d1131 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11330 -> x11330 ) ) ) $ ( Bool )
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> if false then true else d910 ) ) ) $ ( if d538 then d382 else d1088 )
        d1134 : if true then ( ( Set -> Set ) ∋ ( ( λ x11350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11360 -> Bool ) ) ) $ ( Bool )
        d1134 = if if d40 then d617 else true then if d5 then d391 else d343 else if d687 then d614 else d775
        d1137 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1137 = if if false then true else false then if false then d75 else d128 else ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> true ) ) ) $ ( d506 )
        d1139 : if false then ( ( Set -> Set ) ∋ ( ( λ x11420 -> x11420 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1139 = if if d677 then d992 else d26 then ( ( Bool -> Bool ) ∋ ( ( λ x11400 -> x11400 ) ) ) $ ( d87 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> true ) ) ) $ ( false )
        d1143 : ( ( Set -> Set ) ∋ ( ( λ x11450 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1143 = if if d697 then true else d863 then if false then true else d677 else ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> x11440 ) ) ) $ ( d546 )
        d1146 : ( ( Set -> Set ) ∋ ( ( λ x11480 -> if true then Bool else x11480 ) ) ) $ ( if false then Bool else Bool )
        d1146 = ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> if d446 then d1101 else d45 ) ) ) $ ( if d892 then d742 else d963 )
        d1149 : ( ( Set -> Set ) ∋ ( ( λ x11510 -> if true then x11510 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1149 = ( ( Bool -> Bool ) ∋ ( ( λ x11500 -> if x11500 then false else d435 ) ) ) $ ( if d840 then d378 else d718 )
        d1152 : ( ( Set -> Set ) ∋ ( ( λ x11550 -> ( ( Set -> Set ) ∋ ( ( λ x11560 -> if false then x11550 else x11560 ) ) ) $ ( x11550 ) ) ) ) $ ( if true then Bool else Bool )
        d1152 = ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> if true then d212 else x11540 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d398 )
        d1157 : ( ( Set -> Set ) ∋ ( ( λ x11600 -> if false then Bool else x11600 ) ) ) $ ( if true then Bool else Bool )
        d1157 = ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> if d340 then x11590 else x11580 ) ) ) $ ( x11580 ) ) ) ) $ ( if d549 then d819 else false )
        d1161 : ( ( Set -> Set ) ∋ ( ( λ x11630 -> ( ( Set -> Set ) ∋ ( ( λ x11640 -> if true then x11640 else x11640 ) ) ) $ ( x11630 ) ) ) ) $ ( if true then Bool else Bool )
        d1161 = ( ( Bool -> Bool ) ∋ ( ( λ x11620 -> if x11620 then x11620 else d604 ) ) ) $ ( if d486 then true else true )
        d1165 : ( ( Set -> Set ) ∋ ( ( λ x11680 -> ( ( Set -> Set ) ∋ ( ( λ x11690 -> if false then Bool else x11690 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1165 = ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> if x11660 then true else false ) ) ) $ ( false ) ) ) ) $ ( if d996 then true else false )
        d1170 : if true then ( ( Set -> Set ) ∋ ( ( λ x11730 -> x11730 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11740 -> Bool ) ) ) $ ( Bool )
        d1170 = ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> if x11710 then d963 else x11720 ) ) ) $ ( d320 ) ) ) ) $ ( if true then d751 else true )
        d1175 : ( ( Set -> Set ) ∋ ( ( λ x11770 -> if false then x11770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1175 = ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> if d317 then false else d45 ) ) ) $ ( if true then d247 else d764 )
        d1178 : ( ( Set -> Set ) ∋ ( ( λ x11820 -> if false then Bool else x11820 ) ) ) $ ( if true then Bool else Bool )
        d1178 = if ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> x11790 ) ) ) $ ( d212 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> x11800 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11810 -> x11810 ) ) ) $ ( d735 )
        d1183 : ( ( Set -> Set ) ∋ ( ( λ x11850 -> ( ( Set -> Set ) ∋ ( ( λ x11860 -> if true then Bool else x11860 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1183 = ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> if x11840 then x11840 else false ) ) ) $ ( if false then false else false )
        d1187 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1187 = ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> if false then x11880 else x11880 ) ) ) $ ( if false then d116 else true )
        d1189 : ( ( Set -> Set ) ∋ ( ( λ x11910 -> ( ( Set -> Set ) ∋ ( ( λ x11920 -> if true then x11920 else x11910 ) ) ) $ ( x11910 ) ) ) ) $ ( if false then Bool else Bool )
        d1189 = if if false then d742 else true then if true then d404 else d193 else ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> d274 ) ) ) $ ( true )
        d1193 : if true then ( ( Set -> Set ) ∋ ( ( λ x11970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11980 -> x11980 ) ) ) $ ( Bool )
        d1193 = if ( ( Bool -> Bool ) ∋ ( ( λ x11940 -> false ) ) ) $ ( d108 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> d727 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> x11960 ) ) ) $ ( true )
        d1199 : ( ( Set -> Set ) ∋ ( ( λ x12030 -> if true then x12030 else x12030 ) ) ) $ ( if true then Bool else Bool )
        d1199 = if ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> d9 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> d972 ) ) ) $ ( d705 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> x12020 ) ) ) $ ( true )
        d1204 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12070 -> Bool ) ) ) $ ( Bool )
        d1204 = ( ( Bool -> Bool ) ∋ ( ( λ x12050 -> ( ( Bool -> Bool ) ∋ ( ( λ x12060 -> if true then d780 else true ) ) ) $ ( x12050 ) ) ) ) $ ( if false then d658 else true )
        d1208 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1208 = if ( ( Bool -> Bool ) ∋ ( ( λ x12090 -> false ) ) ) $ ( true ) then if d513 then d189 else d1004 else if true then false else d131
        d1210 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12120 -> x12120 ) ) ) $ ( Bool )
        d1210 = ( ( Bool -> Bool ) ∋ ( ( λ x12110 -> if false then d775 else true ) ) ) $ ( if false then true else true )
        d1213 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1213 = ( ( Bool -> Bool ) ∋ ( ( λ x12140 -> if false then x12140 else x12140 ) ) ) $ ( if d1043 then d442 else d727 )
        d1215 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12180 -> Bool ) ) ) $ ( Bool )
        d1215 = ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> if x12160 then true else x12160 ) ) ) $ ( x12160 ) ) ) ) $ ( if d391 then true else false )
        d1219 : ( ( Set -> Set ) ∋ ( ( λ x12220 -> if true then x12220 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1219 = ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> if x12200 then false else d655 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d642 )
        d1223 : ( ( Set -> Set ) ∋ ( ( λ x12250 -> ( ( Set -> Set ) ∋ ( ( λ x12260 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1223 = ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> if d91 then x12240 else d250 ) ) ) $ ( if false then true else d747 )
        d1227 : ( ( Set -> Set ) ∋ ( ( λ x12300 -> if true then Bool else x12300 ) ) ) $ ( if true then Bool else Bool )
        d1227 = if if true then d224 else d308 then ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> x12280 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> x12290 ) ) ) $ ( true )
        d1231 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1231 = if ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> d57 ) ) ) $ ( true ) then if d850 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> false ) ) ) $ ( true )
        d1234 : ( ( Set -> Set ) ∋ ( ( λ x12370 -> if false then x12370 else x12370 ) ) ) $ ( if false then Bool else Bool )
        d1234 = if ( ( Bool -> Bool ) ∋ ( ( λ x12350 -> x12350 ) ) ) $ ( d801 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> true ) ) ) $ ( d144 ) else if true then true else false
        d1238 : ( ( Set -> Set ) ∋ ( ( λ x12410 -> ( ( Set -> Set ) ∋ ( ( λ x12420 -> if false then x12420 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1238 = if ( ( Bool -> Bool ) ∋ ( ( λ x12390 -> x12390 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> d104 ) ) ) $ ( true ) else if false then true else true
        d1243 : ( ( Set -> Set ) ∋ ( ( λ x12470 -> ( ( Set -> Set ) ∋ ( ( λ x12480 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1243 = if ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> x12440 ) ) ) $ ( d141 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12450 -> d215 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> d368 ) ) ) $ ( true )
        d1249 : ( ( Set -> Set ) ∋ ( ( λ x12520 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1249 = if ( ( Bool -> Bool ) ∋ ( ( λ x12500 -> x12500 ) ) ) $ ( d432 ) then if d354 then d162 else d751 else ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> x12510 ) ) ) $ ( d1127 )
        d1253 : ( ( Set -> Set ) ∋ ( ( λ x12560 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1253 = if if true then true else d860 then ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> d229 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> false ) ) ) $ ( true )
        d1257 : ( ( Set -> Set ) ∋ ( ( λ x12600 -> ( ( Set -> Set ) ∋ ( ( λ x12610 -> if false then x12600 else Bool ) ) ) $ ( x12600 ) ) ) ) $ ( if true then Bool else Bool )
        d1257 = ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> ( ( Bool -> Bool ) ∋ ( ( λ x12590 -> if true then x12580 else x12590 ) ) ) $ ( x12580 ) ) ) ) $ ( if false then d1243 else d308 )
        d1262 : if false then ( ( Set -> Set ) ∋ ( ( λ x12650 -> x12650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12660 -> x12660 ) ) ) $ ( Bool )
        d1262 = if if false then d526 else d328 then ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> x12630 ) ) ) $ ( d718 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> x12640 ) ) ) $ ( true )
        d1267 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1267 = if ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> d938 ) ) ) $ ( true ) then if d218 then false else d394 else if true then d317 else true
        d1269 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12710 -> x12710 ) ) ) $ ( Bool )
        d1269 = if ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> x12700 ) ) ) $ ( true ) then if d996 then false else false else if true then d1034 else false
        d1272 : ( ( Set -> Set ) ∋ ( ( λ x12750 -> ( ( Set -> Set ) ∋ ( ( λ x12760 -> if true then x12760 else x12760 ) ) ) $ ( x12750 ) ) ) ) $ ( if false then Bool else Bool )
        d1272 = if ( ( Bool -> Bool ) ∋ ( ( λ x12730 -> d1215 ) ) ) $ ( d709 ) then if true then false else d186 else ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> x12740 ) ) ) $ ( d499 )
        d1277 : if false then ( ( Set -> Set ) ∋ ( ( λ x12800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12810 -> x12810 ) ) ) $ ( Bool )
        d1277 = if if d526 then false else d1262 then ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> d509 ) ) ) $ ( d376 )
        d1282 : if false then ( ( Set -> Set ) ∋ ( ( λ x12840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12850 -> Bool ) ) ) $ ( Bool )
        d1282 = ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> if x12830 then d960 else x12830 ) ) ) $ ( if true then d574 else d387 )
        d1286 : ( ( Set -> Set ) ∋ ( ( λ x12880 -> if false then x12880 else x12880 ) ) ) $ ( if false then Bool else Bool )
        d1286 = ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> if false then d832 else x12870 ) ) ) $ ( if true then d897 else true )
        d1289 : ( ( Set -> Set ) ∋ ( ( λ x12910 -> ( ( Set -> Set ) ∋ ( ( λ x12920 -> if true then Bool else x12920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1289 = if if d934 then d310 else false then if d1208 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x12900 -> false ) ) ) $ ( d16 )
        d1293 : ( ( Set -> Set ) ∋ ( ( λ x12970 -> ( ( Set -> Set ) ∋ ( ( λ x12980 -> if true then x12980 else x12970 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1293 = if ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> d317 ) ) ) $ ( d453 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12950 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> d148 ) ) ) $ ( false )
        d1299 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1299 = ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> if false then x13000 else true ) ) ) $ ( if false then d299 else true )
        d1301 : ( ( Set -> Set ) ∋ ( ( λ x13030 -> ( ( Set -> Set ) ∋ ( ( λ x13040 -> if false then x13040 else x13030 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1301 = ( ( Bool -> Bool ) ∋ ( ( λ x13020 -> if d889 then false else x13020 ) ) ) $ ( if d502 then true else d493 )
        d1305 : ( ( Set -> Set ) ∋ ( ( λ x13080 -> ( ( Set -> Set ) ∋ ( ( λ x13090 -> if true then Bool else x13090 ) ) ) $ ( x13080 ) ) ) ) $ ( if false then Bool else Bool )
        d1305 = if ( ( Bool -> Bool ) ∋ ( ( λ x13060 -> true ) ) ) $ ( d690 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> d1293 ) ) ) $ ( true ) else if true then true else d250
        d1310 : ( ( Set -> Set ) ∋ ( ( λ x13130 -> if true then x13130 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1310 = ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> if x13110 then d980 else x13110 ) ) ) $ ( true ) ) ) ) $ ( if true then d667 else true )
        d1314 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13150 -> Bool ) ) ) $ ( Bool )
        d1314 = if if d1062 then d490 else d479 then if true then false else d705 else if d1078 then true else false
        d1316 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13190 -> x13190 ) ) ) $ ( Bool )
        d1316 = ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> ( ( Bool -> Bool ) ∋ ( ( λ x13180 -> if d747 then d892 else true ) ) ) $ ( d869 ) ) ) ) $ ( if true then true else d793 )
        d1320 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1320 = ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> if d810 then false else true ) ) ) $ ( if d751 then d560 else d832 )
        d1322 : if true then ( ( Set -> Set ) ∋ ( ( λ x13250 -> x13250 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1322 = ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> if x13240 then x13240 else x13240 ) ) ) $ ( d247 ) ) ) ) $ ( if true then d770 else d235 )
        d1326 : ( ( Set -> Set ) ∋ ( ( λ x13270 -> if false then x13270 else x13270 ) ) ) $ ( if false then Bool else Bool )
        d1326 = if if false then false else d934 then if true then d336 else false else if true then true else false
        d1328 : ( ( Set -> Set ) ∋ ( ( λ x13300 -> ( ( Set -> Set ) ∋ ( ( λ x13310 -> if true then Bool else x13300 ) ) ) $ ( x13300 ) ) ) ) $ ( if true then Bool else Bool )
        d1328 = ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> if x13290 then x13290 else x13290 ) ) ) $ ( if true then true else d404 )
        d1332 : if true then ( ( Set -> Set ) ∋ ( ( λ x13350 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1332 = ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> if d1 then true else d490 ) ) ) $ ( d1170 ) ) ) ) $ ( if d442 then d224 else false )
        d1336 : if true then ( ( Set -> Set ) ∋ ( ( λ x13400 -> x13400 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1336 = if ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> false ) ) ) $ ( d698 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13390 -> true ) ) ) $ ( d116 )
        d1341 : ( ( Set -> Set ) ∋ ( ( λ x13430 -> if true then Bool else x13430 ) ) ) $ ( if true then Bool else Bool )
        d1341 = if if false then d892 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13420 -> d801 ) ) ) $ ( d67 ) else if d1234 then d972 else false
        d1344 : ( ( Set -> Set ) ∋ ( ( λ x13460 -> ( ( Set -> Set ) ∋ ( ( λ x13470 -> if false then Bool else x13460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1344 = ( ( Bool -> Bool ) ∋ ( ( λ x13450 -> if d1316 then d1134 else x13450 ) ) ) $ ( if false then false else true )
        d1348 : if false then ( ( Set -> Set ) ∋ ( ( λ x13500 -> x13500 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1348 = if ( ( Bool -> Bool ) ∋ ( ( λ x13490 -> false ) ) ) $ ( d269 ) then if false then false else false else if true then false else false
        d1351 : if false then ( ( Set -> Set ) ∋ ( ( λ x13530 -> x13530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1351 = ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> if x13520 then false else false ) ) ) $ ( if d1139 then true else true )
        d1354 : if true then ( ( Set -> Set ) ∋ ( ( λ x13550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13560 -> x13560 ) ) ) $ ( Bool )
        d1354 = if if d260 then true else d1326 then if d801 then d1092 else d1 else if true then false else d295
        d1357 : if false then ( ( Set -> Set ) ∋ ( ( λ x13590 -> x13590 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1357 = if if d1161 then d555 else d474 then ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> false ) ) ) $ ( d362 ) else if true then d826 else d1004
        d1360 : if true then ( ( Set -> Set ) ∋ ( ( λ x13630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13640 -> x13640 ) ) ) $ ( Bool )
        d1360 = ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> if x13620 then x13610 else x13610 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d1365 : if false then ( ( Set -> Set ) ∋ ( ( λ x13680 -> x13680 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1365 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> d869 ) ) ) $ ( d256 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( d926 )
        d1369 : if false then ( ( Set -> Set ) ∋ ( ( λ x13720 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1369 = ( ( Bool -> Bool ) ∋ ( ( λ x13700 -> ( ( Bool -> Bool ) ∋ ( ( λ x13710 -> if d917 then x13710 else d409 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d1055 )
        d1373 : ( ( Set -> Set ) ∋ ( ( λ x13770 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1373 = if ( ( Bool -> Bool ) ∋ ( ( λ x13740 -> false ) ) ) $ ( d926 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> x13750 ) ) ) $ ( d343 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> x13760 ) ) ) $ ( false )
        d1378 : if true then ( ( Set -> Set ) ∋ ( ( λ x13800 -> x13800 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13810 -> Bool ) ) ) $ ( Bool )
        d1378 = if ( ( Bool -> Bool ) ∋ ( ( λ x13790 -> false ) ) ) $ ( d446 ) then if true then d960 else d948 else if d658 then d921 else true
        d1382 : ( ( Set -> Set ) ∋ ( ( λ x13850 -> if false then x13850 else x13850 ) ) ) $ ( if true then Bool else Bool )
        d1382 = ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> ( ( Bool -> Bool ) ∋ ( ( λ x13840 -> if false then x13840 else d84 ) ) ) $ ( d1000 ) ) ) ) $ ( if true then d506 else d951 )
        d1386 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1386 = if ( ( Bool -> Bool ) ∋ ( ( λ x13870 -> d694 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> d101 ) ) ) $ ( d1084 ) else if d243 then true else d141
        d1389 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13920 -> x13920 ) ) ) $ ( Bool )
        d1389 = ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> if true then x13900 else x13910 ) ) ) $ ( x13900 ) ) ) ) $ ( if d1157 then false else false )
        d1393 : if false then ( ( Set -> Set ) ∋ ( ( λ x13950 -> x13950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13960 -> x13960 ) ) ) $ ( Bool )
        d1393 = ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> if false then d1322 else false ) ) ) $ ( if d67 then false else false )
        d1397 : if false then ( ( Set -> Set ) ∋ ( ( λ x13990 -> x13990 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1397 = if if false then d432 else d1161 then ( ( Bool -> Bool ) ∋ ( ( λ x13980 -> x13980 ) ) ) $ ( d254 ) else if d869 then true else false
        d1400 : if true then ( ( Set -> Set ) ∋ ( ( λ x14030 -> x14030 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14040 -> Bool ) ) ) $ ( Bool )
        d1400 = ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> if d697 then false else d26 ) ) ) $ ( x14010 ) ) ) ) $ ( if true then false else true )
        d1405 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14080 -> x14080 ) ) ) $ ( Bool )
        d1405 = ( ( Bool -> Bool ) ∋ ( ( λ x14060 -> ( ( Bool -> Bool ) ∋ ( ( λ x14070 -> if x14070 then true else d960 ) ) ) $ ( x14060 ) ) ) ) $ ( if false then false else d263 )
        d1409 : ( ( Set -> Set ) ∋ ( ( λ x14110 -> ( ( Set -> Set ) ∋ ( ( λ x14120 -> if true then Bool else x14120 ) ) ) $ ( x14110 ) ) ) ) $ ( if false then Bool else Bool )
        d1409 = if ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> x14100 ) ) ) $ ( false ) then if true then d980 else true else if d517 then d1004 else true
        d1413 : ( ( Set -> Set ) ∋ ( ( λ x14140 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1413 = if if d775 then d1365 else false then if d1389 then false else true else if d724 then d108 else d420
        d1415 : if true then ( ( Set -> Set ) ∋ ( ( λ x14180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14190 -> x14190 ) ) ) $ ( Bool )
        d1415 = ( ( Bool -> Bool ) ∋ ( ( λ x14160 -> ( ( Bool -> Bool ) ∋ ( ( λ x14170 -> if x14170 then x14160 else d629 ) ) ) $ ( x14160 ) ) ) ) $ ( if d756 then d655 else false )
        d1420 : ( ( Set -> Set ) ∋ ( ( λ x14230 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1420 = ( ( Bool -> Bool ) ∋ ( ( λ x14210 -> ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> if d462 then x14210 else d182 ) ) ) $ ( d1397 ) ) ) ) $ ( if d1161 then d286 else false )
        d1424 : ( ( Set -> Set ) ∋ ( ( λ x14280 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1424 = if ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> x14260 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14270 -> x14270 ) ) ) $ ( d299 )
        d1429 : ( ( Set -> Set ) ∋ ( ( λ x14300 -> if true then x14300 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1429 = if if true then false else d324 then if d1310 then true else d1039 else if d1420 then false else false
        d1431 : if false then ( ( Set -> Set ) ∋ ( ( λ x14330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14340 -> Bool ) ) ) $ ( Bool )
        d1431 = ( ( Bool -> Bool ) ∋ ( ( λ x14320 -> if x14320 then true else d137 ) ) ) $ ( if false then d740 else d614 )
        d1435 : ( ( Set -> Set ) ∋ ( ( λ x14370 -> ( ( Set -> Set ) ∋ ( ( λ x14380 -> if true then x14370 else x14370 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1435 = ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> if d266 then x14360 else d1431 ) ) ) $ ( if false then d1320 else false )
        d1439 : if true then ( ( Set -> Set ) ∋ ( ( λ x14410 -> x14410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14420 -> x14420 ) ) ) $ ( Bool )
        d1439 = ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> if d1373 then d815 else true ) ) ) $ ( if d1170 then false else false )
        d1443 : if true then ( ( Set -> Set ) ∋ ( ( λ x14460 -> x14460 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1443 = if if false then d101 else d633 then ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> x14440 ) ) ) $ ( d1234 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> false ) ) ) $ ( d784 )
        d1447 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1447 = if if d218 then true else d694 then if true then true else d154 else ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> true ) ) ) $ ( d368 )
        d1449 : if false then ( ( Set -> Set ) ∋ ( ( λ x14520 -> x14520 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1449 = if if d869 then false else d308 then ( ( Bool -> Bool ) ∋ ( ( λ x14500 -> x14500 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14510 -> false ) ) ) $ ( true )
        d1453 : ( ( Set -> Set ) ∋ ( ( λ x14550 -> ( ( Set -> Set ) ∋ ( ( λ x14560 -> if false then Bool else x14550 ) ) ) $ ( x14550 ) ) ) ) $ ( if false then Bool else Bool )
        d1453 = ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> if d844 then x14540 else true ) ) ) $ ( if false then d1161 else true )
        d1457 : ( ( Set -> Set ) ∋ ( ( λ x14590 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1457 = ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> if x14580 then d1178 else x14580 ) ) ) $ ( if false then false else false )
        d1460 : if false then ( ( Set -> Set ) ∋ ( ( λ x14610 -> x14610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14620 -> x14620 ) ) ) $ ( Bool )
        d1460 = if if d926 then d178 else true then if d467 then d84 else false else if d679 then false else false
        d1463 : ( ( Set -> Set ) ∋ ( ( λ x14670 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1463 = if ( ( Bool -> Bool ) ∋ ( ( λ x14640 -> d1068 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> false ) ) ) $ ( d796 )
        d1468 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14700 -> Bool ) ) ) $ ( Bool )
        d1468 = ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> if x14690 then x14690 else false ) ) ) $ ( if false then d398 else d1183 )
        d1471 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1471 = ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> if x14720 then d1152 else true ) ) ) $ ( if true then d705 else true )
        d1473 : ( ( Set -> Set ) ∋ ( ( λ x14760 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1473 = ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> if d343 then true else x14740 ) ) ) $ ( false ) ) ) ) $ ( if d9 then d1471 else d960 )
        d1477 : ( ( Set -> Set ) ∋ ( ( λ x14800 -> ( ( Set -> Set ) ∋ ( ( λ x14810 -> if false then Bool else Bool ) ) ) $ ( x14800 ) ) ) ) $ ( if true then Bool else Bool )
        d1477 = ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> ( ( Bool -> Bool ) ∋ ( ( λ x14790 -> if d310 then true else false ) ) ) $ ( false ) ) ) ) $ ( if d1439 then d914 else d499 )
        d1482 : ( ( Set -> Set ) ∋ ( ( λ x14840 -> ( ( Set -> Set ) ∋ ( ( λ x14850 -> if true then Bool else x14840 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1482 = ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> if true then false else x14830 ) ) ) $ ( if true then d295 else true )
        d1486 : if false then ( ( Set -> Set ) ∋ ( ( λ x14880 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1486 = ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> if false then true else x14870 ) ) ) $ ( if d439 then d474 else d1269 )
        d1489 : ( ( Set -> Set ) ∋ ( ( λ x14920 -> if false then x14920 else x14920 ) ) ) $ ( if false then Bool else Bool )
        d1489 = ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> if false then x14900 else x14900 ) ) ) $ ( d218 ) ) ) ) $ ( if d679 then true else d218 )
        d1493 : if true then ( ( Set -> Set ) ∋ ( ( λ x14950 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1493 = if ( ( Bool -> Bool ) ∋ ( ( λ x14940 -> false ) ) ) $ ( d604 ) then if d1453 then d869 else d517 else if false then d474 else true
        d1496 : ( ( Set -> Set ) ∋ ( ( λ x14990 -> ( ( Set -> Set ) ∋ ( ( λ x15000 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1496 = ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> if d1400 then d880 else false ) ) ) $ ( d256 ) ) ) ) $ ( if true then d1400 else true )
        d1501 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1501 = if ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> d1424 ) ) ) $ ( d178 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> d476 ) ) ) $ ( d1204 ) else if true then d215 else true
        d1504 : if false then ( ( Set -> Set ) ∋ ( ( λ x15060 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1504 = ( ( Bool -> Bool ) ∋ ( ( λ x15050 -> if x15050 then d26 else x15050 ) ) ) $ ( if true then false else d336 )
        d1507 : ( ( Set -> Set ) ∋ ( ( λ x15090 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1507 = if ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> x15080 ) ) ) $ ( d260 ) then if true then d347 else d413 else if d1293 then d727 else true
        d1510 : if true then ( ( Set -> Set ) ∋ ( ( λ x15120 -> x15120 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1510 = ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> if x15110 then x15110 else d1234 ) ) ) $ ( if d806 then d340 else d229 )
        d1513 : ( ( Set -> Set ) ∋ ( ( λ x15140 -> ( ( Set -> Set ) ∋ ( ( λ x15150 -> if true then x15140 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1513 = if if d694 then false else d45 then if true then false else false else if false then false else false
        d1516 : ( ( Set -> Set ) ∋ ( ( λ x15170 -> if false then Bool else x15170 ) ) ) $ ( if true then Bool else Bool )
        d1516 = if if d1199 then true else true then if d186 then d1424 else d158 else if true then true else true
        d1518 : if false then ( ( Set -> Set ) ∋ ( ( λ x15210 -> x15210 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15220 -> Bool ) ) ) $ ( Bool )
        d1518 = ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> if d250 then x15200 else false ) ) ) $ ( d1336 ) ) ) ) $ ( if false then d1471 else false )
        d1523 : if true then ( ( Set -> Set ) ∋ ( ( λ x15250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15260 -> x15260 ) ) ) $ ( Bool )
        d1523 = if ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> false ) ) ) $ ( d972 ) then if d1293 then d5 else false else if true then d108 else true
        d1527 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1527 = if if d980 then d1025 else false then ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> d1382 ) ) ) $ ( true ) else if true then true else d555
        d1529 : if true then ( ( Set -> Set ) ∋ ( ( λ x15320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15330 -> x15330 ) ) ) $ ( Bool )
        d1529 = ( ( Bool -> Bool ) ∋ ( ( λ x15300 -> ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> if false then d171 else x15310 ) ) ) $ ( d1424 ) ) ) ) $ ( if false then false else d1373 )
        d1534 : ( ( Set -> Set ) ∋ ( ( λ x15370 -> ( ( Set -> Set ) ∋ ( ( λ x15380 -> if true then x15380 else Bool ) ) ) $ ( x15370 ) ) ) ) $ ( if false then Bool else Bool )
        d1534 = ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> if d154 then x15360 else d639 ) ) ) $ ( true ) ) ) ) $ ( if false then d378 else true )
        d1539 : if false then ( ( Set -> Set ) ∋ ( ( λ x15420 -> x15420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15430 -> Bool ) ) ) $ ( Bool )
        d1539 = if ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> d391 ) ) ) $ ( d751 ) then if false then d220 else d1282 else ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> d1424 ) ) ) $ ( d917 )
        d1544 : if false then ( ( Set -> Set ) ∋ ( ( λ x15460 -> x15460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15470 -> x15470 ) ) ) $ ( Bool )
        d1544 = ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> if d336 then x15450 else false ) ) ) $ ( if d229 then d1453 else true )
        d1548 : ( ( Set -> Set ) ∋ ( ( λ x15490 -> ( ( Set -> Set ) ∋ ( ( λ x15500 -> if false then Bool else x15490 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1548 = if if d152 then false else d1062 then if true then true else d78 else if d215 then d1034 else true
        d1551 : if false then ( ( Set -> Set ) ∋ ( ( λ x15530 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1551 = if ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> d1507 ) ) ) $ ( true ) then if true then true else true else if false then false else true
        d1554 : ( ( Set -> Set ) ∋ ( ( λ x15570 -> if true then x15570 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1554 = ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> if d714 then x15550 else true ) ) ) $ ( true ) ) ) ) $ ( if d1354 then true else d921 )
        d1558 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15600 -> Bool ) ) ) $ ( Bool )
        d1558 = if ( ( Bool -> Bool ) ∋ ( ( λ x15590 -> true ) ) ) $ ( false ) then if d283 then d590 else false else if d941 then true else d784
        d1561 : ( ( Set -> Set ) ∋ ( ( λ x15640 -> if false then Bool else x15640 ) ) ) $ ( if true then Bool else Bool )
        d1561 = ( ( Bool -> Bool ) ∋ ( ( λ x15620 -> ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> if false then false else true ) ) ) $ ( true ) ) ) ) $ ( if d490 then d420 else d574 )
        d1565 : ( ( Set -> Set ) ∋ ( ( λ x15670 -> ( ( Set -> Set ) ∋ ( ( λ x15680 -> if true then Bool else x15670 ) ) ) $ ( x15670 ) ) ) ) $ ( if false then Bool else Bool )
        d1565 = if if d1114 then true else true then if d1118 then false else d1127 else ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> true ) ) ) $ ( d869 )
        d1569 : ( ( Set -> Set ) ∋ ( ( λ x15710 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1569 = ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> if x15700 then d320 else x15700 ) ) ) $ ( if false then d642 else d1310 )
        d1572 : if false then ( ( Set -> Set ) ∋ ( ( λ x15740 -> x15740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15750 -> Bool ) ) ) $ ( Bool )
        d1572 = ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> if d1424 then x15730 else x15730 ) ) ) $ ( if false then d1111 else d1314 )
        d1576 : ( ( Set -> Set ) ∋ ( ( λ x15790 -> ( ( Set -> Set ) ∋ ( ( λ x15800 -> if false then Bool else x15790 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1576 = if ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> true ) ) ) $ ( d705 ) then if false then d1510 else d1058 else ( ( Bool -> Bool ) ∋ ( ( λ x15780 -> d1183 ) ) ) $ ( false )
        d1581 : ( ( Set -> Set ) ∋ ( ( λ x15830 -> ( ( Set -> Set ) ∋ ( ( λ x15840 -> if true then x15840 else x15840 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1581 = if if true then d1210 else true then if d1078 then d1405 else d368 else ( ( Bool -> Bool ) ∋ ( ( λ x15820 -> x15820 ) ) ) $ ( false )
        d1585 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1585 = if ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> false ) ) ) $ ( d848 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15870 -> x15870 ) ) ) $ ( d250 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> false ) ) ) $ ( d1413 )
        d1589 : ( ( Set -> Set ) ∋ ( ( λ x15930 -> if false then x15930 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1589 = if ( ( Bool -> Bool ) ∋ ( ( λ x15900 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15910 -> d1105 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> d609 ) ) ) $ ( false )
        d1594 : ( ( Set -> Set ) ∋ ( ( λ x15960 -> ( ( Set -> Set ) ∋ ( ( λ x15970 -> if false then x15960 else Bool ) ) ) $ ( x15960 ) ) ) ) $ ( if false then Bool else Bool )
        d1594 = ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> if d1301 then d1092 else x15950 ) ) ) $ ( if true then d546 else true )
        d1598 : ( ( Set -> Set ) ∋ ( ( λ x16020 -> ( ( Set -> Set ) ∋ ( ( λ x16030 -> if true then x16030 else x16020 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1598 = if ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> x15990 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> d128 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> x16010 ) ) ) $ ( d609 )
        d1604 : if false then ( ( Set -> Set ) ∋ ( ( λ x16080 -> x16080 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1604 = if ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> d1332 ) ) ) $ ( d1183 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> x16060 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16070 -> x16070 ) ) ) $ ( d629 )
        d1609 : ( ( Set -> Set ) ∋ ( ( λ x16110 -> ( ( Set -> Set ) ∋ ( ( λ x16120 -> if true then Bool else x16110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1609 = ( ( Bool -> Bool ) ∋ ( ( λ x16100 -> if true then true else false ) ) ) $ ( if true then false else false )
        d1613 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16150 -> x16150 ) ) ) $ ( Bool )
        d1613 = ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> if x16140 then d354 else false ) ) ) $ ( if true then d62 else d697 )
        d1616 : ( ( Set -> Set ) ∋ ( ( λ x16180 -> ( ( Set -> Set ) ∋ ( ( λ x16190 -> if false then x16180 else x16190 ) ) ) $ ( x16180 ) ) ) ) $ ( if false then Bool else Bool )
        d1616 = ( ( Bool -> Bool ) ∋ ( ( λ x16170 -> if true then x16170 else d1118 ) ) ) $ ( if false then false else false )
        d1620 : ( ( Set -> Set ) ∋ ( ( λ x16230 -> if true then Bool else x16230 ) ) ) $ ( if false then Bool else Bool )
        d1620 = if if false then true else d1064 then ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> d526 ) ) ) $ ( d1447 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> x16220 ) ) ) $ ( d26 )
        d1624 : ( ( Set -> Set ) ∋ ( ( λ x16270 -> ( ( Set -> Set ) ∋ ( ( λ x16280 -> if false then Bool else Bool ) ) ) $ ( x16270 ) ) ) ) $ ( if false then Bool else Bool )
        d1624 = if if d324 then d1589 else d582 then ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> x16250 ) ) ) $ ( d474 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16260 -> x16260 ) ) ) $ ( false )
        d1629 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1629 = if ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> x16300 ) ) ) $ ( d40 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> d67 ) ) ) $ ( d229 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> x16320 ) ) ) $ ( d565 )
        d1633 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16360 -> Bool ) ) ) $ ( Bool )
        d1633 = if ( ( Bool -> Bool ) ∋ ( ( λ x16340 -> d803 ) ) ) $ ( false ) then if false then d600 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16350 -> x16350 ) ) ) $ ( d1210 )
        d1637 : ( ( Set -> Set ) ∋ ( ( λ x16400 -> ( ( Set -> Set ) ∋ ( ( λ x16410 -> if false then x16410 else x16410 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1637 = if ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> x16390 ) ) ) $ ( false ) else if true then false else d1504
        d1642 : ( ( Set -> Set ) ∋ ( ( λ x16430 -> ( ( Set -> Set ) ∋ ( ( λ x16440 -> if false then Bool else Bool ) ) ) $ ( x16430 ) ) ) ) $ ( if false then Bool else Bool )
        d1642 = if if d934 then d1262 else false then if true then d787 else d203 else if false then true else d1277
        d1645 : ( ( Set -> Set ) ∋ ( ( λ x16470 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1645 = if if false then true else d803 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> x16460 ) ) ) $ ( true )
        d1648 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1648 = ( ( Bool -> Bool ) ∋ ( ( λ x16490 -> ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> if x16490 then d435 else x16500 ) ) ) $ ( x16490 ) ) ) ) $ ( if d775 then d394 else false )
        d1651 : ( ( Set -> Set ) ∋ ( ( λ x16520 -> if true then Bool else x16520 ) ) ) $ ( if true then Bool else Bool )
        d1651 = if if d398 then d844 else d1253 then if false then true else false else if d996 then d87 else false
        d1653 : if false then ( ( Set -> Set ) ∋ ( ( λ x16550 -> x16550 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1653 = ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> if true then d376 else d1344 ) ) ) $ ( if d84 then d444 else false )
        d1656 : ( ( Set -> Set ) ∋ ( ( λ x16590 -> ( ( Set -> Set ) ∋ ( ( λ x16600 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1656 = if ( ( Bool -> Bool ) ∋ ( ( λ x16570 -> true ) ) ) $ ( d453 ) then if false then d1178 else true else ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> x16580 ) ) ) $ ( d1257 )
        d1661 : ( ( Set -> Set ) ∋ ( ( λ x16630 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1661 = ( ( Bool -> Bool ) ∋ ( ( λ x16620 -> if d1561 then x16620 else d661 ) ) ) $ ( if true then d574 else d1272 )
        d1664 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1664 = if if d790 then d1122 else d1165 then ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> d867 ) ) ) $ ( d1354 ) else if false then false else d189
        d1666 : ( ( Set -> Set ) ∋ ( ( λ x16680 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1666 = ( ( Bool -> Bool ) ∋ ( ( λ x16670 -> if true then x16670 else d1397 ) ) ) $ ( if d931 then d1322 else true )
        d1669 : ( ( Set -> Set ) ∋ ( ( λ x16720 -> ( ( Set -> Set ) ∋ ( ( λ x16730 -> if true then Bool else x16720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1669 = if ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> d677 ) ) ) $ ( true ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> false ) ) ) $ ( true )
        d1674 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16770 -> Bool ) ) ) $ ( Bool )
        d1674 = ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> if x16760 then true else x16760 ) ) ) $ ( d1289 ) ) ) ) $ ( if d162 then true else d1039 )
        d1678 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16790 -> Bool ) ) ) $ ( Bool )
        d1678 = if if true then d694 else d1161 then if false then true else false else if true then d1320 else true
        d1680 : if false then ( ( Set -> Set ) ∋ ( ( λ x16840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16850 -> x16850 ) ) ) $ ( Bool )
        d1680 = if ( ( Bool -> Bool ) ∋ ( ( λ x16810 -> d446 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16820 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16830 -> d1073 ) ) ) $ ( true )
        d1686 : ( ( Set -> Set ) ∋ ( ( λ x16880 -> ( ( Set -> Set ) ∋ ( ( λ x16890 -> if true then x16890 else x16880 ) ) ) $ ( x16880 ) ) ) ) $ ( if true then Bool else Bool )
        d1686 = ( ( Bool -> Bool ) ∋ ( ( λ x16870 -> if d751 then x16870 else x16870 ) ) ) $ ( if d1624 then d340 else false )