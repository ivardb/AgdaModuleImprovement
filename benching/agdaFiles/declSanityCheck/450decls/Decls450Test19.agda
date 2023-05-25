module Decls450Test19  where
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
        d1 : if true then ( ( Set -> Set ) ∋ ( ( λ x30 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( false ) then if false then true else false else if false then true else false
        d5 : if false then ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if x60 then x60 else false ) ) ) $ ( if true then true else d1 )
        d9 : if true then ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d9 = if if d5 then false else true then if false then d5 else false else if d5 then false else true
        d11 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else Bool ) ) ) $ ( x140 ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if true then false else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d5 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x130 -> d9 ) ) ) $ ( false )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else x190 ) ) ) $ ( if true then Bool else Bool )
        d16 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d5 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d5 ) ) ) $ ( d5 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then Bool else x230 ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if false then x220 else x220 ) ) ) $ ( true ) ) ) ) $ ( if true then d1 else d9 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x280 -> if true then x280 else Bool ) ) ) $ ( if true then Bool else Bool )
        d24 = if ( ( Bool -> Bool ) ∋ ( ( λ x250 -> d1 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> d1 ) ) ) $ ( true )
        d29 : if true then ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x330 -> Bool ) ) ) $ ( Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if true then d11 else d1 ) ) ) $ ( d9 ) ) ) ) $ ( if d5 then false else d1 )
        d34 : if false then ( ( Set -> Set ) ∋ ( ( λ x350 -> x350 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool )
        d34 = if if true then false else d29 then if true then d5 else false else if true then d16 else true
        d37 : if false then ( ( Set -> Set ) ∋ ( ( λ x390 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if false then x380 else x380 ) ) ) $ ( if true then d34 else d9 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then x420 else x420 ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d5 then true else x410 ) ) ) $ ( if d11 then true else true )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x450 -> ( ( Set -> Set ) ∋ ( ( λ x460 -> if true then Bool else x450 ) ) ) $ ( x450 ) ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if x440 then x440 else x440 ) ) ) $ ( if false then d29 else true )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> if true then x520 else x520 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d47 = if ( ( Bool -> Bool ) ∋ ( ( λ x480 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d5 ) ) ) $ ( d34 ) else ( ( Bool -> Bool ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( d16 )
        d53 : if false then ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d53 = if if d40 then d29 else d37 then ( ( Bool -> Bool ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d1 ) ) ) $ ( d20 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x590 -> ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if true then false else true ) ) ) $ ( if d1 then d34 else true )
        d61 : if false then ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if false then d16 else d34 ) ) ) $ ( x620 ) ) ) ) $ ( if d43 then true else true )
        d65 : if true then ( ( Set -> Set ) ∋ ( ( λ x680 -> x680 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if x660 then d20 else d57 ) ) ) $ ( d61 ) ) ) ) $ ( if false then false else false )
        d70 : if false then ( ( Set -> Set ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if d37 then false else x710 ) ) ) $ ( d34 ) ) ) ) $ ( if false then d57 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then x770 else x760 ) ) ) $ ( x760 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if true then x750 else d43 ) ) ) $ ( if d5 then true else d37 )
        d78 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x800 -> Bool ) ) ) $ ( Bool )
        d78 = if if d65 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( true ) else if d61 then d11 else true
        d81 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( Bool )
        d81 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x820 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x830 -> d65 ) ) ) $ ( true )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x870 -> if false then x870 else Bool ) ) ) $ ( if false then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if true then x860 else true ) ) ) $ ( if d16 then d78 else false )
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d78 ) ) ) $ ( true ) else if d61 then true else d34
        d91 : ( ( Set -> Set ) ∋ ( ( λ x940 -> if false then Bool else x940 ) ) ) $ ( if false then Bool else Bool )
        d91 = if ( ( Bool -> Bool ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( d81 ) then ( ( Bool -> Bool ) ∋ ( ( λ x930 -> false ) ) ) $ ( false ) else if d81 then d65 else d53
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if true then d53 else d29 then ( ( Bool -> Bool ) ∋ ( ( λ x960 -> x960 ) ) ) $ ( true ) else if false then false else true
        d97 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d97 = if ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d78 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x990 -> false ) ) ) $ ( true ) else if true then d74 else d20
        d102 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d102 = if if d16 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> false ) ) ) $ ( false ) else if true then d95 else d97
        d106 : if false then ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( Bool )
        d106 = if ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> true ) ) ) $ ( d78 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( d40 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( d16 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> if true then x1150 else Bool ) ) ) $ ( if false then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if false then false else x1140 ) ) ) $ ( x1130 ) ) ) ) $ ( if d24 then false else d61 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> if false then x1190 else Bool ) ) ) $ ( if true then Bool else Bool )
        d116 = if ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( d81 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> true ) ) ) $ ( d16 ) else if false then d20 else true
        d120 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool )
        d120 = if ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> true ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> d61 ) ) ) $ ( d29 )
        d125 : if true then ( ( Set -> Set ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> if false then d24 else d1 ) ) ) $ ( if d5 then d5 else false )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d128 = if if true then true else d88 then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( d120 ) else if d43 then false else true
        d131 : if true then ( ( Set -> Set ) ∋ ( ( λ x1330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if true then d1 else d78 ) ) ) $ ( if true then true else true )
        d135 : if false then ( ( Set -> Set ) ∋ ( ( λ x1380 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d135 = if ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( d53 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> true ) ) ) $ ( true ) else if d40 then true else true
        d139 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then Bool else x1410 ) ) ) $ ( if true then Bool else Bool )
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> if x1400 then x1400 else false ) ) ) $ ( if false then true else d128 )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d142 = if ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> true ) ) ) $ ( d34 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> d78 ) ) ) $ ( true ) else if false then false else false
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> if false then Bool else x1490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> if d70 then x1470 else d131 ) ) ) $ ( if d128 then d85 else d53 )
        d150 : ( ( Set -> Set ) ∋ ( ( λ x1540 -> if true then x1540 else x1540 ) ) ) $ ( if true then Bool else Bool )
        d150 = if ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d47 ) ) ) $ ( d74 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> true ) ) ) $ ( d40 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> x1530 ) ) ) $ ( d116 )
        d155 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> if true then x1580 else Bool ) ) ) $ ( if true then Bool else Bool )
        d155 = if ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( d65 ) else if d20 then d34 else true
        d159 : if true then if false then Bool else Bool else if false then Bool else Bool
        d159 = if ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> d146 ) ) ) $ ( d34 ) then if d146 then d53 else false else if true then true else d146
        d161 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> if true then x1650 else x1650 ) ) ) $ ( x1650 ) ) ) ) $ ( if true then Bool else Bool )
        d161 = if ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( d47 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( true )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then Bool else Bool ) ) ) $ ( x1700 ) ) ) ) $ ( if true then Bool else Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if x1690 then d159 else x1690 ) ) ) $ ( true ) ) ) ) $ ( if d47 then d91 else true )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then Bool else Bool ) ) ) $ ( x1730 ) ) ) ) $ ( if true then Bool else Bool )
        d172 = if if d161 then d155 else true then if d112 then false else true else if d131 then true else d65
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if false then x1780 else x1780 ) ) ) $ ( if true then Bool else Bool )
        d175 = if if true then d88 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( d47 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d161 ) ) ) $ ( d161 )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> if false then Bool else x1810 ) ) ) $ ( x1810 ) ) ) ) $ ( if true then Bool else Bool )
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> if false then d78 else x1800 ) ) ) $ ( if d43 then d65 else false )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> if false then x1850 else Bool ) ) ) $ ( if false then Bool else Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if x1840 then true else true ) ) ) $ ( if d65 then true else d139 )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> if false then Bool else x1880 ) ) ) $ ( if false then Bool else Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> if x1870 then d16 else d65 ) ) ) $ ( if true then d120 else d95 )
        d189 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if true then x1920 else Bool ) ) ) $ ( if true then Bool else Bool )
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if true then x1910 else false ) ) ) $ ( x1900 ) ) ) ) $ ( if true then d37 else d97 )
        d193 : if true then if true then Bool else Bool else if false then Bool else Bool
        d193 = if if true then false else true then if d155 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> false ) ) ) $ ( true )
        d195 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool )
        d195 = ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> if false then x1970 else d175 ) ) ) $ ( d150 ) ) ) ) $ ( if true then true else d91 )
        d199 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> ( ( Set -> Set ) ∋ ( ( λ x2020 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if d116 then x2000 else true ) ) ) $ ( if false then false else d183 )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> ( ( Set -> Set ) ∋ ( ( λ x2060 -> if true then x2060 else x2050 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if d29 then false else d29 ) ) ) $ ( if d135 then true else d150 )
        d207 : if true then ( ( Set -> Set ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( Bool )
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> if x2090 then false else true ) ) ) $ ( x2080 ) ) ) ) $ ( if d195 then false else d193 )
        d212 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d212 = if ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> false ) ) ) $ ( false ) then if false then false else false else if true then d172 else false
        d216 : if true then if true then Bool else Bool else if false then Bool else Bool
        d216 = if ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> false ) ) ) $ ( false ) then if d193 then true else d146 else ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> d142 ) ) ) $ ( true )
        d219 : if false then ( ( Set -> Set ) ∋ ( ( λ x2220 -> x2220 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d219 = ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> if false then true else d135 ) ) ) $ ( x2200 ) ) ) ) $ ( if true then d57 else d161 )
        d223 : if true then ( ( Set -> Set ) ∋ ( ( λ x2260 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d223 = if if d43 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> d186 ) ) ) $ ( d47 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2250 -> d91 ) ) ) $ ( false )
        d227 : if false then ( ( Set -> Set ) ∋ ( ( λ x2300 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d227 = ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> if d172 then false else x2290 ) ) ) $ ( d5 ) ) ) ) $ ( if d183 then d9 else d195 )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> ( ( Set -> Set ) ∋ ( ( λ x2340 -> if false then x2340 else x2330 ) ) ) $ ( x2330 ) ) ) ) $ ( if false then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> if d88 then false else false ) ) ) $ ( if false then false else d85 )
        d235 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2380 -> x2380 ) ) ) $ ( Bool )
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> if true then x2370 else false ) ) ) $ ( x2360 ) ) ) ) $ ( if d120 then false else false )
        d239 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2420 -> Bool ) ) ) $ ( Bool )
        d239 = ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> if x2400 then x2410 else x2400 ) ) ) $ ( x2400 ) ) ) ) $ ( if false then false else false )
        d243 : ( ( Set -> Set ) ∋ ( ( λ x2450 -> if true then x2450 else Bool ) ) ) $ ( if false then Bool else Bool )
        d243 = if if d74 then false else d43 then ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> true ) ) ) $ ( d135 ) else if d20 then d91 else true
        d246 : if false then ( ( Set -> Set ) ∋ ( ( λ x2500 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d246 = if ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> d243 ) ) ) $ ( d57 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> true ) ) ) $ ( true )
        d251 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then Bool else x2540 ) ) ) $ ( if true then Bool else Bool )
        d251 = ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> if d125 then d216 else x2530 ) ) ) $ ( true ) ) ) ) $ ( if d167 then d65 else d193 )
        d255 : ( ( Set -> Set ) ∋ ( ( λ x2560 -> if true then x2560 else x2560 ) ) ) $ ( if false then Bool else Bool )
        d255 = if if true then d78 else d102 then if d78 then d120 else d199 else if true then d246 else d1
        d257 : if true then ( ( Set -> Set ) ∋ ( ( λ x2590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( Bool )
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if false then d146 else d37 ) ) ) $ ( if false then d161 else true )
        d261 : if true then ( ( Set -> Set ) ∋ ( ( λ x2640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2650 -> x2650 ) ) ) $ ( Bool )
        d261 = if if d53 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> x2620 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> d47 ) ) ) $ ( d223 )
        d266 : ( ( Set -> Set ) ∋ ( ( λ x2690 -> ( ( Set -> Set ) ∋ ( ( λ x2700 -> if false then x2690 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d266 = if ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> d257 ) ) ) $ ( true ) then if d120 then d81 else d216 else ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> x2680 ) ) ) $ ( d88 )
        d271 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool )
        d271 = if ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> true ) ) ) $ ( false ) then if d53 then false else d16 else if false then d16 else false
        d274 : if true then ( ( Set -> Set ) ∋ ( ( λ x2760 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if true then true else x2750 ) ) ) $ ( if d5 then d24 else true )
        d277 : if true then ( ( Set -> Set ) ∋ ( ( λ x2790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2800 -> x2800 ) ) ) $ ( Bool )
        d277 = ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if true then x2780 else x2780 ) ) ) $ ( if d150 then d5 else false )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if d195 then x2820 else x2830 ) ) ) $ ( true ) ) ) ) $ ( if false then d16 else true )
        d285 : ( ( Set -> Set ) ∋ ( ( λ x2880 -> ( ( Set -> Set ) ∋ ( ( λ x2890 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> if true then false else x2870 ) ) ) $ ( d34 ) ) ) ) $ ( if d216 then false else d227 )
        d290 : if false then if false then Bool else Bool else if true then Bool else Bool
        d290 = if ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> x2910 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> x2920 ) ) ) $ ( false ) else if true then true else d199
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2960 -> ( ( Set -> Set ) ∋ ( ( λ x2970 -> if true then x2970 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> if false then d139 else false ) ) ) $ ( false ) ) ) ) $ ( if d277 then d102 else true )
        d298 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> ( ( Set -> Set ) ∋ ( ( λ x3020 -> if true then Bool else Bool ) ) ) $ ( x3010 ) ) ) ) $ ( if true then Bool else Bool )
        d298 = ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> if false then x2990 else d78 ) ) ) $ ( false ) ) ) ) $ ( if d53 then true else false )
        d303 : if true then if true then Bool else Bool else if true then Bool else Bool
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> if x3040 then true else x3040 ) ) ) $ ( if false then false else d34 )
        d305 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3080 -> x3080 ) ) ) $ ( Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if x3060 then false else d88 ) ) ) $ ( true ) ) ) ) $ ( if d131 then true else true )
        d309 : if false then if false then Bool else Bool else if true then Bool else Bool
        d309 = if ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> x3100 ) ) ) $ ( d70 ) then if d70 then d257 else d120 else if true then true else true
        d311 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> ( ( Set -> Set ) ∋ ( ( λ x3140 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d311 = ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> if true then x3120 else d125 ) ) ) $ ( if d274 then true else true )
        d315 : if false then if true then Bool else Bool else if false then Bool else Bool
        d315 = if if true then d16 else d81 then ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> false ) ) ) $ ( d57 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> false ) ) ) $ ( d195 )
        d318 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> if true then x3210 else x3210 ) ) ) $ ( if false then Bool else Bool )
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> if x3200 then x3190 else x3190 ) ) ) $ ( d261 ) ) ) ) $ ( if false then d91 else true )
        d322 : if false then ( ( Set -> Set ) ∋ ( ( λ x3250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3260 -> Bool ) ) ) $ ( Bool )
        d322 = ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> if d57 then x3230 else false ) ) ) $ ( d235 ) ) ) ) $ ( if d261 then d97 else d212 )
        d327 : if true then ( ( Set -> Set ) ∋ ( ( λ x3290 -> x3290 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> if x3280 then true else false ) ) ) $ ( if false then d216 else d183 )
        d330 : if false then ( ( Set -> Set ) ∋ ( ( λ x3320 -> x3320 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d330 = if if d219 then false else d146 then ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> true ) ) ) $ ( d37 ) else if true then false else false
        d333 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> ( ( Set -> Set ) ∋ ( ( λ x3360 -> if true then x3360 else Bool ) ) ) $ ( x3350 ) ) ) ) $ ( if true then Bool else Bool )
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> if x3340 then x3340 else d203 ) ) ) $ ( if d216 then d251 else true )
        d337 : ( ( Set -> Set ) ∋ ( ( λ x3390 -> if true then Bool else x3390 ) ) ) $ ( if true then Bool else Bool )
        d337 = ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> if x3380 then x3380 else true ) ) ) $ ( if d128 then d243 else true )
        d340 : if true then ( ( Set -> Set ) ∋ ( ( λ x3440 -> x3440 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d340 = if ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> d120 ) ) ) $ ( d142 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> d277 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> true ) ) ) $ ( d216 )
        d345 : if false then ( ( Set -> Set ) ∋ ( ( λ x3470 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> if x3460 then true else false ) ) ) $ ( if d47 then d293 else false )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d348 = if ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> d16 ) ) ) $ ( d142 ) then if d95 then false else d34 else ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> x3500 ) ) ) $ ( true )
        d352 : ( ( Set -> Set ) ∋ ( ( λ x3550 -> if true then x3550 else x3550 ) ) ) $ ( if false then Bool else Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> if true then x3530 else d40 ) ) ) $ ( d106 ) ) ) ) $ ( if d43 then d70 else true )
        d356 : ( ( Set -> Set ) ∋ ( ( λ x3580 -> ( ( Set -> Set ) ∋ ( ( λ x3590 -> if true then x3590 else x3590 ) ) ) $ ( x3580 ) ) ) ) $ ( if false then Bool else Bool )
        d356 = if if true then d135 else d298 then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> x3570 ) ) ) $ ( false )
        d360 : if false then ( ( Set -> Set ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( Bool )
        d360 = if if true then true else d57 then ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> x3610 ) ) ) $ ( d53 ) else if true then d223 else d352
        d364 : if true then ( ( Set -> Set ) ∋ ( ( λ x3660 -> x3660 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3670 -> x3670 ) ) ) $ ( Bool )
        d364 = if if false then false else false then if d246 then false else d81 else ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> d172 ) ) ) $ ( true )
        d368 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3710 -> Bool ) ) ) $ ( Bool )
        d368 = if ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> x3690 ) ) ) $ ( d360 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> false ) ) ) $ ( true ) else if true then d81 else d293
        d372 : if false then if false then Bool else Bool else if true then Bool else Bool
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> if true then d227 else d95 ) ) ) $ ( false ) ) ) ) $ ( if d337 then d65 else false )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then x3790 else x3780 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d375 = if ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> x3760 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> x3770 ) ) ) $ ( false ) else if d281 then d135 else d266
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> if true then Bool else x3820 ) ) ) $ ( if true then Bool else Bool )
        d380 = if ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> x3810 ) ) ) $ ( false ) then if d5 then true else d231 else if d53 then d85 else d167
        d383 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> ( ( Set -> Set ) ∋ ( ( λ x3870 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d383 = if ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( false ) then if false then d266 else d271 else ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> true ) ) ) $ ( d175 )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> ( ( Set -> Set ) ∋ ( ( λ x3910 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d388 = if if d345 then d303 else d277 then if true then true else d223 else ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> d167 ) ) ) $ ( d337 )
        d392 : if false then ( ( Set -> Set ) ∋ ( ( λ x3950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( Bool )
        d392 = ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> if d53 then true else d146 ) ) ) $ ( d179 ) ) ) ) $ ( if d309 then d383 else d81 )
        d397 : if true then if true then Bool else Bool else if true then Bool else Bool
        d397 = if if true then false else false then if false then d337 else d70 else ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> false ) ) ) $ ( true )
        d399 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4010 -> Bool ) ) ) $ ( Bool )
        d399 = ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> if true then true else true ) ) ) $ ( if d11 then false else d207 )
        d402 : if true then if false then Bool else Bool else if false then Bool else Bool
        d402 = if ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> x4030 ) ) ) $ ( d159 ) then if d53 then d380 else d285 else if false then d322 else d81
        d404 : ( ( Set -> Set ) ∋ ( ( λ x4060 -> if true then x4060 else Bool ) ) ) $ ( if false then Bool else Bool )
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> if true then d20 else x4050 ) ) ) $ ( if false then false else false )
        d407 : if true then ( ( Set -> Set ) ∋ ( ( λ x4080 -> x4080 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4090 -> Bool ) ) ) $ ( Bool )
        d407 = if if d142 then d95 else true then if true then d65 else true else if false then true else true
        d410 : ( ( Set -> Set ) ∋ ( ( λ x4130 -> ( ( Set -> Set ) ∋ ( ( λ x4140 -> if true then Bool else Bool ) ) ) $ ( x4130 ) ) ) ) $ ( if true then Bool else Bool )
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> if d139 then false else true ) ) ) $ ( d40 ) ) ) ) $ ( if d402 then false else true )
        d415 : if false then if true then Bool else Bool else if false then Bool else Bool
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> if true then x4160 else x4160 ) ) ) $ ( if false then true else true )
        d417 : if true then ( ( Set -> Set ) ∋ ( ( λ x4190 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( Bool )
        d417 = ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if true then false else d309 ) ) ) $ ( if d161 then d53 else false )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4230 -> if false then Bool else x4230 ) ) ) $ ( if true then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> if d167 then d189 else x4220 ) ) ) $ ( if false then true else d216 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x4260 -> ( ( Set -> Set ) ∋ ( ( λ x4270 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> if x4250 then d274 else x4250 ) ) ) $ ( if d186 then d135 else true )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> if false then x4300 else x4300 ) ) ) $ ( if false then Bool else Bool )
        d428 = if if d199 then true else d333 then ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> false ) ) ) $ ( true ) else if d315 then false else true
        d431 : if false then ( ( Set -> Set ) ∋ ( ( λ x4340 -> x4340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> if false then false else false ) ) ) $ ( d186 ) ) ) ) $ ( if false then true else true )
        d435 : if true then ( ( Set -> Set ) ∋ ( ( λ x4370 -> x4370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4380 -> x4380 ) ) ) $ ( Bool )
        d435 = ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> if d380 then d281 else d375 ) ) ) $ ( if true then true else true )
        d439 : ( ( Set -> Set ) ∋ ( ( λ x4420 -> ( ( Set -> Set ) ∋ ( ( λ x4430 -> if true then x4430 else Bool ) ) ) $ ( x4420 ) ) ) ) $ ( if false then Bool else Bool )
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> if x4400 then d219 else true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d392 )
        d444 : ( ( Set -> Set ) ∋ ( ( λ x4460 -> ( ( Set -> Set ) ∋ ( ( λ x4470 -> if false then x4470 else x4460 ) ) ) $ ( x4460 ) ) ) ) $ ( if false then Bool else Bool )
        d444 = if ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> false ) ) ) $ ( true ) then if d172 then d199 else d305 else if d24 then true else d235
        d448 : ( ( Set -> Set ) ∋ ( ( λ x4510 -> if false then x4510 else x4510 ) ) ) $ ( if false then Bool else Bool )
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> if x4500 then x4500 else true ) ) ) $ ( true ) ) ) ) $ ( if true then true else d61 )
        d452 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4540 -> Bool ) ) ) $ ( Bool )
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> if true then x4530 else d257 ) ) ) $ ( if false then false else true )
        d455 : if true then if false then Bool else Bool else if false then Bool else Bool
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> if false then d246 else false ) ) ) $ ( if d150 then d167 else d128 )
        d457 : ( ( Set -> Set ) ∋ ( ( λ x4600 -> if true then x4600 else x4600 ) ) ) $ ( if true then Bool else Bool )
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if false then d95 else x4590 ) ) ) $ ( x4580 ) ) ) ) $ ( if d106 then d246 else true )
        d461 : ( ( Set -> Set ) ∋ ( ( λ x4640 -> if false then x4640 else Bool ) ) ) $ ( if false then Bool else Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if x4630 then x4630 else d322 ) ) ) $ ( x4620 ) ) ) ) $ ( if d195 then true else d20 )
        d465 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4680 -> Bool ) ) ) $ ( Bool )
        d465 = if ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> d352 ) ) ) $ ( true ) then if d231 then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> true ) ) ) $ ( true )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> ( ( Set -> Set ) ∋ ( ( λ x4730 -> if false then x4720 else x4730 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d469 = ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> if d360 then true else true ) ) ) $ ( x4700 ) ) ) ) $ ( if true then d186 else false )
        d474 : if true then ( ( Set -> Set ) ∋ ( ( λ x4760 -> x4760 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if d16 then d16 else d410 ) ) ) $ ( if false then d364 else false )
        d477 : ( ( Set -> Set ) ∋ ( ( λ x4790 -> if false then x4790 else x4790 ) ) ) $ ( if true then Bool else Bool )
        d477 = if ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> x4780 ) ) ) $ ( true ) then if false then d175 else d116 else if d16 then d24 else d439
        d480 : ( ( Set -> Set ) ∋ ( ( λ x4820 -> ( ( Set -> Set ) ∋ ( ( λ x4830 -> if false then x4830 else x4820 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> if false then d340 else true ) ) ) $ ( if false then d392 else d281 )
        d484 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4870 -> Bool ) ) ) $ ( Bool )
        d484 = if ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> x4850 ) ) ) $ ( false ) then if false then d125 else d444 else ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> d266 ) ) ) $ ( d91 )
        d488 : ( ( Set -> Set ) ∋ ( ( λ x4900 -> ( ( Set -> Set ) ∋ ( ( λ x4910 -> if false then Bool else x4910 ) ) ) $ ( x4900 ) ) ) ) $ ( if false then Bool else Bool )
        d488 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> true ) ) ) $ ( d120 ) else if true then d407 else true
        d492 : ( ( Set -> Set ) ∋ ( ( λ x4950 -> ( ( Set -> Set ) ∋ ( ( λ x4960 -> if true then x4960 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if d360 then x4940 else x4940 ) ) ) $ ( d246 ) ) ) ) $ ( if d380 then d322 else false )
        d497 : ( ( Set -> Set ) ∋ ( ( λ x5000 -> ( ( Set -> Set ) ∋ ( ( λ x5010 -> if true then x5000 else Bool ) ) ) $ ( x5000 ) ) ) ) $ ( if false then Bool else Bool )
        d497 = if if d167 then d9 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> d474 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> d223 ) ) ) $ ( d311 )
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5050 -> if false then x5050 else x5050 ) ) ) $ ( if true then Bool else Bool )
        d502 = if ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> x5030 ) ) ) $ ( d431 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> true ) ) ) $ ( true ) else if false then d402 else false
        d506 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5070 -> x5070 ) ) ) $ ( Bool )
        d506 = if if d457 then d125 else d189 then if d315 then d293 else false else if true then d9 else false
        d508 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5110 -> x5110 ) ) ) $ ( Bool )
        d508 = ( ( Bool -> Bool ) ∋ ( ( λ x5090 -> ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if x5100 then x5100 else true ) ) ) $ ( x5090 ) ) ) ) $ ( if true then d227 else true )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> ( ( Set -> Set ) ∋ ( ( λ x5160 -> if false then Bool else x5150 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> if d227 then x5140 else x5140 ) ) ) $ ( x5130 ) ) ) ) $ ( if d175 then d435 else d455 )
        d517 : if true then ( ( Set -> Set ) ∋ ( ( λ x5200 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5210 -> Bool ) ) ) $ ( Bool )
        d517 = if ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> d193 ) ) ) $ ( false ) then if d159 then d448 else d43 else ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> true ) ) ) $ ( false )
        d522 : if true then ( ( Set -> Set ) ∋ ( ( λ x5240 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if x5230 then d235 else d452 ) ) ) $ ( if true then d195 else false )
        d525 : if false then if true then Bool else Bool else if true then Bool else Bool
        d525 = ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> if true then true else x5270 ) ) ) $ ( false ) ) ) ) $ ( if d333 then d380 else true )
        d528 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5300 -> Bool ) ) ) $ ( Bool )
        d528 = if if d246 then d452 else d522 then if true then false else d5 else ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> false ) ) ) $ ( d85 )
        d531 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5330 -> x5330 ) ) ) $ ( Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if d455 then false else d9 ) ) ) $ ( if d410 then false else true )
        d534 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> ( ( Set -> Set ) ∋ ( ( λ x5370 -> if false then Bool else x5370 ) ) ) $ ( x5360 ) ) ) ) $ ( if true then Bool else Bool )
        d534 = ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> if d85 then x5350 else true ) ) ) $ ( if true then d522 else d368 )
        d538 : ( ( Set -> Set ) ∋ ( ( λ x5400 -> if false then Bool else x5400 ) ) ) $ ( if false then Bool else Bool )
        d538 = if if d97 then false else false then if false then d1 else d78 else ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> d139 ) ) ) $ ( true )
        d541 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5440 -> x5440 ) ) ) $ ( Bool )
        d541 = if ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> false ) ) ) $ ( d281 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> x5430 ) ) ) $ ( true ) else if false then false else d290
        d545 : if true then if true then Bool else Bool else if true then Bool else Bool
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> if x5470 then x5460 else false ) ) ) $ ( x5460 ) ) ) ) $ ( if d146 then false else d337 )
        d548 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5500 -> x5500 ) ) ) $ ( Bool )
        d548 = if if d435 then true else d424 then ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> true ) ) ) $ ( d534 ) else if d545 then d281 else d186
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5530 -> ( ( Set -> Set ) ∋ ( ( λ x5540 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> if x5520 then x5520 else true ) ) ) $ ( if true then false else d125 )
        d555 : if true then ( ( Set -> Set ) ∋ ( ( λ x5570 -> x5570 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d555 = if if d340 then false else d150 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> x5560 ) ) ) $ ( true )
        d558 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> if true then x5610 else x5610 ) ) ) $ ( if true then Bool else Bool )
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> if d340 then false else x5590 ) ) ) $ ( d97 ) ) ) ) $ ( if d243 then true else d421 )
        d562 : if true then ( ( Set -> Set ) ∋ ( ( λ x5650 -> x5650 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5660 -> x5660 ) ) ) $ ( Bool )
        d562 = if ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> x5630 ) ) ) $ ( false ) then if d380 then d11 else d106 else ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> d337 ) ) ) $ ( d142 )
        d567 : ( ( Set -> Set ) ∋ ( ( λ x5690 -> if false then x5690 else x5690 ) ) ) $ ( if false then Bool else Bool )
        d567 = if if true then d541 else false then if false then d525 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> true ) ) ) $ ( false )
        d570 : if false then ( ( Set -> Set ) ∋ ( ( λ x5730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5740 -> x5740 ) ) ) $ ( Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> if d562 then d330 else d9 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d266 )
        d575 : ( ( Set -> Set ) ∋ ( ( λ x5780 -> ( ( Set -> Set ) ∋ ( ( λ x5790 -> if true then x5780 else x5780 ) ) ) $ ( x5780 ) ) ) ) $ ( if true then Bool else Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> if d562 then d439 else x5760 ) ) ) $ ( false ) ) ) ) $ ( if d61 then d257 else d139 )
        d580 : ( ( Set -> Set ) ∋ ( ( λ x5820 -> ( ( Set -> Set ) ∋ ( ( λ x5830 -> if false then x5820 else x5830 ) ) ) $ ( x5820 ) ) ) ) $ ( if false then Bool else Bool )
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> if d212 then false else true ) ) ) $ ( if false then false else d303 )
        d584 : ( ( Set -> Set ) ∋ ( ( λ x5870 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d584 = ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> ( ( Bool -> Bool ) ∋ ( ( λ x5860 -> if d303 then x5860 else x5850 ) ) ) $ ( false ) ) ) ) $ ( if d517 then true else d120 )
        d588 : if true then ( ( Set -> Set ) ∋ ( ( λ x5910 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> if x5890 then true else d309 ) ) ) $ ( false ) ) ) ) $ ( if false then d219 else true )
        d592 : ( ( Set -> Set ) ∋ ( ( λ x5940 -> if true then x5940 else x5940 ) ) ) $ ( if false then Bool else Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> if false then d5 else d150 ) ) ) $ ( if true then d383 else true )
        d595 : if false then if true then Bool else Bool else if true then Bool else Bool
        d595 = ( ( Bool -> Bool ) ∋ ( ( λ x5960 -> ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> if true then true else true ) ) ) $ ( x5960 ) ) ) ) $ ( if false then d223 else true )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x6020 -> ( ( Set -> Set ) ∋ ( ( λ x6030 -> if true then Bool else Bool ) ) ) $ ( x6020 ) ) ) ) $ ( if true then Bool else Bool )
        d598 = if ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> x5990 ) ) ) $ ( d189 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6010 -> false ) ) ) $ ( true )
        d604 : ( ( Set -> Set ) ∋ ( ( λ x6080 -> ( ( Set -> Set ) ∋ ( ( λ x6090 -> if false then Bool else x6090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d604 = if ( ( Bool -> Bool ) ∋ ( ( λ x6050 -> x6050 ) ) ) $ ( d461 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> d97 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6070 -> true ) ) ) $ ( d584 )
        d610 : ( ( Set -> Set ) ∋ ( ( λ x6120 -> if true then x6120 else Bool ) ) ) $ ( if true then Bool else Bool )
        d610 = ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> if x6110 then x6110 else d333 ) ) ) $ ( if d488 then d53 else d159 )
        d613 : ( ( Set -> Set ) ∋ ( ( λ x6150 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d613 = ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> if d567 then true else x6140 ) ) ) $ ( if d525 then d392 else d428 )
        d616 : if true then ( ( Set -> Set ) ∋ ( ( λ x6190 -> x6190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6200 -> x6200 ) ) ) $ ( Bool )
        d616 = if ( ( Bool -> Bool ) ∋ ( ( λ x6170 -> x6170 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6180 -> x6180 ) ) ) $ ( d435 ) else if true then true else false
        d621 : if true then ( ( Set -> Set ) ∋ ( ( λ x6240 -> x6240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6250 -> x6250 ) ) ) $ ( Bool )
        d621 = ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> if x6220 then false else true ) ) ) $ ( x6220 ) ) ) ) $ ( if d512 then d380 else true )
        d626 : ( ( Set -> Set ) ∋ ( ( λ x6270 -> ( ( Set -> Set ) ∋ ( ( λ x6280 -> if true then x6270 else Bool ) ) ) $ ( x6270 ) ) ) ) $ ( if false then Bool else Bool )
        d626 = if if d551 then true else d352 then if true then d172 else d584 else if d212 then true else d330
        d629 : ( ( Set -> Set ) ∋ ( ( λ x6320 -> ( ( Set -> Set ) ∋ ( ( λ x6330 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> ( ( Bool -> Bool ) ∋ ( ( λ x6310 -> if d78 then d333 else false ) ) ) $ ( x6300 ) ) ) ) $ ( if true then false else true )
        d634 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6370 -> x6370 ) ) ) $ ( Bool )
        d634 = if ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> d216 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6360 -> true ) ) ) $ ( false ) else if true then false else d128
        d638 : if false then ( ( Set -> Set ) ∋ ( ( λ x6390 -> x6390 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d638 = if if d497 then d212 else true then if d167 then false else d231 else if true then d116 else d195
        d640 : ( ( Set -> Set ) ∋ ( ( λ x6430 -> ( ( Set -> Set ) ∋ ( ( λ x6440 -> if true then Bool else Bool ) ) ) $ ( x6430 ) ) ) ) $ ( if true then Bool else Bool )
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> ( ( Bool -> Bool ) ∋ ( ( λ x6420 -> if x6410 then d216 else true ) ) ) $ ( d37 ) ) ) ) $ ( if d243 then d502 else d216 )
        d645 : ( ( Set -> Set ) ∋ ( ( λ x6480 -> if true then x6480 else Bool ) ) ) $ ( if true then Bool else Bool )
        d645 = if if d106 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x6460 -> x6460 ) ) ) $ ( d290 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> d604 ) ) ) $ ( d81 )
        d649 : if false then ( ( Set -> Set ) ∋ ( ( λ x6520 -> x6520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6530 -> Bool ) ) ) $ ( Bool )
        d649 = ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> if true then x6500 else d239 ) ) ) $ ( x6500 ) ) ) ) $ ( if true then true else false )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x6550 -> ( ( Set -> Set ) ∋ ( ( λ x6560 -> if false then Bool else x6560 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d654 = if if true then true else false then if false then true else false else if d333 then true else true
        d657 : ( ( Set -> Set ) ∋ ( ( λ x6600 -> if true then x6600 else Bool ) ) ) $ ( if false then Bool else Bool )
        d657 = if if false then d199 else d575 then ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> false ) ) ) $ ( d474 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6590 -> x6590 ) ) ) $ ( d65 )
        d661 : ( ( Set -> Set ) ∋ ( ( λ x6650 -> ( ( Set -> Set ) ∋ ( ( λ x6660 -> if true then x6650 else Bool ) ) ) $ ( x6650 ) ) ) ) $ ( if true then Bool else Bool )
        d661 = if ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> x6620 ) ) ) $ ( d638 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> d448 ) ) ) $ ( true )
        d667 : ( ( Set -> Set ) ∋ ( ( λ x6700 -> ( ( Set -> Set ) ∋ ( ( λ x6710 -> if false then x6710 else x6700 ) ) ) $ ( x6700 ) ) ) ) $ ( if true then Bool else Bool )
        d667 = ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> if x6690 then x6680 else x6690 ) ) ) $ ( d567 ) ) ) ) $ ( if d368 then d410 else d186 )
        d672 : ( ( Set -> Set ) ∋ ( ( λ x6750 -> if true then Bool else x6750 ) ) ) $ ( if true then Bool else Bool )
        d672 = ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> ( ( Bool -> Bool ) ∋ ( ( λ x6740 -> if true then true else x6740 ) ) ) $ ( x6730 ) ) ) ) $ ( if d616 then false else d91 )
        d676 : ( ( Set -> Set ) ∋ ( ( λ x6780 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d676 = if if d128 then d461 else d512 then if d281 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> d186 ) ) ) $ ( false )
        d679 : ( ( Set -> Set ) ∋ ( ( λ x6820 -> ( ( Set -> Set ) ∋ ( ( λ x6830 -> if false then x6820 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d679 = if ( ( Bool -> Bool ) ∋ ( ( λ x6800 -> false ) ) ) $ ( true ) then if d375 then d439 else d610 else ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> true ) ) ) $ ( false )
        d684 : ( ( Set -> Set ) ∋ ( ( λ x6870 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d684 = ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> if true then x6860 else x6860 ) ) ) $ ( x6850 ) ) ) ) $ ( if d11 then false else d85 )
        d688 : if true then ( ( Set -> Set ) ∋ ( ( λ x6910 -> x6910 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> if false then true else d20 ) ) ) $ ( x6890 ) ) ) ) $ ( if false then d223 else d91 )
        d692 : ( ( Set -> Set ) ∋ ( ( λ x6950 -> ( ( Set -> Set ) ∋ ( ( λ x6960 -> if true then Bool else x6960 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d692 = ( ( Bool -> Bool ) ∋ ( ( λ x6930 -> ( ( Bool -> Bool ) ∋ ( ( λ x6940 -> if false then d488 else x6930 ) ) ) $ ( x6930 ) ) ) ) $ ( if false then d555 else d172 )
        d697 : if true then ( ( Set -> Set ) ∋ ( ( λ x6990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7000 -> x7000 ) ) ) $ ( Bool )
        d697 = if if false then d555 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6980 -> x6980 ) ) ) $ ( false ) else if d340 then d654 else false
        d701 : ( ( Set -> Set ) ∋ ( ( λ x7040 -> if true then Bool else x7040 ) ) ) $ ( if false then Bool else Bool )
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> ( ( Bool -> Bool ) ∋ ( ( λ x7030 -> if false then x7030 else false ) ) ) $ ( true ) ) ) ) $ ( if false then d274 else d266 )
        d705 : ( ( Set -> Set ) ∋ ( ( λ x7080 -> ( ( Set -> Set ) ∋ ( ( λ x7090 -> if false then x7080 else x7090 ) ) ) $ ( x7080 ) ) ) ) $ ( if false then Bool else Bool )
        d705 = ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> ( ( Bool -> Bool ) ∋ ( ( λ x7070 -> if d506 then d57 else d231 ) ) ) $ ( x7060 ) ) ) ) $ ( if d488 then false else false )
        d710 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7130 -> x7130 ) ) ) $ ( Bool )
        d710 = if if d517 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x7110 -> x7110 ) ) ) $ ( d372 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> x7120 ) ) ) $ ( d112 )
        d714 : ( ( Set -> Set ) ∋ ( ( λ x7160 -> ( ( Set -> Set ) ∋ ( ( λ x7170 -> if false then x7160 else x7170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d714 = if ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> x7150 ) ) ) $ ( false ) then if true then false else d492 else if false then d380 else false
        d718 : if false then ( ( Set -> Set ) ∋ ( ( λ x7210 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> if false then d444 else d431 ) ) ) $ ( true ) ) ) ) $ ( if false then d340 else d488 )
        d722 : if false then if true then Bool else Bool else if true then Bool else Bool
        d722 = if ( ( Bool -> Bool ) ∋ ( ( λ x7230 -> x7230 ) ) ) $ ( d580 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7240 -> x7240 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> true ) ) ) $ ( d70 )
        d726 : ( ( Set -> Set ) ∋ ( ( λ x7290 -> ( ( Set -> Set ) ∋ ( ( λ x7300 -> if false then x7300 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d726 = ( ( Bool -> Bool ) ∋ ( ( λ x7270 -> ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> if true then x7270 else x7280 ) ) ) $ ( true ) ) ) ) $ ( if d146 then d37 else d604 )
        d731 : ( ( Set -> Set ) ∋ ( ( λ x7340 -> ( ( Set -> Set ) ∋ ( ( λ x7350 -> if false then x7340 else x7340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> ( ( Bool -> Bool ) ∋ ( ( λ x7330 -> if false then x7320 else true ) ) ) $ ( d179 ) ) ) ) $ ( if true then true else d47 )
        d736 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7380 -> Bool ) ) ) $ ( Bool )
        d736 = if if d199 then d604 else d274 then if d465 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> true ) ) ) $ ( d246 )
        d739 : if false then ( ( Set -> Set ) ∋ ( ( λ x7410 -> x7410 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d739 = if if true then d281 else false then if d340 then true else d538 else ( ( Bool -> Bool ) ∋ ( ( λ x7400 -> x7400 ) ) ) $ ( false )
        d742 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7440 -> x7440 ) ) ) $ ( Bool )
        d742 = ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> if false then x7430 else false ) ) ) $ ( if false then true else false )
        d745 : ( ( Set -> Set ) ∋ ( ( λ x7480 -> if false then x7480 else Bool ) ) ) $ ( if true then Bool else Bool )
        d745 = ( ( Bool -> Bool ) ∋ ( ( λ x7460 -> ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> if false then true else d570 ) ) ) $ ( d47 ) ) ) ) $ ( if d195 then false else d57 )
        d749 : ( ( Set -> Set ) ∋ ( ( λ x7520 -> if false then x7520 else x7520 ) ) ) $ ( if true then Bool else Bool )
        d749 = if ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> d388 ) ) ) $ ( false ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x7510 -> d293 ) ) ) $ ( d305 )
        d753 : if false then ( ( Set -> Set ) ∋ ( ( λ x7550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7560 -> x7560 ) ) ) $ ( Bool )
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> if d364 then x7540 else false ) ) ) $ ( if d97 then d11 else true )
        d757 : if true then ( ( Set -> Set ) ∋ ( ( λ x7590 -> x7590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7600 -> Bool ) ) ) $ ( Bool )
        d757 = ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> if false then x7580 else false ) ) ) $ ( if false then true else true )
        d761 : ( ( Set -> Set ) ∋ ( ( λ x7630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d761 = ( ( Bool -> Bool ) ∋ ( ( λ x7620 -> if x7620 then x7620 else d219 ) ) ) $ ( if true then d525 else true )
        d764 : if true then if true then Bool else Bool else if false then Bool else Bool
        d764 = ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> if true then d337 else true ) ) ) $ ( if true then d203 else d285 )
        d766 : ( ( Set -> Set ) ∋ ( ( λ x7680 -> ( ( Set -> Set ) ∋ ( ( λ x7690 -> if false then Bool else Bool ) ) ) $ ( x7680 ) ) ) ) $ ( if true then Bool else Bool )
        d766 = if if d714 then d1 else false then if false then d742 else d718 else ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> false ) ) ) $ ( d20 )
        d770 : if false then ( ( Set -> Set ) ∋ ( ( λ x7720 -> x7720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7730 -> x7730 ) ) ) $ ( Bool )
        d770 = ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> if false then d575 else x7710 ) ) ) $ ( if true then d484 else d541 )
        d774 : ( ( Set -> Set ) ∋ ( ( λ x7760 -> if false then x7760 else Bool ) ) ) $ ( if true then Bool else Bool )
        d774 = if if false then d78 else true then if d352 then d714 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> x7750 ) ) ) $ ( true )
        d777 : ( ( Set -> Set ) ∋ ( ( λ x7800 -> ( ( Set -> Set ) ∋ ( ( λ x7810 -> if true then x7800 else x7800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d777 = ( ( Bool -> Bool ) ∋ ( ( λ x7780 -> ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> if x7780 then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d407 )
        d782 : ( ( Set -> Set ) ∋ ( ( λ x7840 -> ( ( Set -> Set ) ∋ ( ( λ x7850 -> if false then Bool else Bool ) ) ) $ ( x7840 ) ) ) ) $ ( if false then Bool else Bool )
        d782 = ( ( Bool -> Bool ) ∋ ( ( λ x7830 -> if x7830 then x7830 else d541 ) ) ) $ ( if true then d731 else false )
        d786 : ( ( Set -> Set ) ∋ ( ( λ x7880 -> if false then Bool else x7880 ) ) ) $ ( if true then Bool else Bool )
        d786 = if if d580 then d538 else true then ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> x7870 ) ) ) $ ( true ) else if d330 then true else false
        d789 : ( ( Set -> Set ) ∋ ( ( λ x7920 -> ( ( Set -> Set ) ∋ ( ( λ x7930 -> if true then x7930 else x7920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d789 = if ( ( Bool -> Bool ) ∋ ( ( λ x7900 -> x7900 ) ) ) $ ( false ) then if d281 then d243 else true else ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> d388 ) ) ) $ ( d575 )
        d794 : ( ( Set -> Set ) ∋ ( ( λ x7970 -> ( ( Set -> Set ) ∋ ( ( λ x7980 -> if true then x7980 else Bool ) ) ) $ ( x7970 ) ) ) ) $ ( if true then Bool else Bool )
        d794 = ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> if d298 then true else d285 ) ) ) $ ( d91 ) ) ) ) $ ( if false then d718 else d5 )
        d799 : if false then ( ( Set -> Set ) ∋ ( ( λ x8020 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8030 -> Bool ) ) ) $ ( Bool )
        d799 = ( ( Bool -> Bool ) ∋ ( ( λ x8000 -> ( ( Bool -> Bool ) ∋ ( ( λ x8010 -> if false then false else true ) ) ) $ ( d78 ) ) ) ) $ ( if d789 then true else false )
        d804 : if false then ( ( Set -> Set ) ∋ ( ( λ x8070 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d804 = ( ( Bool -> Bool ) ∋ ( ( λ x8050 -> ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> if x8050 then x8050 else x8060 ) ) ) $ ( d305 ) ) ) ) $ ( if false then false else d102 )
        d808 : if false then ( ( Set -> Set ) ∋ ( ( λ x8100 -> x8100 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d808 = ( ( Bool -> Bool ) ∋ ( ( λ x8090 -> if x8090 then true else false ) ) ) $ ( if d761 then false else d372 )
        d811 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8130 -> Bool ) ) ) $ ( Bool )
        d811 = if if d203 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x8120 -> x8120 ) ) ) $ ( d298 ) else if d421 then d629 else false
        d814 : if true then ( ( Set -> Set ) ∋ ( ( λ x8160 -> x8160 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8170 -> x8170 ) ) ) $ ( Bool )
        d814 = ( ( Bool -> Bool ) ∋ ( ( λ x8150 -> if x8150 then true else d692 ) ) ) $ ( if true then false else true )
        d818 : ( ( Set -> Set ) ∋ ( ( λ x8210 -> ( ( Set -> Set ) ∋ ( ( λ x8220 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d818 = ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> if false then d102 else false ) ) ) $ ( true ) ) ) ) $ ( if d257 then false else d742 )
        d823 : if false then ( ( Set -> Set ) ∋ ( ( λ x8250 -> x8250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8260 -> Bool ) ) ) $ ( Bool )
        d823 = if ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> x8240 ) ) ) $ ( d97 ) then if false then d219 else false else if d799 then false else false
        d827 : if true then if true then Bool else Bool else if true then Bool else Bool
        d827 = ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> if x8280 then x8280 else d74 ) ) ) $ ( x8280 ) ) ) ) $ ( if d465 then d410 else false )
        d830 : ( ( Set -> Set ) ∋ ( ( λ x8330 -> ( ( Set -> Set ) ∋ ( ( λ x8340 -> if false then x8330 else x8340 ) ) ) $ ( x8330 ) ) ) ) $ ( if true then Bool else Bool )
        d830 = if ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> d415 ) ) ) $ ( d421 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> d415 ) ) ) $ ( true ) else if true then false else d186
        d835 : ( ( Set -> Set ) ∋ ( ( λ x8370 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d835 = ( ( Bool -> Bool ) ∋ ( ( λ x8360 -> if d469 then x8360 else d645 ) ) ) $ ( if false then d525 else false )
        d838 : ( ( Set -> Set ) ∋ ( ( λ x8410 -> ( ( Set -> Set ) ∋ ( ( λ x8420 -> if false then Bool else x8420 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d838 = if ( ( Bool -> Bool ) ∋ ( ( λ x8390 -> false ) ) ) $ ( d290 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8400 -> x8400 ) ) ) $ ( d303 ) else if false then false else true
        d843 : ( ( Set -> Set ) ∋ ( ( λ x8460 -> ( ( Set -> Set ) ∋ ( ( λ x8470 -> if true then Bool else x8460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d843 = if ( ( Bool -> Bool ) ∋ ( ( λ x8440 -> d327 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> true ) ) ) $ ( d629 ) else if true then d528 else d239
        d848 : ( ( Set -> Set ) ∋ ( ( λ x8510 -> ( ( Set -> Set ) ∋ ( ( λ x8520 -> if false then x8520 else Bool ) ) ) $ ( x8510 ) ) ) ) $ ( if false then Bool else Bool )
        d848 = ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> ( ( Bool -> Bool ) ∋ ( ( λ x8500 -> if x8490 then false else x8490 ) ) ) $ ( d231 ) ) ) ) $ ( if false then d621 else d383 )
        d853 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8540 -> x8540 ) ) ) $ ( Bool )
        d853 = if if d774 then d212 else false then if d538 then true else d167 else if d195 then false else d293
        d855 : ( ( Set -> Set ) ∋ ( ( λ x8580 -> ( ( Set -> Set ) ∋ ( ( λ x8590 -> if true then Bool else x8580 ) ) ) $ ( x8580 ) ) ) ) $ ( if true then Bool else Bool )
        d855 = ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> if d789 then false else true ) ) ) $ ( x8560 ) ) ) ) $ ( if true then d227 else true )
        d860 : ( ( Set -> Set ) ∋ ( ( λ x8630 -> if false then x8630 else Bool ) ) ) $ ( if true then Bool else Bool )
        d860 = if ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> x8610 ) ) ) $ ( d179 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8620 -> false ) ) ) $ ( d774 ) else if d457 then d770 else false
        d864 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8670 -> Bool ) ) ) $ ( Bool )
        d864 = ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> ( ( Bool -> Bool ) ∋ ( ( λ x8660 -> if true then true else x8660 ) ) ) $ ( x8650 ) ) ) ) $ ( if d764 then false else true )
        d868 : ( ( Set -> Set ) ∋ ( ( λ x8710 -> ( ( Set -> Set ) ∋ ( ( λ x8720 -> if false then Bool else Bool ) ) ) $ ( x8710 ) ) ) ) $ ( if false then Bool else Bool )
        d868 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> false ) ) ) $ ( d195 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8700 -> x8700 ) ) ) $ ( false )
        d873 : if true then ( ( Set -> Set ) ∋ ( ( λ x8750 -> x8750 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> if false then true else true ) ) ) $ ( if d811 then d375 else true )
        d876 : ( ( Set -> Set ) ∋ ( ( λ x8780 -> if false then x8780 else Bool ) ) ) $ ( if true then Bool else Bool )
        d876 = if if d654 then true else false then if d139 then d360 else d327 else ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> true ) ) ) $ ( d731 )
        d879 : ( ( Set -> Set ) ∋ ( ( λ x8810 -> ( ( Set -> Set ) ∋ ( ( λ x8820 -> if false then Bool else x8820 ) ) ) $ ( x8810 ) ) ) ) $ ( if false then Bool else Bool )
        d879 = ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> if false then d718 else d203 ) ) ) $ ( if false then true else d61 )
        d883 : if true then ( ( Set -> Set ) ∋ ( ( λ x8860 -> x8860 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> ( ( Bool -> Bool ) ∋ ( ( λ x8850 -> if x8850 then d128 else true ) ) ) $ ( false ) ) ) ) $ ( if d616 then d212 else true )
        d887 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( Bool )
        d887 = if if true then true else true then if false then true else true else if d804 then true else true
        d889 : ( ( Set -> Set ) ∋ ( ( λ x8900 -> if false then x8900 else Bool ) ) ) $ ( if true then Bool else Bool )
        d889 = if if false then d528 else true then if d508 then false else true else if true then d692 else d604
        d891 : ( ( Set -> Set ) ∋ ( ( λ x8930 -> ( ( Set -> Set ) ∋ ( ( λ x8940 -> if false then Bool else x8940 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d891 = ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> if x8920 then false else x8920 ) ) ) $ ( if d383 then d277 else d640 )
        d895 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8970 -> x8970 ) ) ) $ ( Bool )
        d895 = ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> if false then true else x8960 ) ) ) $ ( if d128 then true else false )
        d898 : ( ( Set -> Set ) ∋ ( ( λ x9000 -> if false then Bool else x9000 ) ) ) $ ( if false then Bool else Bool )
        d898 = if if d40 then true else d645 then ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> d439 ) ) ) $ ( d484 ) else if d448 then d714 else false
        d901 : if true then ( ( Set -> Set ) ∋ ( ( λ x9030 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d901 = ( ( Bool -> Bool ) ∋ ( ( λ x9020 -> if d402 then true else true ) ) ) $ ( if true then false else true )
        d904 : if true then ( ( Set -> Set ) ∋ ( ( λ x9060 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9070 -> Bool ) ) ) $ ( Bool )
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> if x9050 then d883 else false ) ) ) $ ( if d613 then d731 else false )
        d908 : if true then if false then Bool else Bool else if false then Bool else Bool
        d908 = ( ( Bool -> Bool ) ∋ ( ( λ x9090 -> ( ( Bool -> Bool ) ∋ ( ( λ x9100 -> if true then x9090 else true ) ) ) $ ( d595 ) ) ) ) $ ( if d195 then true else true )
        d911 : ( ( Set -> Set ) ∋ ( ( λ x9140 -> ( ( Set -> Set ) ∋ ( ( λ x9150 -> if false then x9150 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d911 = ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> if d461 then true else d904 ) ) ) $ ( d172 ) ) ) ) $ ( if d74 then d183 else d761 )
        d916 : if true then if false then Bool else Bool else if true then Bool else Bool
        d916 = ( ( Bool -> Bool ) ∋ ( ( λ x9170 -> ( ( Bool -> Bool ) ∋ ( ( λ x9180 -> if false then true else true ) ) ) $ ( x9170 ) ) ) ) $ ( if false then true else d534 )
        d919 : if true then ( ( Set -> Set ) ∋ ( ( λ x9200 -> x9200 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d919 = if if false then d135 else d534 then if d895 then true else d848 else if true then true else true
        d921 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9240 -> Bool ) ) ) $ ( Bool )
        d921 = ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> ( ( Bool -> Bool ) ∋ ( ( λ x9230 -> if false then x9230 else d868 ) ) ) $ ( d718 ) ) ) ) $ ( if d356 then true else d74 )
        d925 : if true then if false then Bool else Bool else if true then Bool else Bool
        d925 = ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> ( ( Bool -> Bool ) ∋ ( ( λ x9270 -> if d78 then x9270 else x9260 ) ) ) $ ( false ) ) ) ) $ ( if d672 then d410 else d135 )
        d928 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9300 -> Bool ) ) ) $ ( Bool )
        d928 = if if d538 then d634 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> d16 ) ) ) $ ( true ) else if false then d257 else d555
        d931 : ( ( Set -> Set ) ∋ ( ( λ x9320 -> if false then x9320 else x9320 ) ) ) $ ( if false then Bool else Bool )
        d931 = if if false then d876 else true then if d37 then false else true else if d461 then d457 else d684
        d933 : if false then if false then Bool else Bool else if false then Bool else Bool
        d933 = if ( ( Bool -> Bool ) ∋ ( ( λ x9340 -> x9340 ) ) ) $ ( d57 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> false ) ) ) $ ( d522 ) else if d285 then true else false
        d936 : ( ( Set -> Set ) ∋ ( ( λ x9390 -> ( ( Set -> Set ) ∋ ( ( λ x9400 -> if false then x9400 else x9390 ) ) ) $ ( x9390 ) ) ) ) $ ( if false then Bool else Bool )
        d936 = if if true then d804 else d933 then ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> false ) ) ) $ ( d477 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> d742 ) ) ) $ ( d638 )
        d941 : if true then if true then Bool else Bool else if false then Bool else Bool
        d941 = if if d588 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x9420 -> false ) ) ) $ ( true ) else if d189 then d634 else true
        d943 : if false then ( ( Set -> Set ) ∋ ( ( λ x9450 -> x9450 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d943 = if ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> d24 ) ) ) $ ( true ) then if d97 then true else d53 else if d804 then d457 else d757
        d946 : ( ( Set -> Set ) ∋ ( ( λ x9490 -> ( ( Set -> Set ) ∋ ( ( λ x9500 -> if true then x9490 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d946 = if if false then false else d676 then ( ( Bool -> Bool ) ∋ ( ( λ x9470 -> x9470 ) ) ) $ ( d352 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> d855 ) ) ) $ ( false )
        d951 : ( ( Set -> Set ) ∋ ( ( λ x9550 -> if false then x9550 else Bool ) ) ) $ ( if false then Bool else Bool )
        d951 = if ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> true ) ) ) $ ( d125 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9530 -> d74 ) ) ) $ ( d629 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> x9540 ) ) ) $ ( true )
        d956 : if false then if true then Bool else Bool else if true then Bool else Bool
        d956 = if ( ( Bool -> Bool ) ∋ ( ( λ x9570 -> false ) ) ) $ ( false ) then if true then false else d78 else ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> true ) ) ) $ ( d492 )
        d959 : ( ( Set -> Set ) ∋ ( ( λ x9610 -> if false then x9610 else Bool ) ) ) $ ( if false then Bool else Bool )
        d959 = if if d956 then d598 else d919 then ( ( Bool -> Bool ) ∋ ( ( λ x9600 -> x9600 ) ) ) $ ( d183 ) else if true then d407 else true
        d962 : ( ( Set -> Set ) ∋ ( ( λ x9650 -> if true then x9650 else x9650 ) ) ) $ ( if false then Bool else Bool )
        d962 = if ( ( Bool -> Bool ) ∋ ( ( λ x9630 -> d629 ) ) ) $ ( d352 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9640 -> x9640 ) ) ) $ ( true ) else if d512 then false else d484
        d966 : ( ( Set -> Set ) ∋ ( ( λ x9700 -> if false then x9700 else Bool ) ) ) $ ( if true then Bool else Bool )
        d966 = if ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> true ) ) ) $ ( d613 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9680 -> true ) ) ) $ ( d175 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> true ) ) ) $ ( false )
        d971 : ( ( Set -> Set ) ∋ ( ( λ x9730 -> if false then x9730 else x9730 ) ) ) $ ( if true then Bool else Bool )
        d971 = ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> if x9720 then d239 else x9720 ) ) ) $ ( if d195 then true else false )
        d974 : ( ( Set -> Set ) ∋ ( ( λ x9760 -> if false then x9760 else x9760 ) ) ) $ ( if true then Bool else Bool )
        d974 = if if d488 then false else d876 then ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> x9750 ) ) ) $ ( true ) else if d548 then d112 else d634
        d977 : if true then ( ( Set -> Set ) ∋ ( ( λ x9800 -> x9800 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9810 -> Bool ) ) ) $ ( Bool )
        d977 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> d345 ) ) ) $ ( d285 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> d397 ) ) ) $ ( true )
        d982 : ( ( Set -> Set ) ∋ ( ( λ x9840 -> if true then x9840 else Bool ) ) ) $ ( if false then Bool else Bool )
        d982 = ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> if true then d898 else d465 ) ) ) $ ( if d701 then d538 else true )
        d985 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9870 -> Bool ) ) ) $ ( Bool )
        d985 = ( ( Bool -> Bool ) ∋ ( ( λ x9860 -> if true then x9860 else x9860 ) ) ) $ ( if d789 then d207 else true )
        d988 : if true then ( ( Set -> Set ) ∋ ( ( λ x9910 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d988 = if ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> d161 ) ) ) $ ( true ) then if d848 then d808 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9900 -> d908 ) ) ) $ ( d645 )
        d992 : if false then ( ( Set -> Set ) ∋ ( ( λ x9940 -> x9940 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d992 = ( ( Bool -> Bool ) ∋ ( ( λ x9930 -> if d919 then false else false ) ) ) $ ( if d183 then false else d135 )
        d995 : if true then ( ( Set -> Set ) ∋ ( ( λ x9980 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9990 -> x9990 ) ) ) $ ( Bool )
        d995 = if ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> x9960 ) ) ) $ ( d823 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> x9970 ) ) ) $ ( d761 ) else if true then d492 else d684
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10030 -> ( ( Set -> Set ) ∋ ( ( λ x10040 -> if false then x10030 else x10040 ) ) ) $ ( x10030 ) ) ) ) $ ( if true then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> if false then x10020 else d410 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d1005 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10090 -> x10090 ) ) ) $ ( Bool )
        d1005 = if ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> false ) ) ) $ ( d919 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10070 -> x10070 ) ) ) $ ( d480 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10080 -> true ) ) ) $ ( d116 )
        d1010 : if false then ( ( Set -> Set ) ∋ ( ( λ x10110 -> x10110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1010 = if if d448 then true else true then if false then d37 else false else if true then true else d231
        d1012 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1012 = ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> ( ( Bool -> Bool ) ∋ ( ( λ x10140 -> if x10130 then true else d638 ) ) ) $ ( x10130 ) ) ) ) $ ( if false then d375 else false )
        d1015 : if true then ( ( Set -> Set ) ∋ ( ( λ x10170 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1015 = if ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> d216 ) ) ) $ ( true ) then if false then false else false else if true then true else true
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x10210 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1018 = ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> if false then false else false ) ) ) $ ( false ) ) ) ) $ ( if true then true else d726 )
        d1022 : ( ( Set -> Set ) ∋ ( ( λ x10240 -> if true then Bool else x10240 ) ) ) $ ( if false then Bool else Bool )
        d1022 = if if true then false else true then if true then d88 else d818 else ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> d333 ) ) ) $ ( false )
        d1025 : if true then ( ( Set -> Set ) ∋ ( ( λ x10260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10270 -> x10270 ) ) ) $ ( Bool )
        d1025 = if if true then false else false then if true then true else d189 else if d309 then true else false
        d1028 : if false then ( ( Set -> Set ) ∋ ( ( λ x10310 -> x10310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10320 -> Bool ) ) ) $ ( Bool )
        d1028 = ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> if true then true else x10300 ) ) ) $ ( x10290 ) ) ) ) $ ( if d879 then false else false )
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x10360 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1033 = ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if false then d125 else d305 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d1037 : if true then ( ( Set -> Set ) ∋ ( ( λ x10390 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1037 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> d726 ) ) ) $ ( true ) else if true then d672 else d407
        d1040 : if false then ( ( Set -> Set ) ∋ ( ( λ x10430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10440 -> x10440 ) ) ) $ ( Bool )
        d1040 = if if false then d97 else true then ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> x10410 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> d946 ) ) ) $ ( d277 )
        d1045 : if true then ( ( Set -> Set ) ∋ ( ( λ x10470 -> x10470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10480 -> Bool ) ) ) $ ( Bool )
        d1045 = ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> if x10460 then d977 else x10460 ) ) ) $ ( if d667 then false else true )
        d1049 : if false then ( ( Set -> Set ) ∋ ( ( λ x10510 -> x10510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10520 -> Bool ) ) ) $ ( Bool )
        d1049 = ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> if x10500 then true else false ) ) ) $ ( if true then true else d1045 )
        d1053 : if true then ( ( Set -> Set ) ∋ ( ( λ x10570 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1053 = if ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> true ) ) ) $ ( d207 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> d492 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> d508 ) ) ) $ ( true )
        d1058 : ( ( Set -> Set ) ∋ ( ( λ x10610 -> ( ( Set -> Set ) ∋ ( ( λ x10620 -> if false then Bool else x10620 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1058 = ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> ( ( Bool -> Bool ) ∋ ( ( λ x10600 -> if x10590 then false else d753 ) ) ) $ ( d555 ) ) ) ) $ ( if d1018 then d193 else d102 )
        d1063 : if false then ( ( Set -> Set ) ∋ ( ( λ x10660 -> x10660 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1063 = ( ( Bool -> Bool ) ∋ ( ( λ x10640 -> ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> if false then d667 else x10650 ) ) ) $ ( d876 ) ) ) ) $ ( if d352 then d227 else false )
        d1067 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10690 -> Bool ) ) ) $ ( Bool )
        d1067 = if if d876 then d588 else d43 then if true then d424 else true else ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> x10680 ) ) ) $ ( d274 )
        d1070 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1070 = ( ( Bool -> Bool ) ∋ ( ( λ x10710 -> if d345 then d562 else d657 ) ) ) $ ( if d1040 then true else d848 )
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1072 = ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> if d372 then d688 else false ) ) ) $ ( if true then true else true )
        d1075 : if true then ( ( Set -> Set ) ∋ ( ( λ x10780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10790 -> Bool ) ) ) $ ( Bool )
        d1075 = ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> if false then false else x10770 ) ) ) $ ( d388 ) ) ) ) $ ( if true then d125 else d512 )
        d1080 : ( ( Set -> Set ) ∋ ( ( λ x10820 -> if false then x10820 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1080 = if if d1028 then false else true then if true then d714 else true else ( ( Bool -> Bool ) ∋ ( ( λ x10810 -> x10810 ) ) ) $ ( true )
        d1083 : if false then ( ( Set -> Set ) ∋ ( ( λ x10860 -> x10860 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10870 -> Bool ) ) ) $ ( Bool )
        d1083 = ( ( Bool -> Bool ) ∋ ( ( λ x10840 -> ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> if true then d1018 else x10840 ) ) ) $ ( d508 ) ) ) ) $ ( if false then d860 else d120 )
        d1088 : if false then ( ( Set -> Set ) ∋ ( ( λ x10910 -> x10910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10920 -> x10920 ) ) ) $ ( Bool )
        d1088 = if ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> true ) ) ) $ ( d91 ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x10900 -> x10900 ) ) ) $ ( d919 )
        d1093 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10950 -> x10950 ) ) ) $ ( Bool )
        d1093 = ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> if x10940 then x10940 else d142 ) ) ) $ ( if true then d383 else d337 )
        d1096 : if false then ( ( Set -> Set ) ∋ ( ( λ x10990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11000 -> Bool ) ) ) $ ( Bool )
        d1096 = ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> if true then x10970 else x10980 ) ) ) $ ( d766 ) ) ) ) $ ( if d604 then d1053 else false )
        d1101 : if false then ( ( Set -> Set ) ∋ ( ( λ x11030 -> x11030 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1101 = if if d415 then true else d88 then ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> d971 ) ) ) $ ( d818 ) else if true then false else false
        d1104 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11060 -> Bool ) ) ) $ ( Bool )
        d1104 = ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> if x11050 then x11050 else x11050 ) ) ) $ ( if d654 then d383 else true )
        d1107 : ( ( Set -> Set ) ∋ ( ( λ x11100 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1107 = ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> ( ( Bool -> Bool ) ∋ ( ( λ x11090 -> if d207 then d435 else true ) ) ) $ ( true ) ) ) ) $ ( if d931 then true else false )
        d1111 : ( ( Set -> Set ) ∋ ( ( λ x11150 -> if false then x11150 else x11150 ) ) ) $ ( if true then Bool else Bool )
        d1111 = if ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> d941 ) ) ) $ ( d525 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11130 -> x11130 ) ) ) $ ( d895 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> false ) ) ) $ ( d808 )
        d1116 : ( ( Set -> Set ) ∋ ( ( λ x11180 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1116 = ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> if x11170 then x11170 else d285 ) ) ) $ ( if d679 then d402 else false )
        d1119 : ( ( Set -> Set ) ∋ ( ( λ x11220 -> if true then x11220 else x11220 ) ) ) $ ( if false then Bool else Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x11200 -> ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> if x11210 then d692 else true ) ) ) $ ( x11200 ) ) ) ) $ ( if false then d207 else d701 )
        d1123 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1123 = if ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> true ) ) ) $ ( d1045 ) then if d742 then d742 else false else ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> false ) ) ) $ ( true )
        d1126 : if false then ( ( Set -> Set ) ∋ ( ( λ x11290 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1126 = if ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> d255 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> d916 ) ) ) $ ( d309 ) else if d239 then d364 else d1028
        d1130 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11330 -> x11330 ) ) ) $ ( Bool )
        d1130 = ( ( Bool -> Bool ) ∋ ( ( λ x11310 -> ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> if x11310 then false else d16 ) ) ) $ ( false ) ) ) ) $ ( if d928 then d613 else d873 )
        d1134 : ( ( Set -> Set ) ∋ ( ( λ x11360 -> if true then x11360 else x11360 ) ) ) $ ( if true then Bool else Bool )
        d1134 = ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> if d65 then false else x11350 ) ) ) $ ( if true then true else true )
        d1137 : if true then ( ( Set -> Set ) ∋ ( ( λ x11400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11410 -> Bool ) ) ) $ ( Bool )
        d1137 = ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> ( ( Bool -> Bool ) ∋ ( ( λ x11390 -> if x11380 then false else true ) ) ) $ ( x11380 ) ) ) ) $ ( if false then d1028 else d1045 )
        d1142 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1142 = ( ( Bool -> Bool ) ∋ ( ( λ x11430 -> if d112 then d20 else d97 ) ) ) $ ( if d692 then d789 else d155 )
        d1144 : ( ( Set -> Set ) ∋ ( ( λ x11460 -> ( ( Set -> Set ) ∋ ( ( λ x11470 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1144 = if ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> d298 ) ) ) $ ( d417 ) then if d261 then d868 else d452 else if true then d525 else true
        d1148 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11500 -> Bool ) ) ) $ ( Bool )
        d1148 = ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> if x11490 then d977 else true ) ) ) $ ( if d692 then d43 else false )
        d1151 : if false then ( ( Set -> Set ) ∋ ( ( λ x11540 -> x11540 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11550 -> x11550 ) ) ) $ ( Bool )
        d1151 = ( ( Bool -> Bool ) ∋ ( ( λ x11520 -> ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> if x11520 then d455 else d592 ) ) ) $ ( false ) ) ) ) $ ( if false then d1083 else d193 )
        d1156 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1156 = ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> if false then d860 else d672 ) ) ) $ ( if d402 then d621 else false )
        d1158 : if false then ( ( Set -> Set ) ∋ ( ( λ x11600 -> x11600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11610 -> x11610 ) ) ) $ ( Bool )
        d1158 = if if d1037 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> true ) ) ) $ ( d1144 ) else if d879 then false else true
        d1162 : ( ( Set -> Set ) ∋ ( ( λ x11640 -> if false then x11640 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1162 = if ( ( Bool -> Bool ) ∋ ( ( λ x11630 -> true ) ) ) $ ( false ) then if false then d555 else false else if false then false else d315
        d1165 : ( ( Set -> Set ) ∋ ( ( λ x11670 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1165 = if ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> true ) ) ) $ ( d461 ) then if d102 then d469 else d281 else if false then true else d541
        d1168 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11700 -> x11700 ) ) ) $ ( Bool )
        d1168 = ( ( Bool -> Bool ) ∋ ( ( λ x11690 -> if true then x11690 else false ) ) ) $ ( if d667 then false else d936 )
        d1171 : ( ( Set -> Set ) ∋ ( ( λ x11740 -> ( ( Set -> Set ) ∋ ( ( λ x11750 -> if false then x11750 else x11740 ) ) ) $ ( x11740 ) ) ) ) $ ( if false then Bool else Bool )
        d1171 = ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> ( ( Bool -> Bool ) ∋ ( ( λ x11730 -> if true then x11720 else d452 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d199 )
        d1176 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11790 -> x11790 ) ) ) $ ( Bool )
        d1176 = if ( ( Bool -> Bool ) ∋ ( ( λ x11770 -> d541 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11780 -> x11780 ) ) ) $ ( false ) else if false then d271 else d971
        d1180 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1180 = ( ( Bool -> Bool ) ∋ ( ( λ x11810 -> if x11810 then true else d223 ) ) ) $ ( if d1176 then d1119 else false )
        d1182 : if true then ( ( Set -> Set ) ∋ ( ( λ x11850 -> x11850 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11860 -> x11860 ) ) ) $ ( Bool )
        d1182 = ( ( Bool -> Bool ) ∋ ( ( λ x11830 -> ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> if x11830 then false else true ) ) ) $ ( true ) ) ) ) $ ( if false then d616 else d404 )
        d1187 : if true then ( ( Set -> Set ) ∋ ( ( λ x11890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11900 -> Bool ) ) ) $ ( Bool )
        d1187 = ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> if true then d995 else x11880 ) ) ) $ ( if d356 then false else true )
        d1191 : ( ( Set -> Set ) ∋ ( ( λ x11930 -> if true then x11930 else x11930 ) ) ) $ ( if true then Bool else Bool )
        d1191 = if if d887 then true else d1151 then ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> x11920 ) ) ) $ ( true ) else if true then d88 else d397
        d1194 : ( ( Set -> Set ) ∋ ( ( λ x11960 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1194 = ( ( Bool -> Bool ) ∋ ( ( λ x11950 -> if d309 then x11950 else false ) ) ) $ ( if d911 then d428 else d570 )
        d1197 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11990 -> x11990 ) ) ) $ ( Bool )
        d1197 = ( ( Bool -> Bool ) ∋ ( ( λ x11980 -> if true then d534 else x11980 ) ) ) $ ( if true then false else d161 )
        d1200 : if true then ( ( Set -> Set ) ∋ ( ( λ x12030 -> x12030 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1200 = ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> if false then true else false ) ) ) $ ( d545 ) ) ) ) $ ( if d383 then d216 else d1144 )
        d1204 : ( ( Set -> Set ) ∋ ( ( λ x12070 -> ( ( Set -> Set ) ∋ ( ( λ x12080 -> if true then x12070 else x12080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1204 = ( ( Bool -> Bool ) ∋ ( ( λ x12050 -> ( ( Bool -> Bool ) ∋ ( ( λ x12060 -> if false then x12060 else true ) ) ) $ ( d348 ) ) ) ) $ ( if d81 then false else true )
        d1209 : ( ( Set -> Set ) ∋ ( ( λ x12110 -> ( ( Set -> Set ) ∋ ( ( λ x12120 -> if true then Bool else x12120 ) ) ) $ ( x12110 ) ) ) ) $ ( if false then Bool else Bool )
        d1209 = ( ( Bool -> Bool ) ∋ ( ( λ x12100 -> if false then true else d488 ) ) ) $ ( if d789 then d85 else d1126 )
        d1213 : ( ( Set -> Set ) ∋ ( ( λ x12160 -> ( ( Set -> Set ) ∋ ( ( λ x12170 -> if false then x12170 else x12170 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1213 = if if true then d1096 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12140 -> x12140 ) ) ) $ ( d823 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12150 -> d1204 ) ) ) $ ( false )
        d1218 : ( ( Set -> Set ) ∋ ( ( λ x12210 -> if false then Bool else x12210 ) ) ) $ ( if false then Bool else Bool )
        d1218 = ( ( Bool -> Bool ) ∋ ( ( λ x12190 -> ( ( Bool -> Bool ) ∋ ( ( λ x12200 -> if x12190 then false else d506 ) ) ) $ ( d1058 ) ) ) ) $ ( if true then true else true )
        d1222 : ( ( Set -> Set ) ∋ ( ( λ x12250 -> ( ( Set -> Set ) ∋ ( ( λ x12260 -> if false then Bool else x12260 ) ) ) $ ( x12250 ) ) ) ) $ ( if false then Bool else Bool )
        d1222 = ( ( Bool -> Bool ) ∋ ( ( λ x12230 -> ( ( Bool -> Bool ) ∋ ( ( λ x12240 -> if false then false else x12230 ) ) ) $ ( d570 ) ) ) ) $ ( if d941 then d925 else false )
        d1227 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1227 = ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> if d397 then x12290 else true ) ) ) $ ( x12280 ) ) ) ) $ ( if false then d1058 else false )
        d1230 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1230 = if ( ( Bool -> Bool ) ∋ ( ( λ x12310 -> x12310 ) ) ) $ ( d155 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> d43 ) ) ) $ ( d1083 ) else if true then d770 else false
        d1233 : ( ( Set -> Set ) ∋ ( ( λ x12350 -> if false then Bool else x12350 ) ) ) $ ( if true then Bool else Bool )
        d1233 = if ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> d266 ) ) ) $ ( false ) then if d992 then false else d933 else if true then d106 else false
        d1236 : ( ( Set -> Set ) ∋ ( ( λ x12380 -> if true then x12380 else x12380 ) ) ) $ ( if true then Bool else Bool )
        d1236 = ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> if d488 then x12370 else x12370 ) ) ) $ ( if d1005 then true else true )
        d1239 : if true then ( ( Set -> Set ) ∋ ( ( λ x12410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12420 -> x12420 ) ) ) $ ( Bool )
        d1239 = ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> if x12400 then d580 else true ) ) ) $ ( if d139 then true else d919 )
        d1243 : ( ( Set -> Set ) ∋ ( ( λ x12450 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1243 = if if d799 then false else d883 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x12440 -> false ) ) ) $ ( false )
        d1246 : ( ( Set -> Set ) ∋ ( ( λ x12480 -> ( ( Set -> Set ) ∋ ( ( λ x12490 -> if false then x12490 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1246 = if if d484 then d322 else true then if false then false else d718 else ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> x12470 ) ) ) $ ( d407 )
        d1250 : if false then ( ( Set -> Set ) ∋ ( ( λ x12530 -> x12530 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1250 = ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> if true then true else d388 ) ) ) $ ( x12510 ) ) ) ) $ ( if d469 then d20 else d1144 )
        d1254 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12560 -> Bool ) ) ) $ ( Bool )
        d1254 = ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> if d777 then true else d345 ) ) ) $ ( if false then true else true )
        d1257 : if true then ( ( Set -> Set ) ∋ ( ( λ x12590 -> x12590 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1257 = ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> if true then false else d692 ) ) ) $ ( if false then false else d541 )
        d1260 : ( ( Set -> Set ) ∋ ( ( λ x12620 -> if false then x12620 else x12620 ) ) ) $ ( if false then Bool else Bool )
        d1260 = ( ( Bool -> Bool ) ∋ ( ( λ x12610 -> if d774 then false else false ) ) ) $ ( if d555 then true else false )
        d1263 : ( ( Set -> Set ) ∋ ( ( λ x12650 -> ( ( Set -> Set ) ∋ ( ( λ x12660 -> if true then Bool else x12650 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1263 = if ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> d388 ) ) ) $ ( false ) then if d1182 then true else d1204 else if false then false else d789
        d1267 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12690 -> x12690 ) ) ) $ ( Bool )
        d1267 = if if d274 then d34 else false then if false then d661 else d951 else ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> d1227 ) ) ) $ ( true )
        d1270 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12730 -> x12730 ) ) ) $ ( Bool )
        d1270 = ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> ( ( Bool -> Bool ) ∋ ( ( λ x12720 -> if d638 then x12710 else d1209 ) ) ) $ ( x12710 ) ) ) ) $ ( if d567 then true else d710 )
        d1274 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1274 = if ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> false ) ) ) $ ( d1104 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12760 -> false ) ) ) $ ( false ) else if d789 then true else true
        d1277 : ( ( Set -> Set ) ∋ ( ( λ x12790 -> ( ( Set -> Set ) ∋ ( ( λ x12800 -> if false then x12790 else x12790 ) ) ) $ ( x12790 ) ) ) ) $ ( if false then Bool else Bool )
        d1277 = ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> if x12780 then false else x12780 ) ) ) $ ( if d562 then d811 else d661 )
        d1281 : ( ( Set -> Set ) ∋ ( ( λ x12850 -> if true then x12850 else x12850 ) ) ) $ ( if false then Bool else Bool )
        d1281 = if ( ( Bool -> Bool ) ∋ ( ( λ x12820 -> x12820 ) ) ) $ ( d1171 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> d303 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> false ) ) ) $ ( false )
        d1286 : if false then ( ( Set -> Set ) ∋ ( ( λ x12880 -> x12880 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1286 = ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> if false then false else false ) ) ) $ ( if true then true else d1180 )
        d1289 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1289 = ( ( Bool -> Bool ) ∋ ( ( λ x12900 -> ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> if x12910 then d428 else d298 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d1292 : if true then ( ( Set -> Set ) ∋ ( ( λ x12950 -> x12950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12960 -> x12960 ) ) ) $ ( Bool )
        d1292 = ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> if x12940 then d1134 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d814 else true )
        d1297 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12990 -> Bool ) ) ) $ ( Bool )
        d1297 = ( ( Bool -> Bool ) ∋ ( ( λ x12980 -> if x12980 then d1134 else d1254 ) ) ) $ ( if d736 then false else false )
        d1300 : ( ( Set -> Set ) ∋ ( ( λ x13020 -> if true then x13020 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1300 = ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> if true then x13010 else false ) ) ) $ ( if d368 then true else false )
        d1303 : if false then ( ( Set -> Set ) ∋ ( ( λ x13050 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1303 = ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> if true then d517 else true ) ) ) $ ( if d125 then d1239 else true )
        d1306 : if false then ( ( Set -> Set ) ∋ ( ( λ x13080 -> x13080 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13090 -> Bool ) ) ) $ ( Bool )
        d1306 = ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> if x13070 then false else x13070 ) ) ) $ ( if d364 then d835 else d1025 )
        d1310 : if false then ( ( Set -> Set ) ∋ ( ( λ x13130 -> x13130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13140 -> Bool ) ) ) $ ( Bool )
        d1310 = if if false then d883 else false then ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> false ) ) ) $ ( d345 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> x13120 ) ) ) $ ( d375 )
        d1315 : if true then ( ( Set -> Set ) ∋ ( ( λ x13180 -> x13180 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1315 = if if false then true else d261 then ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> d966 ) ) ) $ ( d522 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> true ) ) ) $ ( true )
        d1319 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1319 = if ( ( Bool -> Bool ) ∋ ( ( λ x13200 -> x13200 ) ) ) $ ( true ) then if true then d692 else true else ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> true ) ) ) $ ( false )
        d1322 : if true then ( ( Set -> Set ) ∋ ( ( λ x13230 -> x13230 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13240 -> Bool ) ) ) $ ( Bool )
        d1322 = if if false then d966 else d933 then if true then d1230 else true else if false then false else false
        d1325 : if true then ( ( Set -> Set ) ∋ ( ( λ x13270 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1325 = ( ( Bool -> Bool ) ∋ ( ( λ x13260 -> if d1162 then x13260 else d895 ) ) ) $ ( if false then true else false )
        d1328 : ( ( Set -> Set ) ∋ ( ( λ x13310 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1328 = if ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> true ) ) ) $ ( d1236 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13300 -> false ) ) ) $ ( d327 ) else if d424 then true else true
        d1332 : if false then ( ( Set -> Set ) ∋ ( ( λ x13340 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1332 = if if d710 then d43 else d1267 then ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> false ) ) ) $ ( d782 ) else if false then true else true
        d1335 : ( ( Set -> Set ) ∋ ( ( λ x13380 -> if false then x13380 else x13380 ) ) ) $ ( if false then Bool else Bool )
        d1335 = ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> if d1297 then false else d380 ) ) ) $ ( true ) ) ) ) $ ( if false then d431 else true )
        d1339 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13410 -> Bool ) ) ) $ ( Bool )
        d1339 = ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> if x13400 then false else x13400 ) ) ) $ ( if d638 then d928 else true )
        d1342 : ( ( Set -> Set ) ∋ ( ( λ x13450 -> if true then x13450 else x13450 ) ) ) $ ( if true then Bool else Bool )
        d1342 = ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> if x13430 then true else d1096 ) ) ) $ ( true ) ) ) ) $ ( if false then d971 else d898 )
        d1346 : if true then ( ( Set -> Set ) ∋ ( ( λ x13480 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13490 -> x13490 ) ) ) $ ( Bool )
        d1346 = ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> if false then x13470 else true ) ) ) $ ( if d281 then d1010 else false )
        d1350 : ( ( Set -> Set ) ∋ ( ( λ x13530 -> if false then Bool else x13530 ) ) ) $ ( if true then Bool else Bool )
        d1350 = if if false then false else d223 then ( ( Bool -> Bool ) ∋ ( ( λ x13510 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13520 -> false ) ) ) $ ( false )
        d1354 : ( ( Set -> Set ) ∋ ( ( λ x13570 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1354 = ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> if d277 then false else d444 ) ) ) $ ( d895 ) ) ) ) $ ( if true then d1037 else true )
        d1358 : if true then ( ( Set -> Set ) ∋ ( ( λ x13620 -> x13620 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1358 = if ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13600 -> x13600 ) ) ) $ ( d726 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13610 -> d995 ) ) ) $ ( false )
        d1363 : if true then ( ( Set -> Set ) ∋ ( ( λ x13640 -> x13640 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1363 = if if true then true else d764 then if false then d1319 else true else if d512 then true else true
        d1365 : ( ( Set -> Set ) ∋ ( ( λ x13660 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1365 = if if d804 then true else d525 then if d1267 then true else true else if false then false else true
        d1367 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1367 = if if d661 then false else false then if true then false else d255 else if d1123 then d1319 else d898
        d1368 : if true then ( ( Set -> Set ) ∋ ( ( λ x13700 -> x13700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13710 -> Bool ) ) ) $ ( Bool )
        d1368 = if ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> x13690 ) ) ) $ ( false ) then if false then d74 else true else if true then d988 else d65
        d1372 : ( ( Set -> Set ) ∋ ( ( λ x13740 -> if false then Bool else x13740 ) ) ) $ ( if false then Bool else Bool )
        d1372 = ( ( Bool -> Bool ) ∋ ( ( λ x13730 -> if true then d212 else x13730 ) ) ) $ ( if d904 then d558 else true )
        d1375 : if true then ( ( Set -> Set ) ∋ ( ( λ x13780 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1375 = if ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> x13760 ) ) ) $ ( d864 ) then if true then d1328 else false else ( ( Bool -> Bool ) ∋ ( ( λ x13770 -> d1267 ) ) ) $ ( false )
        d1379 : if true then ( ( Set -> Set ) ∋ ( ( λ x13820 -> x13820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13830 -> Bool ) ) ) $ ( Bool )
        d1379 = ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> if x13810 then false else d61 ) ) ) $ ( d879 ) ) ) ) $ ( if d112 then false else false )
        d1384 : ( ( Set -> Set ) ∋ ( ( λ x13850 -> ( ( Set -> Set ) ∋ ( ( λ x13860 -> if true then Bool else Bool ) ) ) $ ( x13850 ) ) ) ) $ ( if false then Bool else Bool )
        d1384 = if if true then d919 else d348 then if false then d492 else false else if true then true else false
        d1387 : ( ( Set -> Set ) ∋ ( ( λ x13900 -> ( ( Set -> Set ) ∋ ( ( λ x13910 -> if true then Bool else x13910 ) ) ) $ ( x13900 ) ) ) ) $ ( if false then Bool else Bool )
        d1387 = if ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> false ) ) ) $ ( d584 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13890 -> false ) ) ) $ ( d1165 ) else if d43 then true else d1018
        d1392 : if true then ( ( Set -> Set ) ∋ ( ( λ x13950 -> x13950 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1392 = if ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> x13930 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> x13940 ) ) ) $ ( true ) else if false then true else d392
        d1396 : ( ( Set -> Set ) ∋ ( ( λ x13980 -> ( ( Set -> Set ) ∋ ( ( λ x13990 -> if false then Bool else x13980 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1396 = if ( ( Bool -> Bool ) ∋ ( ( λ x13970 -> false ) ) ) $ ( true ) then if d1267 then d417 else d97 else if d150 then false else d1372
        d1400 : ( ( Set -> Set ) ∋ ( ( λ x14040 -> if false then x14040 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1400 = if ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> x14010 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x14030 -> d811 ) ) ) $ ( false )
        d1405 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1405 = if ( ( Bool -> Bool ) ∋ ( ( λ x14060 -> true ) ) ) $ ( d1158 ) then if false then d1182 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14070 -> x14070 ) ) ) $ ( false )
        d1408 : ( ( Set -> Set ) ∋ ( ( λ x14110 -> ( ( Set -> Set ) ∋ ( ( λ x14120 -> if false then Bool else x14110 ) ) ) $ ( x14110 ) ) ) ) $ ( if true then Bool else Bool )
        d1408 = if ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> x14100 ) ) ) $ ( true ) else if false then d753 else true
        d1413 : ( ( Set -> Set ) ∋ ( ( λ x14160 -> if true then x14160 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1413 = ( ( Bool -> Bool ) ∋ ( ( λ x14140 -> ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> if d1350 then true else x14150 ) ) ) $ ( false ) ) ) ) $ ( if false then d266 else false )
        d1417 : ( ( Set -> Set ) ∋ ( ( λ x14210 -> if false then Bool else x14210 ) ) ) $ ( if true then Bool else Bool )
        d1417 = if ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> x14190 ) ) ) $ ( d9 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14200 -> d1300 ) ) ) $ ( true )
        d1422 : ( ( Set -> Set ) ∋ ( ( λ x14250 -> if true then x14250 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1422 = ( ( Bool -> Bool ) ∋ ( ( λ x14230 -> ( ( Bool -> Bool ) ∋ ( ( λ x14240 -> if false then x14230 else d417 ) ) ) $ ( x14230 ) ) ) ) $ ( if d1263 then d1354 else d898 )
        d1426 : ( ( Set -> Set ) ∋ ( ( λ x14290 -> ( ( Set -> Set ) ∋ ( ( λ x14300 -> if true then x14300 else x14290 ) ) ) $ ( x14290 ) ) ) ) $ ( if true then Bool else Bool )
        d1426 = ( ( Bool -> Bool ) ∋ ( ( λ x14270 -> ( ( Bool -> Bool ) ∋ ( ( λ x14280 -> if false then false else false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d925 )
        d1431 : ( ( Set -> Set ) ∋ ( ( λ x14330 -> if false then Bool else x14330 ) ) ) $ ( if true then Bool else Bool )
        d1431 = if if true then true else d1281 then if d1123 then true else d388 else ( ( Bool -> Bool ) ∋ ( ( λ x14320 -> d777 ) ) ) $ ( d1101 )
        d1434 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14360 -> x14360 ) ) ) $ ( Bool )
        d1434 = if if d1426 then true else false then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> x14350 ) ) ) $ ( false )
        d1437 : ( ( Set -> Set ) ∋ ( ( λ x14390 -> if true then x14390 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1437 = ( ( Bool -> Bool ) ∋ ( ( λ x14380 -> if true then false else x14380 ) ) ) $ ( if true then true else true )
        d1440 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14420 -> x14420 ) ) ) $ ( Bool )
        d1440 = ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> if d424 then x14410 else true ) ) ) $ ( if d1012 then false else false )
        d1443 : ( ( Set -> Set ) ∋ ( ( λ x14450 -> if false then x14450 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1443 = ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> if true then true else d827 ) ) ) $ ( if d277 then d1194 else false )
        d1446 : ( ( Set -> Set ) ∋ ( ( λ x14480 -> if true then x14480 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1446 = if if false then d212 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> d407 ) ) ) $ ( false ) else if d345 then d1191 else d873
        d1449 : ( ( Set -> Set ) ∋ ( ( λ x14510 -> if false then Bool else x14510 ) ) ) $ ( if false then Bool else Bool )
        d1449 = ( ( Bool -> Bool ) ∋ ( ( λ x14500 -> if false then true else d112 ) ) ) $ ( if d40 then false else d1335 )
        d1452 : ( ( Set -> Set ) ∋ ( ( λ x14540 -> ( ( Set -> Set ) ∋ ( ( λ x14550 -> if true then Bool else Bool ) ) ) $ ( x14540 ) ) ) ) $ ( if false then Bool else Bool )
        d1452 = ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> if d962 then d1363 else x14530 ) ) ) $ ( if true then d257 else true )
        d1456 : if true then ( ( Set -> Set ) ∋ ( ( λ x14590 -> x14590 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14600 -> Bool ) ) ) $ ( Bool )
        d1456 = ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> if d1176 then false else false ) ) ) $ ( d20 ) ) ) ) $ ( if false then false else d1339 )
        d1461 : ( ( Set -> Set ) ∋ ( ( λ x14630 -> if true then x14630 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1461 = ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> if false then false else true ) ) ) $ ( if d864 then d749 else d1213 )
        d1464 : ( ( Set -> Set ) ∋ ( ( λ x14670 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1464 = ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> if true then false else false ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d1468 : if false then ( ( Set -> Set ) ∋ ( ( λ x14700 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1468 = ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> if x14690 then x14690 else false ) ) ) $ ( if false then d91 else true )
        d1471 : if true then ( ( Set -> Set ) ∋ ( ( λ x14740 -> x14740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14750 -> Bool ) ) ) $ ( Bool )
        d1471 = ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> ( ( Bool -> Bool ) ∋ ( ( λ x14730 -> if d172 then x14720 else true ) ) ) $ ( d864 ) ) ) ) $ ( if d480 then d207 else false )
        d1476 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1476 = if if false then d995 else false then if true then d318 else d251 else if d904 then false else true
        d1477 : if true then ( ( Set -> Set ) ∋ ( ( λ x14790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14800 -> x14800 ) ) ) $ ( Bool )
        d1477 = ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> if d1182 then false else d971 ) ) ) $ ( if false then false else true )
        d1481 : ( ( Set -> Set ) ∋ ( ( λ x14830 -> ( ( Set -> Set ) ∋ ( ( λ x14840 -> if false then Bool else x14830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1481 = ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> if d799 then d189 else d315 ) ) ) $ ( if false then false else false )
        d1485 : ( ( Set -> Set ) ∋ ( ( λ x14880 -> ( ( Set -> Set ) ∋ ( ( λ x14890 -> if true then Bool else x14890 ) ) ) $ ( x14880 ) ) ) ) $ ( if false then Bool else Bool )
        d1485 = ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> if d477 then d1116 else false ) ) ) $ ( x14860 ) ) ) ) $ ( if d375 then false else true )
        d1490 : if false then ( ( Set -> Set ) ∋ ( ( λ x14930 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14940 -> x14940 ) ) ) $ ( Bool )
        d1490 = if ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> false ) ) ) $ ( true ) then if d439 then d1471 else d777 else ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> d749 ) ) ) $ ( true )
        d1495 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1495 = if ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> d1067 ) ) ) $ ( d1363 ) then if true then false else d782 else if false then d742 else false
        d1497 : if true then ( ( Set -> Set ) ∋ ( ( λ x14990 -> x14990 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15000 -> x15000 ) ) ) $ ( Bool )
        d1497 = if if d595 then false else d407 then if d985 then d235 else d1446 else ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> true ) ) ) $ ( d1417 )
        d1501 : ( ( Set -> Set ) ∋ ( ( λ x15040 -> ( ( Set -> Set ) ∋ ( ( λ x15050 -> if false then Bool else x15040 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1501 = if ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> x15020 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> d1144 ) ) ) $ ( d1335 ) else if true then d315 else d150
        d1506 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15080 -> Bool ) ) ) $ ( Bool )
        d1506 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> x15070 ) ) ) $ ( d1350 ) else if d621 then d142 else d364
        d1509 : if false then ( ( Set -> Set ) ∋ ( ( λ x15120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15130 -> x15130 ) ) ) $ ( Bool )
        d1509 = if ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> false ) ) ) $ ( d868 ) else if true then d830 else d661
        d1514 : if false then ( ( Set -> Set ) ∋ ( ( λ x15180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15190 -> x15190 ) ) ) $ ( Bool )
        d1514 = if ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15160 -> false ) ) ) $ ( d873 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> false ) ) ) $ ( false )
        d1520 : if false then ( ( Set -> Set ) ∋ ( ( λ x15220 -> x15220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15230 -> Bool ) ) ) $ ( Bool )
        d1520 = if ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> x15210 ) ) ) $ ( d916 ) then if d1254 then d1396 else d962 else if d988 then d697 else true
        d1524 : ( ( Set -> Set ) ∋ ( ( λ x15250 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1524 = if if d911 then d415 else d1025 then if true then d399 else d1088 else if false then d808 else d848
        d1526 : ( ( Set -> Set ) ∋ ( ( λ x15290 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1526 = if ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> x15270 ) ) ) $ ( d1075 ) then if d517 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> d1243 ) ) ) $ ( true )
        d1530 : ( ( Set -> Set ) ∋ ( ( λ x15320 -> if false then Bool else x15320 ) ) ) $ ( if false then Bool else Bool )
        d1530 = ( ( Bool -> Bool ) ∋ ( ( λ x15310 -> if x15310 then false else d435 ) ) ) $ ( if false then false else d131 )
        d1533 : if true then ( ( Set -> Set ) ∋ ( ( λ x15340 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1533 = if if d1033 then true else true then if d1476 then true else false else if d1263 then d1096 else false
        d1535 : if false then ( ( Set -> Set ) ∋ ( ( λ x15370 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1535 = ( ( Bool -> Bool ) ∋ ( ( λ x15360 -> if true then d277 else true ) ) ) $ ( if false then d629 else false )
        d1538 : if true then ( ( Set -> Set ) ∋ ( ( λ x15410 -> x15410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15420 -> x15420 ) ) ) $ ( Bool )
        d1538 = ( ( Bool -> Bool ) ∋ ( ( λ x15390 -> ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> if false then d388 else d448 ) ) ) $ ( true ) ) ) ) $ ( if d714 then d392 else true )
        d1543 : ( ( Set -> Set ) ∋ ( ( λ x15460 -> if false then Bool else x15460 ) ) ) $ ( if false then Bool else Bool )
        d1543 = if ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> d1328 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15450 -> d1413 ) ) ) $ ( false ) else if d70 then d794 else false
        d1547 : if false then ( ( Set -> Set ) ∋ ( ( λ x15500 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1547 = ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> ( ( Bool -> Bool ) ∋ ( ( λ x15490 -> if d57 then true else d1239 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d167 )
        d1551 : ( ( Set -> Set ) ∋ ( ( λ x15540 -> ( ( Set -> Set ) ∋ ( ( λ x15550 -> if true then x15550 else Bool ) ) ) $ ( x15540 ) ) ) ) $ ( if true then Bool else Bool )
        d1551 = ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> if x15520 then true else d1053 ) ) ) $ ( d457 ) ) ) ) $ ( if true then false else d161 )
        d1556 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15580 -> x15580 ) ) ) $ ( Bool )
        d1556 = if if false then true else d661 then ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> false ) ) ) $ ( true ) else if d1322 then d9 else d710
        d1559 : ( ( Set -> Set ) ∋ ( ( λ x15620 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1559 = ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> if d1551 then x15600 else x15600 ) ) ) $ ( true ) ) ) ) $ ( if d155 then d1322 else d1263 )
        d1563 : ( ( Set -> Set ) ∋ ( ( λ x15650 -> ( ( Set -> Set ) ∋ ( ( λ x15660 -> if false then x15660 else x15660 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1563 = if ( ( Bool -> Bool ) ∋ ( ( λ x15640 -> d946 ) ) ) $ ( d34 ) then if d1556 then true else true else if d558 then d654 else true
        d1567 : ( ( Set -> Set ) ∋ ( ( λ x15700 -> if true then x15700 else x15700 ) ) ) $ ( if true then Bool else Bool )
        d1567 = if ( ( Bool -> Bool ) ∋ ( ( λ x15680 -> x15680 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> x15690 ) ) ) $ ( false ) else if d1543 then true else false
        d1571 : if false then ( ( Set -> Set ) ∋ ( ( λ x15730 -> x15730 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15740 -> Bool ) ) ) $ ( Bool )
        d1571 = if if true then d966 else false then if d864 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> true ) ) ) $ ( false )
        d1575 : ( ( Set -> Set ) ∋ ( ( λ x15780 -> if true then x15780 else x15780 ) ) ) $ ( if true then Bool else Bool )
        d1575 = ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> if x15770 then false else false ) ) ) $ ( false ) ) ) ) $ ( if d1481 then d883 else d1137 )
        d1579 : ( ( Set -> Set ) ∋ ( ( λ x15810 -> if false then x15810 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1579 = ( ( Bool -> Bool ) ∋ ( ( λ x15800 -> if x15800 then x15800 else x15800 ) ) ) $ ( if d1018 then false else d139 )
        d1582 : if false then ( ( Set -> Set ) ∋ ( ( λ x15850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15860 -> x15860 ) ) ) $ ( Bool )
        d1582 = ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> ( ( Bool -> Bool ) ∋ ( ( λ x15840 -> if false then d465 else x15830 ) ) ) $ ( x15830 ) ) ) ) $ ( if true then d469 else false )
        d1587 : ( ( Set -> Set ) ∋ ( ( λ x15900 -> ( ( Set -> Set ) ∋ ( ( λ x15910 -> if false then Bool else x15910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1587 = ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> if x15880 then true else d274 ) ) ) $ ( true ) ) ) ) $ ( if false then d195 else d502 )
        d1592 : ( ( Set -> Set ) ∋ ( ( λ x15950 -> if true then Bool else x15950 ) ) ) $ ( if true then Bool else Bool )
        d1592 = ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> ( ( Bool -> Bool ) ∋ ( ( λ x15940 -> if x15940 then d251 else true ) ) ) $ ( d146 ) ) ) ) $ ( if d786 then true else false )
        d1596 : ( ( Set -> Set ) ∋ ( ( λ x16000 -> if true then Bool else x16000 ) ) ) $ ( if true then Bool else Bool )
        d1596 = if ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> x15970 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15980 -> d749 ) ) ) $ ( d1443 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> true ) ) ) $ ( d1209 )
        d1601 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16040 -> x16040 ) ) ) $ ( Bool )
        d1601 = if ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16030 -> x16030 ) ) ) $ ( false ) else if d588 then true else false
        d1605 : if false then ( ( Set -> Set ) ∋ ( ( λ x16080 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1605 = ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> ( ( Bool -> Bool ) ∋ ( ( λ x16070 -> if x16070 then x16060 else d864 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d1609 : if true then ( ( Set -> Set ) ∋ ( ( λ x16100 -> x16100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16110 -> x16110 ) ) ) $ ( Bool )
        d1609 = if if d1018 then false else d667 then if false then true else d1408 else if d761 then true else d616
        d1612 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16160 -> Bool ) ) ) $ ( Bool )
        d1612 = if ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> x16130 ) ) ) $ ( d992 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> false ) ) ) $ ( d1148 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16150 -> d375 ) ) ) $ ( true )
        d1617 : ( ( Set -> Set ) ∋ ( ( λ x16200 -> if false then x16200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1617 = ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> if d1300 then x16190 else true ) ) ) $ ( x16180 ) ) ) ) $ ( if true then d770 else d348 )
        d1621 : ( ( Set -> Set ) ∋ ( ( λ x16240 -> ( ( Set -> Set ) ∋ ( ( λ x16250 -> if true then Bool else x16250 ) ) ) $ ( x16240 ) ) ) ) $ ( if false then Bool else Bool )
        d1621 = ( ( Bool -> Bool ) ∋ ( ( λ x16220 -> ( ( Bool -> Bool ) ∋ ( ( λ x16230 -> if d1563 then true else true ) ) ) $ ( d333 ) ) ) ) $ ( if true then d1571 else false )
        d1626 : ( ( Set -> Set ) ∋ ( ( λ x16290 -> if false then Bool else x16290 ) ) ) $ ( if false then Bool else Bool )
        d1626 = if ( ( Bool -> Bool ) ∋ ( ( λ x16270 -> x16270 ) ) ) $ ( true ) then if d1392 then true else d1300 else ( ( Bool -> Bool ) ∋ ( ( λ x16280 -> x16280 ) ) ) $ ( d1571 )
        d1630 : ( ( Set -> Set ) ∋ ( ( λ x16330 -> ( ( Set -> Set ) ∋ ( ( λ x16340 -> if true then x16330 else x16340 ) ) ) $ ( x16330 ) ) ) ) $ ( if false then Bool else Bool )
        d1630 = ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> if false then true else d761 ) ) ) $ ( d1339 ) ) ) ) $ ( if d1350 then d399 else false )
        d1635 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1635 = ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> if x16360 then x16360 else false ) ) ) $ ( if d74 then d988 else d1263 )
        d1637 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16390 -> x16390 ) ) ) $ ( Bool )
        d1637 = ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> if true then false else false ) ) ) $ ( if false then d1325 else true )
        d1640 : ( ( Set -> Set ) ∋ ( ( λ x16420 -> ( ( Set -> Set ) ∋ ( ( λ x16430 -> if true then Bool else x16430 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1640 = if if d1053 then false else d1526 then ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> x16410 ) ) ) $ ( false ) else if d1563 then d966 else d484
        d1644 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1644 = ( ( Bool -> Bool ) ∋ ( ( λ x16450 -> ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> if x16450 then true else true ) ) ) $ ( d155 ) ) ) ) $ ( if false then d1204 else d1148 )
        d1647 : ( ( Set -> Set ) ∋ ( ( λ x16490 -> ( ( Set -> Set ) ∋ ( ( λ x16500 -> if true then Bool else Bool ) ) ) $ ( x16490 ) ) ) ) $ ( if false then Bool else Bool )
        d1647 = if if true then d1083 else d1440 then if d770 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x16480 -> d676 ) ) ) $ ( d142 )
        d1651 : ( ( Set -> Set ) ∋ ( ( λ x16530 -> ( ( Set -> Set ) ∋ ( ( λ x16540 -> if false then Bool else x16530 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1651 = ( ( Bool -> Bool ) ∋ ( ( λ x16520 -> if x16520 then true else x16520 ) ) ) $ ( if d508 then d125 else true )
        d1655 : ( ( Set -> Set ) ∋ ( ( λ x16570 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1655 = if if d311 then d392 else false then if d731 then d1286 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16560 -> d879 ) ) ) $ ( d1332 )
        d1658 : ( ( Set -> Set ) ∋ ( ( λ x16610 -> ( ( Set -> Set ) ∋ ( ( λ x16620 -> if false then Bool else Bool ) ) ) $ ( x16610 ) ) ) ) $ ( if false then Bool else Bool )
        d1658 = if if d444 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> d1363 ) ) ) $ ( d195 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16600 -> false ) ) ) $ ( d1137 )
        d1663 : ( ( Set -> Set ) ∋ ( ( λ x16660 -> ( ( Set -> Set ) ∋ ( ( λ x16670 -> if true then x16670 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1663 = ( ( Bool -> Bool ) ∋ ( ( λ x16640 -> ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> if false then x16650 else true ) ) ) $ ( x16640 ) ) ) ) $ ( if d610 then d318 else true )
        d1668 : if false then ( ( Set -> Set ) ∋ ( ( λ x16700 -> x16700 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1668 = if if d404 then d1384 else d448 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x16690 -> false ) ) ) $ ( false )
        d1671 : ( ( Set -> Set ) ∋ ( ( λ x16730 -> if true then x16730 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1671 = ( ( Bool -> Bool ) ∋ ( ( λ x16720 -> if x16720 then true else true ) ) ) $ ( if false then true else d799 )
        d1674 : ( ( Set -> Set ) ∋ ( ( λ x16770 -> if false then x16770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1674 = ( ( Bool -> Bool ) ∋ ( ( λ x16750 -> ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> if false then x16750 else x16760 ) ) ) $ ( false ) ) ) ) $ ( if true then d992 else false )
        d1678 : if false then ( ( Set -> Set ) ∋ ( ( λ x16810 -> x16810 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1678 = if ( ( Bool -> Bool ) ∋ ( ( λ x16790 -> false ) ) ) $ ( d649 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16800 -> true ) ) ) $ ( d684 ) else if d848 then d988 else d1165
        d1682 : if true then ( ( Set -> Set ) ∋ ( ( λ x16850 -> x16850 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1682 = ( ( Bool -> Bool ) ∋ ( ( λ x16830 -> ( ( Bool -> Bool ) ∋ ( ( λ x16840 -> if false then d239 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d889 else true )
        d1686 : ( ( Set -> Set ) ∋ ( ( λ x16880 -> if true then x16880 else x16880 ) ) ) $ ( if true then Bool else Bool )
        d1686 = if if d827 then true else d1526 then if false then false else d1049 else ( ( Bool -> Bool ) ∋ ( ( λ x16870 -> false ) ) ) $ ( d135 )
        d1689 : ( ( Set -> Set ) ∋ ( ( λ x16930 -> if false then Bool else x16930 ) ) ) $ ( if true then Bool else Bool )
        d1689 = if ( ( Bool -> Bool ) ∋ ( ( λ x16900 -> true ) ) ) $ ( d705 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16910 -> false ) ) ) $ ( d848 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16920 -> x16920 ) ) ) $ ( d311 )
        d1694 : if false then ( ( Set -> Set ) ∋ ( ( λ x16960 -> x16960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16970 -> x16970 ) ) ) $ ( Bool )
        d1694 = if if true then d818 else true then if d916 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x16950 -> x16950 ) ) ) $ ( true )
        d1698 : ( ( Set -> Set ) ∋ ( ( λ x17010 -> ( ( Set -> Set ) ∋ ( ( λ x17020 -> if false then Bool else x17020 ) ) ) $ ( x17010 ) ) ) ) $ ( if false then Bool else Bool )
        d1698 = ( ( Bool -> Bool ) ∋ ( ( λ x16990 -> ( ( Bool -> Bool ) ∋ ( ( λ x17000 -> if d1134 then true else true ) ) ) $ ( false ) ) ) ) $ ( if d116 then d1200 else false )
        d1703 : ( ( Set -> Set ) ∋ ( ( λ x17050 -> if false then Bool else x17050 ) ) ) $ ( if false then Bool else Bool )
        d1703 = ( ( Bool -> Bool ) ∋ ( ( λ x17040 -> if x17040 then d1647 else false ) ) ) $ ( if false then true else false )
        d1706 : ( ( Set -> Set ) ∋ ( ( λ x17100 -> if false then x17100 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1706 = if ( ( Bool -> Bool ) ∋ ( ( λ x17070 -> d1551 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x17080 -> x17080 ) ) ) $ ( d604 ) else ( ( Bool -> Bool ) ∋ ( ( λ x17090 -> false ) ) ) $ ( true )