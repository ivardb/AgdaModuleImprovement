module Decls150Test14  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else x30 ) ) ) $ ( if true then Bool else Bool )
        d1 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( true ) else if false then true else true
        d4 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x60 else x70 ) ) ) $ ( x60 ) ) ) ) $ ( if true then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if d1 then d1 else x50 ) ) ) $ ( if false then false else true )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d8 = if ( ( Bool -> Bool ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d1 ) ) ) $ ( true ) else if d4 then true else d1
        d12 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x130 else x140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if false then true else true then if true then d4 else false else if d4 then d4 else true
        d15 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then x170 else x170 ) ) ) $ ( if false then Bool else Bool )
        d15 = if if d12 then d4 else d8 then ( ( Bool -> Bool ) ∋ ( ( λ x160 -> true ) ) ) $ ( d1 ) else if d4 then true else false
        d18 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if true then Bool else x200 ) ) ) $ ( if true then Bool else Bool )
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( d8 ) then if false then false else d12 else if d15 then d15 else d4
        d21 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x230 -> Bool ) ) ) $ ( Bool )
        d21 = if ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d4 ) ) ) $ ( d18 ) then if false then false else false else if d8 then d4 else false
        d24 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> if true then Bool else Bool ) ) ) $ ( x270 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if ( ( Bool -> Bool ) ∋ ( ( λ x250 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> true ) ) ) $ ( d8 ) else if d15 then d12 else d1
        d29 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then x320 else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = if ( ( Bool -> Bool ) ∋ ( ( λ x300 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( false ) else if false then d24 else d15
        d33 : ( ( Set -> Set ) ∋ ( ( λ x360 -> if true then x360 else Bool ) ) ) $ ( if true then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if true then d29 else x350 ) ) ) $ ( x340 ) ) ) ) $ ( if d15 then false else d15 )
        d37 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x390 -> x390 ) ) ) $ ( Bool )
        d37 = if ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d21 ) ) ) $ ( true ) then if true then false else true else if d8 then true else d4
        d40 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> if true then x440 else Bool ) ) ) $ ( x430 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = if if d15 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x420 -> true ) ) ) $ ( true )
        d45 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if d8 then false else x460 ) ) ) $ ( d12 ) ) ) ) $ ( if false then d15 else false )
        d49 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( Bool )
        d49 = if ( ( Bool -> Bool ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( d29 ) then ( ( Bool -> Bool ) ∋ ( ( λ x510 -> d12 ) ) ) $ ( d29 ) else if false then true else d8
        d53 : if true then ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool )
        d53 = if ( ( Bool -> Bool ) ∋ ( ( λ x540 -> true ) ) ) $ ( d21 ) then if false then true else d33 else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( d37 )
        d58 : if true then ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x610 -> Bool ) ) ) $ ( Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if x590 then false else true ) ) ) $ ( if d49 then d29 else d4 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> if false then Bool else x660 ) ) ) $ ( x650 ) ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if x640 then false else x630 ) ) ) $ ( d15 ) ) ) ) $ ( if true then d45 else d58 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x690 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if x680 then d29 else x680 ) ) ) $ ( if d29 then true else false )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then Bool else Bool ) ) ) $ ( x720 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if x710 then true else true ) ) ) $ ( if d53 then d4 else false )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> if false then x760 else x770 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if x750 then x750 else d70 ) ) ) $ ( if d12 then d12 else d29 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x810 -> if true then x810 else Bool ) ) ) $ ( if true then Bool else Bool )
        d78 = if if false then d12 else false then ( ( Bool -> Bool ) ∋ ( ( λ x790 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( false )
        d82 : if false then ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x850 -> x850 ) ) ) $ ( Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if false then d40 else x830 ) ) ) $ ( if d67 then d1 else d12 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> if false then x900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if if d15 then false else d12 then ( ( Bool -> Bool ) ∋ ( ( λ x870 -> d70 ) ) ) $ ( d70 ) else ( ( Bool -> Bool ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( d8 )
        d91 : if false then ( ( Set -> Set ) ∋ ( ( λ x940 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x950 -> Bool ) ) ) $ ( Bool )
        d91 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x920 -> d21 ) ) ) $ ( d21 ) else ( ( Bool -> Bool ) ∋ ( ( λ x930 -> x930 ) ) ) $ ( false )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if ( ( Bool -> Bool ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( d74 ) then ( ( Bool -> Bool ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( false ) else if false then d49 else d4
        d99 : if true then if false then Bool else Bool else if false then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if false then x1010 else x1010 ) ) ) $ ( x1000 ) ) ) ) $ ( if false then d8 else d21 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d102 = if if true then d18 else d18 then if true then true else d33 else if d37 then false else d1
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then x1060 else x1060 ) ) ) $ ( if false then Bool else Bool )
        d104 = if if d21 then false else d37 then if d67 then d102 else d4 else ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> d33 ) ) ) $ ( d102 )
        d107 : if false then ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d107 = if ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( false ) then if d104 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> d1 ) ) ) $ ( false )
        d111 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1120 -> Bool ) ) ) $ ( Bool )
        d111 = if if d82 then d53 else false then if d1 then true else d74 else if d91 then d107 else d8
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if true then x1140 else true ) ) ) $ ( if d96 then true else d49 )
        d117 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1200 -> x1200 ) ) ) $ ( Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if x1190 then true else false ) ) ) $ ( d29 ) ) ) ) $ ( if d104 then true else d40 )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> ( ( Set -> Set ) ∋ ( ( λ x1250 -> if true then x1240 else Bool ) ) ) $ ( x1240 ) ) ) ) $ ( if true then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if false then true else x1220 ) ) ) $ ( x1220 ) ) ) ) $ ( if false then true else true )
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> if true then x1280 else x1280 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d126 = if ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( true ) then if false then d49 else true else if d15 then false else false
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1320 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if x1310 then x1310 else true ) ) ) $ ( if true then d82 else false )
        d133 : if true then ( ( Set -> Set ) ∋ ( ( λ x1350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( Bool )
        d133 = if if true then d49 else d113 then ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> d102 ) ) ) $ ( d91 ) else if d102 then d40 else true
        d137 : if true then ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1410 -> Bool ) ) ) $ ( Bool )
        d137 = if if d8 then false else d107 then ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> true ) ) ) $ ( d37 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> d40 ) ) ) $ ( d67 )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then Bool else x1450 ) ) ) $ ( x1440 ) ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if false then d49 else x1430 ) ) ) $ ( if d15 then false else d121 )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> if true then Bool else x1480 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d146 = if if true then d4 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> false ) ) ) $ ( true ) else if false then false else false
        d150 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1520 -> Bool ) ) ) $ ( Bool )
        d150 = ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if d62 then x1510 else false ) ) ) $ ( if false then d18 else true )
        d153 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1550 -> x1550 ) ) ) $ ( Bool )
        d153 = if ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> d45 ) ) ) $ ( true ) then if false then true else d99 else if d130 then true else false
        d156 : if false then ( ( Set -> Set ) ∋ ( ( λ x1590 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1600 -> Bool ) ) ) $ ( Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if x1580 then false else false ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
        d161 : if true then ( ( Set -> Set ) ∋ ( ( λ x1630 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if d70 then false else d130 ) ) ) $ ( if d37 then d58 else true )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> if true then Bool else x1660 ) ) ) $ ( if true then Bool else Bool )
        d164 = if if d150 then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> d104 ) ) ) $ ( false ) else if d40 then d12 else d142
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> ( ( Set -> Set ) ∋ ( ( λ x1700 -> if false then Bool else x1690 ) ) ) $ ( x1690 ) ) ) ) $ ( if true then Bool else Bool )
        d167 = if if false then false else d164 then if false then d74 else d121 else ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> false ) ) ) $ ( true )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> if false then Bool else x1730 ) ) ) $ ( if true then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> if false then true else false ) ) ) $ ( if d53 then d15 else false )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1760 -> ( ( Set -> Set ) ∋ ( ( λ x1770 -> if true then x1770 else x1770 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> if d107 then false else x1750 ) ) ) $ ( if false then true else true )
        d178 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1800 -> Bool ) ) ) $ ( Bool )
        d178 = if if d8 then d82 else d121 then ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> d18 ) ) ) $ ( d171 ) else if false then false else d99
        d181 : if false then if false then Bool else Bool else if false then Bool else Bool
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if true then x1820 else x1820 ) ) ) $ ( if true then d4 else d53 )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> if true then x1860 else x1860 ) ) ) $ ( if false then Bool else Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> if d78 then d86 else x1840 ) ) ) $ ( false ) ) ) ) $ ( if true then d178 else true )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> if false then Bool else x1890 ) ) ) $ ( if true then Bool else Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if x1880 then false else false ) ) ) $ ( if d99 then d67 else false )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if false then x1920 else Bool ) ) ) $ ( if true then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if x1910 then d4 else x1910 ) ) ) $ ( if true then false else false )
        d193 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> if true then Bool else x1970 ) ) ) $ ( x1970 ) ) ) ) $ ( if false then Bool else Bool )
        d193 = if ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( d190 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> x1960 ) ) ) $ ( true )
        d199 : if false then ( ( Set -> Set ) ∋ ( ( λ x2020 -> x2020 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> if x2000 then x2010 else x2000 ) ) ) $ ( true ) ) ) ) $ ( if false then d137 else true )
        d203 : if true then ( ( Set -> Set ) ∋ ( ( λ x2050 -> x2050 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d203 = if ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> x2040 ) ) ) $ ( true ) then if true then false else true else if true then true else true
        d206 : if true then ( ( Set -> Set ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d206 = if if d178 then d8 else d104 then if d45 then d161 else d193 else if true then d15 else false
        d208 : ( ( Set -> Set ) ∋ ( ( λ x2100 -> if true then Bool else x2100 ) ) ) $ ( if false then Bool else Bool )
        d208 = if if d164 then d12 else true then ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> x2090 ) ) ) $ ( d49 ) else if false then d4 else false
        d211 : if false then if true then Bool else Bool else if false then Bool else Bool
        d211 = if ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> d78 ) ) ) $ ( d153 ) else if d58 then false else d142
        d214 : if false then if false then Bool else Bool else if true then Bool else Bool
        d214 = if ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> x2150 ) ) ) $ ( true ) then if d82 then d29 else d167 else if true then d53 else d171
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> ( ( Set -> Set ) ∋ ( ( λ x2190 -> if false then Bool else x2180 ) ) ) $ ( x2180 ) ) ) ) $ ( if false then Bool else Bool )
        d216 = if ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> x2170 ) ) ) $ ( false ) then if false then d82 else d190 else if d58 then true else false
        d220 : ( ( Set -> Set ) ∋ ( ( λ x2240 -> ( ( Set -> Set ) ∋ ( ( λ x2250 -> if true then x2240 else Bool ) ) ) $ ( x2240 ) ) ) ) $ ( if true then Bool else Bool )
        d220 = if ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> d45 ) ) ) $ ( d29 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> d142 ) ) ) $ ( d12 )
        d226 : ( ( Set -> Set ) ∋ ( ( λ x2290 -> ( ( Set -> Set ) ∋ ( ( λ x2300 -> if false then Bool else x2300 ) ) ) $ ( x2290 ) ) ) ) $ ( if true then Bool else Bool )
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> if true then d208 else x2280 ) ) ) $ ( x2270 ) ) ) ) $ ( if d137 then false else true )
        d231 : ( ( Set -> Set ) ∋ ( ( λ x2330 -> ( ( Set -> Set ) ∋ ( ( λ x2340 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> if x2320 then d58 else d82 ) ) ) $ ( if d161 then d171 else false )
        d235 : if false then ( ( Set -> Set ) ∋ ( ( λ x2370 -> x2370 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> if d142 then d226 else d226 ) ) ) $ ( if d33 then d58 else d62 )
        d238 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> if false then x2410 else Bool ) ) ) $ ( if true then Bool else Bool )
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> if d226 then d167 else x2400 ) ) ) $ ( x2390 ) ) ) ) $ ( if true then d183 else false )
        d242 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> ( ( Set -> Set ) ∋ ( ( λ x2450 -> if false then x2440 else x2450 ) ) ) $ ( x2440 ) ) ) ) $ ( if false then Bool else Bool )
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> if d18 then d4 else d150 ) ) ) $ ( if d121 then d86 else true )
        d246 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2500 -> Bool ) ) ) $ ( Bool )
        d246 = if ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( d167 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> d121 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> x2490 ) ) ) $ ( true )
        d251 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> ( ( Set -> Set ) ∋ ( ( λ x2550 -> if false then x2550 else x2540 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d251 = if if false then d226 else d8 then ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> d15 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> false ) ) ) $ ( true )
        d256 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> if true then Bool else x2580 ) ) ) $ ( if false then Bool else Bool )
        d256 = ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> if d74 then d206 else true ) ) ) $ ( if d86 then d211 else true )
        d259 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> ( ( Set -> Set ) ∋ ( ( λ x2630 -> if true then Bool else x2620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d259 = ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> if d1 then false else true ) ) ) $ ( x2600 ) ) ) ) $ ( if d40 then true else d174 )
        d264 : ( ( Set -> Set ) ∋ ( ( λ x2660 -> ( ( Set -> Set ) ∋ ( ( λ x2670 -> if false then Bool else x2670 ) ) ) $ ( x2660 ) ) ) ) $ ( if false then Bool else Bool )
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> if x2650 then false else false ) ) ) $ ( if d15 then true else d107 )
        d268 : ( ( Set -> Set ) ∋ ( ( λ x2710 -> ( ( Set -> Set ) ∋ ( ( λ x2720 -> if false then x2710 else x2710 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d268 = ( ( Bool -> Bool ) ∋ ( ( λ x2690 -> ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> if true then d40 else x2700 ) ) ) $ ( true ) ) ) ) $ ( if false then d150 else false )
        d273 : ( ( Set -> Set ) ∋ ( ( λ x2750 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x2740 -> if x2740 then false else true ) ) ) $ ( if d99 then d78 else false )
        d276 : ( ( Set -> Set ) ∋ ( ( λ x2790 -> ( ( Set -> Set ) ∋ ( ( λ x2800 -> if false then x2790 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d276 = ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if false then x2780 else d102 ) ) ) $ ( d67 ) ) ) ) $ ( if d161 then d251 else d70 )
        d281 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if true then x2830 else x2830 ) ) ) $ ( x2820 ) ) ) ) $ ( if d178 then true else true )
        d286 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2880 -> x2880 ) ) ) $ ( Bool )
        d286 = if if true then false else d121 then if d18 then true else d187 else ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> false ) ) ) $ ( false )
        d289 : if false then ( ( Set -> Set ) ∋ ( ( λ x2930 -> x2930 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d289 = if ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> x2900 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> d18 ) ) ) $ ( d62 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> x2920 ) ) ) $ ( d99 )
        d294 : if false then if true then Bool else Bool else if false then Bool else Bool
        d294 = if ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> x2950 ) ) ) $ ( d67 ) then if d107 then true else d126 else ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> true ) ) ) $ ( false )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d297 = if if d49 then false else d161 then if true then d235 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> x2980 ) ) ) $ ( true )
        d300 : if true then ( ( Set -> Set ) ∋ ( ( λ x3020 -> x3020 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d300 = ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> if x3010 then true else true ) ) ) $ ( if false then true else true )
        d303 : if false then if false then Bool else Bool else if false then Bool else Bool
        d303 = if if d181 then d137 else d289 then ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> x3040 ) ) ) $ ( true ) else if true then true else d102
        d305 : if false then if false then Bool else Bool else if false then Bool else Bool
        d305 = if ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> true ) ) ) $ ( true ) then if true then false else d300 else ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> false ) ) ) $ ( true )
        d308 : if false then ( ( Set -> Set ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3120 -> Bool ) ) ) $ ( Bool )
        d308 = if if d45 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> d286 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> false ) ) ) $ ( true )
        d313 : ( ( Set -> Set ) ∋ ( ( λ x3140 -> if true then x3140 else x3140 ) ) ) $ ( if true then Bool else Bool )
        d313 = if if true then false else false then if true then false else d102 else if false then d104 else d62
        d315 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> if true then x3180 else x3180 ) ) ) $ ( if true then Bool else Bool )
        d315 = if ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> d58 ) ) ) $ ( d308 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> false ) ) ) $ ( d300 ) else if d276 then d276 else d130
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> ( ( Set -> Set ) ∋ ( ( λ x3220 -> if false then x3210 else x3220 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d319 = if if true then d70 else false then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> x3200 ) ) ) $ ( d29 )
        d323 : ( ( Set -> Set ) ∋ ( ( λ x3250 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d323 = ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> if d305 then x3240 else false ) ) ) $ ( if false then d91 else false )
        d326 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> ( ( Set -> Set ) ∋ ( ( λ x3290 -> if true then Bool else Bool ) ) ) $ ( x3280 ) ) ) ) $ ( if true then Bool else Bool )
        d326 = if if false then d235 else false then if d235 then false else d78 else ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> false ) ) ) $ ( d286 )
        d330 : if true then if true then Bool else Bool else if true then Bool else Bool
        d330 = if if d111 then d117 else d174 then ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> false ) ) ) $ ( true ) else if d246 then d238 else d142
        d332 : if true then ( ( Set -> Set ) ∋ ( ( λ x3340 -> x3340 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3350 -> x3350 ) ) ) $ ( Bool )
        d332 = if if d178 then false else false then if d246 then d308 else d45 else ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> d29 ) ) ) $ ( d297 )
        d336 : if true then if true then Bool else Bool else if false then Bool else Bool
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if x3370 then true else false ) ) ) $ ( if d117 then d259 else false )
        d338 : ( ( Set -> Set ) ∋ ( ( λ x3400 -> if true then x3400 else x3400 ) ) ) $ ( if true then Bool else Bool )
        d338 = if ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> d268 ) ) ) $ ( d153 ) then if d99 then true else d251 else if true then d153 else true
        d341 : ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> if false then x3430 else Bool ) ) ) $ ( x3430 ) ) ) ) $ ( if false then Bool else Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> if false then true else x3420 ) ) ) $ ( if d187 then d181 else true )
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> if false then x3470 else x3470 ) ) ) $ ( if false then Bool else Bool )
        d345 = if if false then true else d49 then if d91 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> x3460 ) ) ) $ ( d238 )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> if false then x3510 else Bool ) ) ) $ ( if false then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> if d107 then d164 else d18 ) ) ) $ ( x3490 ) ) ) ) $ ( if false then d276 else d178 )
        d352 : if false then if false then Bool else Bool else if true then Bool else Bool
        d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> if d208 then true else x3530 ) ) ) $ ( if d82 then d133 else d12 )
        d354 : if false then ( ( Set -> Set ) ∋ ( ( λ x3560 -> x3560 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3570 -> Bool ) ) ) $ ( Bool )
        d354 = if if d117 then d96 else false then ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> x3550 ) ) ) $ ( false ) else if true then d49 else d308
        d358 : if true then if true then Bool else Bool else if true then Bool else Bool
        d358 = if ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> d111 ) ) ) $ ( d208 ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> x3600 ) ) ) $ ( d107 )
        d361 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3630 -> x3630 ) ) ) $ ( Bool )
        d361 = if ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> false ) ) ) $ ( d1 ) then if d67 then d86 else true else if false then false else d150
        d364 : if true then ( ( Set -> Set ) ∋ ( ( λ x3660 -> x3660 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> if x3650 then false else x3650 ) ) ) $ ( if true then false else d238 )
        d367 : if false then ( ( Set -> Set ) ∋ ( ( λ x3700 -> x3700 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> if x3680 then x3690 else x3680 ) ) ) $ ( x3680 ) ) ) ) $ ( if d206 then false else d297 )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x3740 -> if false then x3740 else Bool ) ) ) $ ( if false then Bool else Bool )
        d372 = if ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> true ) ) ) $ ( false ) then if d96 then d102 else true else if false then true else false
        d375 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> if false then x3780 else x3780 ) ) ) $ ( if false then Bool else Bool )
        d375 = if if false then d86 else d8 then ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3770 -> x3770 ) ) ) $ ( false )
        d379 : ( ( Set -> Set ) ∋ ( ( λ x3830 -> ( ( Set -> Set ) ∋ ( ( λ x3840 -> if false then Bool else x3840 ) ) ) $ ( x3830 ) ) ) ) $ ( if false then Bool else Bool )
        d379 = if ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> d326 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> x3820 ) ) ) $ ( d319 )
        d385 : ( ( Set -> Set ) ∋ ( ( λ x3880 -> ( ( Set -> Set ) ∋ ( ( λ x3890 -> if false then x3890 else x3890 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d385 = if ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> x3860 ) ) ) $ ( true ) then if d107 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> d211 ) ) ) $ ( d150 )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> if true then x3920 else x3920 ) ) ) $ ( if false then Bool else Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> if x3910 then d341 else d352 ) ) ) $ ( if d62 then d96 else true )
        d393 : ( ( Set -> Set ) ∋ ( ( λ x3960 -> if false then x3960 else x3960 ) ) ) $ ( if true then Bool else Bool )
        d393 = if if d390 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> x3940 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> d49 ) ) ) $ ( true )
        d397 : ( ( Set -> Set ) ∋ ( ( λ x4000 -> ( ( Set -> Set ) ∋ ( ( λ x4010 -> if true then x4010 else x4000 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d397 = if ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> false ) ) ) $ ( d294 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> x3990 ) ) ) $ ( d171 ) else if true then true else d58
        d402 : if false then ( ( Set -> Set ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d402 = ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> ( ( Bool -> Bool ) ∋ ( ( λ x4040 -> if true then true else d364 ) ) ) $ ( x4030 ) ) ) ) $ ( if false then d1 else false )
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4090 -> ( ( Set -> Set ) ∋ ( ( λ x4100 -> if false then x4090 else Bool ) ) ) $ ( x4090 ) ) ) ) $ ( if true then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> ( ( Bool -> Bool ) ∋ ( ( λ x4080 -> if d1 then x4080 else d99 ) ) ) $ ( x4070 ) ) ) ) $ ( if d96 then d126 else d397 )
        d411 : ( ( Set -> Set ) ∋ ( ( λ x4140 -> ( ( Set -> Set ) ∋ ( ( λ x4150 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d411 = if if d330 then false else d385 then ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> d273 ) ) ) $ ( d338 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> x4130 ) ) ) $ ( true )
        d416 : if false then ( ( Set -> Set ) ∋ ( ( λ x4190 -> x4190 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x4170 -> ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> if true then d156 else x4170 ) ) ) $ ( x4170 ) ) ) ) $ ( if true then true else d193 )
        d420 : if true then if false then Bool else Bool else if true then Bool else Bool
        d420 = ( ( Bool -> Bool ) ∋ ( ( λ x4210 -> if true then false else d416 ) ) ) $ ( if false then true else true )
        d422 : ( ( Set -> Set ) ∋ ( ( λ x4250 -> if false then Bool else x4250 ) ) ) $ ( if false then Bool else Bool )
        d422 = if if d190 then true else d364 then ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> d86 ) ) ) $ ( d137 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> x4240 ) ) ) $ ( d178 )
        d426 : if true then if true then Bool else Bool else if true then Bool else Bool
        d426 = if if false then false else d208 then if d393 then d15 else d133 else ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> x4270 ) ) ) $ ( d21 )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x4300 -> ( ( Set -> Set ) ∋ ( ( λ x4310 -> if false then Bool else x4310 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x4290 -> if false then false else d78 ) ) ) $ ( if false then d171 else true )
        d432 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4340 -> Bool ) ) ) $ ( Bool )
        d432 = if ( ( Bool -> Bool ) ∋ ( ( λ x4330 -> true ) ) ) $ ( d393 ) then if true then true else true else if d319 then d364 else d259
        d435 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if true then x4380 else x4380 ) ) ) $ ( if true then Bool else Bool )
        d435 = if ( ( Bool -> Bool ) ∋ ( ( λ x4360 -> d153 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> x4370 ) ) ) $ ( d53 ) else if d58 then d242 else false
        d439 : ( ( Set -> Set ) ∋ ( ( λ x4420 -> ( ( Set -> Set ) ∋ ( ( λ x4430 -> if false then x4430 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d439 = if ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> x4400 ) ) ) $ ( d336 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> d242 ) ) ) $ ( d96 ) else if d246 then d432 else d348
        d444 : ( ( Set -> Set ) ∋ ( ( λ x4460 -> if false then x4460 else Bool ) ) ) $ ( if true then Bool else Bool )
        d444 = ( ( Bool -> Bool ) ∋ ( ( λ x4450 -> if x4450 then d348 else false ) ) ) $ ( if false then d91 else d130 )
        d447 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4500 -> Bool ) ) ) $ ( Bool )
        d447 = if ( ( Bool -> Bool ) ∋ ( ( λ x4480 -> false ) ) ) $ ( true ) then if d411 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4490 -> d348 ) ) ) $ ( false )
        d451 : if false then if false then Bool else Bool else if false then Bool else Bool
        d451 = if if d62 then d444 else d161 then if true then true else false else if d206 then false else false
        d452 : if false then if true then Bool else Bool else if true then Bool else Bool
        d452 = ( ( Bool -> Bool ) ∋ ( ( λ x4530 -> ( ( Bool -> Bool ) ∋ ( ( λ x4540 -> if d99 then true else d174 ) ) ) $ ( true ) ) ) ) $ ( if true then d375 else true )
        d455 : if true then if true then Bool else Bool else if true then Bool else Bool
        d455 = ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> if x4570 then x4570 else d220 ) ) ) $ ( x4560 ) ) ) ) $ ( if true then true else true )
        d458 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4600 -> Bool ) ) ) $ ( Bool )
        d458 = if ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> false ) ) ) $ ( d187 ) then if false then d352 else d390 else if true then d199 else d150
        d461 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4630 -> Bool ) ) ) $ ( Bool )
        d461 = if if d452 then false else true then if d416 then d300 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> d137 ) ) ) $ ( d319 )
        d464 : if false then if true then Bool else Bool else if false then Bool else Bool
        d464 = ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> if false then d451 else false ) ) ) $ ( if d294 then true else d439 )
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4690 -> ( ( Set -> Set ) ∋ ( ( λ x4700 -> if false then Bool else x4700 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d466 = if ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> d238 ) ) ) $ ( d358 ) then if d426 then d276 else d167 else ( ( Bool -> Bool ) ∋ ( ( λ x4680 -> x4680 ) ) ) $ ( false )
        d471 : ( ( Set -> Set ) ∋ ( ( λ x4730 -> ( ( Set -> Set ) ∋ ( ( λ x4740 -> if false then x4740 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d471 = ( ( Bool -> Bool ) ∋ ( ( λ x4720 -> if false then true else d181 ) ) ) $ ( if d364 then d161 else d37 )
        d475 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4780 -> Bool ) ) ) $ ( Bool )
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> ( ( Bool -> Bool ) ∋ ( ( λ x4770 -> if x4760 then x4760 else x4760 ) ) ) $ ( x4760 ) ) ) ) $ ( if true then true else d393 )
        d479 : ( ( Set -> Set ) ∋ ( ( λ x4820 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d479 = if ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> d178 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> x4810 ) ) ) $ ( false ) else if true then d326 else d444
        d483 : if false then if true then Bool else Bool else if false then Bool else Bool
        d483 = if if false then d281 else false then ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> x4840 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> true ) ) ) $ ( false )
        d486 : ( ( Set -> Set ) ∋ ( ( λ x4890 -> ( ( Set -> Set ) ∋ ( ( λ x4900 -> if false then x4900 else x4890 ) ) ) $ ( x4890 ) ) ) ) $ ( if true then Bool else Bool )
        d486 = if ( ( Bool -> Bool ) ∋ ( ( λ x4870 -> x4870 ) ) ) $ ( d203 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> true ) ) ) $ ( false ) else if false then d1 else d364
        d491 : ( ( Set -> Set ) ∋ ( ( λ x4930 -> if false then x4930 else x4930 ) ) ) $ ( if true then Bool else Bool )
        d491 = if if d150 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> true ) ) ) $ ( d121 ) else if false then true else d62
        d494 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> if false then x4970 else Bool ) ) ) $ ( if false then Bool else Bool )
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> if x4950 then d305 else false ) ) ) $ ( d107 ) ) ) ) $ ( if true then true else d289 )
        d498 : ( ( Set -> Set ) ∋ ( ( λ x5010 -> if false then x5010 else Bool ) ) ) $ ( if true then Bool else Bool )
        d498 = ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> if x5000 then d444 else d187 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d300 )
        d502 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5040 -> Bool ) ) ) $ ( Bool )
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> if x5030 then d126 else x5030 ) ) ) $ ( if true then true else d40 )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if true then x5080 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if x5060 then d390 else false ) ) ) $ ( if true then d455 else d491 )
        d509 : if true then ( ( Set -> Set ) ∋ ( ( λ x5110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5120 -> x5120 ) ) ) $ ( Bool )
        d509 = if ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> x5100 ) ) ) $ ( false ) then if d432 then false else d313 else if false then true else d455
        d513 : if false then if true then Bool else Bool else if true then Bool else Bool
        d513 = if ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> x5140 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5150 -> x5150 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5160 -> x5160 ) ) ) $ ( false )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x5210 -> ( ( Set -> Set ) ∋ ( ( λ x5220 -> if true then x5210 else Bool ) ) ) $ ( x5210 ) ) ) ) $ ( if false then Bool else Bool )
        d517 = if ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> true ) ) ) $ ( d308 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5190 -> x5190 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> true ) ) ) $ ( d276 )
        d523 : ( ( Set -> Set ) ∋ ( ( λ x5260 -> if false then x5260 else Bool ) ) ) $ ( if true then Bool else Bool )
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> if x5250 then d181 else true ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d527 : if false then ( ( Set -> Set ) ∋ ( ( λ x5290 -> x5290 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5300 -> Bool ) ) ) $ ( Bool )
        d527 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x5280 -> true ) ) ) $ ( d104 ) else if false then d251 else true
        d531 : ( ( Set -> Set ) ∋ ( ( λ x5330 -> ( ( Set -> Set ) ∋ ( ( λ x5340 -> if false then x5330 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d531 = ( ( Bool -> Bool ) ∋ ( ( λ x5320 -> if d171 then x5320 else x5320 ) ) ) $ ( if d455 then d326 else true )
        d535 : ( ( Set -> Set ) ∋ ( ( λ x5380 -> ( ( Set -> Set ) ∋ ( ( λ x5390 -> if false then Bool else x5380 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d535 = if ( ( Bool -> Bool ) ∋ ( ( λ x5360 -> d364 ) ) ) $ ( d15 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> true ) ) ) $ ( true ) else if true then true else false
        d540 : ( ( Set -> Set ) ∋ ( ( λ x5430 -> ( ( Set -> Set ) ∋ ( ( λ x5440 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> ( ( Bool -> Bool ) ∋ ( ( λ x5420 -> if x5410 then true else x5420 ) ) ) $ ( x5410 ) ) ) ) $ ( if false then false else false )
        d545 : if false then ( ( Set -> Set ) ∋ ( ( λ x5490 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d545 = if ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> x5460 ) ) ) $ ( d86 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> x5470 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> d4 ) ) ) $ ( true )
        d550 : ( ( Set -> Set ) ∋ ( ( λ x5510 -> ( ( Set -> Set ) ∋ ( ( λ x5520 -> if true then x5510 else x5520 ) ) ) $ ( x5510 ) ) ) ) $ ( if false then Bool else Bool )
        d550 = if if false then false else d74 then if d375 then d206 else true else if d338 then true else true
        d553 : if true then if false then Bool else Bool else if true then Bool else Bool
        d553 = if if true then true else d435 then if false then false else true else if true then true else d297
        d554 : if false then ( ( Set -> Set ) ∋ ( ( λ x5560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5570 -> Bool ) ) ) $ ( Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x5550 -> if true then true else d428 ) ) ) $ ( if false then false else true )