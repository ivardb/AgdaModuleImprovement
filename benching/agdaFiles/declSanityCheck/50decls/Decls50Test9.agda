module Decls50Test9  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then x30 else x30 ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if x20 then false else x20 ) ) ) $ ( if true then false else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then Bool else x80 ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d4 = if if false then d1 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x50 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( true )
        d9 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( Bool )
        d9 = if ( ( Bool -> Bool ) ∋ ( ( λ x100 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( true ) else if true then true else false
        d13 : if true then ( ( Set -> Set ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if d1 then false else x150 ) ) ) $ ( d9 ) ) ) ) $ ( if d4 then false else false )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> if false then x200 else x200 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d17 = if if d4 then true else d13 then ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d1 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x190 -> d4 ) ) ) $ ( d9 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> if true then Bool else x250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if ( ( Bool -> Bool ) ∋ ( ( λ x230 -> false ) ) ) $ ( true ) then if d4 then true else false else if false then d1 else false
        d26 : ( ( Set -> Set ) ∋ ( ( λ x290 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if false then x270 else false ) ) ) $ ( true ) ) ) ) $ ( if d17 then d9 else d9 )
        d31 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x340 -> Bool ) ) ) $ ( Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if x330 then true else d13 ) ) ) $ ( x320 ) ) ) ) $ ( if false then d13 else true )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> if true then Bool else Bool ) ) ) $ ( x370 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = if if false then d17 else false then if true then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x360 -> false ) ) ) $ ( false )
        d39 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if x410 then true else d4 ) ) ) $ ( d31 ) ) ) ) $ ( if d26 then false else d22 )
        d43 : if true then ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x470 -> Bool ) ) ) $ ( Bool )
        d43 = if ( ( Bool -> Bool ) ∋ ( ( λ x440 -> d22 ) ) ) $ ( d35 ) then ( ( Bool -> Bool ) ∋ ( ( λ x450 -> d22 ) ) ) $ ( d1 ) else if d31 then true else true
        d48 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x500 -> Bool ) ) ) $ ( Bool )
        d48 = if ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d35 ) ) ) $ ( true ) then if d13 then true else d13 else if true then d1 else true
        d51 : ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then x530 else x530 ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if true then true else false ) ) ) $ ( if false then d26 else d26 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then x570 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if false then x550 else false ) ) ) $ ( if false then d48 else false )
        d58 : if false then ( ( Set -> Set ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( Bool )
        d58 = if if true then d54 else d13 then ( ( Bool -> Bool ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( true ) else if d48 then true else true
        d62 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if d1 then false else x630 ) ) ) $ ( if true then d58 else d58 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then x680 else Bool ) ) ) $ ( if false then Bool else Bool )
        d65 = if ( ( Bool -> Bool ) ∋ ( ( λ x660 -> d1 ) ) ) $ ( d39 ) then ( ( Bool -> Bool ) ∋ ( ( λ x670 -> false ) ) ) $ ( d26 ) else if false then d54 else false
        d69 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( Bool )
        d69 = if ( ( Bool -> Bool ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( false ) then if false then true else true else if true then true else false
        d72 : if true then ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x770 -> Bool ) ) ) $ ( Bool )
        d72 = if ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d22 ) ) ) $ ( d39 ) else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> false ) ) ) $ ( d54 )
        d78 : if true then ( ( Set -> Set ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x790 then true else x790 ) ) ) $ ( x790 ) ) ) ) $ ( if true then false else d43 )
        d83 : if false then if false then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if x850 then d69 else x850 ) ) ) $ ( false ) ) ) ) $ ( if d78 then false else true )
        d86 : if true then if false then Bool else Bool else if false then Bool else Bool
        d86 = if if d54 then true else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( false ) else if false then false else d35
        d88 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> if true then Bool else x890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d88 = if if d43 then false else false then if true then d31 else d48 else if d54 then d62 else false
        d91 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> if true then x940 else x950 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if x930 then x930 else x930 ) ) ) $ ( x920 ) ) ) ) $ ( if false then d51 else d26 )
        d96 : if false then ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d96 = if ( ( Bool -> Bool ) ∋ ( ( λ x970 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x980 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x990 -> d39 ) ) ) $ ( d48 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> if true then Bool else x1050 ) ) ) $ ( x1040 ) ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if d54 then d72 else d88 ) ) ) $ ( d69 ) ) ) ) $ ( if d9 then true else false )
        d106 : if true then if true then Bool else Bool else if true then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if d4 then false else d48 ) ) ) $ ( if d17 then d83 else d83 )
        d108 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool )
        d108 = if if d35 then d106 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> d4 ) ) ) $ ( d17 ) else if d35 then true else false
        d111 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if true then x1120 else d58 ) ) ) $ ( x1120 ) ) ) ) $ ( if d9 then true else false )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if true then false else d35 ) ) ) $ ( x1160 ) ) ) ) $ ( if d22 then false else false )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> if true then x1220 else x1220 ) ) ) $ ( if false then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1210 then x1210 else d31 ) ) ) $ ( if false then d48 else d78 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> if false then x1250 else Bool ) ) ) $ ( x1250 ) ) ) ) $ ( if true then Bool else Bool )
        d123 = if if d17 then true else true then if d4 then false else d22 else ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> false ) ) ) $ ( d39 )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> if true then x1280 else Bool ) ) ) $ ( if false then Bool else Bool )
        d127 = if if false then true else true then if true then true else d65 else if false then true else d86
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> if false then x1320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if d106 then x1300 else x1310 ) ) ) $ ( d120 ) ) ) ) $ ( if true then false else d17 )
        d133 : if true then ( ( Set -> Set ) ∋ ( ( λ x1360 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1370 -> Bool ) ) ) $ ( Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if x1340 then d62 else x1340 ) ) ) $ ( d72 ) ) ) ) $ ( if d108 then true else d65 )
        d138 : if true then if false then Bool else Bool else if true then Bool else Bool
        d138 = if if true then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> true ) ) ) $ ( d72 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( d123 )
        d141 : if true then ( ( Set -> Set ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d141 = if ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( true ) then if d133 then true else d65 else ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( true )
        d145 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1480 -> Bool ) ) ) $ ( Bool )
        d145 = if if d54 then d22 else d83 then ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( d69 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d9 ) ) ) $ ( true )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then x1520 else x1530 ) ) ) $ ( x1520 ) ) ) ) $ ( if false then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( true ) then if d65 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d1 ) ) ) $ ( d65 )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> ( ( Set -> Set ) ∋ ( ( λ x1580 -> if false then x1570 else Bool ) ) ) $ ( x1570 ) ) ) ) $ ( if false then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if false then true else true ) ) ) $ ( x1550 ) ) ) ) $ ( if true then d91 else d22 )
        d159 : if true then ( ( Set -> Set ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if true then d129 else false ) ) ) $ ( x1600 ) ) ) ) $ ( if false then d39 else true )
        d163 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then x1650 else Bool ) ) ) $ ( if true then Bool else Bool )
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> if true then false else d51 ) ) ) $ ( if d17 then false else false )
        d166 : if false then if false then Bool else Bool else if true then Bool else Bool
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> if d115 then false else x1670 ) ) ) $ ( if d108 then d65 else true )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then x1700 else Bool ) ) ) $ ( x1700 ) ) ) ) $ ( if false then Bool else Bool )
        d168 = if if false then d62 else d48 then if true then true else d129 else ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> d78 ) ) ) $ ( false )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if d163 then d138 else x1730 ) ) ) $ ( if d159 then false else d106 )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then x1800 else x1790 ) ) ) $ ( x1790 ) ) ) ) $ ( if true then Bool else Bool )
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> false ) ) ) $ ( d106 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d111 ) ) ) $ ( d127 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( false )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> if false then Bool else x1840 ) ) ) $ ( x1840 ) ) ) ) $ ( if true then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if true then d26 else true ) ) ) $ ( x1820 ) ) ) ) $ ( if d48 then d88 else d145 )
        d186 : if true then ( ( Set -> Set ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( Bool )
        d186 = if ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> d72 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> x1880 ) ) ) $ ( false ) else if d133 then false else d108
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if true then Bool else x1940 ) ) ) $ ( if false then Bool else Bool )
        d191 = if ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> true ) ) ) $ ( false ) then if true then d69 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> true ) ) ) $ ( false )
        d195 : if false then if true then Bool else Bool else if false then Bool else Bool
        d195 = if if true then true else d108 then ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> d88 ) ) ) $ ( d39 ) else if d168 then false else d4