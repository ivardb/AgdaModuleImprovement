module Decls50Test6  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x30 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if false then true else x20 ) ) ) $ ( if true then true else true )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else Bool ) ) ) $ ( x80 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if false then x60 else true ) ) ) $ ( false ) ) ) ) $ ( if true then true else d1 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x140 else x140 ) ) ) $ ( x130 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if x120 then d1 else x120 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d15 : if false then ( ( Set -> Set ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d15 = if ( ( Bool -> Bool ) ∋ ( ( λ x160 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d1 ) ) ) $ ( d5 )
        d20 : if true then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d5 then x220 else d15 ) ) ) $ ( true ) ) ) ) $ ( if d5 then d5 else d15 )
        d23 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x260 -> Bool ) ) ) $ ( Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> if d1 then d10 else x240 ) ) ) $ ( false ) ) ) ) $ ( if d1 then d10 else d15 )
        d27 : if false then ( ( Set -> Set ) ∋ ( ( λ x300 -> x300 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if d1 then x280 else x280 ) ) ) $ ( x280 ) ) ) ) $ ( if false then false else d20 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = if if false then d20 else d27 then ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( true ) else if d5 then false else d23
        d35 : ( ( Set -> Set ) ∋ ( ( λ x390 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> if true then Bool else x400 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if ( ( Bool -> Bool ) ∋ ( ( λ x360 -> false ) ) ) $ ( d5 ) then ( ( Bool -> Bool ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x380 -> true ) ) ) $ ( true )
        d41 : if true then ( ( Set -> Set ) ∋ ( ( λ x430 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if false then true else d32 ) ) ) $ ( if false then false else true )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> if true then x460 else x460 ) ) ) $ ( x460 ) ) ) ) $ ( if true then Bool else Bool )
        d44 = if ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( d1 ) then if d32 then true else true else if d27 then false else true
        d48 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then x510 else x510 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if d41 then false else true ) ) ) $ ( if false then true else d44 )
        d52 : if false then ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d1 ) ) ) $ ( d48 ) then ( ( Bool -> Bool ) ∋ ( ( λ x540 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( d44 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> if true then x610 else x610 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if true then x590 else x590 ) ) ) $ ( if d1 then false else true )
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = if if true then false else d41 then if false then true else false else if false then false else d27
        d63 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool )
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> true ) ) ) $ ( d35 ) then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> d41 ) ) ) $ ( d5 ) else ( ( Bool -> Bool ) ∋ ( ( λ x660 -> true ) ) ) $ ( d41 )
        d68 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool )
        d68 = if if true then true else false then if true then false else d15 else ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d63 ) ) ) $ ( d48 )
        d71 : if false then ( ( Set -> Set ) ∋ ( ( λ x730 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x740 -> Bool ) ) ) $ ( Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if d48 then false else d27 ) ) ) $ ( if d52 then true else false )
        d75 : if true then ( ( Set -> Set ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if d58 then x770 else d5 ) ) ) $ ( x760 ) ) ) ) $ ( if true then d62 else d10 )
        d79 : if false then ( ( Set -> Set ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x830 -> x830 ) ) ) $ ( Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> if x810 then true else d71 ) ) ) $ ( x800 ) ) ) ) $ ( if d44 then false else d62 )
        d84 : if false then ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x880 -> Bool ) ) ) $ ( Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if d35 then x860 else d71 ) ) ) $ ( x850 ) ) ) ) $ ( if d48 then d68 else false )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if true then Bool else x910 ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if true then x900 else d32 ) ) ) $ ( if d15 then false else true )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x970 -> if true then x970 else x960 ) ) ) $ ( x960 ) ) ) ) $ ( if true then Bool else Bool )
        d92 = if ( ( Bool -> Bool ) ∋ ( ( λ x930 -> x930 ) ) ) $ ( d62 ) then ( ( Bool -> Bool ) ∋ ( ( λ x940 -> true ) ) ) $ ( d79 ) else ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d5 ) ) ) $ ( d1 )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> if true then x1000 else x1000 ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if false then x990 else x990 ) ) ) $ ( if true then false else d84 )
        d101 : if true then ( ( Set -> Set ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if true then true else true ) ) ) $ ( d63 ) ) ) ) $ ( if false then true else d79 )
        d106 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1080 -> Bool ) ) ) $ ( Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if d27 then x1070 else x1070 ) ) ) $ ( if d35 then d62 else d101 )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> if false then x1120 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = if if d106 then d27 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( d10 ) else if true then d89 else false
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = if if true then false else d52 then if false then false else false else if d68 then d32 else false
        d115 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> if true then x1170 else x1170 ) ) ) $ ( if false then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if d109 then x1160 else false ) ) ) $ ( if d32 then false else true )
        d118 : if true then ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d118 = if ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> d92 ) ) ) $ ( d98 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> x1200 ) ) ) $ ( d84 ) else if d101 then d63 else false
        d122 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if d106 then true else d68 ) ) ) $ ( d115 ) ) ) ) $ ( if true then false else true )
        d126 : if true then if true then Bool else Bool else if false then Bool else Bool
        d126 = if ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> true ) ) ) $ ( d71 ) then if true then d63 else d41 else if true then false else d23
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> if true then Bool else x1310 ) ) ) $ ( if true then Bool else Bool )
        d128 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d122 ) ) ) $ ( d27 )
        d132 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if x1330 then d115 else false ) ) ) $ ( if d79 then d48 else false )
        d135 : if true then ( ( Set -> Set ) ∋ ( ( λ x1370 -> x1370 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d135 = if ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> d35 ) ) ) $ ( d71 ) then if d41 then false else true else if false then d15 else true
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> if false then x1400 else x1400 ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if x1390 then x1390 else true ) ) ) $ ( if d41 then true else true )
        d141 : if true then ( ( Set -> Set ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if x1420 then d132 else false ) ) ) $ ( if d122 then false else d106 )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> ( ( Set -> Set ) ∋ ( ( λ x1480 -> if false then x1480 else x1470 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d144 = if ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> x1450 ) ) ) $ ( d5 ) then if true then d27 else d101 else ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> d35 ) ) ) $ ( false )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> if false then x1510 else Bool ) ) ) $ ( x1510 ) ) ) ) $ ( if false then Bool else Bool )
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> d23 ) ) ) $ ( d79 ) then if d20 then true else d135 else if true then true else false
        d153 : if true then ( ( Set -> Set ) ∋ ( ( λ x1550 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d153 = if if false then d68 else false then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> d52 ) ) ) $ ( true )
        d156 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if d138 then false else false ) ) ) $ ( x1570 ) ) ) ) $ ( if true then d5 else true )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if x1610 then d63 else x1610 ) ) ) $ ( d138 ) ) ) ) $ ( if d52 then true else true )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then Bool else x1680 ) ) ) $ ( x1670 ) ) ) ) $ ( if true then Bool else Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if d98 then x1660 else d44 ) ) ) $ ( x1650 ) ) ) ) $ ( if false then d160 else true )
        d169 : if false then ( ( Set -> Set ) ∋ ( ( λ x1710 -> x1710 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if false then x1700 else d113 ) ) ) $ ( if true then false else d23 )
        d173 : if true then if true then Bool else Bool else if false then Bool else Bool
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> if x1740 then true else x1750 ) ) ) $ ( d89 ) ) ) ) $ ( if true then d109 else true )
        d176 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> if d20 then x1770 else x1770 ) ) ) $ ( if d84 then false else false )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> if true then Bool else x1810 ) ) ) $ ( if false then Bool else Bool )
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> if x1800 then x1800 else x1800 ) ) ) $ ( if false then d126 else true )
        d182 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> if true then x1860 else x1860 ) ) ) $ ( if false then Bool else Bool )
        d182 = if ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> x1840 ) ) ) $ ( d27 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> x1850 ) ) ) $ ( d176 )
        d187 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1900 -> x1900 ) ) ) $ ( Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if true then x1880 else d92 ) ) ) $ ( false ) ) ) ) $ ( if d115 then d101 else false )
        d191 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if x1920 then d141 else false ) ) ) $ ( if d138 then d84 else false )