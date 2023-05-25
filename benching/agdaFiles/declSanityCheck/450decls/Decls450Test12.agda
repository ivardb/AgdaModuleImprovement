module Decls450Test12  where
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
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( false ) else if true then false else true
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then x80 else x80 ) ) ) $ ( if true then Bool else Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( d1 ) then if d1 then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d1 ) ) ) $ ( d1 )
        d9 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool )
        d9 = if ( ( Bool -> Bool ) ∋ ( ( λ x100 -> false ) ) ) $ ( true ) then if true then d1 else true else if true then false else true
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if false then d9 else x140 ) ) ) $ ( x130 ) ) ) ) $ ( if false then false else true )
        d15 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if d1 then d12 else x170 ) ) ) $ ( true ) ) ) ) $ ( if d5 then d9 else d1 )
        d19 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if x200 then d9 else x200 ) ) ) $ ( if d1 then false else false )
        d22 : if false then ( ( Set -> Set ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x260 -> Bool ) ) ) $ ( Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if x240 then true else false ) ) ) $ ( d5 ) ) ) ) $ ( if true then false else d12 )
        d27 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if false then false else d19 ) ) ) $ ( if d15 then d19 else false )
        d30 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if true then true else x320 ) ) ) $ ( d15 ) ) ) ) $ ( if false then false else d15 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> if true then x380 else x370 ) ) ) $ ( x370 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if d12 then false else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x350 -> x350 ) ) ) $ ( d30 ) else ( ( Bool -> Bool ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( d27 )
        d39 : if true then ( ( Set -> Set ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( Bool )
        d39 = if ( ( Bool -> Bool ) ∋ ( ( λ x400 -> x400 ) ) ) $ ( true ) then if true then d22 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( true )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> if true then Bool else x460 ) ) ) $ ( x460 ) ) ) ) $ ( if false then Bool else Bool )
        d44 = if if d19 then true else false then if true then d5 else false else ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( true )
        d48 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x510 -> Bool ) ) ) $ ( Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if true then false else true ) ) ) $ ( true ) ) ) ) $ ( if d34 then false else d30 )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then Bool else Bool ) ) ) $ ( x560 ) ) ) ) $ ( if false then Bool else Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> false ) ) ) $ ( d22 ) then ( ( Bool -> Bool ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( d9 ) else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( d30 )
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if d9 then x590 else d5 ) ) ) $ ( if true then true else d5 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then Bool else x620 ) ) ) $ ( if false then Bool else Bool )
        d60 = if if false then d22 else d39 then ( ( Bool -> Bool ) ∋ ( ( λ x610 -> false ) ) ) $ ( d15 ) else if d19 then d30 else false
        d63 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if true then false else false ) ) ) $ ( x640 ) ) ) ) $ ( if false then true else d1 )
        d67 : if true then ( ( Set -> Set ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if d63 then false else true ) ) ) $ ( if d27 then d48 else false )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then x740 else Bool ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if true then x730 else x720 ) ) ) $ ( d63 ) ) ) ) $ ( if true then d12 else false )
        d75 : if true then if true then Bool else Bool else if false then Bool else Bool
        d75 = if ( ( Bool -> Bool ) ∋ ( ( λ x760 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x770 -> true ) ) ) $ ( false ) else if false then true else false
        d78 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x810 -> Bool ) ) ) $ ( Bool )
        d78 = if ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( d27 ) then ( ( Bool -> Bool ) ∋ ( ( λ x800 -> d75 ) ) ) $ ( d5 ) else if d71 then false else false
        d82 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x830 -> d12 ) ) ) $ ( d75 ) else ( ( Bool -> Bool ) ∋ ( ( λ x840 -> false ) ) ) $ ( false )
        d86 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if d5 then x870 else false ) ) ) $ ( if false then d9 else d9 )
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = if if false then d71 else d9 then ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d19 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( d60 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then Bool else x950 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> false ) ) ) $ ( d1 ) then if d39 then false else false else if false then true else d34
        d96 : if false then if true then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if d60 then x970 else true ) ) ) $ ( if d5 then d89 else false )
        d98 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x990 -> Bool ) ) ) $ ( Bool )
        d98 = if if d92 then false else d19 then if d9 then true else false else if true then false else false
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> if false then x1020 else x1020 ) ) ) $ ( x1010 ) ) ) ) $ ( if false then Bool else Bool )
        d100 = if if false then true else true then if true then d52 else true else if d19 then d9 else d1
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> if false then x1040 else Bool ) ) ) $ ( x1040 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if true then d19 else d71 then if d5 then true else d19 else if true then false else false
        d106 : if false then ( ( Set -> Set ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if false then d30 else x1070 ) ) ) $ ( if true then false else false )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> if false then x1140 else x1130 ) ) ) $ ( x1130 ) ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if false then x1110 else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d115 : if false then ( ( Set -> Set ) ∋ ( ( λ x1180 -> x1180 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if true then true else false ) ) ) $ ( true ) ) ) ) $ ( if false then d27 else false )
        d119 : if true then ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if d110 then true else false ) ) ) $ ( if false then false else d48 )
        d122 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1240 -> Bool ) ) ) $ ( Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1230 then false else d89 ) ) ) $ ( if true then false else true )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1270 else x1270 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> if x1260 then false else d122 ) ) ) $ ( if false then false else false )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> if true then x1320 else Bool ) ) ) $ ( if true then Bool else Bool )
        d129 = if ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> x1300 ) ) ) $ ( d58 ) then if d92 then d75 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> true ) ) ) $ ( false )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> if true then x1350 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if true then true else x1340 ) ) ) $ ( if d103 then d106 else d71 )
        d137 : if true then ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if d82 then true else x1390 ) ) ) $ ( false ) ) ) ) $ ( if true then d122 else false )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then x1430 else x1440 ) ) ) $ ( x1430 ) ) ) ) $ ( if false then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if false then x1420 else true ) ) ) $ ( if true then d96 else d86 )
        d145 : if false then ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d145 = if if d9 then d15 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d71 ) ) ) $ ( true )
        d149 : if true then ( ( Set -> Set ) ∋ ( ( λ x1520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1530 -> x1530 ) ) ) $ ( Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( false ) then if d141 then false else d98 else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> false ) ) ) $ ( true )
        d154 : if true then ( ( Set -> Set ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d22 then x1550 else false ) ) ) $ ( if true then d100 else d19 )
        d158 : if true then if true then Bool else Bool else if true then Bool else Bool
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if d98 then true else d122 ) ) ) $ ( if false then true else false )
        d160 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1620 -> Bool ) ) ) $ ( Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if d9 then d154 else false ) ) ) $ ( if true then true else d58 )
        d163 : if true then if true then Bool else Bool else if true then Bool else Bool
        d163 = if if d12 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> d78 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> true ) ) ) $ ( true )
        d166 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( Bool )
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if x1670 then d141 else d12 ) ) ) $ ( if true then d63 else false )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> ( ( Set -> Set ) ∋ ( ( λ x1730 -> if false then x1720 else Bool ) ) ) $ ( x1720 ) ) ) ) $ ( if false then Bool else Bool )
        d169 = if ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( d141 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> false ) ) ) $ ( true ) else if d15 then d160 else d12
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1770 -> ( ( Set -> Set ) ∋ ( ( λ x1780 -> if false then x1770 else x1780 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if d67 then d63 else d119 ) ) ) $ ( d30 ) ) ) ) $ ( if d12 then true else d19 )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then x1810 else Bool ) ) ) $ ( x1810 ) ) ) ) $ ( if false then Bool else Bool )
        d179 = if ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> d22 ) ) ) $ ( false ) then if true then true else true else if true then false else d119
        d183 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1860 -> Bool ) ) ) $ ( Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if x1850 then false else x1840 ) ) ) $ ( d44 ) ) ) ) $ ( if d174 then false else d60 )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if x1880 then x1890 else d19 ) ) ) $ ( d179 ) ) ) ) $ ( if d1 then false else false )
        d192 : if true then ( ( Set -> Set ) ∋ ( ( λ x1940 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( Bool )
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> if true then x1930 else d119 ) ) ) $ ( if d154 then false else false )
        d196 : if true then ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> if d63 then d100 else d122 ) ) ) $ ( if d19 then true else d187 )
        d199 : if true then ( ( Set -> Set ) ∋ ( ( λ x2010 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2020 -> x2020 ) ) ) $ ( Bool )
        d199 = if if true then d5 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> d192 ) ) ) $ ( true ) else if false then false else d110
        d203 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> if false then x2060 else Bool ) ) ) $ ( if true then Bool else Bool )
        d203 = if ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> d48 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> d154 ) ) ) $ ( d192 ) else if false then d103 else d169
        d207 : if false then ( ( Set -> Set ) ∋ ( ( λ x2090 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> if x2080 then d34 else x2080 ) ) ) $ ( if d39 then d169 else false )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> if true then Bool else x2130 ) ) ) $ ( if true then Bool else Bool )
        d210 = if if true then d169 else false then ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> d141 ) ) ) $ ( d179 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> false ) ) ) $ ( true )
        d214 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( Bool )
        d214 = if if true then d48 else true then if d44 then d63 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> x2150 ) ) ) $ ( d192 )
        d217 : if true then ( ( Set -> Set ) ∋ ( ( λ x2200 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d217 = if ( ( Bool -> Bool ) ∋ ( ( λ x2180 -> true ) ) ) $ ( true ) then if d52 then d5 else d133 else ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> true ) ) ) $ ( true )
        d221 : ( ( Set -> Set ) ∋ ( ( λ x2220 -> if false then x2220 else x2220 ) ) ) $ ( if true then Bool else Bool )
        d221 = if if false then d169 else true then if d154 then d187 else d115 else if d86 then d27 else d67
        d223 : if true then ( ( Set -> Set ) ∋ ( ( λ x2250 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2260 -> Bool ) ) ) $ ( Bool )
        d223 = if if false then d78 else d115 then if d115 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> d154 ) ) ) $ ( d187 )
        d227 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2290 -> x2290 ) ) ) $ ( Bool )
        d227 = if if false then d19 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> d67 ) ) ) $ ( d78 ) else if true then false else d115
        d230 : if false then if true then Bool else Bool else if false then Bool else Bool
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> if x2310 then d103 else x2310 ) ) ) $ ( if d98 then d15 else false )
        d232 : if false then if true then Bool else Bool else if true then Bool else Bool
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> if x2330 then true else d96 ) ) ) $ ( if d67 then false else d1 )
        d234 : if false then if false then Bool else Bool else if false then Bool else Bool
        d234 = if ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> x2350 ) ) ) $ ( true ) then if true then d22 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> d122 ) ) ) $ ( d96 )
        d237 : ( ( Set -> Set ) ∋ ( ( λ x2390 -> ( ( Set -> Set ) ∋ ( ( λ x2400 -> if false then x2390 else Bool ) ) ) $ ( x2390 ) ) ) ) $ ( if false then Bool else Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> if x2380 then false else d169 ) ) ) $ ( if true then d82 else true )
        d241 : if false then ( ( Set -> Set ) ∋ ( ( λ x2430 -> x2430 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> if true then true else d86 ) ) ) $ ( if d179 then false else true )
        d244 : if false then ( ( Set -> Set ) ∋ ( ( λ x2460 -> x2460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2470 -> Bool ) ) ) $ ( Bool )
        d244 = ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> if x2450 then x2450 else d52 ) ) ) $ ( if d125 then false else d86 )
        d248 : if false then ( ( Set -> Set ) ∋ ( ( λ x2510 -> x2510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( Bool )
        d248 = ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if d86 then d82 else d179 ) ) ) $ ( d154 ) ) ) ) $ ( if false then true else d217 )
        d253 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2560 -> Bool ) ) ) $ ( Bool )
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> if d106 then d221 else x2540 ) ) ) $ ( false ) ) ) ) $ ( if d149 then d110 else false )
        d257 : ( ( Set -> Set ) ∋ ( ( λ x2590 -> ( ( Set -> Set ) ∋ ( ( λ x2600 -> if true then Bool else Bool ) ) ) $ ( x2590 ) ) ) ) $ ( if false then Bool else Bool )
        d257 = ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> if d125 then false else x2580 ) ) ) $ ( if d232 then false else true )
        d261 : ( ( Set -> Set ) ∋ ( ( λ x2640 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d261 = ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> if x2620 then true else x2620 ) ) ) $ ( d207 ) ) ) ) $ ( if d137 then false else d217 )
        d265 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> ( ( Set -> Set ) ∋ ( ( λ x2680 -> if true then x2680 else x2670 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d265 = if if true then false else d82 then ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> d223 ) ) ) $ ( d166 ) else if d192 then d129 else false
        d269 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> if false then Bool else x2730 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if false then x2710 else d166 ) ) ) $ ( true ) ) ) ) $ ( if true then d1 else false )
        d274 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2770 -> x2770 ) ) ) $ ( Bool )
        d274 = if if d237 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> d63 ) ) ) $ ( false )
        d278 : if false then if true then Bool else Bool else if true then Bool else Bool
        d278 = if ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> d207 ) ) ) $ ( d227 ) then if false then d52 else true else if d110 then false else d154
        d280 : ( ( Set -> Set ) ∋ ( ( λ x2830 -> if true then Bool else x2830 ) ) ) $ ( if false then Bool else Bool )
        d280 = if ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> d192 ) ) ) $ ( d234 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( false ) else if false then false else d119
        d284 : if true then ( ( Set -> Set ) ∋ ( ( λ x2870 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if d244 then d174 else false ) ) ) $ ( x2850 ) ) ) ) $ ( if false then d110 else false )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2900 -> if true then x2900 else x2900 ) ) ) $ ( if true then Bool else Bool )
        d288 = ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> if d58 then x2890 else d58 ) ) ) $ ( if false then true else true )
        d291 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> if true then x2930 else x2930 ) ) ) $ ( if false then Bool else Bool )
        d291 = ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> if d96 then x2920 else d12 ) ) ) $ ( if false then false else d96 )
        d294 : if false then ( ( Set -> Set ) ∋ ( ( λ x2970 -> x2970 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2980 -> x2980 ) ) ) $ ( Bool )
        d294 = ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> if x2950 then d5 else x2950 ) ) ) $ ( x2950 ) ) ) ) $ ( if d27 then false else false )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> ( ( Set -> Set ) ∋ ( ( λ x3020 -> if true then x3020 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d299 = if if d98 then d241 else d149 then if d265 then d96 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> true ) ) ) $ ( d39 )
        d303 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> if false then true else false ) ) ) $ ( x3040 ) ) ) ) $ ( if false then false else false )
        d307 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> if false then x3090 else x3090 ) ) ) $ ( if true then Bool else Bool )
        d307 = ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> if x3080 then true else true ) ) ) $ ( if d39 then true else d106 )
        d310 : if false then if false then Bool else Bool else if true then Bool else Bool
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> if true then true else x3110 ) ) ) $ ( if true then d265 else false )
        d312 : ( ( Set -> Set ) ∋ ( ( λ x3140 -> ( ( Set -> Set ) ∋ ( ( λ x3150 -> if false then x3140 else x3140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d312 = ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> if d96 then d278 else d307 ) ) ) $ ( if d92 then d9 else d19 )
        d316 : ( ( Set -> Set ) ∋ ( ( λ x3190 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d316 = ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> if false then d27 else d145 ) ) ) $ ( true ) ) ) ) $ ( if d52 then true else false )
        d320 : if false then if true then Bool else Bool else if false then Bool else Bool
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> if true then false else x3210 ) ) ) $ ( if false then d100 else true )
        d322 : ( ( Set -> Set ) ∋ ( ( λ x3250 -> if false then x3250 else Bool ) ) ) $ ( if false then Bool else Bool )
        d322 = if ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> d96 ) ) ) $ ( true ) then if d310 then d237 else false else ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> x3240 ) ) ) $ ( false )
        d326 : if true then ( ( Set -> Set ) ∋ ( ( λ x3300 -> x3300 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d326 = if ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> x3270 ) ) ) $ ( d19 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> d312 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> d230 ) ) ) $ ( true )
        d331 : if false then ( ( Set -> Set ) ∋ ( ( λ x3340 -> x3340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> if x3330 then x3320 else x3320 ) ) ) $ ( false ) ) ) ) $ ( if d210 then d149 else d92 )
        d335 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> if false then x3380 else Bool ) ) ) $ ( if true then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if d163 then false else x3370 ) ) ) $ ( d183 ) ) ) ) $ ( if d9 then false else d27 )
        d339 : if false then ( ( Set -> Set ) ∋ ( ( λ x3410 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d339 = if if d60 then false else true then if true then d19 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> false ) ) ) $ ( d199 )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> if false then Bool else x3440 ) ) ) $ ( if true then Bool else Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if d257 then d154 else true ) ) ) $ ( if false then d187 else false )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3480 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> if x3460 then d44 else d322 ) ) ) $ ( true ) ) ) ) $ ( if d48 then d335 else d248 )
        d349 : if true then ( ( Set -> Set ) ∋ ( ( λ x3520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3530 -> x3530 ) ) ) $ ( Bool )
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> if x3500 then d342 else d160 ) ) ) $ ( d331 ) ) ) ) $ ( if false then d89 else true )
        d354 : ( ( Set -> Set ) ∋ ( ( λ x3550 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d354 = if if d284 then d199 else d257 then if d214 then false else d92 else if true then d67 else true
        d356 : if false then if false then Bool else Bool else if false then Bool else Bool
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> if x3570 then x3570 else false ) ) ) $ ( if true then d187 else true )
        d358 : ( ( Set -> Set ) ∋ ( ( λ x3610 -> if false then x3610 else x3610 ) ) ) $ ( if true then Bool else Bool )
        d358 = if ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> d9 ) ) ) $ ( d179 ) then if false then d137 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> true ) ) ) $ ( false )
        d362 : ( ( Set -> Set ) ∋ ( ( λ x3650 -> if false then x3650 else Bool ) ) ) $ ( if false then Bool else Bool )
        d362 = ( ( Bool -> Bool ) ∋ ( ( λ x3630 -> ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> if x3640 then d294 else x3630 ) ) ) $ ( d48 ) ) ) ) $ ( if d227 then d82 else d210 )
        d366 : ( ( Set -> Set ) ∋ ( ( λ x3680 -> ( ( Set -> Set ) ∋ ( ( λ x3690 -> if false then Bool else x3680 ) ) ) $ ( x3680 ) ) ) ) $ ( if false then Bool else Bool )
        d366 = ( ( Bool -> Bool ) ∋ ( ( λ x3670 -> if x3670 then d48 else d89 ) ) ) $ ( if false then true else true )
        d370 : ( ( Set -> Set ) ∋ ( ( λ x3730 -> if false then x3730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d370 = ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> if false then false else d160 ) ) ) $ ( x3710 ) ) ) ) $ ( if d82 then false else true )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> if true then x3780 else Bool ) ) ) $ ( if true then Bool else Bool )
        d374 = if ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> x3750 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> x3760 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> d203 ) ) ) $ ( d115 )
        d379 : ( ( Set -> Set ) ∋ ( ( λ x3810 -> ( ( Set -> Set ) ∋ ( ( λ x3820 -> if false then x3820 else x3810 ) ) ) $ ( x3810 ) ) ) ) $ ( if true then Bool else Bool )
        d379 = ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> if d339 then false else x3800 ) ) ) $ ( if d227 then d98 else true )
        d383 : if false then ( ( Set -> Set ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d383 = ( ( Bool -> Bool ) ∋ ( ( λ x3840 -> if x3840 then x3840 else false ) ) ) $ ( if d174 then true else true )
        d386 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3880 -> x3880 ) ) ) $ ( Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if x3870 then false else false ) ) ) $ ( if d284 then true else d312 )
        d389 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> if true then x3920 else Bool ) ) ) $ ( if true then Bool else Bool )
        d389 = if ( ( Bool -> Bool ) ∋ ( ( λ x3900 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> x3910 ) ) ) $ ( d366 ) else if false then d96 else d63
        d393 : if false then if false then Bool else Bool else if false then Bool else Bool
        d393 = ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> if x3940 then false else x3950 ) ) ) $ ( d291 ) ) ) ) $ ( if d145 then true else d269 )
        d396 : ( ( Set -> Set ) ∋ ( ( λ x3980 -> ( ( Set -> Set ) ∋ ( ( λ x3990 -> if true then x3980 else Bool ) ) ) $ ( x3980 ) ) ) ) $ ( if true then Bool else Bool )
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if d82 then d326 else d326 ) ) ) $ ( if false then d58 else true )
        d400 : ( ( Set -> Set ) ∋ ( ( λ x4020 -> ( ( Set -> Set ) ∋ ( ( λ x4030 -> if false then x4020 else Bool ) ) ) $ ( x4020 ) ) ) ) $ ( if true then Bool else Bool )
        d400 = if if d129 then true else d227 then ( ( Bool -> Bool ) ∋ ( ( λ x4010 -> d386 ) ) ) $ ( true ) else if d110 then false else false
        d404 : ( ( Set -> Set ) ∋ ( ( λ x4070 -> ( ( Set -> Set ) ∋ ( ( λ x4080 -> if false then x4080 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d404 = ( ( Bool -> Bool ) ∋ ( ( λ x4050 -> ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> if d71 then d221 else false ) ) ) $ ( x4050 ) ) ) ) $ ( if false then d166 else d322 )
        d409 : if true then if true then Bool else Bool else if true then Bool else Bool
        d409 = ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> if x4100 then d303 else d92 ) ) ) $ ( if d358 then false else true )
        d411 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d411 = ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> if false then false else x4130 ) ) ) $ ( true ) ) ) ) $ ( if d253 then true else d265 )
        d415 : if true then if true then Bool else Bool else if false then Bool else Bool
        d415 = if ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> false ) ) ) $ ( d278 ) else if d349 then d75 else false
        d418 : ( ( Set -> Set ) ∋ ( ( λ x4210 -> if true then x4210 else x4210 ) ) ) $ ( if true then Bool else Bool )
        d418 = if ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> d27 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( d160 ) else if d335 then d316 else d362
        d422 : ( ( Set -> Set ) ∋ ( ( λ x4250 -> if false then Bool else x4250 ) ) ) $ ( if false then Bool else Bool )
        d422 = ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> if x4230 then x4230 else d362 ) ) ) $ ( d396 ) ) ) ) $ ( if d358 then d174 else d393 )
        d426 : if true then if false then Bool else Bool else if false then Bool else Bool
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> if false then true else true ) ) ) $ ( if true then true else false )
        d428 : if false then ( ( Set -> Set ) ∋ ( ( λ x4310 -> x4310 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d428 = if ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> true ) ) ) $ ( true ) then if d400 then false else d145 else ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> d389 ) ) ) $ ( false )
        d432 : ( ( Set -> Set ) ∋ ( ( λ x4350 -> ( ( Set -> Set ) ∋ ( ( λ x4360 -> if true then Bool else x4360 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> ( ( Bool -> Bool ) ∋ ( ( λ x4340 -> if false then x4330 else x4340 ) ) ) $ ( d234 ) ) ) ) $ ( if true then d393 else true )
        d437 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if true then x4380 else Bool ) ) ) $ ( if true then Bool else Bool )
        d437 = if if d92 then d322 else false then if d316 then false else true else if d19 then d299 else true
        d439 : ( ( Set -> Set ) ∋ ( ( λ x4420 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> if d362 then d335 else false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d393 )
        d443 : ( ( Set -> Set ) ∋ ( ( λ x4450 -> if true then x4450 else x4450 ) ) ) $ ( if false then Bool else Bool )
        d443 = ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> if x4440 then false else true ) ) ) $ ( if false then false else true )
        d446 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4490 -> x4490 ) ) ) $ ( Bool )
        d446 = if ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> d141 ) ) ) $ ( d52 ) then if d291 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> d396 ) ) ) $ ( d322 )
        d450 : if true then if false then Bool else Bool else if true then Bool else Bool
        d450 = if ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> false ) ) ) $ ( false ) then if true then d163 else false else if false then false else d439
        d452 : ( ( Set -> Set ) ∋ ( ( λ x4540 -> if false then Bool else x4540 ) ) ) $ ( if false then Bool else Bool )
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> if x4530 then d400 else false ) ) ) $ ( if false then true else d411 )
        d455 : ( ( Set -> Set ) ∋ ( ( λ x4570 -> ( ( Set -> Set ) ∋ ( ( λ x4580 -> if false then x4570 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d455 = if ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> x4560 ) ) ) $ ( false ) then if false then false else d342 else if false then false else d187
        d459 : if true then if false then Bool else Bool else if true then Bool else Bool
        d459 = ( ( Bool -> Bool ) ∋ ( ( λ x4600 -> ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> if d78 then d199 else x4600 ) ) ) $ ( x4600 ) ) ) ) $ ( if d98 then false else d98 )
        d462 : if true then ( ( Set -> Set ) ∋ ( ( λ x4640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4650 -> Bool ) ) ) $ ( Bool )
        d462 = if if d119 then false else d145 then ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> d30 ) ) ) $ ( true ) else if true then true else d160
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> ( ( Set -> Set ) ∋ ( ( λ x4700 -> if false then x4690 else Bool ) ) ) $ ( x4690 ) ) ) ) $ ( if false then Bool else Bool )
        d466 = ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> if false then d326 else true ) ) ) $ ( x4670 ) ) ) ) $ ( if false then d82 else d67 )
        d471 : if true then if true then Bool else Bool else if true then Bool else Bool
        d471 = if ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> d374 ) ) ) $ ( true ) then if d409 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> x4730 ) ) ) $ ( d174 )
        d474 : ( ( Set -> Set ) ∋ ( ( λ x4760 -> ( ( Set -> Set ) ∋ ( ( λ x4770 -> if false then Bool else Bool ) ) ) $ ( x4760 ) ) ) ) $ ( if true then Bool else Bool )
        d474 = ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if d443 then false else d5 ) ) ) $ ( if true then d192 else false )
        d478 : if true then ( ( Set -> Set ) ∋ ( ( λ x4800 -> x4800 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> if false then d58 else false ) ) ) $ ( if d374 then d163 else d129 )
        d481 : ( ( Set -> Set ) ∋ ( ( λ x4830 -> if false then x4830 else x4830 ) ) ) $ ( if false then Bool else Bool )
        d481 = if ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> d192 ) ) ) $ ( true ) then if false then d86 else true else if false then d183 else d345
        d484 : ( ( Set -> Set ) ∋ ( ( λ x4870 -> if false then x4870 else x4870 ) ) ) $ ( if false then Bool else Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> if x4860 then x4860 else x4850 ) ) ) $ ( true ) ) ) ) $ ( if d103 then false else false )
        d488 : ( ( Set -> Set ) ∋ ( ( λ x4910 -> ( ( Set -> Set ) ∋ ( ( λ x4920 -> if false then x4920 else x4910 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> if x4890 then x4890 else x4890 ) ) ) $ ( false ) ) ) ) $ ( if false then d100 else d411 )
        d493 : if false then ( ( Set -> Set ) ∋ ( ( λ x4960 -> x4960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4970 -> Bool ) ) ) $ ( Bool )
        d493 = if if true then d265 else d383 then ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> false ) ) ) $ ( d183 )
        d498 : if false then ( ( Set -> Set ) ∋ ( ( λ x5000 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> if x4990 then x4990 else d234 ) ) ) $ ( if false then d39 else d223 )
        d501 : ( ( Set -> Set ) ∋ ( ( λ x5040 -> ( ( Set -> Set ) ∋ ( ( λ x5050 -> if true then Bool else x5040 ) ) ) $ ( x5040 ) ) ) ) $ ( if true then Bool else Bool )
        d501 = ( ( Bool -> Bool ) ∋ ( ( λ x5020 -> ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> if false then true else d129 ) ) ) $ ( x5020 ) ) ) ) $ ( if d278 then d393 else false )
        d506 : ( ( Set -> Set ) ∋ ( ( λ x5080 -> ( ( Set -> Set ) ∋ ( ( λ x5090 -> if true then x5080 else x5090 ) ) ) $ ( x5080 ) ) ) ) $ ( if true then Bool else Bool )
        d506 = if ( ( Bool -> Bool ) ∋ ( ( λ x5070 -> true ) ) ) $ ( d379 ) then if d370 then false else false else if d393 then d34 else d446
        d510 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5120 -> Bool ) ) ) $ ( Bool )
        d510 = ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> if d498 then x5110 else true ) ) ) $ ( if d9 then true else true )
        d513 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5160 -> Bool ) ) ) $ ( Bool )
        d513 = ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> if x5150 then d232 else d217 ) ) ) $ ( d75 ) ) ) ) $ ( if d339 then d203 else true )
        d517 : if true then ( ( Set -> Set ) ∋ ( ( λ x5180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5190 -> Bool ) ) ) $ ( Bool )
        d517 = if if d196 then false else false then if false then d63 else false else if d370 then true else false
        d520 : ( ( Set -> Set ) ∋ ( ( λ x5220 -> ( ( Set -> Set ) ∋ ( ( λ x5230 -> if false then x5220 else x5230 ) ) ) $ ( x5220 ) ) ) ) $ ( if false then Bool else Bool )
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> if x5210 then false else d192 ) ) ) $ ( if true then false else d232 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x5270 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> if x5260 then d141 else x5260 ) ) ) $ ( true ) ) ) ) $ ( if true then d310 else false )
        d528 : ( ( Set -> Set ) ∋ ( ( λ x5300 -> ( ( Set -> Set ) ∋ ( ( λ x5310 -> if true then x5300 else x5310 ) ) ) $ ( x5300 ) ) ) ) $ ( if true then Bool else Bool )
        d528 = ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> if x5290 then d400 else x5290 ) ) ) $ ( if true then d75 else false )
        d532 : if true then if true then Bool else Bool else if true then Bool else Bool
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if d149 then false else true ) ) ) $ ( true ) ) ) ) $ ( if d22 then false else true )
        d535 : ( ( Set -> Set ) ∋ ( ( λ x5380 -> if true then Bool else x5380 ) ) ) $ ( if false then Bool else Bool )
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> if d163 then d241 else d67 ) ) ) $ ( d443 ) ) ) ) $ ( if false then false else false )
        d539 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5420 -> Bool ) ) ) $ ( Bool )
        d539 = if if false then false else d207 then ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> x5400 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> d528 ) ) ) $ ( d5 )
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> if true then Bool else x5460 ) ) ) $ ( if true then Bool else Bool )
        d543 = if if false then d15 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> x5440 ) ) ) $ ( d345 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> d501 ) ) ) $ ( d415 )
        d547 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> ( ( Set -> Set ) ∋ ( ( λ x5510 -> if true then x5510 else x5500 ) ) ) $ ( x5500 ) ) ) ) $ ( if true then Bool else Bool )
        d547 = if ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> x5480 ) ) ) $ ( false ) then if true then d230 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5490 -> x5490 ) ) ) $ ( true )
        d552 : if false then ( ( Set -> Set ) ∋ ( ( λ x5560 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d552 = if ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> d386 ) ) ) $ ( d415 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5540 -> x5540 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> x5550 ) ) ) $ ( d86 )
        d557 : ( ( Set -> Set ) ∋ ( ( λ x5590 -> ( ( Set -> Set ) ∋ ( ( λ x5600 -> if false then x5590 else Bool ) ) ) $ ( x5590 ) ) ) ) $ ( if true then Bool else Bool )
        d557 = if if d199 then false else d474 then ( ( Bool -> Bool ) ∋ ( ( λ x5580 -> x5580 ) ) ) $ ( d354 ) else if false then d383 else d278
        d561 : ( ( Set -> Set ) ∋ ( ( λ x5640 -> ( ( Set -> Set ) ∋ ( ( λ x5650 -> if true then x5650 else x5640 ) ) ) $ ( x5640 ) ) ) ) $ ( if false then Bool else Bool )
        d561 = if if d227 then false else d493 then ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> d217 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> false ) ) ) $ ( d459 )
        d566 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5690 -> x5690 ) ) ) $ ( Bool )
        d566 = ( ( Bool -> Bool ) ∋ ( ( λ x5670 -> ( ( Bool -> Bool ) ∋ ( ( λ x5680 -> if d169 then false else d443 ) ) ) $ ( d237 ) ) ) ) $ ( if true then false else false )
        d570 : if false then ( ( Set -> Set ) ∋ ( ( λ x5720 -> x5720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5730 -> Bool ) ) ) $ ( Bool )
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if true then x5710 else x5710 ) ) ) $ ( if d44 then true else d400 )
        d574 : if false then ( ( Set -> Set ) ∋ ( ( λ x5760 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> if d557 then d561 else d520 ) ) ) $ ( if true then d203 else false )
        d577 : ( ( Set -> Set ) ∋ ( ( λ x5810 -> ( ( Set -> Set ) ∋ ( ( λ x5820 -> if true then Bool else x5820 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d577 = if ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5790 -> d552 ) ) ) $ ( d141 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5800 -> d253 ) ) ) $ ( true )
        d583 : if false then ( ( Set -> Set ) ∋ ( ( λ x5870 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5880 -> x5880 ) ) ) $ ( Bool )
        d583 = if ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> d221 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> x5850 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5860 -> false ) ) ) $ ( true )
        d589 : ( ( Set -> Set ) ∋ ( ( λ x5920 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d589 = ( ( Bool -> Bool ) ∋ ( ( λ x5900 -> ( ( Bool -> Bool ) ∋ ( ( λ x5910 -> if x5900 then false else true ) ) ) $ ( d386 ) ) ) ) $ ( if d335 then false else true )
        d593 : ( ( Set -> Set ) ∋ ( ( λ x5950 -> ( ( Set -> Set ) ∋ ( ( λ x5960 -> if true then Bool else x5960 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x5940 -> if false then d303 else d383 ) ) ) $ ( if d78 then true else d498 )
        d597 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5990 -> Bool ) ) ) $ ( Bool )
        d597 = ( ( Bool -> Bool ) ∋ ( ( λ x5980 -> if true then true else x5980 ) ) ) $ ( if false then d299 else d543 )
        d600 : if false then ( ( Set -> Set ) ∋ ( ( λ x6020 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d600 = if if false then d577 else d119 then ( ( Bool -> Bool ) ∋ ( ( λ x6010 -> d221 ) ) ) $ ( d597 ) else if false then d459 else true
        d603 : if false then ( ( Set -> Set ) ∋ ( ( λ x6060 -> x6060 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d603 = if ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> x6040 ) ) ) $ ( d493 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6050 -> true ) ) ) $ ( false ) else if false then true else false
        d607 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6090 -> Bool ) ) ) $ ( Bool )
        d607 = if ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> false ) ) ) $ ( d82 ) then if d12 then true else d75 else if d437 then false else d214
        d610 : if false then ( ( Set -> Set ) ∋ ( ( λ x6120 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d610 = if if d122 then d331 else d303 then ( ( Bool -> Bool ) ∋ ( ( λ x6110 -> d125 ) ) ) $ ( true ) else if false then d415 else d160
        d613 : ( ( Set -> Set ) ∋ ( ( λ x6150 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d613 = if if d379 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x6140 -> x6140 ) ) ) $ ( d115 ) else if d154 then d203 else d217
        d616 : ( ( Set -> Set ) ∋ ( ( λ x6190 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d616 = ( ( Bool -> Bool ) ∋ ( ( λ x6170 -> ( ( Bool -> Bool ) ∋ ( ( λ x6180 -> if x6180 then true else d257 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d307 )
        d620 : ( ( Set -> Set ) ∋ ( ( λ x6230 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x6210 -> ( ( Bool -> Bool ) ∋ ( ( λ x6220 -> if x6220 then true else d493 ) ) ) $ ( x6210 ) ) ) ) $ ( if false then false else true )
        d624 : if true then ( ( Set -> Set ) ∋ ( ( λ x6270 -> x6270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6280 -> Bool ) ) ) $ ( Bool )
        d624 = ( ( Bool -> Bool ) ∋ ( ( λ x6250 -> ( ( Bool -> Bool ) ∋ ( ( λ x6260 -> if d52 then true else d422 ) ) ) $ ( true ) ) ) ) $ ( if d145 then d356 else d187 )
        d629 : ( ( Set -> Set ) ∋ ( ( λ x6320 -> ( ( Set -> Set ) ∋ ( ( λ x6330 -> if false then x6320 else x6330 ) ) ) $ ( x6320 ) ) ) ) $ ( if true then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> ( ( Bool -> Bool ) ∋ ( ( λ x6310 -> if false then d265 else d71 ) ) ) $ ( x6300 ) ) ) ) $ ( if d532 then false else true )
        d634 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6380 -> Bool ) ) ) $ ( Bool )
        d634 = if ( ( Bool -> Bool ) ∋ ( ( λ x6350 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6360 -> d12 ) ) ) $ ( d600 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> d221 ) ) ) $ ( d532 )
        d639 : ( ( Set -> Set ) ∋ ( ( λ x6410 -> if false then x6410 else x6410 ) ) ) $ ( if false then Bool else Bool )
        d639 = ( ( Bool -> Bool ) ∋ ( ( λ x6400 -> if false then d603 else false ) ) ) $ ( if d539 then d443 else true )
        d642 : ( ( Set -> Set ) ∋ ( ( λ x6450 -> ( ( Set -> Set ) ∋ ( ( λ x6460 -> if true then Bool else x6450 ) ) ) $ ( x6450 ) ) ) ) $ ( if true then Bool else Bool )
        d642 = if if false then d163 else true then ( ( Bool -> Bool ) ∋ ( ( λ x6430 -> x6430 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6440 -> x6440 ) ) ) $ ( d620 )
        d647 : ( ( Set -> Set ) ∋ ( ( λ x6490 -> if false then Bool else x6490 ) ) ) $ ( if false then Bool else Bool )
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x6480 -> if d67 then d207 else d603 ) ) ) $ ( if true then d356 else false )
        d650 : ( ( Set -> Set ) ∋ ( ( λ x6530 -> if true then Bool else x6530 ) ) ) $ ( if true then Bool else Bool )
        d650 = ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> if x6520 then d196 else x6510 ) ) ) $ ( d613 ) ) ) ) $ ( if d60 then d577 else d133 )
        d654 : ( ( Set -> Set ) ∋ ( ( λ x6570 -> if true then x6570 else x6570 ) ) ) $ ( if false then Bool else Bool )
        d654 = if ( ( Bool -> Bool ) ∋ ( ( λ x6550 -> true ) ) ) $ ( d145 ) then if d227 then d411 else false else ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> false ) ) ) $ ( true )
        d658 : ( ( Set -> Set ) ∋ ( ( λ x6610 -> ( ( Set -> Set ) ∋ ( ( λ x6620 -> if false then x6620 else Bool ) ) ) $ ( x6610 ) ) ) ) $ ( if true then Bool else Bool )
        d658 = ( ( Bool -> Bool ) ∋ ( ( λ x6590 -> ( ( Bool -> Bool ) ∋ ( ( λ x6600 -> if x6600 then x6600 else d280 ) ) ) $ ( x6590 ) ) ) ) $ ( if false then false else false )
        d663 : ( ( Set -> Set ) ∋ ( ( λ x6650 -> ( ( Set -> Set ) ∋ ( ( λ x6660 -> if false then Bool else x6650 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d663 = ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> if x6640 then x6640 else true ) ) ) $ ( if true then d597 else d589 )
        d667 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( Bool )
        d667 = if if true then d221 else d393 then if d613 then true else d163 else ( ( Bool -> Bool ) ∋ ( ( λ x6680 -> d196 ) ) ) $ ( false )
        d670 : ( ( Set -> Set ) ∋ ( ( λ x6730 -> if false then x6730 else x6730 ) ) ) $ ( if true then Bool else Bool )
        d670 = ( ( Bool -> Bool ) ∋ ( ( λ x6710 -> ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> if true then x6710 else true ) ) ) $ ( true ) ) ) ) $ ( if d446 then d141 else false )
        d674 : if true then ( ( Set -> Set ) ∋ ( ( λ x6760 -> x6760 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d674 = ( ( Bool -> Bool ) ∋ ( ( λ x6750 -> if d404 then d269 else x6750 ) ) ) $ ( if d63 then true else d207 )
        d677 : ( ( Set -> Set ) ∋ ( ( λ x6800 -> if true then x6800 else x6800 ) ) ) $ ( if true then Bool else Bool )
        d677 = ( ( Bool -> Bool ) ∋ ( ( λ x6780 -> ( ( Bool -> Bool ) ∋ ( ( λ x6790 -> if d362 then true else d589 ) ) ) $ ( false ) ) ) ) $ ( if d532 then d524 else false )
        d681 : if false then if true then Bool else Bool else if true then Bool else Bool
        d681 = if ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> x6820 ) ) ) $ ( d335 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6830 -> x6830 ) ) ) $ ( d316 ) else if true then d199 else d374
        d684 : if true then if false then Bool else Bool else if false then Bool else Bool
        d684 = if ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> true ) ) ) $ ( false ) then if d261 then d158 else d432 else if false then d9 else true
        d686 : ( ( Set -> Set ) ∋ ( ( λ x6880 -> ( ( Set -> Set ) ∋ ( ( λ x6890 -> if true then x6890 else Bool ) ) ) $ ( x6880 ) ) ) ) $ ( if false then Bool else Bool )
        d686 = if if true then d98 else d1 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x6870 -> d345 ) ) ) $ ( false )
        d690 : ( ( Set -> Set ) ∋ ( ( λ x6920 -> if true then Bool else x6920 ) ) ) $ ( if false then Bool else Bool )
        d690 = if if false then d524 else d210 then ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> d557 ) ) ) $ ( d63 ) else if d214 then d187 else true
        d693 : if false then ( ( Set -> Set ) ∋ ( ( λ x6960 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6970 -> x6970 ) ) ) $ ( Bool )
        d693 = ( ( Bool -> Bool ) ∋ ( ( λ x6940 -> ( ( Bool -> Bool ) ∋ ( ( λ x6950 -> if true then x6940 else true ) ) ) $ ( x6940 ) ) ) ) $ ( if d232 then d248 else false )
        d698 : ( ( Set -> Set ) ∋ ( ( λ x7010 -> if true then Bool else x7010 ) ) ) $ ( if true then Bool else Bool )
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x6990 -> ( ( Bool -> Bool ) ∋ ( ( λ x7000 -> if x7000 then x6990 else x6990 ) ) ) $ ( false ) ) ) ) $ ( if true then d288 else d358 )
        d702 : ( ( Set -> Set ) ∋ ( ( λ x7030 -> ( ( Set -> Set ) ∋ ( ( λ x7040 -> if true then x7040 else Bool ) ) ) $ ( x7030 ) ) ) ) $ ( if true then Bool else Bool )
        d702 = if if true then d462 else false then if true then true else d30 else if d158 then d230 else false
        d705 : if true then ( ( Set -> Set ) ∋ ( ( λ x7070 -> x7070 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7080 -> Bool ) ) ) $ ( Bool )
        d705 = ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> if x7060 then x7060 else true ) ) ) $ ( if true then false else d658 )
        d709 : if true then ( ( Set -> Set ) ∋ ( ( λ x7120 -> x7120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7130 -> x7130 ) ) ) $ ( Bool )
        d709 = if if d517 then d326 else false then ( ( Bool -> Bool ) ∋ ( ( λ x7100 -> x7100 ) ) ) $ ( d274 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7110 -> true ) ) ) $ ( d234 )
        d714 : if false then ( ( Set -> Set ) ∋ ( ( λ x7160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7170 -> x7170 ) ) ) $ ( Bool )
        d714 = ( ( Bool -> Bool ) ∋ ( ( λ x7150 -> if x7150 then true else d15 ) ) ) $ ( if d624 then false else true )
        d718 : ( ( Set -> Set ) ∋ ( ( λ x7200 -> if false then Bool else x7200 ) ) ) $ ( if true then Bool else Bool )
        d718 = if if false then false else d221 then if d616 then true else d82 else ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> true ) ) ) $ ( d647 )
        d721 : ( ( Set -> Set ) ∋ ( ( λ x7240 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> ( ( Bool -> Bool ) ∋ ( ( λ x7230 -> if x7230 then d278 else x7220 ) ) ) $ ( true ) ) ) ) $ ( if true then d89 else d169 )
        d725 : ( ( Set -> Set ) ∋ ( ( λ x7260 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d725 = if if false then false else true then if false then true else d439 else if d389 then d557 else d119
        d727 : ( ( Set -> Set ) ∋ ( ( λ x7300 -> if false then x7300 else Bool ) ) ) $ ( if false then Bool else Bool )
        d727 = if ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> d278 ) ) ) $ ( d498 ) then if true then d196 else d291 else ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> x7290 ) ) ) $ ( d404 )
        d731 : if true then ( ( Set -> Set ) ∋ ( ( λ x7330 -> x7330 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> if d663 then x7320 else x7320 ) ) ) $ ( if false then d524 else true )
        d734 : if true then if false then Bool else Bool else if false then Bool else Bool
        d734 = if if false then false else d370 then if true then true else d19 else ( ( Bool -> Bool ) ∋ ( ( λ x7350 -> d731 ) ) ) $ ( d9 )
        d736 : ( ( Set -> Set ) ∋ ( ( λ x7380 -> ( ( Set -> Set ) ∋ ( ( λ x7390 -> if false then Bool else Bool ) ) ) $ ( x7380 ) ) ) ) $ ( if true then Bool else Bool )
        d736 = ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> if d658 then true else x7370 ) ) ) $ ( if true then true else d48 )
        d740 : ( ( Set -> Set ) ∋ ( ( λ x7420 -> ( ( Set -> Set ) ∋ ( ( λ x7430 -> if false then x7430 else Bool ) ) ) $ ( x7420 ) ) ) ) $ ( if true then Bool else Bool )
        d740 = if if false then false else d196 then if true then d169 else false else ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> d86 ) ) ) $ ( d291 )
        d744 : ( ( Set -> Set ) ∋ ( ( λ x7460 -> if true then Bool else x7460 ) ) ) $ ( if true then Bool else Bool )
        d744 = ( ( Bool -> Bool ) ∋ ( ( λ x7450 -> if d241 then x7450 else x7450 ) ) ) $ ( if d129 then d174 else false )
        d747 : ( ( Set -> Set ) ∋ ( ( λ x7500 -> if false then x7500 else Bool ) ) ) $ ( if true then Bool else Bool )
        d747 = ( ( Bool -> Bool ) ∋ ( ( λ x7480 -> ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> if false then d570 else d432 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d751 : ( ( Set -> Set ) ∋ ( ( λ x7540 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d751 = ( ( Bool -> Bool ) ∋ ( ( λ x7520 -> ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> if true then false else d690 ) ) ) $ ( x7520 ) ) ) ) $ ( if d115 then false else d570 )
        d755 : ( ( Set -> Set ) ∋ ( ( λ x7570 -> ( ( Set -> Set ) ∋ ( ( λ x7580 -> if true then x7570 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d755 = ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> if x7560 then true else d234 ) ) ) $ ( if false then false else true )
        d759 : if true then ( ( Set -> Set ) ∋ ( ( λ x7610 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7620 -> Bool ) ) ) $ ( Bool )
        d759 = ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> if false then x7600 else d335 ) ) ) $ ( if false then false else d415 )
        d763 : if true then ( ( Set -> Set ) ∋ ( ( λ x7660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7670 -> x7670 ) ) ) $ ( Bool )
        d763 = ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> if x7650 then x7640 else false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d629 )
        d768 : ( ( Set -> Set ) ∋ ( ( λ x7700 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d768 = if ( ( Bool -> Bool ) ∋ ( ( λ x7690 -> true ) ) ) $ ( d506 ) then if d366 then d265 else d428 else if false then true else true
        d771 : ( ( Set -> Set ) ∋ ( ( λ x7740 -> if false then Bool else x7740 ) ) ) $ ( if true then Bool else Bool )
        d771 = ( ( Bool -> Bool ) ∋ ( ( λ x7720 -> ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> if false then d418 else false ) ) ) $ ( x7720 ) ) ) ) $ ( if true then true else d284 )
        d775 : ( ( Set -> Set ) ∋ ( ( λ x7760 -> if false then x7760 else Bool ) ) ) $ ( if true then Bool else Bool )
        d775 = if if true then false else d603 then if true then d196 else d96 else if true then true else d446
        d777 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7780 -> x7780 ) ) ) $ ( Bool )
        d777 = if if false then d714 else false then if false then true else false else if d510 then d15 else false
        d779 : ( ( Set -> Set ) ∋ ( ( λ x7830 -> if true then x7830 else x7830 ) ) ) $ ( if true then Bool else Bool )
        d779 = if ( ( Bool -> Bool ) ∋ ( ( λ x7800 -> false ) ) ) $ ( d374 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7820 -> x7820 ) ) ) $ ( d110 )
        d784 : if false then ( ( Set -> Set ) ∋ ( ( λ x7860 -> x7860 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d784 = if if d411 then d362 else d19 then ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> x7850 ) ) ) $ ( true ) else if d629 then d763 else d650
        d787 : if false then ( ( Set -> Set ) ∋ ( ( λ x7890 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d787 = ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> if true then d501 else false ) ) ) $ ( if true then d78 else d686 )
        d790 : ( ( Set -> Set ) ∋ ( ( λ x7920 -> ( ( Set -> Set ) ∋ ( ( λ x7930 -> if true then x7920 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d790 = ( ( Bool -> Bool ) ∋ ( ( λ x7910 -> if d642 then true else x7910 ) ) ) $ ( if false then false else true )
        d794 : ( ( Set -> Set ) ∋ ( ( λ x7960 -> ( ( Set -> Set ) ∋ ( ( λ x7970 -> if false then Bool else x7960 ) ) ) $ ( x7960 ) ) ) ) $ ( if true then Bool else Bool )
        d794 = if if d498 then false else d22 then ( ( Bool -> Bool ) ∋ ( ( λ x7950 -> true ) ) ) $ ( false ) else if d577 then d9 else d9
        d798 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8000 -> x8000 ) ) ) $ ( Bool )
        d798 = if ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> d705 ) ) ) $ ( false ) then if true then d705 else false else if d217 then true else true
        d801 : ( ( Set -> Set ) ∋ ( ( λ x8040 -> if false then x8040 else Bool ) ) ) $ ( if false then Bool else Bool )
        d801 = ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> if x8020 then false else x8020 ) ) ) $ ( d790 ) ) ) ) $ ( if false then false else d539 )
        d805 : ( ( Set -> Set ) ∋ ( ( λ x8080 -> if false then x8080 else Bool ) ) ) $ ( if true then Bool else Bool )
        d805 = if ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> true ) ) ) $ ( false ) then if d320 then d78 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8070 -> x8070 ) ) ) $ ( false )
        d809 : if true then if false then Bool else Bool else if true then Bool else Bool
        d809 = ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> if false then x8110 else d709 ) ) ) $ ( d409 ) ) ) ) $ ( if d763 then false else d439 )
        d812 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8160 -> Bool ) ) ) $ ( Bool )
        d812 = if ( ( Bool -> Bool ) ∋ ( ( λ x8130 -> false ) ) ) $ ( d624 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> d86 ) ) ) $ ( d488 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8150 -> d326 ) ) ) $ ( d163 )
        d817 : ( ( Set -> Set ) ∋ ( ( λ x8190 -> ( ( Set -> Set ) ∋ ( ( λ x8200 -> if false then x8200 else Bool ) ) ) $ ( x8190 ) ) ) ) $ ( if true then Bool else Bool )
        d817 = ( ( Bool -> Bool ) ∋ ( ( λ x8180 -> if d547 then d642 else d52 ) ) ) $ ( if false then d616 else true )
        d821 : ( ( Set -> Set ) ∋ ( ( λ x8240 -> if true then x8240 else x8240 ) ) ) $ ( if false then Bool else Bool )
        d821 = ( ( Bool -> Bool ) ∋ ( ( λ x8220 -> ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> if d439 then d187 else false ) ) ) $ ( x8220 ) ) ) ) $ ( if d432 then d634 else d478 )
        d825 : if false then if true then Bool else Bool else if true then Bool else Bool
        d825 = if ( ( Bool -> Bool ) ∋ ( ( λ x8260 -> x8260 ) ) ) $ ( d658 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8270 -> x8270 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> d744 ) ) ) $ ( d759 )
        d829 : ( ( Set -> Set ) ∋ ( ( λ x8320 -> if true then Bool else x8320 ) ) ) $ ( if true then Bool else Bool )
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> if x8300 then true else false ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d833 : if false then ( ( Set -> Set ) ∋ ( ( λ x8350 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> if d345 then x8340 else x8340 ) ) ) $ ( if false then true else true )
        d836 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8400 -> x8400 ) ) ) $ ( Bool )
        d836 = if ( ( Bool -> Bool ) ∋ ( ( λ x8370 -> d639 ) ) ) $ ( d517 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> false ) ) ) $ ( d237 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8390 -> true ) ) ) $ ( d22 )
        d841 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8430 -> x8430 ) ) ) $ ( Bool )
        d841 = if ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> d466 ) ) ) $ ( d658 ) then if true then d432 else false else if false then false else d110
        d844 : ( ( Set -> Set ) ∋ ( ( λ x8470 -> ( ( Set -> Set ) ∋ ( ( λ x8480 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d844 = if ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> false ) ) ) $ ( d366 ) then if true then d817 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> x8460 ) ) ) $ ( d366 )
        d849 : if true then if true then Bool else Bool else if true then Bool else Bool
        d849 = ( ( Bool -> Bool ) ∋ ( ( λ x8500 -> ( ( Bool -> Bool ) ∋ ( ( λ x8510 -> if x8500 then true else false ) ) ) $ ( x8500 ) ) ) ) $ ( if true then d506 else false )
        d852 : if true then ( ( Set -> Set ) ∋ ( ( λ x8550 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8560 -> Bool ) ) ) $ ( Bool )
        d852 = if ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> d844 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8540 -> false ) ) ) $ ( true ) else if d731 then d498 else true
        d857 : ( ( Set -> Set ) ∋ ( ( λ x8590 -> ( ( Set -> Set ) ∋ ( ( λ x8600 -> if false then Bool else Bool ) ) ) $ ( x8590 ) ) ) ) $ ( if true then Bool else Bool )
        d857 = if ( ( Bool -> Bool ) ∋ ( ( λ x8580 -> d498 ) ) ) $ ( true ) then if d663 then true else false else if true then true else d248
        d861 : if true then ( ( Set -> Set ) ∋ ( ( λ x8620 -> x8620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8630 -> x8630 ) ) ) $ ( Bool )
        d861 = if if true then true else d274 then if true then false else false else if d426 then d370 else d400
        d864 : if true then if false then Bool else Bool else if false then Bool else Bool
        d864 = if if false then true else false then if true then d674 else false else ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> x8650 ) ) ) $ ( false )
        d866 : if true then ( ( Set -> Set ) ∋ ( ( λ x8690 -> x8690 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8700 -> Bool ) ) ) $ ( Bool )
        d866 = if ( ( Bool -> Bool ) ∋ ( ( λ x8670 -> d278 ) ) ) $ ( d639 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> x8680 ) ) ) $ ( d852 )
        d871 : if false then if true then Bool else Bool else if true then Bool else Bool
        d871 = if ( ( Bool -> Bool ) ∋ ( ( λ x8720 -> x8720 ) ) ) $ ( d214 ) then if d96 then d577 else false else if false then false else d844
        d873 : ( ( Set -> Set ) ∋ ( ( λ x8750 -> ( ( Set -> Set ) ∋ ( ( λ x8760 -> if false then x8750 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d873 = if if d589 then false else d316 then if d493 then true else d593 else ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> d790 ) ) ) $ ( true )
        d877 : if false then if false then Bool else Bool else if false then Bool else Bool
        d877 = ( ( Bool -> Bool ) ∋ ( ( λ x8780 -> if d809 then true else false ) ) ) $ ( if d44 then d755 else false )
        d879 : if false then ( ( Set -> Set ) ∋ ( ( λ x8820 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d879 = if ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> x8800 ) ) ) $ ( d145 ) then ( ( Bool -> Bool ) ∋ ( ( λ x8810 -> d44 ) ) ) $ ( d478 ) else if true then d639 else true
        d883 : if true then ( ( Set -> Set ) ∋ ( ( λ x8860 -> x8860 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d883 = ( ( Bool -> Bool ) ∋ ( ( λ x8840 -> ( ( Bool -> Bool ) ∋ ( ( λ x8850 -> if false then x8840 else d466 ) ) ) $ ( d574 ) ) ) ) $ ( if true then d866 else d27 )
        d887 : ( ( Set -> Set ) ∋ ( ( λ x8890 -> if true then x8890 else Bool ) ) ) $ ( if true then Bool else Bool )
        d887 = if if false then true else d751 then if d299 then d450 else d160 else ( ( Bool -> Bool ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( d89 )
        d890 : ( ( Set -> Set ) ∋ ( ( λ x8920 -> ( ( Set -> Set ) ∋ ( ( λ x8930 -> if true then Bool else x8920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d890 = if if d459 then d75 else d593 then ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> true ) ) ) $ ( true ) else if false then false else true
        d894 : if true then ( ( Set -> Set ) ∋ ( ( λ x8970 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d894 = ( ( Bool -> Bool ) ∋ ( ( λ x8950 -> ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> if x8960 then d358 else false ) ) ) $ ( x8950 ) ) ) ) $ ( if d196 then true else d450 )
        d898 : ( ( Set -> Set ) ∋ ( ( λ x9010 -> ( ( Set -> Set ) ∋ ( ( λ x9020 -> if true then x9010 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d898 = ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> if true then d481 else false ) ) ) $ ( false ) ) ) ) $ ( if d600 then d265 else d794 )
        d903 : if true then if true then Bool else Bool else if true then Bool else Bool
        d903 = if if false then true else d400 then if d734 then d418 else d320 else ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( true )
        d905 : ( ( Set -> Set ) ∋ ( ( λ x9080 -> ( ( Set -> Set ) ∋ ( ( λ x9090 -> if false then Bool else x9080 ) ) ) $ ( x9080 ) ) ) ) $ ( if false then Bool else Bool )
        d905 = if ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> x9060 ) ) ) $ ( d386 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> d705 ) ) ) $ ( d812 ) else if d702 then false else false
        d910 : if false then if false then Bool else Bool else if false then Bool else Bool
        d910 = if if true then true else true then if true then d280 else d740 else ( ( Bool -> Bool ) ∋ ( ( λ x9110 -> x9110 ) ) ) $ ( true )
        d912 : if false then ( ( Set -> Set ) ∋ ( ( λ x9150 -> x9150 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d912 = if ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> d30 ) ) ) $ ( true ) then if d610 then true else d488 else ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> true ) ) ) $ ( d478 )
        d916 : if true then ( ( Set -> Set ) ∋ ( ( λ x9180 -> x9180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9190 -> x9190 ) ) ) $ ( Bool )
        d916 = ( ( Bool -> Bool ) ∋ ( ( λ x9170 -> if d299 then false else false ) ) ) $ ( if d396 then d217 else false )
        d920 : if false then ( ( Set -> Set ) ∋ ( ( λ x9220 -> x9220 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d920 = if ( ( Bool -> Bool ) ∋ ( ( λ x9210 -> false ) ) ) $ ( false ) then if d620 then false else d894 else if d432 then true else true
        d923 : ( ( Set -> Set ) ∋ ( ( λ x9260 -> ( ( Set -> Set ) ∋ ( ( λ x9270 -> if true then x9270 else x9270 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d923 = ( ( Bool -> Bool ) ∋ ( ( λ x9240 -> ( ( Bool -> Bool ) ∋ ( ( λ x9250 -> if x9240 then d89 else d354 ) ) ) $ ( true ) ) ) ) $ ( if true then d731 else d498 )
        d928 : if false then if true then Bool else Bool else if false then Bool else Bool
        d928 = if ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> x9290 ) ) ) $ ( false ) then if true then false else d409 else ( ( Bool -> Bool ) ∋ ( ( λ x9300 -> true ) ) ) $ ( false )
        d931 : if false then if true then Bool else Bool else if false then Bool else Bool
        d931 = if if d667 then d187 else d257 then if d312 then false else d409 else if false then d265 else d866
        d932 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9330 -> Bool ) ) ) $ ( Bool )
        d932 = if if false then d928 else d693 then if true then d19 else false else if d821 then false else true
        d934 : if true then if false then Bool else Bool else if true then Bool else Bool
        d934 = if if false then false else true then if d89 then d597 else d790 else if true then d923 else false
        d935 : ( ( Set -> Set ) ∋ ( ( λ x9370 -> ( ( Set -> Set ) ∋ ( ( λ x9380 -> if false then Bool else x9370 ) ) ) $ ( x9370 ) ) ) ) $ ( if true then Bool else Bool )
        d935 = if ( ( Bool -> Bool ) ∋ ( ( λ x9360 -> x9360 ) ) ) $ ( d879 ) then if false then false else true else if false then d169 else false
        d939 : ( ( Set -> Set ) ∋ ( ( λ x9420 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d939 = if if d67 then d771 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> x9400 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9410 -> true ) ) ) $ ( d450 )
        d943 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9460 -> x9460 ) ) ) $ ( Bool )
        d943 = ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> if false then d221 else x9440 ) ) ) $ ( false ) ) ) ) $ ( if d119 then true else d261 )
        d947 : ( ( Set -> Set ) ∋ ( ( λ x9490 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d947 = ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> if true then d510 else d166 ) ) ) $ ( if true then true else false )
        d950 : ( ( Set -> Set ) ∋ ( ( λ x9530 -> if false then Bool else x9530 ) ) ) $ ( if false then Bool else Bool )
        d950 = ( ( Bool -> Bool ) ∋ ( ( λ x9510 -> ( ( Bool -> Bool ) ∋ ( ( λ x9520 -> if d883 then d174 else true ) ) ) $ ( x9510 ) ) ) ) $ ( if d698 then d805 else d841 )
        d954 : if false then ( ( Set -> Set ) ∋ ( ( λ x9560 -> x9560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d954 = if ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> d939 ) ) ) $ ( false ) then if d613 then d141 else false else if false then d437 else d52
        d957 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9590 -> Bool ) ) ) $ ( Bool )
        d957 = if if false then d291 else d179 then if false then d86 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> x9580 ) ) ) $ ( false )
        d960 : ( ( Set -> Set ) ∋ ( ( λ x9630 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d960 = if ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> x9610 ) ) ) $ ( false ) then if true then d89 else d603 else ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> true ) ) ) $ ( true )
        d964 : ( ( Set -> Set ) ∋ ( ( λ x9670 -> ( ( Set -> Set ) ∋ ( ( λ x9680 -> if false then x9680 else x9670 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d964 = if ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> d27 ) ) ) $ ( d122 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> x9660 ) ) ) $ ( false ) else if false then false else d187
        d969 : if true then if true then Bool else Bool else if true then Bool else Bool
        d969 = ( ( Bool -> Bool ) ∋ ( ( λ x9700 -> ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> if true then false else d857 ) ) ) $ ( x9700 ) ) ) ) $ ( if d379 then d443 else d731 )
        d972 : ( ( Set -> Set ) ∋ ( ( λ x9750 -> if true then Bool else x9750 ) ) ) $ ( if false then Bool else Bool )
        d972 = if ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> d736 ) ) ) $ ( true ) then if d684 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x9740 -> true ) ) ) $ ( d763 )
        d976 : if true then ( ( Set -> Set ) ∋ ( ( λ x9780 -> x9780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x9770 -> if d721 then false else true ) ) ) $ ( if d677 then true else d349 )
        d979 : ( ( Set -> Set ) ∋ ( ( λ x9810 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d979 = ( ( Bool -> Bool ) ∋ ( ( λ x9800 -> if d702 then true else x9800 ) ) ) $ ( if d160 then true else d613 )
        d982 : if false then if false then Bool else Bool else if true then Bool else Bool
        d982 = ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> if d910 then d221 else false ) ) ) $ ( if false then d223 else d22 )
        d984 : ( ( Set -> Set ) ∋ ( ( λ x9850 -> ( ( Set -> Set ) ∋ ( ( λ x9860 -> if true then x9860 else x9850 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d984 = if if d629 then true else d600 then if d812 then d1 else d684 else if true then d916 else d280
        d987 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9900 -> x9900 ) ) ) $ ( Bool )
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> if x9890 then d920 else x9880 ) ) ) $ ( false ) ) ) ) $ ( if d910 then false else d825 )
        d991 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9940 -> x9940 ) ) ) $ ( Bool )
        d991 = ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> ( ( Bool -> Bool ) ∋ ( ( λ x9930 -> if d183 then x9930 else x9920 ) ) ) $ ( d9 ) ) ) ) $ ( if d543 then false else false )
        d995 : ( ( Set -> Set ) ∋ ( ( λ x9980 -> ( ( Set -> Set ) ∋ ( ( λ x9990 -> if true then Bool else x9980 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d995 = ( ( Bool -> Bool ) ∋ ( ( λ x9960 -> ( ( Bool -> Bool ) ∋ ( ( λ x9970 -> if x9960 then x9970 else x9960 ) ) ) $ ( true ) ) ) ) $ ( if true then d437 else false )
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x10030 -> if true then Bool else x10030 ) ) ) $ ( if false then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x10010 -> ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> if false then d898 else x10010 ) ) ) $ ( x10010 ) ) ) ) $ ( if d234 then d179 else d658 )
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x10070 -> ( ( Set -> Set ) ∋ ( ( λ x10080 -> if false then x10080 else Bool ) ) ) $ ( x10070 ) ) ) ) $ ( if false then Bool else Bool )
        d1004 = ( ( Bool -> Bool ) ∋ ( ( λ x10050 -> ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> if x10060 then d670 else false ) ) ) $ ( d624 ) ) ) ) $ ( if false then d471 else d879 )
        d1009 : if true then ( ( Set -> Set ) ∋ ( ( λ x10130 -> x10130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10140 -> Bool ) ) ) $ ( Bool )
        d1009 = if ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> d133 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10110 -> d894 ) ) ) $ ( d386 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10120 -> x10120 ) ) ) $ ( d129 )
        d1015 : ( ( Set -> Set ) ∋ ( ( λ x10170 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1015 = ( ( Bool -> Bool ) ∋ ( ( λ x10160 -> if true then x10160 else d349 ) ) ) $ ( if d755 then d779 else true )
        d1018 : ( ( Set -> Set ) ∋ ( ( λ x10210 -> if false then Bool else x10210 ) ) ) $ ( if true then Bool else Bool )
        d1018 = if if false then false else d873 then ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> d790 ) ) ) $ ( d857 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> x10200 ) ) ) $ ( d639 )
        d1022 : ( ( Set -> Set ) ∋ ( ( λ x10240 -> if false then Bool else x10240 ) ) ) $ ( if false then Bool else Bool )
        d1022 = ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> if x10230 then x10230 else x10230 ) ) ) $ ( if false then d307 else d432 )
        d1025 : if false then ( ( Set -> Set ) ∋ ( ( λ x10280 -> x10280 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1025 = if ( ( Bool -> Bool ) ∋ ( ( λ x10260 -> true ) ) ) $ ( d48 ) then if d910 then d517 else d349 else ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> d320 ) ) ) $ ( d103 )
        d1029 : if true then ( ( Set -> Set ) ∋ ( ( λ x10310 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10320 -> x10320 ) ) ) $ ( Bool )
        d1029 = ( ( Bool -> Bool ) ∋ ( ( λ x10300 -> if true then x10300 else true ) ) ) $ ( if false then d779 else false )
        d1033 : if false then ( ( Set -> Set ) ∋ ( ( λ x10360 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1033 = ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> if d78 then d552 else d957 ) ) ) $ ( x10340 ) ) ) ) $ ( if false then true else false )
        d1037 : ( ( Set -> Set ) ∋ ( ( λ x10400 -> if false then Bool else x10400 ) ) ) $ ( if true then Bool else Bool )
        d1037 = ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> if d616 then x10380 else false ) ) ) $ ( x10380 ) ) ) ) $ ( if d932 then d702 else false )
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x10430 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1041 = ( ( Bool -> Bool ) ∋ ( ( λ x10420 -> if true then d849 else x10420 ) ) ) $ ( if false then true else d342 )
        d1044 : ( ( Set -> Set ) ∋ ( ( λ x10470 -> if true then x10470 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1044 = if ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10460 -> false ) ) ) $ ( false ) else if true then d179 else true
        d1048 : if true then ( ( Set -> Set ) ∋ ( ( λ x10500 -> x10500 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10510 -> x10510 ) ) ) $ ( Bool )
        d1048 = ( ( Bool -> Bool ) ∋ ( ( λ x10490 -> if d248 then d1000 else true ) ) ) $ ( if true then true else false )
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x10550 -> ( ( Set -> Set ) ∋ ( ( λ x10560 -> if true then Bool else Bool ) ) ) $ ( x10550 ) ) ) ) $ ( if false then Bool else Bool )
        d1052 = if ( ( Bool -> Bool ) ∋ ( ( λ x10530 -> false ) ) ) $ ( d552 ) then if false then false else d532 else ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> d947 ) ) ) $ ( d288 )
        d1057 : if true then ( ( Set -> Set ) ∋ ( ( λ x10600 -> x10600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10610 -> x10610 ) ) ) $ ( Bool )
        d1057 = if ( ( Bool -> Bool ) ∋ ( ( λ x10580 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> true ) ) ) $ ( d345 ) else if d613 then d898 else true
        d1062 : if false then ( ( Set -> Set ) ∋ ( ( λ x10640 -> x10640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10650 -> Bool ) ) ) $ ( Bool )
        d1062 = if ( ( Bool -> Bool ) ∋ ( ( λ x10630 -> false ) ) ) $ ( d759 ) then if d471 then true else false else if d616 then false else true
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x10680 -> ( ( Set -> Set ) ∋ ( ( λ x10690 -> if false then x10690 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1066 = ( ( Bool -> Bool ) ∋ ( ( λ x10670 -> if false then x10670 else true ) ) ) $ ( if d15 then true else d48 )
        d1070 : ( ( Set -> Set ) ∋ ( ( λ x10710 -> ( ( Set -> Set ) ∋ ( ( λ x10720 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1070 = if if d969 then d312 else d1029 then if d620 then false else false else if d690 then false else false
        d1073 : ( ( Set -> Set ) ∋ ( ( λ x10760 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1073 = ( ( Bool -> Bool ) ∋ ( ( λ x10740 -> ( ( Bool -> Bool ) ∋ ( ( λ x10750 -> if x10740 then true else d524 ) ) ) $ ( d506 ) ) ) ) $ ( if false then d520 else d1057 )
        d1077 : if true then ( ( Set -> Set ) ∋ ( ( λ x10800 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10810 -> x10810 ) ) ) $ ( Bool )
        d1077 = ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> if d787 then d841 else d169 ) ) ) $ ( x10780 ) ) ) ) $ ( if d303 then d714 else false )
        d1082 : ( ( Set -> Set ) ∋ ( ( λ x10840 -> ( ( Set -> Set ) ∋ ( ( λ x10850 -> if true then x10850 else x10840 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1082 = if ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> d48 ) ) ) $ ( true ) then if d230 then false else false else if d817 then d169 else d721
        d1086 : if true then ( ( Set -> Set ) ∋ ( ( λ x10890 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10900 -> Bool ) ) ) $ ( Bool )
        d1086 = ( ( Bool -> Bool ) ∋ ( ( λ x10870 -> ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> if true then true else x10870 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d1091 : ( ( Set -> Set ) ∋ ( ( λ x10930 -> if true then Bool else x10930 ) ) ) $ ( if false then Bool else Bool )
        d1091 = ( ( Bool -> Bool ) ∋ ( ( λ x10920 -> if d169 then false else true ) ) ) $ ( if d910 then d71 else false )
        d1094 : ( ( Set -> Set ) ∋ ( ( λ x10960 -> ( ( Set -> Set ) ∋ ( ( λ x10970 -> if false then Bool else Bool ) ) ) $ ( x10960 ) ) ) ) $ ( if true then Bool else Bool )
        d1094 = ( ( Bool -> Bool ) ∋ ( ( λ x10950 -> if x10950 then x10950 else true ) ) ) $ ( if true then true else d294 )
        d1098 : ( ( Set -> Set ) ∋ ( ( λ x11010 -> ( ( Set -> Set ) ∋ ( ( λ x11020 -> if false then x11010 else x11020 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1098 = if ( ( Bool -> Bool ) ∋ ( ( λ x10990 -> x10990 ) ) ) $ ( d160 ) then if d532 then d320 else false else ( ( Bool -> Bool ) ∋ ( ( λ x11000 -> false ) ) ) $ ( true )
        d1103 : ( ( Set -> Set ) ∋ ( ( λ x11050 -> if false then x11050 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1103 = ( ( Bool -> Bool ) ∋ ( ( λ x11040 -> if x11040 then false else d214 ) ) ) $ ( if true then false else d71 )
        d1106 : ( ( Set -> Set ) ∋ ( ( λ x11090 -> ( ( Set -> Set ) ∋ ( ( λ x11100 -> if true then Bool else Bool ) ) ) $ ( x11090 ) ) ) ) $ ( if false then Bool else Bool )
        d1106 = if ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> x11070 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> x11080 ) ) ) $ ( false ) else if true then d801 else d400
        d1111 : if false then ( ( Set -> Set ) ∋ ( ( λ x11130 -> x11130 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1111 = ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> if d784 then x11120 else false ) ) ) $ ( if d1037 then d1000 else false )
        d1114 : ( ( Set -> Set ) ∋ ( ( λ x11170 -> ( ( Set -> Set ) ∋ ( ( λ x11180 -> if false then x11170 else x11180 ) ) ) $ ( x11170 ) ) ) ) $ ( if true then Bool else Bool )
        d1114 = if ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11160 -> false ) ) ) $ ( d422 ) else if false then false else false
        d1119 : if false then ( ( Set -> Set ) ∋ ( ( λ x11210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11220 -> Bool ) ) ) $ ( Bool )
        d1119 = ( ( Bool -> Bool ) ∋ ( ( λ x11200 -> if d709 then false else false ) ) ) $ ( if false then false else false )
        d1123 : if true then ( ( Set -> Set ) ∋ ( ( λ x11260 -> x11260 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1123 = ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> ( ( Bool -> Bool ) ∋ ( ( λ x11250 -> if d552 then true else d462 ) ) ) $ ( x11240 ) ) ) ) $ ( if d1062 then d203 else true )
        d1127 : if false then ( ( Set -> Set ) ∋ ( ( λ x11290 -> x11290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11300 -> Bool ) ) ) $ ( Bool )
        d1127 = if ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> false ) ) ) $ ( false ) then if false then d506 else d1066 else if true then false else d995
        d1131 : ( ( Set -> Set ) ∋ ( ( λ x11330 -> if true then x11330 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1131 = if if d535 then false else d19 then ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> false ) ) ) $ ( d39 ) else if false then d1098 else d798
        d1134 : ( ( Set -> Set ) ∋ ( ( λ x11350 -> if true then Bool else x11350 ) ) ) $ ( if false then Bool else Bool )
        d1134 = if if d634 then true else d67 then if false then d934 else d513 else if d1048 then d684 else d335
        d1136 : if true then ( ( Set -> Set ) ∋ ( ( λ x11380 -> x11380 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1136 = if if false then d63 else d727 then if true then d474 else d1134 else ( ( Bool -> Bool ) ∋ ( ( λ x11370 -> d9 ) ) ) $ ( true )
        d1139 : if false then ( ( Set -> Set ) ∋ ( ( λ x11420 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1139 = ( ( Bool -> Bool ) ∋ ( ( λ x11400 -> ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> if d1111 then false else x11410 ) ) ) $ ( true ) ) ) ) $ ( if d316 then d221 else d418 )
        d1143 : if false then ( ( Set -> Set ) ∋ ( ( λ x11460 -> x11460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11470 -> Bool ) ) ) $ ( Bool )
        d1143 = if ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> d809 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11450 -> x11450 ) ) ) $ ( true ) else if false then false else false
        d1148 : if false then ( ( Set -> Set ) ∋ ( ( λ x11500 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1148 = ( ( Bool -> Bool ) ∋ ( ( λ x11490 -> if d15 then x11490 else false ) ) ) $ ( if d1143 then true else true )
        d1151 : ( ( Set -> Set ) ∋ ( ( λ x11540 -> if false then x11540 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1151 = if ( ( Bool -> Bool ) ∋ ( ( λ x11520 -> d339 ) ) ) $ ( true ) then if d484 then false else d821 else ( ( Bool -> Bool ) ∋ ( ( λ x11530 -> x11530 ) ) ) $ ( false )
        d1155 : ( ( Set -> Set ) ∋ ( ( λ x11570 -> if false then x11570 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1155 = if if d199 then d261 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11560 -> true ) ) ) $ ( false ) else if d307 then true else true
        d1158 : if true then ( ( Set -> Set ) ∋ ( ( λ x11610 -> x11610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11620 -> Bool ) ) ) $ ( Bool )
        d1158 = ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> if d903 then d404 else d393 ) ) ) $ ( x11590 ) ) ) ) $ ( if false then d119 else d887 )
        d1163 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11660 -> x11660 ) ) ) $ ( Bool )
        d1163 = ( ( Bool -> Bool ) ∋ ( ( λ x11640 -> ( ( Bool -> Bool ) ∋ ( ( λ x11650 -> if x11650 then x11650 else true ) ) ) $ ( x11640 ) ) ) ) $ ( if true then d303 else true )
        d1167 : if false then ( ( Set -> Set ) ∋ ( ( λ x11710 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1167 = if ( ( Bool -> Bool ) ∋ ( ( λ x11680 -> x11680 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x11690 -> x11690 ) ) ) $ ( d379 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> x11700 ) ) ) $ ( d805 )
        d1172 : if false then ( ( Set -> Set ) ∋ ( ( λ x11750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11760 -> x11760 ) ) ) $ ( Bool )
        d1172 = ( ( Bool -> Bool ) ∋ ( ( λ x11730 -> ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> if x11730 then x11730 else x11740 ) ) ) $ ( d1134 ) ) ) ) $ ( if false then d744 else d320 )
        d1177 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11800 -> Bool ) ) ) $ ( Bool )
        d1177 = if ( ( Bool -> Bool ) ∋ ( ( λ x11780 -> x11780 ) ) ) $ ( true ) then if true then d1077 else true else ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> d684 ) ) ) $ ( true )
        d1181 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1181 = if if true then d684 else d809 then ( ( Bool -> Bool ) ∋ ( ( λ x11820 -> false ) ) ) $ ( false ) else if d1111 then false else d307
        d1183 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11850 -> Bool ) ) ) $ ( Bool )
        d1183 = if ( ( Bool -> Bool ) ∋ ( ( λ x11840 -> d747 ) ) ) $ ( d374 ) then if d1033 then false else false else if d969 then d303 else false
        d1186 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11890 -> Bool ) ) ) $ ( Bool )
        d1186 = if if false then d462 else d345 then ( ( Bool -> Bool ) ∋ ( ( λ x11870 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> true ) ) ) $ ( d183 )
        d1190 : ( ( Set -> Set ) ∋ ( ( λ x11930 -> ( ( Set -> Set ) ∋ ( ( λ x11940 -> if true then Bool else x11940 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1190 = ( ( Bool -> Bool ) ∋ ( ( λ x11910 -> ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> if x11920 then d539 else d589 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d459 )
        d1195 : ( ( Set -> Set ) ∋ ( ( λ x11970 -> ( ( Set -> Set ) ∋ ( ( λ x11980 -> if true then x11980 else Bool ) ) ) $ ( x11970 ) ) ) ) $ ( if false then Bool else Bool )
        d1195 = ( ( Bool -> Bool ) ∋ ( ( λ x11960 -> if x11960 then x11960 else false ) ) ) $ ( if false then d607 else true )
        d1199 : ( ( Set -> Set ) ∋ ( ( λ x12010 -> ( ( Set -> Set ) ∋ ( ( λ x12020 -> if true then x12020 else x12020 ) ) ) $ ( x12010 ) ) ) ) $ ( if false then Bool else Bool )
        d1199 = if ( ( Bool -> Bool ) ∋ ( ( λ x12000 -> x12000 ) ) ) $ ( true ) then if d374 then d768 else d1134 else if true then true else d459
        d1203 : if true then ( ( Set -> Set ) ∋ ( ( λ x12060 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12070 -> x12070 ) ) ) $ ( Bool )
        d1203 = if if d751 then d539 else true then ( ( Bool -> Bool ) ∋ ( ( λ x12040 -> d354 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12050 -> x12050 ) ) ) $ ( false )
        d1208 : if true then ( ( Set -> Set ) ∋ ( ( λ x12100 -> x12100 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1208 = if if true then true else d947 then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x12090 -> d1073 ) ) ) $ ( d613 )
        d1211 : ( ( Set -> Set ) ∋ ( ( λ x12130 -> ( ( Set -> Set ) ∋ ( ( λ x12140 -> if true then x12130 else x12130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1211 = if if d133 then d163 else d714 then ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> x12120 ) ) ) $ ( d731 ) else if false then d303 else d1004
        d1215 : ( ( Set -> Set ) ∋ ( ( λ x12180 -> ( ( Set -> Set ) ∋ ( ( λ x12190 -> if true then Bool else x12190 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1215 = ( ( Bool -> Bool ) ∋ ( ( λ x12160 -> ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> if x12170 then d721 else d466 ) ) ) $ ( d129 ) ) ) ) $ ( if d1 then false else true )
        d1220 : ( ( Set -> Set ) ∋ ( ( λ x12230 -> ( ( Set -> Set ) ∋ ( ( λ x12240 -> if true then Bool else Bool ) ) ) $ ( x12230 ) ) ) ) $ ( if false then Bool else Bool )
        d1220 = ( ( Bool -> Bool ) ∋ ( ( λ x12210 -> ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> if d620 then true else d396 ) ) ) $ ( d547 ) ) ) ) $ ( if d634 then d60 else true )
        d1225 : ( ( Set -> Set ) ∋ ( ( λ x12290 -> ( ( Set -> Set ) ∋ ( ( λ x12300 -> if false then Bool else x12290 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1225 = if ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12270 -> d1155 ) ) ) $ ( d418 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12280 -> d727 ) ) ) $ ( d589 )
        d1231 : if true then ( ( Set -> Set ) ∋ ( ( λ x12340 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12350 -> Bool ) ) ) $ ( Bool )
        d1231 = ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> if true then d1000 else d718 ) ) ) $ ( x12320 ) ) ) ) $ ( if d307 then d825 else d1025 )
        d1236 : ( ( Set -> Set ) ∋ ( ( λ x12380 -> ( ( Set -> Set ) ∋ ( ( λ x12390 -> if true then x12380 else Bool ) ) ) $ ( x12380 ) ) ) ) $ ( if false then Bool else Bool )
        d1236 = ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> if d1181 then true else x12370 ) ) ) $ ( if d488 then true else false )
        d1240 : ( ( Set -> Set ) ∋ ( ( λ x12430 -> ( ( Set -> Set ) ∋ ( ( λ x12440 -> if true then Bool else Bool ) ) ) $ ( x12430 ) ) ) ) $ ( if true then Bool else Bool )
        d1240 = if ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> d183 ) ) ) $ ( d312 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> x12420 ) ) ) $ ( d658 ) else if false then d288 else d787
        d1245 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12470 -> Bool ) ) ) $ ( Bool )
        d1245 = ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> if d415 then d115 else true ) ) ) $ ( if d991 then false else true )
        d1248 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1248 = if ( ( Bool -> Bool ) ∋ ( ( λ x12490 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12500 -> x12500 ) ) ) $ ( d280 ) else if d790 then true else true
        d1251 : ( ( Set -> Set ) ∋ ( ( λ x12540 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1251 = if if d67 then d312 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> d110 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12530 -> x12530 ) ) ) $ ( false )
        d1255 : ( ( Set -> Set ) ∋ ( ( λ x12570 -> if true then x12570 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1255 = ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> if d517 then false else d684 ) ) ) $ ( if true then true else d125 )
        d1258 : ( ( Set -> Set ) ∋ ( ( λ x12600 -> ( ( Set -> Set ) ∋ ( ( λ x12610 -> if true then Bool else x12600 ) ) ) $ ( x12600 ) ) ) ) $ ( if true then Bool else Bool )
        d1258 = ( ( Bool -> Bool ) ∋ ( ( λ x12590 -> if false then x12590 else d133 ) ) ) $ ( if d96 then d294 else d158 )
        d1262 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12650 -> x12650 ) ) ) $ ( Bool )
        d1262 = if ( ( Bool -> Bool ) ∋ ( ( λ x12630 -> false ) ) ) $ ( d836 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> d1098 ) ) ) $ ( false ) else if d411 then true else d1004
        d1266 : ( ( Set -> Set ) ∋ ( ( λ x12680 -> ( ( Set -> Set ) ∋ ( ( λ x12690 -> if false then x12690 else x12680 ) ) ) $ ( x12680 ) ) ) ) $ ( if false then Bool else Bool )
        d1266 = ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> if false then x12670 else x12670 ) ) ) $ ( if false then d1082 else true )
        d1270 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12720 -> x12720 ) ) ) $ ( Bool )
        d1270 = ( ( Bool -> Bool ) ∋ ( ( λ x12710 -> if true then false else d1094 ) ) ) $ ( if d524 then d1248 else d241 )
        d1273 : if true then ( ( Set -> Set ) ∋ ( ( λ x12760 -> x12760 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12770 -> Bool ) ) ) $ ( Bool )
        d1273 = if if d158 then d1077 else true then ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12750 -> false ) ) ) $ ( d984 )
        d1278 : if false then ( ( Set -> Set ) ∋ ( ( λ x12790 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12800 -> x12800 ) ) ) $ ( Bool )
        d1278 = if if true then false else d714 then if false then false else true else if d30 then d984 else d310
        d1281 : ( ( Set -> Set ) ∋ ( ( λ x12840 -> ( ( Set -> Set ) ∋ ( ( λ x12850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1281 = if if d115 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x12820 -> d624 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> d905 ) ) ) $ ( d187 )
        d1286 : if false then ( ( Set -> Set ) ∋ ( ( λ x12890 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1286 = ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> ( ( Bool -> Bool ) ∋ ( ( λ x12880 -> if x12880 then d532 else x12870 ) ) ) $ ( d547 ) ) ) ) $ ( if true then d63 else d44 )
        d1290 : ( ( Set -> Set ) ∋ ( ( λ x12920 -> ( ( Set -> Set ) ∋ ( ( λ x12930 -> if true then Bool else Bool ) ) ) $ ( x12920 ) ) ) ) $ ( if true then Bool else Bool )
        d1290 = ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> if false then d903 else true ) ) ) $ ( if d681 then d1044 else d705 )
        d1294 : if false then ( ( Set -> Set ) ∋ ( ( λ x12950 -> x12950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1294 = if if d27 then d677 else d790 then if d1 then true else d747 else if d779 then true else d92
        d1296 : if true then ( ( Set -> Set ) ∋ ( ( λ x12990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13000 -> x13000 ) ) ) $ ( Bool )
        d1296 = ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> ( ( Bool -> Bool ) ∋ ( ( λ x12980 -> if d721 then false else d658 ) ) ) $ ( false ) ) ) ) $ ( if d174 then d145 else d253 )
        d1301 : if true then ( ( Set -> Set ) ∋ ( ( λ x13040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13050 -> x13050 ) ) ) $ ( Bool )
        d1301 = if ( ( Bool -> Bool ) ∋ ( ( λ x13020 -> d597 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13030 -> x13030 ) ) ) $ ( false ) else if false then d552 else d187
        d1306 : ( ( Set -> Set ) ∋ ( ( λ x13080 -> ( ( Set -> Set ) ∋ ( ( λ x13090 -> if true then Bool else x13090 ) ) ) $ ( x13080 ) ) ) ) $ ( if false then Bool else Bool )
        d1306 = ( ( Bool -> Bool ) ∋ ( ( λ x13070 -> if x13070 then x13070 else false ) ) ) $ ( if false then d597 else d383 )
        d1310 : if true then ( ( Set -> Set ) ∋ ( ( λ x13130 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13140 -> x13140 ) ) ) $ ( Bool )
        d1310 = ( ( Bool -> Bool ) ∋ ( ( λ x13110 -> ( ( Bool -> Bool ) ∋ ( ( λ x13120 -> if d119 then true else true ) ) ) $ ( false ) ) ) ) $ ( if true then d1106 else d339 )
        d1315 : ( ( Set -> Set ) ∋ ( ( λ x13170 -> if true then x13170 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1315 = if if true then true else d950 then ( ( Bool -> Bool ) ∋ ( ( λ x13160 -> false ) ) ) $ ( true ) else if d446 then true else d422
        d1318 : ( ( Set -> Set ) ∋ ( ( λ x13220 -> if true then x13220 else x13220 ) ) ) $ ( if true then Bool else Bool )
        d1318 = if ( ( Bool -> Bool ) ∋ ( ( λ x13190 -> d192 ) ) ) $ ( d574 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13200 -> false ) ) ) $ ( d501 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> true ) ) ) $ ( true )
        d1323 : ( ( Set -> Set ) ∋ ( ( λ x13240 -> ( ( Set -> Set ) ∋ ( ( λ x13250 -> if false then Bool else x13250 ) ) ) $ ( x13240 ) ) ) ) $ ( if false then Bool else Bool )
        d1323 = if if d557 then d1033 else false then if true then false else d547 else if false then true else d524
        d1326 : ( ( Set -> Set ) ∋ ( ( λ x13290 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1326 = ( ( Bool -> Bool ) ∋ ( ( λ x13270 -> ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> if false then false else true ) ) ) $ ( false ) ) ) ) $ ( if d214 then true else true )
        d1330 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13310 -> Bool ) ) ) $ ( Bool )
        d1330 = if if true then d613 else d169 then if true then d1073 else false else if d871 then d634 else d801
        d1332 : ( ( Set -> Set ) ∋ ( ( λ x13350 -> ( ( Set -> Set ) ∋ ( ( λ x13360 -> if true then x13360 else Bool ) ) ) $ ( x13350 ) ) ) ) $ ( if true then Bool else Bool )
        d1332 = ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> if true then true else x13330 ) ) ) $ ( x13330 ) ) ) ) $ ( if true then false else d370 )
        d1337 : ( ( Set -> Set ) ∋ ( ( λ x13390 -> ( ( Set -> Set ) ∋ ( ( λ x13400 -> if false then Bool else x13400 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1337 = ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> if x13380 then x13380 else d1022 ) ) ) $ ( if false then false else d437 )
        d1341 : ( ( Set -> Set ) ∋ ( ( λ x13450 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1341 = if ( ( Bool -> Bool ) ∋ ( ( λ x13420 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13430 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> d278 ) ) ) $ ( d681 )
        d1346 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13480 -> x13480 ) ) ) $ ( Bool )
        d1346 = ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> if x13470 then d613 else x13470 ) ) ) $ ( if d1004 then d1236 else false )
        d1349 : ( ( Set -> Set ) ∋ ( ( λ x13510 -> ( ( Set -> Set ) ∋ ( ( λ x13520 -> if true then x13510 else Bool ) ) ) $ ( x13510 ) ) ) ) $ ( if false then Bool else Bool )
        d1349 = ( ( Bool -> Bool ) ∋ ( ( λ x13500 -> if x13500 then d1000 else x13500 ) ) ) $ ( if false then d1062 else d821 )
        d1353 : ( ( Set -> Set ) ∋ ( ( λ x13560 -> if false then x13560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1353 = ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> if false then false else x13540 ) ) ) $ ( x13540 ) ) ) ) $ ( if false then d339 else d166 )
        d1357 : ( ( Set -> Set ) ∋ ( ( λ x13600 -> if true then x13600 else x13600 ) ) ) $ ( if true then Bool else Bool )
        d1357 = ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> if d1215 then x13580 else d452 ) ) ) $ ( true ) ) ) ) $ ( if d294 then d92 else true )
        d1361 : if true then ( ( Set -> Set ) ∋ ( ( λ x13630 -> x13630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13640 -> Bool ) ) ) $ ( Bool )
        d1361 = if if true then false else true then if true then true else d535 else ( ( Bool -> Bool ) ∋ ( ( λ x13620 -> x13620 ) ) ) $ ( d624 )
        d1365 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13690 -> Bool ) ) ) $ ( Bool )
        d1365 = if ( ( Bool -> Bool ) ∋ ( ( λ x13660 -> x13660 ) ) ) $ ( d1025 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> x13670 ) ) ) $ ( d557 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13680 -> false ) ) ) $ ( d52 )
        d1370 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1370 = if if d443 then true else false then if true then d964 else false else if true then false else true
        d1371 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13740 -> x13740 ) ) ) $ ( Bool )
        d1371 = if if true then false else d731 then ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> false ) ) ) $ ( d912 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13730 -> d1220 ) ) ) $ ( true )
        d1375 : ( ( Set -> Set ) ∋ ( ( λ x13780 -> ( ( Set -> Set ) ∋ ( ( λ x13790 -> if true then Bool else x13780 ) ) ) $ ( x13780 ) ) ) ) $ ( if false then Bool else Bool )
        d1375 = ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> ( ( Bool -> Bool ) ∋ ( ( λ x13770 -> if true then true else false ) ) ) $ ( true ) ) ) ) $ ( if d411 then false else d898 )
        d1380 : ( ( Set -> Set ) ∋ ( ( λ x13830 -> ( ( Set -> Set ) ∋ ( ( λ x13840 -> if false then x13840 else x13840 ) ) ) $ ( x13830 ) ) ) ) $ ( if true then Bool else Bool )
        d1380 = if ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> true ) ) ) $ ( d1123 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> x13820 ) ) ) $ ( true ) else if d370 then false else d552
        d1385 : if false then ( ( Set -> Set ) ∋ ( ( λ x13880 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1385 = ( ( Bool -> Bool ) ∋ ( ( λ x13860 -> ( ( Bool -> Bool ) ∋ ( ( λ x13870 -> if d779 then x13870 else true ) ) ) $ ( d698 ) ) ) ) $ ( if false then true else d437 )
        d1389 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1389 = ( ( Bool -> Bool ) ∋ ( ( λ x13900 -> ( ( Bool -> Bool ) ∋ ( ( λ x13910 -> if true then d520 else d261 ) ) ) $ ( d119 ) ) ) ) $ ( if d1018 then d939 else d887 )
        d1392 : ( ( Set -> Set ) ∋ ( ( λ x13940 -> if false then x13940 else x13940 ) ) ) $ ( if false then Bool else Bool )
        d1392 = ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> if x13930 then x13930 else x13930 ) ) ) $ ( if d1211 then d52 else d777 )
        d1395 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13980 -> Bool ) ) ) $ ( Bool )
        d1395 = ( ( Bool -> Bool ) ∋ ( ( λ x13960 -> ( ( Bool -> Bool ) ∋ ( ( λ x13970 -> if d583 then x13960 else true ) ) ) $ ( d957 ) ) ) ) $ ( if false then false else d663 )
        d1399 : ( ( Set -> Set ) ∋ ( ( λ x14010 -> ( ( Set -> Set ) ∋ ( ( λ x14020 -> if true then Bool else x14010 ) ) ) $ ( x14010 ) ) ) ) $ ( if true then Bool else Bool )
        d1399 = ( ( Bool -> Bool ) ∋ ( ( λ x14000 -> if true then d905 else x14000 ) ) ) $ ( if d954 then false else false )
        d1403 : ( ( Set -> Set ) ∋ ( ( λ x14050 -> ( ( Set -> Set ) ∋ ( ( λ x14060 -> if false then x14050 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1403 = if if false then false else true then if true then false else d629 else ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> d39 ) ) ) $ ( false )
        d1407 : ( ( Set -> Set ) ∋ ( ( λ x14080 -> ( ( Set -> Set ) ∋ ( ( λ x14090 -> if false then x14080 else x14090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1407 = if if false then d374 else true then if d650 then false else false else if false then d939 else true
        d1410 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14130 -> Bool ) ) ) $ ( Bool )
        d1410 = if if d982 then d1151 else d836 then ( ( Bool -> Bool ) ∋ ( ( λ x14110 -> false ) ) ) $ ( d543 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14120 -> x14120 ) ) ) $ ( d798 )
        d1414 : ( ( Set -> Set ) ∋ ( ( λ x14160 -> ( ( Set -> Set ) ∋ ( ( λ x14170 -> if true then x14160 else x14170 ) ) ) $ ( x14160 ) ) ) ) $ ( if false then Bool else Bool )
        d1414 = if if false then d1203 else true then if false then d721 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> x14150 ) ) ) $ ( d873 )
        d1418 : ( ( Set -> Set ) ∋ ( ( λ x14200 -> if false then x14200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1418 = ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> if false then false else d103 ) ) ) $ ( if true then true else false )
        d1421 : ( ( Set -> Set ) ∋ ( ( λ x14230 -> if true then x14230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1421 = if if false then d9 else false then if d1094 then false else d207 else ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> true ) ) ) $ ( true )
        d1424 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14260 -> Bool ) ) ) $ ( Bool )
        d1424 = ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> if x14250 then true else d169 ) ) ) $ ( if d947 then d133 else d1033 )
        d1427 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1427 = ( ( Bool -> Bool ) ∋ ( ( λ x14280 -> ( ( Bool -> Bool ) ∋ ( ( λ x14290 -> if false then d169 else d1183 ) ) ) $ ( d528 ) ) ) ) $ ( if false then d1414 else false )
        d1430 : ( ( Set -> Set ) ∋ ( ( λ x14320 -> if true then x14320 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1430 = if if false then false else d1414 then ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> x14310 ) ) ) $ ( d326 ) else if d379 then d299 else false
        d1433 : if false then ( ( Set -> Set ) ∋ ( ( λ x14360 -> x14360 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1433 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> x14340 ) ) ) $ ( d642 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> false ) ) ) $ ( d498 )
        d1437 : ( ( Set -> Set ) ∋ ( ( λ x14390 -> if false then x14390 else x14390 ) ) ) $ ( if false then Bool else Bool )
        d1437 = ( ( Bool -> Bool ) ∋ ( ( λ x14380 -> if false then x14380 else d979 ) ) ) $ ( if true then d1029 else true )
        d1440 : if false then ( ( Set -> Set ) ∋ ( ( λ x14430 -> x14430 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1440 = if if true then true else d1424 then ( ( Bool -> Bool ) ∋ ( ( λ x14410 -> d1044 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14420 -> false ) ) ) $ ( d1262 )
        d1444 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1444 = ( ( Bool -> Bool ) ∋ ( ( λ x14450 -> ( ( Bool -> Bool ) ∋ ( ( λ x14460 -> if x14460 then x14450 else d624 ) ) ) $ ( x14450 ) ) ) ) $ ( if d39 then false else true )
        d1447 : ( ( Set -> Set ) ∋ ( ( λ x14490 -> ( ( Set -> Set ) ∋ ( ( λ x14500 -> if false then Bool else x14500 ) ) ) $ ( x14490 ) ) ) ) $ ( if true then Bool else Bool )
        d1447 = ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> if false then true else true ) ) ) $ ( if d1231 then false else false )
        d1451 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14550 -> Bool ) ) ) $ ( Bool )
        d1451 = if ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> x14520 ) ) ) $ ( d1318 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> x14530 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> x14540 ) ) ) $ ( d207 )
        d1456 : ( ( Set -> Set ) ∋ ( ( λ x14590 -> ( ( Set -> Set ) ∋ ( ( λ x14600 -> if false then x14600 else x14600 ) ) ) $ ( x14590 ) ) ) ) $ ( if true then Bool else Bool )
        d1456 = if ( ( Bool -> Bool ) ∋ ( ( λ x14570 -> d426 ) ) ) $ ( d1158 ) then if d787 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x14580 -> d1037 ) ) ) $ ( d462 )
        d1461 : ( ( Set -> Set ) ∋ ( ( λ x14640 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1461 = if ( ( Bool -> Bool ) ∋ ( ( λ x14620 -> x14620 ) ) ) $ ( d322 ) then if d1091 then d747 else false else ( ( Bool -> Bool ) ∋ ( ( λ x14630 -> d1281 ) ) ) $ ( true )
        d1465 : ( ( Set -> Set ) ∋ ( ( λ x14670 -> if true then Bool else x14670 ) ) ) $ ( if false then Bool else Bool )
        d1465 = ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> if false then d278 else x14660 ) ) ) $ ( if d339 then d1000 else false )
        d1468 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14700 -> x14700 ) ) ) $ ( Bool )
        d1468 = if ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> true ) ) ) $ ( d718 ) then if false then true else true else if false then d910 else d326
        d1471 : ( ( Set -> Set ) ∋ ( ( λ x14730 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1471 = if if false then false else false then if d354 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x14720 -> false ) ) ) $ ( true )
        d1474 : ( ( Set -> Set ) ∋ ( ( λ x14760 -> if true then x14760 else x14760 ) ) ) $ ( if false then Bool else Bool )
        d1474 = ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> if true then x14750 else x14750 ) ) ) $ ( if d871 then d721 else true )
        d1477 : ( ( Set -> Set ) ∋ ( ( λ x14790 -> if true then Bool else x14790 ) ) ) $ ( if true then Bool else Bool )
        d1477 = ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> if false then false else d610 ) ) ) $ ( if d1048 then d923 else d1468 )
        d1480 : ( ( Set -> Set ) ∋ ( ( λ x14830 -> ( ( Set -> Set ) ∋ ( ( λ x14840 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1480 = if if d1278 then d1258 else d1444 then ( ( Bool -> Bool ) ∋ ( ( λ x14810 -> x14810 ) ) ) $ ( d1158 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> x14820 ) ) ) $ ( d943 )
        d1485 : if true then ( ( Set -> Set ) ∋ ( ( λ x14880 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1485 = ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> if false then false else x14870 ) ) ) $ ( d861 ) ) ) ) $ ( if true then true else true )
        d1489 : if true then ( ( Set -> Set ) ∋ ( ( λ x14910 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1489 = if ( ( Bool -> Bool ) ∋ ( ( λ x14900 -> x14900 ) ) ) $ ( d291 ) then if d174 then d1437 else false else if false then true else true
        d1492 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1492 = if ( ( Bool -> Bool ) ∋ ( ( λ x14930 -> false ) ) ) $ ( true ) then if false then false else d928 else ( ( Bool -> Bool ) ∋ ( ( λ x14940 -> x14940 ) ) ) $ ( true )
        d1495 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1495 = ( ( Bool -> Bool ) ∋ ( ( λ x14960 -> ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> if true then d528 else d1211 ) ) ) $ ( d133 ) ) ) ) $ ( if d196 then true else d506 )
        d1498 : if false then ( ( Set -> Set ) ∋ ( ( λ x15000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1498 = ( ( Bool -> Bool ) ∋ ( ( λ x14990 -> if false then d52 else d658 ) ) ) $ ( if true then false else d163 )
        d1501 : ( ( Set -> Set ) ∋ ( ( λ x15040 -> if false then x15040 else x15040 ) ) ) $ ( if true then Bool else Bool )
        d1501 = ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> ( ( Bool -> Bool ) ∋ ( ( λ x15030 -> if d960 then x15020 else false ) ) ) $ ( false ) ) ) ) $ ( if d160 then d995 else d809 )
        d1505 : ( ( Set -> Set ) ∋ ( ( λ x15070 -> ( ( Set -> Set ) ∋ ( ( λ x15080 -> if true then Bool else x15080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1505 = if if d1266 then d947 else true then ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> d1471 ) ) ) $ ( true ) else if d1048 then d145 else false
        d1509 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1509 = ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> if x15100 then true else true ) ) ) $ ( if d100 then true else d607 )
        d1511 : ( ( Set -> Set ) ∋ ( ( λ x15120 -> ( ( Set -> Set ) ∋ ( ( λ x15130 -> if true then x15130 else Bool ) ) ) $ ( x15120 ) ) ) ) $ ( if false then Bool else Bool )
        d1511 = if if d166 then false else d777 then if d160 then false else d920 else if true then false else false
        d1514 : ( ( Set -> Set ) ∋ ( ( λ x15160 -> ( ( Set -> Set ) ∋ ( ( λ x15170 -> if true then Bool else Bool ) ) ) $ ( x15160 ) ) ) ) $ ( if true then Bool else Bool )
        d1514 = ( ( Bool -> Bool ) ∋ ( ( λ x15150 -> if x15150 then x15150 else x15150 ) ) ) $ ( if d1163 then true else true )
        d1518 : ( ( Set -> Set ) ∋ ( ( λ x15210 -> if true then Bool else x15210 ) ) ) $ ( if false then Bool else Bool )
        d1518 = if if true then true else d374 then ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> d1106 ) ) ) $ ( d203 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> d34 ) ) ) $ ( true )
        d1522 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15250 -> Bool ) ) ) $ ( Bool )
        d1522 = ( ( Bool -> Bool ) ∋ ( ( λ x15230 -> ( ( Bool -> Bool ) ∋ ( ( λ x15240 -> if false then x15230 else x15230 ) ) ) $ ( d686 ) ) ) ) $ ( if d561 then false else true )
        d1526 : ( ( Set -> Set ) ∋ ( ( λ x15280 -> if true then Bool else x15280 ) ) ) $ ( if false then Bool else Bool )
        d1526 = if if d1225 then d1203 else d727 then if false then d1480 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> true ) ) ) $ ( true )
        d1529 : ( ( Set -> Set ) ∋ ( ( λ x15310 -> ( ( Set -> Set ) ∋ ( ( λ x15320 -> if false then Bool else x15310 ) ) ) $ ( x15310 ) ) ) ) $ ( if false then Bool else Bool )
        d1529 = ( ( Bool -> Bool ) ∋ ( ( λ x15300 -> if true then d78 else x15300 ) ) ) $ ( if d805 then d658 else d60 )
        d1533 : if true then ( ( Set -> Set ) ∋ ( ( λ x15360 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1533 = ( ( Bool -> Bool ) ∋ ( ( λ x15340 -> ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> if x15350 then d873 else d356 ) ) ) $ ( x15340 ) ) ) ) $ ( if false then true else true )
        d1537 : if true then ( ( Set -> Set ) ∋ ( ( λ x15410 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1537 = if ( ( Bool -> Bool ) ∋ ( ( λ x15380 -> d1057 ) ) ) $ ( d620 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15390 -> d326 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15400 -> d446 ) ) ) $ ( d100 )
        d1542 : ( ( Set -> Set ) ∋ ( ( λ x15450 -> ( ( Set -> Set ) ∋ ( ( λ x15460 -> if true then x15460 else Bool ) ) ) $ ( x15450 ) ) ) ) $ ( if true then Bool else Bool )
        d1542 = if ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> x15430 ) ) ) $ ( d1326 ) then if d428 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x15440 -> x15440 ) ) ) $ ( d141 )
        d1547 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15490 -> Bool ) ) ) $ ( Bool )
        d1547 = ( ( Bool -> Bool ) ∋ ( ( λ x15480 -> if false then d223 else false ) ) ) $ ( if d335 then false else d106 )
        d1550 : ( ( Set -> Set ) ∋ ( ( λ x15530 -> if true then x15530 else x15530 ) ) ) $ ( if true then Bool else Bool )
        d1550 = ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> if x15510 then x15510 else d1389 ) ) ) $ ( x15510 ) ) ) ) $ ( if d288 then true else d1511 )
        d1554 : if true then ( ( Set -> Set ) ∋ ( ( λ x15570 -> x15570 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15580 -> x15580 ) ) ) $ ( Bool )
        d1554 = if ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> d207 ) ) ) $ ( true ) then if d1022 then d589 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> x15560 ) ) ) $ ( d75 )
        d1559 : if false then ( ( Set -> Set ) ∋ ( ( λ x15610 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1559 = if ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> true ) ) ) $ ( true ) then if false then false else true else if false then d356 else d30
        d1562 : ( ( Set -> Set ) ∋ ( ( λ x15640 -> if true then Bool else x15640 ) ) ) $ ( if true then Bool else Bool )
        d1562 = if ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> false ) ) ) $ ( d154 ) then if d374 then d779 else d1215 else if true then true else false
        d1565 : ( ( Set -> Set ) ∋ ( ( λ x15670 -> if true then Bool else x15670 ) ) ) $ ( if true then Bool else Bool )
        d1565 = ( ( Bool -> Bool ) ∋ ( ( λ x15660 -> if d103 then d44 else d1349 ) ) ) $ ( if d1437 then d362 else false )
        d1568 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1568 = if ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> d466 ) ) ) $ ( d1361 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15700 -> false ) ) ) $ ( false ) else if d1066 then true else true
        d1571 : ( ( Set -> Set ) ∋ ( ( λ x15750 -> ( ( Set -> Set ) ∋ ( ( λ x15760 -> if false then x15750 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1571 = if ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> x15720 ) ) ) $ ( d1103 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> x15730 ) ) ) $ ( d257 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15740 -> x15740 ) ) ) $ ( d667 )
        d1577 : ( ( Set -> Set ) ∋ ( ( λ x15780 -> ( ( Set -> Set ) ∋ ( ( λ x15790 -> if false then Bool else Bool ) ) ) $ ( x15780 ) ) ) ) $ ( if false then Bool else Bool )
        d1577 = if if d1389 then false else true then if true then true else d322 else if d1163 then false else d30
        d1580 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1580 = if ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> x15810 ) ) ) $ ( d393 ) then if d1537 then true else false else if false then d1371 else d947
        d1582 : if false then ( ( Set -> Set ) ∋ ( ( λ x15840 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1582 = ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> if d667 then true else true ) ) ) $ ( if d866 then true else true )
        d1585 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1585 = if ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> x15860 ) ) ) $ ( d342 ) then if true then d415 else d374 else if true then d1266 else d1306
        d1587 : ( ( Set -> Set ) ∋ ( ( λ x15880 -> ( ( Set -> Set ) ∋ ( ( λ x15890 -> if true then Bool else x15890 ) ) ) $ ( x15880 ) ) ) ) $ ( if false then Bool else Bool )
        d1587 = if if true then false else false then if d1522 then false else d976 else if d647 then d1389 else d931
        d1590 : if false then ( ( Set -> Set ) ∋ ( ( λ x15930 -> x15930 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1590 = if ( ( Bool -> Bool ) ∋ ( ( λ x15910 -> d736 ) ) ) $ ( false ) then if d439 then d169 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> x15920 ) ) ) $ ( d1136 )
        d1594 : ( ( Set -> Set ) ∋ ( ( λ x15980 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1594 = if ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> x15950 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> x15960 ) ) ) $ ( d269 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15970 -> x15970 ) ) ) $ ( d1568 )
        d1599 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1599 = ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> if false then d736 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d912 else true )
        d1602 : if true then ( ( Set -> Set ) ∋ ( ( λ x16060 -> x16060 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16070 -> x16070 ) ) ) $ ( Bool )
        d1602 = if ( ( Bool -> Bool ) ∋ ( ( λ x16030 -> x16030 ) ) ) $ ( d852 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16050 -> d426 ) ) ) $ ( false )
        d1608 : if true then ( ( Set -> Set ) ∋ ( ( λ x16100 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1608 = if if d1399 then true else false then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> false ) ) ) $ ( d89 )
        d1611 : if true then ( ( Set -> Set ) ∋ ( ( λ x16130 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16140 -> Bool ) ) ) $ ( Bool )
        d1611 = ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> if x16120 then d265 else d1353 ) ) ) $ ( if d1433 then d574 else false )
        d1615 : if true then ( ( Set -> Set ) ∋ ( ( λ x16170 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16180 -> x16180 ) ) ) $ ( Bool )
        d1615 = if if true then d383 else true then ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> x16160 ) ) ) $ ( d432 ) else if d1533 then d183 else true
        d1619 : ( ( Set -> Set ) ∋ ( ( λ x16220 -> if false then Bool else x16220 ) ) ) $ ( if true then Bool else Bool )
        d1619 = if if d98 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x16200 -> x16200 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> x16210 ) ) ) $ ( false )
        d1623 : ( ( Set -> Set ) ∋ ( ( λ x16260 -> if true then x16260 else x16260 ) ) ) $ ( if true then Bool else Bool )
        d1623 = ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> if d501 then false else false ) ) ) $ ( false ) ) ) ) $ ( if true then d686 else d705 )
        d1627 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1627 = if if d751 then d230 else true then ( ( Bool -> Bool ) ∋ ( ( λ x16280 -> d34 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> true ) ) ) $ ( d747 )
        d1630 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16320 -> Bool ) ) ) $ ( Bool )
        d1630 = if if d471 then false else d532 then if d866 then true else d979 else ( ( Bool -> Bool ) ∋ ( ( λ x16310 -> x16310 ) ) ) $ ( d418 )
        d1633 : ( ( Set -> Set ) ∋ ( ( λ x16350 -> if false then x16350 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1633 = ( ( Bool -> Bool ) ∋ ( ( λ x16340 -> if x16340 then d160 else d48 ) ) ) $ ( if true then d493 else false )
        d1636 : if true then ( ( Set -> Set ) ∋ ( ( λ x16400 -> x16400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16410 -> x16410 ) ) ) $ ( Bool )
        d1636 = if ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> x16370 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16380 -> d1294 ) ) ) $ ( d1139 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> x16390 ) ) ) $ ( false )
        d1642 : ( ( Set -> Set ) ∋ ( ( λ x16450 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1642 = ( ( Bool -> Bool ) ∋ ( ( λ x16430 -> ( ( Bool -> Bool ) ∋ ( ( λ x16440 -> if d163 then false else d960 ) ) ) $ ( x16430 ) ) ) ) $ ( if d234 then true else false )
        d1646 : if true then ( ( Set -> Set ) ∋ ( ( λ x16480 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1646 = ( ( Bool -> Bool ) ∋ ( ( λ x16470 -> if x16470 then false else d566 ) ) ) $ ( if d44 then false else false )
        d1649 : ( ( Set -> Set ) ∋ ( ( λ x16530 -> if false then Bool else x16530 ) ) ) $ ( if false then Bool else Bool )
        d1649 = if ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> d98 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> d1183 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16520 -> x16520 ) ) ) $ ( d493 )
        d1654 : ( ( Set -> Set ) ∋ ( ( λ x16570 -> if true then Bool else x16570 ) ) ) $ ( if false then Bool else Bool )
        d1654 = if ( ( Bool -> Bool ) ∋ ( ( λ x16550 -> d488 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16560 -> d690 ) ) ) $ ( d879 ) else if true then true else true
        d1658 : if true then ( ( Set -> Set ) ∋ ( ( λ x16610 -> x16610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16620 -> Bool ) ) ) $ ( Bool )
        d1658 = ( ( Bool -> Bool ) ∋ ( ( λ x16590 -> ( ( Bool -> Bool ) ∋ ( ( λ x16600 -> if x16600 then true else d731 ) ) ) $ ( d404 ) ) ) ) $ ( if d920 then d705 else d812 )
        d1663 : ( ( Set -> Set ) ∋ ( ( λ x16650 -> if false then x16650 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1663 = ( ( Bool -> Bool ) ∋ ( ( λ x16640 -> if d374 then x16640 else x16640 ) ) ) $ ( if false then d366 else d784 )
        d1666 : ( ( Set -> Set ) ∋ ( ( λ x16680 -> if false then x16680 else x16680 ) ) ) $ ( if false then Bool else Bool )
        d1666 = if ( ( Bool -> Bool ) ∋ ( ( λ x16670 -> d274 ) ) ) $ ( d954 ) then if d169 then false else true else if true then true else d1421
        d1669 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1669 = ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> if x16700 then x16700 else true ) ) ) $ ( if true then d702 else d257 )
        d1671 : if true then ( ( Set -> Set ) ∋ ( ( λ x16740 -> x16740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16750 -> Bool ) ) ) $ ( Bool )
        d1671 = ( ( Bool -> Bool ) ∋ ( ( λ x16720 -> ( ( Bool -> Bool ) ∋ ( ( λ x16730 -> if false then d478 else d1533 ) ) ) $ ( x16720 ) ) ) ) $ ( if d1407 then d462 else false )
        d1676 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16780 -> Bool ) ) ) $ ( Bool )
        d1676 = ( ( Bool -> Bool ) ∋ ( ( λ x16770 -> if x16770 then x16770 else d1399 ) ) ) $ ( if d179 then d1658 else false )
        d1679 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1679 = if if d566 then d634 else d747 then ( ( Bool -> Bool ) ∋ ( ( λ x16800 -> true ) ) ) $ ( false ) else if d1565 then true else d570