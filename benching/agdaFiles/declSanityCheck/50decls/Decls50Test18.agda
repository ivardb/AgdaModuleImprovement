module Decls50Test18  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else x30 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( false ) then if true then false else false else if false then false else false
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x80 else Bool ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d5 = if if d1 then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d1 ) ) ) $ ( d1 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x130 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if false then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d1 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d5 ) ) ) $ ( false )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then x190 else x190 ) ) ) $ ( x180 ) ) ) ) $ ( if false then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if false then d1 else x160 ) ) ) $ ( false ) ) ) ) $ ( if true then d5 else false )
        d20 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x230 -> x230 ) ) ) $ ( Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if x210 then x210 else true ) ) ) $ ( false ) ) ) ) $ ( if d5 then false else true )
        d24 : if true then ( ( Set -> Set ) ∋ ( ( λ x270 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( Bool )
        d24 = if if d15 then d1 else true then ( ( Bool -> Bool ) ∋ ( ( λ x250 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x260 -> d15 ) ) ) $ ( true )
        d29 : if false then ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x330 -> Bool ) ) ) $ ( Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if x310 then d1 else d15 ) ) ) $ ( x300 ) ) ) ) $ ( if false then d24 else d5 )
        d34 : if true then ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if d20 then x350 else true ) ) ) $ ( if d10 then d24 else d20 )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x390 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then Bool else x400 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if d34 then false else true ) ) ) $ ( if d29 then false else d29 )
        d41 : if false then ( ( Set -> Set ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if x420 then d34 else d37 ) ) ) $ ( if false then false else false )
        d45 : if false then ( ( Set -> Set ) ∋ ( ( λ x480 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d45 = if ( ( Bool -> Bool ) ∋ ( ( λ x460 -> d10 ) ) ) $ ( false ) then if true then d34 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x470 -> false ) ) ) $ ( false )
        d49 : if true then if false then Bool else Bool else if true then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if x500 then d45 else d10 ) ) ) $ ( if true then false else d24 )
        d51 : if false then ( ( Set -> Set ) ∋ ( ( λ x540 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if d24 then false else x520 ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d55 : if true then if false then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if d1 then d24 else true ) ) ) $ ( d45 ) ) ) ) $ ( if true then false else true )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x610 -> ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then Bool else x610 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x590 -> false ) ) ) $ ( d15 ) else ( ( Bool -> Bool ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( false )
        d63 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if x640 then true else x640 ) ) ) $ ( if d41 then d15 else true )
        d66 : if true then ( ( Set -> Set ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if false then x670 else true ) ) ) $ ( d51 ) ) ) ) $ ( if false then d37 else d5 )
        d70 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x720 -> Bool ) ) ) $ ( Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if true then d10 else true ) ) ) $ ( if false then d55 else false )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if false then x760 else Bool ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if false then true else false ) ) ) $ ( x740 ) ) ) ) $ ( if true then true else d1 )
        d77 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( Bool )
        d77 = if if d45 then d70 else d55 then if false then false else d66 else ( ( Bool -> Bool ) ∋ ( ( λ x780 -> true ) ) ) $ ( d58 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then x840 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if true then x810 else x810 ) ) ) $ ( x810 ) ) ) ) $ ( if d58 then true else d5 )
        d85 : if true then ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if x860 then x860 else x860 ) ) ) $ ( if d41 then true else true )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if true then x910 else Bool ) ) ) $ ( if true then Bool else Bool )
        d88 = if ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d73 ) ) ) $ ( false ) then if d24 then false else d20 else ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d80 ) ) ) $ ( d70 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then x950 else Bool ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if d77 then x940 else d29 ) ) ) $ ( false ) ) ) ) $ ( if d15 then true else false )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x980 -> if true then Bool else x980 ) ) ) $ ( if false then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if false then x970 else false ) ) ) $ ( if false then d45 else d49 )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> ( ( Set -> Set ) ∋ ( ( λ x1020 -> if false then Bool else Bool ) ) ) $ ( x1010 ) ) ) ) $ ( if true then Bool else Bool )
        d99 = if if d80 then d66 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> true ) ) ) $ ( false ) else if true then d1 else d37
        d103 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1060 -> Bool ) ) ) $ ( Bool )
        d103 = if if d70 then d29 else d51 then ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> d70 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( d45 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> if false then x1120 else x1110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d20 ) ) ) $ ( d51 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> d63 ) ) ) $ ( d96 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> false ) ) ) $ ( true )
        d113 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if true then Bool else x1160 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if d24 then d29 else x1140 ) ) ) $ ( x1140 ) ) ) ) $ ( if true then false else d24 )
        d118 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( Bool )
        d118 = if ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> false ) ) ) $ ( d24 ) then if d10 then d49 else d37 else ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> x1200 ) ) ) $ ( false )
        d122 : if true then ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1250 -> Bool ) ) ) $ ( Bool )
        d122 = if ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> false ) ) ) $ ( d103 ) then if false then d85 else false else if true then false else false
        d126 : if false then ( ( Set -> Set ) ∋ ( ( λ x1280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1290 -> Bool ) ) ) $ ( Bool )
        d126 = if if d34 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> d10 ) ) ) $ ( false ) else if d1 then true else d92
        d130 : if true then ( ( Set -> Set ) ∋ ( ( λ x1330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> d41 ) ) ) $ ( true ) else if d51 then d1 else d29
        d135 : if true then if false then Bool else Bool else if true then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if d37 then false else x1360 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d77 )
        d138 : if true then if true then Bool else Bool else if false then Bool else Bool
        d138 = if ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> d122 ) ) ) $ ( d37 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> d66 ) ) ) $ ( d66 ) else if true then d58 else false
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if false then d113 else true ) ) ) $ ( if false then false else false )
        d144 : if false then ( ( Set -> Set ) ∋ ( ( λ x1460 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if x1450 then x1450 else d80 ) ) ) $ ( if true then d70 else d10 )
        d147 : if false then ( ( Set -> Set ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( Bool )
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> if false then d113 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d122 else d49 )
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1540 -> ( ( Set -> Set ) ∋ ( ( λ x1550 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if x1530 then d49 else d126 ) ) ) $ ( if d10 then true else d5 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d156 = if ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> true ) ) ) $ ( true ) then if false then true else d152 else ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( true )
        d161 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d161 = if ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( d96 ) then if false then d5 else true else if d88 then d77 else d51
        d164 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1670 -> Bool ) ) ) $ ( Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if d118 then d118 else true ) ) ) $ ( x1650 ) ) ) ) $ ( if true then false else d138 )
        d168 : if false then ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( Bool )
        d168 = if if d107 then false else false then if d156 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> true ) ) ) $ ( d15 )
        d172 : if true then ( ( Set -> Set ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if d138 then d96 else x1730 ) ) ) $ ( d49 ) ) ) ) $ ( if d103 then d70 else false )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if false then x1780 else Bool ) ) ) $ ( if true then Bool else Bool )
        d176 = if if false then d15 else true then if false then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> d51 ) ) ) $ ( d168 )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d179 = if if false then d122 else d122 then ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( d126 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> false ) ) ) $ ( false )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then x1850 else Bool ) ) ) $ ( if false then Bool else Bool )
        d183 = if if true then d77 else d5 then ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> true ) ) ) $ ( d141 ) else if true then d113 else false
        d186 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1880 -> x1880 ) ) ) $ ( Bool )
        d186 = if if false then d99 else false then if true then d103 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( d161 )
        d189 : if true then ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1910 -> x1910 ) ) ) $ ( Bool )
        d189 = if if true then false else d183 then if d45 then true else false else if false then d126 else d179
        d192 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> ( ( Set -> Set ) ∋ ( ( λ x1950 -> if false then x1950 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d192 = if if false then true else true then if d1 then d92 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> d15 ) ) ) $ ( d51 )