module Decls50Test3  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1 = if if false then false else false then if false then false else false else if false then true else true
        d3 : if true then if false then Bool else Bool else if true then Bool else Bool
        d3 = if if d1 then d1 else true then if false then d1 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else x80 ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if true then d3 else false then ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( d3 ) else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> false ) ) ) $ ( d3 )
        d10 : if true then ( ( Set -> Set ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( Bool )
        d10 = if ( ( Bool -> Bool ) ∋ ( ( λ x110 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d5 ) ) ) $ ( true ) else if false then false else d3
        d15 : if true then ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool )
        d15 = if ( ( Bool -> Bool ) ∋ ( ( λ x160 -> d1 ) ) ) $ ( true ) then if d1 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d5 ) ) ) $ ( d1 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then Bool else Bool ) ) ) $ ( x230 ) ) ) ) $ ( if true then Bool else Bool )
        d20 = if ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d1 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d5 ) ) ) $ ( d10 ) else if false then false else d1
        d25 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if d1 then false else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> d20 ) ) ) $ ( true )
        d30 : if false then ( ( Set -> Set ) ∋ ( ( λ x310 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( Bool )
        d30 = if if true then d5 else false then if true then d20 else true else if d1 then d15 else false
        d33 : if false then ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d33 = if ( ( Bool -> Bool ) ∋ ( ( λ x340 -> x340 ) ) ) $ ( d10 ) then ( ( Bool -> Bool ) ∋ ( ( λ x350 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( true )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then x410 else x410 ) ) ) $ ( x410 ) ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x390 then x390 else false ) ) ) $ ( d10 ) ) ) ) $ ( if d1 then true else d10 )
        d43 : if false then ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if x440 then x440 else x440 ) ) ) $ ( if true then d5 else false )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then Bool else x500 ) ) ) $ ( if true then Bool else Bool )
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if true then true else x480 ) ) ) $ ( false ) ) ) ) $ ( if d20 then d15 else false )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if x530 then x520 else true ) ) ) $ ( d10 ) ) ) ) $ ( if true then false else false )
        d56 : if false then ( ( Set -> Set ) ∋ ( ( λ x580 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if d43 then false else d10 ) ) ) $ ( if d10 then false else false )
        d60 : if true then ( ( Set -> Set ) ∋ ( ( λ x610 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d60 = if if false then d38 else d15 then if d33 then false else false else if d1 then d5 else false
        d62 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> if true then x650 else x640 ) ) ) $ ( x640 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if d56 then true else d56 ) ) ) $ ( if true then d20 else d60 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x670 -> ( ( Set -> Set ) ∋ ( ( λ x680 -> if true then x670 else Bool ) ) ) $ ( x670 ) ) ) ) $ ( if false then Bool else Bool )
        d66 = if if d30 then d51 else false then if d5 then true else d25 else if false then d43 else true
        d69 : if false then if true then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if x700 then d51 else x700 ) ) ) $ ( x700 ) ) ) ) $ ( if true then true else false )
        d72 : if true then ( ( Set -> Set ) ∋ ( ( λ x740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if d5 then false else true ) ) ) $ ( if true then d51 else true )
        d76 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( Bool )
        d76 = if ( ( Bool -> Bool ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( d72 ) else ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d25 ) ) ) $ ( d56 )
        d81 : if true then ( ( Set -> Set ) ∋ ( ( λ x830 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d81 = if if d47 then false else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x820 -> true ) ) ) $ ( d69 ) else if d3 then true else d62
        d84 : if true then ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d84 = if if d60 then d3 else d56 then ( ( Bool -> Bool ) ∋ ( ( λ x850 -> false ) ) ) $ ( false ) else if d25 then false else true
        d87 : ( ( Set -> Set ) ∋ ( ( λ x910 -> ( ( Set -> Set ) ∋ ( ( λ x920 -> if true then x910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if ( ( Bool -> Bool ) ∋ ( ( λ x880 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d1 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d56 ) ) ) $ ( true )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x950 -> ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if false then d20 else true ) ) ) $ ( if d33 then false else d72 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> if true then x1010 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if d33 then true else d84 then ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d66 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( d84 )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then Bool else x1060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if d43 then x1030 else true ) ) ) $ ( false ) ) ) ) $ ( if false then d30 else d66 )
        d107 : if false then ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool )
        d107 = if if d84 then d102 else d60 then if d87 then d20 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d1 ) ) ) $ ( false )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> if false then x1130 else Bool ) ) ) $ ( if false then Bool else Bool )
        d111 = if if d3 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d33 ) ) ) $ ( false ) else if false then false else d33
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> if false then x1180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if x1150 then false else false ) ) ) $ ( true ) ) ) ) $ ( if d102 then true else d56 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> if false then x1230 else x1220 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d119 = if ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> true ) ) ) $ ( d76 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( false ) else if d60 then d72 else false
        d124 : if false then ( ( Set -> Set ) ∋ ( ( λ x1270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1280 -> Bool ) ) ) $ ( Bool )
        d124 = if ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> d81 ) ) ) $ ( d114 ) then if true then false else d15 else ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d56 ) ) ) $ ( false )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> if false then x1310 else x1310 ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if false then x1300 else d76 ) ) ) $ ( if false then d66 else true )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> if false then Bool else Bool ) ) ) $ ( x1350 ) ) ) ) $ ( if false then Bool else Bool )
        d132 = if ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( true ) else if false then d76 else true
        d137 : if false then ( ( Set -> Set ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if d30 then d107 else true ) ) ) $ ( if d10 then true else d30 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> if true then Bool else x1430 ) ) ) $ ( if false then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if x1420 then true else x1420 ) ) ) $ ( if d60 then d114 else d132 )
        d144 : if false then ( ( Set -> Set ) ∋ ( ( λ x1470 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d144 = if ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> true ) ) ) $ ( true ) then if true then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( d62 )
        d149 : if true then ( ( Set -> Set ) ∋ ( ( λ x1520 -> x1520 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1530 -> Bool ) ) ) $ ( Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if d84 then true else d20 ) ) ) $ ( d30 ) ) ) ) $ ( if d33 then d15 else d20 )
        d154 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1560 -> Bool ) ) ) $ ( Bool )
        d154 = if if d5 then d47 else d132 then ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> d38 ) ) ) $ ( d124 ) else if true then d93 else d56
        d157 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1600 -> Bool ) ) ) $ ( Bool )
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if d15 then false else d149 ) ) ) $ ( x1580 ) ) ) ) $ ( if d25 then d33 else d47 )
        d161 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( Bool )
        d161 = if if false then d129 else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> false ) ) ) $ ( d60 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( d102 )
        d165 : if false then if true then Bool else Bool else if true then Bool else Bool
        d165 = if if true then d149 else d81 then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> false ) ) ) $ ( d107 )
        d167 : if false then ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if true then x1680 else d3 ) ) ) $ ( true ) ) ) ) $ ( if true then d1 else d97 )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then x1740 else Bool ) ) ) $ ( x1730 ) ) ) ) $ ( if false then Bool else Bool )
        d171 = if if d81 then d132 else d47 then ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> true ) ) ) $ ( true ) else if true then false else true
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if false then x1790 else x1790 ) ) ) $ ( if true then Bool else Bool )
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> false ) ) ) $ ( d119 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> x1770 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> d5 ) ) ) $ ( true )
        d180 : if false then if false then Bool else Bool else if false then Bool else Bool
        d180 = if if true then d114 else d154 then if d47 then true else true else if d167 then d72 else false
        d181 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1840 -> Bool ) ) ) $ ( Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if d137 then d38 else false ) ) ) $ ( false ) ) ) ) $ ( if d5 then d84 else d62 )
        d185 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( Bool )
        d185 = if ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> d81 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> d129 ) ) ) $ ( false )
        d190 : if true then ( ( Set -> Set ) ∋ ( ( λ x1910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1920 -> x1920 ) ) ) $ ( Bool )
        d190 = if if false then true else d72 then if false then false else true else if false then d56 else d102
        d193 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1950 -> Bool ) ) ) $ ( Bool )
        d193 = if if true then false else d30 then ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( true ) else if false then true else d3
        d196 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1990 -> Bool ) ) ) $ ( Bool )
        d196 = if ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( false ) then if false then d102 else d129 else ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( true )