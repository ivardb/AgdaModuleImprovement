module TypeSize50Test8  where
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

    module M ( p10 : if true then Bool else Bool )  where
        module M1 ( p20 : if false then Bool else Bool )  where
            d3 : if false then ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d3 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> p10 ) ) ) $ ( p20 ) ) ) ) $ ( if p10 then p20 else true )
            d7 : if false then ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else Bool ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if x80 then d3 else false ) ) ) $ ( if d3 then false else true )
            d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if false then if false then Bool else x120 else ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then Bool else x130 ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if p10 then d3 else true ) ) ) $ ( if d3 then p20 else true )
            d16 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then if true then Bool else x190 else ( ( Set -> Set ) ∋ ( ( λ x200 -> if true then x190 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> false ) ) ) $ ( x170 ) ) ) ) $ ( if d3 then d10 else true )
            d21 : if false then ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then Bool else x230 ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if p10 then true else x220 ) ) ) $ ( if d7 then false else d7 )
            d24 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then if true then Bool else x270 else if true then x270 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x280 -> if true then x280 else x280 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x290 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> x290 ) ) ) $ ( x290 ) ) ) ) $ ( if false then Bool else Bool ) )
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if d3 then false else d3 ) ) ) $ ( if false then d16 else p20 )
            d31 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then if false then Bool else x340 else ( ( Set -> Set ) ∋ ( ( λ x350 -> if true then Bool else x350 ) ) ) $ ( x340 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then x360 else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x320 ) ) ) $ ( x320 ) ) ) ) $ ( if p10 then p20 else d21 )
            d37 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> if true then if false then x400 else Bool else if true then Bool else x410 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then Bool else Bool ) ) ) $ ( x400 ) ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d3 ) ) ) $ ( x380 ) ) ) ) $ ( if p10 then true else d10 )
            d43 : ( ( Set -> Set ) ∋ ( ( λ x450 -> ( ( Set -> Set ) ∋ ( ( λ x460 -> if false then if false then Bool else x460 else if false then Bool else x460 ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if true then true else true ) ) ) $ ( if d21 then p10 else true )
            d47 : ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then Bool else Bool ) ) ) $ ( x500 ) else ( ( Set -> Set ) ∋ ( ( λ x520 -> if false then Bool else x520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
            d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d31 ) ) ) $ ( p10 ) ) ) ) $ ( if p20 then p20 else d10 )
            d53 : if true then ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
            d53 = if if d31 then d43 else d47 then if d16 then p20 else d7 else if p20 then p10 else true
            d56 : if true then ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then x590 else x590 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( x600 ) ) ) ) $ ( if false then Bool else Bool )
            d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x580 -> p10 ) ) ) $ ( d47 ) ) ) ) $ ( if false then d43 else true )
            d62 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then if true then Bool else x660 else if true then x660 else x650 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x670 -> if true then Bool else x670 ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> false ) ) ) $ ( d37 ) ) ) ) $ ( if p10 then true else true )
            d68 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then x690 else x690 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then Bool else Bool ) ) ) $ ( x690 ) ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d68 = if if true then false else true then if p20 then d10 else d24 else if true then d3 else false
            d74 : if false then ( ( Set -> Set ) ∋ ( ( λ x760 -> if true then Bool else x760 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then Bool else x770 ) ) ) $ ( if false then Bool else Bool )
            d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if false then d53 else p10 ) ) ) $ ( if true then p10 else p10 )
            d78 : ( ( Set -> Set ) ∋ ( ( λ x810 -> if true then ( ( Set -> Set ) ∋ ( ( λ x820 -> if true then Bool else x810 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x830 -> if false then x830 else x830 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
            d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> d37 ) ) ) $ ( true ) ) ) ) $ ( if p10 then p20 else p10 )
            d84 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if false then ( ( Set -> Set ) ∋ ( ( λ x860 -> if true then x860 else Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x870 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d84 = if if d3 then d31 else d10 then if p20 then true else false else if true then true else true
            d88 : ( ( Set -> Set ) ∋ ( ( λ x900 -> if false then ( ( Set -> Set ) ∋ ( ( λ x910 -> if true then Bool else x900 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x920 -> if false then x900 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x930 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if d37 then p20 else true ) ) ) $ ( if p20 then d7 else true )
            d94 : ( ( Set -> Set ) ∋ ( ( λ x970 -> ( ( Set -> Set ) ∋ ( ( λ x980 -> if true then if true then Bool else Bool else if false then Bool else x970 ) ) ) $ ( if true then x970 else x970 ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> true ) ) ) $ ( false ) ) ) ) $ ( if d43 then p20 else p20 )
            d99 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> if false then if true then x1020 else x1010 else if true then x1020 else x1020 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1030 -> if true then Bool else x1030 ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
            d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if p20 then x1000 else x1000 ) ) ) $ ( if d7 then d78 else d68 )
            d104 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then if true then Bool else x1060 else if false then Bool else Bool ) ) ) $ ( if false then Bool else x1050 ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d104 = if if p10 then true else false then if p10 then d74 else d94 else if p20 then false else d10
            d107 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1090 -> if false then x1090 else x1080 ) ) ) $ ( x1080 ) else if true then x1080 else x1080 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1100 -> ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d107 = if if p20 then p20 else d10 then if false then p10 else p20 else if false then d37 else p10
            d112 : if true then ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> Bool ) ) ) $ ( x1130 ) ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d112 = if if p20 then false else false then if d43 then false else true else if p10 then p20 else d104
            d115 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> if true then Bool else x1180 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else x1190 ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1220 -> if false then x1220 else x1220 ) ) ) $ ( if false then Bool else Bool ) )
            d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> p20 ) ) ) $ ( p10 ) ) ) ) $ ( if d24 then p10 else p20 )
            d123 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> ( ( Set -> Set ) ∋ ( ( λ x1280 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else x1270 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1290 -> if true then Bool else x1290 ) ) ) $ ( x1260 ) ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> p10 ) ) ) $ ( p10 ) ) ) ) $ ( if d24 then false else d47 )
            d130 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1310 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d130 = if if d31 then d43 else d104 then if p10 then d123 else p20 else if false then false else false
            d132 : if true then ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> Bool ) ) ) $ ( x1330 ) ) ) ) $ ( if false then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
            d132 = if if true then false else p20 then if false then p10 else p10 else if true then p20 else d88
            d135 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
            d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> x1370 ) ) ) $ ( x1360 ) ) ) ) $ ( if p20 then d56 else p20 )
            d138 : ( ( Set -> Set ) ∋ ( ( λ x1390 -> ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then if false then Bool else Bool else if false then x1400 else Bool ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
            d138 = if if p10 then d47 else p20 then if d43 then d115 else p20 else if false then p10 else true
            d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then if false then Bool else x1430 else if false then x1440 else Bool ) ) ) $ ( if false then x1430 else Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if d3 then d24 else d107 ) ) ) $ ( if false then p10 else false )
            d145 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1470 -> if false then Bool else x1470 ) ) ) $ ( if false then Bool else Bool )
            d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> if d74 then d74 else true ) ) ) $ ( if true then d21 else d16 )
            d148 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> ( ( Set -> Set ) ∋ ( ( λ x1500 -> if true then if true then x1500 else x1490 else if false then Bool else x1500 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1510 -> if false then Bool else x1490 ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d148 = if if false then d68 else false then if p20 then true else d16 else if d68 then d37 else d141
            d152 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1550 -> if true then Bool else x1550 ) ) ) $ ( if false then Bool else Bool ) )
            d152 = if if p10 then p20 else d31 then if p10 then p10 else d104 else if true then true else d141
            d156 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1580 -> if true then Bool else x1570 ) ) ) $ ( x1570 ) else if false then Bool else Bool ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d156 = if if true then true else p20 then if p10 then false else d84 else if p10 then p10 else d16
            d159 : ( ( Set -> Set ) ∋ ( ( λ x1600 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1610 -> if false then x1610 else x1610 ) ) ) $ ( x1600 ) else if false then Bool else Bool ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d159 = if if d10 then true else d156 then if p10 then d135 else p20 else if true then p10 else true
            d162 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then Bool else x1630 ) ) ) $ ( if false then Bool else Bool )
            d162 = if if p10 then p20 else p20 then if false then true else true else if d53 then true else false
            d164 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then Bool else x1660 ) ) ) $ ( if true then x1660 else Bool ) ) ) ) $ ( if true then x1650 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1680 -> ( ( Set -> Set ) ∋ ( ( λ x1690 -> x1680 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d164 = if if true then false else d130 then if p20 then d141 else false else if p10 then d78 else p10
            d170 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> ( ( Set -> Set ) ∋ ( ( λ x1750 -> if false then x1720 else Bool ) ) ) $ ( x1740 ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1760 -> if false then x1720 else Bool ) ) ) $ ( x1720 ) ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if d112 then true else d164 ) ) ) $ ( if d16 then true else true )
            d177 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1790 -> if true then Bool else Bool ) ) ) $ ( Bool ) else if true then Bool else x1780 ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d177 = if if p10 then p20 else p20 then if d94 then p10 else true else if d148 then true else d68
            d180 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d180 = if if p20 then d94 else false then if p20 then p20 else d24 else if d152 then d84 else p20
        module M1'  = M1 ( p10 ) 
    d181 : if true then ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> x1840 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then x1850 else x1850 ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( M.M1.d56 ) $ ( ( ( M.M1.d162 ) $ ( false ) ) $ ( true ) ) ) $ ( ( M.M1'.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> x1820 ) ) ) $ ( false ) ) )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> ( ( Set -> Set ) ∋ ( ( λ x1900 -> if false then if false then Bool else Bool else if true then x1900 else Bool ) ) ) $ ( if true then Bool else x1890 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then Bool else x1910 ) ) ) $ ( if true then Bool else Bool ) )
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> false ) ) ) $ ( d181 ) ) ) ) $ ( if true then true else false )
    d192 : if true then ( ( Set -> Set ) ∋ ( ( λ x1940 -> ( ( Set -> Set ) ∋ ( ( λ x1950 -> Bool ) ) ) $ ( x1940 ) ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
    d192 = ( M.M1'.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> ( M.M1'.d62 ) $ ( if d181 then true else d186 ) ) ) ) $ ( if false then d181 else false ) )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x1980 -> if true then if false then x1980 else Bool else ( ( Set -> Set ) ∋ ( ( λ x1990 -> if false then x1980 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2000 -> if false then Bool else x2000 ) ) ) $ ( if true then Bool else Bool ) )
    d196 = ( ( M.M1.d56 ) $ ( ( ( M.M1.d164 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( d186 ) )
    d201 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2030 -> if true then x2030 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2040 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d201 = ( M.M1'.d138 ) $ ( if if false then false else d181 then if true then true else true else if d181 then false else true )
    d205 : if false then ( ( Set -> Set ) ∋ ( ( λ x2070 -> if false then x2070 else x2070 ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
    d205 = ( M.M1'.d84 ) $ ( ( ( M.M1.d99 ) $ ( ( ( M.M1.d132 ) $ ( d196 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> false ) ) ) $ ( d181 ) ) )
    d208 : if true then ( ( Set -> Set ) ∋ ( ( λ x2090 -> if true then x2090 else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d208 = ( M.M1'.d156 ) $ ( if if d201 then true else true then if false then d196 else true else if true then true else d205 )
    d210 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2120 -> ( ( Set -> Set ) ∋ ( ( λ x2130 -> x2120 ) ) ) $ ( x2120 ) ) ) ) $ ( if true then Bool else Bool )
    d210 = ( M.M1'.d141 ) $ ( ( M.M1'.d180 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> ( ( M.M1.d177 ) $ ( if d201 then true else false ) ) $ ( if x2110 then x2110 else d186 ) ) ) ) $ ( if d201 then true else d181 ) ) )
    d214 : if false then ( ( Set -> Set ) ∋ ( ( λ x2160 -> ( ( Set -> Set ) ∋ ( ( λ x2170 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
    d214 = ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> ( M.M1'.d7 ) $ ( ( M.M1'.d16 ) $ ( if false then true else x2150 ) ) ) ) ) $ ( if true then false else d186 )
    d218 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2210 -> if false then x2210 else x2200 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2220 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d218 = ( M.M1'.d180 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> ( ( M.M1.d164 ) $ ( if d201 then true else true ) ) $ ( if d208 then d201 else x2190 ) ) ) ) $ ( if true then d205 else false ) )
    d223 : if true then ( ( Set -> Set ) ∋ ( ( λ x2240 -> ( ( Set -> Set ) ∋ ( ( λ x2250 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
    d223 = ( M.M1'.d78 ) $ ( ( M.M1'.d138 ) $ ( if if true then d181 else false then if d210 then d214 else false else if d218 then false else d214 ) )
    d226 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2270 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d226 = if if false then false else d218 then if d201 then d210 else true else if d181 then true else true
    d228 : ( ( Set -> Set ) ∋ ( ( λ x2290 -> ( ( Set -> Set ) ∋ ( ( λ x2300 -> if false then if true then x2300 else x2290 else if false then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2310 -> if true then Bool else Bool ) ) ) $ ( x2290 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2320 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d228 = ( ( M.M1.d88 ) $ ( ( ( M.M1.d148 ) $ ( d181 ) ) $ ( true ) ) ) $ ( if false then d186 else false )
    d233 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d233 = ( M.M1'.d3 ) $ ( ( ( M.M1.d62 ) $ ( ( ( M.M1.d123 ) $ ( d223 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> x2340 ) ) ) $ ( false ) ) )
    d235 : ( ( Set -> Set ) ∋ ( ( λ x2380 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2390 -> if true then x2380 else Bool ) ) ) $ ( Bool ) else if true then x2380 else x2380 ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d235 = ( M.M1'.d84 ) $ ( ( M.M1'.d84 ) $ ( ( M.M1'.d135 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> ( M.M1'.d115 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> d196 ) ) ) $ ( true ) ) ) ) ) $ ( if d196 then d196 else false ) ) ) )
    d240 : ( ( Set -> Set ) ∋ ( ( λ x2420 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2430 -> if true then x2430 else x2420 ) ) ) $ ( x2420 ) else ( ( Set -> Set ) ∋ ( ( λ x2440 -> if true then x2440 else x2440 ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2450 -> if true then x2450 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d240 = ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> if x2410 then true else d233 ) ) ) $ ( if d223 then false else d226 )
    d246 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then if false then x2490 else Bool else if true then x2480 else Bool ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d246 = ( ( M.M1.d84 ) $ ( ( M.M1'.d68 ) $ ( ( M.M1'.d138 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> true ) ) ) $ ( true ) ) ) ) ) $ ( if false then true else d218 )
    d250 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then if false then x2530 else Bool else if false then x2530 else x2530 ) ) ) $ ( if true then Bool else x2530 ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d233 )
    d255 : if false then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( M.M1'.d88 ) $ ( ( M.M1'.d162 ) $ ( ( M.M1'.d177 ) $ ( if d246 then x2560 else x2560 ) ) ) ) ) ) $ ( if true then false else false )
    d257 : if false then ( ( Set -> Set ) ∋ ( ( λ x2590 -> ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( x2590 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2610 -> ( ( Set -> Set ) ∋ ( ( λ x2620 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d257 = ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> ( M.M1'.d7 ) $ ( if d255 then x2580 else x2580 ) ) ) ) $ ( if d240 then d240 else d250 )
    d263 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2650 -> if true then x2650 else x2650 ) ) ) $ ( if true then Bool else Bool )
    d263 = ( M.M1'.d112 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> ( M.M1'.d135 ) $ ( if d192 then x2640 else x2640 ) ) ) ) $ ( if d240 then false else true ) )
    d266 : ( ( Set -> Set ) ∋ ( ( λ x2670 -> ( ( Set -> Set ) ∋ ( ( λ x2680 -> ( ( Set -> Set ) ∋ ( ( λ x2690 -> if false then x2690 else x2670 ) ) ) $ ( if false then x2680 else x2670 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2700 -> if true then x2670 else x2670 ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d266 = ( ( M.M1.d43 ) $ ( if d214 then d228 else d250 ) ) $ ( ( M.M1'.d141 ) $ ( if d192 then true else true ) )
    d271 : if true then ( ( Set -> Set ) ∋ ( ( λ x2740 -> ( ( Set -> Set ) ∋ ( ( λ x2750 -> x2740 ) ) ) $ ( x2740 ) ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
    d271 = ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> ( M.M1'.d141 ) $ ( ( M.M1'.d159 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> d233 ) ) ) $ ( false ) ) ) ) ) ) $ ( if true then d263 else true )
    d276 : ( ( Set -> Set ) ∋ ( ( λ x2780 -> ( ( Set -> Set ) ∋ ( ( λ x2790 -> if false then if true then x2780 else x2790 else if false then x2790 else x2780 ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2800 -> ( ( Set -> Set ) ∋ ( ( λ x2810 -> x2810 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d276 = ( M.M1'.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> ( M.M1'.d180 ) $ ( if x2770 then true else x2770 ) ) ) ) $ ( if d240 then d192 else false ) )
    d282 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> if false then if false then Bool else x2840 else if true then x2840 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then Bool else x2850 ) ) ) $ ( if true then Bool else Bool ) )
    d282 = ( M.M1'.d31 ) $ ( ( M.M1'.d180 ) $ ( ( M.M1'.d159 ) $ ( ( M.M1'.d164 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> if x2830 then d250 else x2830 ) ) ) $ ( if d210 then false else true ) ) ) ) )
    d286 : ( ( Set -> Set ) ∋ ( ( λ x2890 -> if true then if true then x2890 else Bool else ( ( Set -> Set ) ∋ ( ( λ x2900 -> if true then x2890 else x2900 ) ) ) $ ( x2890 ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d286 = ( ( M.M1.d74 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> x2870 ) ) ) $ ( d201 ) ) ) $ ( ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> x2880 ) ) ) $ ( false ) ) )
    d291 : ( ( Set -> Set ) ∋ ( ( λ x2930 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2940 -> if false then Bool else x2930 ) ) ) $ ( Bool ) else if true then Bool else Bool ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d291 = ( ( M.M1.d180 ) $ ( ( M.M1'.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2920 -> x2920 ) ) ) $ ( d228 ) ) ) ) $ ( if d276 then false else false )
    d295 : ( ( Set -> Set ) ∋ ( ( λ x2980 -> ( ( Set -> Set ) ∋ ( ( λ x2990 -> if true then if false then x2990 else x2990 else if false then x2990 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3000 -> if false then x3000 else x2980 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3010 -> ( ( Set -> Set ) ∋ ( ( λ x3020 -> x3020 ) ) ) $ ( x3010 ) ) ) ) $ ( if true then Bool else Bool ) )
    d295 = ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> ( ( Bool -> Bool ) ∋ ( ( λ x2970 -> x2970 ) ) ) $ ( d201 ) ) ) ) $ ( if false then d218 else true )
    d303 : ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> ( ( Set -> Set ) ∋ ( ( λ x3060 -> ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then Bool else Bool ) ) ) $ ( x3040 ) ) ) ) $ ( if false then x3050 else Bool ) ) ) ) $ ( if true then x3040 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3080 -> if true then x3080 else x3080 ) ) ) $ ( if false then Bool else Bool ) )
    d303 = ( M.M1'.d138 ) $ ( ( M.M1'.d68 ) $ ( if if d295 then d208 else false then if false then d218 else d210 else if false then d286 else false ) )
    d309 : if false then ( ( Set -> Set ) ∋ ( ( λ x3110 -> if true then x3110 else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3120 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d309 = ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> ( ( M.M1.d112 ) $ ( if false then d295 else true ) ) $ ( if x3100 then x3100 else false ) ) ) ) $ ( if false then d276 else d235 )
    d313 : ( ( Set -> Set ) ∋ ( ( λ x3150 -> ( ( Set -> Set ) ∋ ( ( λ x3160 -> ( ( Set -> Set ) ∋ ( ( λ x3170 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else x3160 ) ) ) ) $ ( if false then Bool else x3150 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3180 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d313 = ( ( M.M1.d164 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> false ) ) ) $ ( d226 ) ) ) $ ( ( M.M1'.d132 ) $ ( ( ( M.M1.d47 ) $ ( d246 ) ) $ ( d282 ) ) )
    d319 : if true then ( ( Set -> Set ) ∋ ( ( λ x3200 -> ( ( Set -> Set ) ∋ ( ( λ x3210 -> Bool ) ) ) $ ( x3200 ) ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d319 = ( ( M.M1.d123 ) $ ( ( M.M1'.d132 ) $ ( if d286 then true else false ) ) ) $ ( ( ( M.M1.d115 ) $ ( true ) ) $ ( false ) )
    d322 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> ( ( Set -> Set ) ∋ ( ( λ x3250 -> if false then if false then Bool else x3240 else if true then x3250 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3260 -> if false then x3260 else x3240 ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d322 = ( ( M.M1.d37 ) $ ( if false then true else d319 ) ) $ ( ( M.M1'.d56 ) $ ( ( M.M1'.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3230 -> true ) ) ) $ ( true ) ) ) )
    d327 : ( ( Set -> Set ) ∋ ( ( λ x3290 -> ( ( Set -> Set ) ∋ ( ( λ x3300 -> ( ( Set -> Set ) ∋ ( ( λ x3310 -> ( ( Set -> Set ) ∋ ( ( λ x3320 -> if true then x3320 else x3290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then x3290 else x3290 ) ) ) ) $ ( if true then x3290 else x3290 ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d327 = ( M.M1'.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3280 -> ( M.M1'.d24 ) $ ( if x3280 then d255 else d223 ) ) ) ) $ ( if d233 then d295 else d313 ) )
    d333 : if false then ( ( Set -> Set ) ∋ ( ( λ x3340 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3350 -> ( ( Set -> Set ) ∋ ( ( λ x3360 -> x3350 ) ) ) $ ( x3350 ) ) ) ) $ ( if true then Bool else Bool )
    d333 = ( M.M1'.d31 ) $ ( ( ( M.M1.d180 ) $ ( ( ( M.M1.d74 ) $ ( false ) ) $ ( d235 ) ) ) $ ( if d205 then d196 else true ) )
    d337 : if false then ( ( Set -> Set ) ∋ ( ( λ x3390 -> if true then x3390 else x3390 ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
    d337 = ( M.M1'.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> ( ( M.M1.d180 ) $ ( if d257 then true else d271 ) ) $ ( if true then true else x3380 ) ) ) ) $ ( if false then false else true ) )
    d340 : if true then ( ( Set -> Set ) ∋ ( ( λ x3420 -> ( ( Set -> Set ) ∋ ( ( λ x3430 -> x3430 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
    d340 = ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> if true then d208 else x3410 ) ) ) $ ( if d327 then d322 else d266 )
    d344 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3450 -> ( ( Set -> Set ) ∋ ( ( λ x3460 -> x3450 ) ) ) $ ( x3450 ) ) ) ) $ ( if false then Bool else Bool )
    d344 = ( ( M.M1.d47 ) $ ( ( ( M.M1.d104 ) $ ( d303 ) ) $ ( d333 ) ) ) $ ( ( M.M1'.d3 ) $ ( ( M.M1'.d37 ) $ ( if false then d181 else false ) ) )
    d347 : ( ( Set -> Set ) ∋ ( ( λ x3490 -> ( ( Set -> Set ) ∋ ( ( λ x3500 -> if false then if true then x3500 else Bool else if true then x3490 else x3500 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3510 -> if false then Bool else Bool ) ) ) $ ( x3490 ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d347 = ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> ( M.M1'.d62 ) $ ( ( ( M.M1.d170 ) $ ( if d181 then x3480 else x3480 ) ) $ ( if true then false else d313 ) ) ) ) ) $ ( if false then d208 else true )
    d352 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3540 -> ( ( Set -> Set ) ∋ ( ( λ x3550 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d352 = ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> ( M.M1'.d135 ) $ ( ( M.M1'.d164 ) $ ( ( M.M1'.d112 ) $ ( if x3530 then d327 else x3530 ) ) ) ) ) ) $ ( if d226 then true else true )
    d356 : ( ( Set -> Set ) ∋ ( ( λ x3570 -> if false then if true then Bool else x3570 else if false then Bool else x3570 ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d356 = ( ( M.M1.d24 ) $ ( ( ( M.M1.d132 ) $ ( true ) ) $ ( d276 ) ) ) $ ( ( M.M1'.d74 ) $ ( ( ( M.M1.d145 ) $ ( d257 ) ) $ ( d271 ) ) )
    d358 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3610 -> if true then Bool else x3610 ) ) ) $ ( x3600 ) else ( ( Set -> Set ) ∋ ( ( λ x3620 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d358 = ( M.M1'.d141 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if x3590 then d327 else false ) ) ) $ ( if d208 then d333 else d210 ) )
    d363 : ( ( Set -> Set ) ∋ ( ( λ x3640 -> ( ( Set -> Set ) ∋ ( ( λ x3650 -> ( ( Set -> Set ) ∋ ( ( λ x3660 -> ( ( Set -> Set ) ∋ ( ( λ x3670 -> if false then Bool else Bool ) ) ) $ ( x3650 ) ) ) ) $ ( if true then x3650 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3680 -> if false then Bool else x3640 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3690 -> ( ( Set -> Set ) ∋ ( ( λ x3700 -> x3700 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d363 = ( ( M.M1.d62 ) $ ( ( M.M1'.d94 ) $ ( ( M.M1'.d31 ) $ ( ( ( M.M1.d84 ) $ ( true ) ) $ ( true ) ) ) ) ) $ ( ( ( M.M1.d21 ) $ ( true ) ) $ ( false ) )
    d371 : ( ( Set -> Set ) ∋ ( ( λ x3720 -> ( ( Set -> Set ) ∋ ( ( λ x3730 -> if false then if false then Bool else Bool else if true then x3730 else x3720 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3740 -> if false then x3720 else Bool ) ) ) $ ( x3720 ) ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d371 = ( M.M1'.d43 ) $ ( ( M.M1'.d156 ) $ ( ( ( M.M1.d47 ) $ ( if true then d266 else d205 ) ) $ ( ( ( M.M1.d107 ) $ ( d271 ) ) $ ( false ) ) ) )
    d375 : ( ( Set -> Set ) ∋ ( ( λ x3760 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3770 -> if true then Bool else Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3780 -> if false then x3760 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d375 = if if true then false else d295 then if true then d196 else d352 else if d218 then d295 else true
    d379 : ( ( Set -> Set ) ∋ ( ( λ x3800 -> ( ( Set -> Set ) ∋ ( ( λ x3810 -> ( ( Set -> Set ) ∋ ( ( λ x3820 -> if true then Bool else x3800 ) ) ) $ ( if false then x3810 else x3800 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3830 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3840 -> ( ( Set -> Set ) ∋ ( ( λ x3850 -> x3850 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d379 = ( M.M1'.d68 ) $ ( if if d282 then false else false then if d313 then d375 else d309 else if true then d363 else true )
    d386 : ( ( Set -> Set ) ∋ ( ( λ x3870 -> ( ( Set -> Set ) ∋ ( ( λ x3880 -> ( ( Set -> Set ) ∋ ( ( λ x3890 -> ( ( Set -> Set ) ∋ ( ( λ x3900 -> if false then Bool else x3880 ) ) ) $ ( x3870 ) ) ) ) $ ( if true then x3870 else x3870 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3910 -> if false then x3870 else Bool ) ) ) $ ( x3870 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3920 -> if true then x3920 else x3920 ) ) ) $ ( if true then Bool else Bool ) )
    d386 = ( ( M.M1.d138 ) $ ( ( M.M1'.d68 ) $ ( if d205 then d228 else d282 ) ) ) $ ( if d347 then d250 else d186 )
    d393 : if true then ( ( Set -> Set ) ∋ ( ( λ x3950 -> ( ( Set -> Set ) ∋ ( ( λ x3960 -> Bool ) ) ) $ ( x3950 ) ) ) ) $ ( if false then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
    d393 = ( ( M.M1.d21 ) $ ( if d340 then d352 else d337 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3940 -> d375 ) ) ) $ ( true ) )
    d397 : if true then ( ( Set -> Set ) ∋ ( ( λ x4000 -> if false then Bool else x4000 ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d397 = ( ( M.M1.d56 ) $ ( ( M.M1'.d130 ) $ ( ( M.M1'.d3 ) $ ( ( M.M1'.d177 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3980 -> x3980 ) ) ) $ ( d313 ) ) ) ) ) ) $ ( ( M.M1'.d159 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3990 -> x3990 ) ) ) $ ( d309 ) ) )
    d401 : ( ( Set -> Set ) ∋ ( ( λ x4030 -> ( ( Set -> Set ) ∋ ( ( λ x4040 -> if false then if true then Bool else Bool else if false then Bool else Bool ) ) ) $ ( if false then x4030 else x4030 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x4050 -> ( ( Set -> Set ) ∋ ( ( λ x4060 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d401 = ( M.M1'.d177 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x4020 -> ( ( M.M1.d16 ) $ ( if d375 then d319 else x4020 ) ) $ ( if x4020 then d322 else true ) ) ) ) $ ( if d340 then d309 else true ) )