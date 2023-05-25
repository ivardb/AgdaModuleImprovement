module Decls50Test11  where
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
        d1 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then x20 else x30 ) ) ) $ ( x20 ) ) ) ) $ ( if false then false else false )
        d4 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool )
        d4 = if ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d1 ) ) ) $ ( false ) then if false then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x60 -> true ) ) ) $ ( d1 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d4 then d1 else false ) ) ) $ ( if d1 then d1 else d1 )
        d12 : if false then ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d4 then true else d8 ) ) ) $ ( if d1 then d4 else d4 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if false then d4 else false ) ) ) $ ( d12 ) ) ) ) $ ( if d4 then false else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x220 -> if true then x220 else Bool ) ) ) $ ( if true then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if x210 then false else x210 ) ) ) $ ( if true then d15 else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then x260 else x260 ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if d4 then false else d1 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( if true then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if true then x280 else d8 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d15 )
        d31 : if true then ( ( Set -> Set ) ∋ ( ( λ x330 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if d8 then x320 else false ) ) ) $ ( if d12 then d23 else d12 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> if false then x380 else Bool ) ) ) $ ( x370 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if d31 then false else true ) ) ) $ ( x350 ) ) ) ) $ ( if d1 then false else false )
        d39 : if false then if true then Bool else Bool else if false then Bool else Bool
        d39 = if if false then d12 else true then ( ( Bool -> Bool ) ∋ ( ( λ x400 -> d20 ) ) ) $ ( d4 ) else if true then d8 else d31
        d41 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool )
        d41 = if ( ( Bool -> Bool ) ∋ ( ( λ x420 -> d27 ) ) ) $ ( d27 ) then if d31 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( false )
        d45 : if false then ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x500 -> Bool ) ) ) $ ( Bool )
        d45 = if ( ( Bool -> Bool ) ∋ ( ( λ x460 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x470 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x480 -> true ) ) ) $ ( true )
        d51 : if false then ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( Bool )
        d51 = if if true then d31 else false then ( ( Bool -> Bool ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( d41 ) else ( ( Bool -> Bool ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( true )
        d56 : if true then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if x570 then x580 else d1 ) ) ) $ ( x570 ) ) ) ) $ ( if d34 then true else true )
        d59 : if true then ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x610 -> Bool ) ) ) $ ( Bool )
        d59 = if if d45 then d12 else d31 then if false then d15 else d51 else if false then false else d27
        d62 : if false then ( ( Set -> Set ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if false then x640 else d34 ) ) ) $ ( x630 ) ) ) ) $ ( if true then false else false )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then Bool else Bool ) ) ) $ ( x690 ) ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if false then d1 else x680 ) ) ) $ ( false ) ) ) ) $ ( if d45 then d34 else true )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d71 = if ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d59 ) ) ) $ ( d27 ) then ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d45 ) ) ) $ ( d27 ) else if true then true else d4
        d75 : if true then ( ( Set -> Set ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( Bool )
        d75 = if ( ( Bool -> Bool ) ∋ ( ( λ x760 -> false ) ) ) $ ( d12 ) then ( ( Bool -> Bool ) ∋ ( ( λ x770 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x780 -> d39 ) ) ) $ ( d56 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then x840 else x840 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = if if d75 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x820 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x830 -> d75 ) ) ) $ ( d59 )
        d86 : if true then if true then Bool else Bool else if false then Bool else Bool
        d86 = if ( ( Bool -> Bool ) ∋ ( ( λ x870 -> true ) ) ) $ ( false ) then if d56 then d45 else false else if d51 then d56 else d39
        d88 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if d4 then d27 else true ) ) ) $ ( d59 ) ) ) ) $ ( if d23 then true else d31 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x950 -> if true then Bool else x950 ) ) ) $ ( if true then Bool else Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> true ) ) ) $ ( d8 ) then if true then d75 else d23 else ( ( Bool -> Bool ) ∋ ( ( λ x940 -> d59 ) ) ) $ ( true )
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if x980 then false else false ) ) ) $ ( d51 ) ) ) ) $ ( if d59 then d15 else d12 )
        d99 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if x1000 then false else d20 ) ) ) $ ( if true then d59 else false )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then Bool else x1050 ) ) ) $ ( x1050 ) ) ) ) $ ( if false then Bool else Bool )
        d102 = if ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> x1030 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> false ) ) ) $ ( false ) else if false then true else false
        d107 : if false then if true then Bool else Bool else if true then Bool else Bool
        d107 = if ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> d12 ) ) ) $ ( d81 )
        d111 : if false then ( ( Set -> Set ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if false then d39 else x1120 ) ) ) $ ( if d99 then false else false )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> if true then x1180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d114 = if if d66 then false else d31 then ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( d31 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( d56 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> if true then Bool else x1220 ) ) ) $ ( x1220 ) ) ) ) $ ( if false then Bool else Bool )
        d119 = if ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> x1200 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> d39 ) ) ) $ ( false ) else if false then d66 else d66
        d124 : if true then ( ( Set -> Set ) ∋ ( ( λ x1260 -> x1260 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if d96 then x1250 else true ) ) ) $ ( if true then false else true )
        d128 : if true then ( ( Set -> Set ) ∋ ( ( λ x1310 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool )
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> if d4 then x1300 else true ) ) ) $ ( d107 ) ) ) ) $ ( if d15 then false else d51 )
        d133 : if true then if false then Bool else Bool else if true then Bool else Bool
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if true then false else d34 ) ) ) $ ( if d88 then true else false )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if false then Bool else x1380 ) ) ) $ ( x1380 ) ) ) ) $ ( if false then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if x1370 then x1360 else x1370 ) ) ) $ ( false ) ) ) ) $ ( if d8 then false else d99 )
        d140 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then x1430 else Bool ) ) ) $ ( x1430 ) ) ) ) $ ( if true then Bool else Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if false then x1420 else x1420 ) ) ) $ ( x1410 ) ) ) ) $ ( if d128 then false else true )
        d145 : if true then ( ( Set -> Set ) ∋ ( ( λ x1470 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d145 = if if d56 then false else d31 then if d20 then d124 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> d51 ) ) ) $ ( true )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then x1530 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( false ) then if d114 then d12 else d128 else ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d34 ) ) ) $ ( true )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if true then Bool else x1560 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if false then true else d71 ) ) ) $ ( if d86 then true else false )
        d158 : if true then if false then Bool else Bool else if false then Bool else Bool
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if false then x1590 else d59 ) ) ) $ ( if false then true else false )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> ( ( Set -> Set ) ∋ ( ( λ x1640 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d160 = if if false then true else d145 then ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( false )
        d165 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d165 = if if d154 then false else d96 then ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> x1660 ) ) ) $ ( true ) else if true then d119 else false
        d168 : if false then if true then Bool else Bool else if true then Bool else Bool
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if d149 then true else false ) ) ) $ ( x1690 ) ) ) ) $ ( if true then d51 else d145 )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then x1730 else x1730 ) ) ) $ ( x1730 ) ) ) ) $ ( if false then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> if x1720 then x1720 else d51 ) ) ) $ ( if true then true else true )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then x1790 else Bool ) ) ) $ ( x1790 ) ) ) ) $ ( if true then Bool else Bool )
        d175 = if ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d135 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> d114 ) ) ) $ ( d31 )
        d181 : if false then if false then Bool else Bool else if false then Bool else Bool
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if d4 then x1820 else x1820 ) ) ) $ ( if d128 then d114 else false )
        d183 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1850 -> Bool ) ) ) $ ( Bool )
        d183 = if if false then d158 else d149 then if d51 then d31 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> x1840 ) ) ) $ ( false )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> if true then d133 else x1870 ) ) ) $ ( if true then d86 else false )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> if true then Bool else x1930 ) ) ) $ ( if true then Bool else Bool )
        d190 = ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if x1910 then false else x1910 ) ) ) $ ( d8 ) ) ) ) $ ( if false then false else d45 )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> if true then Bool else x1980 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> if false then d4 else x1950 ) ) ) $ ( d149 ) ) ) ) $ ( if d31 then true else false )