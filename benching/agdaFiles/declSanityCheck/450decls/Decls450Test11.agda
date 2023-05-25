module Decls450Test11  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else x50 ) ) ) $ ( if false then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( false )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else Bool ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if x70 then true else x80 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then d1 else d1 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if true then d6 else true then if true then d6 else d1 else if d6 then d6 else false
        d14 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then x170 else Bool ) ) ) $ ( if false then Bool else Bool )
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d6 then true else d1 ) ) ) $ ( true ) ) ) ) $ ( if d1 then d6 else d1 )
        d18 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if true then x200 else d6 ) ) ) $ ( true ) ) ) ) $ ( if d11 then d11 else d6 )
        d22 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( Bool )
        d22 = if ( ( Bool -> Bool ) ∋ ( ( λ x230 -> true ) ) ) $ ( d1 ) then if d18 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x240 -> x240 ) ) ) $ ( false )
        d26 : if false then ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if true then x270 else d18 ) ) ) $ ( if false then true else d18 )
        d29 : if false then if false then Bool else Bool else if false then Bool else Bool
        d29 = if ( ( Bool -> Bool ) ∋ ( ( λ x300 -> x300 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x310 -> false ) ) ) $ ( false ) else if true then false else false
        d32 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if true then Bool else x350 ) ) ) $ ( x350 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( d26 ) then ( ( Bool -> Bool ) ∋ ( ( λ x340 -> true ) ) ) $ ( false ) else if d14 then false else d18
        d37 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> if false then x400 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if false then false else false ) ) ) $ ( d11 ) ) ) ) $ ( if false then d18 else d1 )
        d42 : if false then ( ( Set -> Set ) ∋ ( ( λ x440 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if x430 then d32 else d32 ) ) ) $ ( if d14 then true else d1 )
        d45 : if true then if true then Bool else Bool else if false then Bool else Bool
        d45 = if ( ( Bool -> Bool ) ∋ ( ( λ x460 -> d18 ) ) ) $ ( false ) then if false then d42 else false else if d32 then false else true
        d47 : if false then ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if d26 then x480 else x480 ) ) ) $ ( if true then d14 else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> if false then x520 else x520 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d50 = if if true then d18 else d47 then if true then false else false else if d26 then d1 else true
        d53 : ( ( Set -> Set ) ∋ ( ( λ x550 -> if false then x550 else Bool ) ) ) $ ( if false then Bool else Bool )
        d53 = if if true then false else false then if d50 then false else d50 else ( ( Bool -> Bool ) ∋ ( ( λ x540 -> false ) ) ) $ ( true )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x580 -> if false then x580 else x580 ) ) ) $ ( if true then Bool else Bool )
        d56 = if if d6 then true else d14 then if d47 then d18 else d22 else ( ( Bool -> Bool ) ∋ ( ( λ x570 -> d45 ) ) ) $ ( d18 )
        d59 : if false then if true then Bool else Bool else if true then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if true then x600 else x600 ) ) ) $ ( if true then d37 else d14 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d61 = if ( ( Bool -> Bool ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( false ) then if false then d29 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( true )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then Bool else Bool ) ) ) $ ( x680 ) ) ) ) $ ( if true then Bool else Bool )
        d66 = if ( ( Bool -> Bool ) ∋ ( ( λ x670 -> d29 ) ) ) $ ( true ) then if false then d45 else false else if false then d56 else true
        d70 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then x730 else Bool ) ) ) $ ( if false then Bool else Bool )
        d70 = if if false then d11 else true then ( ( Bool -> Bool ) ∋ ( ( λ x710 -> d1 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x720 -> false ) ) ) $ ( d26 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if false then Bool else x760 ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if d70 then true else true ) ) ) $ ( if false then true else d45 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if false then x800 else x800 ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if d61 then x780 else d47 ) ) ) $ ( d53 ) ) ) ) $ ( if true then d37 else d53 )
        d81 : if true then ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if false then x820 else d18 ) ) ) $ ( d29 ) ) ) ) $ ( if d53 then false else d61 )
        d85 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if d66 then false else false ) ) ) $ ( false ) ) ) ) $ ( if true then d18 else true )
        d89 : if false then ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( Bool )
        d89 = if if d56 then true else true then if d32 then false else d45 else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d53 ) ) ) $ ( d45 )
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if d26 then x940 else false ) ) ) $ ( if d85 then true else d77 )
        d95 : if true then ( ( Set -> Set ) ∋ ( ( λ x970 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if d59 then x960 else true ) ) ) $ ( if true then d66 else true )
        d98 : if false then ( ( Set -> Set ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1010 -> Bool ) ) ) $ ( Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if true then d45 else d18 ) ) ) $ ( if d74 then d56 else d77 )
        d102 : if true then ( ( Set -> Set ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( Bool )
        d102 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> d77 ) ) ) $ ( false ) else if d1 then true else d89
        d106 : if true then ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d106 = if if false then d22 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( false )
        d110 : if false then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if x1110 then x1110 else d42 ) ) ) $ ( if false then d11 else false )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d112 = if ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> false ) ) ) $ ( d77 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d53 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> true ) ) ) $ ( d11 )
        d118 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1200 -> Bool ) ) ) $ ( Bool )
        d118 = if if d110 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> false ) ) ) $ ( d53 ) else if true then d45 else false
        d121 : if true then ( ( Set -> Set ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if x1220 then x1220 else d50 ) ) ) $ ( if d50 then false else d6 )
        d125 : if false then ( ( Set -> Set ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d125 = if ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> x1260 ) ) ) $ ( d81 ) then if d29 then true else false else if d14 then d47 else false
        d128 : if false then ( ( Set -> Set ) ∋ ( ( λ x1310 -> x1310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool )
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if d50 then x1290 else x1300 ) ) ) $ ( d45 ) ) ) ) $ ( if false then d1 else d11 )
        d133 : if false then if false then Bool else Bool else if false then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if d81 then x1350 else false ) ) ) $ ( x1340 ) ) ) ) $ ( if false then false else true )
        d136 : if true then if true then Bool else Bool else if true then Bool else Bool
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if d42 then d37 else false ) ) ) $ ( false ) ) ) ) $ ( if true then d37 else true )
        d139 : if false then ( ( Set -> Set ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( Bool )
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> if d61 then d128 else x1400 ) ) ) $ ( if d22 then true else false )
        d143 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> if x1440 then x1440 else d11 ) ) ) $ ( if d56 then d85 else true )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> if true then Bool else x1480 ) ) ) $ ( x1480 ) ) ) ) $ ( if true then Bool else Bool )
        d146 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( d1 ) else if false then true else true
        d150 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then x1540 else Bool ) ) ) $ ( x1530 ) ) ) ) $ ( if true then Bool else Bool )
        d150 = ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> if d143 then d77 else x1520 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d155 : if true then if false then Bool else Bool else if false then Bool else Bool
        d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if d89 then x1560 else false ) ) ) $ ( if d95 then d93 else false )
        d157 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> if true then x1590 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if true then d1 else x1580 ) ) ) $ ( if d110 then false else d110 )
        d161 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then x1630 else Bool ) ) ) $ ( if false then Bool else Bool )
        d161 = if if d133 then d29 else d70 then ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> false ) ) ) $ ( d77 ) else if d47 then d29 else true
        d164 : if true then ( ( Set -> Set ) ∋ ( ( λ x1660 -> x1660 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> if x1650 then x1650 else x1650 ) ) ) $ ( if false then d98 else d146 )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if x1680 then false else true ) ) ) $ ( if d136 then d85 else false )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> if true then Bool else x1720 ) ) ) $ ( if true then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if x1710 then x1710 else true ) ) ) $ ( if d59 then true else d167 )
        d173 : if false then if false then Bool else Bool else if false then Bool else Bool
        d173 = if if d26 then false else false then if true then d89 else false else if d74 then d89 else false
        d174 : if false then ( ( Set -> Set ) ∋ ( ( λ x1780 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( Bool )
        d174 = if ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> false ) ) ) $ ( d70 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> false ) ) ) $ ( true )
        d180 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1830 -> Bool ) ) ) $ ( Bool )
        d180 = if ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> false ) ) ) $ ( d170 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> d89 ) ) ) $ ( d37 ) else if true then d70 else false
        d184 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> ( ( Set -> Set ) ∋ ( ( λ x1880 -> if false then x1880 else Bool ) ) ) $ ( x1870 ) ) ) ) $ ( if false then Bool else Bool )
        d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if x1850 then d110 else x1850 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d118 )
        d189 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if false then Bool else x1920 ) ) ) $ ( if true then Bool else Bool )
        d189 = ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if x1910 then d110 else false ) ) ) $ ( x1900 ) ) ) ) $ ( if false then d37 else d85 )
        d193 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d193 = if ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> d95 ) ) ) $ ( d125 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> d53 ) ) ) $ ( d45 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> true ) ) ) $ ( true )
        d199 : if true then ( ( Set -> Set ) ∋ ( ( λ x2000 -> x2000 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d199 = if if true then d89 else d11 then if true then d26 else d164 else if true then d6 else d11
        d201 : if true then if false then Bool else Bool else if true then Bool else Bool
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> if d45 then d74 else true ) ) ) $ ( false ) ) ) ) $ ( if d59 then d118 else d1 )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x2070 -> if false then Bool else x2070 ) ) ) $ ( if true then Bool else Bool )
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> if true then d81 else d85 ) ) ) $ ( x2050 ) ) ) ) $ ( if d77 then d193 else false )
        d208 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2100 -> x2100 ) ) ) $ ( Bool )
        d208 = ( ( Bool -> Bool ) ∋ ( ( λ x2090 -> if d121 then true else d136 ) ) ) $ ( if false then true else true )
        d211 : if true then if true then Bool else Bool else if false then Bool else Bool
        d211 = if ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2120 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> true ) ) ) $ ( false ) else if d170 then true else d112
        d214 : if true then if false then Bool else Bool else if true then Bool else Bool
        d214 = ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if true then true else x2150 ) ) ) $ ( if false then true else d139 )
        d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then Bool else x2180 ) ) ) $ ( if true then Bool else Bool )
        d216 = ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if true then true else x2170 ) ) ) $ ( if d70 then false else false )
        d219 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2210 -> Bool ) ) ) $ ( Bool )
        d219 = ( ( Bool -> Bool ) ∋ ( ( λ x2200 -> if x2200 then d125 else x2200 ) ) ) $ ( if d66 then true else d110 )
        d222 : if false then ( ( Set -> Set ) ∋ ( ( λ x2250 -> x2250 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2260 -> Bool ) ) ) $ ( Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> if d170 then x2230 else d42 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d18 )
        d227 : ( ( Set -> Set ) ∋ ( ( λ x2290 -> if false then x2290 else x2290 ) ) ) $ ( if true then Bool else Bool )
        d227 = ( ( Bool -> Bool ) ∋ ( ( λ x2280 -> if false then true else d133 ) ) ) $ ( if false then d214 else false )
        d230 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2320 -> Bool ) ) ) $ ( Bool )
        d230 = if ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> true ) ) ) $ ( true ) then if true then d208 else d102 else if d32 then d219 else d1
        d233 : if true then ( ( Set -> Set ) ∋ ( ( λ x2350 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2360 -> x2360 ) ) ) $ ( Bool )
        d233 = if ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> true ) ) ) $ ( false ) then if false then d208 else false else if d173 then false else false
        d237 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( Bool )
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> if d146 then x2380 else x2390 ) ) ) $ ( x2380 ) ) ) ) $ ( if d14 then d70 else d180 )
        d241 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> ( ( Set -> Set ) ∋ ( ( λ x2450 -> if true then x2440 else x2440 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d241 = if ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> x2430 ) ) ) $ ( d136 ) else if true then d118 else false
        d246 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> ( ( Set -> Set ) ∋ ( ( λ x2500 -> if true then Bool else Bool ) ) ) $ ( x2490 ) ) ) ) $ ( if false then Bool else Bool )
        d246 = ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> ( ( Bool -> Bool ) ∋ ( ( λ x2480 -> if true then x2470 else true ) ) ) $ ( x2470 ) ) ) ) $ ( if false then d18 else false )
        d251 : if true then if true then Bool else Bool else if true then Bool else Bool
        d251 = if ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( d174 ) then if true then d85 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> true ) ) ) $ ( d230 )
        d254 : ( ( Set -> Set ) ∋ ( ( λ x2570 -> if true then Bool else x2570 ) ) ) $ ( if false then Bool else Bool )
        d254 = ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> if d214 then x2550 else true ) ) ) $ ( false ) ) ) ) $ ( if d237 then d121 else d216 )
        d258 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2600 -> Bool ) ) ) $ ( Bool )
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> if d233 then x2590 else d61 ) ) ) $ ( if d146 then false else d170 )
        d261 : ( ( Set -> Set ) ∋ ( ( λ x2650 -> ( ( Set -> Set ) ∋ ( ( λ x2660 -> if true then Bool else Bool ) ) ) $ ( x2650 ) ) ) ) $ ( if true then Bool else Bool )
        d261 = if ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> false ) ) ) $ ( d89 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( d14 ) else ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> x2640 ) ) ) $ ( false )
        d267 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> ( ( Set -> Set ) ∋ ( ( λ x2690 -> if false then Bool else Bool ) ) ) $ ( x2680 ) ) ) ) $ ( if true then Bool else Bool )
        d267 = if if false then false else d6 then if d241 then true else true else if false then false else false
        d270 : if false then ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d270 = if ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> d251 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> x2720 ) ) ) $ ( false ) else if false then true else d93
        d274 : ( ( Set -> Set ) ∋ ( ( λ x2780 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d274 = if ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> true ) ) ) $ ( d233 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2760 -> x2760 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> true ) ) ) $ ( false )
        d279 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( Bool )
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> if true then d139 else x2810 ) ) ) $ ( d93 ) ) ) ) $ ( if false then d274 else false )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then Bool else x2860 ) ) ) $ ( x2860 ) ) ) ) $ ( if false then Bool else Bool )
        d283 = if ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> false ) ) ) $ ( d189 ) then if false then true else d193 else ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> x2850 ) ) ) $ ( false )
        d288 : if true then ( ( Set -> Set ) ∋ ( ( λ x2900 -> x2900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2910 -> Bool ) ) ) $ ( Bool )
        d288 = if if false then false else d50 then ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> true ) ) ) $ ( d70 ) else if true then d37 else d81
        d292 : if false then ( ( Set -> Set ) ∋ ( ( λ x2950 -> x2950 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d292 = if ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> d11 ) ) ) $ ( false ) else if d98 then d37 else d14
        d296 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> if true then Bool else x2990 ) ) ) $ ( if false then Bool else Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> if false then x2980 else false ) ) ) $ ( x2970 ) ) ) ) $ ( if true then d89 else d128 )
        d300 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> if false then Bool else x3040 ) ) ) $ ( if false then Bool else Bool )
        d300 = if ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> x3010 ) ) ) $ ( d32 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> x3020 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> x3030 ) ) ) $ ( true )
        d305 : ( ( Set -> Set ) ∋ ( ( λ x3080 -> if true then x3080 else Bool ) ) ) $ ( if false then Bool else Bool )
        d305 = ( ( Bool -> Bool ) ∋ ( ( λ x3060 -> ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> if d300 then x3070 else x3060 ) ) ) $ ( true ) ) ) ) $ ( if true then d98 else d42 )
        d309 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> if true then Bool else x3120 ) ) ) $ ( if true then Bool else Bool )
        d309 = if ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> x3100 ) ) ) $ ( d14 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( d112 ) else if d214 then false else d174
        d313 : if false then ( ( Set -> Set ) ∋ ( ( λ x3150 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3160 -> x3160 ) ) ) $ ( Bool )
        d313 = ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> if false then d81 else d143 ) ) ) $ ( if false then d14 else false )
        d317 : ( ( Set -> Set ) ∋ ( ( λ x3200 -> if true then x3200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d317 = if ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> d267 ) ) ) $ ( false ) then if d66 then false else d189 else ( ( Bool -> Bool ) ∋ ( ( λ x3190 -> x3190 ) ) ) $ ( d170 )
        d321 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d321 = if ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( false ) then if d254 then d313 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> true ) ) ) $ ( d313 )
        d325 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> ( ( Set -> Set ) ∋ ( ( λ x3290 -> if true then Bool else x3290 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d325 = ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> if true then x3270 else false ) ) ) $ ( x3260 ) ) ) ) $ ( if true then true else d189 )
        d330 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3320 -> Bool ) ) ) $ ( Bool )
        d330 = ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> if false then x3310 else d237 ) ) ) $ ( if d45 then d1 else d70 )
        d333 : if true then if false then Bool else Bool else if false then Bool else Bool
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> if d61 then d59 else d222 ) ) ) $ ( if d173 then false else d167 )
        d335 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> if false then x3380 else x3380 ) ) ) $ ( if true then Bool else Bool )
        d335 = ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> ( ( Bool -> Bool ) ∋ ( ( λ x3370 -> if d227 then true else false ) ) ) $ ( x3360 ) ) ) ) $ ( if d143 then d146 else d201 )
        d339 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3410 -> Bool ) ) ) $ ( Bool )
        d339 = if if d1 then false else d193 then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> d61 ) ) ) $ ( false )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> if true then x3440 else x3430 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d342 = if if true then false else true then if d201 then d139 else d211 else if true then d325 else d106
        d345 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> ( ( Set -> Set ) ∋ ( ( λ x3480 -> if false then Bool else x3470 ) ) ) $ ( x3470 ) ) ) ) $ ( if false then Bool else Bool )
        d345 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> true ) ) ) $ ( false ) else if true then false else d70
        d349 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> ( ( Set -> Set ) ∋ ( ( λ x3510 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d349 = if if true then true else d11 then if true then true else d95 else if true then true else d59
        d352 : if true then ( ( Set -> Set ) ∋ ( ( λ x3560 -> x3560 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d352 = if ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x3540 -> true ) ) ) $ ( d233 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> x3550 ) ) ) $ ( d136 )
        d357 : if false then if false then Bool else Bool else if true then Bool else Bool
        d357 = ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> if d167 then d6 else false ) ) ) $ ( if d211 then false else d47 )
        d359 : if true then ( ( Set -> Set ) ∋ ( ( λ x3610 -> x3610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3620 -> Bool ) ) ) $ ( Bool )
        d359 = if if d241 then d50 else d345 then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> false ) ) ) $ ( d32 )
        d363 : ( ( Set -> Set ) ∋ ( ( λ x3660 -> ( ( Set -> Set ) ∋ ( ( λ x3670 -> if false then x3670 else x3670 ) ) ) $ ( x3660 ) ) ) ) $ ( if true then Bool else Bool )
        d363 = ( ( Bool -> Bool ) ∋ ( ( λ x3640 -> ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> if x3650 then false else d222 ) ) ) $ ( x3640 ) ) ) ) $ ( if false then d11 else false )
        d368 : ( ( Set -> Set ) ∋ ( ( λ x3710 -> ( ( Set -> Set ) ∋ ( ( λ x3720 -> if true then x3710 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> if false then x3700 else d53 ) ) ) $ ( false ) ) ) ) $ ( if d50 then true else true )
        d373 : if false then ( ( Set -> Set ) ∋ ( ( λ x3760 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d373 = if ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> x3740 ) ) ) $ ( d357 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> true ) ) ) $ ( d300 ) else if false then d279 else d189
        d377 : ( ( Set -> Set ) ∋ ( ( λ x3800 -> if false then x3800 else x3800 ) ) ) $ ( if false then Bool else Bool )
        d377 = if ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> true ) ) ) $ ( d211 ) then if d208 then d32 else d333 else ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> true ) ) ) $ ( false )
        d381 : if false then ( ( Set -> Set ) ∋ ( ( λ x3830 -> x3830 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3840 -> x3840 ) ) ) $ ( Bool )
        d381 = if ( ( Bool -> Bool ) ∋ ( ( λ x3820 -> false ) ) ) $ ( false ) then if d313 then d330 else true else if true then d251 else true
        d385 : ( ( Set -> Set ) ∋ ( ( λ x3880 -> ( ( Set -> Set ) ∋ ( ( λ x3890 -> if false then Bool else x3890 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x3860 -> ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if x3860 then x3870 else false ) ) ) $ ( x3860 ) ) ) ) $ ( if false then true else false )
        d390 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3930 -> Bool ) ) ) $ ( Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> ( ( Bool -> Bool ) ∋ ( ( λ x3920 -> if false then false else true ) ) ) $ ( d219 ) ) ) ) $ ( if false then d339 else d98 )
        d394 : if false then if false then Bool else Bool else if false then Bool else Bool
        d394 = ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> if x3950 then d216 else d155 ) ) ) $ ( if d155 then d161 else d305 )
        d396 : ( ( Set -> Set ) ∋ ( ( λ x3990 -> ( ( Set -> Set ) ∋ ( ( λ x4000 -> if true then Bool else x4000 ) ) ) $ ( x3990 ) ) ) ) $ ( if true then Bool else Bool )
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x3970 -> ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> if false then d216 else d193 ) ) ) $ ( true ) ) ) ) $ ( if d139 then d136 else true )
        d401 : if true then ( ( Set -> Set ) ∋ ( ( λ x4040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4050 -> x4050 ) ) ) $ ( Bool )
        d401 = if ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> d339 ) ) ) $ ( true ) then if true then d321 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> x4030 ) ) ) $ ( d321 )
        d406 : ( ( Set -> Set ) ∋ ( ( λ x4080 -> if false then Bool else x4080 ) ) ) $ ( if false then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x4070 -> if x4070 then d261 else d227 ) ) ) $ ( if d164 then d317 else true )
        d409 : ( ( Set -> Set ) ∋ ( ( λ x4130 -> if false then Bool else x4130 ) ) ) $ ( if true then Bool else Bool )
        d409 = if ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4120 -> x4120 ) ) ) $ ( true )
        d414 : if false then if true then Bool else Bool else if false then Bool else Bool
        d414 = ( ( Bool -> Bool ) ∋ ( ( λ x4150 -> ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> if d300 then x4160 else x4160 ) ) ) $ ( d155 ) ) ) ) $ ( if true then true else d325 )
        d417 : if false then ( ( Set -> Set ) ∋ ( ( λ x4190 -> x4190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4200 -> x4200 ) ) ) $ ( Bool )
        d417 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x4180 -> true ) ) ) $ ( d11 ) else if false then true else d214
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4250 -> if false then Bool else x4250 ) ) ) $ ( if true then Bool else Bool )
        d421 = if ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> x4230 ) ) ) $ ( d333 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4240 -> d368 ) ) ) $ ( true )
        d426 : ( ( Set -> Set ) ∋ ( ( λ x4290 -> if false then x4290 else Bool ) ) ) $ ( if true then Bool else Bool )
        d426 = ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> ( ( Bool -> Bool ) ∋ ( ( λ x4280 -> if false then false else x4270 ) ) ) $ ( d270 ) ) ) ) $ ( if false then true else true )
        d430 : ( ( Set -> Set ) ∋ ( ( λ x4330 -> if false then x4330 else Bool ) ) ) $ ( if false then Bool else Bool )
        d430 = if ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> d417 ) ) ) $ ( d292 ) then if true then true else d66 else ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> x4320 ) ) ) $ ( false )
        d434 : if false then if true then Bool else Bool else if true then Bool else Bool
        d434 = ( ( Bool -> Bool ) ∋ ( ( λ x4350 -> if d81 then d317 else x4350 ) ) ) $ ( if d396 then true else d180 )
        d436 : ( ( Set -> Set ) ∋ ( ( λ x4380 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d436 = ( ( Bool -> Bool ) ∋ ( ( λ x4370 -> if d26 then x4370 else x4370 ) ) ) $ ( if true then true else d174 )
        d439 : if true then ( ( Set -> Set ) ∋ ( ( λ x4430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4440 -> x4440 ) ) ) $ ( Bool )
        d439 = if ( ( Bool -> Bool ) ∋ ( ( λ x4400 -> d352 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4410 -> d18 ) ) ) $ ( d390 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4420 -> x4420 ) ) ) $ ( d237 )
        d445 : ( ( Set -> Set ) ∋ ( ( λ x4470 -> ( ( Set -> Set ) ∋ ( ( λ x4480 -> if true then x4470 else x4470 ) ) ) $ ( x4470 ) ) ) ) $ ( if true then Bool else Bool )
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x4460 -> if false then true else false ) ) ) $ ( if d95 then true else d180 )
        d449 : if false then ( ( Set -> Set ) ∋ ( ( λ x4520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4530 -> x4530 ) ) ) $ ( Bool )
        d449 = if ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> x4500 ) ) ) $ ( d258 ) then if false then d118 else false else ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> d333 ) ) ) $ ( d102 )
        d454 : if false then ( ( Set -> Set ) ∋ ( ( λ x4560 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d454 = if if false then true else d317 then ( ( Bool -> Bool ) ∋ ( ( λ x4550 -> x4550 ) ) ) $ ( d81 ) else if d368 then d110 else false
        d457 : if false then ( ( Set -> Set ) ∋ ( ( λ x4600 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d457 = ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> ( ( Bool -> Bool ) ∋ ( ( λ x4590 -> if d227 then false else x4580 ) ) ) $ ( x4580 ) ) ) ) $ ( if d330 then false else false )
        d461 : if false then ( ( Set -> Set ) ∋ ( ( λ x4640 -> x4640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4650 -> x4650 ) ) ) $ ( Bool )
        d461 = ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> ( ( Bool -> Bool ) ∋ ( ( λ x4630 -> if d81 then false else true ) ) ) $ ( d251 ) ) ) ) $ ( if true then true else true )
        d466 : ( ( Set -> Set ) ∋ ( ( λ x4680 -> ( ( Set -> Set ) ∋ ( ( λ x4690 -> if true then x4690 else Bool ) ) ) $ ( x4680 ) ) ) ) $ ( if false then Bool else Bool )
        d466 = if if false then false else false then if d125 then d359 else d457 else ( ( Bool -> Bool ) ∋ ( ( λ x4670 -> d426 ) ) ) $ ( d434 )
        d470 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4720 -> Bool ) ) ) $ ( Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> if d50 then d42 else d110 ) ) ) $ ( if d42 then true else false )
        d473 : ( ( Set -> Set ) ∋ ( ( λ x4760 -> if false then x4760 else Bool ) ) ) $ ( if true then Bool else Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x4740 -> ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> if true then x4740 else false ) ) ) $ ( d300 ) ) ) ) $ ( if false then d436 else d32 )
        d477 : if true then ( ( Set -> Set ) ∋ ( ( λ x4790 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d477 = if if false then d47 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4780 -> x4780 ) ) ) $ ( false ) else if d233 then d102 else d53
        d480 : ( ( Set -> Set ) ∋ ( ( λ x4830 -> ( ( Set -> Set ) ∋ ( ( λ x4840 -> if true then Bool else Bool ) ) ) $ ( x4830 ) ) ) ) $ ( if false then Bool else Bool )
        d480 = ( ( Bool -> Bool ) ∋ ( ( λ x4810 -> ( ( Bool -> Bool ) ∋ ( ( λ x4820 -> if x4820 then x4820 else true ) ) ) $ ( x4810 ) ) ) ) $ ( if d155 then true else true )
        d485 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4870 -> Bool ) ) ) $ ( Bool )
        d485 = if ( ( Bool -> Bool ) ∋ ( ( λ x4860 -> x4860 ) ) ) $ ( false ) then if true then d267 else true else if false then d77 else false
        d488 : if false then ( ( Set -> Set ) ∋ ( ( λ x4900 -> x4900 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d488 = if ( ( Bool -> Bool ) ∋ ( ( λ x4890 -> d143 ) ) ) $ ( d112 ) then if d274 then false else d77 else if d1 then true else false
        d491 : if false then ( ( Set -> Set ) ∋ ( ( λ x4930 -> x4930 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> if false then false else x4920 ) ) ) $ ( if true then true else true )
        d494 : if false then ( ( Set -> Set ) ∋ ( ( λ x4960 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4970 -> Bool ) ) ) $ ( Bool )
        d494 = if ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> false ) ) ) $ ( d309 ) then if true then false else true else if false then d430 else d436
        d498 : if true then ( ( Set -> Set ) ∋ ( ( λ x5010 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d498 = if ( ( Bool -> Bool ) ∋ ( ( λ x4990 -> d414 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( d430 ) else if true then false else d139
        d502 : ( ( Set -> Set ) ∋ ( ( λ x5040 -> if true then Bool else x5040 ) ) ) $ ( if true then Bool else Bool )
        d502 = ( ( Bool -> Bool ) ∋ ( ( λ x5030 -> if x5030 then x5030 else false ) ) ) $ ( if d174 then d251 else d436 )
        d505 : ( ( Set -> Set ) ∋ ( ( λ x5070 -> ( ( Set -> Set ) ∋ ( ( λ x5080 -> if false then Bool else Bool ) ) ) $ ( x5070 ) ) ) ) $ ( if true then Bool else Bool )
        d505 = ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> if d106 then x5060 else d409 ) ) ) $ ( if false then false else d216 )
        d509 : ( ( Set -> Set ) ∋ ( ( λ x5110 -> if true then x5110 else Bool ) ) ) $ ( if true then Bool else Bool )
        d509 = if if d296 then true else true then if d317 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5100 -> x5100 ) ) ) $ ( d118 )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> ( ( Set -> Set ) ∋ ( ( λ x5160 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d512 = ( ( Bool -> Bool ) ∋ ( ( λ x5130 -> ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> if false then false else x5130 ) ) ) $ ( x5130 ) ) ) ) $ ( if true then d373 else d377 )
        d517 : ( ( Set -> Set ) ∋ ( ( λ x5190 -> ( ( Set -> Set ) ∋ ( ( λ x5200 -> if false then x5200 else x5190 ) ) ) $ ( x5190 ) ) ) ) $ ( if false then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x5180 -> if x5180 then x5180 else false ) ) ) $ ( if d170 then d321 else d345 )
        d521 : if true then if false then Bool else Bool else if false then Bool else Bool
        d521 = ( ( Bool -> Bool ) ∋ ( ( λ x5220 -> ( ( Bool -> Bool ) ∋ ( ( λ x5230 -> if false then true else x5220 ) ) ) $ ( d317 ) ) ) ) $ ( if true then d146 else d184 )
        d524 : ( ( Set -> Set ) ∋ ( ( λ x5270 -> if true then x5270 else x5270 ) ) ) $ ( if true then Bool else Bool )
        d524 = ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> ( ( Bool -> Bool ) ∋ ( ( λ x5260 -> if x5250 then false else d6 ) ) ) $ ( d11 ) ) ) ) $ ( if false then d85 else true )
        d528 : if true then ( ( Set -> Set ) ∋ ( ( λ x5320 -> x5320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5330 -> Bool ) ) ) $ ( Bool )
        d528 = if ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> false ) ) ) $ ( d330 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> d258 ) ) ) $ ( d233 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5310 -> d505 ) ) ) $ ( d204 )
        d534 : ( ( Set -> Set ) ∋ ( ( λ x5360 -> if true then Bool else x5360 ) ) ) $ ( if false then Bool else Bool )
        d534 = if if d241 then d222 else d112 then ( ( Bool -> Bool ) ∋ ( ( λ x5350 -> d305 ) ) ) $ ( false ) else if d317 then true else true
        d537 : if false then if false then Bool else Bool else if true then Bool else Bool
        d537 = if if d421 then false else d430 then if d288 then d270 else d95 else ( ( Bool -> Bool ) ∋ ( ( λ x5380 -> true ) ) ) $ ( true )
        d539 : if true then ( ( Set -> Set ) ∋ ( ( λ x5420 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d539 = ( ( Bool -> Bool ) ∋ ( ( λ x5400 -> ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if x5400 then true else false ) ) ) $ ( x5400 ) ) ) ) $ ( if false then true else d279 )
        d543 : if true then ( ( Set -> Set ) ∋ ( ( λ x5450 -> x5450 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d543 = if if d357 then d502 else d267 then if true then d401 else d214 else ( ( Bool -> Bool ) ∋ ( ( λ x5440 -> d74 ) ) ) $ ( true )
        d546 : ( ( Set -> Set ) ∋ ( ( λ x5490 -> ( ( Set -> Set ) ∋ ( ( λ x5500 -> if true then x5490 else x5500 ) ) ) $ ( x5490 ) ) ) ) $ ( if false then Bool else Bool )
        d546 = if if true then d430 else true then ( ( Bool -> Bool ) ∋ ( ( λ x5470 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x5480 -> true ) ) ) $ ( true )
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5530 -> ( ( Set -> Set ) ∋ ( ( λ x5540 -> if false then Bool else Bool ) ) ) $ ( x5530 ) ) ) ) $ ( if false then Bool else Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> if false then x5520 else false ) ) ) $ ( if d537 then d385 else d430 )
        d555 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5570 -> Bool ) ) ) $ ( Bool )
        d555 = if ( ( Bool -> Bool ) ∋ ( ( λ x5560 -> d537 ) ) ) $ ( d6 ) then if d409 then true else false else if true then false else false
        d558 : ( ( Set -> Set ) ∋ ( ( λ x5600 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d558 = ( ( Bool -> Bool ) ∋ ( ( λ x5590 -> if d555 then true else true ) ) ) $ ( if false then d150 else false )
        d561 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5640 -> x5640 ) ) ) $ ( Bool )
        d561 = if ( ( Bool -> Bool ) ∋ ( ( λ x5620 -> d32 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> d457 ) ) ) $ ( false ) else if true then d426 else true
        d565 : ( ( Set -> Set ) ∋ ( ( λ x5670 -> if true then Bool else x5670 ) ) ) $ ( if false then Bool else Bool )
        d565 = ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> if true then false else false ) ) ) $ ( if d466 then d167 else d421 )
        d568 : if false then if false then Bool else Bool else if false then Bool else Bool
        d568 = if ( ( Bool -> Bool ) ∋ ( ( λ x5690 -> d56 ) ) ) $ ( d434 ) then if d246 then d85 else d368 else ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> d193 ) ) ) $ ( true )
        d571 : if true then if true then Bool else Bool else if false then Bool else Bool
        d571 = ( ( Bool -> Bool ) ∋ ( ( λ x5720 -> if d1 then true else x5720 ) ) ) $ ( if false then d157 else false )
        d573 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5760 -> x5760 ) ) ) $ ( Bool )
        d573 = ( ( Bool -> Bool ) ∋ ( ( λ x5740 -> ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> if d227 then x5740 else x5750 ) ) ) $ ( x5740 ) ) ) ) $ ( if d313 then d345 else d93 )
        d577 : ( ( Set -> Set ) ∋ ( ( λ x5790 -> if true then x5790 else x5790 ) ) ) $ ( if true then Bool else Bool )
        d577 = if ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> x5780 ) ) ) $ ( false ) then if true then d439 else true else if d201 then d170 else false
        d580 : if false then ( ( Set -> Set ) ∋ ( ( λ x5820 -> x5820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5830 -> Bool ) ) ) $ ( Bool )
        d580 = if ( ( Bool -> Bool ) ∋ ( ( λ x5810 -> false ) ) ) $ ( d568 ) then if d571 then d208 else d288 else if d414 then d216 else false
        d584 : ( ( Set -> Set ) ∋ ( ( λ x5870 -> if true then x5870 else x5870 ) ) ) $ ( if true then Bool else Bool )
        d584 = if ( ( Bool -> Bool ) ∋ ( ( λ x5850 -> x5850 ) ) ) $ ( d222 ) then ( ( Bool -> Bool ) ∋ ( ( λ x5860 -> false ) ) ) $ ( true ) else if d254 then d577 else d434
        d588 : ( ( Set -> Set ) ∋ ( ( λ x5900 -> ( ( Set -> Set ) ∋ ( ( λ x5910 -> if true then Bool else x5910 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d588 = if if d26 then d279 else d274 then if d89 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x5890 -> false ) ) ) $ ( false )
        d592 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5940 -> Bool ) ) ) $ ( Bool )
        d592 = ( ( Bool -> Bool ) ∋ ( ( λ x5930 -> if x5930 then x5930 else true ) ) ) $ ( if true then false else d491 )
        d595 : ( ( Set -> Set ) ∋ ( ( λ x5980 -> if true then x5980 else Bool ) ) ) $ ( if false then Bool else Bool )
        d595 = if ( ( Bool -> Bool ) ∋ ( ( λ x5960 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x5970 -> d258 ) ) ) $ ( d121 ) else if d283 then d505 else false
        d599 : ( ( Set -> Set ) ∋ ( ( λ x6010 -> if false then x6010 else Bool ) ) ) $ ( if false then Bool else Bool )
        d599 = ( ( Bool -> Bool ) ∋ ( ( λ x6000 -> if d502 then d494 else false ) ) ) $ ( if false then d470 else d584 )
        d602 : ( ( Set -> Set ) ∋ ( ( λ x6050 -> ( ( Set -> Set ) ∋ ( ( λ x6060 -> if false then Bool else x6050 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d602 = ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> ( ( Bool -> Bool ) ∋ ( ( λ x6040 -> if x6030 then x6040 else d283 ) ) ) $ ( x6030 ) ) ) ) $ ( if false then true else false )
        d607 : if true then ( ( Set -> Set ) ∋ ( ( λ x6090 -> x6090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6100 -> x6100 ) ) ) $ ( Bool )
        d607 = ( ( Bool -> Bool ) ∋ ( ( λ x6080 -> if true then x6080 else true ) ) ) $ ( if d95 then d125 else true )
        d611 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6130 -> x6130 ) ) ) $ ( Bool )
        d611 = ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> if d339 then d577 else d595 ) ) ) $ ( if false then false else false )
        d614 : ( ( Set -> Set ) ∋ ( ( λ x6160 -> ( ( Set -> Set ) ∋ ( ( λ x6170 -> if false then Bool else x6160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d614 = if ( ( Bool -> Bool ) ∋ ( ( λ x6150 -> d524 ) ) ) $ ( d193 ) then if d246 then true else d539 else if true then d480 else d95
        d618 : ( ( Set -> Set ) ∋ ( ( λ x6210 -> ( ( Set -> Set ) ∋ ( ( λ x6220 -> if true then x6220 else x6220 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d618 = if ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> d106 ) ) ) $ ( d189 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> true ) ) ) $ ( true ) else if false then d254 else false
        d623 : if false then ( ( Set -> Set ) ∋ ( ( λ x6260 -> x6260 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d623 = ( ( Bool -> Bool ) ∋ ( ( λ x6240 -> ( ( Bool -> Bool ) ∋ ( ( λ x6250 -> if d335 then true else x6240 ) ) ) $ ( x6240 ) ) ) ) $ ( if true then d592 else false )
        d627 : if true then ( ( Set -> Set ) ∋ ( ( λ x6290 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6300 -> x6300 ) ) ) $ ( Bool )
        d627 = ( ( Bool -> Bool ) ∋ ( ( λ x6280 -> if x6280 then x6280 else x6280 ) ) ) $ ( if false then d480 else d373 )
        d631 : if false then ( ( Set -> Set ) ∋ ( ( λ x6350 -> x6350 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d631 = if ( ( Bool -> Bool ) ∋ ( ( λ x6320 -> true ) ) ) $ ( d627 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> x6330 ) ) ) $ ( d363 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6340 -> true ) ) ) $ ( false )
        d636 : if false then ( ( Set -> Set ) ∋ ( ( λ x6390 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d636 = if if true then d473 else d309 then ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> x6370 ) ) ) $ ( d491 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> d611 ) ) ) $ ( false )
        d640 : if false then if true then Bool else Bool else if false then Bool else Bool
        d640 = if if false then d394 else d233 then if false then true else true else if d42 then d300 else true
        d641 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6420 -> Bool ) ) ) $ ( Bool )
        d641 = if if false then false else d70 then if d14 then d640 else false else if d381 then d385 else false
        d643 : if true then ( ( Set -> Set ) ∋ ( ( λ x6450 -> x6450 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d643 = ( ( Bool -> Bool ) ∋ ( ( λ x6440 -> if true then false else false ) ) ) $ ( if d524 then d56 else false )
        d646 : ( ( Set -> Set ) ∋ ( ( λ x6480 -> if false then x6480 else x6480 ) ) ) $ ( if false then Bool else Bool )
        d646 = if if d623 then d150 else d95 then if d517 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> d118 ) ) ) $ ( d279 )
        d649 : ( ( Set -> Set ) ∋ ( ( λ x6530 -> ( ( Set -> Set ) ∋ ( ( λ x6540 -> if false then x6530 else x6530 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d649 = if ( ( Bool -> Bool ) ∋ ( ( λ x6500 -> true ) ) ) $ ( d528 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> d558 ) ) ) $ ( d580 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6520 -> d439 ) ) ) $ ( true )
        d655 : ( ( Set -> Set ) ∋ ( ( λ x6590 -> if false then x6590 else x6590 ) ) ) $ ( if false then Bool else Bool )
        d655 = if ( ( Bool -> Bool ) ∋ ( ( λ x6560 -> x6560 ) ) ) $ ( d22 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6570 -> x6570 ) ) ) $ ( d409 ) else ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> false ) ) ) $ ( d607 )
        d660 : ( ( Set -> Set ) ∋ ( ( λ x6620 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d660 = if if true then false else true then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> x6610 ) ) ) $ ( d561 )
        d663 : ( ( Set -> Set ) ∋ ( ( λ x6670 -> if true then x6670 else Bool ) ) ) $ ( if true then Bool else Bool )
        d663 = if ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> d219 ) ) ) $ ( d577 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6650 -> x6650 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x6660 -> true ) ) ) $ ( false )
        d668 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6700 -> Bool ) ) ) $ ( Bool )
        d668 = if ( ( Bool -> Bool ) ∋ ( ( λ x6690 -> x6690 ) ) ) $ ( true ) then if d251 then false else d32 else if true then false else true
        d671 : ( ( Set -> Set ) ∋ ( ( λ x6740 -> ( ( Set -> Set ) ∋ ( ( λ x6750 -> if false then x6740 else x6750 ) ) ) $ ( x6740 ) ) ) ) $ ( if true then Bool else Bool )
        d671 = if if d488 then d288 else d571 then ( ( Bool -> Bool ) ∋ ( ( λ x6720 -> d539 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6730 -> x6730 ) ) ) $ ( false )
        d676 : ( ( Set -> Set ) ∋ ( ( λ x6780 -> ( ( Set -> Set ) ∋ ( ( λ x6790 -> if true then Bool else x6780 ) ) ) $ ( x6780 ) ) ) ) $ ( if true then Bool else Bool )
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> if d89 then true else x6770 ) ) ) $ ( if d201 then d357 else d146 )
        d680 : ( ( Set -> Set ) ∋ ( ( λ x6830 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d680 = if ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> true ) ) ) $ ( d313 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> false ) ) ) $ ( d193 ) else if false then d668 else true
        d684 : ( ( Set -> Set ) ∋ ( ( λ x6870 -> ( ( Set -> Set ) ∋ ( ( λ x6880 -> if true then Bool else Bool ) ) ) $ ( x6870 ) ) ) ) $ ( if true then Bool else Bool )
        d684 = ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> if false then true else x6850 ) ) ) $ ( d618 ) ) ) ) $ ( if d461 then false else d288 )
        d689 : if false then ( ( Set -> Set ) ∋ ( ( λ x6920 -> x6920 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6930 -> Bool ) ) ) $ ( Bool )
        d689 = ( ( Bool -> Bool ) ∋ ( ( λ x6900 -> ( ( Bool -> Bool ) ∋ ( ( λ x6910 -> if true then d74 else d488 ) ) ) $ ( true ) ) ) ) $ ( if false then d61 else d246 )
        d694 : if false then ( ( Set -> Set ) ∋ ( ( λ x6950 -> x6950 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d694 = if if d394 then d95 else d539 then if d279 then d611 else true else if d555 then false else d321
        d696 : ( ( Set -> Set ) ∋ ( ( λ x6990 -> ( ( Set -> Set ) ∋ ( ( λ x7000 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x6970 -> ( ( Bool -> Bool ) ∋ ( ( λ x6980 -> if true then true else x6970 ) ) ) $ ( d349 ) ) ) ) $ ( if d480 then d502 else d167 )
        d701 : ( ( Set -> Set ) ∋ ( ( λ x7030 -> if true then Bool else x7030 ) ) ) $ ( if true then Bool else Bool )
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x7020 -> if true then d167 else false ) ) ) $ ( if d95 then d22 else true )
        d704 : if false then if true then Bool else Bool else if true then Bool else Bool
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> if d98 then false else x7050 ) ) ) $ ( if d357 then d349 else d426 )
        d706 : ( ( Set -> Set ) ∋ ( ( λ x7090 -> ( ( Set -> Set ) ∋ ( ( λ x7100 -> if true then Bool else x7100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d706 = if ( ( Bool -> Bool ) ∋ ( ( λ x7070 -> d77 ) ) ) $ ( d233 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7080 -> true ) ) ) $ ( d696 ) else if false then d349 else false
        d711 : ( ( Set -> Set ) ∋ ( ( λ x7130 -> ( ( Set -> Set ) ∋ ( ( λ x7140 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d711 = if ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> x7120 ) ) ) $ ( d211 ) then if d112 then d521 else false else if false then false else true
        d715 : ( ( Set -> Set ) ∋ ( ( λ x7170 -> if false then Bool else x7170 ) ) ) $ ( if false then Bool else Bool )
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x7160 -> if x7160 then false else d602 ) ) ) $ ( if d164 then true else d488 )
        d718 : ( ( Set -> Set ) ∋ ( ( λ x7200 -> if false then Bool else x7200 ) ) ) $ ( if false then Bool else Bool )
        d718 = ( ( Bool -> Bool ) ∋ ( ( λ x7190 -> if true then x7190 else true ) ) ) $ ( if false then d592 else d335 )
        d721 : if true then if true then Bool else Bool else if false then Bool else Bool
        d721 = ( ( Bool -> Bool ) ∋ ( ( λ x7220 -> if true then x7220 else d321 ) ) ) $ ( if true then d537 else true )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x7260 -> if false then Bool else x7260 ) ) ) $ ( if false then Bool else Bool )
        d723 = if if true then true else d305 then ( ( Bool -> Bool ) ∋ ( ( λ x7240 -> x7240 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7250 -> true ) ) ) $ ( false )
        d727 : if false then if false then Bool else Bool else if false then Bool else Bool
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> if x7280 then false else x7280 ) ) ) $ ( if true then d701 else d167 )
        d729 : ( ( Set -> Set ) ∋ ( ( λ x7330 -> ( ( Set -> Set ) ∋ ( ( λ x7340 -> if false then x7330 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d729 = if ( ( Bool -> Bool ) ∋ ( ( λ x7300 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x7310 -> x7310 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> x7320 ) ) ) $ ( d480 )
        d735 : if true then ( ( Set -> Set ) ∋ ( ( λ x7370 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> if x7360 then true else false ) ) ) $ ( if true then true else d718 )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x7420 -> if false then Bool else x7420 ) ) ) $ ( if true then Bool else Bool )
        d738 = if ( ( Bool -> Bool ) ∋ ( ( λ x7390 -> x7390 ) ) ) $ ( d26 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7400 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7410 -> x7410 ) ) ) $ ( d577 )
        d743 : ( ( Set -> Set ) ∋ ( ( λ x7460 -> ( ( Set -> Set ) ∋ ( ( λ x7470 -> if false then Bool else Bool ) ) ) $ ( x7460 ) ) ) ) $ ( if false then Bool else Bool )
        d743 = ( ( Bool -> Bool ) ∋ ( ( λ x7440 -> ( ( Bool -> Bool ) ∋ ( ( λ x7450 -> if x7440 then d251 else d636 ) ) ) $ ( false ) ) ) ) $ ( if true then true else d377 )
        d748 : if true then ( ( Set -> Set ) ∋ ( ( λ x7510 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d748 = ( ( Bool -> Bool ) ∋ ( ( λ x7490 -> ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> if d227 then x7500 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d723 else d735 )
        d752 : if false then if true then Bool else Bool else if true then Bool else Bool
        d752 = if if d546 then d534 else d748 then ( ( Bool -> Bool ) ∋ ( ( λ x7530 -> x7530 ) ) ) $ ( d561 ) else if true then d106 else d333
        d754 : ( ( Set -> Set ) ∋ ( ( λ x7570 -> ( ( Set -> Set ) ∋ ( ( λ x7580 -> if true then Bool else x7580 ) ) ) $ ( x7570 ) ) ) ) $ ( if false then Bool else Bool )
        d754 = if ( ( Bool -> Bool ) ∋ ( ( λ x7550 -> false ) ) ) $ ( true ) then if false then d406 else d584 else ( ( Bool -> Bool ) ∋ ( ( λ x7560 -> x7560 ) ) ) $ ( d723 )
        d759 : ( ( Set -> Set ) ∋ ( ( λ x7610 -> if true then Bool else x7610 ) ) ) $ ( if false then Bool else Bool )
        d759 = if if d457 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> d106 ) ) ) $ ( d246 ) else if true then d170 else d89
        d762 : if true then if false then Bool else Bool else if true then Bool else Bool
        d762 = ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> if true then x7630 else false ) ) ) $ ( if d357 then true else true )
        d764 : ( ( Set -> Set ) ∋ ( ( λ x7680 -> ( ( Set -> Set ) ∋ ( ( λ x7690 -> if true then x7680 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d764 = if ( ( Bool -> Bool ) ∋ ( ( λ x7650 -> false ) ) ) $ ( d184 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7670 -> true ) ) ) $ ( true )
        d770 : if false then ( ( Set -> Set ) ∋ ( ( λ x7740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7750 -> Bool ) ) ) $ ( Bool )
        d770 = if ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> true ) ) ) $ ( d485 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7720 -> x7720 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x7730 -> d502 ) ) ) $ ( true )
        d776 : ( ( Set -> Set ) ∋ ( ( λ x7780 -> ( ( Set -> Set ) ∋ ( ( λ x7790 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d776 = if if true then false else false then if false then d466 else d222 else ( ( Bool -> Bool ) ∋ ( ( λ x7770 -> d543 ) ) ) $ ( d121 )
        d780 : if true then ( ( Set -> Set ) ∋ ( ( λ x7820 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7830 -> x7830 ) ) ) $ ( Bool )
        d780 = ( ( Bool -> Bool ) ∋ ( ( λ x7810 -> if x7810 then false else x7810 ) ) ) $ ( if false then d385 else d81 )
        d784 : if false then ( ( Set -> Set ) ∋ ( ( λ x7870 -> x7870 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d784 = if ( ( Bool -> Bool ) ∋ ( ( λ x7850 -> x7850 ) ) ) $ ( false ) then if d112 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x7860 -> x7860 ) ) ) $ ( false )
        d788 : if false then ( ( Set -> Set ) ∋ ( ( λ x7900 -> x7900 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d788 = if if d727 then false else d47 then if d491 then true else d694 else ( ( Bool -> Bool ) ∋ ( ( λ x7890 -> false ) ) ) $ ( d721 )
        d791 : if false then ( ( Set -> Set ) ∋ ( ( λ x7950 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7960 -> x7960 ) ) ) $ ( Bool )
        d791 = if ( ( Bool -> Bool ) ∋ ( ( λ x7920 -> d59 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> x7930 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7940 -> x7940 ) ) ) $ ( true )
        d797 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8000 -> x8000 ) ) ) $ ( Bool )
        d797 = ( ( Bool -> Bool ) ∋ ( ( λ x7980 -> ( ( Bool -> Bool ) ∋ ( ( λ x7990 -> if d363 then true else true ) ) ) $ ( true ) ) ) ) $ ( if d509 then false else d788 )
        d801 : if true then ( ( Set -> Set ) ∋ ( ( λ x8030 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8040 -> Bool ) ) ) $ ( Bool )
        d801 = if if false then d780 else true then if d254 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x8020 -> false ) ) ) $ ( d721 )
        d805 : if true then ( ( Set -> Set ) ∋ ( ( λ x8070 -> x8070 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x8060 -> if x8060 then true else d157 ) ) ) $ ( if false then false else false )
        d808 : ( ( Set -> Set ) ∋ ( ( λ x8120 -> ( ( Set -> Set ) ∋ ( ( λ x8130 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d808 = if ( ( Bool -> Bool ) ∋ ( ( λ x8090 -> x8090 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> x8100 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> d11 ) ) ) $ ( false )
        d814 : ( ( Set -> Set ) ∋ ( ( λ x8170 -> if true then x8170 else x8170 ) ) ) $ ( if true then Bool else Bool )
        d814 = if ( ( Bool -> Bool ) ∋ ( ( λ x8150 -> d118 ) ) ) $ ( true ) then if true then false else d199 else ( ( Bool -> Bool ) ∋ ( ( λ x8160 -> d801 ) ) ) $ ( true )
        d818 : ( ( Set -> Set ) ∋ ( ( λ x8200 -> ( ( Set -> Set ) ∋ ( ( λ x8210 -> if true then Bool else x8210 ) ) ) $ ( x8200 ) ) ) ) $ ( if false then Bool else Bool )
        d818 = if if d29 then false else d110 then if false then false else d274 else ( ( Bool -> Bool ) ∋ ( ( λ x8190 -> d345 ) ) ) $ ( d29 )
        d822 : ( ( Set -> Set ) ∋ ( ( λ x8250 -> if true then Bool else x8250 ) ) ) $ ( if true then Bool else Bool )
        d822 = ( ( Bool -> Bool ) ∋ ( ( λ x8230 -> ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> if x8230 then false else x8230 ) ) ) $ ( true ) ) ) ) $ ( if d330 then d128 else false )
        d826 : if true then ( ( Set -> Set ) ∋ ( ( λ x8280 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d826 = if if false then d602 else true then if d584 then d534 else true else ( ( Bool -> Bool ) ∋ ( ( λ x8270 -> false ) ) ) $ ( d59 )
        d829 : if false then ( ( Set -> Set ) ∋ ( ( λ x8320 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d829 = ( ( Bool -> Bool ) ∋ ( ( λ x8300 -> ( ( Bool -> Bool ) ∋ ( ( λ x8310 -> if x8300 then true else false ) ) ) $ ( d170 ) ) ) ) $ ( if d577 then d721 else true )
        d833 : ( ( Set -> Set ) ∋ ( ( λ x8360 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x8340 -> ( ( Bool -> Bool ) ∋ ( ( λ x8350 -> if x8350 then false else x8350 ) ) ) $ ( x8340 ) ) ) ) $ ( if false then false else false )
        d837 : if false then ( ( Set -> Set ) ∋ ( ( λ x8400 -> x8400 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x8380 -> ( ( Bool -> Bool ) ∋ ( ( λ x8390 -> if false then true else x8390 ) ) ) $ ( x8380 ) ) ) ) $ ( if d201 then d466 else d230 )
        d841 : if false then if true then Bool else Bool else if true then Bool else Bool
        d841 = if ( ( Bool -> Bool ) ∋ ( ( λ x8420 -> d706 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8430 -> d381 ) ) ) $ ( true ) else if d729 then false else false
        d844 : if true then ( ( Set -> Set ) ∋ ( ( λ x8470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d844 = if ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> false ) ) ) $ ( true ) else if d491 then true else d292
        d848 : ( ( Set -> Set ) ∋ ( ( λ x8500 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d848 = ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> if x8490 then x8490 else false ) ) ) $ ( if false then d449 else false )
        d851 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8540 -> x8540 ) ) ) $ ( Bool )
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x8520 -> ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> if x8520 then d580 else true ) ) ) $ ( d555 ) ) ) ) $ ( if d396 then d568 else d848 )
        d855 : if true then if false then Bool else Bool else if false then Bool else Bool
        d855 = ( ( Bool -> Bool ) ∋ ( ( λ x8560 -> ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> if true then false else x8570 ) ) ) $ ( d305 ) ) ) ) $ ( if d473 then true else false )
        d858 : if true then if false then Bool else Bool else if true then Bool else Bool
        d858 = if if d640 then false else d449 then ( ( Bool -> Bool ) ∋ ( ( λ x8590 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8600 -> true ) ) ) $ ( d505 )
        d861 : ( ( Set -> Set ) ∋ ( ( λ x8620 -> if false then Bool else x8620 ) ) ) $ ( if false then Bool else Bool )
        d861 = if if d89 then d26 else false then if false then true else d342 else if d573 then d684 else true
        d863 : ( ( Set -> Set ) ∋ ( ( λ x8660 -> ( ( Set -> Set ) ∋ ( ( λ x8670 -> if false then x8660 else Bool ) ) ) $ ( x8660 ) ) ) ) $ ( if false then Bool else Bool )
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x8640 -> ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> if false then false else x8640 ) ) ) $ ( d305 ) ) ) ) $ ( if d26 then false else true )
        d868 : ( ( Set -> Set ) ∋ ( ( λ x8700 -> if true then x8700 else x8700 ) ) ) $ ( if false then Bool else Bool )
        d868 = ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> if d292 then true else false ) ) ) $ ( if true then false else d614 )
        d871 : ( ( Set -> Set ) ∋ ( ( λ x8720 -> if false then x8720 else Bool ) ) ) $ ( if false then Bool else Bool )
        d871 = if if false then d251 else d222 then if false then false else true else if d219 then d694 else true
        d873 : ( ( Set -> Set ) ∋ ( ( λ x8750 -> if true then x8750 else x8750 ) ) ) $ ( if false then Bool else Bool )
        d873 = ( ( Bool -> Bool ) ∋ ( ( λ x8740 -> if x8740 then false else d555 ) ) ) $ ( if true then false else false )
        d876 : ( ( Set -> Set ) ∋ ( ( λ x8780 -> if true then x8780 else x8780 ) ) ) $ ( if false then Bool else Bool )
        d876 = ( ( Bool -> Bool ) ∋ ( ( λ x8770 -> if d417 then d66 else x8770 ) ) ) $ ( if d663 then false else d599 )
        d879 : if false then if false then Bool else Bool else if false then Bool else Bool
        d879 = ( ( Bool -> Bool ) ∋ ( ( λ x8800 -> ( ( Bool -> Bool ) ∋ ( ( λ x8810 -> if true then d861 else d110 ) ) ) $ ( x8800 ) ) ) ) $ ( if false then true else d680 )
        d882 : ( ( Set -> Set ) ∋ ( ( λ x8830 -> ( ( Set -> Set ) ∋ ( ( λ x8840 -> if false then x8830 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d882 = if if d170 then true else false then if d421 then false else d876 else if d414 then false else d32
        d885 : if true then ( ( Set -> Set ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d885 = ( ( Bool -> Bool ) ∋ ( ( λ x8860 -> ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> if x8870 then false else x8870 ) ) ) $ ( d829 ) ) ) ) $ ( if d70 then d649 else d434 )
        d889 : if false then ( ( Set -> Set ) ∋ ( ( λ x8920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8930 -> Bool ) ) ) $ ( Bool )
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x8900 -> ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> if false then true else d325 ) ) ) $ ( d614 ) ) ) ) $ ( if d882 then false else d56 )
        d894 : if false then ( ( Set -> Set ) ∋ ( ( λ x8970 -> x8970 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d894 = ( ( Bool -> Bool ) ∋ ( ( λ x8950 -> ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> if x8950 then true else true ) ) ) $ ( false ) ) ) ) $ ( if d584 then true else false )
        d898 : if true then if true then Bool else Bool else if true then Bool else Bool
        d898 = if if true then true else d676 then ( ( Bool -> Bool ) ∋ ( ( λ x8990 -> d59 ) ) ) $ ( false ) else if d660 then d95 else false
        d900 : ( ( Set -> Set ) ∋ ( ( λ x9020 -> if true then Bool else x9020 ) ) ) $ ( if false then Bool else Bool )
        d900 = if ( ( Bool -> Bool ) ∋ ( ( λ x9010 -> x9010 ) ) ) $ ( true ) then if true then d409 else d421 else if true then d342 else true
        d903 : if true then if true then Bool else Bool else if false then Bool else Bool
        d903 = if ( ( Bool -> Bool ) ∋ ( ( λ x9040 -> x9040 ) ) ) $ ( true ) then if d401 then true else false else if true then false else d339
        d905 : ( ( Set -> Set ) ∋ ( ( λ x9080 -> ( ( Set -> Set ) ∋ ( ( λ x9090 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d905 = if ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> d95 ) ) ) $ ( false ) then if d426 then d77 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9070 -> d498 ) ) ) $ ( false )
        d910 : if false then ( ( Set -> Set ) ∋ ( ( λ x9140 -> x9140 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d910 = if ( ( Bool -> Bool ) ∋ ( ( λ x9110 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x9120 -> true ) ) ) $ ( d704 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9130 -> true ) ) ) $ ( false )
        d915 : ( ( Set -> Set ) ∋ ( ( λ x9170 -> ( ( Set -> Set ) ∋ ( ( λ x9180 -> if false then x9180 else x9180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d915 = if if true then d339 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9160 -> d390 ) ) ) $ ( false ) else if d396 then d477 else true
        d919 : ( ( Set -> Set ) ∋ ( ( λ x9220 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d919 = if if d770 then d174 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9200 -> x9200 ) ) ) $ ( d373 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9210 -> d689 ) ) ) $ ( false )
        d923 : if false then if true then Bool else Bool else if false then Bool else Bool
        d923 = if ( ( Bool -> Bool ) ∋ ( ( λ x9240 -> false ) ) ) $ ( d330 ) then if d204 then false else true else if d330 then d808 else d715
        d925 : if true then ( ( Set -> Set ) ∋ ( ( λ x9270 -> x9270 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d925 = if if false then d283 else false then if false then false else d640 else ( ( Bool -> Bool ) ∋ ( ( λ x9260 -> x9260 ) ) ) $ ( d53 )
        d928 : if false then ( ( Set -> Set ) ∋ ( ( λ x9300 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d928 = ( ( Bool -> Bool ) ∋ ( ( λ x9290 -> if x9290 then false else x9290 ) ) ) $ ( if true then false else d539 )
        d931 : if true then ( ( Set -> Set ) ∋ ( ( λ x9340 -> x9340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d931 = if ( ( Bool -> Bool ) ∋ ( ( λ x9320 -> d879 ) ) ) $ ( true ) then if d618 then d882 else false else ( ( Bool -> Bool ) ∋ ( ( λ x9330 -> false ) ) ) $ ( d241 )
        d935 : if true then if true then Bool else Bool else if false then Bool else Bool
        d935 = if ( ( Bool -> Bool ) ∋ ( ( λ x9360 -> d333 ) ) ) $ ( d631 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> x9370 ) ) ) $ ( d643 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9380 -> d81 ) ) ) $ ( d631 )
        d939 : if false then ( ( Set -> Set ) ∋ ( ( λ x9410 -> x9410 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d939 = ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> if false then true else d680 ) ) ) $ ( if false then d780 else false )
        d942 : ( ( Set -> Set ) ∋ ( ( λ x9440 -> if true then x9440 else x9440 ) ) ) $ ( if true then Bool else Bool )
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x9430 -> if true then x9430 else true ) ) ) $ ( if false then true else d270 )
        d945 : ( ( Set -> Set ) ∋ ( ( λ x9470 -> if true then Bool else x9470 ) ) ) $ ( if false then Bool else Bool )
        d945 = ( ( Bool -> Bool ) ∋ ( ( λ x9460 -> if x9460 then x9460 else x9460 ) ) ) $ ( if d565 then true else false )
        d948 : ( ( Set -> Set ) ∋ ( ( λ x9510 -> ( ( Set -> Set ) ∋ ( ( λ x9520 -> if true then Bool else x9510 ) ) ) $ ( x9510 ) ) ) ) $ ( if false then Bool else Bool )
        d948 = ( ( Bool -> Bool ) ∋ ( ( λ x9490 -> ( ( Bool -> Bool ) ∋ ( ( λ x9500 -> if true then x9500 else d180 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d953 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9560 -> Bool ) ) ) $ ( Bool )
        d953 = if if d373 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> true ) ) ) $ ( d505 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9550 -> d935 ) ) ) $ ( true )
        d957 : ( ( Set -> Set ) ∋ ( ( λ x9590 -> if false then x9590 else x9590 ) ) ) $ ( if true then Bool else Bool )
        d957 = ( ( Bool -> Bool ) ∋ ( ( λ x9580 -> if false then d189 else x9580 ) ) ) $ ( if d502 then false else true )
        d960 : ( ( Set -> Set ) ∋ ( ( λ x9630 -> ( ( Set -> Set ) ∋ ( ( λ x9640 -> if false then Bool else Bool ) ) ) $ ( x9630 ) ) ) ) $ ( if true then Bool else Bool )
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> ( ( Bool -> Bool ) ∋ ( ( λ x9620 -> if x9620 then x9610 else true ) ) ) $ ( d11 ) ) ) ) $ ( if d829 then d357 else d32 )
        d965 : if true then ( ( Set -> Set ) ∋ ( ( λ x9680 -> x9680 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9690 -> x9690 ) ) ) $ ( Bool )
        d965 = if if false then d406 else d430 then ( ( Bool -> Bool ) ∋ ( ( λ x9660 -> d74 ) ) ) $ ( d164 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9670 -> d227 ) ) ) $ ( true )
        d970 : if false then if true then Bool else Bool else if false then Bool else Bool
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x9710 -> if true then d98 else d580 ) ) ) $ ( if true then true else d555 )
        d972 : ( ( Set -> Set ) ∋ ( ( λ x9740 -> ( ( Set -> Set ) ∋ ( ( λ x9750 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d972 = ( ( Bool -> Bool ) ∋ ( ( λ x9730 -> if d491 then x9730 else x9730 ) ) ) $ ( if d150 then true else d436 )
        d976 : ( ( Set -> Set ) ∋ ( ( λ x9790 -> ( ( Set -> Set ) ∋ ( ( λ x9800 -> if false then Bool else Bool ) ) ) $ ( x9790 ) ) ) ) $ ( if false then Bool else Bool )
        d976 = ( ( Bool -> Bool ) ∋ ( ( λ x9770 -> ( ( Bool -> Bool ) ∋ ( ( λ x9780 -> if x9770 then false else x9780 ) ) ) $ ( x9770 ) ) ) ) $ ( if d180 then false else d95 )
        d981 : if true then ( ( Set -> Set ) ∋ ( ( λ x9820 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d981 = if if true then true else true then if true then d565 else true else if true then false else true
        d983 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9860 -> Bool ) ) ) $ ( Bool )
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x9840 -> ( ( Bool -> Bool ) ∋ ( ( λ x9850 -> if false then x9850 else d466 ) ) ) $ ( d776 ) ) ) ) $ ( if d776 then d945 else true )
        d987 : if false then ( ( Set -> Set ) ∋ ( ( λ x9900 -> x9900 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d987 = if ( ( Bool -> Bool ) ∋ ( ( λ x9880 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> d473 ) ) ) $ ( true ) else if d377 then false else d222
        d991 : ( ( Set -> Set ) ∋ ( ( λ x9930 -> if true then x9930 else Bool ) ) ) $ ( if false then Bool else Bool )
        d991 = ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> if d261 then false else d45 ) ) ) $ ( if false then false else true )
        d994 : ( ( Set -> Set ) ∋ ( ( λ x9960 -> ( ( Set -> Set ) ∋ ( ( λ x9970 -> if true then x9970 else x9970 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d994 = ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> if d477 then x9950 else false ) ) ) $ ( if false then true else d390 )
        d998 : if true then ( ( Set -> Set ) ∋ ( ( λ x10000 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d998 = if if false then true else true then if d898 then d59 else d270 else ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> false ) ) ) $ ( d689 )
        d1001 : if true then ( ( Set -> Set ) ∋ ( ( λ x10030 -> x10030 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10040 -> Bool ) ) ) $ ( Bool )
        d1001 = if if d882 then d743 else d805 then ( ( Bool -> Bool ) ∋ ( ( λ x10020 -> d352 ) ) ) $ ( true ) else if d848 then d59 else d972
        d1005 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1005 = ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> ( ( Bool -> Bool ) ∋ ( ( λ x10070 -> if x10070 then false else true ) ) ) $ ( true ) ) ) ) $ ( if false then d219 else d738 )
        d1008 : if false then ( ( Set -> Set ) ∋ ( ( λ x10110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10120 -> x10120 ) ) ) $ ( Bool )
        d1008 = ( ( Bool -> Bool ) ∋ ( ( λ x10090 -> ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> if false then d385 else d998 ) ) ) $ ( x10090 ) ) ) ) $ ( if d618 then true else false )
        d1013 : ( ( Set -> Set ) ∋ ( ( λ x10160 -> if false then x10160 else x10160 ) ) ) $ ( if true then Bool else Bool )
        d1013 = if ( ( Bool -> Bool ) ∋ ( ( λ x10140 -> d851 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10150 -> x10150 ) ) ) $ ( false ) else if d640 then d26 else d595
        d1017 : ( ( Set -> Set ) ∋ ( ( λ x10190 -> ( ( Set -> Set ) ∋ ( ( λ x10200 -> if false then x10200 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1017 = ( ( Bool -> Bool ) ∋ ( ( λ x10180 -> if true then d414 else false ) ) ) $ ( if true then true else d863 )
        d1021 : ( ( Set -> Set ) ∋ ( ( λ x10230 -> if true then Bool else x10230 ) ) ) $ ( if false then Bool else Bool )
        d1021 = ( ( Bool -> Bool ) ∋ ( ( λ x10220 -> if d401 then d764 else x10220 ) ) ) $ ( if false then d889 else false )
        d1024 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1024 = ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> if true then d193 else true ) ) ) $ ( if false then true else false )
        d1026 : ( ( Set -> Set ) ∋ ( ( λ x10280 -> ( ( Set -> Set ) ∋ ( ( λ x10290 -> if true then x10290 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1026 = if if d345 then d885 else true then if false then d42 else true else ( ( Bool -> Bool ) ∋ ( ( λ x10270 -> d254 ) ) ) $ ( true )
        d1030 : ( ( Set -> Set ) ∋ ( ( λ x10330 -> ( ( Set -> Set ) ∋ ( ( λ x10340 -> if true then x10330 else x10330 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1030 = if if false then d905 else d704 then ( ( Bool -> Bool ) ∋ ( ( λ x10310 -> x10310 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10320 -> x10320 ) ) ) $ ( true )
        d1035 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1035 = if if false then false else d863 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x10360 -> d339 ) ) ) $ ( false )
        d1037 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1037 = ( ( Bool -> Bool ) ∋ ( ( λ x10380 -> ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> if x10380 then false else true ) ) ) $ ( d668 ) ) ) ) $ ( if true then true else true )
        d1040 : if false then ( ( Set -> Set ) ∋ ( ( λ x10420 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10430 -> x10430 ) ) ) $ ( Bool )
        d1040 = ( ( Bool -> Bool ) ∋ ( ( λ x10410 -> if x10410 then false else x10410 ) ) ) $ ( if false then false else d222 )
        d1044 : if false then ( ( Set -> Set ) ∋ ( ( λ x10460 -> x10460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10470 -> x10470 ) ) ) $ ( Bool )
        d1044 = ( ( Bool -> Bool ) ∋ ( ( λ x10450 -> if x10450 then d470 else x10450 ) ) ) $ ( if d254 then d357 else d851 )
        d1048 : if false then ( ( Set -> Set ) ∋ ( ( λ x10490 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1048 = if if true then false else d784 then if d279 then d491 else true else if d945 then false else true
        d1050 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1050 = if ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> d333 ) ) ) $ ( true ) then if d339 then d983 else d910 else ( ( Bool -> Bool ) ∋ ( ( λ x10520 -> x10520 ) ) ) $ ( false )
        d1053 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10550 -> Bool ) ) ) $ ( Bool )
        d1053 = if ( ( Bool -> Bool ) ∋ ( ( λ x10540 -> true ) ) ) $ ( false ) then if true then d449 else d74 else if true then d894 else false
        d1056 : ( ( Set -> Set ) ∋ ( ( λ x10580 -> ( ( Set -> Set ) ∋ ( ( λ x10590 -> if true then x10580 else Bool ) ) ) $ ( x10580 ) ) ) ) $ ( if false then Bool else Bool )
        d1056 = if ( ( Bool -> Bool ) ∋ ( ( λ x10570 -> x10570 ) ) ) $ ( d649 ) then if true then false else true else if false then true else true
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x10620 -> ( ( Set -> Set ) ∋ ( ( λ x10630 -> if false then Bool else x10620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1060 = ( ( Bool -> Bool ) ∋ ( ( λ x10610 -> if false then true else true ) ) ) $ ( if true then true else d133 )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x10670 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1064 = ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> ( ( Bool -> Bool ) ∋ ( ( λ x10660 -> if x10660 then true else true ) ) ) $ ( x10650 ) ) ) ) $ ( if d1044 then d841 else d689 )
        d1068 : ( ( Set -> Set ) ∋ ( ( λ x10710 -> if false then x10710 else x10710 ) ) ) $ ( if true then Bool else Bool )
        d1068 = ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> ( ( Bool -> Bool ) ∋ ( ( λ x10700 -> if x10690 then d696 else false ) ) ) $ ( true ) ) ) ) $ ( if d805 then d814 else true )
        d1072 : if true then ( ( Set -> Set ) ∋ ( ( λ x10740 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1072 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> d701 ) ) ) $ ( true ) else if d663 then d998 else true
        d1075 : ( ( Set -> Set ) ∋ ( ( λ x10790 -> ( ( Set -> Set ) ∋ ( ( λ x10800 -> if true then Bool else x10800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1075 = if ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> false ) ) ) $ ( d112 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10770 -> d50 ) ) ) $ ( d983 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> d325 ) ) ) $ ( d945 )
        d1081 : ( ( Set -> Set ) ∋ ( ( λ x10840 -> if false then x10840 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1081 = if if true then d676 else d715 then ( ( Bool -> Bool ) ∋ ( ( λ x10820 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x10830 -> d394 ) ) ) $ ( d573 )
        d1085 : if false then ( ( Set -> Set ) ∋ ( ( λ x10870 -> x10870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1085 = ( ( Bool -> Bool ) ∋ ( ( λ x10860 -> if false then x10860 else true ) ) ) $ ( if true then d784 else false )
        d1088 : ( ( Set -> Set ) ∋ ( ( λ x10900 -> ( ( Set -> Set ) ∋ ( ( λ x10910 -> if false then Bool else x10910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1088 = ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> if false then true else false ) ) ) $ ( if d174 then false else d960 )
        d1092 : ( ( Set -> Set ) ∋ ( ( λ x10940 -> ( ( Set -> Set ) ∋ ( ( λ x10950 -> if false then x10940 else x10940 ) ) ) $ ( x10940 ) ) ) ) $ ( if false then Bool else Bool )
        d1092 = if ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> d983 ) ) ) $ ( false ) then if false then d1085 else false else if d373 then true else false
        d1096 : if false then ( ( Set -> Set ) ∋ ( ( λ x10980 -> x10980 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10990 -> x10990 ) ) ) $ ( Bool )
        d1096 = ( ( Bool -> Bool ) ∋ ( ( λ x10970 -> if x10970 then d948 else d512 ) ) ) $ ( if true then d93 else false )
        d1100 : if true then ( ( Set -> Set ) ∋ ( ( λ x11020 -> x11020 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1100 = ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> if x11010 then x11010 else d543 ) ) ) $ ( if false then d246 else d430 )
        d1103 : ( ( Set -> Set ) ∋ ( ( λ x11060 -> if false then x11060 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1103 = if ( ( Bool -> Bool ) ∋ ( ( λ x11040 -> false ) ) ) $ ( false ) then if false then d470 else false else ( ( Bool -> Bool ) ∋ ( ( λ x11050 -> d377 ) ) ) $ ( d1100 )
        d1107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1107 = if ( ( Bool -> Bool ) ∋ ( ( λ x11080 -> false ) ) ) $ ( d296 ) then if true then true else true else if false then d534 else true
        d1109 : ( ( Set -> Set ) ∋ ( ( λ x11120 -> if true then x11120 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1109 = ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> if false then true else x11100 ) ) ) $ ( d641 ) ) ) ) $ ( if d759 then d981 else d385 )
        d1113 : ( ( Set -> Set ) ∋ ( ( λ x11160 -> ( ( Set -> Set ) ∋ ( ( λ x11170 -> if false then x11170 else x11160 ) ) ) $ ( x11160 ) ) ) ) $ ( if true then Bool else Bool )
        d1113 = if if d102 then d801 else d660 then ( ( Bool -> Bool ) ∋ ( ( λ x11140 -> d602 ) ) ) $ ( d851 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11150 -> x11150 ) ) ) $ ( d689 )
        d1118 : ( ( Set -> Set ) ∋ ( ( λ x11200 -> ( ( Set -> Set ) ∋ ( ( λ x11210 -> if true then x11210 else x11210 ) ) ) $ ( x11200 ) ) ) ) $ ( if true then Bool else Bool )
        d1118 = ( ( Bool -> Bool ) ∋ ( ( λ x11190 -> if d201 then x11190 else x11190 ) ) ) $ ( if d164 then d14 else false )
        d1122 : ( ( Set -> Set ) ∋ ( ( λ x11250 -> if true then x11250 else x11250 ) ) ) $ ( if true then Bool else Bool )
        d1122 = if ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> d1075 ) ) ) $ ( d814 ) then if d6 then false else d546 else ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> x11240 ) ) ) $ ( true )
        d1126 : ( ( Set -> Set ) ∋ ( ( λ x11280 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1126 = if if d1107 then d607 else true then ( ( Bool -> Bool ) ∋ ( ( λ x11270 -> false ) ) ) $ ( d254 ) else if d349 then d230 else d457
        d1129 : ( ( Set -> Set ) ∋ ( ( λ x11320 -> if true then x11320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1129 = if ( ( Bool -> Bool ) ∋ ( ( λ x11300 -> x11300 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11310 -> x11310 ) ) ) $ ( d727 ) else if d189 then true else d957
        d1133 : if false then ( ( Set -> Set ) ∋ ( ( λ x11360 -> x11360 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1133 = ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> ( ( Bool -> Bool ) ∋ ( ( λ x11350 -> if d1035 then true else d512 ) ) ) $ ( d671 ) ) ) ) $ ( if d150 then true else true )
        d1137 : ( ( Set -> Set ) ∋ ( ( λ x11400 -> ( ( Set -> Set ) ∋ ( ( λ x11410 -> if true then Bool else x11400 ) ) ) $ ( x11400 ) ) ) ) $ ( if false then Bool else Bool )
        d1137 = if ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> false ) ) ) $ ( d349 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11390 -> x11390 ) ) ) $ ( d77 ) else if d631 then d537 else true
        d1142 : ( ( Set -> Set ) ∋ ( ( λ x11450 -> if false then Bool else x11450 ) ) ) $ ( if false then Bool else Bool )
        d1142 = ( ( Bool -> Bool ) ∋ ( ( λ x11430 -> ( ( Bool -> Bool ) ∋ ( ( λ x11440 -> if d945 then x11430 else false ) ) ) $ ( d357 ) ) ) ) $ ( if d485 then true else d434 )
        d1146 : ( ( Set -> Set ) ∋ ( ( λ x11490 -> if false then x11490 else x11490 ) ) ) $ ( if false then Bool else Bool )
        d1146 = ( ( Bool -> Bool ) ∋ ( ( λ x11470 -> ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> if x11470 then true else x11470 ) ) ) $ ( d903 ) ) ) ) $ ( if false then d339 else false )
        d1150 : ( ( Set -> Set ) ∋ ( ( λ x11530 -> ( ( Set -> Set ) ∋ ( ( λ x11540 -> if true then Bool else x11540 ) ) ) $ ( x11530 ) ) ) ) $ ( if false then Bool else Bool )
        d1150 = ( ( Bool -> Bool ) ∋ ( ( λ x11510 -> ( ( Bool -> Bool ) ∋ ( ( λ x11520 -> if d505 then true else x11510 ) ) ) $ ( true ) ) ) ) $ ( if false then d546 else d473 )
        d1155 : ( ( Set -> Set ) ∋ ( ( λ x11570 -> ( ( Set -> Set ) ∋ ( ( λ x11580 -> if false then Bool else x11570 ) ) ) $ ( x11570 ) ) ) ) $ ( if false then Bool else Bool )
        d1155 = if if d987 then true else d948 then if d110 then d826 else d445 else ( ( Bool -> Bool ) ∋ ( ( λ x11560 -> x11560 ) ) ) $ ( d385 )
        d1159 : ( ( Set -> Set ) ∋ ( ( λ x11630 -> ( ( Set -> Set ) ∋ ( ( λ x11640 -> if false then x11630 else x11640 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1159 = if ( ( Bool -> Bool ) ∋ ( ( λ x11600 -> x11600 ) ) ) $ ( d701 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11610 -> x11610 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11620 -> d434 ) ) ) $ ( false )
        d1165 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1165 = if if d970 then false else d11 then ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> x11660 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> x11670 ) ) ) $ ( d981 )
        d1168 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11710 -> x11710 ) ) ) $ ( Bool )
        d1168 = ( ( Bool -> Bool ) ∋ ( ( λ x11690 -> ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> if x11700 then x11690 else false ) ) ) $ ( x11690 ) ) ) ) $ ( if true then d1017 else d555 )
        d1172 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1172 = if if d1026 then d157 else d738 then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x11730 -> d715 ) ) ) $ ( true )
        d1174 : ( ( Set -> Set ) ∋ ( ( λ x11770 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1174 = if if d928 then d125 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> x11750 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x11760 -> false ) ) ) $ ( true )
        d1178 : if true then ( ( Set -> Set ) ∋ ( ( λ x11810 -> x11810 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1178 = ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> if d1026 then d143 else false ) ) ) $ ( d1126 ) ) ) ) $ ( if d222 then true else true )
        d1182 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11830 -> x11830 ) ) ) $ ( Bool )
        d1182 = if if false then d643 else true then if d170 then false else d61 else if false then true else d931
        d1184 : ( ( Set -> Set ) ∋ ( ( λ x11860 -> if true then x11860 else x11860 ) ) ) $ ( if true then Bool else Bool )
        d1184 = if ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> x11850 ) ) ) $ ( d711 ) then if d167 then d288 else d584 else if d759 then d801 else d858
        d1187 : ( ( Set -> Set ) ∋ ( ( λ x11890 -> ( ( Set -> Set ) ∋ ( ( λ x11900 -> if true then x11900 else Bool ) ) ) $ ( x11890 ) ) ) ) $ ( if true then Bool else Bool )
        d1187 = if if true then d701 else false then if d321 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x11880 -> true ) ) ) $ ( d1 )
        d1191 : ( ( Set -> Set ) ∋ ( ( λ x11950 -> ( ( Set -> Set ) ∋ ( ( λ x11960 -> if true then x11950 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1191 = if ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x11930 -> true ) ) ) $ ( d858 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11940 -> x11940 ) ) ) $ ( true )
        d1197 : ( ( Set -> Set ) ∋ ( ( λ x11990 -> if true then x11990 else x11990 ) ) ) $ ( if false then Bool else Bool )
        d1197 = ( ( Bool -> Bool ) ∋ ( ( λ x11980 -> if d1137 then d53 else false ) ) ) $ ( if d89 then d727 else true )
        d1200 : if false then ( ( Set -> Set ) ∋ ( ( λ x12020 -> x12020 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1200 = ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> if x12010 then false else true ) ) ) $ ( if false then d631 else false )
        d1203 : ( ( Set -> Set ) ∋ ( ( λ x12050 -> ( ( Set -> Set ) ∋ ( ( λ x12060 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1203 = if if true then d373 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12040 -> x12040 ) ) ) $ ( d641 ) else if d342 then d735 else d528
        d1207 : ( ( Set -> Set ) ∋ ( ( λ x12090 -> ( ( Set -> Set ) ∋ ( ( λ x12100 -> if false then Bool else x12100 ) ) ) $ ( x12090 ) ) ) ) $ ( if true then Bool else Bool )
        d1207 = if if d715 then d454 else true then if d957 then d50 else false else ( ( Bool -> Bool ) ∋ ( ( λ x12080 -> true ) ) ) $ ( d998 )
        d1211 : if false then ( ( Set -> Set ) ∋ ( ( λ x12150 -> x12150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1211 = if ( ( Bool -> Bool ) ∋ ( ( λ x12120 -> x12120 ) ) ) $ ( d1037 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12130 -> x12130 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12140 -> d219 ) ) ) $ ( d174 )
        d1216 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1216 = if if d780 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x12170 -> x12170 ) ) ) $ ( d110 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12180 -> true ) ) ) $ ( false )
        d1219 : if true then ( ( Set -> Set ) ∋ ( ( λ x12200 -> x12200 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1219 = if if d715 then false else d136 then if false then d668 else true else if d1197 then d1122 else d965
        d1221 : if false then ( ( Set -> Set ) ∋ ( ( λ x12220 -> x12220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12230 -> x12230 ) ) ) $ ( Bool )
        d1221 = if if d706 then d1109 else d701 then if d1072 then d706 else d396 else if d357 then d780 else true
        d1224 : if true then ( ( Set -> Set ) ∋ ( ( λ x12270 -> x12270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12280 -> Bool ) ) ) $ ( Bool )
        d1224 = if ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> d931 ) ) ) $ ( d701 ) then if false then d485 else d689 else ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> true ) ) ) $ ( true )
        d1229 : if true then ( ( Set -> Set ) ∋ ( ( λ x12330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12340 -> Bool ) ) ) $ ( Bool )
        d1229 = if ( ( Bool -> Bool ) ∋ ( ( λ x12300 -> d1197 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12310 -> d494 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12320 -> false ) ) ) $ ( true )
        d1235 : if false then ( ( Set -> Set ) ∋ ( ( λ x12380 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1235 = ( ( Bool -> Bool ) ∋ ( ( λ x12360 -> ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> if d701 then d925 else x12360 ) ) ) $ ( x12360 ) ) ) ) $ ( if d805 then d898 else true )
        d1239 : ( ( Set -> Set ) ∋ ( ( λ x12430 -> ( ( Set -> Set ) ∋ ( ( λ x12440 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1239 = if ( ( Bool -> Bool ) ∋ ( ( λ x12400 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x12410 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> d18 ) ) ) $ ( false )
        d1245 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12470 -> x12470 ) ) ) $ ( Bool )
        d1245 = if if d573 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> x12460 ) ) ) $ ( d373 ) else if true then true else d305
        d1248 : ( ( Set -> Set ) ∋ ( ( λ x12510 -> ( ( Set -> Set ) ∋ ( ( λ x12520 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1248 = ( ( Bool -> Bool ) ∋ ( ( λ x12490 -> ( ( Bool -> Bool ) ∋ ( ( λ x12500 -> if false then false else d915 ) ) ) $ ( d960 ) ) ) ) $ ( if d45 then false else false )
        d1253 : ( ( Set -> Set ) ∋ ( ( λ x12560 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1253 = ( ( Bool -> Bool ) ∋ ( ( λ x12540 -> ( ( Bool -> Bool ) ∋ ( ( λ x12550 -> if x12550 then true else false ) ) ) $ ( true ) ) ) ) $ ( if d434 then d1085 else true )
        d1257 : ( ( Set -> Set ) ∋ ( ( λ x12600 -> if false then x12600 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1257 = ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> ( ( Bool -> Bool ) ∋ ( ( λ x12590 -> if d571 then x12590 else d627 ) ) ) $ ( false ) ) ) ) $ ( if true then d983 else d32 )
        d1261 : ( ( Set -> Set ) ∋ ( ( λ x12630 -> if true then x12630 else x12630 ) ) ) $ ( if false then Bool else Bool )
        d1261 = ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> if false then false else d93 ) ) ) $ ( if true then false else false )
        d1264 : ( ( Set -> Set ) ∋ ( ( λ x12670 -> if false then x12670 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1264 = ( ( Bool -> Bool ) ∋ ( ( λ x12650 -> ( ( Bool -> Bool ) ∋ ( ( λ x12660 -> if d1081 then d826 else x12660 ) ) ) $ ( d837 ) ) ) ) $ ( if d211 then d509 else true )
        d1268 : if false then ( ( Set -> Set ) ∋ ( ( λ x12710 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1268 = ( ( Bool -> Bool ) ∋ ( ( λ x12690 -> ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> if x12690 then x12690 else false ) ) ) $ ( true ) ) ) ) $ ( if d534 then d1013 else false )
        d1272 : if false then ( ( Set -> Set ) ∋ ( ( λ x12740 -> x12740 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1272 = if if d283 then d406 else d748 then ( ( Bool -> Bool ) ∋ ( ( λ x12730 -> x12730 ) ) ) $ ( false ) else if true then d903 else d396
        d1275 : ( ( Set -> Set ) ∋ ( ( λ x12770 -> ( ( Set -> Set ) ∋ ( ( λ x12780 -> if false then x12770 else Bool ) ) ) $ ( x12770 ) ) ) ) $ ( if false then Bool else Bool )
        d1275 = ( ( Bool -> Bool ) ∋ ( ( λ x12760 -> if false then x12760 else d649 ) ) ) $ ( if d1013 then false else d164 )
        d1279 : ( ( Set -> Set ) ∋ ( ( λ x12820 -> ( ( Set -> Set ) ∋ ( ( λ x12830 -> if true then Bool else x12820 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1279 = ( ( Bool -> Bool ) ∋ ( ( λ x12800 -> ( ( Bool -> Bool ) ∋ ( ( λ x12810 -> if d1113 then x12810 else d1053 ) ) ) $ ( d1216 ) ) ) ) $ ( if d401 then false else d602 )
        d1284 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12880 -> Bool ) ) ) $ ( Bool )
        d1284 = if ( ( Bool -> Bool ) ∋ ( ( λ x12850 -> x12850 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12860 -> d543 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12870 -> true ) ) ) $ ( d436 )
        d1289 : ( ( Set -> Set ) ∋ ( ( λ x12910 -> ( ( Set -> Set ) ∋ ( ( λ x12920 -> if false then x12910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1289 = if if d568 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x12900 -> x12900 ) ) ) $ ( d715 ) else if true then false else false
        d1293 : ( ( Set -> Set ) ∋ ( ( λ x12950 -> if true then x12950 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1293 = ( ( Bool -> Bool ) ∋ ( ( λ x12940 -> if x12940 then false else x12940 ) ) ) $ ( if d300 then false else d1056 )
        d1296 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12990 -> x12990 ) ) ) $ ( Bool )
        d1296 = ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> ( ( Bool -> Bool ) ∋ ( ( λ x12980 -> if x12980 then d1056 else true ) ) ) $ ( true ) ) ) ) $ ( if d409 then true else false )
        d1300 : if true then ( ( Set -> Set ) ∋ ( ( λ x13010 -> x13010 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13020 -> Bool ) ) ) $ ( Bool )
        d1300 = if if d558 then d1159 else d876 then if true then true else true else if d942 then d421 else false
        d1303 : ( ( Set -> Set ) ∋ ( ( λ x13060 -> ( ( Set -> Set ) ∋ ( ( λ x13070 -> if false then x13060 else x13070 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1303 = ( ( Bool -> Bool ) ∋ ( ( λ x13040 -> ( ( Bool -> Bool ) ∋ ( ( λ x13050 -> if d696 then d1155 else false ) ) ) $ ( d614 ) ) ) ) $ ( if true then d680 else true )
        d1308 : ( ( Set -> Set ) ∋ ( ( λ x13100 -> ( ( Set -> Set ) ∋ ( ( λ x13110 -> if false then Bool else Bool ) ) ) $ ( x13100 ) ) ) ) $ ( if false then Bool else Bool )
        d1308 = if if true then false else true then if false then d335 else true else ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> d808 ) ) ) $ ( d558 )
        d1312 : ( ( Set -> Set ) ∋ ( ( λ x13140 -> ( ( Set -> Set ) ∋ ( ( λ x13150 -> if true then x13140 else x13140 ) ) ) $ ( x13140 ) ) ) ) $ ( if false then Bool else Bool )
        d1312 = ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> if false then d330 else x13130 ) ) ) $ ( if true then true else true )
        d1316 : ( ( Set -> Set ) ∋ ( ( λ x13190 -> if true then x13190 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1316 = if if d1211 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13180 -> x13180 ) ) ) $ ( false )
        d1320 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1320 = if if true then false else true then if true then d61 else d776 else if true then false else false
        d1321 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1321 = if ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> d718 ) ) ) $ ( d136 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13230 -> true ) ) ) $ ( d752 ) else if true then true else false
        d1324 : ( ( Set -> Set ) ∋ ( ( λ x13260 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1324 = ( ( Bool -> Bool ) ∋ ( ( λ x13250 -> if d1191 then false else x13250 ) ) ) $ ( if true then d655 else d715 )
        d1327 : ( ( Set -> Set ) ∋ ( ( λ x13310 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1327 = if ( ( Bool -> Bool ) ∋ ( ( λ x13280 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> true ) ) ) $ ( d599 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13300 -> false ) ) ) $ ( d368 )
        d1332 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13350 -> x13350 ) ) ) $ ( Bool )
        d1332 = ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> ( ( Bool -> Bool ) ∋ ( ( λ x13340 -> if d684 then x13340 else false ) ) ) $ ( d1075 ) ) ) ) $ ( if false then false else d1053 )
        d1336 : if false then ( ( Set -> Set ) ∋ ( ( λ x13390 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1336 = if ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> d1321 ) ) ) $ ( d1184 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13380 -> x13380 ) ) ) $ ( true ) else if d663 then true else true
        d1340 : ( ( Set -> Set ) ∋ ( ( λ x13430 -> ( ( Set -> Set ) ∋ ( ( λ x13440 -> if false then x13440 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1340 = ( ( Bool -> Bool ) ∋ ( ( λ x13410 -> ( ( Bool -> Bool ) ∋ ( ( λ x13420 -> if true then true else d37 ) ) ) $ ( d439 ) ) ) ) $ ( if d321 then true else false )
        d1345 : ( ( Set -> Set ) ∋ ( ( λ x13480 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1345 = if ( ( Bool -> Bool ) ∋ ( ( λ x13460 -> true ) ) ) $ ( d1174 ) then if d157 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> x13470 ) ) ) $ ( false )
        d1349 : if true then ( ( Set -> Set ) ∋ ( ( λ x13510 -> x13510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13520 -> Bool ) ) ) $ ( Bool )
        d1349 = ( ( Bool -> Bool ) ∋ ( ( λ x13500 -> if d791 then false else d592 ) ) ) $ ( if d349 then false else d599 )
        d1353 : ( ( Set -> Set ) ∋ ( ( λ x13560 -> if false then x13560 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1353 = ( ( Bool -> Bool ) ∋ ( ( λ x13540 -> ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> if true then false else d689 ) ) ) $ ( d599 ) ) ) ) $ ( if d1109 then d655 else d1172 )
        d1357 : ( ( Set -> Set ) ∋ ( ( λ x13600 -> ( ( Set -> Set ) ∋ ( ( λ x13610 -> if true then x13610 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1357 = ( ( Bool -> Bool ) ∋ ( ( λ x13580 -> ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> if d37 then x13590 else x13580 ) ) ) $ ( x13580 ) ) ) ) $ ( if true then d706 else false )
        d1362 : ( ( Set -> Set ) ∋ ( ( λ x13650 -> if true then x13650 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1362 = ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> ( ( Bool -> Bool ) ∋ ( ( λ x13640 -> if false then d98 else false ) ) ) $ ( x13630 ) ) ) ) $ ( if d1155 then d6 else false )
        d1366 : ( ( Set -> Set ) ∋ ( ( λ x13690 -> if false then x13690 else x13690 ) ) ) $ ( if false then Bool else Bool )
        d1366 = ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> ( ( Bool -> Bool ) ∋ ( ( λ x13680 -> if x13670 then x13670 else d505 ) ) ) $ ( d143 ) ) ) ) $ ( if true then d935 else false )
        d1370 : ( ( Set -> Set ) ∋ ( ( λ x13730 -> ( ( Set -> Set ) ∋ ( ( λ x13740 -> if false then x13730 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1370 = ( ( Bool -> Bool ) ∋ ( ( λ x13710 -> ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> if x13720 then d1366 else false ) ) ) $ ( x13710 ) ) ) ) $ ( if false then false else false )
        d1375 : if true then ( ( Set -> Set ) ∋ ( ( λ x13780 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1375 = if ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> x13760 ) ) ) $ ( d704 ) then if true then d146 else d157 else ( ( Bool -> Bool ) ∋ ( ( λ x13770 -> true ) ) ) $ ( d352 )
        d1379 : if false then ( ( Set -> Set ) ∋ ( ( λ x13830 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1379 = if ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> d201 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> d641 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13820 -> x13820 ) ) ) $ ( d216 )
        d1384 : ( ( Set -> Set ) ∋ ( ( λ x13860 -> if true then x13860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1384 = ( ( Bool -> Bool ) ∋ ( ( λ x13850 -> if x13850 then true else x13850 ) ) ) $ ( if d546 then false else true )
        d1387 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13900 -> Bool ) ) ) $ ( Bool )
        d1387 = if ( ( Bool -> Bool ) ∋ ( ( λ x13880 -> d611 ) ) ) $ ( d330 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13890 -> x13890 ) ) ) $ ( false ) else if d498 then true else d1113
        d1391 : ( ( Set -> Set ) ∋ ( ( λ x13950 -> ( ( Set -> Set ) ∋ ( ( λ x13960 -> if false then Bool else Bool ) ) ) $ ( x13950 ) ) ) ) $ ( if false then Bool else Bool )
        d1391 = if ( ( Bool -> Bool ) ∋ ( ( λ x13920 -> x13920 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> d466 ) ) ) $ ( d715 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13940 -> d631 ) ) ) $ ( true )
        d1397 : ( ( Set -> Set ) ∋ ( ( λ x13980 -> ( ( Set -> Set ) ∋ ( ( λ x13990 -> if true then x13980 else x13990 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1397 = if if d161 then d1172 else d1044 then if true then d461 else d45 else if false then true else true
        d1400 : ( ( Set -> Set ) ∋ ( ( λ x14020 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1400 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> d216 ) ) ) $ ( d871 ) else if d66 then d991 else d305
        d1403 : if false then ( ( Set -> Set ) ∋ ( ( λ x14060 -> x14060 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14070 -> Bool ) ) ) $ ( Bool )
        d1403 = if ( ( Bool -> Bool ) ∋ ( ( λ x14040 -> d748 ) ) ) $ ( d29 ) then if d727 then d663 else d1122 else ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> true ) ) ) $ ( d1126 )
        d1408 : ( ( Set -> Set ) ∋ ( ( λ x14110 -> ( ( Set -> Set ) ∋ ( ( λ x14120 -> if false then x14120 else Bool ) ) ) $ ( x14110 ) ) ) ) $ ( if true then Bool else Bool )
        d1408 = ( ( Bool -> Bool ) ∋ ( ( λ x14090 -> ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> if true then false else x14100 ) ) ) $ ( d50 ) ) ) ) $ ( if d770 then true else true )
        d1413 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14170 -> x14170 ) ) ) $ ( Bool )
        d1413 = if ( ( Bool -> Bool ) ∋ ( ( λ x14140 -> d558 ) ) ) $ ( d180 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14150 -> d953 ) ) ) $ ( d406 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14160 -> false ) ) ) $ ( true )
        d1418 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1418 = if if true then false else false then if false then true else d641 else ( ( Bool -> Bool ) ∋ ( ( λ x14190 -> true ) ) ) $ ( d855 )
        d1420 : ( ( Set -> Set ) ∋ ( ( λ x14230 -> if true then Bool else x14230 ) ) ) $ ( if false then Bool else Bool )
        d1420 = ( ( Bool -> Bool ) ∋ ( ( λ x14210 -> ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> if d1021 then false else x14210 ) ) ) $ ( d611 ) ) ) ) $ ( if d910 then true else true )
        d1424 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14260 -> Bool ) ) ) $ ( Bool )
        d1424 = ( ( Bool -> Bool ) ∋ ( ( λ x14250 -> if true then d1129 else x14250 ) ) ) $ ( if true then true else true )
        d1427 : ( ( Set -> Set ) ∋ ( ( λ x14280 -> if true then x14280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1427 = if if d863 then d876 else false then if d660 then true else true else if d611 then d143 else d848
        d1429 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14320 -> Bool ) ) ) $ ( Bool )
        d1429 = if if d1150 then d1248 else false then ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> d18 ) ) ) $ ( d396 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14310 -> d66 ) ) ) $ ( true )
        d1433 : if true then ( ( Set -> Set ) ∋ ( ( λ x14340 -> x14340 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1433 = if if true then true else d219 then if true then true else false else if false then true else d1005
        d1435 : if true then ( ( Set -> Set ) ∋ ( ( λ x14380 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1435 = ( ( Bool -> Bool ) ∋ ( ( λ x14360 -> ( ( Bool -> Bool ) ∋ ( ( λ x14370 -> if x14370 then false else d614 ) ) ) $ ( d1165 ) ) ) ) $ ( if false then d1113 else true )
        d1439 : if false then ( ( Set -> Set ) ∋ ( ( λ x14410 -> x14410 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1439 = ( ( Bool -> Bool ) ∋ ( ( λ x14400 -> if x14400 then x14400 else d1418 ) ) ) $ ( if false then d723 else true )
        d1442 : ( ( Set -> Set ) ∋ ( ( λ x14450 -> ( ( Set -> Set ) ∋ ( ( λ x14460 -> if true then x14450 else x14460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1442 = if ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> x14430 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14440 -> true ) ) ) $ ( d814 ) else if d1197 then false else d477
        d1447 : ( ( Set -> Set ) ∋ ( ( λ x14490 -> ( ( Set -> Set ) ∋ ( ( λ x14500 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1447 = if if d1261 then d251 else d935 then ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> d1107 ) ) ) $ ( d1118 ) else if d330 then d37 else d258
        d1451 : ( ( Set -> Set ) ∋ ( ( λ x14530 -> if true then Bool else x14530 ) ) ) $ ( if true then Bool else Bool )
        d1451 = if if d333 then true else false then if d723 then false else d663 else ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> d121 ) ) ) $ ( true )
        d1454 : ( ( Set -> Set ) ∋ ( ( λ x14570 -> ( ( Set -> Set ) ∋ ( ( λ x14580 -> if false then x14580 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1454 = if ( ( Bool -> Bool ) ∋ ( ( λ x14550 -> false ) ) ) $ ( false ) then if true then d1387 else d748 else ( ( Bool -> Bool ) ∋ ( ( λ x14560 -> x14560 ) ) ) $ ( true )
        d1459 : ( ( Set -> Set ) ∋ ( ( λ x14620 -> ( ( Set -> Set ) ∋ ( ( λ x14630 -> if true then x14620 else Bool ) ) ) $ ( x14620 ) ) ) ) $ ( if true then Bool else Bool )
        d1459 = ( ( Bool -> Bool ) ∋ ( ( λ x14600 -> ( ( Bool -> Bool ) ∋ ( ( λ x14610 -> if false then true else true ) ) ) $ ( d53 ) ) ) ) $ ( if true then false else false )
        d1464 : if true then ( ( Set -> Set ) ∋ ( ( λ x14670 -> x14670 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1464 = if ( ( Bool -> Bool ) ∋ ( ( λ x14650 -> d1060 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> d841 ) ) ) $ ( d1435 ) else if true then false else d534
        d1468 : ( ( Set -> Set ) ∋ ( ( λ x14710 -> ( ( Set -> Set ) ∋ ( ( λ x14720 -> if false then x14710 else x14720 ) ) ) $ ( x14710 ) ) ) ) $ ( if false then Bool else Bool )
        d1468 = ( ( Bool -> Bool ) ∋ ( ( λ x14690 -> ( ( Bool -> Bool ) ∋ ( ( λ x14700 -> if false then x14700 else x14700 ) ) ) $ ( true ) ) ) ) $ ( if d1221 then d965 else true )
        d1473 : ( ( Set -> Set ) ∋ ( ( λ x14750 -> ( ( Set -> Set ) ∋ ( ( λ x14760 -> if false then x14750 else x14760 ) ) ) $ ( x14750 ) ) ) ) $ ( if false then Bool else Bool )
        d1473 = if ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> true ) ) ) $ ( false ) then if d748 then true else d558 else if d1418 then d776 else false
        d1477 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1477 = if ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> x14780 ) ) ) $ ( d935 ) then if d1400 then d919 else false else if d1424 then false else false
        d1479 : if true then ( ( Set -> Set ) ∋ ( ( λ x14810 -> x14810 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14820 -> x14820 ) ) ) $ ( Bool )
        d1479 = if ( ( Bool -> Bool ) ∋ ( ( λ x14800 -> d29 ) ) ) $ ( false ) then if d1300 then true else d1035 else if d288 then true else d680
        d1483 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1483 = if if d1037 then d457 else true then ( ( Bool -> Bool ) ∋ ( ( λ x14840 -> true ) ) ) $ ( true ) else if d1126 then true else false
        d1485 : if false then ( ( Set -> Set ) ∋ ( ( λ x14870 -> x14870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1485 = if ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> d694 ) ) ) $ ( d457 ) then if d204 then true else false else if false then d636 else d706
        d1488 : ( ( Set -> Set ) ∋ ( ( λ x14900 -> if false then x14900 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1488 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x14890 -> false ) ) ) $ ( d1050 ) else if d1168 then d89 else false
        d1491 : ( ( Set -> Set ) ∋ ( ( λ x14940 -> ( ( Set -> Set ) ∋ ( ( λ x14950 -> if true then Bool else x14940 ) ) ) $ ( x14940 ) ) ) ) $ ( if true then Bool else Bool )
        d1491 = ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> ( ( Bool -> Bool ) ∋ ( ( λ x14930 -> if x14930 then d1332 else x14930 ) ) ) $ ( true ) ) ) ) $ ( if d1178 then false else false )
        d1496 : ( ( Set -> Set ) ∋ ( ( λ x14990 -> if false then x14990 else x14990 ) ) ) $ ( if false then Bool else Bool )
        d1496 = ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> ( ( Bool -> Bool ) ∋ ( ( λ x14980 -> if false then true else false ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d1500 : ( ( Set -> Set ) ∋ ( ( λ x15030 -> if true then Bool else x15030 ) ) ) $ ( if false then Bool else Bool )
        d1500 = ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> if d95 then d128 else false ) ) ) $ ( d723 ) ) ) ) $ ( if d537 then true else d551 )
        d1504 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1504 = ( ( Bool -> Bool ) ∋ ( ( λ x15050 -> ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> if x15050 then d1451 else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else d1021 )
        d1507 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1507 = ( ( Bool -> Bool ) ∋ ( ( λ x15080 -> if false then d373 else d923 ) ) ) $ ( if false then d1126 else d1118 )
        d1509 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1509 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> x15100 ) ) ) $ ( true ) else if d879 then true else d994
        d1511 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1511 = if if false then false else d29 then ( ( Bool -> Bool ) ∋ ( ( λ x15120 -> d313 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15130 -> d1146 ) ) ) $ ( d764 )
        d1514 : if false then ( ( Set -> Set ) ∋ ( ( λ x15150 -> x15150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15160 -> Bool ) ) ) $ ( Bool )
        d1514 = if if d1172 then true else true then if false then d668 else d770 else if d363 then true else d1268
        d1517 : if true then ( ( Set -> Set ) ∋ ( ( λ x15200 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1517 = ( ( Bool -> Bool ) ∋ ( ( λ x15180 -> ( ( Bool -> Bool ) ∋ ( ( λ x15190 -> if x15190 then false else x15190 ) ) ) $ ( true ) ) ) ) $ ( if d110 then false else d1044 )
        d1521 : ( ( Set -> Set ) ∋ ( ( λ x15220 -> if false then Bool else x15220 ) ) ) $ ( if true then Bool else Bool )
        d1521 = if if d377 then true else true then if d960 then false else true else if true then false else d1418
        d1523 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1523 = if if d1420 then d89 else false then if true then true else d945 else if d965 then false else d868
        d1524 : ( ( Set -> Set ) ∋ ( ( λ x15260 -> if true then Bool else x15260 ) ) ) $ ( if true then Bool else Bool )
        d1524 = ( ( Bool -> Bool ) ∋ ( ( λ x15250 -> if true then x15250 else d894 ) ) ) $ ( if d1219 then d788 else d1092 )
        d1527 : ( ( Set -> Set ) ∋ ( ( λ x15290 -> ( ( Set -> Set ) ∋ ( ( λ x15300 -> if true then Bool else x15290 ) ) ) $ ( x15290 ) ) ) ) $ ( if true then Bool else Bool )
        d1527 = if if d373 then false else d1523 then if false then d439 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15280 -> x15280 ) ) ) $ ( true )
        d1531 : if false then ( ( Set -> Set ) ∋ ( ( λ x15330 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1531 = ( ( Bool -> Bool ) ∋ ( ( λ x15320 -> if x15320 then false else false ) ) ) $ ( if d676 then d1370 else d1048 )
        d1534 : ( ( Set -> Set ) ∋ ( ( λ x15360 -> if false then x15360 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1534 = ( ( Bool -> Bool ) ∋ ( ( λ x15350 -> if d1289 then x15350 else d1349 ) ) ) $ ( if false then d1429 else d345 )
        d1537 : ( ( Set -> Set ) ∋ ( ( λ x15400 -> if false then x15400 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1537 = if ( ( Bool -> Bool ) ∋ ( ( λ x15380 -> d727 ) ) ) $ ( d1207 ) then if d32 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x15390 -> d1275 ) ) ) $ ( d738 )
        d1541 : ( ( Set -> Set ) ∋ ( ( λ x15440 -> ( ( Set -> Set ) ∋ ( ( λ x15450 -> if false then x15440 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1541 = ( ( Bool -> Bool ) ∋ ( ( λ x15420 -> ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> if true then d118 else d1221 ) ) ) $ ( true ) ) ) ) $ ( if d274 then d1332 else false )
        d1546 : if false then ( ( Set -> Set ) ∋ ( ( λ x15480 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1546 = if if false then d1174 else d1219 then if false then d1320 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15470 -> x15470 ) ) ) $ ( d146 )
        d1549 : ( ( Set -> Set ) ∋ ( ( λ x15520 -> if false then Bool else x15520 ) ) ) $ ( if true then Bool else Bool )
        d1549 = ( ( Bool -> Bool ) ∋ ( ( λ x15500 -> ( ( Bool -> Bool ) ∋ ( ( λ x15510 -> if d421 then x15510 else false ) ) ) $ ( false ) ) ) ) $ ( if d537 then d684 else false )
        d1553 : ( ( Set -> Set ) ∋ ( ( λ x15550 -> ( ( Set -> Set ) ∋ ( ( λ x15560 -> if true then Bool else Bool ) ) ) $ ( x15550 ) ) ) ) $ ( if false then Bool else Bool )
        d1553 = ( ( Bool -> Bool ) ∋ ( ( λ x15540 -> if true then false else true ) ) ) $ ( if d631 then d994 else true )
        d1557 : ( ( Set -> Set ) ∋ ( ( λ x15600 -> ( ( Set -> Set ) ∋ ( ( λ x15610 -> if false then x15600 else x15610 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1557 = if ( ( Bool -> Bool ) ∋ ( ( λ x15580 -> x15580 ) ) ) $ ( true ) then if d1514 then d1248 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15590 -> d333 ) ) ) $ ( false )
        d1562 : ( ( Set -> Set ) ∋ ( ( λ x15650 -> if true then x15650 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1562 = ( ( Bool -> Bool ) ∋ ( ( λ x15630 -> ( ( Bool -> Bool ) ∋ ( ( λ x15640 -> if d1332 then x15640 else x15630 ) ) ) $ ( x15630 ) ) ) ) $ ( if true then d157 else d1203 )
        d1566 : ( ( Set -> Set ) ∋ ( ( λ x15690 -> ( ( Set -> Set ) ∋ ( ( λ x15700 -> if true then x15700 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1566 = if ( ( Bool -> Bool ) ∋ ( ( λ x15670 -> d1308 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x15680 -> true ) ) ) $ ( d230 ) else if true then d1021 else d414
        d1571 : ( ( Set -> Set ) ∋ ( ( λ x15730 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1571 = ( ( Bool -> Bool ) ∋ ( ( λ x15720 -> if d204 then d1235 else false ) ) ) $ ( if true then d426 else d1150 )
        d1574 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1574 = ( ( Bool -> Bool ) ∋ ( ( λ x15750 -> ( ( Bool -> Bool ) ∋ ( ( λ x15760 -> if x15750 then true else false ) ) ) $ ( d1345 ) ) ) ) $ ( if false then d261 else false )
        d1577 : ( ( Set -> Set ) ∋ ( ( λ x15800 -> ( ( Set -> Set ) ∋ ( ( λ x15810 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1577 = ( ( Bool -> Bool ) ∋ ( ( λ x15780 -> ( ( Bool -> Bool ) ∋ ( ( λ x15790 -> if d1037 then false else x15790 ) ) ) $ ( true ) ) ) ) $ ( if d1479 then true else true )
        d1582 : if true then ( ( Set -> Set ) ∋ ( ( λ x15840 -> x15840 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1582 = ( ( Bool -> Bool ) ∋ ( ( λ x15830 -> if false then d848 else d1429 ) ) ) $ ( if true then false else d1439 )
        d1585 : if false then ( ( Set -> Set ) ∋ ( ( λ x15870 -> x15870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1585 = ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> if true then x15860 else true ) ) ) $ ( if d184 then true else d987 )
        d1588 : ( ( Set -> Set ) ∋ ( ( λ x15900 -> if true then x15900 else x15900 ) ) ) $ ( if true then Bool else Bool )
        d1588 = if ( ( Bool -> Bool ) ∋ ( ( λ x15890 -> true ) ) ) $ ( false ) then if d56 then d903 else d112 else if d505 then d1345 else true
        d1591 : ( ( Set -> Set ) ∋ ( ( λ x15940 -> if true then x15940 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1591 = ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> if false then false else false ) ) ) $ ( true ) ) ) ) $ ( if d655 then false else true )
        d1595 : ( ( Set -> Set ) ∋ ( ( λ x15970 -> ( ( Set -> Set ) ∋ ( ( λ x15980 -> if false then x15970 else Bool ) ) ) $ ( x15970 ) ) ) ) $ ( if true then Bool else Bool )
        d1595 = ( ( Bool -> Bool ) ∋ ( ( λ x15960 -> if false then true else false ) ) ) $ ( if false then d701 else true )
        d1599 : ( ( Set -> Set ) ∋ ( ( λ x16020 -> if false then x16020 else x16020 ) ) ) $ ( if false then Bool else Bool )
        d1599 = if ( ( Bool -> Bool ) ∋ ( ( λ x16000 -> x16000 ) ) ) $ ( d1050 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16010 -> x16010 ) ) ) $ ( d1379 ) else if d889 then true else true
        d1603 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1603 = ( ( Bool -> Bool ) ∋ ( ( λ x16040 -> if false then d1582 else d1534 ) ) ) $ ( if false then d762 else d1021 )
        d1605 : ( ( Set -> Set ) ∋ ( ( λ x16070 -> if true then x16070 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1605 = ( ( Bool -> Bool ) ∋ ( ( λ x16060 -> if false then x16060 else d826 ) ) ) $ ( if true then false else d230 )
        d1608 : ( ( Set -> Set ) ∋ ( ( λ x16110 -> if false then Bool else x16110 ) ) ) $ ( if false then Bool else Bool )
        d1608 = ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> ( ( Bool -> Bool ) ∋ ( ( λ x16100 -> if false then false else true ) ) ) $ ( x16090 ) ) ) ) $ ( if d791 then false else d743 )
        d1612 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1612 = ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> ( ( Bool -> Bool ) ∋ ( ( λ x16140 -> if x16130 then false else x16130 ) ) ) $ ( true ) ) ) ) $ ( if true then d233 else d551 )
        d1615 : ( ( Set -> Set ) ∋ ( ( λ x16170 -> if true then Bool else x16170 ) ) ) $ ( if true then Bool else Bool )
        d1615 = if if d915 then d1272 else d727 then ( ( Bool -> Bool ) ∋ ( ( λ x16160 -> x16160 ) ) ) $ ( true ) else if false then false else d1433
        d1618 : if true then ( ( Set -> Set ) ∋ ( ( λ x16210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16220 -> x16220 ) ) ) $ ( Bool )
        d1618 = ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> ( ( Bool -> Bool ) ∋ ( ( λ x16200 -> if d994 then true else d1035 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d1623 : if true then ( ( Set -> Set ) ∋ ( ( λ x16260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16270 -> x16270 ) ) ) $ ( Bool )
        d1623 = ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> if false then false else d1585 ) ) ) $ ( x16240 ) ) ) ) $ ( if d851 then d991 else false )
        d1628 : ( ( Set -> Set ) ∋ ( ( λ x16310 -> if true then Bool else x16310 ) ) ) $ ( if false then Bool else Bool )
        d1628 = if ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> false ) ) ) $ ( d227 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16300 -> false ) ) ) $ ( d313 ) else if true then d689 else d1433
        d1632 : ( ( Set -> Set ) ∋ ( ( λ x16350 -> if true then x16350 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1632 = if ( ( Bool -> Bool ) ∋ ( ( λ x16330 -> d1221 ) ) ) $ ( false ) then if false then d861 else d551 else ( ( Bool -> Bool ) ∋ ( ( λ x16340 -> d1546 ) ) ) $ ( d251 )
        d1636 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1636 = if ( ( Bool -> Bool ) ∋ ( ( λ x16370 -> x16370 ) ) ) $ ( d1384 ) then if true then false else d66 else if d1370 then true else false
        d1638 : ( ( Set -> Set ) ∋ ( ( λ x16400 -> if false then x16400 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1638 = if if d1168 then d640 else true then ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> x16390 ) ) ) $ ( true ) else if d1026 then false else false
        d1641 : if false then ( ( Set -> Set ) ∋ ( ( λ x16430 -> x16430 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1641 = ( ( Bool -> Bool ) ∋ ( ( λ x16420 -> if d81 then d543 else d1239 ) ) ) $ ( if d784 then d1137 else d267 )
        d1644 : ( ( Set -> Set ) ∋ ( ( λ x16470 -> ( ( Set -> Set ) ∋ ( ( λ x16480 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1644 = if ( ( Bool -> Bool ) ∋ ( ( λ x16450 -> x16450 ) ) ) $ ( d791 ) then if d770 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> x16460 ) ) ) $ ( d473 )
        d1649 : ( ( Set -> Set ) ∋ ( ( λ x16510 -> if false then x16510 else x16510 ) ) ) $ ( if false then Bool else Bool )
        d1649 = ( ( Bool -> Bool ) ∋ ( ( λ x16500 -> if x16500 then d1219 else x16500 ) ) ) $ ( if true then false else false )
        d1652 : ( ( Set -> Set ) ∋ ( ( λ x16550 -> if true then Bool else x16550 ) ) ) $ ( if false then Bool else Bool )
        d1652 = ( ( Bool -> Bool ) ∋ ( ( λ x16530 -> ( ( Bool -> Bool ) ∋ ( ( λ x16540 -> if false then x16530 else x16540 ) ) ) $ ( x16530 ) ) ) ) $ ( if false then d684 else true )
        d1656 : ( ( Set -> Set ) ∋ ( ( λ x16590 -> if true then x16590 else x16590 ) ) ) $ ( if false then Bool else Bool )
        d1656 = if ( ( Bool -> Bool ) ∋ ( ( λ x16570 -> d502 ) ) ) $ ( d1527 ) then if d261 then false else d1096 else ( ( Bool -> Bool ) ∋ ( ( λ x16580 -> d754 ) ) ) $ ( d1113 )
        d1660 : if true then ( ( Set -> Set ) ∋ ( ( λ x16620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16630 -> x16630 ) ) ) $ ( Bool )
        d1660 = ( ( Bool -> Bool ) ∋ ( ( λ x16610 -> if x16610 then x16610 else false ) ) ) $ ( if d1566 then d1122 else true )
        d1664 : if false then ( ( Set -> Set ) ∋ ( ( λ x16670 -> x16670 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1664 = if ( ( Bool -> Bool ) ∋ ( ( λ x16650 -> false ) ) ) $ ( d729 ) then if d1605 then d738 else d112 else ( ( Bool -> Bool ) ∋ ( ( λ x16660 -> false ) ) ) $ ( false )
        d1668 : ( ( Set -> Set ) ∋ ( ( λ x16700 -> ( ( Set -> Set ) ∋ ( ( λ x16710 -> if false then x16710 else x16710 ) ) ) $ ( x16700 ) ) ) ) $ ( if false then Bool else Bool )
        d1668 = if if d1321 then true else d1300 then if false then false else d1327 else ( ( Bool -> Bool ) ∋ ( ( λ x16690 -> false ) ) ) $ ( true )
        d1672 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1672 = if ( ( Bool -> Bool ) ∋ ( ( λ x16730 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x16740 -> false ) ) ) $ ( d509 ) else if true then d1146 else d1264
        d1675 : ( ( Set -> Set ) ∋ ( ( λ x16780 -> if true then x16780 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1675 = ( ( Bool -> Bool ) ∋ ( ( λ x16760 -> ( ( Bool -> Bool ) ∋ ( ( λ x16770 -> if d1468 then x16760 else true ) ) ) $ ( false ) ) ) ) $ ( if d352 then false else false )
        d1679 : ( ( Set -> Set ) ∋ ( ( λ x16810 -> ( ( Set -> Set ) ∋ ( ( λ x16820 -> if false then x16810 else x16810 ) ) ) $ ( x16810 ) ) ) ) $ ( if false then Bool else Bool )
        d1679 = ( ( Bool -> Bool ) ∋ ( ( λ x16800 -> if false then x16800 else x16800 ) ) ) $ ( if d1187 then d1113 else false )