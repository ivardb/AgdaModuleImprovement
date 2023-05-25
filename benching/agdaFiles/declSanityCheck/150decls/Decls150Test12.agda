module Decls150Test12  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x30 else x30 ) ) ) $ ( x30 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if x20 then x20 else true ) ) ) $ ( if false then true else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then Bool else x80 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if x60 then false else false ) ) ) $ ( if true then false else true )
        d9 : if true then if true then Bool else Bool else if true then Bool else Bool
        d9 = if if d5 then true else true then if d1 then true else true else if false then d5 else d1
        d10 : if false then ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then false else x110 ) ) ) $ ( if d1 then d9 else d1 )
        d13 : if true then ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool )
        d13 = if ( ( Bool -> Bool ) ∋ ( ( λ x140 -> d10 ) ) ) $ ( d10 ) then ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d5 ) ) ) $ ( d10 ) else ( ( Bool -> Bool ) ∋ ( ( λ x160 -> d5 ) ) ) $ ( d10 )
        d19 : if true then if true then Bool else Bool else if false then Bool else Bool
        d19 = if if false then d13 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x200 -> true ) ) ) $ ( d1 ) else if false then false else false
        d21 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x230 -> x230 ) ) ) $ ( Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d1 then d5 else x220 ) ) ) $ ( if d10 then true else d10 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if ( ( Bool -> Bool ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> false ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> d1 ) ) ) $ ( false )
        d30 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( Bool )
        d30 = if ( ( Bool -> Bool ) ∋ ( ( λ x310 -> false ) ) ) $ ( d13 ) then if d5 then false else d19 else if d13 then true else d1
        d33 : if true then ( ( Set -> Set ) ∋ ( ( λ x350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x360 -> Bool ) ) ) $ ( Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d19 then false else true ) ) ) $ ( if d5 then d24 else false )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then x400 else Bool ) ) ) $ ( if true then Bool else Bool )
        d37 = if if true then d21 else true then ( ( Bool -> Bool ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( d10 ) else ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d1 ) ) ) $ ( d19 )
        d41 : if false then ( ( Set -> Set ) ∋ ( ( λ x430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if x420 then true else false ) ) ) $ ( if true then false else true )
        d45 : if false then ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d45 = if if true then true else d30 then if true then d41 else d1 else if d19 then false else d5
        d47 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> if true then x500 else x500 ) ) ) $ ( x490 ) ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if x480 then true else d41 ) ) ) $ ( if true then false else true )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x540 -> if false then Bool else x540 ) ) ) $ ( if true then Bool else Bool )
        d51 = if if d1 then true else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d45 ) ) ) $ ( d10 ) else ( ( Bool -> Bool ) ∋ ( ( λ x530 -> true ) ) ) $ ( d21 )
        d55 : if true then ( ( Set -> Set ) ∋ ( ( λ x570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x580 -> Bool ) ) ) $ ( Bool )
        d55 = if ( ( Bool -> Bool ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( d21 ) then if false then false else d24 else if false then d5 else false
        d59 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if true then x620 else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = if ( ( Bool -> Bool ) ∋ ( ( λ x600 -> d19 ) ) ) $ ( false ) then if false then d51 else false else ( ( Bool -> Bool ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( d33 )
        d63 : if true then ( ( Set -> Set ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d21 ) ) ) $ ( d55 ) then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> d5 ) ) ) $ ( d41 ) else if d30 then d9 else true
        d67 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x690 -> Bool ) ) ) $ ( Bool )
        d67 = if if true then true else true then if false then d19 else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d55 ) ) ) $ ( true )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then x720 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if false then d33 else d67 ) ) ) $ ( if d24 then d13 else d10 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x750 -> if false then Bool else x750 ) ) ) $ ( if false then Bool else Bool )
        d74 = if if d55 then d59 else true then if false then d19 else false else if d24 then d55 else false
        d76 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if false then d1 else true ) ) ) $ ( x770 ) ) ) ) $ ( if d19 then d13 else false )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = if ( ( Bool -> Bool ) ∋ ( ( λ x820 -> false ) ) ) $ ( d10 ) then if false then d24 else d33 else if d10 then d5 else d51
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = if ( ( Bool -> Bool ) ∋ ( ( λ x860 -> d21 ) ) ) $ ( d63 ) then ( ( Bool -> Bool ) ∋ ( ( λ x870 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x880 -> true ) ) ) $ ( d47 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x920 -> if false then x920 else x920 ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if true then false else false ) ) ) $ ( x900 ) ) ) ) $ ( if false then true else d24 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then Bool else x950 ) ) ) $ ( if false then Bool else Bool )
        d93 = if ( ( Bool -> Bool ) ∋ ( ( λ x940 -> d74 ) ) ) $ ( true ) then if false then true else d81 else if false then true else false
        d96 : if true then ( ( Set -> Set ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d96 = if ( ( Bool -> Bool ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( d13 ) then ( ( Bool -> Bool ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( true ) else if false then d51 else d19
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> if true then Bool else x1030 ) ) ) $ ( x1020 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if if d76 then d55 else d24 then ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d19 ) ) ) $ ( false ) else if d47 then d1 else d85
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then x1060 else x1060 ) ) ) $ ( if true then Bool else Bool )
        d104 = if if true then d96 else false then if false then d41 else d76 else ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( false )
        d107 : if false then if false then Bool else Bool else if false then Bool else Bool
        d107 = if if d76 then d81 else d30 then ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d51 ) ) ) $ ( d30 ) else if d89 then d13 else d24
        d109 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1110 -> Bool ) ) ) $ ( Bool )
        d109 = if if d76 then true else d10 then if false then d10 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> true ) ) ) $ ( true )
        d112 : if false then ( ( Set -> Set ) ∋ ( ( λ x1160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( Bool )
        d112 = if ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d81 ) ) ) $ ( d67 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( d37 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> true ) ) ) $ ( d81 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if false then x1200 else x1200 ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if true then x1190 else x1190 ) ) ) $ ( if d81 then d21 else d19 )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x1230 -> if true then x1230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if true then d10 else false ) ) ) $ ( if d1 then d89 else false )
        d124 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1270 -> Bool ) ) ) $ ( Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> if d59 then true else x1250 ) ) ) $ ( true ) ) ) ) $ ( if d70 then d51 else false )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d128 = if ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> d37 ) ) ) $ ( d104 ) then if d81 then d5 else d104 else if d41 then d85 else d100
        d131 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> ( ( Set -> Set ) ∋ ( ( λ x1350 -> if false then x1350 else Bool ) ) ) $ ( x1340 ) ) ) ) $ ( if false then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if false then true else x1320 ) ) ) $ ( true ) ) ) ) $ ( if d21 then true else true )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if true then Bool else x1390 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d136 = if if true then d70 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> false ) ) ) $ ( d107 ) else if d76 then d47 else d19
        d140 : if false then ( ( Set -> Set ) ∋ ( ( λ x1430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1440 -> Bool ) ) ) $ ( Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if true then true else false ) ) ) $ ( false ) ) ) ) $ ( if d5 then true else d121 )
        d145 : if false then if false then Bool else Bool else if true then Bool else Bool
        d145 = if if d30 then d45 else d9 then if d124 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> false ) ) ) $ ( true )
        d147 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d147 = if if d89 then true else false then if true then d19 else d104 else if false then false else true
        d149 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if x1500 then d63 else x1500 ) ) ) $ ( if d145 then d136 else d5 )
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> if false then x1550 else Bool ) ) ) $ ( if false then Bool else Bool )
        d152 = if ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> d70 ) ) ) $ ( d112 ) then if true then d96 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( d136 )
        d156 : if true then ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1600 -> Bool ) ) ) $ ( Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if d81 then d9 else x1580 ) ) ) $ ( d89 ) ) ) ) $ ( if false then d1 else d13 )
        d161 : if true then ( ( Set -> Set ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( Bool )
        d161 = if if true then true else d51 then ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> d124 ) ) ) $ ( d21 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> false ) ) ) $ ( false )
        d166 : if false then if false then Bool else Bool else if false then Bool else Bool
        d166 = if if false then d45 else d76 then if d81 then false else d63 else ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> x1670 ) ) ) $ ( d112 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then x1700 else Bool ) ) ) $ ( x1700 ) ) ) ) $ ( if false then Bool else Bool )
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if d59 then x1690 else d59 ) ) ) $ ( if d41 then d67 else true )
        d172 : if true then ( ( Set -> Set ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1750 -> Bool ) ) ) $ ( Bool )
        d172 = if if true then true else d89 then ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> false ) ) ) $ ( d112 ) else if false then d5 else true
        d176 : if true then if false then Bool else Bool else if true then Bool else Bool
        d176 = if if d149 then d24 else d93 then ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> true ) ) ) $ ( false ) else if d96 then d24 else d74
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then Bool else Bool ) ) ) $ ( x1800 ) ) ) ) $ ( if true then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if true then d45 else x1790 ) ) ) $ ( if d24 then true else true )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> if false then Bool else x1860 ) ) ) $ ( if true then Bool else Bool )
        d182 = if ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> d140 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> false ) ) ) $ ( true )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then Bool else x1910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if d109 then true else x1890 ) ) ) $ ( x1880 ) ) ) ) $ ( if true then d166 else false )
        d192 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( Bool )
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> if true then d128 else false ) ) ) $ ( d51 ) ) ) ) $ ( if true then d147 else false )
        d196 : if true then ( ( Set -> Set ) ∋ ( ( λ x1980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1990 -> x1990 ) ) ) $ ( Bool )
        d196 = if if d33 then d89 else true then if false then true else d85 else ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> false ) ) ) $ ( d9 )
        d200 : if false then if true then Bool else Bool else if true then Bool else Bool
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> if x2020 then d96 else false ) ) ) $ ( false ) ) ) ) $ ( if d55 then false else d89 )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if true then x2050 else x2050 ) ) ) $ ( if false then Bool else Bool )
        d203 = if if true then d200 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> d13 ) ) ) $ ( true ) else if d168 then true else false
        d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> if d13 then false else false ) ) ) $ ( if d172 then d176 else false )
        d209 : if false then ( ( Set -> Set ) ∋ ( ( λ x2110 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d209 = ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> if x2100 then true else d140 ) ) ) $ ( if false then false else d24 )
        d212 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if true then Bool else x2140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> if true then d131 else d149 ) ) ) $ ( if true then true else true )
        d216 : if true then ( ( Set -> Set ) ∋ ( ( λ x2180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2190 -> x2190 ) ) ) $ ( Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if x2170 then false else x2170 ) ) ) $ ( if d145 then true else d81 )
        d220 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2230 -> x2230 ) ) ) $ ( Bool )
        d220 = if ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d176 ) ) ) $ ( true ) then if d100 then d107 else d178 else ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> d37 ) ) ) $ ( d19 )
        d224 : if true then ( ( Set -> Set ) ∋ ( ( λ x2270 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d224 = if ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> d182 ) ) ) $ ( true ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> d121 ) ) ) $ ( true )
        d228 : if true then ( ( Set -> Set ) ∋ ( ( λ x2320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( Bool )
        d228 = if ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> d140 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> x2300 ) ) ) $ ( d176 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> x2310 ) ) ) $ ( d55 )
        d234 : if false then ( ( Set -> Set ) ∋ ( ( λ x2360 -> x2360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2370 -> x2370 ) ) ) $ ( Bool )
        d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> if x2350 then x2350 else x2350 ) ) ) $ ( if d121 then true else true )
        d238 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> ( ( Set -> Set ) ∋ ( ( λ x2420 -> if true then Bool else x2410 ) ) ) $ ( x2410 ) ) ) ) $ ( if true then Bool else Bool )
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> if d37 then true else false ) ) ) $ ( x2390 ) ) ) ) $ ( if true then true else false )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> if false then x2460 else x2460 ) ) ) $ ( if false then Bool else Bool )
        d243 = if ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( d209 ) then if d234 then d9 else d74 else ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( true )
        d247 : if false then ( ( Set -> Set ) ∋ ( ( λ x2490 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> if x2480 then d93 else false ) ) ) $ ( if false then false else false )
        d250 : if false then ( ( Set -> Set ) ∋ ( ( λ x2530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2540 -> Bool ) ) ) $ ( Bool )
        d250 = if if d19 then false else d85 then ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> d228 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> true ) ) ) $ ( d45 )
        d255 : if false then if false then Bool else Bool else if false then Bool else Bool
        d255 = if if false then d131 else d178 then ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> d228 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> d149 ) ) ) $ ( true )
        d258 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if false then x2610 else Bool ) ) ) $ ( if true then Bool else Bool )
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> if false then true else true ) ) ) $ ( x2590 ) ) ) ) $ ( if false then d156 else true )
        d262 : ( ( Set -> Set ) ∋ ( ( λ x2640 -> if true then x2640 else Bool ) ) ) $ ( if true then Bool else Bool )
        d262 = ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> if x2630 then x2630 else false ) ) ) $ ( if false then false else d121 )
        d265 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> ( ( Set -> Set ) ∋ ( ( λ x2690 -> if true then x2680 else x2680 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> if d45 then true else true ) ) ) $ ( true ) ) ) ) $ ( if false then d224 else d220 )
        d270 : if false then ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d270 = if ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> d172 ) ) ) $ ( d9 ) then if d187 then true else d206 else ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> d70 ) ) ) $ ( d206 )
        d274 : if true then if false then Bool else Bool else if true then Bool else Bool
        d274 = if ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> true ) ) ) $ ( d196 ) then if true then d224 else d81 else if d182 then d161 else d140
        d276 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( Bool )
        d276 = if if d41 then d74 else false then if false then true else true else if d70 then false else d104
        d278 : if false then ( ( Set -> Set ) ∋ ( ( λ x2810 -> x2810 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d278 = ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if true then x2790 else x2800 ) ) ) $ ( true ) ) ) ) $ ( if d24 then d24 else d67 )
        d282 : if true then if false then Bool else Bool else if true then Bool else Bool
        d282 = ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if x2830 then x2830 else d51 ) ) ) $ ( if d192 then false else d96 )
        d284 : if true then ( ( Set -> Set ) ∋ ( ( λ x2870 -> x2870 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2880 -> Bool ) ) ) $ ( Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if d156 then d247 else d203 ) ) ) $ ( d24 ) ) ) ) $ ( if d70 then false else d85 )
        d289 : ( ( Set -> Set ) ∋ ( ( λ x2920 -> if true then x2920 else x2920 ) ) ) $ ( if true then Bool else Bool )
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> if d234 then d81 else d224 ) ) ) $ ( x2900 ) ) ) ) $ ( if d76 then d47 else true )
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if false then x2940 else d149 ) ) ) $ ( if true then d145 else d255 )
        d296 : ( ( Set -> Set ) ∋ ( ( λ x2980 -> ( ( Set -> Set ) ∋ ( ( λ x2990 -> if true then x2980 else x2990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> if d192 then x2970 else x2970 ) ) ) $ ( if d1 then true else d5 )
        d300 : ( ( Set -> Set ) ∋ ( ( λ x3020 -> ( ( Set -> Set ) ∋ ( ( λ x3030 -> if true then x3030 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d300 = ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> if d258 then d107 else false ) ) ) $ ( if d262 then d224 else false )
        d304 : if false then ( ( Set -> Set ) ∋ ( ( λ x3050 -> x3050 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3060 -> Bool ) ) ) $ ( Bool )
        d304 = if if false then d265 else d10 then if d13 then false else d41 else if d30 then false else d109
        d307 : ( ( Set -> Set ) ∋ ( ( λ x3100 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d307 = if if d24 then d147 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> x3080 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> d284 ) ) ) $ ( true )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x3140 -> ( ( Set -> Set ) ∋ ( ( λ x3150 -> if false then x3140 else x3150 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d311 = ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> if true then x3130 else d10 ) ) ) $ ( d234 ) ) ) ) $ ( if d307 then d63 else d112 )
        d316 : ( ( Set -> Set ) ∋ ( ( λ x3190 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> if x3180 then false else x3180 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d311 )
        d320 : if false then if true then Bool else Bool else if true then Bool else Bool
        d320 = if if d172 then false else false then if true then d270 else d47 else if d63 then d289 else d276
        d321 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> if true then Bool else x3230 ) ) ) $ ( if false then Bool else Bool )
        d321 = if ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> d147 ) ) ) $ ( d30 ) then if d247 then true else d112 else if d21 then true else false
        d324 : ( ( Set -> Set ) ∋ ( ( λ x3260 -> if false then x3260 else Bool ) ) ) $ ( if true then Bool else Bool )
        d324 = ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> if x3250 then true else d192 ) ) ) $ ( if d33 then d67 else d152 )
        d327 : ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then x3300 else x3300 ) ) ) $ ( if true then Bool else Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> if true then x3280 else true ) ) ) $ ( x3280 ) ) ) ) $ ( if d1 then d192 else d316 )
        d331 : ( ( Set -> Set ) ∋ ( ( λ x3340 -> ( ( Set -> Set ) ∋ ( ( λ x3350 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d331 = if ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( false ) then if d212 then false else d178 else ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> d212 ) ) ) $ ( d196 )
        d336 : if true then ( ( Set -> Set ) ∋ ( ( λ x3390 -> x3390 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d336 = if ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> x3370 ) ) ) $ ( true ) then if false then d278 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> d63 ) ) ) $ ( true )
        d340 : ( ( Set -> Set ) ∋ ( ( λ x3420 -> if true then Bool else x3420 ) ) ) $ ( if true then Bool else Bool )
        d340 = ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> if false then x3410 else x3410 ) ) ) $ ( if true then true else true )
        d343 : if false then if true then Bool else Bool else if false then Bool else Bool
        d343 = ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> if d136 then false else false ) ) ) $ ( if true then d1 else d296 )
        d345 : if true then if false then Bool else Bool else if true then Bool else Bool
        d345 = if ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> d228 ) ) ) $ ( d182 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> true ) ) ) $ ( d37 )
        d349 : if false then ( ( Set -> Set ) ∋ ( ( λ x3510 -> x3510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3520 -> Bool ) ) ) $ ( Bool )
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> if d238 then x3500 else d100 ) ) ) $ ( if false then d1 else d121 )
        d353 : if false then ( ( Set -> Set ) ∋ ( ( λ x3550 -> x3550 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d353 = ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> if x3540 then false else d136 ) ) ) $ ( if d149 then true else d24 )
        d356 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( Bool )
        d356 = if if d234 then d9 else d33 then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> x3570 ) ) ) $ ( true )
        d359 : ( ( Set -> Set ) ∋ ( ( λ x3620 -> ( ( Set -> Set ) ∋ ( ( λ x3630 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d359 = if ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> true ) ) ) $ ( false ) else if false then false else true
        d364 : ( ( Set -> Set ) ∋ ( ( λ x3660 -> if true then x3660 else Bool ) ) ) $ ( if false then Bool else Bool )
        d364 = if if true then d45 else d212 then ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> true ) ) ) $ ( d316 ) else if d107 then d128 else false
        d367 : if false then ( ( Set -> Set ) ∋ ( ( λ x3700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if d234 then false else x3690 ) ) ) $ ( x3680 ) ) ) ) $ ( if false then d206 else false )
        d372 : if true then ( ( Set -> Set ) ∋ ( ( λ x3740 -> x3740 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> if true then d136 else d107 ) ) ) $ ( if false then true else d118 )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then Bool else Bool ) ) ) $ ( x3780 ) ) ) ) $ ( if true then Bool else Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if d109 then true else false ) ) ) $ ( true ) ) ) ) $ ( if false then d340 else d140 )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> ( ( Set -> Set ) ∋ ( ( λ x3830 -> if false then Bool else x3830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d380 = if if d21 then false else false then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> d262 ) ) ) $ ( d343 )
        d384 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3870 -> x3870 ) ) ) $ ( Bool )
        d384 = if ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( true ) then if d118 then d340 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> false ) ) ) $ ( true )
        d388 : if true then if false then Bool else Bool else if false then Bool else Bool
        d388 = if if true then false else d300 then if d161 then d296 else d250 else if false then false else d51
        d389 : if true then if false then Bool else Bool else if true then Bool else Bool
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> if false then x3900 else x3900 ) ) ) $ ( if false then d359 else d293 )
        d391 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> if false then Bool else x3920 ) ) ) $ ( if false then Bool else Bool )
        d391 = if if d228 then true else true then if false then d343 else d149 else if d109 then d21 else d224
        d393 : ( ( Set -> Set ) ∋ ( ( λ x3960 -> if true then x3960 else Bool ) ) ) $ ( if true then Bool else Bool )
        d393 = if ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> x3940 ) ) ) $ ( true ) then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> d364 ) ) ) $ ( d307 )
        d397 : if true then if false then Bool else Bool else if true then Bool else Bool
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> if true then x3990 else x3990 ) ) ) $ ( x3980 ) ) ) ) $ ( if false then d324 else d187 )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4020 -> if false then x4020 else Bool ) ) ) $ ( if false then Bool else Bool )
        d400 = ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> if x4010 then false else x4010 ) ) ) $ ( if true then d255 else false )
        d403 : ( ( Set -> Set ) ∋ ( ( λ x4060 -> ( ( Set -> Set ) ∋ ( ( λ x4070 -> if true then x4070 else x4070 ) ) ) $ ( x4060 ) ) ) ) $ ( if true then Bool else Bool )
        d403 = if ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> true ) ) ) $ ( false ) then if d13 then d200 else d212 else ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( false )
        d408 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4110 -> Bool ) ) ) $ ( Bool )
        d408 = if ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( false ) else if d343 then true else true
        d412 : ( ( Set -> Set ) ∋ ( ( λ x4150 -> ( ( Set -> Set ) ∋ ( ( λ x4160 -> if false then x4150 else x4150 ) ) ) $ ( x4150 ) ) ) ) $ ( if true then Bool else Bool )
        d412 = ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> if true then d45 else x4130 ) ) ) $ ( d5 ) ) ) ) $ ( if d220 then true else d278 )
        d417 : ( ( Set -> Set ) ∋ ( ( λ x4190 -> if true then x4190 else x4190 ) ) ) $ ( if true then Bool else Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if true then true else d5 ) ) ) $ ( if d203 then true else d311 )
        d420 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> if false then x4230 else x4230 ) ) ) $ ( if true then Bool else Bool )
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if true then true else true ) ) ) $ ( x4210 ) ) ) ) $ ( if true then false else false )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> if false then x4270 else x4270 ) ) ) $ ( if false then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> if d192 then true else false ) ) ) $ ( d212 ) ) ) ) $ ( if d63 then false else d250 )
        d428 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> if d45 then d131 else d412 ) ) ) $ ( d118 ) ) ) ) $ ( if false then d89 else true )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4350 -> if false then x4350 else Bool ) ) ) $ ( if true then Bool else Bool )
        d432 = if ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> true ) ) ) $ ( d353 ) else if true then d96 else d408
        d436 : if true then ( ( Set -> Set ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( Bool )
        d436 = if ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> false ) ) ) $ ( false ) then if d147 then d85 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> false ) ) ) $ ( d224 )
        d441 : ( ( Set -> Set ) ∋ ( ( λ x4440 -> ( ( Set -> Set ) ∋ ( ( λ x4450 -> if true then x4450 else x4440 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d441 = ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if d289 then x4430 else x4430 ) ) ) $ ( x4420 ) ) ) ) $ ( if true then false else false )
        d446 : if true then ( ( Set -> Set ) ∋ ( ( λ x4490 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4500 -> x4500 ) ) ) $ ( Bool )
        d446 = if ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> x4470 ) ) ) $ ( d51 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> false ) ) ) $ ( d128 ) else if false then false else true
        d451 : ( ( Set -> Set ) ∋ ( ( λ x4540 -> if true then x4540 else Bool ) ) ) $ ( if true then Bool else Bool )
        d451 = ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> if false then x4530 else d417 ) ) ) $ ( d274 ) ) ) ) $ ( if d336 then true else true )
        d455 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4580 -> x4580 ) ) ) $ ( Bool )
        d455 = if if d276 then d349 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> x4560 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> false ) ) ) $ ( d380 )
        d459 : ( ( Set -> Set ) ∋ ( ( λ x4620 -> if false then x4620 else x4620 ) ) ) $ ( if true then Bool else Bool )
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if false then d428 else false ) ) ) $ ( d187 ) ) ) ) $ ( if true then d81 else d400 )
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4660 -> if false then Bool else x4660 ) ) ) $ ( if true then Bool else Bool )
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> if true then d145 else true ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d467 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4690 -> Bool ) ) ) $ ( Bool )
        d467 = if if true then d104 else d30 then if d300 then d412 else d55 else ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> true ) ) ) $ ( d45 )
        d470 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4740 -> Bool ) ) ) $ ( Bool )
        d470 = if ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> d316 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> true ) ) ) $ ( d364 )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x4780 -> if false then Bool else x4780 ) ) ) $ ( if false then Bool else Bool )
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if x4760 then d203 else x4760 ) ) ) $ ( x4760 ) ) ) ) $ ( if true then true else d353 )
        d479 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4810 -> x4810 ) ) ) $ ( Bool )
        d479 = if if true then d166 else true then if d343 then false else d76 else ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> true ) ) ) $ ( d424 )
        d482 : if false then ( ( Set -> Set ) ∋ ( ( λ x4830 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d482 = if if d353 then d85 else false then if true then true else true else if true then true else d331
        d484 : ( ( Set -> Set ) ∋ ( ( λ x4870 -> if false then Bool else x4870 ) ) ) $ ( if false then Bool else Bool )
        d484 = if ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> d161 ) ) ) $ ( d367 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> x4860 ) ) ) $ ( d417 ) else if d21 then true else d393
        d488 : ( ( Set -> Set ) ∋ ( ( λ x4900 -> ( ( Set -> Set ) ∋ ( ( λ x4910 -> if true then Bool else Bool ) ) ) $ ( x4900 ) ) ) ) $ ( if true then Bool else Bool )
        d488 = if if false then true else d59 then if d192 then d331 else d166 else ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> x4890 ) ) ) $ ( false )
        d492 : if true then if true then Bool else Bool else if true then Bool else Bool
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if d367 then x4930 else false ) ) ) $ ( false ) ) ) ) $ ( if d168 then false else d455 )
        d495 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> ( ( Set -> Set ) ∋ ( ( λ x4980 -> if false then Bool else x4980 ) ) ) $ ( x4970 ) ) ) ) $ ( if true then Bool else Bool )
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> if d367 then x4960 else d55 ) ) ) $ ( if true then d238 else false )
        d499 : if true then ( ( Set -> Set ) ∋ ( ( λ x5020 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d499 = if ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> false ) ) ) $ ( d475 ) then if d100 then false else d446 else ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> d467 ) ) ) $ ( false )
        d503 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if true then x5080 else x5070 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d503 = if ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> d441 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> x5060 ) ) ) $ ( false )
        d509 : if false then ( ( Set -> Set ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d509 = if if d121 then d24 else d484 then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> d372 ) ) ) $ ( d278 )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5140 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> if false then x5130 else d30 ) ) ) $ ( if false then false else d74 )
        d515 : ( ( Set -> Set ) ∋ ( ( λ x5180 -> ( ( Set -> Set ) ∋ ( ( λ x5190 -> if true then Bool else x5190 ) ) ) $ ( x5180 ) ) ) ) $ ( if false then Bool else Bool )
        d515 = if ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> x5160 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> x5170 ) ) ) $ ( false ) else if d41 then true else false
        d520 : if false then ( ( Set -> Set ) ∋ ( ( λ x5230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5240 -> x5240 ) ) ) $ ( Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> if d70 then false else x5220 ) ) ) $ ( d262 ) ) ) ) $ ( if d512 then d446 else d196 )
        d525 : if true then ( ( Set -> Set ) ∋ ( ( λ x5280 -> x5280 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d525 = if ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> true ) ) ) $ ( true ) then if false then d243 else d224 else ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> true ) ) ) $ ( true )
        d529 : ( ( Set -> Set ) ∋ ( ( λ x5310 -> ( ( Set -> Set ) ∋ ( ( λ x5320 -> if true then x5310 else Bool ) ) ) $ ( x5310 ) ) ) ) $ ( if false then Bool else Bool )
        d529 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> x5300 ) ) ) $ ( false ) else if d5 then true else true
        d533 : if true then ( ( Set -> Set ) ∋ ( ( λ x5350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5360 -> x5360 ) ) ) $ ( Bool )
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if d96 then d140 else x5340 ) ) ) $ ( if d380 then false else d276 )
        d537 : ( ( Set -> Set ) ∋ ( ( λ x5390 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> if x5380 then x5380 else x5380 ) ) ) $ ( if false then false else true )
        d540 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5420 -> x5420 ) ) ) $ ( Bool )
        d540 = if ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> d446 ) ) ) $ ( false ) then if false then d420 else d321 else if d503 then d243 else false
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> if false then Bool else x5450 ) ) ) $ ( if true then Bool else Bool )
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if true then d70 else true ) ) ) $ ( if d85 then false else d140 )
        d546 : ( ( Set -> Set ) ∋ ( ( λ x5490 -> if true then Bool else x5490 ) ) ) $ ( if false then Bool else Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> if true then false else x5480 ) ) ) $ ( d33 ) ) ) ) $ ( if d282 then d216 else false )
        d550 : ( ( Set -> Set ) ∋ ( ( λ x5530 -> if false then x5530 else Bool ) ) ) $ ( if false then Bool else Bool )
        d550 = ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> if x5520 then x5510 else x5520 ) ) ) $ ( true ) ) ) ) $ ( if true then d203 else d37 )
        d554 : if false then ( ( Set -> Set ) ∋ ( ( λ x5560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5570 -> Bool ) ) ) $ ( Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> if d147 then true else x5550 ) ) ) $ ( if true then d463 else false )