module Decls150Test1  where
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
        d1 : if false then ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1 = if if false then false else false then if true then false else true else if false then false else true
        d3 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x60 else x60 ) ) ) $ ( if true then Bool else Bool )
        d3 = if ( ( Bool -> Bool ) ∋ ( ( λ x40 -> true ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d1 ) ) ) $ ( true ) else if d1 then d1 else true
        d7 : if false then ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if true then false else x80 ) ) ) $ ( if d3 then false else d3 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else Bool ) ) ) $ ( x130 ) ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if x120 then x120 else x120 ) ) ) $ ( if d7 then d7 else true )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d11 then d11 else d11 ) ) ) $ ( if d1 then false else d3 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d3 ) ) ) $ ( false ) then if d7 then false else true else if d7 then false else false
        d21 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then x240 else x230 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d21 = if ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d3 ) ) ) $ ( d18 ) then if d18 then false else false else if false then d3 else true
        d25 : ( ( Set -> Set ) ∋ ( ( λ x280 -> if true then x280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d25 = if ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x270 -> true ) ) ) $ ( false ) else if d1 then false else true
        d29 : if true then if true then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if x300 then x300 else x300 ) ) ) $ ( if false then d18 else true )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then x330 else x330 ) ) ) $ ( if false then Bool else Bool )
        d31 = if if d1 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( d18 ) else if d29 then d18 else false
        d34 : ( ( Set -> Set ) ∋ ( ( λ x370 -> if false then x370 else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = if ( ( Bool -> Bool ) ∋ ( ( λ x350 -> d25 ) ) ) $ ( d3 ) then ( ( Bool -> Bool ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( d29 ) else if d25 then false else true
        d38 : ( ( Set -> Set ) ∋ ( ( λ x410 -> if true then Bool else x410 ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x390 then d18 else d15 ) ) ) $ ( x390 ) ) ) ) $ ( if false then true else d34 )
        d42 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if x440 then false else x440 ) ) ) $ ( true ) ) ) ) $ ( if true then d3 else d18 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then Bool else x500 ) ) ) $ ( x490 ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if x470 then x470 else true ) ) ) $ ( d38 ) ) ) ) $ ( if d21 then d21 else d7 )
        d51 : if true then ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if d29 then d11 else x520 ) ) ) $ ( false ) ) ) ) $ ( if d29 then d3 else true )
        d55 : if true then ( ( Set -> Set ) ∋ ( ( λ x570 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if true then d29 else d31 ) ) ) $ ( if d15 then false else d1 )
        d58 : if false then ( ( Set -> Set ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x630 -> Bool ) ) ) $ ( Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> false ) ) ) $ ( d42 ) then ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( d34 ) else ( ( Bool -> Bool ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( d25 )
        d64 : if false then if true then Bool else Bool else if false then Bool else Bool
        d64 = if if false then d25 else false then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> d58 ) ) ) $ ( d46 ) else ( ( Bool -> Bool ) ∋ ( ( λ x660 -> d55 ) ) ) $ ( d38 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if true then x700 else x700 ) ) ) $ ( if true then Bool else Bool )
        d67 = if ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d25 ) ) ) $ ( d18 ) then ( ( Bool -> Bool ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( false ) else if true then d46 else d31
        d71 : if false then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if d58 then d31 else true ) ) ) $ ( if true then true else false )
        d73 : if false then ( ( Set -> Set ) ∋ ( ( λ x750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( Bool )
        d73 = if if d46 then d3 else d7 then ( ( Bool -> Bool ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( d15 ) else if d11 then true else d7
        d77 : ( ( Set -> Set ) ∋ ( ( λ x790 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d77 = if if false then d7 else true then if false then true else d21 else ( ( Bool -> Bool ) ∋ ( ( λ x780 -> true ) ) ) $ ( d34 )
        d80 : if false then ( ( Set -> Set ) ∋ ( ( λ x830 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if x810 then d21 else x820 ) ) ) $ ( x810 ) ) ) ) $ ( if d7 then true else d42 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then x860 else x860 ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if true then d67 else x850 ) ) ) $ ( if false then false else true )
        d87 : if true then ( ( Set -> Set ) ∋ ( ( λ x900 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d87 = if if d34 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x880 -> d38 ) ) ) $ ( d71 ) else ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( d51 )
        d91 : if true then ( ( Set -> Set ) ∋ ( ( λ x940 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d91 = if ( ( Bool -> Bool ) ∋ ( ( λ x920 -> d38 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d29 ) ) ) $ ( d64 ) else if d34 then false else true
        d95 : if true then ( ( Set -> Set ) ∋ ( ( λ x970 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( Bool )
        d95 = if if d87 then d55 else d73 then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x960 -> d67 ) ) ) $ ( false )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> if true then x1020 else x1020 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if x1000 then true else x1000 ) ) ) $ ( if d25 then false else d91 )
        d103 : if true then if false then Bool else Bool else if false then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d87 then x1040 else d51 ) ) ) $ ( d84 ) ) ) ) $ ( if true then true else d71 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if false then x1080 else Bool ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if d99 then x1070 else true ) ) ) $ ( if true then d25 else false )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if x1110 then x1110 else d84 ) ) ) $ ( d31 ) ) ) ) $ ( if true then true else d25 )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> if true then x1170 else x1170 ) ) ) $ ( if true then Bool else Bool )
        d113 = if ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d38 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> d3 ) ) ) $ ( d106 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> false ) ) ) $ ( false )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if true then x1200 else x1200 ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if false then true else x1190 ) ) ) $ ( if d11 then false else true )
        d121 : if false then if false then Bool else Bool else if true then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if d31 then true else d34 ) ) ) $ ( if true then false else d1 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1280 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d123 = if ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> d31 ) ) ) $ ( d25 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> false ) ) ) $ ( false )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> if true then Bool else x1320 ) ) ) $ ( if true then Bool else Bool )
        d129 = if ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d11 ) ) ) $ ( d18 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> false ) ) ) $ ( d58 ) else if d113 then false else false
        d133 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> if true then x1360 else x1360 ) ) ) $ ( if false then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if d42 then true else d121 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d137 : if false then ( ( Set -> Set ) ∋ ( ( λ x1390 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if true then x1380 else false ) ) ) $ ( if d118 then false else false )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then Bool else x1440 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if false then false else true ) ) ) $ ( if d129 then d71 else d118 )
        d145 : if false then ( ( Set -> Set ) ∋ ( ( λ x1480 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d145 = if ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> false ) ) ) $ ( d38 ) then if d31 then d133 else d129 else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d113 ) ) ) $ ( d103 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then x1510 else x1520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> d1 ) ) ) $ ( d129 ) then if d58 then d64 else true else if d77 then false else d77
        d153 : if false then if true then Bool else Bool else if false then Bool else Bool
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d64 then d67 else d18 ) ) ) $ ( x1540 ) ) ) ) $ ( if d42 then d73 else d21 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> if true then x1580 else Bool ) ) ) $ ( if false then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> if x1570 then x1570 else false ) ) ) $ ( if d80 then false else d42 )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then Bool else x1620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d159 = if if true then d58 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> x1600 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> true ) ) ) $ ( false )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then Bool else x1670 ) ) ) $ ( if false then Bool else Bool )
        d164 = if ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( d55 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> true ) ) ) $ ( false ) else if d145 then d149 else d11
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> if false then x1690 else Bool ) ) ) $ ( if false then Bool else Bool )
        d168 = if if true then false else true then if d118 then d118 else true else if d34 then d42 else false
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> if true then x1730 else x1730 ) ) ) $ ( if false then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> if d80 then false else d34 ) ) ) $ ( true ) ) ) ) $ ( if d1 then d21 else true )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> ( ( Set -> Set ) ∋ ( ( λ x1790 -> if true then x1780 else x1780 ) ) ) $ ( x1780 ) ) ) ) $ ( if false then Bool else Bool )
        d174 = if ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( d46 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> d21 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> false ) ) ) $ ( true )
        d180 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1830 -> Bool ) ) ) $ ( Bool )
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if x1810 then false else false ) ) ) $ ( true ) ) ) ) $ ( if false then d73 else true )
        d184 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1860 -> x1860 ) ) ) $ ( Bool )
        d184 = if if d71 then d34 else d55 then ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> x1850 ) ) ) $ ( d133 ) else if true then d67 else false
        d187 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1900 -> x1900 ) ) ) $ ( Bool )
        d187 = if if d153 then d55 else d184 then ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> d106 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> false ) ) ) $ ( d67 )
        d191 : if false then ( ( Set -> Set ) ∋ ( ( λ x1930 -> x1930 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1940 -> Bool ) ) ) $ ( Bool )
        d191 = if if d106 then d129 else d42 then ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> x1920 ) ) ) $ ( d64 ) else if false then d31 else d109
        d195 : ( ( Set -> Set ) ∋ ( ( λ x1990 -> ( ( Set -> Set ) ∋ ( ( λ x2000 -> if false then Bool else x2000 ) ) ) $ ( x1990 ) ) ) ) $ ( if false then Bool else Bool )
        d195 = if ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> true ) ) ) $ ( d191 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> d170 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( false )
        d201 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then Bool else Bool ) ) ) $ ( x2040 ) ) ) ) $ ( if true then Bool else Bool )
        d201 = if if false then true else d137 then ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> x2020 ) ) ) $ ( d25 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> d141 ) ) ) $ ( d145 )
        d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> ( ( Set -> Set ) ∋ ( ( λ x2090 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d206 = ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> if x2070 then x2070 else d159 ) ) ) $ ( if false then true else true )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> ( ( Set -> Set ) ∋ ( ( λ x2130 -> if true then Bool else Bool ) ) ) $ ( x2120 ) ) ) ) $ ( if true then Bool else Bool )
        d210 = ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> if false then x2110 else d46 ) ) ) $ ( if d141 then true else d113 )
        d214 : ( ( Set -> Set ) ∋ ( ( λ x2160 -> if false then Bool else x2160 ) ) ) $ ( if false then Bool else Bool )
        d214 = if if false then false else true then if d159 then d145 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> x2150 ) ) ) $ ( true )
        d217 : if true then ( ( Set -> Set ) ∋ ( ( λ x2180 -> x2180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2190 -> Bool ) ) ) $ ( Bool )
        d217 = if if false then d73 else d156 then if d159 then d99 else d42 else if false then true else false
        d220 : if false then if false then Bool else Bool else if true then Bool else Bool
        d220 = ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> if d191 then false else true ) ) ) $ ( if d133 then d191 else false )
        d222 : if true then ( ( Set -> Set ) ∋ ( ( λ x2240 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2250 -> Bool ) ) ) $ ( Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> if x2230 then d187 else x2230 ) ) ) $ ( if true then d206 else true )
        d226 : if false then ( ( Set -> Set ) ∋ ( ( λ x2280 -> x2280 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> if d7 then d11 else true ) ) ) $ ( if d195 then d38 else d156 )
        d229 : if true then ( ( Set -> Set ) ∋ ( ( λ x2310 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d229 = if if d87 then d133 else true then if true then true else d31 else ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> false ) ) ) $ ( d58 )
        d232 : ( ( Set -> Set ) ∋ ( ( λ x2340 -> ( ( Set -> Set ) ∋ ( ( λ x2350 -> if true then Bool else x2340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d232 = if if false then d38 else d71 then ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> false ) ) ) $ ( d164 ) else if false then d38 else d159
        d236 : if false then ( ( Set -> Set ) ∋ ( ( λ x2390 -> x2390 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d236 = ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> if d164 then false else x2380 ) ) ) $ ( x2370 ) ) ) ) $ ( if false then false else true )
        d240 : if true then if false then Bool else Bool else if false then Bool else Bool
        d240 = if if true then d18 else true then if d73 then true else true else if false then d229 else d168
        d241 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> if false then Bool else x2440 ) ) ) $ ( if false then Bool else Bool )
        d241 = ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if d29 then d109 else x2430 ) ) ) $ ( true ) ) ) ) $ ( if true then d38 else d232 )
        d245 : if false then ( ( Set -> Set ) ∋ ( ( λ x2470 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2480 -> x2480 ) ) ) $ ( Bool )
        d245 = if if false then d95 else false then if true then d103 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> x2460 ) ) ) $ ( true )
        d249 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2510 -> Bool ) ) ) $ ( Bool )
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if d15 then d201 else x2500 ) ) ) $ ( if true then d95 else false )
        d252 : if false then if true then Bool else Bool else if true then Bool else Bool
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> ( ( Bool -> Bool ) ∋ ( ( λ x2540 -> if d46 then true else true ) ) ) $ ( x2530 ) ) ) ) $ ( if false then d99 else d174 )
        d255 : if false then ( ( Set -> Set ) ∋ ( ( λ x2580 -> x2580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> if d236 then false else d170 ) ) ) $ ( d240 ) ) ) ) $ ( if d191 then d232 else true )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> if false then x2620 else x2620 ) ) ) $ ( if false then Bool else Bool )
        d259 = if ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> false ) ) ) $ ( true ) then if d170 then true else d174 else ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> true ) ) ) $ ( d55 )
        d263 : ( ( Set -> Set ) ∋ ( ( λ x2650 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if false then d67 else x2640 ) ) ) $ ( if d226 then true else false )
        d266 : if false then ( ( Set -> Set ) ∋ ( ( λ x2690 -> x2690 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2700 -> x2700 ) ) ) $ ( Bool )
        d266 = if ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> d51 ) ) ) $ ( d1 ) then if true then d174 else d7 else ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> true ) ) ) $ ( true )
        d271 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2740 -> x2740 ) ) ) $ ( Bool )
        d271 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> d249 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> false ) ) ) $ ( d106 )
        d275 : if false then ( ( Set -> Set ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d275 = if if d191 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> true ) ) ) $ ( true )
        d279 : ( ( Set -> Set ) ∋ ( ( λ x2820 -> ( ( Set -> Set ) ∋ ( ( λ x2830 -> if true then Bool else x2830 ) ) ) $ ( x2820 ) ) ) ) $ ( if false then Bool else Bool )
        d279 = if if false then d222 else d153 then ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> x2800 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> d109 ) ) ) $ ( d84 )
        d284 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2870 -> Bool ) ) ) $ ( Bool )
        d284 = ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> if true then d18 else x2850 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d241 )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x2900 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d288 = if if d275 then d184 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> d145 ) ) ) $ ( d191 ) else if true then false else false
        d291 : if true then ( ( Set -> Set ) ∋ ( ( λ x2940 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d291 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> d129 ) ) ) $ ( d84 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> d206 ) ) ) $ ( true )
        d295 : ( ( Set -> Set ) ∋ ( ( λ x2980 -> if true then Bool else x2980 ) ) ) $ ( if true then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> if d217 then false else x2960 ) ) ) $ ( true ) ) ) ) $ ( if d226 then true else d271 )
        d299 : if false then ( ( Set -> Set ) ∋ ( ( λ x3020 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d299 = if if d241 then d25 else d91 then ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> x3000 ) ) ) $ ( d109 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> x3010 ) ) ) $ ( d42 )
        d303 : if true then ( ( Set -> Set ) ∋ ( ( λ x3050 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> if d191 then true else true ) ) ) $ ( if d103 then d58 else d103 )
        d306 : if true then ( ( Set -> Set ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d306 = if ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> x3070 ) ) ) $ ( d3 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> false ) ) ) $ ( d229 ) else if false then true else true
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> ( ( Set -> Set ) ∋ ( ( λ x3140 -> if true then x3140 else x3140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d310 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> false ) ) ) $ ( d106 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> d103 ) ) ) $ ( false )
        d315 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d315 = ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> if x3170 then d71 else d310 ) ) ) $ ( false ) ) ) ) $ ( if false then d129 else d275 )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> ( ( Set -> Set ) ∋ ( ( λ x3220 -> if false then x3220 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d319 = ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> if true then d187 else false ) ) ) $ ( if true then d137 else d91 )
        d323 : if true then if false then Bool else Bool else if false then Bool else Bool
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> if d118 then d240 else true ) ) ) $ ( d303 ) ) ) ) $ ( if d153 then d67 else d319 )
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then x3300 else Bool ) ) ) $ ( if true then Bool else Bool )
        d326 = if ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> x3290 ) ) ) $ ( true )
        d331 : ( ( Set -> Set ) ∋ ( ( λ x3330 -> ( ( Set -> Set ) ∋ ( ( λ x3340 -> if true then x3330 else x3340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d331 = if if true then false else false then if d229 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> d187 ) ) ) $ ( d245 )
        d335 : if true then ( ( Set -> Set ) ∋ ( ( λ x3380 -> x3380 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if true then x3360 else x3360 ) ) ) $ ( d87 ) ) ) ) $ ( if d187 then d103 else true )
        d339 : if false then ( ( Set -> Set ) ∋ ( ( λ x3400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3410 -> x3410 ) ) ) $ ( Bool )
        d339 = if if true then d310 else false then if d174 then false else true else if d58 then true else true
        d342 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3440 -> Bool ) ) ) $ ( Bool )
        d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if false then x3430 else true ) ) ) $ ( if true then false else d255 )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> if true then Bool else x3460 ) ) ) $ ( if false then Bool else Bool )
        d345 = if if false then d31 else d64 then if d103 then true else d214 else if false then d95 else d299
        d347 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> ( ( Set -> Set ) ∋ ( ( λ x3510 -> if true then Bool else x3500 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d347 = ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if false then d149 else true ) ) ) $ ( d145 ) ) ) ) $ ( if d18 then true else true )
        d352 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> ( ( Set -> Set ) ∋ ( ( λ x3550 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> if true then d342 else true ) ) ) $ ( if d187 then true else true )
        d356 : if false then ( ( Set -> Set ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x3570 -> if false then d331 else x3570 ) ) ) $ ( if false then true else false )
        d359 : ( ( Set -> Set ) ∋ ( ( λ x3620 -> ( ( Set -> Set ) ∋ ( ( λ x3630 -> if true then Bool else x3620 ) ) ) $ ( x3620 ) ) ) ) $ ( if false then Bool else Bool )
        d359 = ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> if d222 then x3610 else true ) ) ) $ ( d51 ) ) ) ) $ ( if false then d288 else d133 )
        d364 : if true then if false then Bool else Bool else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> if x3650 then true else x3650 ) ) ) $ ( true ) ) ) ) $ ( if true then d103 else d339 )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x3690 -> if true then Bool else x3690 ) ) ) $ ( if false then Bool else Bool )
        d367 = if if d29 then d121 else d95 then ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> false ) ) ) $ ( false ) else if d220 then d306 else d87
        d370 : ( ( Set -> Set ) ∋ ( ( λ x3720 -> if false then x3720 else x3720 ) ) ) $ ( if true then Bool else Bool )
        d370 = ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> if x3710 then d359 else x3710 ) ) ) $ ( if false then false else false )
        d373 : ( ( Set -> Set ) ∋ ( ( λ x3760 -> ( ( Set -> Set ) ∋ ( ( λ x3770 -> if false then x3760 else x3770 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d373 = ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> if x3750 then x3740 else false ) ) ) $ ( d174 ) ) ) ) $ ( if true then false else d214 )
        d378 : if true then if true then Bool else Bool else if false then Bool else Bool
        d378 = if if false then d226 else d58 then if d288 then true else d229 else ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> false ) ) ) $ ( true )
        d380 : if true then if false then Bool else Bool else if true then Bool else Bool
        d380 = if if false then d359 else false then if false then true else false else if d170 then d103 else true
        d381 : ( ( Set -> Set ) ∋ ( ( λ x3830 -> if true then x3830 else Bool ) ) ) $ ( if false then Bool else Bool )
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> if x3820 then false else true ) ) ) $ ( if d137 then false else true )
        d384 : if true then if false then Bool else Bool else if false then Bool else Bool
        d384 = if if true then d240 else d34 then ( ( Bool -> Bool ) ∋ ( ( λ x3850 -> d263 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> x3860 ) ) ) $ ( d38 )
        d387 : ( ( Set -> Set ) ∋ ( ( λ x3900 -> ( ( Set -> Set ) ∋ ( ( λ x3910 -> if true then x3910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d387 = ( ( Bool -> Bool ) ∋ ( ( λ x3880 -> ( ( Bool -> Bool ) ∋ ( ( λ x3890 -> if x3890 then x3880 else x3880 ) ) ) $ ( x3880 ) ) ) ) $ ( if d91 then d87 else true )
        d392 : ( ( Set -> Set ) ∋ ( ( λ x3940 -> if true then x3940 else x3940 ) ) ) $ ( if false then Bool else Bool )
        d392 = if ( ( Bool -> Bool ) ∋ ( ( λ x3930 -> d315 ) ) ) $ ( true ) then if d252 then false else false else if d306 then false else d195
        d395 : ( ( Set -> Set ) ∋ ( ( λ x3980 -> if false then x3980 else Bool ) ) ) $ ( if false then Bool else Bool )
        d395 = ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> if x3970 then d315 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d217 else d18 )
        d399 : if false then if true then Bool else Bool else if false then Bool else Bool
        d399 = if if d156 then true else true then if true then d137 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> x4000 ) ) ) $ ( d34 )
        d401 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> ( ( Set -> Set ) ∋ ( ( λ x4040 -> if true then Bool else x4040 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d401 = ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> if d266 then d164 else x4020 ) ) ) $ ( if true then d71 else true )
        d405 : ( ( Set -> Set ) ∋ ( ( λ x4080 -> ( ( Set -> Set ) ∋ ( ( λ x4090 -> if true then Bool else x4090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if x4060 then x4060 else x4060 ) ) ) $ ( x4060 ) ) ) ) $ ( if true then d21 else true )
        d410 : if false then ( ( Set -> Set ) ∋ ( ( λ x4120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4130 -> Bool ) ) ) $ ( Bool )
        d410 = if if true then d55 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> true ) ) ) $ ( d252 ) else if false then d29 else true
        d414 : if false then if true then Bool else Bool else if false then Bool else Bool
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> if x4150 then false else d67 ) ) ) $ ( if false then true else d405 )
        d416 : if false then if true then Bool else Bool else if false then Bool else Bool
        d416 = if ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> x4170 ) ) ) $ ( d295 ) then if d118 then false else true else if d73 then false else d255
        d418 : if true then ( ( Set -> Set ) ∋ ( ( λ x4210 -> x4210 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4220 -> Bool ) ) ) $ ( Bool )
        d418 = if if d315 then d153 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> x4190 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( true )
        d423 : ( ( Set -> Set ) ∋ ( ( λ x4270 -> ( ( Set -> Set ) ∋ ( ( λ x4280 -> if true then Bool else x4270 ) ) ) $ ( x4270 ) ) ) ) $ ( if true then Bool else Bool )
        d423 = if ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> d370 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4250 -> d46 ) ) ) $ ( d201 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4260 -> false ) ) ) $ ( d345 )
        d429 : if false then if false then Bool else Bool else if true then Bool else Bool
        d429 = if if d129 then d356 else d367 then ( ( Bool -> Bool ) ∋ ( ( λ x4300 -> d187 ) ) ) $ ( false ) else if d187 then true else d180
        d431 : if false then ( ( Set -> Set ) ∋ ( ( λ x4340 -> x4340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d431 = if ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> d271 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> x4330 ) ) ) $ ( d252 ) else if d401 then d339 else d80
        d435 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4380 -> Bool ) ) ) $ ( Bool )
        d435 = if if d71 then d220 else d323 then ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> x4360 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> false ) ) ) $ ( false )
        d439 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4410 -> Bool ) ) ) $ ( Bool )
        d439 = ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> if true then true else d306 ) ) ) $ ( if false then d217 else d342 )
        d442 : if true then ( ( Set -> Set ) ∋ ( ( λ x4440 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x4430 -> if x4430 then false else x4430 ) ) ) $ ( if d255 then d331 else true )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> ( ( Set -> Set ) ∋ ( ( λ x4490 -> if false then x4480 else x4480 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> if false then x4470 else x4470 ) ) ) $ ( x4460 ) ) ) ) $ ( if true then d184 else true )
        d450 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4520 -> Bool ) ) ) $ ( Bool )
        d450 = if if d291 then false else d271 then if true then true else d335 else ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> x4510 ) ) ) $ ( d245 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x4540 -> ( ( Set -> Set ) ∋ ( ( λ x4550 -> if true then x4540 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d453 = if if false then true else true then if true then false else d141 else if d315 then d217 else false
        d456 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4590 -> Bool ) ) ) $ ( Bool )
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> if d164 then d387 else x4580 ) ) ) $ ( true ) ) ) ) $ ( if d291 then d435 else d137 )
        d460 : if true then ( ( Set -> Set ) ∋ ( ( λ x4630 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4640 -> Bool ) ) ) $ ( Bool )
        d460 = ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> if x4610 then true else d439 ) ) ) $ ( x4610 ) ) ) ) $ ( if d359 then false else d347 )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x4670 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x4660 -> if x4660 then d156 else x4660 ) ) ) $ ( if true then d378 else false )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x4700 -> ( ( Set -> Set ) ∋ ( ( λ x4710 -> if true then Bool else x4700 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> if x4690 then x4690 else false ) ) ) $ ( if true then true else true )
        d472 : ( ( Set -> Set ) ∋ ( ( λ x4750 -> if true then x4750 else x4750 ) ) ) $ ( if true then Bool else Bool )
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x4730 -> ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> if true then false else true ) ) ) $ ( x4730 ) ) ) ) $ ( if d255 then d315 else d303 )
        d476 : ( ( Set -> Set ) ∋ ( ( λ x4800 -> ( ( Set -> Set ) ∋ ( ( λ x4810 -> if false then Bool else Bool ) ) ) $ ( x4800 ) ) ) ) $ ( if true then Bool else Bool )
        d476 = if ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> x4770 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> false ) ) ) $ ( d395 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4790 -> x4790 ) ) ) $ ( d429 )
        d482 : ( ( Set -> Set ) ∋ ( ( λ x4850 -> if false then Bool else x4850 ) ) ) $ ( if false then Bool else Bool )
        d482 = if ( ( Bool -> Bool ) ∋ ( ( λ x4830 -> x4830 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> d319 ) ) ) $ ( true ) else if false then true else false
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4880 -> if false then x4880 else Bool ) ) ) $ ( if true then Bool else Bool )
        d486 = ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> if true then d405 else false ) ) ) $ ( if false then d331 else false )
        d489 : if true then ( ( Set -> Set ) ∋ ( ( λ x4920 -> x4920 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d489 = ( ( Bool -> Bool ) ∋ ( ( λ x4900 -> ( ( Bool -> Bool ) ∋ ( ( λ x4910 -> if false then x4900 else d29 ) ) ) $ ( x4900 ) ) ) ) $ ( if true then d271 else true )
        d493 : ( ( Set -> Set ) ∋ ( ( λ x4950 -> if false then x4950 else Bool ) ) ) $ ( if false then Bool else Bool )
        d493 = ( ( Bool -> Bool ) ∋ ( ( λ x4940 -> if d46 then x4940 else d414 ) ) ) $ ( if d164 then d71 else false )
        d496 : ( ( Set -> Set ) ∋ ( ( λ x5000 -> ( ( Set -> Set ) ∋ ( ( λ x5010 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d496 = if ( ( Bool -> Bool ) ∋ ( ( λ x4970 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4980 -> d42 ) ) ) $ ( d266 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> d168 ) ) ) $ ( d476 )
        d502 : if true then if true then Bool else Bool else if true then Bool else Bool
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> if false then x5030 else true ) ) ) $ ( if d291 then d482 else d184 )
        d504 : if false then ( ( Set -> Set ) ∋ ( ( λ x5070 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5080 -> x5080 ) ) ) $ ( Bool )
        d504 = ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if d414 then d55 else d210 ) ) ) $ ( x5050 ) ) ) ) $ ( if false then true else d156 )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x5110 -> ( ( Set -> Set ) ∋ ( ( λ x5120 -> if true then x5120 else Bool ) ) ) $ ( x5110 ) ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> if true then true else true ) ) ) $ ( if false then d439 else true )
        d513 : if false then ( ( Set -> Set ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5160 -> Bool ) ) ) $ ( Bool )
        d513 = ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> if false then d275 else true ) ) ) $ ( if true then false else d156 )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> if false then Bool else x5190 ) ) ) $ ( if true then Bool else Bool )
        d517 = if if d342 then d123 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> x5180 ) ) ) $ ( true ) else if false then d275 else false
        d520 : if true then if false then Bool else Bool else if true then Bool else Bool
        d520 = ( ( Bool -> Bool ) ∋ ( ( λ x5210 -> if x5210 then d319 else x5210 ) ) ) $ ( if d381 then false else d345 )
        d522 : ( ( Set -> Set ) ∋ ( ( λ x5240 -> if false then x5240 else Bool ) ) ) $ ( if false then Bool else Bool )
        d522 = ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if true then false else true ) ) ) $ ( if false then true else d520 )
        d525 : ( ( Set -> Set ) ∋ ( ( λ x5260 -> if true then x5260 else x5260 ) ) ) $ ( if true then Bool else Bool )
        d525 = if if d291 then true else true then if false then d121 else d21 else if d191 then d445 else true
        d527 : ( ( Set -> Set ) ∋ ( ( λ x5290 -> ( ( Set -> Set ) ∋ ( ( λ x5300 -> if true then Bool else x5300 ) ) ) $ ( x5290 ) ) ) ) $ ( if false then Bool else Bool )
        d527 = ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> if x5280 then d482 else true ) ) ) $ ( if d295 then false else false )
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> ( ( Set -> Set ) ∋ ( ( λ x5340 -> if false then x5330 else x5330 ) ) ) $ ( x5330 ) ) ) ) $ ( if true then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if false then d509 else x5320 ) ) ) $ ( if true then true else d315 )
        d535 : if true then ( ( Set -> Set ) ∋ ( ( λ x5370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5380 -> Bool ) ) ) $ ( Bool )
        d535 = ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> if x5360 then x5360 else false ) ) ) $ ( if d58 then d25 else d206 )
        d539 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5420 -> x5420 ) ) ) $ ( Bool )
        d539 = if if false then false else d476 then ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> d210 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> d431 ) ) ) $ ( false )
        d543 : ( ( Set -> Set ) ∋ ( ( λ x5460 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d543 = ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> if d29 then true else false ) ) ) $ ( x5440 ) ) ) ) $ ( if d145 then d64 else false )
        d547 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5490 -> x5490 ) ) ) $ ( Bool )
        d547 = ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> if x5480 then x5480 else d295 ) ) ) $ ( if true then true else true )
        d550 : if false then ( ( Set -> Set ) ∋ ( ( λ x5530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5540 -> Bool ) ) ) $ ( Bool )
        d550 = if ( ( Bool -> Bool ) ∋ ( ( λ x5510 -> d279 ) ) ) $ ( true ) then if d502 then true else d335 else ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> x5520 ) ) ) $ ( d42 )