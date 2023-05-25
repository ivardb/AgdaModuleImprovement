module Decls50Test8  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then Bool else x50 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then true else x20 ) ) ) $ ( x20 ) ) ) ) $ ( if false then false else false )
        d6 : if true then ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d6 = if if d1 then d1 else true then ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d1 ) ) ) $ ( d1 ) else if true then false else false
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = if ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d1 ) ) ) $ ( false ) then if true then d1 else d6 else if d6 then false else d1
        d11 : if true then if false then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d9 then true else x130 ) ) ) $ ( true ) ) ) ) $ ( if d9 then d1 else d1 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then x180 else x170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if ( ( Bool -> Bool ) ∋ ( ( λ x150 -> false ) ) ) $ ( true ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( d11 )
        d19 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if d6 then x200 else false ) ) ) $ ( if true then true else true )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x240 -> if false then Bool else x240 ) ) ) $ ( if true then Bool else Bool )
        d22 = if if d14 then true else d9 then if true then true else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x230 -> d14 ) ) ) $ ( false )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> if false then Bool else x270 ) ) ) $ ( x270 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if x260 then x260 else false ) ) ) $ ( if d11 then d11 else d9 )
        d29 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( Bool )
        d29 = if if d22 then true else d11 then if false then false else true else if true then d22 else d9
        d31 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then Bool else x330 ) ) ) $ ( if true then Bool else Bool )
        d31 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d1 ) ) ) $ ( d19 ) else if true then d6 else d9
        d34 : ( ( Set -> Set ) ∋ ( ( λ x360 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> if true then Bool else x370 ) ) ) $ ( x360 ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if false then false else d11 then ( ( Bool -> Bool ) ∋ ( ( λ x350 -> true ) ) ) $ ( d25 ) else if d25 then false else d19
        d38 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then x410 else x420 ) ) ) $ ( x410 ) ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x400 then x390 else false ) ) ) $ ( d1 ) ) ) ) $ ( if true then d14 else d6 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x440 -> ( ( Set -> Set ) ∋ ( ( λ x450 -> if false then x450 else x450 ) ) ) $ ( x440 ) ) ) ) $ ( if false then Bool else Bool )
        d43 = if if false then d25 else false then if true then d11 else d31 else if false then false else false
        d46 : ( ( Set -> Set ) ∋ ( ( λ x480 -> ( ( Set -> Set ) ∋ ( ( λ x490 -> if true then Bool else Bool ) ) ) $ ( x480 ) ) ) ) $ ( if false then Bool else Bool )
        d46 = if ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d1 ) ) ) $ ( false ) then if true then false else d38 else if true then false else d22
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then Bool else x530 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if x510 then true else false ) ) ) $ ( if d22 then false else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> if false then x580 else x570 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if false then x560 else d46 ) ) ) $ ( d1 ) ) ) ) $ ( if false then true else false )
        d59 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x630 -> Bool ) ) ) $ ( Bool )
        d59 = if ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x620 -> d34 ) ) ) $ ( d29 )
        d64 : if false then ( ( Set -> Set ) ∋ ( ( λ x660 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d64 = if if false then true else true then if true then d9 else d19 else ( ( Bool -> Bool ) ∋ ( ( λ x650 -> d6 ) ) ) $ ( d59 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then x700 else x700 ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if false then true else d29 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d64 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x730 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then x730 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d71 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x720 -> x720 ) ) ) $ ( d25 ) else if d1 then false else d22
        d75 : if false then ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d75 = if ( ( Bool -> Bool ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( false ) then if d71 then d38 else false else if true then d14 else false
        d78 : if true then ( ( Set -> Set ) ∋ ( ( λ x820 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( Bool )
        d78 = if ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x800 -> d31 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( true )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x860 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> if false then Bool else x860 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if d14 then x850 else d78 ) ) ) $ ( if d14 then d1 else d1 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then Bool else x910 ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if x890 then d64 else false ) ) ) $ ( d34 ) ) ) ) $ ( if d34 then true else false )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x950 -> ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then x950 else x950 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> x930 ) ) ) $ ( d71 ) then ( ( Bool -> Bool ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( false ) else if d46 then d64 else true
        d97 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> if false then Bool else x990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d97 = if ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d59 ) ) ) $ ( false ) then if d38 then d19 else d84 else if true then d92 else true
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then Bool else x1020 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d101 = if if false then d31 else d75 then if d22 then true else false else if d88 then false else d19
        d104 : if true then ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if true then d19 else true ) ) ) $ ( false ) ) ) ) $ ( if d31 then d101 else false )
        d108 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> if false then x1120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d108 = if ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> true ) ) ) $ ( false ) else if d88 then d29 else true
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1160 -> if true then x1150 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if x1140 then d6 else true ) ) ) $ ( if d78 then false else false )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> if false then x1190 else Bool ) ) ) $ ( if false then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> if x1180 then d92 else x1180 ) ) ) $ ( if d64 then true else d54 )
        d120 : if false then ( ( Set -> Set ) ∋ ( ( λ x1220 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d120 = if if false then false else false then if true then false else d78 else ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( false )
        d123 : if true then if true then Bool else Bool else if false then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if true then x1240 else d34 ) ) ) $ ( if true then d117 else true )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if d78 then x1260 else d117 ) ) ) $ ( d101 ) ) ) ) $ ( if true then d120 else true )
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1320 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if x1310 then true else d84 ) ) ) $ ( if d54 then true else false )
        d134 : if false then ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if x1350 then d123 else x1350 ) ) ) $ ( if d75 then true else d59 )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x1390 -> ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then Bool else x1390 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if d19 then false else false ) ) ) $ ( if true then true else d78 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if d1 then false else d101 ) ) ) $ ( x1420 ) ) ) ) $ ( if d130 then false else true )
        d146 : if false then if true then Bool else Bool else if false then Bool else Bool
        d146 = if if d88 then d113 else false then if false then d92 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d43 ) ) ) $ ( d25 )
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then Bool else x1520 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if x1500 then false else d88 ) ) ) $ ( d31 ) ) ) ) $ ( if true then d9 else d43 )
        d153 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then Bool else Bool ) ) ) $ ( x1550 ) ) ) ) $ ( if true then Bool else Bool )
        d153 = if ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( true ) then if d59 then false else d71 else if true then d25 else d78
        d157 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1590 -> Bool ) ) ) $ ( Bool )
        d157 = if ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> d6 ) ) ) $ ( false ) then if d113 then false else d46 else if true then false else d141
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then Bool else x1610 ) ) ) $ ( if false then Bool else Bool )
        d160 = if if d84 then false else d46 then if false then d130 else d1 else if d50 then true else true
        d162 : if true then ( ( Set -> Set ) ∋ ( ( λ x1650 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1660 -> x1660 ) ) ) $ ( Bool )
        d162 = if if true then d50 else d46 then ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> d75 ) ) ) $ ( d38 )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> ( ( Set -> Set ) ∋ ( ( λ x1700 -> if true then x1690 else x1690 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if x1680 then d134 else d123 ) ) ) $ ( if d113 then d146 else d50 )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then x1740 else x1740 ) ) ) $ ( if true then Bool else Bool )
        d171 = if ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> d11 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( false ) else if false then false else false
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then Bool else x1800 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> d59 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d167 ) ) ) $ ( d104 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> true ) ) ) $ ( true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d181 = if ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> true ) ) ) $ ( true ) then if true then d38 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( d130 )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> if false then x1880 else Bool ) ) ) $ ( if true then Bool else Bool )
        d186 = if if false then d146 else false then if d34 then d59 else d46 else ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( d78 )
        d189 : if true then if true then Bool else Bool else if false then Bool else Bool
        d189 = if if d113 then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> false ) ) ) $ ( false ) else if false then d134 else false