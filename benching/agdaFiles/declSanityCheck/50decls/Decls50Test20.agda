module Decls50Test20  where
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
        d1 : if false then ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d1 = if if true then false else false then if true then false else true else if true then true else true
        d3 : if true then ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( Bool )
        d3 = if if d1 then false else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x40 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( true )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else x100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d1 then x90 else x90 ) ) ) $ ( if false then d1 else d1 )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else x140 ) ) ) $ ( x140 ) ) ) ) $ ( if false then Bool else Bool )
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if x130 then true else x130 ) ) ) $ ( if d8 then true else d8 )
        d16 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( Bool )
        d16 = if if false then d12 else d8 then ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( true ) else if false then d12 else false
        d19 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x230 -> Bool ) ) ) $ ( Bool )
        d19 = if ( ( Bool -> Bool ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( d3 ) else ( ( Bool -> Bool ) ∋ ( ( λ x220 -> false ) ) ) $ ( d1 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> if false then Bool else Bool ) ) ) $ ( x280 ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if ( ( Bool -> Bool ) ∋ ( ( λ x250 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( true )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x320 -> ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then Bool else x330 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d30 = if if d16 then false else d12 then ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d3 ) ) ) $ ( d8 ) else if d16 then true else true
        d34 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> if false then x370 else x370 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if d24 then true else true ) ) ) $ ( x350 ) ) ) ) $ ( if true then d16 else true )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x400 -> if true then x400 else Bool ) ) ) $ ( if false then Bool else Bool )
        d39 = if if d3 then d8 else true then if d30 then true else d30 else if d3 then false else d1
        d41 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x440 -> Bool ) ) ) $ ( Bool )
        d41 = if if true then d19 else d12 then ( ( Bool -> Bool ) ∋ ( ( λ x420 -> d16 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( false )
        d45 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x480 -> Bool ) ) ) $ ( Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if d39 then x470 else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d49 : if false then ( ( Set -> Set ) ∋ ( ( λ x530 -> x530 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d49 = if ( ( Bool -> Bool ) ∋ ( ( λ x500 -> false ) ) ) $ ( d3 ) then ( ( Bool -> Bool ) ∋ ( ( λ x510 -> d8 ) ) ) $ ( d45 ) else ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d3 ) ) ) $ ( d12 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x550 -> ( ( Set -> Set ) ∋ ( ( λ x560 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = if if d3 then true else false then if true then d34 else d16 else if true then false else true
        d57 : if true then ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if x590 then x580 else false ) ) ) $ ( d24 ) ) ) ) $ ( if d8 then d19 else d1 )
        d61 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool )
        d61 = if ( ( Bool -> Bool ) ∋ ( ( λ x620 -> false ) ) ) $ ( d34 ) then ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( d30 ) else ( ( Bool -> Bool ) ∋ ( ( λ x640 -> false ) ) ) $ ( d39 )
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if true then true else x670 ) ) ) $ ( if true then false else true )
        d68 : ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> if true then x710 else x720 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d68 = if ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d3 ) ) ) $ ( d30 ) then if false then d1 else d39 else ( ( Bool -> Bool ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( d39 )
        d73 : if false then ( ( Set -> Set ) ∋ ( ( λ x750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x760 -> x760 ) ) ) $ ( Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if x740 then true else x740 ) ) ) $ ( if false then true else false )
        d77 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x790 -> Bool ) ) ) $ ( Bool )
        d77 = if ( ( Bool -> Bool ) ∋ ( ( λ x780 -> d39 ) ) ) $ ( d19 ) then if d19 then false else false else if false then false else d57
        d80 : if true then if true then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if x820 then d19 else x820 ) ) ) $ ( d12 ) ) ) ) $ ( if false then false else d66 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d83 = if ( ( Bool -> Bool ) ∋ ( ( λ x840 -> d61 ) ) ) $ ( d39 ) then ( ( Bool -> Bool ) ∋ ( ( λ x850 -> d80 ) ) ) $ ( d41 ) else ( ( Bool -> Bool ) ∋ ( ( λ x860 -> true ) ) ) $ ( true )
        d89 : if true then ( ( Set -> Set ) ∋ ( ( λ x900 -> x900 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d89 = if if d41 then true else false then if false then false else true else if true then true else d24
        d91 : if false then ( ( Set -> Set ) ∋ ( ( λ x930 -> x930 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if x920 then d19 else x920 ) ) ) $ ( if true then d19 else d80 )
        d94 : if false then ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if x950 then d39 else x950 ) ) ) $ ( if false then true else false )
        d97 : if true then ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if d91 then false else true ) ) ) $ ( d66 ) ) ) ) $ ( if true then false else d12 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> if true then x1030 else Bool ) ) ) $ ( x1030 ) ) ) ) $ ( if true then Bool else Bool )
        d101 = if if d57 then false else d83 then if true then true else d34 else ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( d68 )
        d105 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if true then x1060 else x1060 ) ) ) $ ( if true then true else true )
        d108 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if d83 then false else x1090 ) ) ) $ ( if false then d68 else d41 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d111 = if ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> false ) ) ) $ ( d94 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d45 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( d57 )
        d116 : if false then ( ( Set -> Set ) ∋ ( ( λ x1190 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d116 = if if false then false else d101 then ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> false ) ) ) $ ( true )
        d120 : if false then ( ( Set -> Set ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if true then d97 else false ) ) ) $ ( if d94 then false else d30 )
        d124 : if true then ( ( Set -> Set ) ∋ ( ( λ x1260 -> x1260 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1270 -> Bool ) ) ) $ ( Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if x1250 then true else x1250 ) ) ) $ ( if d83 then true else false )
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d128 = if if d57 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> false ) ) ) $ ( d111 ) else if true then true else false
        d131 : if false then ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d131 = if if d68 then d61 else false then if d128 then d54 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> false ) ) ) $ ( d111 )
        d134 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if x1350 then d45 else x1350 ) ) ) $ ( if d19 then false else false )
        d137 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> if true then Bool else x1400 ) ) ) $ ( if true then Bool else Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if d134 then false else false ) ) ) $ ( d39 ) ) ) ) $ ( if true then false else d39 )
        d141 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then Bool else x1440 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d141 = if if true then true else d49 then if false then true else d111 else ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> true ) ) ) $ ( true )
        d145 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d145 = if ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( d34 ) then if false then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( true )
        d149 : if true then if true then Bool else Bool else if true then Bool else Bool
        d149 = if ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> false ) ) ) $ ( d111 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d30 ) ) ) $ ( d89 ) else if false then true else false
        d152 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if true then Bool else x1560 ) ) ) $ ( if true then Bool else Bool )
        d152 = if ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> d66 ) ) ) $ ( d16 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> d39 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> false ) ) ) $ ( d145 )
        d157 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( Bool )
        d157 = if if false then false else d16 then if d94 then true else d111 else if d54 then d3 else true
        d159 : if true then ( ( Set -> Set ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1620 -> Bool ) ) ) $ ( Bool )
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> if true then x1600 else true ) ) ) $ ( if false then d73 else d134 )
        d163 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then x1670 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d163 = if ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> true ) ) ) $ ( d83 ) then if false then d30 else d97 else ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> false ) ) ) $ ( d57 )
        d168 : if true then ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if x1690 then x1690 else true ) ) ) $ ( if true then true else d134 )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then x1740 else Bool ) ) ) $ ( if true then Bool else Bool )
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if false then d134 else true ) ) ) $ ( true ) ) ) ) $ ( if d61 then true else true )
        d175 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if true then Bool else x1780 ) ) ) $ ( if true then Bool else Bool )
        d175 = if if d89 then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> d97 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> false ) ) ) $ ( d80 )
        d179 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> ( ( Set -> Set ) ∋ ( ( λ x1830 -> if false then x1820 else x1830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d179 = ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> if x1810 then x1810 else d159 ) ) ) $ ( d34 ) ) ) ) $ ( if false then d49 else d105 )
        d184 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> ( ( Set -> Set ) ∋ ( ( λ x1870 -> if false then x1860 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d184 = if ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> d66 ) ) ) $ ( d77 ) then if d145 then d45 else d77 else if true then d73 else d145
        d188 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if d131 then true else x1890 ) ) ) $ ( if d171 then false else false )