module Decls450Test20  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1 = if if true then true else true then if false then false else true else if false then true else true
        d3 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else Bool ) ) ) $ ( if true then Bool else Bool )
        d3 = if if d1 then true else d1 then if true then true else true else if true then d1 else d1
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then x70 else x80 ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if false then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( d3 ) else if d3 then d1 else d3
        d9 : if true then ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( Bool )
        d9 = if if d5 then d1 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( d3 )
        d14 : if false then ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d14 = if ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d3 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( d9 ) else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> true ) ) ) $ ( true )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x220 -> if false then x220 else x220 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if false then d14 else d1 ) ) ) $ ( true ) ) ) ) $ ( if d5 then false else d3 )
        d23 : if true then ( ( Set -> Set ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d5 then true else d3 ) ) ) $ ( if d9 then d14 else d3 )
        d26 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool )
        d26 = if if d5 then d23 else true then ( ( Bool -> Bool ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( true ) else if true then true else d5
        d29 : ( ( Set -> Set ) ∋ ( ( λ x310 -> if false then x310 else x310 ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if x300 then d3 else false ) ) ) $ ( if d5 then d26 else true )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> if true then Bool else Bool ) ) ) $ ( x340 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if d14 then false else d3 then if false then d29 else true else ( ( Bool -> Bool ) ∋ ( ( λ x330 -> false ) ) ) $ ( d14 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if false then Bool else x390 ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if x380 then false else false ) ) ) $ ( d23 ) ) ) ) $ ( if d5 then true else d19 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x440 -> ( ( Set -> Set ) ∋ ( ( λ x450 -> if true then Bool else x440 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if ( ( Bool -> Bool ) ∋ ( ( λ x410 -> d23 ) ) ) $ ( d3 ) then ( ( Bool -> Bool ) ∋ ( ( λ x420 -> d23 ) ) ) $ ( d36 ) else ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d9 ) ) ) $ ( d32 )
        d46 : if false then ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d46 = if if true then false else d23 then ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d5 ) ) ) $ ( d9 ) else ( ( Bool -> Bool ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( false )
        d50 : if false then if false then Bool else Bool else if true then Bool else Bool
        d50 = if ( ( Bool -> Bool ) ∋ ( ( λ x510 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x520 -> false ) ) ) $ ( d40 ) else ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d23 ) ) ) $ ( d19 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x560 -> if true then x560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = if ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d29 ) ) ) $ ( true ) then if d1 then false else true else if d5 then d1 else true
        d57 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if true then Bool else x600 ) ) ) $ ( if true then Bool else Bool )
        d57 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x580 -> false ) ) ) $ ( d3 ) else ( ( Bool -> Bool ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( false )
        d61 : if false then if false then Bool else Bool else if false then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if x630 then true else x630 ) ) ) $ ( false ) ) ) ) $ ( if true then d14 else d57 )
        d64 : ( ( Set -> Set ) ∋ ( ( λ x670 -> if true then x670 else Bool ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if x660 then false else false ) ) ) $ ( x650 ) ) ) ) $ ( if d57 then true else true )
        d68 : if true then ( ( Set -> Set ) ∋ ( ( λ x710 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if d57 then d46 else d50 ) ) ) $ ( x690 ) ) ) ) $ ( if false then d23 else d46 )
        d72 : if true then ( ( Set -> Set ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d72 = if if true then d9 else false then if d9 then true else false else if d26 then d46 else false
        d74 : ( ( Set -> Set ) ∋ ( ( λ x770 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> if false then x770 else Bool ) ) ) $ ( x770 ) ) ) ) $ ( if true then Bool else Bool )
        d74 = if ( ( Bool -> Bool ) ∋ ( ( λ x750 -> true ) ) ) $ ( d72 ) then if true then d29 else d3 else ( ( Bool -> Bool ) ∋ ( ( λ x760 -> true ) ) ) $ ( false )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d79 = if if d72 then true else d5 then if true then true else false else if d54 then d29 else true
        d81 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then Bool else Bool ) ) ) $ ( x830 ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if d40 then d64 else d32 ) ) ) $ ( if d26 then d61 else false )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> if true then x870 else Bool ) ) ) $ ( x870 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = if if d32 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( true ) else if d19 then false else false
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if x910 then d79 else d81 ) ) ) $ ( d57 ) ) ) ) $ ( if d61 then d26 else true )
        d92 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x950 -> Bool ) ) ) $ ( Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> false ) ) ) $ ( d36 ) then if d68 then d23 else true else ( ( Bool -> Bool ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( false )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x980 -> if true then x980 else Bool ) ) ) $ ( if false then Bool else Bool )
        d96 = if if true then true else d50 then if true then true else d68 else ( ( Bool -> Bool ) ∋ ( ( λ x970 -> true ) ) ) $ ( d54 )
        d99 : if true then ( ( Set -> Set ) ∋ ( ( λ x1020 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1030 -> Bool ) ) ) $ ( Bool )
        d99 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d92 ) ) ) $ ( d85 )
        d104 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1060 -> Bool ) ) ) $ ( Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d61 then false else x1050 ) ) ) $ ( if d64 then d29 else true )
        d107 : if false then ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool )
        d107 = if if true then true else d89 then ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d74 ) ) ) $ ( true ) else if d85 then d74 else false
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then x1140 else Bool ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if d64 then d96 else x1130 ) ) ) $ ( true ) ) ) ) $ ( if d1 then d104 else d72 )
        d115 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1170 -> Bool ) ) ) $ ( Bool )
        d115 = if if true then d3 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> false ) ) ) $ ( true ) else if d92 then d79 else true
        d118 : if false then if false then Bool else Bool else if true then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if true then true else false ) ) ) $ ( if d46 then d74 else false )
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = if ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( d96 ) else if false then d23 else false
        d123 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1250 -> Bool ) ) ) $ ( Bool )
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if false then x1240 else false ) ) ) $ ( if d40 then d99 else true )
        d126 : if false then ( ( Set -> Set ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if x1270 then false else true ) ) ) $ ( if d19 then true else d54 )
        d129 : if true then if false then Bool else Bool else if false then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if d89 then d19 else false ) ) ) $ ( if d72 then false else d115 )
        d131 : if false then ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if true then true else x1330 ) ) ) $ ( d85 ) ) ) ) $ ( if false then d107 else d26 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if true then x1390 else x1380 ) ) ) $ ( x1380 ) ) ) ) $ ( if true then Bool else Bool )
        d135 = if ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( d64 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> d129 ) ) ) $ ( false ) else if d85 then d50 else false
        d140 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then x1430 else x1430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d140 = if ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> d9 ) ) ) $ ( false ) then if false then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> false ) ) ) $ ( false )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d145 = if if d81 then true else d54 then ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( true ) else if false then false else true
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then Bool else x1510 ) ) ) $ ( if true then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if x1490 then false else d72 ) ) ) $ ( d14 ) ) ) ) $ ( if d92 then false else true )
        d152 : if false then ( ( Set -> Set ) ∋ ( ( λ x1550 -> x1550 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d152 = if if d140 then true else d135 then ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> d96 ) ) ) $ ( d36 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> false ) ) ) $ ( false )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1600 -> ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then x1610 else x1610 ) ) ) $ ( x1600 ) ) ) ) $ ( if true then Bool else Bool )
        d156 = if ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> d61 ) ) ) $ ( d123 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d96 ) ) ) $ ( false )
        d162 : if false then ( ( Set -> Set ) ∋ ( ( λ x1650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d162 = if ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> d85 ) ) ) $ ( d61 ) then if false then d148 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> false ) ) ) $ ( false )
        d166 : if true then if false then Bool else Bool else if false then Bool else Bool
        d166 = if ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> d72 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( d3 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> true ) ) ) $ ( false )
        d170 : if false then if true then Bool else Bool else if true then Bool else Bool
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> if x1710 then x1720 else false ) ) ) $ ( d81 ) ) ) ) $ ( if d162 then d126 else true )
        d173 : ( ( Set -> Set ) ∋ ( ( λ x1760 -> ( ( Set -> Set ) ∋ ( ( λ x1770 -> if false then Bool else x1770 ) ) ) $ ( x1760 ) ) ) ) $ ( if true then Bool else Bool )
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> if true then x1750 else d118 ) ) ) $ ( false ) ) ) ) $ ( if false then d26 else d1 )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if true then x1790 else x1790 ) ) ) $ ( if d19 then d92 else d104 )
        d181 : if false then ( ( Set -> Set ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d181 = if ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> x1820 ) ) ) $ ( false ) then if false then d96 else d120 else if true then d148 else false
        d184 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> if false then x1860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d184 = if if true then d40 else true then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> d99 ) ) ) $ ( true )
        d187 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( Bool )
        d187 = if ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> d14 ) ) ) $ ( d181 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> d152 ) ) ) $ ( true ) else if false then false else false
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> if false then x1930 else Bool ) ) ) $ ( if true then Bool else Bool )
        d191 = if if d92 then false else d140 then ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> false ) ) ) $ ( d148 ) else if false then false else d85
        d194 : if true then if false then Bool else Bool else if true then Bool else Bool
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if d32 then x1960 else d191 ) ) ) $ ( x1950 ) ) ) ) $ ( if true then false else true )
        d197 : ( ( Set -> Set ) ∋ ( ( λ x1990 -> ( ( Set -> Set ) ∋ ( ( λ x2000 -> if true then x2000 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d197 = if ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> d36 ) ) ) $ ( d26 ) then if d107 then true else d40 else if false then true else d92
        d201 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2030 -> Bool ) ) ) $ ( Bool )
        d201 = ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> if true then false else d40 ) ) ) $ ( if true then false else d162 )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> if true then Bool else x2060 ) ) ) $ ( if true then Bool else Bool )
        d204 = ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> if d89 then false else true ) ) ) $ ( if false then d74 else d1 )
        d207 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> if true then x2090 else Bool ) ) ) $ ( if true then Bool else Bool )
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x2080 -> if x2080 then d107 else false ) ) ) $ ( if true then d148 else d96 )
        d210 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d210 = ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> if false then d120 else false ) ) ) $ ( if true then d123 else false )
        d213 : if true then ( ( Set -> Set ) ∋ ( ( λ x2160 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2170 -> Bool ) ) ) $ ( Bool )
        d213 = if ( ( Bool -> Bool ) ∋ ( ( λ x2140 -> x2140 ) ) ) $ ( d79 ) then if d162 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> d123 ) ) ) $ ( d104 )
        d218 : if true then ( ( Set -> Set ) ∋ ( ( λ x2200 -> x2200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2210 -> Bool ) ) ) $ ( Bool )
        d218 = if if false then true else d131 then if false then d107 else true else ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> false ) ) ) $ ( false )
        d222 : ( ( Set -> Set ) ∋ ( ( λ x2240 -> if false then x2240 else x2240 ) ) ) $ ( if false then Bool else Bool )
        d222 = if ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> d178 ) ) ) $ ( true ) then if d140 then d104 else false else if false then false else d145
        d225 : ( ( Set -> Set ) ∋ ( ( λ x2280 -> if true then x2280 else Bool ) ) ) $ ( if true then Bool else Bool )
        d225 = if ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> false ) ) ) $ ( d72 ) then if true then d92 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2270 -> true ) ) ) $ ( false )
        d229 : if true then ( ( Set -> Set ) ∋ ( ( λ x2310 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2320 -> x2320 ) ) ) $ ( Bool )
        d229 = ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> if true then d36 else d32 ) ) ) $ ( if d92 then false else false )
        d233 : if false then if true then Bool else Bool else if false then Bool else Bool
        d233 = ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> if x2340 then d104 else d89 ) ) ) $ ( if d85 then d201 else false )
        d235 : if false then if false then Bool else Bool else if false then Bool else Bool
        d235 = ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> if x2360 then x2360 else d81 ) ) ) $ ( if d194 then false else d89 )
        d237 : if true then if true then Bool else Bool else if false then Bool else Bool
        d237 = ( ( Bool -> Bool ) ∋ ( ( λ x2380 -> if x2380 then d210 else false ) ) ) $ ( if d46 then false else d162 )
        d239 : ( ( Set -> Set ) ∋ ( ( λ x2430 -> if false then Bool else x2430 ) ) ) $ ( if false then Bool else Bool )
        d239 = if ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> true ) ) ) $ ( d178 ) then ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> true ) ) ) $ ( false )
        d244 : if true then ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2450 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d244 = if if d170 then d229 else true then if true then d207 else d118 else if d170 then d201 else false
        d246 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2480 -> Bool ) ) ) $ ( Bool )
        d246 = if if true then d40 else d140 then if d81 then true else d104 else ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> d29 ) ) ) $ ( true )
        d249 : ( ( Set -> Set ) ∋ ( ( λ x2520 -> ( ( Set -> Set ) ∋ ( ( λ x2530 -> if false then Bool else x2530 ) ) ) $ ( x2520 ) ) ) ) $ ( if false then Bool else Bool )
        d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> if false then d107 else d61 ) ) ) $ ( d197 ) ) ) ) $ ( if d126 then d135 else false )
        d254 : if true then if false then Bool else Bool else if true then Bool else Bool
        d254 = if ( ( Bool -> Bool ) ∋ ( ( λ x2550 -> x2550 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> x2560 ) ) ) $ ( d64 ) else if d184 then d229 else true
        d257 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2590 -> Bool ) ) ) $ ( Bool )
        d257 = if ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> false ) ) ) $ ( false ) then if true then d152 else d107 else if true then d14 else false
        d260 : if false then ( ( Set -> Set ) ∋ ( ( λ x2620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2630 -> Bool ) ) ) $ ( Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> if true then true else false ) ) ) $ ( if false then true else false )
        d264 : if true then if false then Bool else Bool else if false then Bool else Bool
        d264 = ( ( Bool -> Bool ) ∋ ( ( λ x2650 -> if d204 then false else true ) ) ) $ ( if true then d213 else d204 )
        d266 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2680 -> x2680 ) ) ) $ ( Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> if false then x2670 else x2670 ) ) ) $ ( if false then d32 else d197 )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> if false then Bool else x2730 ) ) ) $ ( x2720 ) ) ) ) $ ( if true then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> if d92 then d213 else d85 ) ) ) $ ( true ) ) ) ) $ ( if d99 then false else d218 )
        d274 : if true then if true then Bool else Bool else if false then Bool else Bool
        d274 = if if false then d79 else false then if d85 then d79 else false else ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> d264 ) ) ) $ ( true )
        d276 : if true then ( ( Set -> Set ) ∋ ( ( λ x2780 -> x2780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d276 = ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> if d156 then d131 else false ) ) ) $ ( if d9 then true else d26 )
        d279 : if true then ( ( Set -> Set ) ∋ ( ( λ x2810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2820 -> x2820 ) ) ) $ ( Bool )
        d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if d81 then true else d235 ) ) ) $ ( if d111 then d14 else d1 )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> ( ( Set -> Set ) ∋ ( ( λ x2860 -> if true then x2850 else Bool ) ) ) $ ( x2850 ) ) ) ) $ ( if false then Bool else Bool )
        d283 = if if d36 then false else d184 then ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> false ) ) ) $ ( false ) else if true then true else d239
        d287 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2890 -> x2890 ) ) ) $ ( Bool )
        d287 = ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> if true then d14 else true ) ) ) $ ( if true then true else false )
        d290 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> ( ( Set -> Set ) ∋ ( ( λ x2940 -> if false then x2930 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d290 = if ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> x2910 ) ) ) $ ( false ) then if false then d123 else d276 else ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> true ) ) ) $ ( d140 )
        d295 : if false then if false then Bool else Bool else if true then Bool else Bool
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> if d120 then x2960 else x2960 ) ) ) $ ( if false then d148 else true )
        d297 : ( ( Set -> Set ) ∋ ( ( λ x3000 -> ( ( Set -> Set ) ∋ ( ( λ x3010 -> if true then x3010 else x3010 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d297 = ( ( Bool -> Bool ) ∋ ( ( λ x2980 -> ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> if d283 then d99 else false ) ) ) $ ( x2980 ) ) ) ) $ ( if true then true else false )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x3050 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d302 = if if d129 then true else d118 then ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> d210 ) ) ) $ ( d140 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> x3040 ) ) ) $ ( false )
        d306 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> if true then x3090 else x3090 ) ) ) $ ( if false then Bool else Bool )
        d306 = if ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> true ) ) ) $ ( d74 ) then if true then d148 else d118 else ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> x3080 ) ) ) $ ( d246 )
        d310 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> ( ( Set -> Set ) ∋ ( ( λ x3140 -> if true then Bool else Bool ) ) ) $ ( x3130 ) ) ) ) $ ( if true then Bool else Bool )
        d310 = ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> ( ( Bool -> Bool ) ∋ ( ( λ x3120 -> if false then false else x3110 ) ) ) $ ( true ) ) ) ) $ ( if true then true else d57 )
        d315 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d315 = if ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> d79 ) ) ) $ ( true ) then if false then d229 else d61 else ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> true ) ) ) $ ( d36 )
        d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> ( ( Set -> Set ) ∋ ( ( λ x3220 -> if false then x3210 else x3220 ) ) ) $ ( x3210 ) ) ) ) $ ( if false then Bool else Bool )
        d319 = if ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> false ) ) ) $ ( true ) then if true then false else d57 else if d145 then d315 else false
        d323 : ( ( Set -> Set ) ∋ ( ( λ x3260 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d323 = if if true then d50 else d246 then ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> true ) ) ) $ ( d64 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> x3250 ) ) ) $ ( d57 )
        d327 : if false then ( ( Set -> Set ) ∋ ( ( λ x3300 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3310 -> x3310 ) ) ) $ ( Bool )
        d327 = ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> if true then d290 else d178 ) ) ) $ ( x3280 ) ) ) ) $ ( if false then d26 else d283 )
        d332 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> ( ( Set -> Set ) ∋ ( ( λ x3360 -> if true then x3350 else x3360 ) ) ) $ ( x3350 ) ) ) ) $ ( if false then Bool else Bool )
        d332 = if ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> d184 ) ) ) $ ( d126 ) then if d315 then d104 else true else ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> false ) ) ) $ ( d79 )
        d337 : if true then ( ( Set -> Set ) ∋ ( ( λ x3400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3410 -> x3410 ) ) ) $ ( Bool )
        d337 = ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> if x3380 then false else d181 ) ) ) $ ( d72 ) ) ) ) $ ( if true then d302 else d332 )
        d342 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> ( ( Set -> Set ) ∋ ( ( λ x3470 -> if false then x3470 else Bool ) ) ) $ ( x3460 ) ) ) ) $ ( if false then Bool else Bool )
        d342 = if ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> x3430 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> false ) ) ) $ ( d92 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3450 -> x3450 ) ) ) $ ( d14 )
        d348 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> if false then x3490 else x3490 ) ) ) $ ( if d26 then d64 else true )
        d351 : if true then ( ( Set -> Set ) ∋ ( ( λ x3530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3540 -> x3540 ) ) ) $ ( Bool )
        d351 = if ( ( Bool -> Bool ) ∋ ( ( λ x3520 -> false ) ) ) $ ( false ) then if d342 then d178 else d96 else if true then d46 else d246
        d355 : if false then if false then Bool else Bool else if true then Bool else Bool
        d355 = ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> if x3560 then d74 else d246 ) ) ) $ ( if true then false else true )
        d357 : ( ( Set -> Set ) ∋ ( ( λ x3590 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d357 = if ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> x3580 ) ) ) $ ( d194 ) then if true then true else true else if d246 then false else false
        d360 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3630 -> Bool ) ) ) $ ( Bool )
        d360 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> false ) ) ) $ ( d323 )
        d364 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3660 -> Bool ) ) ) $ ( Bool )
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x3650 -> if x3650 then x3650 else true ) ) ) $ ( if true then false else true )
        d367 : if false then ( ( Set -> Set ) ∋ ( ( λ x3710 -> x3710 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d367 = if ( ( Bool -> Bool ) ∋ ( ( λ x3680 -> x3680 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x3690 -> x3690 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x3700 -> false ) ) ) $ ( false )
        d372 : ( ( Set -> Set ) ∋ ( ( λ x3750 -> if false then Bool else x3750 ) ) ) $ ( if false then Bool else Bool )
        d372 = ( ( Bool -> Bool ) ∋ ( ( λ x3730 -> ( ( Bool -> Bool ) ∋ ( ( λ x3740 -> if true then x3730 else d72 ) ) ) $ ( d54 ) ) ) ) $ ( if d364 then false else d348 )
        d376 : if true then if true then Bool else Bool else if false then Bool else Bool
        d376 = if if d111 then false else true then if d57 then true else d152 else if true then true else d364
        d377 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3810 -> Bool ) ) ) $ ( Bool )
        d377 = if ( ( Bool -> Bool ) ∋ ( ( λ x3780 -> true ) ) ) $ ( d40 ) then ( ( Bool -> Bool ) ∋ ( ( λ x3790 -> d166 ) ) ) $ ( d225 ) else ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> d129 ) ) ) $ ( d235 )
        d382 : ( ( Set -> Set ) ∋ ( ( λ x3840 -> ( ( Set -> Set ) ∋ ( ( λ x3850 -> if true then Bool else x3840 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d382 = ( ( Bool -> Bool ) ∋ ( ( λ x3830 -> if d367 then d40 else d191 ) ) ) $ ( if d207 then false else false )
        d386 : if true then ( ( Set -> Set ) ∋ ( ( λ x3880 -> x3880 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3890 -> Bool ) ) ) $ ( Bool )
        d386 = ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if d50 then d131 else x3870 ) ) ) $ ( if d135 then d201 else d120 )
        d390 : ( ( Set -> Set ) ∋ ( ( λ x3920 -> ( ( Set -> Set ) ∋ ( ( λ x3930 -> if false then Bool else x3920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> if false then x3910 else x3910 ) ) ) $ ( if d194 then true else d118 )
        d394 : if true then ( ( Set -> Set ) ∋ ( ( λ x3960 -> x3960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3970 -> Bool ) ) ) $ ( Bool )
        d394 = if if d54 then d187 else d279 then if d85 then false else d194 else ( ( Bool -> Bool ) ∋ ( ( λ x3950 -> true ) ) ) $ ( d239 )
        d398 : ( ( Set -> Set ) ∋ ( ( λ x4010 -> if true then x4010 else x4010 ) ) ) $ ( if true then Bool else Bool )
        d398 = ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> ( ( Bool -> Bool ) ∋ ( ( λ x4000 -> if true then x3990 else d376 ) ) ) $ ( d360 ) ) ) ) $ ( if d213 then true else false )
        d402 : ( ( Set -> Set ) ∋ ( ( λ x4040 -> if true then Bool else x4040 ) ) ) $ ( if true then Bool else Bool )
        d402 = if if d64 then d14 else false then if false then d239 else true else ( ( Bool -> Bool ) ∋ ( ( λ x4030 -> x4030 ) ) ) $ ( d148 )
        d405 : ( ( Set -> Set ) ∋ ( ( λ x4070 -> if true then x4070 else x4070 ) ) ) $ ( if false then Bool else Bool )
        d405 = if if false then d382 else false then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4060 -> d327 ) ) ) $ ( true )
        d408 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4110 -> x4110 ) ) ) $ ( Bool )
        d408 = if if true then d115 else d207 then ( ( Bool -> Bool ) ∋ ( ( λ x4090 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4100 -> x4100 ) ) ) $ ( d337 )
        d412 : if false then ( ( Set -> Set ) ∋ ( ( λ x4140 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d412 = if ( ( Bool -> Bool ) ∋ ( ( λ x4130 -> false ) ) ) $ ( false ) then if d81 then false else false else if false then true else d81
        d415 : ( ( Set -> Set ) ∋ ( ( λ x4170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d415 = if ( ( Bool -> Bool ) ∋ ( ( λ x4160 -> x4160 ) ) ) $ ( false ) then if d126 then d19 else d382 else if true then d244 else d302
        d418 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4200 -> Bool ) ) ) $ ( Bool )
        d418 = ( ( Bool -> Bool ) ∋ ( ( λ x4190 -> if x4190 then false else x4190 ) ) ) $ ( if d264 then true else true )
        d421 : ( ( Set -> Set ) ∋ ( ( λ x4240 -> ( ( Set -> Set ) ∋ ( ( λ x4250 -> if true then Bool else Bool ) ) ) $ ( x4240 ) ) ) ) $ ( if false then Bool else Bool )
        d421 = ( ( Bool -> Bool ) ∋ ( ( λ x4220 -> ( ( Bool -> Bool ) ∋ ( ( λ x4230 -> if d29 then true else d348 ) ) ) $ ( false ) ) ) ) $ ( if d264 then false else true )
        d426 : ( ( Set -> Set ) ∋ ( ( λ x4280 -> ( ( Set -> Set ) ∋ ( ( λ x4290 -> if true then Bool else x4290 ) ) ) $ ( x4280 ) ) ) ) $ ( if false then Bool else Bool )
        d426 = if ( ( Bool -> Bool ) ∋ ( ( λ x4270 -> x4270 ) ) ) $ ( true ) then if true then false else true else if d61 then d5 else false
        d430 : ( ( Set -> Set ) ∋ ( ( λ x4330 -> ( ( Set -> Set ) ∋ ( ( λ x4340 -> if false then x4330 else x4340 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d430 = if ( ( Bool -> Bool ) ∋ ( ( λ x4310 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4320 -> d249 ) ) ) $ ( d319 ) else if d279 then d187 else d19
        d435 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4360 -> Bool ) ) ) $ ( Bool )
        d435 = if if true then d376 else d3 then if d244 then d111 else d111 else if d131 then d274 else true
        d437 : ( ( Set -> Set ) ∋ ( ( λ x4400 -> if false then x4400 else Bool ) ) ) $ ( if true then Bool else Bool )
        d437 = if if false then d204 else true then ( ( Bool -> Bool ) ∋ ( ( λ x4380 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4390 -> x4390 ) ) ) $ ( d306 )
        d441 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4420 -> Bool ) ) ) $ ( Bool )
        d441 = if if false then d115 else true then if true then true else false else if d229 then false else true
        d443 : ( ( Set -> Set ) ∋ ( ( λ x4450 -> if false then Bool else x4450 ) ) ) $ ( if false then Bool else Bool )
        d443 = if if false then true else d166 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x4440 -> false ) ) ) $ ( false )
        d446 : ( ( Set -> Set ) ∋ ( ( λ x4480 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d446 = if ( ( Bool -> Bool ) ∋ ( ( λ x4470 -> x4470 ) ) ) $ ( false ) then if d36 then true else d111 else if true then false else true
        d449 : ( ( Set -> Set ) ∋ ( ( λ x4530 -> ( ( Set -> Set ) ∋ ( ( λ x4540 -> if true then x4530 else Bool ) ) ) $ ( x4530 ) ) ) ) $ ( if true then Bool else Bool )
        d449 = if ( ( Bool -> Bool ) ∋ ( ( λ x4500 -> true ) ) ) $ ( d290 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4510 -> false ) ) ) $ ( d443 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4520 -> x4520 ) ) ) $ ( true )
        d455 : ( ( Set -> Set ) ∋ ( ( λ x4590 -> if true then Bool else x4590 ) ) ) $ ( if true then Bool else Bool )
        d455 = if ( ( Bool -> Bool ) ∋ ( ( λ x4560 -> x4560 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x4570 -> x4570 ) ) ) $ ( d54 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4580 -> true ) ) ) $ ( d449 )
        d460 : if false then if false then Bool else Bool else if false then Bool else Bool
        d460 = if if true then false else d14 then ( ( Bool -> Bool ) ∋ ( ( λ x4610 -> d441 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x4620 -> d162 ) ) ) $ ( d274 )
        d463 : ( ( Set -> Set ) ∋ ( ( λ x4660 -> ( ( Set -> Set ) ∋ ( ( λ x4670 -> if false then Bool else x4670 ) ) ) $ ( x4660 ) ) ) ) $ ( if false then Bool else Bool )
        d463 = if if false then d357 else d332 then ( ( Bool -> Bool ) ∋ ( ( λ x4640 -> d40 ) ) ) $ ( d235 ) else ( ( Bool -> Bool ) ∋ ( ( λ x4650 -> d418 ) ) ) $ ( false )
        d468 : if true then if true then Bool else Bool else if true then Bool else Bool
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x4690 -> if true then true else x4690 ) ) ) $ ( if true then d239 else true )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x4720 -> ( ( Set -> Set ) ∋ ( ( λ x4730 -> if false then x4730 else Bool ) ) ) $ ( x4720 ) ) ) ) $ ( if false then Bool else Bool )
        d470 = if if true then true else false then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x4710 -> d310 ) ) ) $ ( false )
        d474 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4770 -> Bool ) ) ) $ ( Bool )
        d474 = if ( ( Bool -> Bool ) ∋ ( ( λ x4750 -> false ) ) ) $ ( d394 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4760 -> x4760 ) ) ) $ ( d233 ) else if d315 then false else true
        d478 : if false then if false then Bool else Bool else if false then Bool else Bool
        d478 = if if true then true else true then if d166 then d390 else true else if d315 then false else false
        d479 : if false then ( ( Set -> Set ) ∋ ( ( λ x4810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4820 -> Bool ) ) ) $ ( Bool )
        d479 = ( ( Bool -> Bool ) ∋ ( ( λ x4800 -> if false then true else d237 ) ) ) $ ( if d446 then false else d367 )
        d483 : ( ( Set -> Set ) ∋ ( ( λ x4860 -> if false then x4860 else Bool ) ) ) $ ( if true then Bool else Bool )
        d483 = ( ( Bool -> Bool ) ∋ ( ( λ x4840 -> ( ( Bool -> Bool ) ∋ ( ( λ x4850 -> if false then false else x4850 ) ) ) $ ( x4840 ) ) ) ) $ ( if true then d421 else true )
        d487 : if true then ( ( Set -> Set ) ∋ ( ( λ x4890 -> x4890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4900 -> Bool ) ) ) $ ( Bool )
        d487 = if ( ( Bool -> Bool ) ∋ ( ( λ x4880 -> x4880 ) ) ) $ ( false ) then if d260 then d348 else d295 else if true then d449 else false
        d491 : if true then if false then Bool else Bool else if false then Bool else Bool
        d491 = if ( ( Bool -> Bool ) ∋ ( ( λ x4920 -> x4920 ) ) ) $ ( d319 ) then ( ( Bool -> Bool ) ∋ ( ( λ x4930 -> false ) ) ) $ ( d279 ) else if d29 then true else false
        d494 : ( ( Set -> Set ) ∋ ( ( λ x4970 -> ( ( Set -> Set ) ∋ ( ( λ x4980 -> if false then x4970 else Bool ) ) ) $ ( x4970 ) ) ) ) $ ( if false then Bool else Bool )
        d494 = ( ( Bool -> Bool ) ∋ ( ( λ x4950 -> ( ( Bool -> Bool ) ∋ ( ( λ x4960 -> if true then x4960 else true ) ) ) $ ( x4950 ) ) ) ) $ ( if false then d478 else d266 )
        d499 : ( ( Set -> Set ) ∋ ( ( λ x5010 -> ( ( Set -> Set ) ∋ ( ( λ x5020 -> if false then x5020 else x5010 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d499 = if if true then d194 else true then if d152 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x5000 -> x5000 ) ) ) $ ( d46 )
        d503 : if true then if true then Bool else Bool else if false then Bool else Bool
        d503 = if ( ( Bool -> Bool ) ∋ ( ( λ x5040 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x5050 -> x5050 ) ) ) $ ( d111 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5060 -> x5060 ) ) ) $ ( d398 )
        d507 : if false then ( ( Set -> Set ) ∋ ( ( λ x5090 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d507 = ( ( Bool -> Bool ) ∋ ( ( λ x5080 -> if true then false else d187 ) ) ) $ ( if true then d332 else d118 )
        d510 : if true then if true then Bool else Bool else if true then Bool else Bool
        d510 = ( ( Bool -> Bool ) ∋ ( ( λ x5110 -> ( ( Bool -> Bool ) ∋ ( ( λ x5120 -> if d5 then x5110 else x5120 ) ) ) $ ( x5110 ) ) ) ) $ ( if false then d19 else true )
        d513 : ( ( Set -> Set ) ∋ ( ( λ x5150 -> if false then x5150 else x5150 ) ) ) $ ( if true then Bool else Bool )
        d513 = if ( ( Bool -> Bool ) ∋ ( ( λ x5140 -> false ) ) ) $ ( true ) then if d23 then d181 else false else if d107 then false else true
        d516 : if false then ( ( Set -> Set ) ∋ ( ( λ x5180 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x5170 -> if x5170 then false else x5170 ) ) ) $ ( if d118 then true else d107 )
        d519 : ( ( Set -> Set ) ∋ ( ( λ x5210 -> ( ( Set -> Set ) ∋ ( ( λ x5220 -> if false then x5220 else x5220 ) ) ) $ ( x5210 ) ) ) ) $ ( if true then Bool else Bool )
        d519 = ( ( Bool -> Bool ) ∋ ( ( λ x5200 -> if true then d327 else x5200 ) ) ) $ ( if true then true else d213 )
        d523 : if true then ( ( Set -> Set ) ∋ ( ( λ x5260 -> x5260 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5270 -> Bool ) ) ) $ ( Bool )
        d523 = if if d222 then d201 else false then ( ( Bool -> Bool ) ∋ ( ( λ x5240 -> x5240 ) ) ) $ ( d225 ) else ( ( Bool -> Bool ) ∋ ( ( λ x5250 -> d266 ) ) ) $ ( true )
        d528 : if false then ( ( Set -> Set ) ∋ ( ( λ x5310 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d528 = if if d178 then d264 else d239 then ( ( Bool -> Bool ) ∋ ( ( λ x5290 -> d126 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x5300 -> false ) ) ) $ ( d402 )
        d532 : if true then ( ( Set -> Set ) ∋ ( ( λ x5350 -> x5350 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d532 = ( ( Bool -> Bool ) ∋ ( ( λ x5330 -> ( ( Bool -> Bool ) ∋ ( ( λ x5340 -> if false then x5330 else false ) ) ) $ ( x5330 ) ) ) ) $ ( if d441 then true else d310 )
        d536 : if true then ( ( Set -> Set ) ∋ ( ( λ x5380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5390 -> x5390 ) ) ) $ ( Bool )
        d536 = if if true then d1 else d382 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x5370 -> d36 ) ) ) $ ( d297 )
        d540 : if true then ( ( Set -> Set ) ∋ ( ( λ x5420 -> x5420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5430 -> Bool ) ) ) $ ( Bool )
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x5410 -> if x5410 then d239 else x5410 ) ) ) $ ( if false then false else d290 )
        d544 : if false then ( ( Set -> Set ) ∋ ( ( λ x5470 -> x5470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5480 -> Bool ) ) ) $ ( Bool )
        d544 = if ( ( Bool -> Bool ) ∋ ( ( λ x5450 -> x5450 ) ) ) $ ( d145 ) then if d269 then d449 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5460 -> false ) ) ) $ ( d519 )
        d549 : ( ( Set -> Set ) ∋ ( ( λ x5500 -> if true then x5500 else Bool ) ) ) $ ( if false then Bool else Bool )
        d549 = if if d499 then false else d148 then if d178 then true else d437 else if true then d283 else true
        d551 : ( ( Set -> Set ) ∋ ( ( λ x5540 -> ( ( Set -> Set ) ∋ ( ( λ x5550 -> if true then x5550 else Bool ) ) ) $ ( x5540 ) ) ) ) $ ( if true then Bool else Bool )
        d551 = ( ( Bool -> Bool ) ∋ ( ( λ x5520 -> ( ( Bool -> Bool ) ∋ ( ( λ x5530 -> if x5530 then d135 else x5520 ) ) ) $ ( false ) ) ) ) $ ( if d276 then false else true )
        d556 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x5580 -> Bool ) ) ) $ ( Bool )
        d556 = if ( ( Bool -> Bool ) ∋ ( ( λ x5570 -> x5570 ) ) ) $ ( d364 ) then if false then d494 else false else if true then true else d191
        d559 : if true then if true then Bool else Bool else if false then Bool else Bool
        d559 = if ( ( Bool -> Bool ) ∋ ( ( λ x5600 -> d355 ) ) ) $ ( false ) then if true then d446 else true else ( ( Bool -> Bool ) ∋ ( ( λ x5610 -> d274 ) ) ) $ ( false )
        d562 : if false then if true then Bool else Bool else if true then Bool else Bool
        d562 = ( ( Bool -> Bool ) ∋ ( ( λ x5630 -> if x5630 then d178 else x5630 ) ) ) $ ( if true then true else d549 )
        d564 : ( ( Set -> Set ) ∋ ( ( λ x5670 -> ( ( Set -> Set ) ∋ ( ( λ x5680 -> if false then x5670 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d564 = ( ( Bool -> Bool ) ∋ ( ( λ x5650 -> ( ( Bool -> Bool ) ∋ ( ( λ x5660 -> if true then x5660 else x5650 ) ) ) $ ( false ) ) ) ) $ ( if d390 then d64 else false )
        d569 : if true then ( ( Set -> Set ) ∋ ( ( λ x5720 -> x5720 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5730 -> Bool ) ) ) $ ( Bool )
        d569 = ( ( Bool -> Bool ) ∋ ( ( λ x5700 -> ( ( Bool -> Bool ) ∋ ( ( λ x5710 -> if false then d23 else true ) ) ) $ ( false ) ) ) ) $ ( if false then d449 else false )
        d574 : if true then if true then Bool else Bool else if false then Bool else Bool
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x5750 -> ( ( Bool -> Bool ) ∋ ( ( λ x5760 -> if true then x5750 else d519 ) ) ) $ ( x5750 ) ) ) ) $ ( if d126 then true else d559 )
        d577 : ( ( Set -> Set ) ∋ ( ( λ x5800 -> if false then x5800 else x5800 ) ) ) $ ( if false then Bool else Bool )
        d577 = ( ( Bool -> Bool ) ∋ ( ( λ x5780 -> ( ( Bool -> Bool ) ∋ ( ( λ x5790 -> if d3 then false else x5790 ) ) ) $ ( d559 ) ) ) ) $ ( if d111 then d85 else true )
        d581 : if false then if false then Bool else Bool else if false then Bool else Bool
        d581 = if if d290 then true else true then if true then true else true else if d233 then true else true
        d582 : if false then ( ( Set -> Set ) ∋ ( ( λ x5850 -> x5850 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d582 = ( ( Bool -> Bool ) ∋ ( ( λ x5830 -> ( ( Bool -> Bool ) ∋ ( ( λ x5840 -> if false then x5830 else false ) ) ) $ ( false ) ) ) ) $ ( if false then d279 else true )
        d586 : if false then ( ( Set -> Set ) ∋ ( ( λ x5880 -> x5880 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x5890 -> x5890 ) ) ) $ ( Bool )
        d586 = if if d218 then true else d131 then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x5870 -> x5870 ) ) ) $ ( true )
        d590 : ( ( Set -> Set ) ∋ ( ( λ x5920 -> ( ( Set -> Set ) ∋ ( ( λ x5930 -> if true then x5920 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d590 = if if true then d540 else d29 then if d246 then d107 else false else ( ( Bool -> Bool ) ∋ ( ( λ x5910 -> true ) ) ) $ ( d131 )
        d594 : if true then ( ( Set -> Set ) ∋ ( ( λ x5970 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x5950 -> ( ( Bool -> Bool ) ∋ ( ( λ x5960 -> if false then x5960 else d556 ) ) ) $ ( true ) ) ) ) $ ( if false then d441 else d81 )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x6000 -> if false then x6000 else x6000 ) ) ) $ ( if true then Bool else Bool )
        d598 = ( ( Bool -> Bool ) ∋ ( ( λ x5990 -> if true then d68 else d96 ) ) ) $ ( if false then d107 else d455 )
        d601 : ( ( Set -> Set ) ∋ ( ( λ x6040 -> if true then x6040 else Bool ) ) ) $ ( if true then Bool else Bool )
        d601 = if ( ( Bool -> Bool ) ∋ ( ( λ x6020 -> x6020 ) ) ) $ ( false ) then if d85 then true else d36 else ( ( Bool -> Bool ) ∋ ( ( λ x6030 -> d123 ) ) ) $ ( true )
        d605 : if false then ( ( Set -> Set ) ∋ ( ( λ x6070 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d605 = if if d510 then d598 else false then if true then true else d564 else ( ( Bool -> Bool ) ∋ ( ( λ x6060 -> true ) ) ) $ ( d549 )
        d608 : if true then if false then Bool else Bool else if false then Bool else Bool
        d608 = if ( ( Bool -> Bool ) ∋ ( ( λ x6090 -> x6090 ) ) ) $ ( d327 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6100 -> true ) ) ) $ ( true ) else if false then true else d562
        d611 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6140 -> x6140 ) ) ) $ ( Bool )
        d611 = ( ( Bool -> Bool ) ∋ ( ( λ x6120 -> ( ( Bool -> Bool ) ∋ ( ( λ x6130 -> if true then d415 else false ) ) ) $ ( d564 ) ) ) ) $ ( if true then false else d57 )
        d615 : if false then ( ( Set -> Set ) ∋ ( ( λ x6170 -> x6170 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d615 = if ( ( Bool -> Bool ) ∋ ( ( λ x6160 -> false ) ) ) $ ( true ) then if true then d507 else d398 else if true then true else d85
        d618 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6210 -> Bool ) ) ) $ ( Bool )
        d618 = ( ( Bool -> Bool ) ∋ ( ( λ x6190 -> ( ( Bool -> Bool ) ∋ ( ( λ x6200 -> if d264 then d435 else true ) ) ) $ ( d332 ) ) ) ) $ ( if d36 then false else false )
        d622 : if false then if false then Bool else Bool else if true then Bool else Bool
        d622 = if if d207 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x6230 -> false ) ) ) $ ( true ) else if false then false else d364
        d624 : ( ( Set -> Set ) ∋ ( ( λ x6270 -> if false then x6270 else Bool ) ) ) $ ( if true then Bool else Bool )
        d624 = if ( ( Bool -> Bool ) ∋ ( ( λ x6250 -> d332 ) ) ) $ ( true ) then if d287 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x6260 -> x6260 ) ) ) $ ( d107 )
        d628 : if true then ( ( Set -> Set ) ∋ ( ( λ x6310 -> x6310 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d628 = if ( ( Bool -> Bool ) ∋ ( ( λ x6290 -> x6290 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x6300 -> x6300 ) ) ) $ ( true ) else if d40 then false else d210
        d632 : ( ( Set -> Set ) ∋ ( ( λ x6340 -> ( ( Set -> Set ) ∋ ( ( λ x6350 -> if true then Bool else x6350 ) ) ) $ ( x6340 ) ) ) ) $ ( if false then Bool else Bool )
        d632 = if if d297 then false else d207 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x6330 -> false ) ) ) $ ( false )
        d636 : ( ( Set -> Set ) ∋ ( ( λ x6390 -> if true then x6390 else x6390 ) ) ) $ ( if false then Bool else Bool )
        d636 = if ( ( Bool -> Bool ) ∋ ( ( λ x6370 -> d569 ) ) ) $ ( d478 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6380 -> false ) ) ) $ ( d582 ) else if d9 then d3 else d79
        d640 : if true then if false then Bool else Bool else if true then Bool else Bool
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x6410 -> if x6410 then d107 else false ) ) ) $ ( if false then d264 else d244 )
        d642 : if false then ( ( Set -> Set ) ∋ ( ( λ x6440 -> x6440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x6450 -> Bool ) ) ) $ ( Bool )
        d642 = ( ( Bool -> Bool ) ∋ ( ( λ x6430 -> if d491 then x6430 else true ) ) ) $ ( if d327 then d605 else d225 )
        d646 : ( ( Set -> Set ) ∋ ( ( λ x6490 -> if true then Bool else x6490 ) ) ) $ ( if true then Bool else Bool )
        d646 = if if d382 then d582 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6470 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x6480 -> d372 ) ) ) $ ( true )
        d650 : ( ( Set -> Set ) ∋ ( ( λ x6520 -> if false then Bool else x6520 ) ) ) $ ( if false then Bool else Bool )
        d650 = if if false then d145 else false then ( ( Bool -> Bool ) ∋ ( ( λ x6510 -> x6510 ) ) ) $ ( d532 ) else if d26 then false else true
        d653 : ( ( Set -> Set ) ∋ ( ( λ x6550 -> if false then x6550 else Bool ) ) ) $ ( if true then Bool else Bool )
        d653 = ( ( Bool -> Bool ) ∋ ( ( λ x6540 -> if true then d426 else x6540 ) ) ) $ ( if d402 then d19 else d178 )
        d656 : ( ( Set -> Set ) ∋ ( ( λ x6590 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d656 = ( ( Bool -> Bool ) ∋ ( ( λ x6570 -> ( ( Bool -> Bool ) ∋ ( ( λ x6580 -> if true then d118 else x6570 ) ) ) $ ( d653 ) ) ) ) $ ( if d523 then d145 else d235 )
        d660 : if false then if true then Bool else Bool else if false then Bool else Bool
        d660 = ( ( Bool -> Bool ) ∋ ( ( λ x6610 -> if d569 then false else x6610 ) ) ) $ ( if d302 then d402 else d470 )
        d662 : ( ( Set -> Set ) ∋ ( ( λ x6650 -> ( ( Set -> Set ) ∋ ( ( λ x6660 -> if false then Bool else x6660 ) ) ) $ ( x6650 ) ) ) ) $ ( if false then Bool else Bool )
        d662 = ( ( Bool -> Bool ) ∋ ( ( λ x6630 -> ( ( Bool -> Bool ) ∋ ( ( λ x6640 -> if x6630 then false else d342 ) ) ) $ ( d544 ) ) ) ) $ ( if true then d166 else true )
        d667 : ( ( Set -> Set ) ∋ ( ( λ x6680 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d667 = if if true then true else true then if d26 then false else d628 else if d615 then false else d642
        d669 : ( ( Set -> Set ) ∋ ( ( λ x6710 -> if false then x6710 else x6710 ) ) ) $ ( if false then Bool else Bool )
        d669 = if if true then d315 else d398 then ( ( Bool -> Bool ) ∋ ( ( λ x6700 -> x6700 ) ) ) $ ( false ) else if d244 then d351 else true
        d672 : ( ( Set -> Set ) ∋ ( ( λ x6730 -> ( ( Set -> Set ) ∋ ( ( λ x6740 -> if true then x6740 else x6730 ) ) ) $ ( x6730 ) ) ) ) $ ( if false then Bool else Bool )
        d672 = if if d50 then true else d26 then if false then true else true else if false then true else false
        d675 : ( ( Set -> Set ) ∋ ( ( λ x6780 -> ( ( Set -> Set ) ∋ ( ( λ x6790 -> if false then Bool else x6780 ) ) ) $ ( x6780 ) ) ) ) $ ( if false then Bool else Bool )
        d675 = if ( ( Bool -> Bool ) ∋ ( ( λ x6760 -> x6760 ) ) ) $ ( false ) then if true then d135 else d57 else ( ( Bool -> Bool ) ∋ ( ( λ x6770 -> x6770 ) ) ) $ ( true )
        d680 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x6830 -> x6830 ) ) ) $ ( Bool )
        d680 = if ( ( Bool -> Bool ) ∋ ( ( λ x6810 -> x6810 ) ) ) $ ( d131 ) then ( ( Bool -> Bool ) ∋ ( ( λ x6820 -> false ) ) ) $ ( true ) else if false then d390 else false
        d684 : if false then ( ( Set -> Set ) ∋ ( ( λ x6870 -> x6870 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d684 = ( ( Bool -> Bool ) ∋ ( ( λ x6850 -> ( ( Bool -> Bool ) ∋ ( ( λ x6860 -> if x6860 then x6850 else d40 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d688 : ( ( Set -> Set ) ∋ ( ( λ x6900 -> if false then Bool else x6900 ) ) ) $ ( if true then Bool else Bool )
        d688 = ( ( Bool -> Bool ) ∋ ( ( λ x6890 -> if true then x6890 else true ) ) ) $ ( if d430 then false else true )
        d691 : if false then ( ( Set -> Set ) ∋ ( ( λ x6940 -> x6940 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d691 = ( ( Bool -> Bool ) ∋ ( ( λ x6920 -> ( ( Bool -> Bool ) ∋ ( ( λ x6930 -> if x6930 then x6930 else d184 ) ) ) $ ( d210 ) ) ) ) $ ( if true then d601 else d376 )
        d695 : if false then ( ( Set -> Set ) ∋ ( ( λ x6960 -> x6960 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d695 = if if d435 then d581 else false then if d9 then d478 else true else if true then false else d684
        d697 : if false then ( ( Set -> Set ) ∋ ( ( λ x6990 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7000 -> x7000 ) ) ) $ ( Bool )
        d697 = if ( ( Bool -> Bool ) ∋ ( ( λ x6980 -> d421 ) ) ) $ ( d662 ) then if true then false else true else if d156 then d695 else d540
        d701 : if true then ( ( Set -> Set ) ∋ ( ( λ x7020 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7030 -> x7030 ) ) ) $ ( Bool )
        d701 = if if d355 then false else false then if false then true else false else if true then false else d372
        d704 : ( ( Set -> Set ) ∋ ( ( λ x7070 -> if true then x7070 else x7070 ) ) ) $ ( if true then Bool else Bool )
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x7050 -> ( ( Bool -> Bool ) ∋ ( ( λ x7060 -> if d89 then d510 else x7060 ) ) ) $ ( x7050 ) ) ) ) $ ( if false then false else true )
        d708 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7100 -> Bool ) ) ) $ ( Bool )
        d708 = if ( ( Bool -> Bool ) ∋ ( ( λ x7090 -> false ) ) ) $ ( false ) then if true then true else d608 else if d32 then d351 else false
        d711 : ( ( Set -> Set ) ∋ ( ( λ x7140 -> if true then x7140 else Bool ) ) ) $ ( if true then Bool else Bool )
        d711 = ( ( Bool -> Bool ) ∋ ( ( λ x7120 -> ( ( Bool -> Bool ) ∋ ( ( λ x7130 -> if x7120 then false else x7130 ) ) ) $ ( d3 ) ) ) ) $ ( if d257 then true else true )
        d715 : if true then ( ( Set -> Set ) ∋ ( ( λ x7180 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x7160 -> ( ( Bool -> Bool ) ∋ ( ( λ x7170 -> if true then false else d688 ) ) ) $ ( d19 ) ) ) ) $ ( if d564 then true else false )
        d719 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7220 -> x7220 ) ) ) $ ( Bool )
        d719 = ( ( Bool -> Bool ) ∋ ( ( λ x7200 -> ( ( Bool -> Bool ) ∋ ( ( λ x7210 -> if false then false else x7210 ) ) ) $ ( false ) ) ) ) $ ( if d711 then d283 else d302 )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x7250 -> ( ( Set -> Set ) ∋ ( ( λ x7260 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d723 = ( ( Bool -> Bool ) ∋ ( ( λ x7240 -> if d135 then x7240 else false ) ) ) $ ( if false then d426 else true )
        d727 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7300 -> Bool ) ) ) $ ( Bool )
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x7280 -> ( ( Bool -> Bool ) ∋ ( ( λ x7290 -> if d173 then true else d118 ) ) ) $ ( x7280 ) ) ) ) $ ( if false then true else false )
        d731 : if true then ( ( Set -> Set ) ∋ ( ( λ x7330 -> x7330 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7340 -> x7340 ) ) ) $ ( Bool )
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x7320 -> if false then x7320 else false ) ) ) $ ( if d605 then d608 else true )
        d735 : if true then if true then Bool else Bool else if false then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x7360 -> ( ( Bool -> Bool ) ∋ ( ( λ x7370 -> if false then x7360 else x7370 ) ) ) $ ( d684 ) ) ) ) $ ( if true then d636 else true )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x7410 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d738 = ( ( Bool -> Bool ) ∋ ( ( λ x7390 -> ( ( Bool -> Bool ) ∋ ( ( λ x7400 -> if d735 then d507 else false ) ) ) $ ( x7390 ) ) ) ) $ ( if false then false else d29 )
        d742 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7440 -> Bool ) ) ) $ ( Bool )
        d742 = ( ( Bool -> Bool ) ∋ ( ( λ x7430 -> if false then false else false ) ) ) $ ( if true then d697 else true )
        d745 : if false then ( ( Set -> Set ) ∋ ( ( λ x7480 -> x7480 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d745 = if ( ( Bool -> Bool ) ∋ ( ( λ x7460 -> x7460 ) ) ) $ ( d723 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7470 -> d549 ) ) ) $ ( false ) else if d513 then d719 else false
        d749 : ( ( Set -> Set ) ∋ ( ( λ x7520 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x7500 -> ( ( Bool -> Bool ) ∋ ( ( λ x7510 -> if false then d96 else true ) ) ) $ ( x7500 ) ) ) ) $ ( if false then true else d516 )
        d753 : ( ( Set -> Set ) ∋ ( ( λ x7550 -> ( ( Set -> Set ) ∋ ( ( λ x7560 -> if false then x7560 else x7550 ) ) ) $ ( x7550 ) ) ) ) $ ( if true then Bool else Bool )
        d753 = if if true then d470 else d426 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x7540 -> x7540 ) ) ) $ ( d582 )
        d757 : if false then ( ( Set -> Set ) ∋ ( ( λ x7610 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d757 = if ( ( Bool -> Bool ) ∋ ( ( λ x7580 -> d237 ) ) ) $ ( d536 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7590 -> true ) ) ) $ ( d594 ) else ( ( Bool -> Bool ) ∋ ( ( λ x7600 -> x7600 ) ) ) $ ( false )
        d762 : if false then if true then Bool else Bool else if true then Bool else Bool
        d762 = if ( ( Bool -> Bool ) ∋ ( ( λ x7630 -> x7630 ) ) ) $ ( d104 ) then ( ( Bool -> Bool ) ∋ ( ( λ x7640 -> false ) ) ) $ ( d415 ) else if true then true else d64
        d765 : ( ( Set -> Set ) ∋ ( ( λ x7670 -> ( ( Set -> Set ) ∋ ( ( λ x7680 -> if true then Bool else x7670 ) ) ) $ ( x7670 ) ) ) ) $ ( if false then Bool else Bool )
        d765 = ( ( Bool -> Bool ) ∋ ( ( λ x7660 -> if d701 then x7660 else x7660 ) ) ) $ ( if d207 then true else false )
        d769 : ( ( Set -> Set ) ∋ ( ( λ x7720 -> ( ( Set -> Set ) ∋ ( ( λ x7730 -> if true then x7720 else x7730 ) ) ) $ ( x7720 ) ) ) ) $ ( if false then Bool else Bool )
        d769 = ( ( Bool -> Bool ) ∋ ( ( λ x7700 -> ( ( Bool -> Bool ) ∋ ( ( λ x7710 -> if false then false else d140 ) ) ) $ ( d237 ) ) ) ) $ ( if d40 then d129 else d653 )
        d774 : ( ( Set -> Set ) ∋ ( ( λ x7760 -> if true then Bool else x7760 ) ) ) $ ( if false then Bool else Bool )
        d774 = ( ( Bool -> Bool ) ∋ ( ( λ x7750 -> if x7750 then x7750 else false ) ) ) $ ( if d749 then d111 else d327 )
        d777 : if false then if true then Bool else Bool else if true then Bool else Bool
        d777 = ( ( Bool -> Bool ) ∋ ( ( λ x7780 -> ( ( Bool -> Bool ) ∋ ( ( λ x7790 -> if d742 then x7790 else true ) ) ) $ ( d605 ) ) ) ) $ ( if true then false else d123 )
        d780 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x7810 -> Bool ) ) ) $ ( Bool )
        d780 = if if d386 then d582 else d72 then if d233 then false else false else if d449 then true else false
        d782 : ( ( Set -> Set ) ∋ ( ( λ x7850 -> if true then x7850 else x7850 ) ) ) $ ( if false then Bool else Bool )
        d782 = if ( ( Bool -> Bool ) ∋ ( ( λ x7830 -> true ) ) ) $ ( false ) then if true then d650 else d483 else ( ( Bool -> Bool ) ∋ ( ( λ x7840 -> d443 ) ) ) $ ( d323 )
        d786 : if true then ( ( Set -> Set ) ∋ ( ( λ x7890 -> x7890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x7900 -> x7900 ) ) ) $ ( Bool )
        d786 = if if d61 then d246 else false then ( ( Bool -> Bool ) ∋ ( ( λ x7870 -> x7870 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x7880 -> d266 ) ) ) $ ( d197 )
        d791 : ( ( Set -> Set ) ∋ ( ( λ x7940 -> if false then x7940 else Bool ) ) ) $ ( if true then Bool else Bool )
        d791 = ( ( Bool -> Bool ) ∋ ( ( λ x7920 -> ( ( Bool -> Bool ) ∋ ( ( λ x7930 -> if true then true else x7920 ) ) ) $ ( x7920 ) ) ) ) $ ( if false then d443 else true )
        d795 : ( ( Set -> Set ) ∋ ( ( λ x7980 -> ( ( Set -> Set ) ∋ ( ( λ x7990 -> if false then Bool else Bool ) ) ) $ ( x7980 ) ) ) ) $ ( if false then Bool else Bool )
        d795 = ( ( Bool -> Bool ) ∋ ( ( λ x7960 -> ( ( Bool -> Bool ) ∋ ( ( λ x7970 -> if true then true else d107 ) ) ) $ ( d478 ) ) ) ) $ ( if d430 then false else true )
        d800 : if true then if false then Bool else Bool else if false then Bool else Bool
        d800 = if if d81 then true else d85 then ( ( Bool -> Bool ) ∋ ( ( λ x8010 -> d222 ) ) ) $ ( d551 ) else if true then d697 else false
        d802 : ( ( Set -> Set ) ∋ ( ( λ x8050 -> ( ( Set -> Set ) ∋ ( ( λ x8060 -> if false then x8060 else Bool ) ) ) $ ( x8050 ) ) ) ) $ ( if true then Bool else Bool )
        d802 = ( ( Bool -> Bool ) ∋ ( ( λ x8030 -> ( ( Bool -> Bool ) ∋ ( ( λ x8040 -> if false then true else x8030 ) ) ) $ ( d624 ) ) ) ) $ ( if d731 then true else true )
        d807 : if false then if false then Bool else Bool else if false then Bool else Bool
        d807 = ( ( Bool -> Bool ) ∋ ( ( λ x8080 -> if d697 then d29 else d474 ) ) ) $ ( if d412 then d684 else true )
        d809 : ( ( Set -> Set ) ∋ ( ( λ x8120 -> if false then x8120 else Bool ) ) ) $ ( if true then Bool else Bool )
        d809 = ( ( Bool -> Bool ) ∋ ( ( λ x8100 -> ( ( Bool -> Bool ) ∋ ( ( λ x8110 -> if false then d156 else d688 ) ) ) $ ( x8100 ) ) ) ) $ ( if d269 then true else d513 )
        d813 : if true then if false then Bool else Bool else if true then Bool else Bool
        d813 = if ( ( Bool -> Bool ) ∋ ( ( λ x8140 -> true ) ) ) $ ( d89 ) then if true then d769 else d412 else ( ( Bool -> Bool ) ∋ ( ( λ x8150 -> d310 ) ) ) $ ( d443 )
        d816 : if false then ( ( Set -> Set ) ∋ ( ( λ x8180 -> x8180 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d816 = if if false then d632 else true then if false then d342 else d89 else ( ( Bool -> Bool ) ∋ ( ( λ x8170 -> true ) ) ) $ ( d207 )
        d819 : ( ( Set -> Set ) ∋ ( ( λ x8220 -> if false then Bool else x8220 ) ) ) $ ( if true then Bool else Bool )
        d819 = ( ( Bool -> Bool ) ∋ ( ( λ x8200 -> ( ( Bool -> Bool ) ∋ ( ( λ x8210 -> if d348 then x8200 else x8210 ) ) ) $ ( d777 ) ) ) ) $ ( if true then d332 else true )
        d823 : if true then ( ( Set -> Set ) ∋ ( ( λ x8260 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x8240 -> ( ( Bool -> Bool ) ∋ ( ( λ x8250 -> if d551 then d468 else x8250 ) ) ) $ ( x8240 ) ) ) ) $ ( if true then true else false )
        d827 : ( ( Set -> Set ) ∋ ( ( λ x8300 -> if false then x8300 else Bool ) ) ) $ ( if true then Bool else Bool )
        d827 = ( ( Bool -> Bool ) ∋ ( ( λ x8280 -> ( ( Bool -> Bool ) ∋ ( ( λ x8290 -> if x8290 then false else false ) ) ) $ ( x8280 ) ) ) ) $ ( if true then d782 else true )
        d831 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8330 -> Bool ) ) ) $ ( Bool )
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x8320 -> if x8320 then x8320 else false ) ) ) $ ( if d813 then false else false )
        d834 : ( ( Set -> Set ) ∋ ( ( λ x8360 -> ( ( Set -> Set ) ∋ ( ( λ x8370 -> if true then Bool else x8370 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d834 = ( ( Bool -> Bool ) ∋ ( ( λ x8350 -> if d1 then x8350 else false ) ) ) $ ( if true then false else true )
        d838 : ( ( Set -> Set ) ∋ ( ( λ x8410 -> ( ( Set -> Set ) ∋ ( ( λ x8420 -> if false then Bool else Bool ) ) ) $ ( x8410 ) ) ) ) $ ( if false then Bool else Bool )
        d838 = ( ( Bool -> Bool ) ∋ ( ( λ x8390 -> ( ( Bool -> Bool ) ∋ ( ( λ x8400 -> if false then x8390 else false ) ) ) $ ( x8390 ) ) ) ) $ ( if d441 then d145 else false )
        d843 : if true then ( ( Set -> Set ) ∋ ( ( λ x8470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d843 = if ( ( Bool -> Bool ) ∋ ( ( λ x8440 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8450 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x8460 -> d357 ) ) ) $ ( false )
        d848 : ( ( Set -> Set ) ∋ ( ( λ x8500 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d848 = ( ( Bool -> Bool ) ∋ ( ( λ x8490 -> if true then d376 else d135 ) ) ) $ ( if true then true else d152 )
        d851 : if false then ( ( Set -> Set ) ∋ ( ( λ x8540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x8550 -> x8550 ) ) ) $ ( Bool )
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x8520 -> ( ( Bool -> Bool ) ∋ ( ( λ x8530 -> if d494 then d769 else true ) ) ) $ ( d129 ) ) ) ) $ ( if false then d688 else true )
        d856 : if false then if true then Bool else Bool else if false then Bool else Bool
        d856 = if ( ( Bool -> Bool ) ∋ ( ( λ x8570 -> x8570 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x8580 -> false ) ) ) $ ( d532 ) else if true then d342 else false
        d859 : ( ( Set -> Set ) ∋ ( ( λ x8620 -> ( ( Set -> Set ) ∋ ( ( λ x8630 -> if false then x8630 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d859 = ( ( Bool -> Bool ) ∋ ( ( λ x8600 -> ( ( Bool -> Bool ) ∋ ( ( λ x8610 -> if true then x8610 else d156 ) ) ) $ ( true ) ) ) ) $ ( if d628 then d660 else d691 )
        d864 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8660 -> x8660 ) ) ) $ ( Bool )
        d864 = if ( ( Bool -> Bool ) ∋ ( ( λ x8650 -> x8650 ) ) ) $ ( d731 ) then if false then d156 else d377 else if true then d218 else false
        d867 : if false then if true then Bool else Bool else if true then Bool else Bool
        d867 = ( ( Bool -> Bool ) ∋ ( ( λ x8680 -> ( ( Bool -> Bool ) ∋ ( ( λ x8690 -> if d662 then x8680 else d72 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d551 )
        d870 : ( ( Set -> Set ) ∋ ( ( λ x8740 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d870 = if ( ( Bool -> Bool ) ∋ ( ( λ x8710 -> x8710 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8720 -> d360 ) ) ) $ ( d372 ) else ( ( Bool -> Bool ) ∋ ( ( λ x8730 -> d856 ) ) ) $ ( d129 )
        d875 : ( ( Set -> Set ) ∋ ( ( λ x8770 -> if false then Bool else x8770 ) ) ) $ ( if true then Bool else Bool )
        d875 = ( ( Bool -> Bool ) ∋ ( ( λ x8760 -> if d5 then x8760 else x8760 ) ) ) $ ( if true then false else true )
        d878 : if false then ( ( Set -> Set ) ∋ ( ( λ x8800 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d878 = ( ( Bool -> Bool ) ∋ ( ( λ x8790 -> if d26 then x8790 else false ) ) ) $ ( if false then true else false )
        d881 : ( ( Set -> Set ) ∋ ( ( λ x8840 -> if false then Bool else x8840 ) ) ) $ ( if false then Bool else Bool )
        d881 = if ( ( Bool -> Bool ) ∋ ( ( λ x8820 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x8830 -> d135 ) ) ) $ ( d367 ) else if true then d376 else d851
        d885 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8880 -> x8880 ) ) ) $ ( Bool )
        d885 = if if d601 then d843 else false then ( ( Bool -> Bool ) ∋ ( ( λ x8860 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x8870 -> x8870 ) ) ) $ ( false )
        d889 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8920 -> Bool ) ) ) $ ( Bool )
        d889 = ( ( Bool -> Bool ) ∋ ( ( λ x8900 -> ( ( Bool -> Bool ) ∋ ( ( λ x8910 -> if x8910 then x8910 else d437 ) ) ) $ ( d287 ) ) ) ) $ ( if false then true else d807 )
        d893 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8940 -> x8940 ) ) ) $ ( Bool )
        d893 = if if true then false else d646 then if d523 then d870 else false else if false then false else false
        d895 : ( ( Set -> Set ) ∋ ( ( λ x8970 -> ( ( Set -> Set ) ∋ ( ( λ x8980 -> if true then Bool else Bool ) ) ) $ ( x8970 ) ) ) ) $ ( if true then Bool else Bool )
        d895 = if if d715 then d287 else false then if false then d81 else d357 else ( ( Bool -> Bool ) ∋ ( ( λ x8960 -> x8960 ) ) ) $ ( false )
        d899 : if false then ( ( Set -> Set ) ∋ ( ( λ x9020 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9030 -> x9030 ) ) ) $ ( Bool )
        d899 = ( ( Bool -> Bool ) ∋ ( ( λ x9000 -> ( ( Bool -> Bool ) ∋ ( ( λ x9010 -> if d201 then d711 else x9010 ) ) ) $ ( d222 ) ) ) ) $ ( if false then false else d474 )
        d904 : if true then ( ( Set -> Set ) ∋ ( ( λ x9070 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9080 -> x9080 ) ) ) $ ( Bool )
        d904 = ( ( Bool -> Bool ) ∋ ( ( λ x9050 -> ( ( Bool -> Bool ) ∋ ( ( λ x9060 -> if x9050 then true else d187 ) ) ) $ ( d376 ) ) ) ) $ ( if d624 then true else true )
        d909 : ( ( Set -> Set ) ∋ ( ( λ x9110 -> ( ( Set -> Set ) ∋ ( ( λ x9120 -> if true then x9120 else x9120 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d909 = if if d904 then d564 else false then ( ( Bool -> Bool ) ∋ ( ( λ x9100 -> x9100 ) ) ) $ ( d274 ) else if d757 then true else d642
        d913 : ( ( Set -> Set ) ∋ ( ( λ x9160 -> if false then Bool else x9160 ) ) ) $ ( if false then Bool else Bool )
        d913 = ( ( Bool -> Bool ) ∋ ( ( λ x9140 -> ( ( Bool -> Bool ) ∋ ( ( λ x9150 -> if d904 then false else true ) ) ) $ ( d5 ) ) ) ) $ ( if true then d777 else d549 )
        d917 : ( ( Set -> Set ) ∋ ( ( λ x9190 -> ( ( Set -> Set ) ∋ ( ( λ x9200 -> if true then x9190 else x9200 ) ) ) $ ( x9190 ) ) ) ) $ ( if true then Bool else Bool )
        d917 = if if d731 then d269 else d441 then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x9180 -> d315 ) ) ) $ ( true )
        d921 : if false then ( ( Set -> Set ) ∋ ( ( λ x9230 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d921 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x9220 -> x9220 ) ) ) $ ( false ) else if d618 then false else d3
        d924 : ( ( Set -> Set ) ∋ ( ( λ x9250 -> if true then Bool else x9250 ) ) ) $ ( if true then Bool else Bool )
        d924 = if if d204 then false else d408 then if true then true else d483 else if true then d549 else true
        d926 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9280 -> Bool ) ) ) $ ( Bool )
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x9270 -> if false then d870 else x9270 ) ) ) $ ( if true then true else d264 )
        d929 : ( ( Set -> Set ) ∋ ( ( λ x9320 -> if true then x9320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d929 = if if d559 then d749 else d357 then ( ( Bool -> Bool ) ∋ ( ( λ x9300 -> d166 ) ) ) $ ( d675 ) else ( ( Bool -> Bool ) ∋ ( ( λ x9310 -> false ) ) ) $ ( d640 )
        d933 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9350 -> Bool ) ) ) $ ( Bool )
        d933 = ( ( Bool -> Bool ) ∋ ( ( λ x9340 -> if d577 then d831 else true ) ) ) $ ( if d342 then false else d667 )
        d936 : ( ( Set -> Set ) ∋ ( ( λ x9380 -> if true then Bool else x9380 ) ) ) $ ( if true then Bool else Bool )
        d936 = if ( ( Bool -> Bool ) ∋ ( ( λ x9370 -> d64 ) ) ) $ ( true ) then if false then true else d562 else if d207 then d636 else true
        d939 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9410 -> x9410 ) ) ) $ ( Bool )
        d939 = if ( ( Bool -> Bool ) ∋ ( ( λ x9400 -> x9400 ) ) ) $ ( d667 ) then if false then d704 else d244 else if true then d831 else false
        d942 : ( ( Set -> Set ) ∋ ( ( λ x9460 -> if false then x9460 else x9460 ) ) ) $ ( if false then Bool else Bool )
        d942 = if ( ( Bool -> Bool ) ∋ ( ( λ x9430 -> true ) ) ) $ ( d695 ) then ( ( Bool -> Bool ) ∋ ( ( λ x9440 -> d129 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9450 -> x9450 ) ) ) $ ( d470 )
        d947 : if false then if false then Bool else Bool else if true then Bool else Bool
        d947 = ( ( Bool -> Bool ) ∋ ( ( λ x9480 -> if d601 then d795 else false ) ) ) $ ( if d337 then true else d581 )
        d949 : if false then ( ( Set -> Set ) ∋ ( ( λ x9510 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9520 -> x9520 ) ) ) $ ( Bool )
        d949 = ( ( Bool -> Bool ) ∋ ( ( λ x9500 -> if true then d819 else d513 ) ) ) $ ( if d131 then d315 else false )
        d953 : if true then if true then Bool else Bool else if true then Bool else Bool
        d953 = if if false then d780 else d204 then if d574 then d864 else true else ( ( Bool -> Bool ) ∋ ( ( λ x9540 -> x9540 ) ) ) $ ( true )
        d955 : ( ( Set -> Set ) ∋ ( ( λ x9570 -> ( ( Set -> Set ) ∋ ( ( λ x9580 -> if true then Bool else Bool ) ) ) $ ( x9570 ) ) ) ) $ ( if true then Bool else Bool )
        d955 = if ( ( Bool -> Bool ) ∋ ( ( λ x9560 -> x9560 ) ) ) $ ( d859 ) then if d372 then false else true else if d118 then d913 else d889
        d959 : if false then ( ( Set -> Set ) ∋ ( ( λ x9620 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9630 -> x9630 ) ) ) $ ( Bool )
        d959 = ( ( Bool -> Bool ) ∋ ( ( λ x9600 -> ( ( Bool -> Bool ) ∋ ( ( λ x9610 -> if d765 then false else x9600 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d964 : if true then ( ( Set -> Set ) ∋ ( ( λ x9660 -> x9660 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d964 = ( ( Bool -> Bool ) ∋ ( ( λ x9650 -> if x9650 then d632 else false ) ) ) $ ( if d913 then d96 else false )
        d967 : ( ( Set -> Set ) ∋ ( ( λ x9690 -> ( ( Set -> Set ) ∋ ( ( λ x9700 -> if true then x9700 else Bool ) ) ) $ ( x9690 ) ) ) ) $ ( if true then Bool else Bool )
        d967 = ( ( Bool -> Bool ) ∋ ( ( λ x9680 -> if true then true else d675 ) ) ) $ ( if d904 then d959 else d323 )
        d971 : ( ( Set -> Set ) ∋ ( ( λ x9730 -> if true then x9730 else x9730 ) ) ) $ ( if false then Bool else Bool )
        d971 = if ( ( Bool -> Bool ) ∋ ( ( λ x9720 -> d283 ) ) ) $ ( d628 ) then if d249 then false else true else if d337 then d23 else d191
        d974 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x9770 -> x9770 ) ) ) $ ( Bool )
        d974 = if if true then d249 else d269 then ( ( Bool -> Bool ) ∋ ( ( λ x9750 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x9760 -> d470 ) ) ) $ ( false )
        d978 : ( ( Set -> Set ) ∋ ( ( λ x9810 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d978 = ( ( Bool -> Bool ) ∋ ( ( λ x9790 -> ( ( Bool -> Bool ) ∋ ( ( λ x9800 -> if d516 then d667 else x9790 ) ) ) $ ( d290 ) ) ) ) $ ( if d152 then false else false )
        d982 : ( ( Set -> Set ) ∋ ( ( λ x9840 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d982 = if if false then d848 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9830 -> true ) ) ) $ ( d856 ) else if d590 then false else false
        d985 : ( ( Set -> Set ) ∋ ( ( λ x9870 -> if false then x9870 else Bool ) ) ) $ ( if false then Bool else Bool )
        d985 = ( ( Bool -> Bool ) ∋ ( ( λ x9860 -> if d23 then d355 else x9860 ) ) ) $ ( if d513 then false else false )
        d988 : if true then ( ( Set -> Set ) ∋ ( ( λ x9900 -> x9900 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d988 = if if false then d949 else true then ( ( Bool -> Bool ) ∋ ( ( λ x9890 -> false ) ) ) $ ( d229 ) else if d899 then false else d92
        d991 : if false then if true then Bool else Bool else if true then Bool else Bool
        d991 = ( ( Bool -> Bool ) ∋ ( ( λ x9920 -> if false then false else x9920 ) ) ) $ ( if true then d636 else d468 )
        d993 : if false then ( ( Set -> Set ) ∋ ( ( λ x9960 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x9970 -> x9970 ) ) ) $ ( Bool )
        d993 = ( ( Bool -> Bool ) ∋ ( ( λ x9940 -> ( ( Bool -> Bool ) ∋ ( ( λ x9950 -> if x9940 then false else d266 ) ) ) $ ( x9940 ) ) ) ) $ ( if false then d430 else false )
        d998 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10010 -> Bool ) ) ) $ ( Bool )
        d998 = ( ( Bool -> Bool ) ∋ ( ( λ x9990 -> ( ( Bool -> Bool ) ∋ ( ( λ x10000 -> if d807 then x10000 else d382 ) ) ) $ ( x9990 ) ) ) ) $ ( if d513 then true else d184 )
        d1002 : ( ( Set -> Set ) ∋ ( ( λ x10040 -> if true then Bool else x10040 ) ) ) $ ( if true then Bool else Bool )
        d1002 = if if true then false else d402 then if d598 then d246 else true else ( ( Bool -> Bool ) ∋ ( ( λ x10030 -> true ) ) ) $ ( d823 )
        d1005 : ( ( Set -> Set ) ∋ ( ( λ x10070 -> ( ( Set -> Set ) ∋ ( ( λ x10080 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1005 = ( ( Bool -> Bool ) ∋ ( ( λ x10060 -> if false then d29 else d351 ) ) ) $ ( if d225 then d412 else false )
        d1009 : if false then ( ( Set -> Set ) ∋ ( ( λ x10110 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10120 -> Bool ) ) ) $ ( Bool )
        d1009 = if ( ( Bool -> Bool ) ∋ ( ( λ x10100 -> d229 ) ) ) $ ( d971 ) then if false then d274 else true else if d283 then d715 else d367
        d1013 : ( ( Set -> Set ) ∋ ( ( λ x10150 -> ( ( Set -> Set ) ∋ ( ( λ x10160 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1013 = ( ( Bool -> Bool ) ∋ ( ( λ x10140 -> if d667 then true else x10140 ) ) ) $ ( if true then true else d921 )
        d1017 : ( ( Set -> Set ) ∋ ( ( λ x10210 -> if false then x10210 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1017 = if ( ( Bool -> Bool ) ∋ ( ( λ x10180 -> true ) ) ) $ ( d418 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10190 -> x10190 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10200 -> d507 ) ) ) $ ( true )
        d1022 : ( ( Set -> Set ) ∋ ( ( λ x10260 -> ( ( Set -> Set ) ∋ ( ( λ x10270 -> if true then x10270 else x10270 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1022 = if ( ( Bool -> Bool ) ∋ ( ( λ x10230 -> x10230 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x10240 -> x10240 ) ) ) $ ( d204 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10250 -> d582 ) ) ) $ ( false )
        d1028 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10300 -> x10300 ) ) ) $ ( Bool )
        d1028 = ( ( Bool -> Bool ) ∋ ( ( λ x10290 -> if x10290 then x10290 else d742 ) ) ) $ ( if d74 then d156 else d991 )
        d1031 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1031 = if ( ( Bool -> Bool ) ∋ ( ( λ x10320 -> x10320 ) ) ) $ ( false ) then if d985 then true else d107 else if false then true else d61
        d1033 : if false then ( ( Set -> Set ) ∋ ( ( λ x10360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10370 -> x10370 ) ) ) $ ( Bool )
        d1033 = if ( ( Bool -> Bool ) ∋ ( ( λ x10340 -> d507 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10350 -> x10350 ) ) ) $ ( d210 ) else if d618 then d848 else d96
        d1038 : if true then ( ( Set -> Set ) ∋ ( ( λ x10400 -> x10400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10410 -> x10410 ) ) ) $ ( Bool )
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x10390 -> if d1022 then true else false ) ) ) $ ( if false then false else false )
        d1042 : ( ( Set -> Set ) ∋ ( ( λ x10450 -> ( ( Set -> Set ) ∋ ( ( λ x10460 -> if true then Bool else x10460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1042 = ( ( Bool -> Bool ) ∋ ( ( λ x10430 -> ( ( Bool -> Bool ) ∋ ( ( λ x10440 -> if d536 then x10430 else x10440 ) ) ) $ ( d656 ) ) ) ) $ ( if d510 then d418 else true )
        d1047 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1047 = ( ( Bool -> Bool ) ∋ ( ( λ x10480 -> if d933 then x10480 else x10480 ) ) ) $ ( if d895 then d398 else true )
        d1049 : ( ( Set -> Set ) ∋ ( ( λ x10520 -> ( ( Set -> Set ) ∋ ( ( λ x10530 -> if false then x10520 else x10520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1049 = if ( ( Bool -> Bool ) ∋ ( ( λ x10500 -> x10500 ) ) ) $ ( d254 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10510 -> x10510 ) ) ) $ ( true ) else if false then false else d640
        d1054 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10570 -> x10570 ) ) ) $ ( Bool )
        d1054 = if ( ( Bool -> Bool ) ∋ ( ( λ x10550 -> d982 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10560 -> x10560 ) ) ) $ ( true ) else if false then d704 else d856
        d1058 : ( ( Set -> Set ) ∋ ( ( λ x10600 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1058 = ( ( Bool -> Bool ) ∋ ( ( λ x10590 -> if false then d437 else false ) ) ) $ ( if true then d802 else true )
        d1061 : ( ( Set -> Set ) ∋ ( ( λ x10630 -> if true then x10630 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1061 = if if false then d118 else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x10620 -> d782 ) ) ) $ ( d551 )
        d1064 : ( ( Set -> Set ) ∋ ( ( λ x10660 -> if false then Bool else x10660 ) ) ) $ ( if true then Bool else Bool )
        d1064 = if ( ( Bool -> Bool ) ∋ ( ( λ x10650 -> x10650 ) ) ) $ ( true ) then if d985 then d449 else d415 else if false then d708 else true
        d1067 : if true then ( ( Set -> Set ) ∋ ( ( λ x10700 -> x10700 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1067 = if if d57 then d129 else false then ( ( Bool -> Bool ) ∋ ( ( λ x10680 -> true ) ) ) $ ( d390 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10690 -> d851 ) ) ) $ ( d675 )
        d1071 : ( ( Set -> Set ) ∋ ( ( λ x10740 -> if false then x10740 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1071 = ( ( Bool -> Bool ) ∋ ( ( λ x10720 -> ( ( Bool -> Bool ) ∋ ( ( λ x10730 -> if false then d791 else false ) ) ) $ ( true ) ) ) ) $ ( if true then d564 else d246 )
        d1075 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1075 = if if false then d478 else true then if d551 then false else d646 else ( ( Bool -> Bool ) ∋ ( ( λ x10760 -> false ) ) ) $ ( d204 )
        d1077 : ( ( Set -> Set ) ∋ ( ( λ x10800 -> if true then x10800 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1077 = if ( ( Bool -> Bool ) ∋ ( ( λ x10780 -> true ) ) ) $ ( d816 ) then ( ( Bool -> Bool ) ∋ ( ( λ x10790 -> x10790 ) ) ) $ ( d470 ) else if d111 then d1047 else true
        d1081 : ( ( Set -> Set ) ∋ ( ( λ x10820 -> if true then Bool else x10820 ) ) ) $ ( if false then Bool else Bool )
        d1081 = if if false then d791 else true then if d926 then false else d360 else if d54 then true else true
        d1083 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x10860 -> x10860 ) ) ) $ ( Bool )
        d1083 = ( ( Bool -> Bool ) ∋ ( ( λ x10840 -> ( ( Bool -> Bool ) ∋ ( ( λ x10850 -> if x10840 then true else x10850 ) ) ) $ ( d769 ) ) ) ) $ ( if d636 then d348 else d9 )
        d1087 : ( ( Set -> Set ) ∋ ( ( λ x10910 -> if false then Bool else x10910 ) ) ) $ ( if true then Bool else Bool )
        d1087 = if ( ( Bool -> Bool ) ∋ ( ( λ x10880 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x10890 -> false ) ) ) $ ( d656 ) else ( ( Bool -> Bool ) ∋ ( ( λ x10900 -> x10900 ) ) ) $ ( true )
        d1092 : if false then ( ( Set -> Set ) ∋ ( ( λ x10950 -> x10950 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x10960 -> Bool ) ) ) $ ( Bool )
        d1092 = if if false then d201 else d19 then ( ( Bool -> Bool ) ∋ ( ( λ x10930 -> d870 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x10940 -> true ) ) ) $ ( d89 )
        d1097 : ( ( Set -> Set ) ∋ ( ( λ x10990 -> if true then x10990 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1097 = if if false then d749 else d89 then if d881 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x10980 -> false ) ) ) $ ( false )
        d1100 : if false then ( ( Set -> Set ) ∋ ( ( λ x11030 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11040 -> x11040 ) ) ) $ ( Bool )
        d1100 = ( ( Bool -> Bool ) ∋ ( ( λ x11010 -> ( ( Bool -> Bool ) ∋ ( ( λ x11020 -> if x11020 then x11010 else true ) ) ) $ ( x11010 ) ) ) ) $ ( if d608 then d1031 else d235 )
        d1105 : ( ( Set -> Set ) ∋ ( ( λ x11080 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1105 = ( ( Bool -> Bool ) ∋ ( ( λ x11060 -> ( ( Bool -> Bool ) ∋ ( ( λ x11070 -> if true then d513 else true ) ) ) $ ( true ) ) ) ) $ ( if d708 then true else d1083 )
        d1109 : ( ( Set -> Set ) ∋ ( ( λ x11130 -> if false then Bool else x11130 ) ) ) $ ( if true then Bool else Bool )
        d1109 = if ( ( Bool -> Bool ) ∋ ( ( λ x11100 -> x11100 ) ) ) $ ( d513 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11110 -> d823 ) ) ) $ ( d441 ) else ( ( Bool -> Bool ) ∋ ( ( λ x11120 -> x11120 ) ) ) $ ( d551 )
        d1114 : if false then ( ( Set -> Set ) ∋ ( ( λ x11150 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1114 = if if d628 then d283 else true then if d843 then d569 else d310 else if d197 then d213 else true
        d1116 : if true then ( ( Set -> Set ) ∋ ( ( λ x11190 -> x11190 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11200 -> x11200 ) ) ) $ ( Bool )
        d1116 = if ( ( Bool -> Bool ) ∋ ( ( λ x11170 -> false ) ) ) $ ( d455 ) then if d875 then d290 else d988 else ( ( Bool -> Bool ) ∋ ( ( λ x11180 -> false ) ) ) $ ( d753 )
        d1121 : ( ( Set -> Set ) ∋ ( ( λ x11250 -> ( ( Set -> Set ) ∋ ( ( λ x11260 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1121 = if ( ( Bool -> Bool ) ∋ ( ( λ x11220 -> d178 ) ) ) $ ( d148 ) then ( ( Bool -> Bool ) ∋ ( ( λ x11230 -> d1005 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11240 -> x11240 ) ) ) $ ( d418 )
        d1127 : if false then ( ( Set -> Set ) ∋ ( ( λ x11300 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1127 = ( ( Bool -> Bool ) ∋ ( ( λ x11280 -> ( ( Bool -> Bool ) ∋ ( ( λ x11290 -> if x11290 then d266 else true ) ) ) $ ( false ) ) ) ) $ ( if d162 then false else d680 )
        d1131 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1131 = ( ( Bool -> Bool ) ∋ ( ( λ x11320 -> if true then x11320 else false ) ) ) $ ( if d254 then d479 else true )
        d1133 : ( ( Set -> Set ) ∋ ( ( λ x11350 -> ( ( Set -> Set ) ∋ ( ( λ x11360 -> if true then Bool else x11350 ) ) ) $ ( x11350 ) ) ) ) $ ( if true then Bool else Bool )
        d1133 = ( ( Bool -> Bool ) ∋ ( ( λ x11340 -> if x11340 then d904 else d426 ) ) ) $ ( if d478 then d129 else d1105 )
        d1137 : ( ( Set -> Set ) ∋ ( ( λ x11390 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1137 = if ( ( Bool -> Bool ) ∋ ( ( λ x11380 -> d978 ) ) ) $ ( d936 ) then if true then false else false else if d988 then false else true
        d1140 : if true then ( ( Set -> Set ) ∋ ( ( λ x11430 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11440 -> x11440 ) ) ) $ ( Bool )
        d1140 = ( ( Bool -> Bool ) ∋ ( ( λ x11410 -> ( ( Bool -> Bool ) ∋ ( ( λ x11420 -> if x11410 then x11420 else x11410 ) ) ) $ ( x11410 ) ) ) ) $ ( if d184 then true else d856 )
        d1145 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1145 = if if d1109 then false else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x11460 -> false ) ) ) $ ( d731 )
        d1147 : if true then ( ( Set -> Set ) ∋ ( ( λ x11490 -> x11490 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1147 = if if true then false else d14 then ( ( Bool -> Bool ) ∋ ( ( λ x11480 -> d390 ) ) ) $ ( false ) else if true then d1009 else true
        d1150 : ( ( Set -> Set ) ∋ ( ( λ x11520 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1150 = ( ( Bool -> Bool ) ∋ ( ( λ x11510 -> if d1064 then x11510 else false ) ) ) $ ( if false then d229 else false )
        d1153 : ( ( Set -> Set ) ∋ ( ( λ x11550 -> ( ( Set -> Set ) ∋ ( ( λ x11560 -> if false then x11560 else x11560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1153 = if if false then d1031 else d988 then if false then d145 else d1047 else ( ( Bool -> Bool ) ∋ ( ( λ x11540 -> x11540 ) ) ) $ ( true )
        d1157 : ( ( Set -> Set ) ∋ ( ( λ x11600 -> ( ( Set -> Set ) ∋ ( ( λ x11610 -> if true then Bool else x11600 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1157 = if ( ( Bool -> Bool ) ∋ ( ( λ x11580 -> true ) ) ) $ ( d697 ) then if true then false else d586 else ( ( Bool -> Bool ) ∋ ( ( λ x11590 -> d656 ) ) ) $ ( false )
        d1162 : if false then ( ( Set -> Set ) ∋ ( ( λ x11640 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1162 = if if d791 then d1140 else d29 then ( ( Bool -> Bool ) ∋ ( ( λ x11630 -> d851 ) ) ) $ ( d3 ) else if true then d26 else d111
        d1165 : ( ( Set -> Set ) ∋ ( ( λ x11680 -> if false then Bool else x11680 ) ) ) $ ( if false then Bool else Bool )
        d1165 = if ( ( Bool -> Bool ) ∋ ( ( λ x11660 -> d711 ) ) ) $ ( true ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x11670 -> d834 ) ) ) $ ( d1087 )
        d1169 : if true then ( ( Set -> Set ) ∋ ( ( λ x11720 -> x11720 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1169 = if ( ( Bool -> Bool ) ∋ ( ( λ x11700 -> false ) ) ) $ ( true ) then if d377 then d210 else true else ( ( Bool -> Bool ) ∋ ( ( λ x11710 -> d851 ) ) ) $ ( false )
        d1173 : if true then ( ( Set -> Set ) ∋ ( ( λ x11760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x11770 -> x11770 ) ) ) $ ( Bool )
        d1173 = if if d435 then true else d913 then ( ( Bool -> Bool ) ∋ ( ( λ x11740 -> d605 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x11750 -> false ) ) ) $ ( d478 )
        d1178 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x11810 -> Bool ) ) ) $ ( Bool )
        d1178 = ( ( Bool -> Bool ) ∋ ( ( λ x11790 -> ( ( Bool -> Bool ) ∋ ( ( λ x11800 -> if x11790 then false else d978 ) ) ) $ ( d355 ) ) ) ) $ ( if true then d306 else true )
        d1182 : if true then ( ( Set -> Set ) ∋ ( ( λ x11830 -> x11830 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1182 = if if true then d708 else d947 then if d765 then true else true else if false then d111 else true
        d1184 : ( ( Set -> Set ) ∋ ( ( λ x11870 -> ( ( Set -> Set ) ∋ ( ( λ x11880 -> if true then Bool else x11870 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1184 = ( ( Bool -> Bool ) ∋ ( ( λ x11850 -> ( ( Bool -> Bool ) ∋ ( ( λ x11860 -> if d85 then d46 else d487 ) ) ) $ ( x11850 ) ) ) ) $ ( if d415 then false else d327 )
        d1189 : ( ( Set -> Set ) ∋ ( ( λ x11900 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1189 = if if d556 then d148 else d479 then if true then true else d774 else if true then false else d68
        d1191 : ( ( Set -> Set ) ∋ ( ( λ x11940 -> ( ( Set -> Set ) ∋ ( ( λ x11950 -> if false then Bool else x11940 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1191 = ( ( Bool -> Bool ) ∋ ( ( λ x11920 -> ( ( Bool -> Bool ) ∋ ( ( λ x11930 -> if false then false else true ) ) ) $ ( x11920 ) ) ) ) $ ( if d372 then true else d851 )
        d1196 : ( ( Set -> Set ) ∋ ( ( λ x11980 -> ( ( Set -> Set ) ∋ ( ( λ x11990 -> if false then x11980 else x11980 ) ) ) $ ( x11980 ) ) ) ) $ ( if true then Bool else Bool )
        d1196 = if if false then d953 else false then ( ( Bool -> Bool ) ∋ ( ( λ x11970 -> true ) ) ) $ ( false ) else if true then false else false
        d1200 : if true then ( ( Set -> Set ) ∋ ( ( λ x12040 -> x12040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12050 -> Bool ) ) ) $ ( Bool )
        d1200 = if ( ( Bool -> Bool ) ∋ ( ( λ x12010 -> x12010 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12020 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x12030 -> x12030 ) ) ) $ ( true )
        d1206 : ( ( Set -> Set ) ∋ ( ( λ x12080 -> if false then Bool else x12080 ) ) ) $ ( if true then Bool else Bool )
        d1206 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x12070 -> d867 ) ) ) $ ( d1092 ) else if d959 then false else true
        d1209 : ( ( Set -> Set ) ∋ ( ( λ x12110 -> ( ( Set -> Set ) ∋ ( ( λ x12120 -> if false then Bool else x12110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1209 = ( ( Bool -> Bool ) ∋ ( ( λ x12100 -> if true then x12100 else x12100 ) ) ) $ ( if false then d3 else true )
        d1213 : if false then ( ( Set -> Set ) ∋ ( ( λ x12150 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12160 -> x12160 ) ) ) $ ( Bool )
        d1213 = if if true then d640 else d1162 then ( ( Bool -> Bool ) ∋ ( ( λ x12140 -> x12140 ) ) ) $ ( true ) else if d695 then d523 else true
        d1217 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12200 -> x12200 ) ) ) $ ( Bool )
        d1217 = ( ( Bool -> Bool ) ∋ ( ( λ x12180 -> ( ( Bool -> Bool ) ∋ ( ( λ x12190 -> if x12190 then x12190 else x12180 ) ) ) $ ( d449 ) ) ) ) $ ( if false then true else d364 )
        d1221 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1221 = if ( ( Bool -> Bool ) ∋ ( ( λ x12220 -> x12220 ) ) ) $ ( d936 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12230 -> x12230 ) ) ) $ ( d1178 ) else if d210 then true else d254
        d1224 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12270 -> x12270 ) ) ) $ ( Bool )
        d1224 = ( ( Bool -> Bool ) ∋ ( ( λ x12250 -> ( ( Bool -> Bool ) ∋ ( ( λ x12260 -> if false then x12260 else d210 ) ) ) $ ( x12250 ) ) ) ) $ ( if d402 then d408 else false )
        d1228 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x12310 -> Bool ) ) ) $ ( Bool )
        d1228 = ( ( Bool -> Bool ) ∋ ( ( λ x12290 -> ( ( Bool -> Bool ) ∋ ( ( λ x12300 -> if false then x12300 else d441 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d949 )
        d1232 : if true then ( ( Set -> Set ) ∋ ( ( λ x12350 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1232 = ( ( Bool -> Bool ) ∋ ( ( λ x12330 -> ( ( Bool -> Bool ) ∋ ( ( λ x12340 -> if x12330 then x12330 else false ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d1236 : ( ( Set -> Set ) ∋ ( ( λ x12390 -> ( ( Set -> Set ) ∋ ( ( λ x12400 -> if true then x12390 else x12400 ) ) ) $ ( x12390 ) ) ) ) $ ( if false then Bool else Bool )
        d1236 = ( ( Bool -> Bool ) ∋ ( ( λ x12370 -> ( ( Bool -> Bool ) ∋ ( ( λ x12380 -> if true then d582 else x12370 ) ) ) $ ( d499 ) ) ) ) $ ( if true then d1196 else d222 )
        d1241 : if true then ( ( Set -> Set ) ∋ ( ( λ x12440 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1241 = ( ( Bool -> Bool ) ∋ ( ( λ x12420 -> ( ( Bool -> Bool ) ∋ ( ( λ x12430 -> if x12420 then x12420 else x12420 ) ) ) $ ( x12420 ) ) ) ) $ ( if d1077 then false else true )
        d1245 : if true then ( ( Set -> Set ) ∋ ( ( λ x12470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1245 = if if d187 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x12460 -> x12460 ) ) ) $ ( true ) else if false then d1033 else d605
        d1248 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1248 = if if d859 then d904 else false then ( ( Bool -> Bool ) ∋ ( ( λ x12490 -> true ) ) ) $ ( d608 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12500 -> x12500 ) ) ) $ ( d449 )
        d1251 : if true then ( ( Set -> Set ) ∋ ( ( λ x12540 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1251 = if ( ( Bool -> Bool ) ∋ ( ( λ x12520 -> d441 ) ) ) $ ( d1028 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12530 -> d104 ) ) ) $ ( false ) else if d348 then d838 else d777
        d1255 : ( ( Set -> Set ) ∋ ( ( λ x12590 -> if true then Bool else x12590 ) ) ) $ ( if false then Bool else Bool )
        d1255 = if ( ( Bool -> Bool ) ∋ ( ( λ x12560 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12570 -> true ) ) ) $ ( d239 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12580 -> d360 ) ) ) $ ( false )
        d1260 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1260 = ( ( Bool -> Bool ) ∋ ( ( λ x12610 -> ( ( Bool -> Bool ) ∋ ( ( λ x12620 -> if x12610 then false else d173 ) ) ) $ ( false ) ) ) ) $ ( if d628 then true else false )
        d1263 : if false then ( ( Set -> Set ) ∋ ( ( λ x12650 -> x12650 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1263 = ( ( Bool -> Bool ) ∋ ( ( λ x12640 -> if x12640 then x12640 else x12640 ) ) ) $ ( if d237 then d802 else d939 )
        d1266 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1266 = if if d719 then false else d611 then ( ( Bool -> Bool ) ∋ ( ( λ x12670 -> true ) ) ) $ ( d510 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12680 -> x12680 ) ) ) $ ( d463 )
        d1269 : ( ( Set -> Set ) ∋ ( ( λ x12710 -> ( ( Set -> Set ) ∋ ( ( λ x12720 -> if false then x12720 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1269 = ( ( Bool -> Bool ) ∋ ( ( λ x12700 -> if d26 then false else d1182 ) ) ) $ ( if true then d386 else true )
        d1273 : if true then ( ( Set -> Set ) ∋ ( ( λ x12750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12760 -> Bool ) ) ) $ ( Bool )
        d1273 = ( ( Bool -> Bool ) ∋ ( ( λ x12740 -> if true then false else d222 ) ) ) $ ( if true then d323 else d287 )
        d1277 : ( ( Set -> Set ) ∋ ( ( λ x12800 -> ( ( Set -> Set ) ∋ ( ( λ x12810 -> if false then Bool else x12810 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1277 = if if d187 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x12780 -> x12780 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12790 -> d791 ) ) ) $ ( false )
        d1282 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1282 = if if d953 then d745 else d204 then ( ( Bool -> Bool ) ∋ ( ( λ x12830 -> false ) ) ) $ ( true ) else if d398 then d235 else true
        d1284 : if true then ( ( Set -> Set ) ∋ ( ( λ x12870 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1284 = if if d1209 then false else d96 then ( ( Bool -> Bool ) ∋ ( ( λ x12850 -> x12850 ) ) ) $ ( d1228 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12860 -> true ) ) ) $ ( true )
        d1288 : if false then ( ( Set -> Set ) ∋ ( ( λ x12920 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x12930 -> x12930 ) ) ) $ ( Bool )
        d1288 = if ( ( Bool -> Bool ) ∋ ( ( λ x12890 -> d72 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x12900 -> d1061 ) ) ) $ ( d1157 ) else ( ( Bool -> Bool ) ∋ ( ( λ x12910 -> true ) ) ) $ ( false )
        d1294 : ( ( Set -> Set ) ∋ ( ( λ x12980 -> ( ( Set -> Set ) ∋ ( ( λ x12990 -> if false then x12990 else Bool ) ) ) $ ( x12980 ) ) ) ) $ ( if false then Bool else Bool )
        d1294 = if ( ( Bool -> Bool ) ∋ ( ( λ x12950 -> d68 ) ) ) $ ( d782 ) then ( ( Bool -> Bool ) ∋ ( ( λ x12960 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x12970 -> x12970 ) ) ) $ ( false )
        d1300 : ( ( Set -> Set ) ∋ ( ( λ x13020 -> ( ( Set -> Set ) ∋ ( ( λ x13030 -> if true then Bool else x13020 ) ) ) $ ( x13020 ) ) ) ) $ ( if false then Bool else Bool )
        d1300 = ( ( Bool -> Bool ) ∋ ( ( λ x13010 -> if x13010 then d867 else x13010 ) ) ) $ ( if false then true else d9 )
        d1304 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13060 -> x13060 ) ) ) $ ( Bool )
        d1304 = ( ( Bool -> Bool ) ∋ ( ( λ x13050 -> if x13050 then false else x13050 ) ) ) $ ( if true then d479 else d181 )
        d1307 : ( ( Set -> Set ) ∋ ( ( λ x13110 -> if false then x13110 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1307 = if ( ( Bool -> Bool ) ∋ ( ( λ x13080 -> x13080 ) ) ) $ ( d394 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13090 -> d715 ) ) ) $ ( d834 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13100 -> d769 ) ) ) $ ( true )
        d1312 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1312 = if ( ( Bool -> Bool ) ∋ ( ( λ x13130 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13140 -> d187 ) ) ) $ ( d131 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13150 -> d123 ) ) ) $ ( true )
        d1316 : if false then ( ( Set -> Set ) ∋ ( ( λ x13180 -> x13180 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1316 = ( ( Bool -> Bool ) ∋ ( ( λ x13170 -> if d564 then false else d61 ) ) ) $ ( if d942 then false else true )
        d1319 : ( ( Set -> Set ) ∋ ( ( λ x13230 -> if true then x13230 else x13230 ) ) ) $ ( if true then Bool else Bool )
        d1319 = if ( ( Bool -> Bool ) ∋ ( ( λ x13200 -> d800 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13210 -> x13210 ) ) ) $ ( d1105 ) else ( ( Bool -> Bool ) ∋ ( ( λ x13220 -> false ) ) ) $ ( d723 )
        d1324 : ( ( Set -> Set ) ∋ ( ( λ x13260 -> ( ( Set -> Set ) ∋ ( ( λ x13270 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1324 = ( ( Bool -> Bool ) ∋ ( ( λ x13250 -> if x13250 then d675 else false ) ) ) $ ( if true then true else false )
        d1328 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1328 = ( ( Bool -> Bool ) ∋ ( ( λ x13290 -> ( ( Bool -> Bool ) ∋ ( ( λ x13300 -> if x13300 then x13300 else d636 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d1331 : ( ( Set -> Set ) ∋ ( ( λ x13340 -> ( ( Set -> Set ) ∋ ( ( λ x13350 -> if true then Bool else x13350 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1331 = ( ( Bool -> Bool ) ∋ ( ( λ x13320 -> ( ( Bool -> Bool ) ∋ ( ( λ x13330 -> if d1182 then x13330 else true ) ) ) $ ( x13320 ) ) ) ) $ ( if false then d618 else d1083 )
        d1336 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13380 -> Bool ) ) ) $ ( Bool )
        d1336 = ( ( Bool -> Bool ) ∋ ( ( λ x13370 -> if x13370 then d598 else d582 ) ) ) $ ( if false then d601 else d120 )
        d1339 : if false then ( ( Set -> Set ) ∋ ( ( λ x13410 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13420 -> Bool ) ) ) $ ( Bool )
        d1339 = ( ( Bool -> Bool ) ∋ ( ( λ x13400 -> if x13400 then d1173 else x13400 ) ) ) $ ( if d290 then false else false )
        d1343 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1343 = if ( ( Bool -> Bool ) ∋ ( ( λ x13440 -> x13440 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13450 -> true ) ) ) $ ( false ) else if d1251 then true else true
        d1346 : ( ( Set -> Set ) ∋ ( ( λ x13480 -> ( ( Set -> Set ) ∋ ( ( λ x13490 -> if true then x13480 else x13490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1346 = if if d577 then d1131 else d194 then ( ( Bool -> Bool ) ∋ ( ( λ x13470 -> x13470 ) ) ) $ ( d1109 ) else if d955 then true else d1054
        d1350 : ( ( Set -> Set ) ∋ ( ( λ x13520 -> ( ( Set -> Set ) ∋ ( ( λ x13530 -> if true then x13520 else x13530 ) ) ) $ ( x13520 ) ) ) ) $ ( if false then Bool else Bool )
        d1350 = ( ( Bool -> Bool ) ∋ ( ( λ x13510 -> if d1331 then false else true ) ) ) $ ( if true then d1213 else d351 )
        d1354 : ( ( Set -> Set ) ∋ ( ( λ x13570 -> if true then x13570 else x13570 ) ) ) $ ( if false then Bool else Bool )
        d1354 = ( ( Bool -> Bool ) ∋ ( ( λ x13550 -> ( ( Bool -> Bool ) ∋ ( ( λ x13560 -> if false then d166 else d795 ) ) ) $ ( d731 ) ) ) ) $ ( if false then true else true )
        d1358 : ( ( Set -> Set ) ∋ ( ( λ x13610 -> if false then Bool else x13610 ) ) ) $ ( if true then Bool else Bool )
        d1358 = if ( ( Bool -> Bool ) ∋ ( ( λ x13590 -> x13590 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x13600 -> x13600 ) ) ) $ ( d26 ) else if true then false else true
        d1362 : if false then ( ( Set -> Set ) ∋ ( ( λ x13640 -> x13640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13650 -> x13650 ) ) ) $ ( Bool )
        d1362 = ( ( Bool -> Bool ) ∋ ( ( λ x13630 -> if d246 then d780 else d1067 ) ) ) $ ( if d1145 then d1245 else false )
        d1366 : ( ( Set -> Set ) ∋ ( ( λ x13690 -> if false then x13690 else x13690 ) ) ) $ ( if true then Bool else Bool )
        d1366 = if ( ( Bool -> Bool ) ∋ ( ( λ x13670 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x13680 -> false ) ) ) $ ( false ) else if true then false else true
        d1370 : ( ( Set -> Set ) ∋ ( ( λ x13730 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1370 = ( ( Bool -> Bool ) ∋ ( ( λ x13710 -> ( ( Bool -> Bool ) ∋ ( ( λ x13720 -> if d120 then x13710 else true ) ) ) $ ( d297 ) ) ) ) $ ( if true then false else false )
        d1374 : ( ( Set -> Set ) ∋ ( ( λ x13770 -> ( ( Set -> Set ) ∋ ( ( λ x13780 -> if false then x13780 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1374 = if ( ( Bool -> Bool ) ∋ ( ( λ x13750 -> x13750 ) ) ) $ ( d1033 ) then ( ( Bool -> Bool ) ∋ ( ( λ x13760 -> false ) ) ) $ ( false ) else if true then true else false
        d1379 : if true then ( ( Set -> Set ) ∋ ( ( λ x13820 -> x13820 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1379 = if if d988 then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x13800 -> x13800 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x13810 -> false ) ) ) $ ( d1213 )
        d1383 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1383 = if if false then true else d559 then if false then d1058 else true else if d115 then d967 else d1221
        d1384 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x13870 -> x13870 ) ) ) $ ( Bool )
        d1384 = ( ( Bool -> Bool ) ∋ ( ( λ x13850 -> ( ( Bool -> Bool ) ∋ ( ( λ x13860 -> if d1217 then d867 else x13850 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d1388 : if true then ( ( Set -> Set ) ∋ ( ( λ x13900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13910 -> x13910 ) ) ) $ ( Bool )
        d1388 = if if true then d408 else true then ( ( Bool -> Bool ) ∋ ( ( λ x13890 -> d1339 ) ) ) $ ( true ) else if false then d360 else false
        d1392 : if false then ( ( Set -> Set ) ∋ ( ( λ x13940 -> x13940 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x13950 -> x13950 ) ) ) $ ( Bool )
        d1392 = ( ( Bool -> Bool ) ∋ ( ( λ x13930 -> if d929 then true else false ) ) ) $ ( if false then true else false )
        d1396 : ( ( Set -> Set ) ∋ ( ( λ x13980 -> ( ( Set -> Set ) ∋ ( ( λ x13990 -> if true then Bool else x13990 ) ) ) $ ( x13980 ) ) ) ) $ ( if false then Bool else Bool )
        d1396 = if ( ( Bool -> Bool ) ∋ ( ( λ x13970 -> x13970 ) ) ) $ ( true ) then if d310 then false else d611 else if true then d831 else d564
        d1400 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14030 -> Bool ) ) ) $ ( Bool )
        d1400 = if ( ( Bool -> Bool ) ∋ ( ( λ x14010 -> d302 ) ) ) $ ( d632 ) then if d463 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x14020 -> d540 ) ) ) $ ( false )
        d1404 : ( ( Set -> Set ) ∋ ( ( λ x14080 -> if true then Bool else x14080 ) ) ) $ ( if false then Bool else Bool )
        d1404 = if ( ( Bool -> Bool ) ∋ ( ( λ x14050 -> true ) ) ) $ ( d1343 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14060 -> x14060 ) ) ) $ ( d1346 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14070 -> d780 ) ) ) $ ( d1336 )
        d1409 : ( ( Set -> Set ) ∋ ( ( λ x14110 -> if false then x14110 else x14110 ) ) ) $ ( if true then Bool else Bool )
        d1409 = if ( ( Bool -> Bool ) ∋ ( ( λ x14100 -> true ) ) ) $ ( false ) then if d889 then true else false else if true then true else true
        d1412 : ( ( Set -> Set ) ∋ ( ( λ x14140 -> ( ( Set -> Set ) ∋ ( ( λ x14150 -> if false then x14150 else x14140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1412 = ( ( Bool -> Bool ) ∋ ( ( λ x14130 -> if d239 then x14130 else x14130 ) ) ) $ ( if true then true else true )
        d1416 : ( ( Set -> Set ) ∋ ( ( λ x14190 -> if false then Bool else x14190 ) ) ) $ ( if false then Bool else Bool )
        d1416 = ( ( Bool -> Bool ) ∋ ( ( λ x14170 -> ( ( Bool -> Bool ) ∋ ( ( λ x14180 -> if x14180 then x14180 else d632 ) ) ) $ ( true ) ) ) ) $ ( if d1109 then d81 else d483 )
        d1420 : if false then ( ( Set -> Set ) ∋ ( ( λ x14230 -> x14230 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14240 -> Bool ) ) ) $ ( Bool )
        d1420 = ( ( Bool -> Bool ) ∋ ( ( λ x14210 -> ( ( Bool -> Bool ) ∋ ( ( λ x14220 -> if x14210 then false else d50 ) ) ) $ ( x14210 ) ) ) ) $ ( if false then true else d688 )
        d1425 : ( ( Set -> Set ) ∋ ( ( λ x14270 -> if false then x14270 else x14270 ) ) ) $ ( if false then Bool else Bool )
        d1425 = if if d519 then d601 else d1031 then if d1228 then true else d1282 else ( ( Bool -> Bool ) ∋ ( ( λ x14260 -> d640 ) ) ) $ ( d81 )
        d1428 : if true then ( ( Set -> Set ) ∋ ( ( λ x14310 -> x14310 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x14320 -> Bool ) ) ) $ ( Bool )
        d1428 = ( ( Bool -> Bool ) ∋ ( ( λ x14290 -> ( ( Bool -> Bool ) ∋ ( ( λ x14300 -> if x14300 then d774 else d1184 ) ) ) $ ( d1346 ) ) ) ) $ ( if true then d765 else true )
        d1433 : ( ( Set -> Set ) ∋ ( ( λ x14360 -> if true then Bool else x14360 ) ) ) $ ( if true then Bool else Bool )
        d1433 = ( ( Bool -> Bool ) ∋ ( ( λ x14340 -> ( ( Bool -> Bool ) ∋ ( ( λ x14350 -> if false then false else d1083 ) ) ) $ ( d3 ) ) ) ) $ ( if false then true else d23 )
        d1437 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14400 -> x14400 ) ) ) $ ( Bool )
        d1437 = if if true then true else d816 then ( ( Bool -> Bool ) ∋ ( ( λ x14380 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x14390 -> x14390 ) ) ) $ ( d605 )
        d1441 : ( ( Set -> Set ) ∋ ( ( λ x14440 -> ( ( Set -> Set ) ∋ ( ( λ x14450 -> if true then x14450 else x14450 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1441 = ( ( Bool -> Bool ) ∋ ( ( λ x14420 -> ( ( Bool -> Bool ) ∋ ( ( λ x14430 -> if false then false else d398 ) ) ) $ ( d297 ) ) ) ) $ ( if false then d405 else d1105 )
        d1446 : ( ( Set -> Set ) ∋ ( ( λ x14490 -> ( ( Set -> Set ) ∋ ( ( λ x14500 -> if true then x14500 else x14490 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1446 = ( ( Bool -> Bool ) ∋ ( ( λ x14470 -> ( ( Bool -> Bool ) ∋ ( ( λ x14480 -> if d1182 then x14470 else d162 ) ) ) $ ( d889 ) ) ) ) $ ( if false then d926 else true )
        d1451 : if false then ( ( Set -> Set ) ∋ ( ( λ x14550 -> x14550 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1451 = if ( ( Bool -> Bool ) ∋ ( ( λ x14520 -> x14520 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14530 -> true ) ) ) $ ( d528 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14540 -> x14540 ) ) ) $ ( d800 )
        d1456 : ( ( Set -> Set ) ∋ ( ( λ x14570 -> ( ( Set -> Set ) ∋ ( ( λ x14580 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1456 = if if false then true else false then if d834 then d357 else d727 else if d421 then false else true
        d1459 : ( ( Set -> Set ) ∋ ( ( λ x14610 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1459 = if ( ( Bool -> Bool ) ∋ ( ( λ x14600 -> false ) ) ) $ ( d791 ) then if d594 then true else d1127 else if true then d727 else d483
        d1462 : ( ( Set -> Set ) ∋ ( ( λ x14640 -> if true then Bool else x14640 ) ) ) $ ( if true then Bool else Bool )
        d1462 = ( ( Bool -> Bool ) ∋ ( ( λ x14630 -> if x14630 then d953 else x14630 ) ) ) $ ( if true then false else true )
        d1465 : ( ( Set -> Set ) ∋ ( ( λ x14680 -> if true then Bool else x14680 ) ) ) $ ( if true then Bool else Bool )
        d1465 = ( ( Bool -> Bool ) ∋ ( ( λ x14660 -> ( ( Bool -> Bool ) ∋ ( ( λ x14670 -> if d474 then d675 else true ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d1469 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14720 -> Bool ) ) ) $ ( Bool )
        d1469 = if ( ( Bool -> Bool ) ∋ ( ( λ x14700 -> false ) ) ) $ ( true ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x14710 -> d742 ) ) ) $ ( false )
        d1473 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1473 = if ( ( Bool -> Bool ) ∋ ( ( λ x14740 -> x14740 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x14750 -> false ) ) ) $ ( true ) else if false then d605 else d556
        d1476 : ( ( Set -> Set ) ∋ ( ( λ x14800 -> if true then x14800 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1476 = if ( ( Bool -> Bool ) ∋ ( ( λ x14770 -> true ) ) ) $ ( d287 ) then ( ( Bool -> Bool ) ∋ ( ( λ x14780 -> true ) ) ) $ ( d885 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14790 -> d1157 ) ) ) $ ( d386 )
        d1481 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14830 -> Bool ) ) ) $ ( Bool )
        d1481 = if if d430 then d327 else true then ( ( Bool -> Bool ) ∋ ( ( λ x14820 -> x14820 ) ) ) $ ( d921 ) else if d1075 then d1114 else false
        d1484 : ( ( Set -> Set ) ∋ ( ( λ x14880 -> ( ( Set -> Set ) ∋ ( ( λ x14890 -> if false then x14880 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1484 = if ( ( Bool -> Bool ) ∋ ( ( λ x14850 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x14860 -> false ) ) ) $ ( d742 ) else ( ( Bool -> Bool ) ∋ ( ( λ x14870 -> x14870 ) ) ) $ ( d856 )
        d1490 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1490 = if ( ( Bool -> Bool ) ∋ ( ( λ x14910 -> false ) ) ) $ ( true ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x14920 -> d1131 ) ) ) $ ( d800 )
        d1493 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x14950 -> Bool ) ) ) $ ( Bool )
        d1493 = ( ( Bool -> Bool ) ∋ ( ( λ x14940 -> if false then false else false ) ) ) $ ( if false then true else true )
        d1496 : ( ( Set -> Set ) ∋ ( ( λ x14980 -> ( ( Set -> Set ) ∋ ( ( λ x14990 -> if false then x14990 else x14980 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1496 = ( ( Bool -> Bool ) ∋ ( ( λ x14970 -> if d955 then d191 else d1420 ) ) ) $ ( if d889 then d848 else d85 )
        d1500 : ( ( Set -> Set ) ∋ ( ( λ x15030 -> if true then x15030 else x15030 ) ) ) $ ( if false then Bool else Bool )
        d1500 = ( ( Bool -> Bool ) ∋ ( ( λ x15010 -> ( ( Bool -> Bool ) ∋ ( ( λ x15020 -> if x15010 then x15020 else d909 ) ) ) $ ( x15010 ) ) ) ) $ ( if d197 then false else true )
        d1504 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15080 -> x15080 ) ) ) $ ( Bool )
        d1504 = if ( ( Bool -> Bool ) ∋ ( ( λ x15050 -> d1209 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15060 -> d1049 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15070 -> x15070 ) ) ) $ ( d1263 )
        d1509 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15110 -> x15110 ) ) ) $ ( Bool )
        d1509 = ( ( Bool -> Bool ) ∋ ( ( λ x15100 -> if x15100 then x15100 else d564 ) ) ) $ ( if false then false else d1002 )
        d1512 : if false then ( ( Set -> Set ) ∋ ( ( λ x15150 -> x15150 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1512 = if ( ( Bool -> Bool ) ∋ ( ( λ x15130 -> true ) ) ) $ ( d899 ) then if d598 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x15140 -> x15140 ) ) ) $ ( d319 )
        d1516 : ( ( Set -> Set ) ∋ ( ( λ x15180 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1516 = if if true then d1383 else true then if false then d290 else true else ( ( Bool -> Bool ) ∋ ( ( λ x15170 -> d446 ) ) ) $ ( d618 )
        d1519 : ( ( Set -> Set ) ∋ ( ( λ x15230 -> if true then x15230 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1519 = if ( ( Bool -> Bool ) ∋ ( ( λ x15200 -> x15200 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15210 -> d494 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x15220 -> false ) ) ) $ ( false )
        d1524 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1524 = if ( ( Bool -> Bool ) ∋ ( ( λ x15250 -> d827 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x15260 -> x15260 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x15270 -> x15270 ) ) ) $ ( true )
        d1528 : ( ( Set -> Set ) ∋ ( ( λ x15300 -> ( ( Set -> Set ) ∋ ( ( λ x15310 -> if false then x15300 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1528 = ( ( Bool -> Bool ) ∋ ( ( λ x15290 -> if true then true else false ) ) ) $ ( if false then d624 else false )
        d1532 : ( ( Set -> Set ) ∋ ( ( λ x15340 -> ( ( Set -> Set ) ∋ ( ( λ x15350 -> if false then x15340 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1532 = if if true then false else d1131 then if false then d1077 else d129 else ( ( Bool -> Bool ) ∋ ( ( λ x15330 -> x15330 ) ) ) $ ( d510 )
        d1536 : if true then ( ( Set -> Set ) ∋ ( ( λ x15390 -> x15390 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1536 = if ( ( Bool -> Bool ) ∋ ( ( λ x15370 -> true ) ) ) $ ( d1189 ) then if d993 then d1416 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15380 -> false ) ) ) $ ( false )
        d1540 : ( ( Set -> Set ) ∋ ( ( λ x15440 -> if true then Bool else x15440 ) ) ) $ ( if false then Bool else Bool )
        d1540 = if ( ( Bool -> Bool ) ∋ ( ( λ x15410 -> x15410 ) ) ) $ ( d1162 ) then ( ( Bool -> Bool ) ∋ ( ( λ x15420 -> x15420 ) ) ) $ ( d249 ) else ( ( Bool -> Bool ) ∋ ( ( λ x15430 -> x15430 ) ) ) $ ( d1473 )
        d1545 : if true then ( ( Set -> Set ) ∋ ( ( λ x15470 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1545 = if if d218 then true else d197 then ( ( Bool -> Bool ) ∋ ( ( λ x15460 -> x15460 ) ) ) $ ( true ) else if true then d1540 else d1425
        d1548 : ( ( Set -> Set ) ∋ ( ( λ x15500 -> if true then Bool else x15500 ) ) ) $ ( if true then Bool else Bool )
        d1548 = if ( ( Bool -> Bool ) ∋ ( ( λ x15490 -> d1282 ) ) ) $ ( false ) then if true then false else d669 else if true then d1476 else true
        d1551 : if false then ( ( Set -> Set ) ∋ ( ( λ x15530 -> x15530 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1551 = if if d1017 then d551 else d57 then ( ( Bool -> Bool ) ∋ ( ( λ x15520 -> x15520 ) ) ) $ ( true ) else if false then false else d360
        d1554 : if true then ( ( Set -> Set ) ∋ ( ( λ x15570 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15580 -> Bool ) ) ) $ ( Bool )
        d1554 = ( ( Bool -> Bool ) ∋ ( ( λ x15550 -> ( ( Bool -> Bool ) ∋ ( ( λ x15560 -> if false then false else false ) ) ) $ ( x15550 ) ) ) ) $ ( if false then false else d574 )
        d1559 : ( ( Set -> Set ) ∋ ( ( λ x15610 -> ( ( Set -> Set ) ∋ ( ( λ x15620 -> if false then x15620 else x15610 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1559 = ( ( Bool -> Bool ) ∋ ( ( λ x15600 -> if d564 then x15600 else d123 ) ) ) $ ( if true then d753 else d412 )
        d1563 : if true then ( ( Set -> Set ) ∋ ( ( λ x15660 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x15670 -> x15670 ) ) ) $ ( Bool )
        d1563 = ( ( Bool -> Bool ) ∋ ( ( λ x15640 -> ( ( Bool -> Bool ) ∋ ( ( λ x15650 -> if d468 then x15640 else d1169 ) ) ) $ ( x15640 ) ) ) ) $ ( if d276 then false else d23 )
        d1568 : ( ( Set -> Set ) ∋ ( ( λ x15700 -> ( ( Set -> Set ) ∋ ( ( λ x15710 -> if true then x15710 else x15700 ) ) ) $ ( x15700 ) ) ) ) $ ( if true then Bool else Bool )
        d1568 = ( ( Bool -> Bool ) ∋ ( ( λ x15690 -> if true then d1331 else false ) ) ) $ ( if d96 then false else d536 )
        d1572 : ( ( Set -> Set ) ∋ ( ( λ x15750 -> if false then x15750 else x15750 ) ) ) $ ( if true then Bool else Bool )
        d1572 = if ( ( Bool -> Bool ) ∋ ( ( λ x15730 -> false ) ) ) $ ( false ) then if false then d1182 else false else ( ( Bool -> Bool ) ∋ ( ( λ x15740 -> true ) ) ) $ ( true )
        d1576 : ( ( Set -> Set ) ∋ ( ( λ x15780 -> ( ( Set -> Set ) ∋ ( ( λ x15790 -> if true then x15790 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1576 = if if false then true else d1319 then ( ( Bool -> Bool ) ∋ ( ( λ x15770 -> d1551 ) ) ) $ ( d697 ) else if d1370 then d688 else false
        d1580 : ( ( Set -> Set ) ∋ ( ( λ x15830 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1580 = ( ( Bool -> Bool ) ∋ ( ( λ x15810 -> ( ( Bool -> Bool ) ∋ ( ( λ x15820 -> if true then d889 else x15820 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d1584 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1584 = if ( ( Bool -> Bool ) ∋ ( ( λ x15850 -> x15850 ) ) ) $ ( d959 ) then if d1248 then true else d947 else ( ( Bool -> Bool ) ∋ ( ( λ x15860 -> d1509 ) ) ) $ ( false )
        d1587 : ( ( Set -> Set ) ∋ ( ( λ x15890 -> ( ( Set -> Set ) ∋ ( ( λ x15900 -> if true then Bool else x15890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1587 = ( ( Bool -> Bool ) ∋ ( ( λ x15880 -> if d181 then d532 else d173 ) ) ) $ ( if d1042 then d1009 else true )
        d1591 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1591 = ( ( Bool -> Bool ) ∋ ( ( λ x15920 -> ( ( Bool -> Bool ) ∋ ( ( λ x15930 -> if true then x15920 else d1157 ) ) ) $ ( d1437 ) ) ) ) $ ( if true then true else true )
        d1594 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x15960 -> Bool ) ) ) $ ( Bool )
        d1594 = ( ( Bool -> Bool ) ∋ ( ( λ x15950 -> if true then x15950 else d1173 ) ) ) $ ( if d74 then false else d672 )
        d1597 : ( ( Set -> Set ) ∋ ( ( λ x15990 -> ( ( Set -> Set ) ∋ ( ( λ x16000 -> if false then x16000 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1597 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x15980 -> x15980 ) ) ) $ ( d306 ) else if d753 then true else true
        d1601 : if false then ( ( Set -> Set ) ∋ ( ( λ x16030 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16040 -> Bool ) ) ) $ ( Bool )
        d1601 = ( ( Bool -> Bool ) ∋ ( ( λ x16020 -> if false then x16020 else x16020 ) ) ) $ ( if d955 then d1481 else false )
        d1605 : if true then ( ( Set -> Set ) ∋ ( ( λ x16060 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16070 -> Bool ) ) ) $ ( Bool )
        d1605 = if if d719 then true else false then if d1545 then false else true else if false then d1178 else false
        d1608 : ( ( Set -> Set ) ∋ ( ( λ x16100 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1608 = ( ( Bool -> Bool ) ∋ ( ( λ x16090 -> if x16090 then true else d711 ) ) ) $ ( if false then d376 else true )
        d1611 : if false then ( ( Set -> Set ) ∋ ( ( λ x16140 -> x16140 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16150 -> Bool ) ) ) $ ( Bool )
        d1611 = if ( ( Bool -> Bool ) ∋ ( ( λ x16120 -> x16120 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16130 -> false ) ) ) $ ( d257 ) else if d942 then true else false
        d1616 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1616 = ( ( Bool -> Bool ) ∋ ( ( λ x16170 -> if true then x16170 else d1512 ) ) ) $ ( if false then d494 else true )
        d1618 : if false then ( ( Set -> Set ) ∋ ( ( λ x16220 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1618 = if ( ( Bool -> Bool ) ∋ ( ( λ x16190 -> x16190 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x16200 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x16210 -> false ) ) ) $ ( true )
        d1623 : ( ( Set -> Set ) ∋ ( ( λ x16260 -> if false then x16260 else x16260 ) ) ) $ ( if false then Bool else Bool )
        d1623 = ( ( Bool -> Bool ) ∋ ( ( λ x16240 -> ( ( Bool -> Bool ) ∋ ( ( λ x16250 -> if false then true else false ) ) ) $ ( false ) ) ) ) $ ( if d1260 then true else d1462 )
        d1627 : ( ( Set -> Set ) ∋ ( ( λ x16300 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1627 = if ( ( Bool -> Bool ) ∋ ( ( λ x16280 -> x16280 ) ) ) $ ( true ) then if d40 then d1121 else true else ( ( Bool -> Bool ) ∋ ( ( λ x16290 -> d372 ) ) ) $ ( true )
        d1631 : ( ( Set -> Set ) ∋ ( ( λ x16340 -> if true then x16340 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1631 = ( ( Bool -> Bool ) ∋ ( ( λ x16320 -> ( ( Bool -> Bool ) ∋ ( ( λ x16330 -> if d135 then x16330 else true ) ) ) $ ( d532 ) ) ) ) $ ( if d279 then false else d1416 )
        d1635 : ( ( Set -> Set ) ∋ ( ( λ x16370 -> if false then x16370 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1635 = if if false then d1616 else d1109 then if false then d669 else false else ( ( Bool -> Bool ) ∋ ( ( λ x16360 -> d1067 ) ) ) $ ( true )
        d1638 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1638 = if ( ( Bool -> Bool ) ∋ ( ( λ x16390 -> true ) ) ) $ ( d1282 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16400 -> x16400 ) ) ) $ ( true ) else if d1416 then false else d357
        d1641 : ( ( Set -> Set ) ∋ ( ( λ x16440 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1641 = if ( ( Bool -> Bool ) ∋ ( ( λ x16420 -> false ) ) ) $ ( d1451 ) then ( ( Bool -> Bool ) ∋ ( ( λ x16430 -> x16430 ) ) ) $ ( d162 ) else if true then false else d430
        d1645 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16470 -> x16470 ) ) ) $ ( Bool )
        d1645 = ( ( Bool -> Bool ) ∋ ( ( λ x16460 -> if true then x16460 else d197 ) ) ) $ ( if d1601 then true else d1221 )
        d1648 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16490 -> x16490 ) ) ) $ ( Bool )
        d1648 = if if d1114 then d1150 else d1473 then if d120 then true else false else if false then false else d917
        d1650 : if false then ( ( Set -> Set ) ∋ ( ( λ x16530 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x16540 -> Bool ) ) ) $ ( Bool )
        d1650 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x16510 -> false ) ) ) $ ( d323 ) else ( ( Bool -> Bool ) ∋ ( ( λ x16520 -> false ) ) ) $ ( d342 )
        d1655 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x16580 -> x16580 ) ) ) $ ( Bool )
        d1655 = if ( ( Bool -> Bool ) ∋ ( ( λ x16560 -> x16560 ) ) ) $ ( false ) then if d1131 then false else d1650 else ( ( Bool -> Bool ) ∋ ( ( λ x16570 -> x16570 ) ) ) $ ( d237 )
        d1659 : ( ( Set -> Set ) ∋ ( ( λ x16610 -> if false then x16610 else x16610 ) ) ) $ ( if false then Bool else Bool )
        d1659 = ( ( Bool -> Bool ) ∋ ( ( λ x16600 -> if false then false else false ) ) ) $ ( if false then d667 else d904 )
        d1662 : ( ( Set -> Set ) ∋ ( ( λ x16630 -> ( ( Set -> Set ) ∋ ( ( λ x16640 -> if false then x16630 else Bool ) ) ) $ ( x16630 ) ) ) ) $ ( if true then Bool else Bool )
        d1662 = if if d306 then false else d1473 then if d1109 then d947 else d1400 else if true then d1097 else false
        d1665 : ( ( Set -> Set ) ∋ ( ( λ x16670 -> ( ( Set -> Set ) ∋ ( ( λ x16680 -> if false then Bool else Bool ) ) ) $ ( x16670 ) ) ) ) $ ( if true then Bool else Bool )
        d1665 = ( ( Bool -> Bool ) ∋ ( ( λ x16660 -> if false then false else true ) ) ) $ ( if true then d233 else true )
        d1669 : ( ( Set -> Set ) ∋ ( ( λ x16720 -> ( ( Set -> Set ) ∋ ( ( λ x16730 -> if true then x16730 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1669 = ( ( Bool -> Bool ) ∋ ( ( λ x16700 -> ( ( Bool -> Bool ) ∋ ( ( λ x16710 -> if false then x16700 else d1532 ) ) ) $ ( d1392 ) ) ) ) $ ( if d287 then d85 else true )