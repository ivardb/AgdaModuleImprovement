module Decls450Test16  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else x30 ) ) ) $ ( if false then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( false ) then if true then false else false else if false then true else true
        d4 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else x70 ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if true then d1 else true ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then d1 else false )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x110 ) ) ) $ ( if true then Bool else Bool )
        d8 = if ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( true ) then if d4 then d4 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x100 -> false ) ) ) $ ( d4 )
        d12 : if true then ( ( Set -> Set ) ∋ ( ( λ x150 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if x130 then false else false ) ) ) $ ( d4 ) ) ) ) $ ( if d1 then false else true )
        d16 : if true then if false then Bool else Bool else if true then Bool else Bool
        d16 = if if false then true else true then if true then true else d8 else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> false ) ) ) $ ( false )
        d18 : if true then ( ( Set -> Set ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x220 -> x220 ) ) ) $ ( Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if true then x190 else x200 ) ) ) $ ( d8 ) ) ) ) $ ( if d16 then true else d4 )
        d23 : if true then ( ( Set -> Set ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x260 -> Bool ) ) ) $ ( Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d8 then x240 else d18 ) ) ) $ ( if d1 then false else true )
        d27 : if true then ( ( Set -> Set ) ∋ ( ( λ x290 -> x290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( Bool )
        d27 = if if false then d18 else true then if true then d16 else true else ( ( Bool -> Bool ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( d16 )
        d31 : if false then if false then Bool else Bool else if false then Bool else Bool
        d31 = if ( ( Bool -> Bool ) ∋ ( ( λ x320 -> false ) ) ) $ ( true ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( d1 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then x360 else x360 ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if x350 then d12 else d1 ) ) ) $ ( if d1 then d1 else d8 )
        d37 : if true then ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( Bool )
        d37 = if ( ( Bool -> Bool ) ∋ ( ( λ x380 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x390 -> x390 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x400 -> d4 ) ) ) $ ( d27 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x460 -> if false then Bool else x460 ) ) ) $ ( if true then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if d16 then x440 else false ) ) ) $ ( x440 ) ) ) ) $ ( if d12 then d4 else false )
        d47 : if false then if true then Bool else Bool else if false then Bool else Bool
        d47 = if if true then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( d37 ) else if d12 then d12 else d18
        d49 : if false then if true then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if x500 then true else x510 ) ) ) $ ( x500 ) ) ) ) $ ( if true then true else true )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x540 -> if false then x540 else Bool ) ) ) $ ( if false then Bool else Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d18 ) ) ) $ ( d18 ) then if d12 then false else d1 else if false then d16 else true
        d55 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then x570 else x570 ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if false then d37 else false ) ) ) $ ( if d31 then true else d34 )
        d58 : if false then ( ( Set -> Set ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if true then d27 else true ) ) ) $ ( if d18 then false else d47 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if d49 then d27 else false ) ) ) $ ( if true then false else d34 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> if false then Bool else x710 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d66 = if ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x680 -> false ) ) ) $ ( d55 ) else ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d8 ) ) ) $ ( d27 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then x740 else x740 ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if true then x730 else d23 ) ) ) $ ( if false then true else false )
        d75 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool )
        d75 = if if false then d58 else d62 then ( ( Bool -> Bool ) ∋ ( ( λ x760 -> false ) ) ) $ ( false ) else if d8 then d37 else false
        d78 : if true then ( ( Set -> Set ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x820 -> Bool ) ) ) $ ( Bool )
        d78 = if if d55 then false else d58 then ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( d18 ) else ( ( Bool -> Bool ) ∋ ( ( λ x800 -> d4 ) ) ) $ ( d37 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x860 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> if false then Bool else x870 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if x850 then d27 else d27 ) ) ) $ ( true ) ) ) ) $ ( if d31 then d27 else d43 )
        d88 : if true then ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x920 -> Bool ) ) ) $ ( Bool )
        d88 = if if true then d27 else false then ( ( Bool -> Bool ) ∋ ( ( λ x890 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> x900 ) ) ) $ ( d23 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x970 -> if true then x970 else x960 ) ) ) $ ( x960 ) ) ) ) $ ( if false then Bool else Bool )
        d93 = if ( ( Bool -> Bool ) ∋ ( ( λ x940 -> false ) ) ) $ ( true ) then if d55 then false else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x950 -> true ) ) ) $ ( d12 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then Bool else x990 ) ) ) $ ( if false then Bool else Bool )
        d98 = if if d58 then d72 else d4 then if true then d16 else false else if d93 then false else true
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> if true then x1030 else x1040 ) ) ) $ ( x1030 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( d12 ) else if false then d23 else false
        d105 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then Bool else x1070 ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if x1060 then false else x1060 ) ) ) $ ( if d31 then true else d43 )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> ( ( Set -> Set ) ∋ ( ( λ x1110 -> if false then x1100 else x1110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if false then true else true ) ) ) $ ( if d4 then false else d34 )
        d112 : if false then ( ( Set -> Set ) ∋ ( ( λ x1140 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if x1130 then d23 else x1130 ) ) ) $ ( if d83 then false else false )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then x1160 else x1160 ) ) ) $ ( if true then Bool else Bool )
        d115 = if if true then true else true then if d75 then d4 else d66 else if true then d58 else d98
        d117 : if false then ( ( Set -> Set ) ∋ ( ( λ x1190 -> x1190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1200 -> Bool ) ) ) $ ( Bool )
        d117 = if if true then d12 else d58 then ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> d83 ) ) ) $ ( true ) else if d83 then true else d98
        d121 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> if true then x1240 else x1240 ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if false then d66 else true ) ) ) $ ( true ) ) ) ) $ ( if d37 then true else true )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then Bool else Bool ) ) ) $ ( x1260 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if d8 then d55 else d1 then if false then d31 else true else if d49 then false else d115
        d128 : if true then if false then Bool else Bool else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if d1 then x1290 else d23 ) ) ) $ ( true ) ) ) ) $ ( if d47 then true else d1 )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> ( ( Set -> Set ) ∋ ( ( λ x1330 -> if true then Bool else Bool ) ) ) $ ( x1320 ) ) ) ) $ ( if true then Bool else Bool )
        d131 = if if d1 then false else d27 then if true then d112 else d105 else if true then d75 else d88
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> if true then x1380 else x1380 ) ) ) $ ( if false then Bool else Bool )
        d134 = if ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> d115 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> true ) ) ) $ ( d4 )
        d139 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1400 -> Bool ) ) ) $ ( Bool )
        d139 = if if d16 then d75 else false then if d100 then d93 else d66 else if d117 then true else d121
        d141 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1420 -> Bool ) ) ) $ ( Bool )
        d141 = if if false then false else true then if false then d117 else d131 else if false then true else d100
        d143 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if false then Bool else x1450 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d143 = if if false then d131 else true then if false then d55 else d4 else if d131 then d12 else d58
        d146 : if false then ( ( Set -> Set ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d146 = if if d52 then d62 else true then if true then true else true else if true then false else d115
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then x1530 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> d108 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d88 ) ) ) $ ( false ) else if false then d49 else d34
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then x1560 else Bool ) ) ) $ ( if false then Bool else Bool )
        d154 = if ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> d66 ) ) ) $ ( true ) then if false then d72 else true else if false then d128 else false
        d157 : if true then if true then Bool else Bool else if true then Bool else Bool
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if x1580 then x1580 else x1580 ) ) ) $ ( if false then d27 else true )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then Bool else x1610 ) ) ) $ ( if true then Bool else Bool )
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> if false then true else x1600 ) ) ) $ ( if d141 then false else false )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> if false then Bool else x1650 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> if false then x1640 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d12 else d143 )
        d167 : if true then ( ( Set -> Set ) ∋ ( ( λ x1690 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if d27 then false else x1680 ) ) ) $ ( if true then true else d27 )
        d170 : if true then ( ( Set -> Set ) ∋ ( ( λ x1730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( Bool )
        d170 = if ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> d58 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( d34 ) else if false then d88 else true
        d175 : if true then ( ( Set -> Set ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( Bool )
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> if x1760 then true else x1770 ) ) ) $ ( x1760 ) ) ) ) $ ( if false then d75 else false )
        d180 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1820 -> x1820 ) ) ) $ ( Bool )
        d180 = if if false then d154 else true then if d128 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( true )
        d183 : if false then ( ( Set -> Set ) ∋ ( ( λ x1850 -> x1850 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if false then d125 else d154 ) ) ) $ ( if d55 then d66 else d98 )
        d187 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1900 -> x1900 ) ) ) $ ( Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if true then d16 else true ) ) ) $ ( x1880 ) ) ) ) $ ( if d162 then false else false )
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> ( ( Set -> Set ) ∋ ( ( λ x1950 -> if true then x1950 else x1950 ) ) ) $ ( x1940 ) ) ) ) $ ( if true then Bool else Bool )
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> if false then d37 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else d180 )
        d196 : if true then ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> if x1970 then d47 else x1970 ) ) ) $ ( if false then d72 else true )
        d199 : if false then ( ( Set -> Set ) ∋ ( ( λ x2010 -> x2010 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2020 -> Bool ) ) ) $ ( Bool )
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if x2000 then true else false ) ) ) $ ( if false then true else false )
        d203 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> ( ( Set -> Set ) ∋ ( ( λ x2060 -> if true then Bool else x2050 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d203 = if if d58 then d187 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> x2040 ) ) ) $ ( true ) else if d146 then d31 else true
        d207 : if true then ( ( Set -> Set ) ∋ ( ( λ x2090 -> x2090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( Bool )
        d207 = if ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> false ) ) ) $ ( d34 ) then if true then d62 else d8 else if d18 then d100 else d149
        d211 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> if true then x2130 else Bool ) ) ) $ ( if false then Bool else Bool )
        d211 = ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> if false then d159 else d191 ) ) ) $ ( if d112 then d93 else true )
        d214 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( Bool )
        d214 = ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if x2150 then true else d108 ) ) ) $ ( if d78 then true else d183 )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> ( ( Set -> Set ) ∋ ( ( λ x2210 -> if false then Bool else Bool ) ) ) $ ( x2200 ) ) ) ) $ ( if true then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> if x2190 then d47 else true ) ) ) $ ( d93 ) ) ) ) $ ( if d58 then d128 else d83 )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x2250 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> if false then false else true ) ) ) $ ( d105 ) ) ) ) $ ( if d139 then d58 else d121 )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x2300 -> if true then x2300 else x2300 ) ) ) $ ( if true then Bool else Bool )
        d226 = if ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> d49 ) ) ) $ ( d66 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> d12 ) ) ) $ ( d199 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> d141 ) ) ) $ ( true )
        d231 : if true then ( ( Set -> Set ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d231 = if ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> d37 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> d167 ) ) ) $ ( false ) else if d83 then false else true
        d235 : ( ( Set -> Set ) ∋ ( ( λ x2390 -> ( ( Set -> Set ) ∋ ( ( λ x2400 -> if true then x2390 else Bool ) ) ) $ ( x2390 ) ) ) ) $ ( if false then Bool else Bool )
        d235 = if ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> d27 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> false ) ) ) $ ( d58 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> d187 ) ) ) $ ( d159 )
        d241 : ( ( Set -> Set ) ∋ ( ( λ x2430 -> if false then x2430 else Bool ) ) ) $ ( if false then Bool else Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if d78 then d180 else false ) ) ) $ ( if true then true else d180 )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> if false then Bool else x2460 ) ) ) $ ( if true then Bool else Bool )
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> if x2450 then d121 else d175 ) ) ) $ ( if d121 then true else d105 )
        d247 : if true then ( ( Set -> Set ) ∋ ( ( λ x2500 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2510 -> Bool ) ) ) $ ( Bool )
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> if true then false else false ) ) ) $ ( true ) ) ) ) $ ( if true then true else d235 )
        d252 : if false then ( ( Set -> Set ) ∋ ( ( λ x2550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( Bool )
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if true then true else x2530 ) ) ) $ ( d49 ) ) ) ) $ ( if d115 then d143 else d83 )
        d257 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( Bool )
        d257 = if if false then d180 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> false ) ) ) $ ( d112 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d146 ) ) ) $ ( false )
        d261 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( Bool )
        d261 = if ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> false ) ) ) $ ( true ) then if d222 then false else true else if d154 then false else d241
        d264 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> ( ( Set -> Set ) ∋ ( ( λ x2680 -> if true then x2680 else Bool ) ) ) $ ( x2670 ) ) ) ) $ ( if true then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if x2650 then x2660 else d244 ) ) ) $ ( false ) ) ) ) $ ( if d62 then false else d211 )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> if true then Bool else Bool ) ) ) $ ( x2720 ) ) ) ) $ ( if true then Bool else Bool )
        d269 = if if d125 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> x2700 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> d4 ) ) ) $ ( true )
        d274 : if false then ( ( Set -> Set ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d274 = ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if d141 then x2750 else false ) ) ) $ ( if d191 then true else false )
        d277 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2800 -> Bool ) ) ) $ ( Bool )
        d277 = if ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( true ) then if d143 then false else d187 else ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> d16 ) ) ) $ ( d139 )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> if true then x2840 else Bool ) ) ) $ ( if false then Bool else Bool )
        d281 = if ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> d269 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> d78 ) ) ) $ ( d217 ) else if d207 then false else true
        d285 : if false then ( ( Set -> Set ) ∋ ( ( λ x2880 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2890 -> x2890 ) ) ) $ ( Bool )
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> if true then true else true ) ) ) $ ( false ) ) ) ) $ ( if false then d207 else true )
        d290 : if false then ( ( Set -> Set ) ∋ ( ( λ x2920 -> x2920 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d290 = ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> if false then d149 else x2910 ) ) ) $ ( if false then d222 else true )
        d293 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> if false then x2950 else x2950 ) ) ) $ ( if false then Bool else Bool )
        d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if x2940 then x2940 else x2940 ) ) ) $ ( if false then true else true )
        d296 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> if true then d146 else x2970 ) ) ) $ ( x2970 ) ) ) ) $ ( if false then d12 else d222 )
        d300 : ( ( Set -> Set ) ∋ ( ( λ x3030 -> ( ( Set -> Set ) ∋ ( ( λ x3040 -> if true then Bool else x3040 ) ) ) $ ( x3030 ) ) ) ) $ ( if false then Bool else Bool )
        d300 = if if true then d31 else d49 then ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> false ) ) ) $ ( d75 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> false ) ) ) $ ( false )
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3070 -> ( ( Set -> Set ) ∋ ( ( λ x3080 -> if true then x3080 else x3080 ) ) ) $ ( x3070 ) ) ) ) $ ( if false then Bool else Bool )
        d305 = if ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> x3060 ) ) ) $ ( true ) then if d187 then d162 else false else if false then d47 else false
        d309 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> ( ( Set -> Set ) ∋ ( ( λ x3130 -> if true then x3130 else x3120 ) ) ) $ ( x3120 ) ) ) ) $ ( if true then Bool else Bool )
        d309 = ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> if x3110 then x3100 else true ) ) ) $ ( true ) ) ) ) $ ( if d264 then true else false )
        d314 : ( ( Set -> Set ) ∋ ( ( λ x3160 -> ( ( Set -> Set ) ∋ ( ( λ x3170 -> if false then x3160 else Bool ) ) ) $ ( x3160 ) ) ) ) $ ( if false then Bool else Bool )
        d314 = if ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> d58 ) ) ) $ ( false ) then if true then true else d261 else if true then true else true
        d318 : if true then ( ( Set -> Set ) ∋ ( ( λ x3200 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> if x3190 then x3190 else true ) ) ) $ ( if d293 then true else false )
        d321 : if true then ( ( Set -> Set ) ∋ ( ( λ x3240 -> x3240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3250 -> x3250 ) ) ) $ ( Bool )
        d321 = ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> if d264 then d125 else x3220 ) ) ) $ ( x3220 ) ) ) ) $ ( if true then d4 else false )
        d326 : if false then ( ( Set -> Set ) ∋ ( ( λ x3280 -> x3280 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3290 -> Bool ) ) ) $ ( Bool )
        d326 = if if false then false else d100 then ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( d257 ) else if d269 then false else d196
        d330 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d330 = if ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> x3310 ) ) ) $ ( false ) then if d49 then false else true else if d83 then d217 else false
        d333 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> if false then x3350 else Bool ) ) ) $ ( if true then Bool else Bool )
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> if d183 then d244 else x3340 ) ) ) $ ( if d314 then d183 else false )
        d336 : if true then if true then Bool else Bool else if true then Bool else Bool
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> if x3380 then d31 else true ) ) ) $ ( d235 ) ) ) ) $ ( if d300 then d78 else false )
        d339 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> ( ( Set -> Set ) ∋ ( ( λ x3420 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> if x3400 then x3400 else x3400 ) ) ) $ ( if true then d231 else false )
        d343 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3450 -> Bool ) ) ) $ ( Bool )
        d343 = if if false then true else true then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> false ) ) ) $ ( true )
        d346 : ( ( Set -> Set ) ∋ ( ( λ x3490 -> ( ( Set -> Set ) ∋ ( ( λ x3500 -> if false then x3490 else x3500 ) ) ) $ ( x3490 ) ) ) ) $ ( if false then Bool else Bool )
        d346 = if ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> d264 ) ) ) $ ( d34 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> x3480 ) ) ) $ ( false ) else if false then d12 else true
        d351 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> if true then Bool else x3540 ) ) ) $ ( if true then Bool else Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> if x3520 then x3530 else true ) ) ) $ ( x3520 ) ) ) ) $ ( if d261 then false else d241 )
        d355 : if false then ( ( Set -> Set ) ∋ ( ( λ x3580 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d355 = if ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> d162 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> x3570 ) ) ) $ ( d128 ) else if d247 then d23 else d264
        d359 : if true then if true then Bool else Bool else if true then Bool else Bool
        d359 = ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if true then false else d23 ) ) ) $ ( x3600 ) ) ) ) $ ( if false then true else false )
        d362 : if false then if false then Bool else Bool else if true then Bool else Bool
        d362 = if ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( d296 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> x3640 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> x3650 ) ) ) $ ( false )
        d366 : ( ( Set -> Set ) ∋ ( ( λ x3690 -> ( ( Set -> Set ) ∋ ( ( λ x3700 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d366 = if if false then d339 else d244 then ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> false ) ) ) $ ( d121 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> d199 ) ) ) $ ( d159 )
        d371 : ( ( Set -> Set ) ∋ ( ( λ x3730 -> ( ( Set -> Set ) ∋ ( ( λ x3740 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d371 = ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> if d16 then d309 else true ) ) ) $ ( if d47 then true else true )
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then x3790 else Bool ) ) ) $ ( x3780 ) ) ) ) $ ( if true then Bool else Bool )
        d375 = ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> if true then true else x3770 ) ) ) $ ( x3760 ) ) ) ) $ ( if d16 then d23 else false )
        d380 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> ( ( Set -> Set ) ∋ ( ( λ x3830 -> if true then Bool else Bool ) ) ) $ ( x3820 ) ) ) ) $ ( if true then Bool else Bool )
        d380 = if ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> d187 ) ) ) $ ( d226 ) then if false then d8 else d371 else if true then d339 else true
        d384 : ( ( Set -> Set ) ∋ ( ( λ x3860 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d384 = ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> if d117 then x3850 else x3850 ) ) ) $ ( if true then d121 else true )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3890 -> if true then Bool else x3890 ) ) ) $ ( if false then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> if x3880 then true else true ) ) ) $ ( if true then true else false )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> ( ( Set -> Set ) ∋ ( ( λ x3930 -> if true then x3930 else Bool ) ) ) $ ( x3920 ) ) ) ) $ ( if true then Bool else Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> if d261 then true else x3910 ) ) ) $ ( if false then d23 else true )
        d394 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( Bool )
        d394 = if if true then true else d134 then ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> d66 ) ) ) $ ( d390 ) else if true then d211 else true
        d397 : ( ( Set -> Set ) ∋ ( ( λ x4000 -> if false then x4000 else x4000 ) ) ) $ ( if false then Bool else Bool )
        d397 = if ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> d300 ) ) ) $ ( false ) then if d128 then d43 else d269 else ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> x3990 ) ) ) $ ( true )
        d401 : ( ( Set -> Set ) ∋ ( ( λ x4020 -> ( ( Set -> Set ) ∋ ( ( λ x4030 -> if true then x4030 else x4020 ) ) ) $ ( x4020 ) ) ) ) $ ( if false then Bool else Bool )
        d401 = if if false then true else false then if true then d1 else d281 else if d390 then d290 else true
        d404 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( Bool )
        d404 = if if false then d241 else false then if d380 then true else d23 else if true then d321 else false
        d406 : if true then if true then Bool else Bool else if false then Bool else Bool
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if false then true else d252 ) ) ) $ ( if d261 then false else d117 )
        d408 : ( ( Set -> Set ) ∋ ( ( λ x4120 -> ( ( Set -> Set ) ∋ ( ( λ x4130 -> if false then Bool else x4120 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d408 = if ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> true ) ) ) $ ( d180 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> d207 ) ) ) $ ( d175 )
        d414 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4160 -> Bool ) ) ) $ ( Bool )
        d414 = if ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> d375 ) ) ) $ ( d235 ) then if d406 then d27 else false else if false then d162 else d52
        d417 : if false then ( ( Set -> Set ) ∋ ( ( λ x4190 -> x4190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( Bool )
        d417 = if ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> d105 ) ) ) $ ( d12 ) then if false then d277 else d217 else if d309 then false else true
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4240 -> ( ( Set -> Set ) ∋ ( ( λ x4250 -> if false then Bool else x4250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> if false then false else false ) ) ) $ ( d414 ) ) ) ) $ ( if false then true else d146 )
        d426 : ( ( Set -> Set ) ∋ ( ( λ x4280 -> if false then x4280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> if x4270 then true else d78 ) ) ) $ ( if false then true else d134 )
        d429 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4320 -> x4320 ) ) ) $ ( Bool )
        d429 = if ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> d408 ) ) ) $ ( d244 ) then if true then false else d346 else ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( d98 )
        d433 : ( ( Set -> Set ) ∋ ( ( λ x4360 -> ( ( Set -> Set ) ∋ ( ( λ x4370 -> if false then Bool else x4370 ) ) ) $ ( x4360 ) ) ) ) $ ( if false then Bool else Bool )
        d433 = ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> if x4350 then true else true ) ) ) $ ( false ) ) ) ) $ ( if true then true else d390 )
        d438 : ( ( Set -> Set ) ∋ ( ( λ x4410 -> if true then Bool else x4410 ) ) ) $ ( if true then Bool else Bool )
        d438 = if if d108 then d62 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( d231 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> d394 ) ) ) $ ( true )
        d442 : if false then ( ( Set -> Set ) ∋ ( ( λ x4440 -> x4440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4450 -> Bool ) ) ) $ ( Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if d34 then x4430 else false ) ) ) $ ( if true then false else d397 )
        d446 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> ( ( Set -> Set ) ∋ ( ( λ x4490 -> if false then x4490 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> if false then d143 else x4470 ) ) ) $ ( if true then true else d211 )
        d450 : ( ( Set -> Set ) ∋ ( ( λ x4520 -> if true then x4520 else x4520 ) ) ) $ ( if true then Bool else Bool )
        d450 = if if d31 then d203 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> true ) ) ) $ ( false ) else if d196 then true else d27
        d453 : if true then if false then Bool else Bool else if false then Bool else Bool
        d453 = ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> if false then false else x4550 ) ) ) $ ( true ) ) ) ) $ ( if false then d414 else d66 )
        d456 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> if true then x4590 else Bool ) ) ) $ ( if true then Bool else Bool )
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> if x4570 then false else d105 ) ) ) $ ( false ) ) ) ) $ ( if false then d88 else false )
        d460 : ( ( Set -> Set ) ∋ ( ( λ x4620 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if true then d296 else true ) ) ) $ ( if d397 then false else d112 )
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4650 -> if true then Bool else x4650 ) ) ) $ ( if false then Bool else Bool )
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> if d247 then false else x4640 ) ) ) $ ( if true then d121 else false )
        d466 : if false then if true then Bool else Bool else if false then Bool else Bool
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> if x4680 then true else x4670 ) ) ) $ ( false ) ) ) ) $ ( if d55 then false else d453 )
        d469 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> ( ( Set -> Set ) ∋ ( ( λ x4730 -> if true then Bool else Bool ) ) ) $ ( x4720 ) ) ) ) $ ( if false then Bool else Bool )
        d469 = if ( ( Bool -> Bool ) ∋ ( ( λ x4700 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> false ) ) ) $ ( true ) else if true then d34 else d149
        d474 : if false then ( ( Set -> Set ) ∋ ( ( λ x4760 -> x4760 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d474 = if ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> d134 ) ) ) $ ( d128 ) then if d264 then false else true else if d305 then d149 else false
        d477 : if true then ( ( Set -> Set ) ∋ ( ( λ x4800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4810 -> x4810 ) ) ) $ ( Bool )
        d477 = if if d108 then d469 else d154 then ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> d134 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> true ) ) ) $ ( true )
        d482 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4850 -> Bool ) ) ) $ ( Bool )
        d482 = ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> if d257 then false else false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d75 )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4890 -> ( ( Set -> Set ) ∋ ( ( λ x4900 -> if false then x4890 else x4890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> if true then d394 else x4880 ) ) ) $ ( d406 ) ) ) ) $ ( if d438 then false else true )
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4940 -> if false then Bool else x4940 ) ) ) $ ( if false then Bool else Bool )
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> if false then true else false ) ) ) $ ( x4920 ) ) ) ) $ ( if true then true else true )
        d495 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> if false then x4970 else x4970 ) ) ) $ ( if true then Bool else Bool )
        d495 = if if d401 then d55 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> false ) ) ) $ ( d469 ) else if false then false else d491
        d498 : ( ( Set -> Set ) ∋ ( ( λ x5020 -> if false then x5020 else x5020 ) ) ) $ ( if true then Bool else Bool )
        d498 = if ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> false ) ) ) $ ( d78 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5010 -> d446 ) ) ) $ ( true )
        d503 : if true then ( ( Set -> Set ) ∋ ( ( λ x5050 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d503 = if if d18 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> false ) ) ) $ ( d187 ) else if d112 then false else d346
        d506 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> if true then x5080 else Bool ) ) ) $ ( if false then Bool else Bool )
        d506 = if if false then d157 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> d141 ) ) ) $ ( d375 ) else if d187 then false else false
        d509 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5120 -> x5120 ) ) ) $ ( Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> if x5110 then d83 else true ) ) ) $ ( d456 ) ) ) ) $ ( if false then d401 else d34 )
        d513 : if false then ( ( Set -> Set ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d513 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> d183 ) ) ) $ ( false ) else if true then false else true
        d516 : if false then ( ( Set -> Set ) ∋ ( ( λ x5170 -> x5170 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d516 = if if true then d55 else false then if true then false else true else if true then d78 else true
        d518 : ( ( Set -> Set ) ∋ ( ( λ x5210 -> if false then x5210 else x5210 ) ) ) $ ( if true then Bool else Bool )
        d518 = if ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> x5200 ) ) ) $ ( d139 ) else if false then d199 else true
        d522 : ( ( Set -> Set ) ∋ ( ( λ x5240 -> ( ( Set -> Set ) ∋ ( ( λ x5250 -> if false then x5250 else Bool ) ) ) $ ( x5240 ) ) ) ) $ ( if true then Bool else Bool )
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if x5230 then false else true ) ) ) $ ( if true then d139 else d154 )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x5290 -> if true then x5290 else Bool ) ) ) $ ( if true then Bool else Bool )
        d526 = if if false then true else d346 then ( ( Bool -> Bool ) ∋ ( ( λ x5270 -> x5270 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> false ) ) ) $ ( true )
        d530 : ( ( Set -> Set ) ∋ ( ( λ x5310 -> ( ( Set -> Set ) ∋ ( ( λ x5320 -> if false then x5310 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d530 = if if d217 then true else d466 then if true then true else d277 else if false then true else false
        d533 : if true then ( ( Set -> Set ) ∋ ( ( λ x5350 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d533 = ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if x5340 then true else d170 ) ) ) $ ( if d463 then d187 else false )
        d536 : if true then if false then Bool else Bool else if false then Bool else Bool
        d536 = ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> if true then true else d199 ) ) ) $ ( if d52 then true else false )
        d538 : if false then if true then Bool else Bool else if true then Bool else Bool
        d538 = if ( ( Bool -> Bool ) ∋ ( ( λ x5390 -> d235 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> false ) ) ) $ ( d83 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> true ) ) ) $ ( true )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x5450 -> ( ( Set -> Set ) ∋ ( ( λ x5460 -> if false then Bool else x5460 ) ) ) $ ( x5450 ) ) ) ) $ ( if false then Bool else Bool )
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x5430 -> ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> if d359 then x5430 else false ) ) ) $ ( false ) ) ) ) $ ( if d264 then true else true )
        d547 : ( ( Set -> Set ) ∋ ( ( λ x5490 -> ( ( Set -> Set ) ∋ ( ( λ x5500 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> if d52 then false else false ) ) ) $ ( if false then d387 else false )
        d551 : if true then ( ( Set -> Set ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> if x5520 then x5520 else false ) ) ) $ ( x5520 ) ) ) ) $ ( if true then d339 else d98 )
        d555 : if true then ( ( Set -> Set ) ∋ ( ( λ x5570 -> x5570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> if d491 then d442 else true ) ) ) $ ( if false then false else false )
        d558 : ( ( Set -> Set ) ∋ ( ( λ x5610 -> if true then x5610 else x5610 ) ) ) $ ( if false then Bool else Bool )
        d558 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> d417 ) ) ) $ ( d105 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> x5600 ) ) ) $ ( d88 )
        d562 : if false then if false then Bool else Bool else if false then Bool else Bool
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> ( ( Bool -> Bool ) ∋ ( ( λ x5640 -> if d366 then d293 else d207 ) ) ) $ ( d139 ) ) ) ) $ ( if true then false else d139 )
        d565 : ( ( Set -> Set ) ∋ ( ( λ x5660 -> if true then x5660 else Bool ) ) ) $ ( if false then Bool else Bool )
        d565 = if if false then false else true then if false then d429 else d100 else if false then d72 else d380
        d567 : ( ( Set -> Set ) ∋ ( ( λ x5690 -> ( ( Set -> Set ) ∋ ( ( λ x5700 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d567 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> x5680 ) ) ) $ ( d49 ) else if true then true else false
        d571 : if true then ( ( Set -> Set ) ∋ ( ( λ x5740 -> x5740 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> ( ( Bool -> Bool ) ∋ ( ( λ x5730 -> if false then d305 else x5720 ) ) ) $ ( x5720 ) ) ) ) $ ( if false then false else d117 )
        d575 : ( ( Set -> Set ) ∋ ( ( λ x5780 -> if false then x5780 else x5780 ) ) ) $ ( if true then Bool else Bool )
        d575 = if ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> true ) ) ) $ ( true ) then if d346 then d175 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5770 -> x5770 ) ) ) $ ( d438 )
        d579 : if false then ( ( Set -> Set ) ∋ ( ( λ x5810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5820 -> Bool ) ) ) $ ( Bool )
        d579 = if ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> true ) ) ) $ ( false ) then if true then d321 else false else if false then true else true
        d583 : if false then ( ( Set -> Set ) ∋ ( ( λ x5860 -> x5860 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5870 -> x5870 ) ) ) $ ( Bool )
        d583 = if ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> x5840 ) ) ) $ ( false ) then if d241 then true else d575 else ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> x5850 ) ) ) $ ( false )
        d588 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5920 -> Bool ) ) ) $ ( Bool )
        d588 = if ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> d149 ) ) ) $ ( d366 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5910 -> d112 ) ) ) $ ( d300 )
        d593 : ( ( Set -> Set ) ∋ ( ( λ x5960 -> if true then x5960 else Bool ) ) ) $ ( if true then Bool else Bool )
        d593 = if ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> true ) ) ) $ ( d339 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5950 -> true ) ) ) $ ( d339 ) else if false then d121 else d108
        d597 : ( ( Set -> Set ) ∋ ( ( λ x6000 -> ( ( Set -> Set ) ∋ ( ( λ x6010 -> if false then x6000 else x6000 ) ) ) $ ( x6000 ) ) ) ) $ ( if false then Bool else Bool )
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> if x5990 then x5990 else d125 ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d602 : if false then ( ( Set -> Set ) ∋ ( ( λ x6050 -> x6050 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6060 -> x6060 ) ) ) $ ( Bool )
        d602 = ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> if x6030 then d482 else x6030 ) ) ) $ ( d588 ) ) ) ) $ ( if true then d231 else false )
        d607 : if false then ( ( Set -> Set ) ∋ ( ( λ x6110 -> x6110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6120 -> Bool ) ) ) $ ( Bool )
        d607 = if ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6090 -> true ) ) ) $ ( d486 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6100 -> d384 ) ) ) $ ( true )
        d613 : ( ( Set -> Set ) ∋ ( ( λ x6160 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d613 = ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> if d463 then d4 else false ) ) ) $ ( true ) ) ) ) $ ( if false then d466 else false )
        d617 : ( ( Set -> Set ) ∋ ( ( λ x6200 -> if true then x6200 else Bool ) ) ) $ ( if true then Bool else Bool )
        d617 = if ( ( Bool -> Bool ) ∋ ( ( λ x6180 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> d469 ) ) ) $ ( false ) else if true then false else d453
        d621 : ( ( Set -> Set ) ∋ ( ( λ x6240 -> ( ( Set -> Set ) ∋ ( ( λ x6250 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d621 = ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> if x6220 then d274 else d547 ) ) ) $ ( false ) ) ) ) $ ( if true then d31 else false )
        d626 : if true then if true then Bool else Bool else if false then Bool else Bool
        d626 = if ( ( Bool -> Bool ) ∋ ( ( λ x6270 -> x6270 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6290 -> x6290 ) ) ) $ ( true )
        d630 : if false then ( ( Set -> Set ) ∋ ( ( λ x6320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6330 -> Bool ) ) ) $ ( Bool )
        d630 = if ( ( Bool -> Bool ) ∋ ( ( λ x6310 -> false ) ) ) $ ( d626 ) then if false then false else true else if false then true else false
        d634 : ( ( Set -> Set ) ∋ ( ( λ x6360 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d634 = if if false then true else d394 then ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> false ) ) ) $ ( true ) else if d37 then true else true
        d637 : ( ( Set -> Set ) ∋ ( ( λ x6390 -> if false then x6390 else x6390 ) ) ) $ ( if true then Bool else Bool )
        d637 = if ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> x6380 ) ) ) $ ( true ) then if d187 then d466 else false else if false then d154 else d244
        d640 : if false then ( ( Set -> Set ) ∋ ( ( λ x6420 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6430 -> Bool ) ) ) $ ( Bool )
        d640 = if if d495 then d37 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> d1 ) ) ) $ ( false ) else if false then d394 else d562
        d644 : if true then if false then Bool else Bool else if false then Bool else Bool
        d644 = ( ( Bool -> Bool ) ∋ ( ( λ x6450 -> if false then d390 else d558 ) ) ) $ ( if d88 then d170 else d183 )
        d646 : if true then ( ( Set -> Set ) ∋ ( ( λ x6480 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6490 -> x6490 ) ) ) $ ( Bool )
        d646 = ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> if d62 then x6470 else x6470 ) ) ) $ ( if false then d637 else d438 )
        d650 : ( ( Set -> Set ) ∋ ( ( λ x6520 -> ( ( Set -> Set ) ∋ ( ( λ x6530 -> if true then x6530 else x6530 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d650 = ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> if true then d321 else d380 ) ) ) $ ( if false then false else d149 )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x6550 -> ( ( Set -> Set ) ∋ ( ( λ x6560 -> if true then x6560 else x6550 ) ) ) $ ( x6550 ) ) ) ) $ ( if false then Bool else Bool )
        d654 = if if false then false else d547 then if true then true else true else if d522 then d417 else d414
        d657 : ( ( Set -> Set ) ∋ ( ( λ x6590 -> ( ( Set -> Set ) ∋ ( ( λ x6600 -> if true then x6600 else x6590 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d657 = if if d37 then true else d23 then if true then d293 else true else ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> d644 ) ) ) $ ( false )
        d661 : if false then ( ( Set -> Set ) ∋ ( ( λ x6630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6640 -> x6640 ) ) ) $ ( Bool )
        d661 = ( ( Bool -> Bool ) ∋ ( ( λ x6620 -> if d359 then true else x6620 ) ) ) $ ( if d522 then true else d98 )
        d665 : ( ( Set -> Set ) ∋ ( ( λ x6680 -> if true then x6680 else x6680 ) ) ) $ ( if false then Bool else Bool )
        d665 = if ( ( Bool -> Bool ) ∋ ( ( λ x6660 -> d571 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6670 -> false ) ) ) $ ( false ) else if true then d394 else true
        d669 : ( ( Set -> Set ) ∋ ( ( λ x6710 -> if false then Bool else x6710 ) ) ) $ ( if false then Bool else Bool )
        d669 = if if d630 then d112 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6700 -> d366 ) ) ) $ ( true ) else if true then false else d650
        d672 : if false then ( ( Set -> Set ) ∋ ( ( λ x6740 -> x6740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6750 -> Bool ) ) ) $ ( Bool )
        d672 = ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> if d453 then d274 else x6730 ) ) ) $ ( if d426 then false else false )
        d676 : ( ( Set -> Set ) ∋ ( ( λ x6790 -> if false then x6790 else x6790 ) ) ) $ ( if true then Bool else Bool )
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> if true then true else true ) ) ) $ ( false ) ) ) ) $ ( if d343 then false else d274 )
        d680 : ( ( Set -> Set ) ∋ ( ( λ x6830 -> ( ( Set -> Set ) ∋ ( ( λ x6840 -> if false then x6840 else Bool ) ) ) $ ( x6830 ) ) ) ) $ ( if false then Bool else Bool )
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> if d333 then true else false ) ) ) $ ( false ) ) ) ) $ ( if d466 then false else d154 )
        d685 : if true then ( ( Set -> Set ) ∋ ( ( λ x6870 -> x6870 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6880 -> x6880 ) ) ) $ ( Bool )
        d685 = if if d318 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> x6860 ) ) ) $ ( d305 ) else if d665 then d293 else d654
        d689 : ( ( Set -> Set ) ∋ ( ( λ x6920 -> ( ( Set -> Set ) ∋ ( ( λ x6930 -> if false then Bool else x6920 ) ) ) $ ( x6920 ) ) ) ) $ ( if false then Bool else Bool )
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> if d252 then d108 else d143 ) ) ) $ ( false ) ) ) ) $ ( if false then d626 else true )
        d694 : if true then ( ( Set -> Set ) ∋ ( ( λ x6970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6980 -> x6980 ) ) ) $ ( Bool )
        d694 = if ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> d571 ) ) ) $ ( true ) then if d498 then true else d309 else ( ( Bool -> Bool ) ∋ ( ( λ x6960 -> d387 ) ) ) $ ( true )
        d699 : ( ( Set -> Set ) ∋ ( ( λ x7020 -> if true then Bool else x7020 ) ) ) $ ( if true then Bool else Bool )
        d699 = ( ( Bool -> Bool ) ∋ ( ( λ x7000 -> ( ( Bool -> Bool ) ∋ ( ( λ x7010 -> if x7000 then x7000 else true ) ) ) $ ( d196 ) ) ) ) $ ( if false then d37 else true )
        d703 : ( ( Set -> Set ) ∋ ( ( λ x7060 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d703 = ( ( Bool -> Bool ) ∋ ( ( λ x7040 -> ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> if x7050 then true else x7040 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d707 : ( ( Set -> Set ) ∋ ( ( λ x7090 -> ( ( Set -> Set ) ∋ ( ( λ x7100 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> if true then d375 else x7080 ) ) ) $ ( if d167 then d579 else d131 )
        d711 : if false then if false then Bool else Bool else if true then Bool else Bool
        d711 = if ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> false ) ) ) $ ( true ) then if d669 then true else d654 else if false then true else d597
        d713 : ( ( Set -> Set ) ∋ ( ( λ x7150 -> ( ( Set -> Set ) ∋ ( ( λ x7160 -> if true then Bool else x7160 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d713 = ( ( Bool -> Bool ) ∋ ( ( λ x7140 -> if x7140 then d346 else d565 ) ) ) $ ( if d421 then d277 else true )
        d717 : ( ( Set -> Set ) ∋ ( ( λ x7200 -> ( ( Set -> Set ) ∋ ( ( λ x7210 -> if false then Bool else Bool ) ) ) $ ( x7200 ) ) ) ) $ ( if true then Bool else Bool )
        d717 = if ( ( Bool -> Bool ) ∋ ( ( λ x7180 -> false ) ) ) $ ( d62 ) then if false then d503 else d121 else ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> d513 ) ) ) $ ( true )
        d722 : if false then if true then Bool else Bool else if false then Bool else Bool
        d722 = if ( ( Bool -> Bool ) ∋ ( ( λ x7230 -> x7230 ) ) ) $ ( d318 ) then if d450 then true else d607 else if false then d128 else true
        d724 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7260 -> Bool ) ) ) $ ( Bool )
        d724 = ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> if true then true else x7250 ) ) ) $ ( if d522 then false else d401 )
        d727 : if false then if false then Bool else Bool else if true then Bool else Bool
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> if true then x7280 else false ) ) ) $ ( d333 ) ) ) ) $ ( if true then d516 else d477 )
        d730 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7320 -> Bool ) ) ) $ ( Bool )
        d730 = ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> if d518 then false else x7310 ) ) ) $ ( if true then false else false )
        d733 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7360 -> x7360 ) ) ) $ ( Bool )
        d733 = ( ( Bool -> Bool ) ∋ ( ( λ x7340 -> ( ( Bool -> Bool ) ∋ ( ( λ x7350 -> if d654 then d558 else d128 ) ) ) $ ( x7340 ) ) ) ) $ ( if d285 then d326 else true )
        d737 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7390 -> Bool ) ) ) $ ( Bool )
        d737 = ( ( Bool -> Bool ) ∋ ( ( λ x7380 -> if x7380 then true else true ) ) ) $ ( if d571 then true else d575 )
        d740 : if true then if true then Bool else Bool else if false then Bool else Bool
        d740 = if ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7420 -> true ) ) ) $ ( d547 ) else if true then d567 else false
        d743 : ( ( Set -> Set ) ∋ ( ( λ x7450 -> ( ( Set -> Set ) ∋ ( ( λ x7460 -> if false then x7450 else x7460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d743 = if ( ( Bool -> Bool ) ∋ ( ( λ x7440 -> d486 ) ) ) $ ( d244 ) then if d466 then false else d694 else if d8 then true else d309
        d747 : if false then ( ( Set -> Set ) ∋ ( ( λ x7490 -> x7490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7500 -> x7500 ) ) ) $ ( Bool )
        d747 = if ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> d261 ) ) ) $ ( true ) then if d47 then false else false else if true then d83 else d421
        d751 : ( ( Set -> Set ) ∋ ( ( λ x7530 -> if true then x7530 else x7530 ) ) ) $ ( if true then Bool else Bool )
        d751 = if if d722 then false else true then if false then d640 else true else ( ( Bool -> Bool ) ∋ ( ( λ x7520 -> d722 ) ) ) $ ( d83 )
        d754 : if true then ( ( Set -> Set ) ∋ ( ( λ x7570 -> x7570 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d754 = if ( ( Bool -> Bool ) ∋ ( ( λ x7550 -> x7550 ) ) ) $ ( d442 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> x7560 ) ) ) $ ( false ) else if d426 then false else true
        d758 : ( ( Set -> Set ) ∋ ( ( λ x7610 -> ( ( Set -> Set ) ∋ ( ( λ x7620 -> if true then Bool else x7620 ) ) ) $ ( x7610 ) ) ) ) $ ( if true then Bool else Bool )
        d758 = ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> if true then d450 else x7600 ) ) ) $ ( d522 ) ) ) ) $ ( if true then true else d699 )
        d763 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7650 -> Bool ) ) ) $ ( Bool )
        d763 = ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> if x7640 then x7640 else d300 ) ) ) $ ( if d747 then d676 else d12 )
        d766 : if true then if true then Bool else Bool else if true then Bool else Bool
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> if true then d351 else d724 ) ) ) $ ( if true then d108 else d417 )
        d768 : ( ( Set -> Set ) ∋ ( ( λ x7710 -> ( ( Set -> Set ) ∋ ( ( λ x7720 -> if true then x7720 else x7720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d768 = if ( ( Bool -> Bool ) ∋ ( ( λ x7690 -> d626 ) ) ) $ ( d506 ) then if d58 then true else d722 else ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> x7700 ) ) ) $ ( true )
        d773 : ( ( Set -> Set ) ∋ ( ( λ x7760 -> ( ( Set -> Set ) ∋ ( ( λ x7770 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d773 = ( ( Bool -> Bool ) ∋ ( ( λ x7740 -> ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> if true then x7740 else d330 ) ) ) $ ( x7740 ) ) ) ) $ ( if false then d149 else d747 )
        d778 : ( ( Set -> Set ) ∋ ( ( λ x7800 -> if true then x7800 else x7800 ) ) ) $ ( if false then Bool else Bool )
        d778 = if if d713 then true else d366 then ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> x7790 ) ) ) $ ( false ) else if true then d196 else false
        d781 : ( ( Set -> Set ) ∋ ( ( λ x7830 -> if true then x7830 else Bool ) ) ) $ ( if false then Bool else Bool )
        d781 = if if true then d157 else d408 then if d318 then d366 else d115 else ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> d551 ) ) ) $ ( true )
        d784 : if true then if true then Bool else Bool else if false then Bool else Bool
        d784 = if if false then d58 else false then ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> x7850 ) ) ) $ ( d257 ) else if d83 then d235 else true
        d786 : ( ( Set -> Set ) ∋ ( ( λ x7890 -> ( ( Set -> Set ) ∋ ( ( λ x7900 -> if true then x7890 else x7890 ) ) ) $ ( x7890 ) ) ) ) $ ( if false then Bool else Bool )
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> if true then true else false ) ) ) $ ( d241 ) ) ) ) $ ( if d261 then false else true )
        d791 : ( ( Set -> Set ) ∋ ( ( λ x7940 -> if false then x7940 else Bool ) ) ) $ ( if true then Bool else Bool )
        d791 = if ( ( Bool -> Bool ) ∋ ( ( λ x7920 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> x7930 ) ) ) $ ( false ) else if false then true else d12
        d795 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7970 -> Bool ) ) ) $ ( Bool )
        d795 = if if d296 then false else true then if d380 then false else d482 else ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> d680 ) ) ) $ ( false )
        d798 : if true then ( ( Set -> Set ) ∋ ( ( λ x8000 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d798 = ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> if x7990 then x7990 else x7990 ) ) ) $ ( if d318 then false else false )
        d801 : ( ( Set -> Set ) ∋ ( ( λ x8040 -> if false then x8040 else x8040 ) ) ) $ ( if true then Bool else Bool )
        d801 = ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> if false then d530 else true ) ) ) $ ( x8020 ) ) ) ) $ ( if true then true else d247 )
        d805 : if true then if false then Bool else Bool else if true then Bool else Bool
        d805 = if ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> false ) ) ) $ ( d644 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> x8080 ) ) ) $ ( d597 )
        d809 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8120 -> Bool ) ) ) $ ( Bool )
        d809 = if ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> d538 ) ) ) $ ( false ) then if d143 then true else d175 else ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> true ) ) ) $ ( d676 )
        d813 : ( ( Set -> Set ) ∋ ( ( λ x8150 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d813 = ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> if false then d558 else true ) ) ) $ ( if d417 then true else d18 )
        d816 : ( ( Set -> Set ) ∋ ( ( λ x8190 -> ( ( Set -> Set ) ∋ ( ( λ x8200 -> if false then x8190 else x8200 ) ) ) $ ( x8190 ) ) ) ) $ ( if false then Bool else Bool )
        d816 = ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> if x8180 then d503 else x8170 ) ) ) $ ( true ) ) ) ) $ ( if d730 then true else d795 )
        d821 : ( ( Set -> Set ) ∋ ( ( λ x8240 -> if false then x8240 else Bool ) ) ) $ ( if true then Bool else Bool )
        d821 = ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> if d558 then d31 else d72 ) ) ) $ ( d128 ) ) ) ) $ ( if true then false else true )
        d825 : ( ( Set -> Set ) ∋ ( ( λ x8260 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d825 = if if false then false else d128 then if true then true else true else if d506 then true else d703
        d827 : if false then ( ( Set -> Set ) ∋ ( ( λ x8300 -> x8300 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d827 = ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> if x8290 then d740 else x8290 ) ) ) $ ( d43 ) ) ) ) $ ( if true then false else false )
        d831 : if true then if false then Bool else Bool else if false then Bool else Bool
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if x8320 then d456 else d134 ) ) ) $ ( if false then d371 else true )
        d833 : ( ( Set -> Set ) ∋ ( ( λ x8350 -> if true then x8350 else x8350 ) ) ) $ ( if false then Bool else Bool )
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> if true then d105 else true ) ) ) $ ( if true then d727 else d477 )
        d836 : if false then ( ( Set -> Set ) ∋ ( ( λ x8370 -> x8370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d836 = if if false then d816 else d252 then if false then d183 else d558 else if d558 then d758 else d49
        d838 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8400 -> Bool ) ) ) $ ( Bool )
        d838 = ( ( Bool -> Bool ) ∋ ( ( λ x8390 -> if x8390 then true else false ) ) ) $ ( if d509 then true else true )
        d841 : if true then if false then Bool else Bool else if true then Bool else Bool
        d841 = if if true then d602 else d207 then ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> x8420 ) ) ) $ ( d277 ) else if false then d414 else false
        d843 : ( ( Set -> Set ) ∋ ( ( λ x8460 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d843 = ( ( Bool -> Bool ) ∋ ( ( λ x8440 -> ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> if d621 then true else false ) ) ) $ ( x8440 ) ) ) ) $ ( if true then true else d442 )
        d847 : ( ( Set -> Set ) ∋ ( ( λ x8500 -> ( ( Set -> Set ) ∋ ( ( λ x8510 -> if true then x8510 else x8500 ) ) ) $ ( x8500 ) ) ) ) $ ( if true then Bool else Bool )
        d847 = ( ( Bool -> Bool ) ∋ ( ( λ x8480 -> ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> if false then x8480 else true ) ) ) $ ( x8480 ) ) ) ) $ ( if false then true else true )
        d852 : ( ( Set -> Set ) ∋ ( ( λ x8540 -> if true then x8540 else x8540 ) ) ) $ ( if false then Bool else Bool )
        d852 = ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> if x8530 then false else x8530 ) ) ) $ ( if d121 then d264 else false )
        d855 : if false then if true then Bool else Bool else if true then Bool else Bool
        d855 = if ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> x8560 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> x8570 ) ) ) $ ( d650 ) else if d199 then true else d491
        d858 : ( ( Set -> Set ) ∋ ( ( λ x8600 -> ( ( Set -> Set ) ∋ ( ( λ x8610 -> if false then Bool else Bool ) ) ) $ ( x8600 ) ) ) ) $ ( if false then Bool else Bool )
        d858 = ( ( Bool -> Bool ) ∋ ( ( λ x8590 -> if x8590 then x8590 else d575 ) ) ) $ ( if d852 then d390 else d836 )
        d862 : ( ( Set -> Set ) ∋ ( ( λ x8650 -> ( ( Set -> Set ) ∋ ( ( λ x8660 -> if false then x8650 else Bool ) ) ) $ ( x8650 ) ) ) ) $ ( if true then Bool else Bool )
        d862 = if if true then d394 else true then ( ( Bool -> Bool ) ∋ ( ( λ x8630 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> true ) ) ) $ ( d191 )
        d867 : if true then if true then Bool else Bool else if true then Bool else Bool
        d867 = if if d713 then d847 else d143 then if false then d55 else d456 else ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> d538 ) ) ) $ ( d809 )
        d869 : if false then if false then Bool else Bool else if true then Bool else Bool
        d869 = ( ( Bool -> Bool ) ∋ ( ( λ x8700 -> ( ( Bool -> Bool ) ∋ ( ( λ x8710 -> if x8700 then d83 else x8700 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d872 : if true then ( ( Set -> Set ) ∋ ( ( λ x8750 -> x8750 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d872 = if ( ( Bool -> Bool ) ∋ ( ( λ x8730 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> d676 ) ) ) $ ( d318 ) else if true then true else false
        d876 : ( ( Set -> Set ) ∋ ( ( λ x8770 -> ( ( Set -> Set ) ∋ ( ( λ x8780 -> if true then x8780 else x8770 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d876 = if if d699 then d784 else d763 then if d37 then false else false else if true then d146 else d115
        d879 : if false then ( ( Set -> Set ) ∋ ( ( λ x8810 -> x8810 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8820 -> x8820 ) ) ) $ ( Bool )
        d879 = if if false then true else false then if d637 then d781 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> true ) ) ) $ ( d607 )
        d883 : ( ( Set -> Set ) ∋ ( ( λ x8860 -> if true then x8860 else x8860 ) ) ) $ ( if false then Bool else Bool )
        d883 = if ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> x8840 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8850 -> false ) ) ) $ ( d359 ) else if d555 then d766 else d825
        d887 : ( ( Set -> Set ) ∋ ( ( λ x8890 -> ( ( Set -> Set ) ∋ ( ( λ x8900 -> if true then x8890 else x8890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d887 = if ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> false ) ) ) $ ( true ) then if d669 then false else d607 else if false then true else true
        d891 : if false then ( ( Set -> Set ) ∋ ( ( λ x8940 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8950 -> Bool ) ) ) $ ( Bool )
        d891 = ( ( Bool -> Bool ) ∋ ( ( λ x8920 -> ( ( Bool -> Bool ) ∋ ( ( λ x8930 -> if d518 then d781 else false ) ) ) $ ( d876 ) ) ) ) $ ( if d547 then false else false )
        d896 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8980 -> x8980 ) ) ) $ ( Bool )
        d896 = ( ( Bool -> Bool ) ∋ ( ( λ x8970 -> if d83 then d31 else d555 ) ) ) $ ( if d831 then d518 else true )
        d899 : ( ( Set -> Set ) ∋ ( ( λ x9020 -> if true then x9020 else Bool ) ) ) $ ( if true then Bool else Bool )
        d899 = if if d538 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> x9000 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x9010 -> d52 ) ) ) $ ( d115 )
        d903 : ( ( Set -> Set ) ∋ ( ( λ x9060 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d903 = ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> if x9040 then d72 else true ) ) ) $ ( x9040 ) ) ) ) $ ( if true then false else d778 )
        d907 : ( ( Set -> Set ) ∋ ( ( λ x9090 -> if false then Bool else x9090 ) ) ) $ ( if true then Bool else Bool )
        d907 = ( ( Bool -> Bool ) ∋ ( ( λ x9080 -> if d34 then x9080 else x9080 ) ) ) $ ( if false then d630 else false )
        d910 : ( ( Set -> Set ) ∋ ( ( λ x9120 -> if true then Bool else x9120 ) ) ) $ ( if true then Bool else Bool )
        d910 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x9110 -> false ) ) ) $ ( false ) else if d495 then true else d417
        d913 : ( ( Set -> Set ) ∋ ( ( λ x9160 -> if true then x9160 else Bool ) ) ) $ ( if false then Bool else Bool )
        d913 = ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> if x9150 then false else d121 ) ) ) $ ( x9140 ) ) ) ) $ ( if false then d100 else d406 )
        d917 : ( ( Set -> Set ) ∋ ( ( λ x9190 -> if true then x9190 else Bool ) ) ) $ ( if false then Bool else Bool )
        d917 = if ( ( Bool -> Bool ) ∋ ( ( λ x9180 -> d429 ) ) ) $ ( false ) then if d281 then d414 else d827 else if true then true else d375
        d920 : if true then ( ( Set -> Set ) ∋ ( ( λ x9210 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d920 = if if false then d654 else d650 then if d139 then true else d187 else if true then d235 else d513
        d922 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9240 -> x9240 ) ) ) $ ( Bool )
        d922 = ( ( Bool -> Bool ) ∋ ( ( λ x9230 -> if d235 then x9230 else d650 ) ) ) $ ( if false then true else true )
        d925 : if false then ( ( Set -> Set ) ∋ ( ( λ x9270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9280 -> Bool ) ) ) $ ( Bool )
        d925 = ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> if false then d247 else false ) ) ) $ ( if d903 then d125 else d281 )
        d929 : if true then ( ( Set -> Set ) ∋ ( ( λ x9320 -> x9320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9330 -> x9330 ) ) ) $ ( Bool )
        d929 = ( ( Bool -> Bool ) ∋ ( ( λ x9300 -> ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> if true then d321 else false ) ) ) $ ( d646 ) ) ) ) $ ( if d644 then false else false )
        d934 : ( ( Set -> Set ) ∋ ( ( λ x9360 -> ( ( Set -> Set ) ∋ ( ( λ x9370 -> if true then Bool else x9360 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d934 = if ( ( Bool -> Bool ) ∋ ( ( λ x9350 -> false ) ) ) $ ( d825 ) then if d463 then d203 else true else if d486 then d346 else false
        d938 : ( ( Set -> Set ) ∋ ( ( λ x9390 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d938 = if if true then d838 else false then if false then d66 else true else if d196 then false else true
        d940 : if true then ( ( Set -> Set ) ∋ ( ( λ x9420 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d940 = if if d72 then true else true then if d477 then d199 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> x9410 ) ) ) $ ( true )
        d943 : ( ( Set -> Set ) ∋ ( ( λ x9460 -> ( ( Set -> Set ) ∋ ( ( λ x9470 -> if false then Bool else Bool ) ) ) $ ( x9460 ) ) ) ) $ ( if true then Bool else Bool )
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> if d146 then d27 else x9450 ) ) ) $ ( x9440 ) ) ) ) $ ( if d469 then true else true )
        d948 : ( ( Set -> Set ) ∋ ( ( λ x9500 -> if true then x9500 else x9500 ) ) ) $ ( if true then Bool else Bool )
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> if true then true else d339 ) ) ) $ ( if true then d226 else false )
        d951 : ( ( Set -> Set ) ∋ ( ( λ x9520 -> if true then x9520 else x9520 ) ) ) $ ( if false then Bool else Bool )
        d951 = if if false then false else true then if d482 then d672 else true else if true then false else false
        d953 : ( ( Set -> Set ) ∋ ( ( λ x9560 -> ( ( Set -> Set ) ∋ ( ( λ x9570 -> if true then x9560 else x9570 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d953 = ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> if true then d157 else x9550 ) ) ) $ ( x9540 ) ) ) ) $ ( if false then false else d125 )
        d958 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9610 -> Bool ) ) ) $ ( Bool )
        d958 = ( ( Bool -> Bool ) ∋ ( ( λ x9590 -> ( ( Bool -> Bool ) ∋ ( ( λ x9600 -> if x9600 then x9600 else d211 ) ) ) $ ( x9590 ) ) ) ) $ ( if d105 then d404 else false )
        d962 : if false then if false then Bool else Bool else if true then Bool else Bool
        d962 = ( ( Bool -> Bool ) ∋ ( ( λ x9630 -> if x9630 then true else d397 ) ) ) $ ( if d247 then d676 else d669 )
        d964 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9670 -> Bool ) ) ) $ ( Bool )
        d964 = if if d640 then true else d296 then ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> d281 ) ) ) $ ( d366 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> d665 ) ) ) $ ( d231 )
        d968 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9710 -> x9710 ) ) ) $ ( Bool )
        d968 = ( ( Bool -> Bool ) ∋ ( ( λ x9690 -> ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> if d798 then d836 else false ) ) ) $ ( x9690 ) ) ) ) $ ( if d538 then true else d300 )
        d972 : if false then ( ( Set -> Set ) ∋ ( ( λ x9740 -> x9740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9750 -> Bool ) ) ) $ ( Bool )
        d972 = ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> if false then x9730 else true ) ) ) $ ( if d503 then true else d567 )
        d976 : if false then ( ( Set -> Set ) ∋ ( ( λ x9780 -> x9780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9790 -> Bool ) ) ) $ ( Bool )
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x9770 -> if x9770 then x9770 else true ) ) ) $ ( if d131 then false else false )
        d980 : if false then ( ( Set -> Set ) ∋ ( ( λ x9820 -> x9820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9830 -> x9830 ) ) ) $ ( Bool )
        d980 = if if true then true else d968 then if false then false else d495 else ( ( Bool -> Bool ) ∋ ( ( λ x9810 -> x9810 ) ) ) $ ( false )
        d984 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9870 -> x9870 ) ) ) $ ( Bool )
        d984 = ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> ( ( Bool -> Bool ) ∋ ( ( λ x9860 -> if d404 then false else true ) ) ) $ ( x9850 ) ) ) ) $ ( if d290 then false else d404 )
        d988 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9900 -> x9900 ) ) ) $ ( Bool )
        d988 = ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> if false then true else true ) ) ) $ ( if true then false else false )
        d991 : if false then ( ( Set -> Set ) ∋ ( ( λ x9930 -> x9930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9940 -> x9940 ) ) ) $ ( Bool )
        d991 = if if false then false else false then if d203 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> false ) ) ) $ ( false )
        d995 : ( ( Set -> Set ) ∋ ( ( λ x9980 -> if false then x9980 else x9980 ) ) ) $ ( if true then Bool else Bool )
        d995 = if ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> true ) ) ) $ ( d296 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> d883 ) ) ) $ ( d558 ) else if d426 then d380 else false
        d999 : ( ( Set -> Set ) ∋ ( ( λ x10010 -> if false then Bool else x10010 ) ) ) $ ( if true then Bool else Bool )
        d999 = ( ( Bool -> Bool ) ∋ ( ( λ x10000 -> if x10000 then x10000 else x10000 ) ) ) $ ( if d217 then false else false )
        d1002 : if false then ( ( Set -> Set ) ∋ ( ( λ x10040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10050 -> Bool ) ) ) $ ( Bool )
        d1002 = if if false then d562 else d805 then ( ( Bool -> Bool ) ∋ ( ( λ x10030 -> d16 ) ) ) $ ( false ) else if d426 then d689 else d75
        d1006 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10070 -> x10070 ) ) ) $ ( Bool )
        d1006 = if if true then true else true then if d852 then false else false else if d872 then false else true
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x10110 -> if false then Bool else x10110 ) ) ) $ ( if false then Bool else Bool )
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> if false then true else true ) ) ) $ ( x10090 ) ) ) ) $ ( if d646 then d121 else true )
        d1012 : ( ( Set -> Set ) ∋ ( ( λ x10140 -> ( ( Set -> Set ) ∋ ( ( λ x10150 -> if false then Bool else x10150 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1012 = ( ( Bool -> Bool ) ∋ ( ( λ x10130 -> if x10130 then x10130 else d669 ) ) ) $ ( if false then d809 else false )
        d1016 : ( ( Set -> Set ) ∋ ( ( λ x10190 -> ( ( Set -> Set ) ∋ ( ( λ x10200 -> if false then Bool else Bool ) ) ) $ ( x10190 ) ) ) ) $ ( if true then Bool else Bool )
        d1016 = if ( ( Bool -> Bool ) ∋ ( ( λ x10170 -> true ) ) ) $ ( d747 ) then if true then true else d211 else ( ( Bool -> Bool ) ∋ ( ( λ x10180 -> true ) ) ) $ ( true )
        d1021 : ( ( Set -> Set ) ∋ ( ( λ x10240 -> if true then x10240 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1021 = if ( ( Bool -> Bool ) ∋ ( ( λ x10220 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> d579 ) ) ) $ ( d397 ) else if d672 then d183 else d52
        d1025 : ( ( Set -> Set ) ∋ ( ( λ x10280 -> if true then Bool else x10280 ) ) ) $ ( if true then Bool else Bool )
        d1025 = ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> if d264 then false else true ) ) ) $ ( true ) ) ) ) $ ( if d491 then d285 else false )
        d1029 : ( ( Set -> Set ) ∋ ( ( λ x10310 -> ( ( Set -> Set ) ∋ ( ( λ x10320 -> if true then Bool else x10310 ) ) ) $ ( x10310 ) ) ) ) $ ( if true then Bool else Bool )
        d1029 = ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> if d847 then d1025 else x10300 ) ) ) $ ( if d460 then false else d1008 )
        d1033 : ( ( Set -> Set ) ∋ ( ( λ x10360 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1033 = if if d43 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> x10340 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> d737 ) ) ) $ ( true )
        d1037 : if true then ( ( Set -> Set ) ∋ ( ( λ x10390 -> x10390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10400 -> x10400 ) ) ) $ ( Bool )
        d1037 = ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> if x10380 then x10380 else true ) ) ) $ ( if false then true else d913 )
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1041 = ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> if true then false else d438 ) ) ) $ ( if d214 then false else false )
        d1044 : if true then ( ( Set -> Set ) ∋ ( ( λ x10480 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1044 = if ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> false ) ) ) $ ( d217 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> x10460 ) ) ) $ ( d816 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10470 -> d134 ) ) ) $ ( d196 )
        d1049 : if false then ( ( Set -> Set ) ∋ ( ( λ x10520 -> x10520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10530 -> x10530 ) ) ) $ ( Bool )
        d1049 = ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> if x10510 then d825 else x10510 ) ) ) $ ( x10500 ) ) ) ) $ ( if false then false else d869 )
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x10570 -> ( ( Set -> Set ) ∋ ( ( λ x10580 -> if false then Bool else x10570 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1054 = ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> if x10550 then x10560 else d433 ) ) ) $ ( d644 ) ) ) ) $ ( if true then d542 else true )
        d1059 : ( ( Set -> Set ) ∋ ( ( λ x10620 -> ( ( Set -> Set ) ∋ ( ( λ x10630 -> if false then x10630 else Bool ) ) ) $ ( x10620 ) ) ) ) $ ( if true then Bool else Bool )
        d1059 = if ( ( Bool -> Bool ) ∋ ( ( λ x10600 -> d831 ) ) ) $ ( false ) then if d37 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> d159 ) ) ) $ ( d191 )
        d1064 : if false then ( ( Set -> Set ) ∋ ( ( λ x10660 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1064 = if if d49 then d27 else false then if true then d1033 else d105 else ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> d72 ) ) ) $ ( true )
        d1067 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1067 = ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> if x10680 then d747 else x10680 ) ) ) $ ( if d621 then true else d1044 )
        d1069 : ( ( Set -> Set ) ∋ ( ( λ x10710 -> if false then x10710 else x10710 ) ) ) $ ( if true then Bool else Bool )
        d1069 = if if d362 then true else false then if false then d665 else d49 else ( ( Bool -> Bool ) ∋ ( ( λ x10700 -> d366 ) ) ) $ ( d583 )
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x10760 -> ( ( Set -> Set ) ∋ ( ( λ x10770 -> if false then x10760 else x10760 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1072 = if ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> d763 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10740 -> x10740 ) ) ) $ ( d293 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10750 -> x10750 ) ) ) $ ( false )
        d1078 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10810 -> x10810 ) ) ) $ ( Bool )
        d1078 = if ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> d482 ) ) ) $ ( d442 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10800 -> d867 ) ) ) $ ( true ) else if d536 then d995 else d167
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x10840 -> if true then Bool else x10840 ) ) ) $ ( if false then Bool else Bool )
        d1082 = ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> if false then x10830 else true ) ) ) $ ( if d1059 then d953 else d380 )
        d1085 : ( ( Set -> Set ) ∋ ( ( λ x10870 -> ( ( Set -> Set ) ∋ ( ( λ x10880 -> if true then Bool else x10880 ) ) ) $ ( x10870 ) ) ) ) $ ( if true then Bool else Bool )
        d1085 = ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> if x10860 then x10860 else d196 ) ) ) $ ( if false then true else d784 )
        d1089 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10920 -> x10920 ) ) ) $ ( Bool )
        d1089 = ( ( Bool -> Bool ) ∋ ( ( λ x10900 -> ( ( Bool -> Bool ) ∋ ( ( λ x10910 -> if d1041 then d751 else d948 ) ) ) $ ( true ) ) ) ) $ ( if d117 then d362 else false )
        d1093 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10960 -> x10960 ) ) ) $ ( Bool )
        d1093 = ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if d509 then false else d1041 ) ) ) $ ( x10940 ) ) ) ) $ ( if false then false else false )
        d1097 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11000 -> Bool ) ) ) $ ( Bool )
        d1097 = ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> if d833 then true else x10990 ) ) ) $ ( d143 ) ) ) ) $ ( if d1093 then false else d841 )
        d1101 : ( ( Set -> Set ) ∋ ( ( λ x11040 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1101 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11030 -> x11030 ) ) ) $ ( false )
        d1105 : if false then ( ( Set -> Set ) ∋ ( ( λ x11070 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1105 = ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> if x11060 then true else x11060 ) ) ) $ ( if d66 then false else false )
        d1108 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11110 -> x11110 ) ) ) $ ( Bool )
        d1108 = if ( ( Bool -> Bool ) ∋ ( ( λ x11090 -> false ) ) ) $ ( d429 ) then if d16 then d999 else true else ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> d196 ) ) ) $ ( false )
        d1112 : ( ( Set -> Set ) ∋ ( ( λ x11150 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1112 = if ( ( Bool -> Bool ) ∋ ( ( λ x11130 -> x11130 ) ) ) $ ( d929 ) then if d784 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> d1093 ) ) ) $ ( d925 )
        d1116 : if false then ( ( Set -> Set ) ∋ ( ( λ x11190 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1116 = ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> ( ( Bool -> Bool ) ∋ ( ( λ x11180 -> if true then x11180 else d617 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d1120 : ( ( Set -> Set ) ∋ ( ( λ x11220 -> ( ( Set -> Set ) ∋ ( ( λ x11230 -> if true then Bool else x11230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1120 = ( ( Bool -> Bool ) ∋ ( ( λ x11210 -> if false then d630 else false ) ) ) $ ( if d343 then d768 else false )
        d1124 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11260 -> x11260 ) ) ) $ ( Bool )
        d1124 = ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> if true then x11250 else true ) ) ) $ ( if false then false else d855 )
        d1127 : ( ( Set -> Set ) ∋ ( ( λ x11300 -> ( ( Set -> Set ) ∋ ( ( λ x11310 -> if true then x11310 else x11300 ) ) ) $ ( x11300 ) ) ) ) $ ( if true then Bool else Bool )
        d1127 = ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> ( ( Bool -> Bool ) ∋ ( ( λ x11290 -> if d542 then true else d657 ) ) ) $ ( false ) ) ) ) $ ( if d899 then d665 else false )
        d1132 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11350 -> Bool ) ) ) $ ( Bool )
        d1132 = ( ( Bool -> Bool ) ∋ ( ( λ x11330 -> ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> if x11330 then true else x11330 ) ) ) $ ( d883 ) ) ) ) $ ( if d75 then d384 else true )
        d1136 : ( ( Set -> Set ) ∋ ( ( λ x11390 -> ( ( Set -> Set ) ∋ ( ( λ x11400 -> if true then Bool else Bool ) ) ) $ ( x11390 ) ) ) ) $ ( if true then Bool else Bool )
        d1136 = ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> if true then x11370 else d547 ) ) ) $ ( d359 ) ) ) ) $ ( if d149 then d825 else false )
        d1141 : ( ( Set -> Set ) ∋ ( ( λ x11440 -> if true then Bool else x11440 ) ) ) $ ( if true then Bool else Bool )
        d1141 = if if true then true else d8 then ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> d707 ) ) ) $ ( d261 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11430 -> d359 ) ) ) $ ( true )
        d1145 : ( ( Set -> Set ) ∋ ( ( λ x11470 -> ( ( Set -> Set ) ∋ ( ( λ x11480 -> if false then Bool else x11480 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1145 = ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> if d843 then false else d217 ) ) ) $ ( if d314 then d355 else d816 )
        d1149 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1149 = ( ( Bool -> Bool ) ∋ ( ( λ x11500 -> ( ( Bool -> Bool ) ∋ ( ( λ x11510 -> if false then d567 else d867 ) ) ) $ ( d821 ) ) ) ) $ ( if d917 then d93 else false )
        d1152 : ( ( Set -> Set ) ∋ ( ( λ x11540 -> ( ( Set -> Set ) ∋ ( ( λ x11550 -> if true then Bool else Bool ) ) ) $ ( x11540 ) ) ) ) $ ( if true then Bool else Bool )
        d1152 = if ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> false ) ) ) $ ( d52 ) then if false then false else false else if false then true else true
        d1156 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1156 = if ( ( Bool -> Bool ) ∋ ( ( λ x11570 -> true ) ) ) $ ( d567 ) then if d1078 then false else d460 else ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> d469 ) ) ) $ ( false )
        d1159 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1159 = ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> if x11600 then x11610 else true ) ) ) $ ( x11600 ) ) ) ) $ ( if d108 then false else true )
        d1162 : if true then ( ( Set -> Set ) ∋ ( ( λ x11650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1162 = if if d813 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x11630 -> d359 ) ) ) $ ( d196 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11640 -> false ) ) ) $ ( d1124 )
        d1166 : ( ( Set -> Set ) ∋ ( ( λ x11690 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1166 = ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> ( ( Bool -> Bool ) ∋ ( ( λ x11680 -> if true then true else d703 ) ) ) $ ( x11670 ) ) ) ) $ ( if d134 then true else d387 )
        d1170 : ( ( Set -> Set ) ∋ ( ( λ x11730 -> if false then x11730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1170 = ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> ( ( Bool -> Bool ) ∋ ( ( λ x11720 -> if false then false else false ) ) ) $ ( true ) ) ) ) $ ( if false then d530 else d637 )
        d1174 : ( ( Set -> Set ) ∋ ( ( λ x11770 -> if true then x11770 else x11770 ) ) ) $ ( if true then Bool else Bool )
        d1174 = ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> if x11760 then false else d1166 ) ) ) $ ( d984 ) ) ) ) $ ( if true then false else false )
        d1178 : ( ( Set -> Set ) ∋ ( ( λ x11810 -> if true then Bool else x11810 ) ) ) $ ( if true then Bool else Bool )
        d1178 = if ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> x11790 ) ) ) $ ( d1162 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> d887 ) ) ) $ ( true ) else if d421 then d157 else false
        d1182 : if true then ( ( Set -> Set ) ∋ ( ( λ x11830 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1182 = if if d758 then d330 else d917 then if d235 then false else d1069 else if d858 then true else d869
        d1184 : if false then ( ( Set -> Set ) ∋ ( ( λ x11870 -> x11870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1184 = if if d784 then true else d433 then ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> true ) ) ) $ ( d1108 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> x11860 ) ) ) $ ( d1002 )
        d1188 : ( ( Set -> Set ) ∋ ( ( λ x11910 -> ( ( Set -> Set ) ∋ ( ( λ x11920 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1188 = ( ( Bool -> Bool ) ∋ ( ( λ x11890 -> ( ( Bool -> Bool ) ∋ ( ( λ x11900 -> if x11890 then x11900 else x11890 ) ) ) $ ( d910 ) ) ) ) $ ( if d1012 then d207 else d872 )
        d1193 : ( ( Set -> Set ) ∋ ( ( λ x11950 -> if true then x11950 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1193 = ( ( Bool -> Bool ) ∋ ( ( λ x11940 -> if d558 then d509 else d47 ) ) ) $ ( if d858 then true else false )
        d1196 : ( ( Set -> Set ) ∋ ( ( λ x11980 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1196 = if if true then false else d791 then ( ( Bool -> Bool ) ∋ ( ( λ x11970 -> x11970 ) ) ) $ ( false ) else if d62 then d685 else true
        d1199 : ( ( Set -> Set ) ∋ ( ( λ x12020 -> if false then Bool else x12020 ) ) ) $ ( if false then Bool else Bool )
        d1199 = if ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> x12000 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> false ) ) ) $ ( d154 ) else if d257 then true else true
        d1203 : ( ( Set -> Set ) ∋ ( ( λ x12060 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1203 = ( ( Bool -> Bool ) ∋ ( ( λ x12040 -> ( ( Bool -> Bool ) ∋ ( ( λ x12050 -> if x12050 then true else d1170 ) ) ) $ ( d362 ) ) ) ) $ ( if true then d626 else d929 )
        d1207 : ( ( Set -> Set ) ∋ ( ( λ x12090 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1207 = if if true then d1145 else d899 then if d717 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> d1101 ) ) ) $ ( d858 )
        d1210 : ( ( Set -> Set ) ∋ ( ( λ x12130 -> ( ( Set -> Set ) ∋ ( ( λ x12140 -> if true then Bool else x12140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1210 = if ( ( Bool -> Bool ) ∋ ( ( λ x12110 -> d108 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> false ) ) ) $ ( d309 ) else if d934 then d429 else d463
        d1215 : if false then ( ( Set -> Set ) ∋ ( ( λ x12180 -> x12180 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1215 = ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> if d1127 then d733 else true ) ) ) $ ( false ) ) ) ) $ ( if d847 then true else false )
        d1219 : ( ( Set -> Set ) ∋ ( ( λ x12200 -> ( ( Set -> Set ) ∋ ( ( λ x12210 -> if true then Bool else x12200 ) ) ) $ ( x12200 ) ) ) ) $ ( if false then Bool else Bool )
        d1219 = if if d858 then true else true then if d964 then d128 else d522 else if d463 then false else d680
        d1222 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1222 = ( ( Bool -> Bool ) ∋ ( ( λ x12230 -> if false then x12230 else x12230 ) ) ) $ ( if false then d801 else d469 )
        d1224 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12260 -> x12260 ) ) ) $ ( Bool )
        d1224 = if ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> true ) ) ) $ ( true ) then if d551 then d442 else d146 else if d680 then true else d196
        d1227 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1227 = if if true then d929 else d669 then ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> x12280 ) ) ) $ ( true ) else if d1064 then true else false
        d1229 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1229 = ( ( Bool -> Bool ) ∋ ( ( λ x12300 -> ( ( Bool -> Bool ) ∋ ( ( λ x12310 -> if true then d825 else false ) ) ) $ ( d1136 ) ) ) ) $ ( if d917 then false else d555 )
        d1232 : ( ( Set -> Set ) ∋ ( ( λ x12350 -> if false then Bool else x12350 ) ) ) $ ( if false then Bool else Bool )
        d1232 = ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> if x12330 then true else false ) ) ) $ ( x12330 ) ) ) ) $ ( if d766 then d426 else false )
        d1236 : ( ( Set -> Set ) ∋ ( ( λ x12370 -> ( ( Set -> Set ) ∋ ( ( λ x12380 -> if true then x12380 else x12380 ) ) ) $ ( x12370 ) ) ) ) $ ( if true then Bool else Bool )
        d1236 = if if d654 then d318 else d722 then if false then d547 else false else if d1116 then true else true
        d1239 : if true then ( ( Set -> Set ) ∋ ( ( λ x12410 -> x12410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1239 = if if d170 then d551 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> d143 ) ) ) $ ( false ) else if false then true else d613
        d1242 : ( ( Set -> Set ) ∋ ( ( λ x12440 -> if true then Bool else x12440 ) ) ) $ ( if false then Bool else Bool )
        d1242 = ( ( Bool -> Bool ) ∋ ( ( λ x12430 -> if d83 then d203 else x12430 ) ) ) $ ( if false then true else d244 )
        d1245 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12490 -> x12490 ) ) ) $ ( Bool )
        d1245 = if ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> x12460 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12470 -> true ) ) ) $ ( d562 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12480 -> true ) ) ) $ ( false )
        d1250 : if true then ( ( Set -> Set ) ∋ ( ( λ x12530 -> x12530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1250 = ( ( Bool -> Bool ) ∋ ( ( λ x12510 -> ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> if d450 then x12510 else d43 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d1254 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1254 = ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> if d778 then d879 else d121 ) ) ) $ ( false ) ) ) ) $ ( if d305 then true else true )
        d1257 : ( ( Set -> Set ) ∋ ( ( λ x12600 -> if true then x12600 else x12600 ) ) ) $ ( if true then Bool else Bool )
        d1257 = ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> ( ( Bool -> Bool ) ∋ ( ( λ x12590 -> if d1082 then d143 else d968 ) ) ) $ ( d380 ) ) ) ) $ ( if false then true else true )
        d1261 : if true then ( ( Set -> Set ) ∋ ( ( λ x12640 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1261 = if if d375 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> d634 ) ) ) $ ( d1108 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> d773 ) ) ) $ ( true )
        d1265 : ( ( Set -> Set ) ∋ ( ( λ x12680 -> if false then x12680 else x12680 ) ) ) $ ( if true then Bool else Bool )
        d1265 = if ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> x12660 ) ) ) $ ( d689 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> true ) ) ) $ ( true ) else if true then d187 else d1245
        d1269 : ( ( Set -> Set ) ∋ ( ( λ x12710 -> if true then x12710 else x12710 ) ) ) $ ( if true then Bool else Bool )
        d1269 = if if d139 then d143 else true then if d1101 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> false ) ) ) $ ( true )
        d1272 : ( ( Set -> Set ) ∋ ( ( λ x12760 -> if true then x12760 else x12760 ) ) ) $ ( if false then Bool else Bool )
        d1272 = if ( ( Bool -> Bool ) ∋ ( ( λ x12730 -> x12730 ) ) ) $ ( d626 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> x12740 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> false ) ) ) $ ( false )
        d1277 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12810 -> x12810 ) ) ) $ ( Bool )
        d1277 = if ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> x12780 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> d1224 ) ) ) $ ( d689 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> d463 ) ) ) $ ( true )
        d1282 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12850 -> x12850 ) ) ) $ ( Bool )
        d1282 = if ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> true ) ) ) $ ( d274 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12840 -> x12840 ) ) ) $ ( d910 ) else if true then true else d672
        d1286 : if true then ( ( Set -> Set ) ∋ ( ( λ x12880 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12890 -> Bool ) ) ) $ ( Bool )
        d1286 = if ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> x12870 ) ) ) $ ( false ) then if d296 then true else true else if true then false else d869
        d1290 : ( ( Set -> Set ) ∋ ( ( λ x12910 -> if false then x12910 else x12910 ) ) ) $ ( if false then Bool else Bool )
        d1290 = if if d143 then false else false then if d351 then d491 else d940 else if true then false else true
        d1292 : ( ( Set -> Set ) ∋ ( ( λ x12940 -> ( ( Set -> Set ) ∋ ( ( λ x12950 -> if false then Bool else x12940 ) ) ) $ ( x12940 ) ) ) ) $ ( if false then Bool else Bool )
        d1292 = if if false then d630 else d211 then if false then d536 else d565 else ( ( Bool -> Bool ) ∋ ( ( λ x12930 -> d217 ) ) ) $ ( false )
        d1296 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1296 = if if true then d929 else d433 then ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> true ) ) ) $ ( true ) else if d1059 then true else d62
        d1298 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13010 -> Bool ) ) ) $ ( Bool )
        d1298 = ( ( Bool -> Bool ) ∋ ( ( λ x12990 -> ( ( Bool -> Bool ) ∋ ( ( λ x13000 -> if d351 then d972 else x12990 ) ) ) $ ( false ) ) ) ) $ ( if d387 then d27 else true )
        d1302 : if true then ( ( Set -> Set ) ∋ ( ( λ x13050 -> x13050 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1302 = if if d191 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> false ) ) ) $ ( d1059 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> true ) ) ) $ ( d575 )
        d1306 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1306 = ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> if false then true else x13080 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d141 )
        d1309 : if false then ( ( Set -> Set ) ∋ ( ( λ x13120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13130 -> Bool ) ) ) $ ( Bool )
        d1309 = if if d343 then d296 else d891 then ( ( Bool -> Bool ) ∋ ( ( λ x13100 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> x13110 ) ) ) $ ( d1 )
        d1314 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1314 = ( ( Bool -> Bool ) ∋ ( ( λ x13150 -> if d513 then x13150 else true ) ) ) $ ( if false then d429 else true )
        d1316 : if true then ( ( Set -> Set ) ∋ ( ( λ x13180 -> x13180 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1316 = if ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> d274 ) ) ) $ ( true ) then if d404 then true else true else if d1188 then d593 else true
        d1319 : ( ( Set -> Set ) ∋ ( ( λ x13210 -> if false then Bool else x13210 ) ) ) $ ( if false then Bool else Bool )
        d1319 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x13200 -> true ) ) ) $ ( true ) else if false then false else true
        d1322 : if false then ( ( Set -> Set ) ∋ ( ( λ x13250 -> x13250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13260 -> Bool ) ) ) $ ( Bool )
        d1322 = ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> ( ( Bool -> Bool ) ∋ ( ( λ x13240 -> if x13230 then d943 else true ) ) ) $ ( true ) ) ) ) $ ( if true then d1250 else d1314 )
        d1327 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13300 -> Bool ) ) ) $ ( Bool )
        d1327 = ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> if true then d1290 else true ) ) ) $ ( x13280 ) ) ) ) $ ( if false then true else false )
        d1331 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13340 -> x13340 ) ) ) $ ( Bool )
        d1331 = if if d167 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> x13320 ) ) ) $ ( d855 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> d247 ) ) ) $ ( d55 )
        d1335 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1335 = if ( ( Bool -> Bool ) ∋ ( ( λ x13360 -> d518 ) ) ) $ ( d222 ) then if d149 then d47 else d269 else if d162 then d602 else false
        d1337 : ( ( Set -> Set ) ∋ ( ( λ x13400 -> ( ( Set -> Set ) ∋ ( ( λ x13410 -> if false then x13400 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1337 = if ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> x13380 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13390 -> true ) ) ) $ ( true ) else if false then false else d1245
        d1342 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13440 -> x13440 ) ) ) $ ( Bool )
        d1342 = if if false then false else d1306 then if true then d972 else false else ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> d199 ) ) ) $ ( d1269 )
        d1345 : ( ( Set -> Set ) ∋ ( ( λ x13480 -> ( ( Set -> Set ) ∋ ( ( λ x13490 -> if true then x13480 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1345 = if ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> d460 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> d404 ) ) ) $ ( false ) else if d274 then false else d93
        d1350 : if true then ( ( Set -> Set ) ∋ ( ( λ x13520 -> x13520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13530 -> x13530 ) ) ) $ ( Bool )
        d1350 = if ( ( Bool -> Bool ) ∋ ( ( λ x13510 -> d778 ) ) ) $ ( d1188 ) then if d665 then true else d1207 else if d207 then true else d953
        d1354 : if false then ( ( Set -> Set ) ∋ ( ( λ x13570 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1354 = ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> if false then x13560 else d244 ) ) ) $ ( d984 ) ) ) ) $ ( if true then true else d1290 )
        d1358 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13610 -> Bool ) ) ) $ ( Bool )
        d1358 = ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> ( ( Bool -> Bool ) ∋ ( ( λ x13600 -> if d1188 then x13590 else x13590 ) ) ) $ ( x13590 ) ) ) ) $ ( if d536 then true else false )
        d1362 : ( ( Set -> Set ) ∋ ( ( λ x13640 -> ( ( Set -> Set ) ∋ ( ( λ x13650 -> if false then x13650 else x13640 ) ) ) $ ( x13640 ) ) ) ) $ ( if true then Bool else Bool )
        d1362 = ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> if x13630 then false else x13630 ) ) ) $ ( if false then d314 else false )
        d1366 : if false then ( ( Set -> Set ) ∋ ( ( λ x13700 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1366 = if ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> d680 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13680 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13690 -> x13690 ) ) ) $ ( d1272 )
        d1371 : if false then ( ( Set -> Set ) ∋ ( ( λ x13730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13740 -> Bool ) ) ) $ ( Bool )
        d1371 = ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> if false then d108 else false ) ) ) $ ( if true then d972 else true )
        d1375 : ( ( Set -> Set ) ∋ ( ( λ x13770 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1375 = if ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> true ) ) ) $ ( d869 ) then if d149 then d446 else d12 else if true then d1182 else d1072
        d1378 : ( ( Set -> Set ) ∋ ( ( λ x13800 -> if false then x13800 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1378 = if if d93 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x13790 -> x13790 ) ) ) $ ( true ) else if d4 then false else true
        d1381 : ( ( Set -> Set ) ∋ ( ( λ x13840 -> if true then x13840 else x13840 ) ) ) $ ( if false then Bool else Bool )
        d1381 = ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> ( ( Bool -> Bool ) ∋ ( ( λ x13830 -> if d1156 then x13830 else d1316 ) ) ) $ ( d1041 ) ) ) ) $ ( if d825 then true else d1152 )
        d1385 : if false then ( ( Set -> Set ) ∋ ( ( λ x13860 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1385 = if if d466 then true else d1345 then if false then false else false else if d869 then false else d509
        d1387 : ( ( Set -> Set ) ∋ ( ( λ x13890 -> if true then Bool else x13890 ) ) ) $ ( if true then Bool else Bool )
        d1387 = ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> if d12 then d571 else d355 ) ) ) $ ( if true then d825 else d1120 )
        d1390 : if true then ( ( Set -> Set ) ∋ ( ( λ x13920 -> x13920 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13930 -> x13930 ) ) ) $ ( Bool )
        d1390 = ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> if true then true else d858 ) ) ) $ ( if true then false else false )
        d1394 : ( ( Set -> Set ) ∋ ( ( λ x13960 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1394 = ( ( Bool -> Bool ) ∋ ( ( λ x13950 -> if x13950 then x13950 else false ) ) ) $ ( if false then false else d778 )
        d1397 : ( ( Set -> Set ) ∋ ( ( λ x14000 -> ( ( Set -> Set ) ∋ ( ( λ x14010 -> if false then x14000 else Bool ) ) ) $ ( x14000 ) ) ) ) $ ( if true then Bool else Bool )
        d1397 = ( ( Bool -> Bool ) ∋ ( ( λ x13980 -> ( ( Bool -> Bool ) ∋ ( ( λ x13990 -> if x13980 then true else x13990 ) ) ) $ ( true ) ) ) ) $ ( if true then d321 else d359 )
        d1402 : ( ( Set -> Set ) ∋ ( ( λ x14040 -> ( ( Set -> Set ) ∋ ( ( λ x14050 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1402 = if if true then true else d128 then ( ( Bool -> Bool ) ∋ ( ( λ x14030 -> x14030 ) ) ) $ ( d1105 ) else if false then true else false
        d1406 : if true then ( ( Set -> Set ) ∋ ( ( λ x14070 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14080 -> x14080 ) ) ) $ ( Bool )
        d1406 = if if true then true else d801 then if d809 then true else false else if false then true else true
        d1409 : if true then ( ( Set -> Set ) ∋ ( ( λ x14120 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1409 = ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> ( ( Bool -> Bool ) ∋ ( ( λ x14110 -> if d1008 then false else true ) ) ) $ ( x14100 ) ) ) ) $ ( if false then d925 else true )
        d1413 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14160 -> x14160 ) ) ) $ ( Bool )
        d1413 = if ( ( Bool -> Bool ) ∋ ( ( λ x14140 -> false ) ) ) $ ( d1105 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> true ) ) ) $ ( false ) else if false then true else true
        d1417 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1417 = ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> if d867 then x14180 else false ) ) ) $ ( true ) ) ) ) $ ( if false then false else d1239 )
        d1420 : ( ( Set -> Set ) ∋ ( ( λ x14210 -> if true then x14210 else x14210 ) ) ) $ ( if true then Bool else Bool )
        d1420 = if if true then d883 else d1008 then if true then d397 else d768 else if d433 then false else false
        d1422 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14230 -> Bool ) ) ) $ ( Bool )
        d1422 = if if d305 then true else true then if d203 then d1033 else true else if true then d141 else false
        d1424 : if true then ( ( Set -> Set ) ∋ ( ( λ x14260 -> x14260 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1424 = if if true then false else d805 then if d1199 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> x14250 ) ) ) $ ( d813 )
        d1427 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1427 = ( ( Bool -> Bool ) ∋ ( ( λ x14280 -> ( ( Bool -> Bool ) ∋ ( ( λ x14290 -> if x14280 then x14290 else false ) ) ) $ ( d375 ) ) ) ) $ ( if false then true else d1350 )
        d1430 : ( ( Set -> Set ) ∋ ( ( λ x14330 -> ( ( Set -> Set ) ∋ ( ( λ x14340 -> if false then x14330 else x14330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1430 = ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> ( ( Bool -> Bool ) ∋ ( ( λ x14320 -> if d421 then x14320 else d685 ) ) ) $ ( true ) ) ) ) $ ( if false then d55 else false )
        d1435 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14370 -> x14370 ) ) ) $ ( Bool )
        d1435 = if if d730 then d1302 else d551 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> x14360 ) ) ) $ ( d1381 )
        d1438 : ( ( Set -> Set ) ∋ ( ( λ x14400 -> ( ( Set -> Set ) ∋ ( ( λ x14410 -> if true then Bool else x14410 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1438 = ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> if x14390 then true else true ) ) ) $ ( if false then d1232 else false )
        d1442 : ( ( Set -> Set ) ∋ ( ( λ x14450 -> if true then x14450 else x14450 ) ) ) $ ( if true then Bool else Bool )
        d1442 = ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> if x14430 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d680 then d913 else false )
        d1446 : ( ( Set -> Set ) ∋ ( ( λ x14480 -> ( ( Set -> Set ) ∋ ( ( λ x14490 -> if false then x14480 else Bool ) ) ) $ ( x14480 ) ) ) ) $ ( if true then Bool else Bool )
        d1446 = if if d43 then false else d872 then ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> false ) ) ) $ ( false ) else if false then d1250 else d191
        d1450 : if false then ( ( Set -> Set ) ∋ ( ( λ x14520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14530 -> x14530 ) ) ) $ ( Bool )
        d1450 = if if d593 then false else d1016 then if d1424 then d657 else true else ( ( Bool -> Bool ) ∋ ( ( λ x14510 -> d1029 ) ) ) $ ( d1112 )
        d1454 : ( ( Set -> Set ) ∋ ( ( λ x14560 -> ( ( Set -> Set ) ∋ ( ( λ x14570 -> if false then x14570 else x14570 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1454 = if ( ( Bool -> Bool ) ∋ ( ( λ x14550 -> x14550 ) ) ) $ ( true ) then if true then d1188 else d847 else if true then true else d891
        d1458 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14600 -> x14600 ) ) ) $ ( Bool )
        d1458 = ( ( Bool -> Bool ) ∋ ( ( λ x14590 -> if true then d1420 else x14590 ) ) ) $ ( if false then d305 else d506 )
        d1461 : ( ( Set -> Set ) ∋ ( ( λ x14630 -> if false then x14630 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1461 = ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> if x14620 then d474 else x14620 ) ) ) $ ( if d343 then d1002 else true )
        d1464 : ( ( Set -> Set ) ∋ ( ( λ x14660 -> ( ( Set -> Set ) ∋ ( ( λ x14670 -> if false then x14670 else x14660 ) ) ) $ ( x14660 ) ) ) ) $ ( if true then Bool else Bool )
        d1464 = ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> if true then x14650 else x14650 ) ) ) $ ( if d1072 then d917 else true )
        d1468 : ( ( Set -> Set ) ∋ ( ( λ x14690 -> if true then x14690 else x14690 ) ) ) $ ( if true then Bool else Bool )
        d1468 = if if d1366 then false else false then if true then true else false else if d934 then d855 else d117
        d1470 : if true then ( ( Set -> Set ) ∋ ( ( λ x14730 -> x14730 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1470 = if if d801 then true else d1309 then ( ( Bool -> Bool ) ∋ ( ( λ x14710 -> true ) ) ) $ ( d1250 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> true ) ) ) $ ( true )
        d1474 : if false then ( ( Set -> Set ) ∋ ( ( λ x14760 -> x14760 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1474 = if if true then d852 else d862 then ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> d1049 ) ) ) $ ( true ) else if true then d1296 else d754
        d1477 : ( ( Set -> Set ) ∋ ( ( λ x14790 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1477 = if if false then d899 else true then ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> d773 ) ) ) $ ( false ) else if d75 then true else false
        d1480 : ( ( Set -> Set ) ∋ ( ( λ x14840 -> if false then x14840 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1480 = if ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> d976 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> x14820 ) ) ) $ ( d196 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14830 -> d463 ) ) ) $ ( d869 )
        d1485 : ( ( Set -> Set ) ∋ ( ( λ x14870 -> ( ( Set -> Set ) ∋ ( ( λ x14880 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1485 = ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> if x14860 then x14860 else d536 ) ) ) $ ( if true then false else false )
        d1489 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1489 = if ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> true ) ) ) $ ( d953 ) then if true then false else d1222 else ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> true ) ) ) $ ( false )
        d1492 : ( ( Set -> Set ) ∋ ( ( λ x14940 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1492 = ( ( Bool -> Bool ) ∋ ( ( λ x14930 -> if false then true else d1371 ) ) ) $ ( if d558 then true else d244 )
        d1495 : ( ( Set -> Set ) ∋ ( ( λ x14970 -> if false then x14970 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1495 = ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> if d630 then false else x14960 ) ) ) $ ( if d637 then d296 else d1078 )
        d1498 : if true then ( ( Set -> Set ) ∋ ( ( λ x15000 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1498 = ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> if true then d321 else x14990 ) ) ) $ ( if true then d1269 else false )
        d1501 : ( ( Set -> Set ) ∋ ( ( λ x15040 -> ( ( Set -> Set ) ∋ ( ( λ x15050 -> if false then x15040 else x15050 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1501 = if ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> false ) ) ) $ ( false ) else if d1006 then d384 else true
        d1506 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15090 -> Bool ) ) ) $ ( Bool )
        d1506 = ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> if d88 then x15070 else true ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d1510 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1510 = if ( ( Bool -> Bool ) ∋ ( ( λ x15110 -> d1492 ) ) ) $ ( d1041 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15120 -> d1236 ) ) ) $ ( d47 ) else if true then true else d1261
        d1513 : ( ( Set -> Set ) ∋ ( ( λ x15160 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1513 = ( ( Bool -> Bool ) ∋ ( ( λ x15140 -> ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> if d558 then true else d763 ) ) ) $ ( true ) ) ) ) $ ( if d1306 then true else d1089 )
        d1517 : ( ( Set -> Set ) ∋ ( ( λ x15180 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1517 = if if false then d640 else false then if d296 then d108 else d293 else if d23 then d1366 else d768
        d1519 : if false then ( ( Set -> Set ) ∋ ( ( λ x15210 -> x15210 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1519 = if ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> x15200 ) ) ) $ ( true ) then if d1174 then true else d980 else if false then d703 else d672
        d1522 : if false then ( ( Set -> Set ) ∋ ( ( λ x15240 -> x15240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15250 -> Bool ) ) ) $ ( Bool )
        d1522 = ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> if false then x15230 else d252 ) ) ) $ ( if true then true else true )
        d1526 : ( ( Set -> Set ) ∋ ( ( λ x15270 -> ( ( Set -> Set ) ∋ ( ( λ x15280 -> if true then Bool else Bool ) ) ) $ ( x15270 ) ) ) ) $ ( if false then Bool else Bool )
        d1526 = if if d654 then d727 else false then if d637 then d1366 else false else if d1286 then d831 else false
        d1529 : ( ( Set -> Set ) ∋ ( ( λ x15310 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1529 = ( ( Bool -> Bool ) ∋ ( ( λ x15300 -> if false then x15300 else x15300 ) ) ) $ ( if d1124 then d991 else false )
        d1532 : ( ( Set -> Set ) ∋ ( ( λ x15340 -> ( ( Set -> Set ) ∋ ( ( λ x15350 -> if false then Bool else x15340 ) ) ) $ ( x15340 ) ) ) ) $ ( if false then Bool else Bool )
        d1532 = if ( ( Bool -> Bool ) ∋ ( ( λ x15330 -> d1387 ) ) ) $ ( true ) then if d1166 then true else d727 else if d55 then false else false
        d1536 : if true then ( ( Set -> Set ) ∋ ( ( λ x15380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15390 -> Bool ) ) ) $ ( Bool )
        d1536 = ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> if false then x15370 else d1145 ) ) ) $ ( if d1532 then d154 else d727 )
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15420 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1540 = if if d1049 then true else d1112 then ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> true ) ) ) $ ( false ) else if false then true else d795
        d1543 : ( ( Set -> Set ) ∋ ( ( λ x15450 -> ( ( Set -> Set ) ∋ ( ( λ x15460 -> if true then Bool else Bool ) ) ) $ ( x15450 ) ) ) ) $ ( if false then Bool else Bool )
        d1543 = if ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> false ) ) ) $ ( false ) then if true then false else d1501 else if d300 then true else d786
        d1547 : if true then ( ( Set -> Set ) ∋ ( ( λ x15490 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15500 -> Bool ) ) ) $ ( Bool )
        d1547 = if ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> d75 ) ) ) $ ( d58 ) then if d477 then true else true else if false then false else d305
        d1551 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15540 -> x15540 ) ) ) $ ( Bool )
        d1551 = ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> ( ( Bool -> Bool ) ∋ ( ( λ x15530 -> if true then d1021 else d131 ) ) ) $ ( false ) ) ) ) $ ( if true then d1450 else d786 )
        d1555 : if false then ( ( Set -> Set ) ∋ ( ( λ x15580 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1555 = if if d1464 then d836 else d366 then ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15570 -> x15570 ) ) ) $ ( false )
        d1559 : ( ( Set -> Set ) ∋ ( ( λ x15620 -> ( ( Set -> Set ) ∋ ( ( λ x15630 -> if false then Bool else x15630 ) ) ) $ ( x15620 ) ) ) ) $ ( if false then Bool else Bool )
        d1559 = if ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> d958 ) ) ) $ ( d1316 ) then if d809 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x15610 -> d1188 ) ) ) $ ( d506 )
        d1564 : ( ( Set -> Set ) ∋ ( ( λ x15660 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1564 = ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> if x15650 then x15650 else x15650 ) ) ) $ ( if d1337 then false else true )
        d1567 : if true then ( ( Set -> Set ) ∋ ( ( λ x15710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15720 -> x15720 ) ) ) $ ( Bool )
        d1567 = if ( ( Bool -> Bool ) ∋ ( ( λ x15680 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> d247 ) ) ) $ ( true )
        d1573 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15760 -> Bool ) ) ) $ ( Bool )
        d1573 = if ( ( Bool -> Bool ) ∋ ( ( λ x15740 -> d597 ) ) ) $ ( d474 ) then if d261 then d565 else d187 else ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> x15750 ) ) ) $ ( d1219 )
        d1577 : ( ( Set -> Set ) ∋ ( ( λ x15800 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1577 = ( ( Bool -> Bool ) ∋ ( ( λ x15780 -> ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> if x15780 then false else d134 ) ) ) $ ( x15780 ) ) ) ) $ ( if d1526 then d1188 else d613 )
        d1581 : if true then ( ( Set -> Set ) ∋ ( ( λ x15840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15850 -> x15850 ) ) ) $ ( Bool )
        d1581 = ( ( Bool -> Bool ) ∋ ( ( λ x15820 -> ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> if true then x15820 else x15830 ) ) ) $ ( x15820 ) ) ) ) $ ( if false then false else true )
        d1586 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15870 -> x15870 ) ) ) $ ( Bool )
        d1586 = if if d1 then false else true then if d401 then true else true else if false then d318 else false
        d1588 : ( ( Set -> Set ) ∋ ( ( λ x15900 -> ( ( Set -> Set ) ∋ ( ( λ x15910 -> if false then x15900 else x15910 ) ) ) $ ( x15900 ) ) ) ) $ ( if false then Bool else Bool )
        d1588 = ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> if d380 then x15890 else d1229 ) ) ) $ ( if true then d1555 else d1290 )
        d1592 : ( ( Set -> Set ) ∋ ( ( λ x15940 -> ( ( Set -> Set ) ∋ ( ( λ x15950 -> if true then Bool else Bool ) ) ) $ ( x15940 ) ) ) ) $ ( if true then Bool else Bool )
        d1592 = ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> if true then x15930 else x15930 ) ) ) $ ( if d175 then true else false )
        d1596 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1596 = if ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> d417 ) ) ) $ ( d1581 ) then if d571 then d88 else d112 else if d1082 then false else d1390
        d1598 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16000 -> Bool ) ) ) $ ( Bool )
        d1598 = ( ( Bool -> Bool ) ∋ ( ( λ x15990 -> if x15990 then false else x15990 ) ) ) $ ( if d450 then d869 else d1286 )
        d1601 : ( ( Set -> Set ) ∋ ( ( λ x16040 -> if false then x16040 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1601 = ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> ( ( Bool -> Bool ) ∋ ( ( λ x16030 -> if true then x16030 else d571 ) ) ) $ ( x16020 ) ) ) ) $ ( if true then true else false )
        d1605 : ( ( Set -> Set ) ∋ ( ( λ x16080 -> ( ( Set -> Set ) ∋ ( ( λ x16090 -> if false then x16090 else x16090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1605 = if if true then true else d907 then ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> d134 ) ) ) $ ( d404 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16070 -> x16070 ) ) ) $ ( false )
        d1610 : if false then ( ( Set -> Set ) ∋ ( ( λ x16120 -> x16120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16130 -> x16130 ) ) ) $ ( Bool )
        d1610 = ( ( Bool -> Bool ) ∋ ( ( λ x16110 -> if d1250 then d1555 else true ) ) ) $ ( if d1290 then false else d154 )
        d1614 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1614 = ( ( Bool -> Bool ) ∋ ( ( λ x16150 -> ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> if d1002 then true else true ) ) ) $ ( d495 ) ) ) ) $ ( if true then d1501 else d375 )
        d1617 : if true then ( ( Set -> Set ) ∋ ( ( λ x16190 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1617 = ( ( Bool -> Bool ) ∋ ( ( λ x16180 -> if d1381 then x16180 else false ) ) ) $ ( if true then false else false )
        d1620 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16220 -> Bool ) ) ) $ ( Bool )
        d1620 = if if d134 then d1282 else d1335 then if d1224 then d786 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> x16210 ) ) ) $ ( d1513 )
        d1623 : ( ( Set -> Set ) ∋ ( ( λ x16240 -> if true then Bool else x16240 ) ) ) $ ( if true then Bool else Bool )
        d1623 = if if d1519 then true else d773 then if d43 then true else false else if d1598 then d791 else true
        d1625 : ( ( Set -> Set ) ∋ ( ( λ x16270 -> ( ( Set -> Set ) ∋ ( ( λ x16280 -> if false then Bool else Bool ) ) ) $ ( x16270 ) ) ) ) $ ( if true then Bool else Bool )
        d1625 = ( ( Bool -> Bool ) ∋ ( ( λ x16260 -> if x16260 then d88 else false ) ) ) $ ( if false then d105 else d1485 )
        d1629 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16310 -> x16310 ) ) ) $ ( Bool )
        d1629 = if ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> d134 ) ) ) $ ( d1526 ) then if false then true else d1059 else if d773 then true else d244
        d1632 : if false then ( ( Set -> Set ) ∋ ( ( λ x16350 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1632 = if ( ( Bool -> Bool ) ∋ ( ( λ x16330 -> d917 ) ) ) $ ( d907 ) then if d740 then false else d558 else ( ( Bool -> Bool ) ∋ ( ( λ x16340 -> false ) ) ) $ ( true )
        d1636 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16390 -> x16390 ) ) ) $ ( Bool )
        d1636 = ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> if true then x16380 else x16370 ) ) ) $ ( true ) ) ) ) $ ( if d1342 then d1427 else d1224 )
        d1640 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1640 = ( ( Bool -> Bool ) ∋ ( ( λ x16410 -> if x16410 then true else x16410 ) ) ) $ ( if false then false else d637 )
        d1642 : if true then ( ( Set -> Set ) ∋ ( ( λ x16440 -> x16440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16450 -> x16450 ) ) ) $ ( Bool )
        d1642 = ( ( Bool -> Bool ) ∋ ( ( λ x16430 -> if x16430 then d1037 else false ) ) ) $ ( if d1229 then d1413 else d964 )
        d1646 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1646 = if ( ( Bool -> Bool ) ∋ ( ( λ x16470 -> d321 ) ) ) $ ( d191 ) then if true then d1306 else false else if d621 then d1182 else d1166
        d1648 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16510 -> Bool ) ) ) $ ( Bool )
        d1648 = ( ( Bool -> Bool ) ∋ ( ( λ x16490 -> ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> if true then d699 else x16490 ) ) ) $ ( d972 ) ) ) ) $ ( if d1072 then false else true )
        d1652 : ( ( Set -> Set ) ∋ ( ( λ x16550 -> ( ( Set -> Set ) ∋ ( ( λ x16560 -> if false then Bool else x16560 ) ) ) $ ( x16550 ) ) ) ) $ ( if false then Bool else Bool )
        d1652 = ( ( Bool -> Bool ) ∋ ( ( λ x16530 -> ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> if x16530 then x16540 else true ) ) ) $ ( x16530 ) ) ) ) $ ( if d1203 then true else d547 )
        d1657 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1657 = ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> if d1629 then x16580 else false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d1037 )
        d1660 : if true then ( ( Set -> Set ) ∋ ( ( λ x16620 -> x16620 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1660 = if if d621 then true else true then if true then true else d203 else ( ( Bool -> Bool ) ∋ ( ( λ x16610 -> d1078 ) ) ) $ ( d855 )