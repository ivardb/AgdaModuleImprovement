module Decls150Test16  where
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
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then false else true ) ) ) $ ( x20 ) ) ) ) $ ( if true then false else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x80 else x90 ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if if d1 then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( true )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x120 else x120 ) ) ) $ ( x120 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if true then false else x110 ) ) ) $ ( if false then d5 else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then x160 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if x150 then x150 else true ) ) ) $ ( if d1 then false else d1 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> if false then x210 else x220 ) ) ) $ ( x210 ) ) ) ) $ ( if false then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if x190 then false else x200 ) ) ) $ ( d10 ) ) ) ) $ ( if false then false else true )
        d23 : if false then if true then Bool else Bool else if false then Bool else Bool
        d23 = if ( ( Bool -> Bool ) ∋ ( ( λ x240 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( d14 ) else ( ( Bool -> Bool ) ∋ ( ( λ x260 -> d1 ) ) ) $ ( false )
        d27 : if true then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if x280 then d18 else x280 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d1 )
        d30 : if false then if false then Bool else Bool else if false then Bool else Bool
        d30 = if if false then true else d10 then ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d1 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d1 ) ) ) $ ( false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if true then Bool else x360 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d5 then x340 else x340 ) ) ) $ ( if false then d30 else false )
        d37 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x390 -> x390 ) ) ) $ ( Bool )
        d37 = if ( ( Bool -> Bool ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( false ) then if d18 then true else d33 else if true then d18 else d18
        d40 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then x420 else x420 ) ) ) $ ( if false then Bool else Bool )
        d40 = if if d5 then d23 else d10 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x410 -> d1 ) ) ) $ ( d10 )
        d43 : if true then if true then Bool else Bool else if false then Bool else Bool
        d43 = if if d30 then false else d27 then if true then d23 else false else if true then false else true
        d44 : ( ( Set -> Set ) ∋ ( ( λ x460 -> if true then x460 else x460 ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if d10 then x450 else d23 ) ) ) $ ( if d37 then d40 else false )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then Bool else x490 ) ) ) $ ( if true then Bool else Bool )
        d47 = if ( ( Bool -> Bool ) ∋ ( ( λ x480 -> true ) ) ) $ ( true ) then if true then true else false else if false then false else d33
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> if true then x520 else x520 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if d1 then true else x510 ) ) ) $ ( if d23 then false else d5 )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> if false then x550 else Bool ) ) ) $ ( x540 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = if if d44 then true else d23 then if d23 then true else true else if true then d27 else true
        d56 : if true then if false then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if true then true else x570 ) ) ) $ ( if d47 then d40 else d43 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x610 -> ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> true ) ) ) $ ( d56 ) then ( ( Bool -> Bool ) ∋ ( ( λ x600 -> d44 ) ) ) $ ( d30 ) else if false then false else true
        d63 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then x650 else x660 ) ) ) $ ( x650 ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if false then d33 else d27 then ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d18 ) ) ) $ ( d1 ) else if d53 then false else d30
        d67 : if true then ( ( Set -> Set ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if d10 then x680 else d63 ) ) ) $ ( if d53 then false else false )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x730 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> if false then x740 else Bool ) ) ) $ ( x730 ) ) ) ) $ ( if false then Bool else Bool )
        d70 = if if true then d10 else false then ( ( Bool -> Bool ) ∋ ( ( λ x710 -> d50 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d14 ) ) ) $ ( d40 )
        d75 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x780 -> Bool ) ) ) $ ( Bool )
        d75 = if if true then d56 else d47 then ( ( Bool -> Bool ) ∋ ( ( λ x760 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d23 ) ) ) $ ( d50 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> if false then x810 else Bool ) ) ) $ ( x810 ) ) ) ) $ ( if false then Bool else Bool )
        d79 = if ( ( Bool -> Bool ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( false ) then if d23 then d43 else d67 else if d56 then false else true
        d83 : if false then ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d83 = if ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( false ) then if true then d40 else true else ( ( Bool -> Bool ) ∋ ( ( λ x850 -> d5 ) ) ) $ ( d53 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> if true then x900 else x910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d87 = if ( ( Bool -> Bool ) ∋ ( ( λ x880 -> true ) ) ) $ ( d40 ) then if d5 then d79 else d50 else ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d33 ) ) ) $ ( d33 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x940 -> if false then x940 else Bool ) ) ) $ ( if true then Bool else Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d63 ) ) ) $ ( d18 ) then if d10 then true else true else if false then d79 else d56
        d95 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then Bool else x990 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if x970 then d47 else false ) ) ) $ ( x960 ) ) ) ) $ ( if false then d58 else d75 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then Bool else x1030 ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if d23 then x1010 else d47 ) ) ) $ ( x1010 ) ) ) ) $ ( if true then d33 else false )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then x1070 else Bool ) ) ) $ ( x1060 ) ) ) ) $ ( if false then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d10 then x1050 else d47 ) ) ) $ ( if d23 then d83 else true )
        d108 : if false then ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if d10 then d63 else true ) ) ) $ ( if true then d92 else d50 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> ( ( Set -> Set ) ∋ ( ( λ x1150 -> if false then x1150 else Bool ) ) ) $ ( x1140 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = if ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d104 ) ) ) $ ( d83 ) then if false then d104 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> true ) ) ) $ ( false )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> if true then Bool else x1180 ) ) ) $ ( x1180 ) ) ) ) $ ( if false then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if d5 then true else d18 ) ) ) $ ( if d108 then false else d83 )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1230 -> ( ( Set -> Set ) ∋ ( ( λ x1240 -> if true then x1230 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d120 = if ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> true ) ) ) $ ( d37 ) then if d70 then d87 else d58 else ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> d116 ) ) ) $ ( false )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then x1270 else Bool ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> if x1260 then x1260 else x1260 ) ) ) $ ( if d92 then d95 else d40 )
        d128 : if false then ( ( Set -> Set ) ∋ ( ( λ x1300 -> x1300 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> if false then d63 else d58 ) ) ) $ ( if false then d79 else false )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> if false then x1340 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if x1320 then false else x1320 ) ) ) $ ( if d116 then d75 else d111 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if true then x1390 else Bool ) ) ) $ ( x1380 ) ) ) ) $ ( if false then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if x1360 then x1360 else x1360 ) ) ) $ ( true ) ) ) ) $ ( if d40 then false else true )
        d140 : if false then ( ( Set -> Set ) ∋ ( ( λ x1420 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1430 -> Bool ) ) ) $ ( Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> if false then d75 else true ) ) ) $ ( if true then false else false )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> if false then x1460 else Bool ) ) ) $ ( if false then Bool else Bool )
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if x1450 then x1450 else true ) ) ) $ ( if d92 then d111 else false )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d147 = if if true then true else true then if false then d53 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( true )
        d150 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then Bool else Bool ) ) ) $ ( x1520 ) ) ) ) $ ( if false then Bool else Bool )
        d150 = ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if d44 then x1510 else x1510 ) ) ) $ ( if false then d116 else d125 )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if true then Bool else x1560 ) ) ) $ ( if false then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if x1550 then d100 else true ) ) ) $ ( if true then false else false )
        d157 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if false then true else x1580 ) ) ) $ ( if true then d1 else true )
        d161 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d161 = if ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( d75 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> d131 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> true ) ) ) $ ( false )
        d166 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> ( ( Set -> Set ) ∋ ( ( λ x1700 -> if true then Bool else x1700 ) ) ) $ ( x1690 ) ) ) ) $ ( if false then Bool else Bool )
        d166 = if ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> x1670 ) ) ) $ ( d111 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( false ) else if d144 then d120 else false
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> if true then Bool else x1740 ) ) ) $ ( if false then Bool else Bool )
        d171 = if ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( false ) then if d14 then d92 else d120 else ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( true )
        d175 : if true then ( ( Set -> Set ) ∋ ( ( λ x1770 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if true then x1760 else x1760 ) ) ) $ ( if d1 then d63 else false )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then x1810 else x1820 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> if x1790 then true else x1790 ) ) ) $ ( true ) ) ) ) $ ( if d30 then false else d37 )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> ( ( Set -> Set ) ∋ ( ( λ x1870 -> if false then Bool else x1870 ) ) ) $ ( x1860 ) ) ) ) $ ( if true then Bool else Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if true then x1840 else d175 ) ) ) $ ( x1840 ) ) ) ) $ ( if d1 then false else d43 )
        d188 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> if true then x1900 else x1900 ) ) ) $ ( if true then Bool else Bool )
        d188 = if ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> true ) ) ) $ ( false ) then if d63 then false else false else if d56 then d161 else false
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> ( ( Set -> Set ) ∋ ( ( λ x1940 -> if true then x1930 else x1940 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d191 = if if false then false else d14 then ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> x1920 ) ) ) $ ( false ) else if d104 then d166 else false
        d195 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( Bool )
        d195 = ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if x1960 then d37 else false ) ) ) $ ( if false then false else false )
        d198 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> ( ( Set -> Set ) ∋ ( ( λ x2010 -> if true then Bool else x2000 ) ) ) $ ( x2000 ) ) ) ) $ ( if false then Bool else Bool )
        d198 = if if d111 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> d53 ) ) ) $ ( false ) else if false then d23 else false
        d202 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d202 = if if false then d161 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( false ) else if true then false else false
        d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d206 = if if true then d53 else d198 then ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( d108 ) else if true then d144 else d147
        d209 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d209 = if ( ( Bool -> Bool ) ∋ ( ( λ x2100 -> d206 ) ) ) $ ( d166 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( false ) else if d95 then false else false
        d213 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2150 -> Bool ) ) ) $ ( Bool )
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> if d92 then d108 else x2140 ) ) ) $ ( if true then d53 else false )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> ( ( Set -> Set ) ∋ ( ( λ x2190 -> if true then x2190 else Bool ) ) ) $ ( x2180 ) ) ) ) $ ( if false then Bool else Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if false then d111 else d166 ) ) ) $ ( if d18 then true else d147 )
        d220 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> if true then x2220 else x2220 ) ) ) $ ( if true then Bool else Bool )
        d220 = if if d43 then d44 else d92 then if d125 then true else d75 else ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d157 ) ) ) $ ( d202 )
        d223 : ( ( Set -> Set ) ∋ ( ( λ x2260 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d223 = if if false then d206 else d104 then ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> d44 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> true ) ) ) $ ( false )
        d227 : if true then ( ( Set -> Set ) ∋ ( ( λ x2300 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d227 = if ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> x2280 ) ) ) $ ( d5 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> x2290 ) ) ) $ ( false )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x2340 -> if true then x2340 else Bool ) ) ) $ ( if false then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> if true then d5 else x2320 ) ) ) $ ( false ) ) ) ) $ ( if d195 then d44 else d198 )
        d235 : ( ( Set -> Set ) ∋ ( ( λ x2370 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d235 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> true ) ) ) $ ( true ) else if d50 then d188 else false
        d238 : ( ( Set -> Set ) ∋ ( ( λ x2400 -> ( ( Set -> Set ) ∋ ( ( λ x2410 -> if false then x2410 else Bool ) ) ) $ ( x2400 ) ) ) ) $ ( if false then Bool else Bool )
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> if d58 then d75 else x2390 ) ) ) $ ( if d18 then true else true )
        d242 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> if true then x2460 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d242 = if ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> x2440 ) ) ) $ ( d216 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> false ) ) ) $ ( d235 )
        d248 : if false then ( ( Set -> Set ) ∋ ( ( λ x2510 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if true then false else false ) ) ) $ ( d120 ) ) ) ) $ ( if d220 then d140 else true )
        d252 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then x2540 else Bool ) ) ) $ ( if true then Bool else Bool )
        d252 = if ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( d220 ) then if d30 then true else false else if d33 then true else d100
        d255 : if true then ( ( Set -> Set ) ∋ ( ( λ x2580 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2590 -> Bool ) ) ) $ ( Bool )
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> if false then true else d63 ) ) ) $ ( d223 ) ) ) ) $ ( if d100 then false else true )
        d260 : if false then ( ( Set -> Set ) ∋ ( ( λ x2640 -> x2640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2650 -> Bool ) ) ) $ ( Bool )
        d260 = if ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> d75 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> false ) ) ) $ ( d216 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( false )
        d266 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> ( ( Set -> Set ) ∋ ( ( λ x2690 -> if true then Bool else x2690 ) ) ) $ ( x2680 ) ) ) ) $ ( if true then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> if d67 then d144 else d255 ) ) ) $ ( if false then d63 else d175 )
        d270 : if false then ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> if d220 then d183 else false ) ) ) $ ( d37 ) ) ) ) $ ( if false then true else true )
        d274 : if false then ( ( Set -> Set ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if d223 then false else false ) ) ) $ ( if true then true else d231 )
        d277 : ( ( Set -> Set ) ∋ ( ( λ x2790 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d277 = if if false then d108 else true then if d120 then true else d150 else ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> true ) ) ) $ ( d242 )
        d280 : if false then if false then Bool else Bool else if true then Bool else Bool
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> if x2820 then false else x2810 ) ) ) $ ( d104 ) ) ) ) $ ( if true then false else false )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then x2860 else x2860 ) ) ) $ ( x2860 ) ) ) ) $ ( if false then Bool else Bool )
        d283 = if ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> x2840 ) ) ) $ ( true ) then if false then d40 else d37 else ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> true ) ) ) $ ( false )
        d288 : if true then ( ( Set -> Set ) ∋ ( ( λ x2910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2920 -> Bool ) ) ) $ ( Bool )
        d288 = if ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> d79 ) ) ) $ ( d37 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> d255 ) ) ) $ ( false ) else if true then false else d100
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2970 -> if true then x2970 else Bool ) ) ) $ ( if true then Bool else Bool )
        d293 = if ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> x2940 ) ) ) $ ( d140 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> x2950 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> d183 ) ) ) $ ( false )
        d298 : if true then if false then Bool else Bool else if false then Bool else Bool
        d298 = if if d140 then false else d33 then if d175 then true else false else if false then d79 else d223
        d299 : if false then ( ( Set -> Set ) ∋ ( ( λ x3030 -> x3030 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d299 = if ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> x3000 ) ) ) $ ( d135 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> x3020 ) ) ) $ ( false )
        d304 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d304 = ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> if true then false else x3050 ) ) ) $ ( x3050 ) ) ) ) $ ( if d116 then d10 else d154 )
        d308 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( Bool )
        d308 = if if d198 then d14 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> d277 ) ) ) $ ( false )
        d312 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> ( ( Set -> Set ) ∋ ( ( λ x3160 -> if true then Bool else x3150 ) ) ) $ ( x3150 ) ) ) ) $ ( if false then Bool else Bool )
        d312 = if ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> d70 ) ) ) $ ( d238 ) then if d206 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> false ) ) ) $ ( true )
        d317 : ( ( Set -> Set ) ∋ ( ( λ x3190 -> ( ( Set -> Set ) ∋ ( ( λ x3200 -> if true then x3200 else x3200 ) ) ) $ ( x3190 ) ) ) ) $ ( if true then Bool else Bool )
        d317 = if if true then false else false then if false then true else d67 else ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> x3180 ) ) ) $ ( true )
        d321 : ( ( Set -> Set ) ∋ ( ( λ x3230 -> if false then x3230 else Bool ) ) ) $ ( if false then Bool else Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> if x3220 then x3220 else false ) ) ) $ ( if true then d30 else d63 )
        d324 : ( ( Set -> Set ) ∋ ( ( λ x3270 -> ( ( Set -> Set ) ∋ ( ( λ x3280 -> if false then Bool else x3280 ) ) ) $ ( x3270 ) ) ) ) $ ( if false then Bool else Bool )
        d324 = if ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> d111 ) ) ) $ ( d270 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> d144 ) ) ) $ ( d157 ) else if d14 then false else false
        d329 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> if true then x3320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d329 = if ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> true ) ) ) $ ( false ) then if d308 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> x3310 ) ) ) $ ( true )
        d333 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> ( ( Set -> Set ) ∋ ( ( λ x3370 -> if false then x3370 else x3360 ) ) ) $ ( x3360 ) ) ) ) $ ( if true then Bool else Bool )
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> if false then true else x3350 ) ) ) $ ( d63 ) ) ) ) $ ( if true then true else true )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3400 -> if false then x3400 else x3400 ) ) ) $ ( if true then Bool else Bool )
        d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> if x3390 then x3390 else d67 ) ) ) $ ( if true then d242 else d116 )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> if false then x3440 else x3440 ) ) ) $ ( if false then Bool else Bool )
        d341 = if if false then d338 else true then ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> x3420 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> true ) ) ) $ ( d10 )
        d345 : if false then ( ( Set -> Set ) ∋ ( ( λ x3480 -> x3480 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d345 = if ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> true ) ) ) $ ( d56 ) then if d147 then false else d104 else ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> true ) ) ) $ ( true )
        d349 : ( ( Set -> Set ) ∋ ( ( λ x3520 -> if true then x3520 else x3520 ) ) ) $ ( if false then Bool else Bool )
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> if x3500 then x3510 else x3500 ) ) ) $ ( x3500 ) ) ) ) $ ( if true then false else d27 )
        d353 : if true then ( ( Set -> Set ) ∋ ( ( λ x3560 -> x3560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d353 = if ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> d288 ) ) ) $ ( d166 ) then if d87 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> false ) ) ) $ ( true )
        d357 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> if true then Bool else x3600 ) ) ) $ ( if false then Bool else Bool )
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if true then false else d131 ) ) ) $ ( d213 ) ) ) ) $ ( if true then false else true )
        d361 : if true then if true then Bool else Bool else if true then Bool else Bool
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> d329 ) ) ) $ ( d47 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( d50 ) else if d75 then d37 else d206
        d364 : if false then ( ( Set -> Set ) ∋ ( ( λ x3660 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> if x3650 then false else x3650 ) ) ) $ ( if d338 then true else false )
        d367 : if true then ( ( Set -> Set ) ∋ ( ( λ x3700 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if false then d231 else x3690 ) ) ) $ ( x3680 ) ) ) ) $ ( if true then true else d266 )
        d371 : if true then ( ( Set -> Set ) ∋ ( ( λ x3730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3740 -> x3740 ) ) ) $ ( Bool )
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> if x3720 then false else d260 ) ) ) $ ( if false then false else false )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then x3780 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d375 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> d33 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> d47 ) ) ) $ ( true )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> ( ( Set -> Set ) ∋ ( ( λ x3830 -> if false then Bool else x3830 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d380 = if if true then false else d27 then if d135 then d5 else d213 else ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( d175 )
        d384 : ( ( Set -> Set ) ∋ ( ( λ x3870 -> ( ( Set -> Set ) ∋ ( ( λ x3880 -> if false then x3880 else x3880 ) ) ) $ ( x3870 ) ) ) ) $ ( if true then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> if x3860 then x3850 else d213 ) ) ) $ ( d175 ) ) ) ) $ ( if true then true else d308 )
        d389 : if false then ( ( Set -> Set ) ∋ ( ( λ x3920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3930 -> x3930 ) ) ) $ ( Bool )
        d389 = if ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> d131 ) ) ) $ ( true ) then if d308 then d5 else d100 else ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> x3910 ) ) ) $ ( false )
        d394 : if true then if true then Bool else Bool else if true then Bool else Bool
        d394 = if ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> d198 ) ) ) $ ( false ) else if d367 then true else d50
        d397 : if false then if true then Bool else Bool else if false then Bool else Bool
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if x3980 then d131 else true ) ) ) $ ( if d280 then d238 else false )
        d399 : ( ( Set -> Set ) ∋ ( ( λ x4020 -> if false then Bool else x4020 ) ) ) $ ( if false then Bool else Bool )
        d399 = ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> if d33 then false else true ) ) ) $ ( true ) ) ) ) $ ( if d125 then true else d157 )
        d403 : ( ( Set -> Set ) ∋ ( ( λ x4050 -> ( ( Set -> Set ) ∋ ( ( λ x4060 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d403 = ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if false then true else x4040 ) ) ) $ ( if d135 then d33 else d216 )
        d407 : ( ( Set -> Set ) ∋ ( ( λ x4090 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d407 = if ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> false ) ) ) $ ( true ) then if true then true else d188 else if false then d277 else d399
        d410 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> if true then x4120 else Bool ) ) ) $ ( if true then Bool else Bool )
        d410 = if if true then false else d216 then if true then true else d361 else ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( false )
        d413 : if false then ( ( Set -> Set ) ∋ ( ( λ x4160 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d413 = if ( ( Bool -> Bool ) ∋ ( ( λ x4140 -> true ) ) ) $ ( false ) then if false then true else d125 else ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> x4150 ) ) ) $ ( true )
        d417 : if true then ( ( Set -> Set ) ∋ ( ( λ x4200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4210 -> Bool ) ) ) $ ( Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> if true then d288 else true ) ) ) $ ( d298 ) ) ) ) $ ( if d293 then d18 else d293 )
        d422 : if true then ( ( Set -> Set ) ∋ ( ( λ x4250 -> x4250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4260 -> Bool ) ) ) $ ( Bool )
        d422 = ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> if d364 then x4240 else x4230 ) ) ) $ ( x4230 ) ) ) ) $ ( if false then false else d135 )
        d427 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> ( ( Set -> Set ) ∋ ( ( λ x4310 -> if false then x4310 else x4300 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d427 = ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> if x4290 then true else true ) ) ) $ ( true ) ) ) ) $ ( if false then d144 else true )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4350 -> if false then x4350 else x4350 ) ) ) $ ( if true then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> if x4330 then d178 else false ) ) ) $ ( d364 ) ) ) ) $ ( if d166 then true else true )
        d436 : ( ( Set -> Set ) ∋ ( ( λ x4390 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> if x4380 then false else d353 ) ) ) $ ( x4370 ) ) ) ) $ ( if true then true else true )
        d440 : ( ( Set -> Set ) ∋ ( ( λ x4420 -> ( ( Set -> Set ) ∋ ( ( λ x4430 -> if false then x4430 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> if false then false else true ) ) ) $ ( if false then false else d380 )
        d444 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4460 -> x4460 ) ) ) $ ( Bool )
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> if true then true else d345 ) ) ) $ ( if d140 then d157 else d399 )
        d447 : if true then ( ( Set -> Set ) ∋ ( ( λ x4490 -> x4490 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d447 = ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> if d270 then d361 else d410 ) ) ) $ ( if false then d131 else d349 )
        d450 : if true then if true then Bool else Bool else if true then Bool else Bool
        d450 = if ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> d283 ) ) ) $ ( d436 ) then if d298 then d410 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> x4520 ) ) ) $ ( d188 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x4560 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d453 = if if d223 then d44 else d33 then ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> true ) ) ) $ ( d23 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> false ) ) ) $ ( false )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> if true then x4590 else Bool ) ) ) $ ( if false then Bool else Bool )
        d457 = if if d70 then false else d223 then ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> false ) ) ) $ ( d407 ) else if true then d399 else false
        d460 : if false then if false then Bool else Bool else if true then Bool else Bool
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> if x4610 then x4610 else d299 ) ) ) $ ( false ) ) ) ) $ ( if d67 then d248 else false )
        d463 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( Bool )
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> if d341 then x4640 else d329 ) ) ) $ ( if true then d183 else true )
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4680 -> ( ( Set -> Set ) ∋ ( ( λ x4690 -> if true then x4680 else Bool ) ) ) $ ( x4680 ) ) ) ) $ ( if true then Bool else Bool )
        d466 = if ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> d30 ) ) ) $ ( true ) then if d150 then d242 else true else if false then false else false
        d470 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> if true then Bool else x4720 ) ) ) $ ( if true then Bool else Bool )
        d470 = if if true then false else d270 then ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> d457 ) ) ) $ ( d403 ) else if false then d252 else d436
        d473 : if true then if false then Bool else Bool else if true then Bool else Bool
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if x4740 then d191 else x4750 ) ) ) $ ( x4740 ) ) ) ) $ ( if false then d364 else d223 )
        d476 : if false then ( ( Set -> Set ) ∋ ( ( λ x4790 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d476 = ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> if d43 then x4770 else x4770 ) ) ) $ ( d23 ) ) ) ) $ ( if d166 then d403 else d63 )
        d480 : if false then ( ( Set -> Set ) ∋ ( ( λ x4830 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4840 -> x4840 ) ) ) $ ( Bool )
        d480 = if ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> d5 ) ) ) $ ( d361 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> x4820 ) ) ) $ ( true ) else if false then d277 else false
        d485 : if true then if false then Bool else Bool else if true then Bool else Bool
        d485 = ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> if x4860 then d188 else d58 ) ) ) $ ( x4860 ) ) ) ) $ ( if d18 then d457 else false )
        d488 : if true then if false then Bool else Bool else if true then Bool else Bool
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> if d397 then d238 else x4900 ) ) ) $ ( x4890 ) ) ) ) $ ( if true then true else true )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4920 -> if true then x4920 else Bool ) ) ) $ ( if true then Bool else Bool )
        d491 = if if true then d304 else true then if true then true else true else if d450 then d407 else d463
        d493 : if false then ( ( Set -> Set ) ∋ ( ( λ x4950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4960 -> Bool ) ) ) $ ( Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if true then x4940 else true ) ) ) $ ( if d453 then false else true )
        d497 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4990 -> x4990 ) ) ) $ ( Bool )
        d497 = ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> if d480 then true else false ) ) ) $ ( if false then false else true )
        d500 : if true then if false then Bool else Bool else if true then Bool else Bool
        d500 = if ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> d460 ) ) ) $ ( d341 )
        d504 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> if false then x5070 else Bool ) ) ) $ ( if false then Bool else Bool )
        d504 = if if d140 then d79 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> true ) ) ) $ ( d338 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> true ) ) ) $ ( false )
        d508 : ( ( Set -> Set ) ∋ ( ( λ x5110 -> ( ( Set -> Set ) ∋ ( ( λ x5120 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if d223 then d312 else false ) ) ) $ ( d5 ) ) ) ) $ ( if d58 then d375 else d380 )
        d513 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( Bool )
        d513 = if ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> x5140 ) ) ) $ ( false ) then if d349 then true else false else if false then false else d422
        d516 : if true then if false then Bool else Bool else if false then Bool else Bool
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> if d213 then x5170 else x5170 ) ) ) $ ( if false then d183 else false )
        d518 : ( ( Set -> Set ) ∋ ( ( λ x5200 -> ( ( Set -> Set ) ∋ ( ( λ x5210 -> if true then Bool else Bool ) ) ) $ ( x5200 ) ) ) ) $ ( if false then Bool else Bool )
        d518 = ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> if x5190 then x5190 else d338 ) ) ) $ ( if d476 then d394 else true )
        d522 : if true then ( ( Set -> Set ) ∋ ( ( λ x5230 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d522 = if if true then d70 else false then if d47 then true else d299 else if d5 then true else d18
        d524 : if false then ( ( Set -> Set ) ∋ ( ( λ x5260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5270 -> Bool ) ) ) $ ( Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> if true then x5250 else false ) ) ) $ ( if false then false else true )
        d528 : if true then ( ( Set -> Set ) ∋ ( ( λ x5310 -> x5310 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d528 = if ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> d171 ) ) ) $ ( true ) else if d63 then d47 else false
        d532 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> if false then x5330 else x5330 ) ) ) $ ( if false then Bool else Bool )
        d532 = if if d111 then d497 else d321 then if true then d476 else d403 else if false then d83 else d213
        d534 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> ( ( Set -> Set ) ∋ ( ( λ x5370 -> if true then x5360 else Bool ) ) ) $ ( x5360 ) ) ) ) $ ( if true then Bool else Bool )
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if true then true else false ) ) ) $ ( if d44 then d56 else true )
        d538 : if true then if true then Bool else Bool else if false then Bool else Bool
        d538 = ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> if x5390 then x5390 else false ) ) ) $ ( if d427 then true else false )
        d540 : ( ( Set -> Set ) ∋ ( ( λ x5430 -> ( ( Set -> Set ) ∋ ( ( λ x5440 -> if false then x5440 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> if d100 then x5420 else d384 ) ) ) $ ( false ) ) ) ) $ ( if true then d534 else d397 )
        d545 : ( ( Set -> Set ) ∋ ( ( λ x5480 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> if true then d317 else x5470 ) ) ) $ ( x5460 ) ) ) ) $ ( if true then false else false )
        d549 : if false then if false then Bool else Bool else if true then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x5500 -> if x5500 then x5500 else d58 ) ) ) $ ( if d266 then true else true )
        d551 : if true then ( ( Set -> Set ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> if true then x5530 else true ) ) ) $ ( true ) ) ) ) $ ( if d47 then d299 else d407 )
        d555 : if false then ( ( Set -> Set ) ∋ ( ( λ x5570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5580 -> Bool ) ) ) $ ( Bool )
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> if x5560 then false else d528 ) ) ) $ ( if true then true else d238 )
        d559 : if false then ( ( Set -> Set ) ∋ ( ( λ x5620 -> x5620 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d559 = ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> if d488 then d508 else d79 ) ) ) $ ( d70 ) ) ) ) $ ( if d40 then false else d147 )
        d563 : if false then ( ( Set -> Set ) ∋ ( ( λ x5670 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d563 = if ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> d23 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> d380 ) ) ) $ ( true )