module Decls50Test16  where
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
        d1 : if false then ( ( Set -> Set ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1 = if if false then true else false then if false then false else false else if true then false else true
        d3 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool )
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if x50 then false else d1 ) ) ) $ ( x40 ) ) ) ) $ ( if d1 then true else d1 )
        d7 : if false then ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d3 then x90 else x80 ) ) ) $ ( false ) ) ) ) $ ( if d1 then d1 else d3 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d7 then true else true then if true then d1 else d3 else ( ( Bool -> Bool ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( d1 )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then x170 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if d1 then false else d1 then if true then true else d11 else ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d3 ) ) ) $ ( d7 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x220 -> ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then Bool else x220 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> true ) ) ) $ ( d11 ) then ( ( Bool -> Bool ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( false )
        d24 : if false then ( ( Set -> Set ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if d18 then x260 else x260 ) ) ) $ ( true ) ) ) ) $ ( if d7 then d14 else false )
        d29 : if false then ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( Bool )
        d29 = if ( ( Bool -> Bool ) ∋ ( ( λ x300 -> true ) ) ) $ ( d14 ) then if false then d14 else d18 else ( ( Bool -> Bool ) ∋ ( ( λ x310 -> false ) ) ) $ ( false )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then Bool else Bool ) ) ) $ ( x350 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if false then d7 else true then if true then false else false else if false then d11 else true
        d37 : if true then if false then Bool else Bool else if false then Bool else Bool
        d37 = if if d1 then d24 else true then if d24 then d34 else false else if d3 then true else false
        d38 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then x420 else x410 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d38 = if ( ( Bool -> Bool ) ∋ ( ( λ x390 -> x390 ) ) ) $ ( d29 ) then if d3 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x400 -> d14 ) ) ) $ ( true )
        d43 : if true then ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d43 = if if false then d14 else d3 then ( ( Bool -> Bool ) ∋ ( ( λ x440 -> d37 ) ) ) $ ( true ) else if false then d38 else false
        d46 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool )
        d46 = if ( ( Bool -> Bool ) ∋ ( ( λ x470 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x480 -> d34 ) ) ) $ ( true ) else if false then d38 else false
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then x530 else x520 ) ) ) $ ( x520 ) ) ) ) $ ( if true then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if true then d18 else d46 ) ) ) $ ( if d46 then false else false )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if true then d29 else false ) ) ) $ ( true ) ) ) ) $ ( if d1 then false else d24 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x610 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if x590 then x600 else x600 ) ) ) $ ( x590 ) ) ) ) $ ( if false then true else d50 )
        d62 : if true then ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d62 = if ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( true ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( d43 )
        d66 : if true then ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d66 = if ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( d18 ) then ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d3 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x690 -> false ) ) ) $ ( d34 )
        d71 : if true then if false then Bool else Bool else if true then Bool else Bool
        d71 = if ( ( Bool -> Bool ) ∋ ( ( λ x720 -> x720 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( true ) else if d54 then true else d7
        d74 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d74 = if if d1 then d24 else d18 then ( ( Bool -> Bool ) ∋ ( ( λ x750 -> false ) ) ) $ ( false ) else if d43 then false else d37
        d77 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( Bool )
        d77 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x780 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if false then Bool else Bool ) ) ) $ ( x830 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if d18 then false else x820 ) ) ) $ ( if false then true else false )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x870 -> if true then x870 else x870 ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if false then true else false ) ) ) $ ( if true then true else true )
        d88 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( Bool )
        d88 = if if true then true else d11 then if d34 then d58 else d29 else if true then d34 else d85
        d90 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> if true then x930 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( false ) else if true then true else true
        d94 : if true then ( ( Set -> Set ) ∋ ( ( λ x960 -> x960 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d94 = if if d43 then false else d50 then if d29 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x950 -> true ) ) ) $ ( d1 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x990 -> if false then x990 else x990 ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if false then x980 else true ) ) ) $ ( if d11 then false else true )
        d100 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1020 -> Bool ) ) ) $ ( Bool )
        d100 = if if d29 then d14 else d43 then if d34 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( d46 )
        d103 : if false then ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1060 -> Bool ) ) ) $ ( Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if false then x1040 else x1040 ) ) ) $ ( if d94 then false else d66 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then Bool else x1100 ) ) ) $ ( if false then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if d1 then x1090 else x1080 ) ) ) $ ( true ) ) ) ) $ ( if false then true else d29 )
        d111 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1130 -> Bool ) ) ) $ ( Bool )
        d111 = if if d29 then d14 else d24 then ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d46 ) ) ) $ ( d24 ) else if d18 then d14 else d38
        d114 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if x1150 then true else d97 ) ) ) $ ( d94 ) ) ) ) $ ( if d14 then false else false )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> ( ( Set -> Set ) ∋ ( ( λ x1220 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if false then x1190 else d81 ) ) ) $ ( d114 ) ) ) ) $ ( if true then false else d43 )
        d123 : if true then ( ( Set -> Set ) ∋ ( ( λ x1250 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d123 = if if false then d18 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> true ) ) ) $ ( false ) else if d97 then false else d37
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if d3 then x1270 else true ) ) ) $ ( if false then true else d77 )
        d130 : if true then if true then Bool else Bool else if false then Bool else Bool
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if d85 then true else x1310 ) ) ) $ ( if false then true else false )
        d132 : if false then ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if true then x1330 else x1330 ) ) ) $ ( if true then false else d58 )
        d135 : if true then ( ( Set -> Set ) ∋ ( ( λ x1380 -> x1380 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if false then false else d37 ) ) ) $ ( d111 ) ) ) ) $ ( if true then true else false )
        d139 : if false then ( ( Set -> Set ) ∋ ( ( λ x1420 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( Bool )
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> if d103 then d132 else false ) ) ) $ ( x1400 ) ) ) ) $ ( if d90 then d77 else false )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then x1470 else Bool ) ) ) $ ( if false then Bool else Bool )
        d144 = if ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> x1450 ) ) ) $ ( d3 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( false ) else if false then false else false
        d148 : if false then ( ( Set -> Set ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1510 -> Bool ) ) ) $ ( Bool )
        d148 = if if false then d81 else false then if true then true else d18 else ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( d123 )
        d152 : if false then ( ( Set -> Set ) ∋ ( ( λ x1550 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> if x1540 then false else d77 ) ) ) $ ( false ) ) ) ) $ ( if d144 then d85 else d38 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> if false then x1580 else Bool ) ) ) $ ( x1580 ) ) ) ) $ ( if true then Bool else Bool )
        d156 = if if true then false else true then if d107 then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( false )
        d160 : if true then if true then Bool else Bool else if false then Bool else Bool
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if d11 then true else x1620 ) ) ) $ ( d11 ) ) ) ) $ ( if false then false else d74 )
        d163 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> if true then x1660 else Bool ) ) ) $ ( if false then Bool else Bool )
        d163 = if ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> false ) ) ) $ ( d46 ) then if d62 then d94 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> d107 ) ) ) $ ( false )
        d167 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( Bool )
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if false then d107 else true ) ) ) $ ( d123 ) ) ) ) $ ( if d160 then d62 else true )
        d171 : if true then ( ( Set -> Set ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1750 -> Bool ) ) ) $ ( Bool )
        d171 = if ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> true ) ) ) $ ( d11 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> false ) ) ) $ ( true ) else if true then d58 else false
        d176 : if true then ( ( Set -> Set ) ∋ ( ( λ x1770 -> x1770 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d176 = if if true then true else d107 then if true then true else d167 else if false then true else d34
        d178 : if false then ( ( Set -> Set ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d178 = if ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( d58 ) then if true then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( d94 )
        d182 : if true then ( ( Set -> Set ) ∋ ( ( λ x1840 -> x1840 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1850 -> Bool ) ) ) $ ( Bool )
        d182 = if if false then false else true then ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( d148 ) else if true then true else false