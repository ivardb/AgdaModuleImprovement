module Decls50Test14  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if true then false else x20 ) ) ) $ ( if false then false else true )
        d4 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Bool )
        d4 = if ( ( Bool -> Bool ) ∋ ( ( λ x50 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( d1 )
        d9 : if false then ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( Bool )
        d9 = if if true then true else d1 then if d1 then true else d4 else ( ( Bool -> Bool ) ∋ ( ( λ x100 -> d1 ) ) ) $ ( false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then Bool else x160 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if x150 then true else x140 ) ) ) $ ( d4 ) ) ) ) $ ( if false then d1 else d1 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if true then Bool else x210 ) ) ) $ ( if false then Bool else Bool )
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d9 ) ) ) $ ( false ) then if d13 then false else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( false )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then x260 else x250 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d9 then false else x240 ) ) ) $ ( d4 ) ) ) ) $ ( if d13 then true else d18 )
        d27 : if true then ( ( Set -> Set ) ∋ ( ( λ x300 -> x300 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if true then x280 else false ) ) ) $ ( d22 ) ) ) ) $ ( if d22 then false else d22 )
        d31 : if false then ( ( Set -> Set ) ∋ ( ( λ x330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if x320 then x320 else d9 ) ) ) $ ( if true then d18 else true )
        d34 : if true then ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if false then d4 else x350 ) ) ) $ ( d13 ) ) ) ) $ ( if d1 then d22 else true )
        d38 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x400 then x390 else true ) ) ) $ ( d1 ) ) ) ) $ ( if false then d31 else d1 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x440 -> if false then x440 else x440 ) ) ) $ ( if false then Bool else Bool )
        d42 = if if d22 then d38 else d18 then ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( d27 ) else if false then d34 else d1
        d45 : if true then ( ( Set -> Set ) ∋ ( ( λ x470 -> x470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d42 then d22 else d1 ) ) ) $ ( if true then d13 else true )
        d49 : if true then if false then Bool else Bool else if false then Bool else Bool
        d49 = if ( ( Bool -> Bool ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x510 -> d42 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( true )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x560 -> if true then x560 else Bool ) ) ) $ ( if true then Bool else Bool )
        d53 = if if d13 then true else d45 then ( ( Bool -> Bool ) ∋ ( ( λ x540 -> true ) ) ) $ ( d42 ) else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( d9 )
        d57 : if true then ( ( Set -> Set ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if x580 then true else x580 ) ) ) $ ( if d27 then d22 else d38 )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if true then Bool else x620 ) ) ) $ ( if true then Bool else Bool )
        d60 = if if true then d1 else d22 then if false then d42 else d45 else ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d31 ) ) ) $ ( d27 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x650 -> if true then x650 else x650 ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if x640 then d49 else d22 ) ) ) $ ( if true then false else d49 )
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = if if false then d57 else d42 then if d38 then d45 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x670 -> false ) ) ) $ ( false )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then x720 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if ( ( Bool -> Bool ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( d34 ) then if d63 then false else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( d57 )
        d73 : if false then ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x770 -> Bool ) ) ) $ ( Bool )
        d73 = if if d53 then d9 else true then ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d31 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> d38 ) ) ) $ ( d38 )
        d78 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x800 -> Bool ) ) ) $ ( Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if true then x790 else true ) ) ) $ ( if d66 then true else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if false then Bool else x850 ) ) ) $ ( x840 ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if false then d34 else x820 ) ) ) $ ( d27 ) ) ) ) $ ( if true then false else false )
        d86 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( Bool )
        d86 = if ( ( Bool -> Bool ) ∋ ( ( λ x870 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( d45 ) else if false then d45 else true
        d90 : if false then ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d90 = if if d42 then d38 else false then ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d38 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( false )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then x960 else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = if if true then true else d63 then ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d73 ) ) ) $ ( false ) else if d18 then d22 else true
        d97 : if true then ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if d78 then d78 else d18 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d9 )
        d101 : if false then if true then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if d90 then d86 else d73 ) ) ) $ ( if d1 then false else true )
        d103 : if false then ( ( Set -> Set ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if true then true else d86 ) ) ) $ ( if true then false else false )
        d107 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if x1090 then x1080 else d27 ) ) ) $ ( d31 ) ) ) ) $ ( if true then d81 else true )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> ( ( Set -> Set ) ∋ ( ( λ x1150 -> if true then x1150 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if true then true else d31 ) ) ) $ ( d42 ) ) ) ) $ ( if true then d68 else d13 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d116 = if ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> d45 ) ) ) $ ( false ) then if false then true else d94 else if d90 then d57 else true
        d119 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1220 -> Bool ) ) ) $ ( Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1200 then x1210 else d86 ) ) ) $ ( d68 ) ) ) ) $ ( if true then false else d78 )
        d123 : if true then ( ( Set -> Set ) ∋ ( ( λ x1260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( Bool )
        d123 = if if true then d49 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( d73 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> true ) ) ) $ ( false )
        d128 : if true then if true then Bool else Bool else if false then Bool else Bool
        d128 = if ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> d107 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> false ) ) ) $ ( false ) else if d97 then d27 else false
        d131 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d131 = if ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> d123 ) ) ) $ ( d42 ) then if d57 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> false ) ) ) $ ( d73 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if false then x1380 else x1380 ) ) ) $ ( x1380 ) ) ) ) $ ( if false then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if d128 then d66 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d107 else d131 )
        d140 : if true then ( ( Set -> Set ) ∋ ( ( λ x1430 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d140 = if ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> d34 ) ) ) $ ( true ) then if d116 then d94 else d18 else ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( true )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> ( ( Set -> Set ) ∋ ( ( λ x1480 -> if false then Bool else x1470 ) ) ) $ ( x1470 ) ) ) ) $ ( if true then Bool else Bool )
        d144 = if ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> d42 ) ) ) $ ( d73 ) then if true then true else d45 else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> d116 ) ) ) $ ( d81 )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then Bool else x1510 ) ) ) $ ( if false then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> true ) ) ) $ ( false ) then if true then d116 else true else if d78 then d119 else d22
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> if true then x1550 else Bool ) ) ) $ ( if true then Bool else Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> if true then x1530 else true ) ) ) $ ( d131 ) ) ) ) $ ( if d66 then true else d49 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> if false then Bool else x1600 ) ) ) $ ( x1590 ) ) ) ) $ ( if true then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if d38 then d140 else d42 ) ) ) $ ( x1570 ) ) ) ) $ ( if d97 then false else true )
        d161 : if false then if true then Bool else Bool else if false then Bool else Bool
        d161 = if ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> d66 ) ) ) $ ( true )
        d165 : if false then ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d165 = if ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> false ) ) ) $ ( true ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> true ) ) ) $ ( false )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> ( ( Set -> Set ) ∋ ( ( λ x1730 -> if true then Bool else x1720 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if d73 then d135 else d135 ) ) ) $ ( true ) ) ) ) $ ( if d38 then d57 else true )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1770 -> if false then x1770 else Bool ) ) ) $ ( if false then Bool else Bool )
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if false then true else x1760 ) ) ) $ ( true ) ) ) ) $ ( if true then d107 else true )
        d178 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1800 -> Bool ) ) ) $ ( Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if d53 then true else d169 ) ) ) $ ( if d128 then false else d128 )
        d181 : if true then ( ( Set -> Set ) ∋ ( ( λ x1850 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1860 -> Bool ) ) ) $ ( Bool )
        d181 = if ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> x1820 ) ) ) $ ( d149 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> false ) ) ) $ ( d22 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> false ) ) ) $ ( d45 )
        d187 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> ( ( Set -> Set ) ∋ ( ( λ x1910 -> if false then x1910 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if d81 then true else x1880 ) ) ) $ ( true ) ) ) ) $ ( if d45 then d49 else true )
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1950 -> if true then x1950 else x1950 ) ) ) $ ( if true then Bool else Bool )
        d192 = if ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> x1930 ) ) ) $ ( d119 ) then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( true )
        d196 : if false then ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1980 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d196 = if if true then d140 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> x1970 ) ) ) $ ( false ) else if d174 then false else d128