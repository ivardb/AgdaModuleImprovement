module Decls50Test17  where
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
        d1 : if true then ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then x20 else true ) ) ) $ ( x20 ) ) ) ) $ ( if false then true else true )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then x100 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = if ( ( Bool -> Bool ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x80 -> true ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( false )
        d12 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then x140 else Bool ) ) ) $ ( if true then Bool else Bool )
        d12 = if ( ( Bool -> Bool ) ∋ ( ( λ x130 -> true ) ) ) $ ( d1 ) then if true then d1 else d1 else if false then d1 else false
        d15 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else x180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if x170 then x160 else true ) ) ) $ ( x160 ) ) ) ) $ ( if true then d6 else true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = if ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d12 ) ) ) $ ( false ) then if true then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d15 ) ) ) $ ( d12 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if x250 then true else d12 ) ) ) $ ( false ) ) ) ) $ ( if d1 then d20 else d6 )
        d28 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x310 -> Bool ) ) ) $ ( Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if x300 then true else d20 ) ) ) $ ( true ) ) ) ) $ ( if d24 then true else d24 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if true then x350 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if false then false else x330 ) ) ) $ ( d1 ) ) ) ) $ ( if d20 then d6 else true )
        d37 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then x390 else x390 ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if true then x380 else d28 ) ) ) $ ( if d28 then true else d1 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x430 -> if false then x430 else x430 ) ) ) $ ( x420 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = if ( ( Bool -> Bool ) ∋ ( ( λ x410 -> false ) ) ) $ ( d12 ) then if d12 then false else d6 else if false then d24 else d12
        d44 : if false then ( ( Set -> Set ) ∋ ( ( λ x470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d12 then d15 else true ) ) ) $ ( d40 ) ) ) ) $ ( if d1 then d28 else d20 )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if false then d15 else d32 then if d20 then true else d24 else ( ( Bool -> Bool ) ∋ ( ( λ x490 -> d15 ) ) ) $ ( false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if d20 then false else false ) ) ) $ ( if d20 then true else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then x570 else Bool ) ) ) $ ( x570 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if x560 then false else false ) ) ) $ ( d24 ) ) ) ) $ ( if true then true else false )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x610 -> ( ( Set -> Set ) ∋ ( ( λ x620 -> if true then x620 else x610 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if true then d50 else x600 ) ) ) $ ( if d32 then d20 else d28 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x670 -> if true then x670 else x670 ) ) ) $ ( if true then Bool else Bool )
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d1 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( d37 ) else ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( d54 )
        d68 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x720 -> Bool ) ) ) $ ( Bool )
        d68 = if ( ( Bool -> Bool ) ∋ ( ( λ x690 -> x690 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d50 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x710 -> true ) ) ) $ ( false )
        d73 : if true then ( ( Set -> Set ) ∋ ( ( λ x750 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if false then x740 else true ) ) ) $ ( if d12 then d68 else d12 )
        d77 : if true then ( ( Set -> Set ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if x780 then false else d12 ) ) ) $ ( if false then true else false )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if false then x830 else Bool ) ) ) $ ( x830 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = if if false then d32 else d15 then ( ( Bool -> Bool ) ∋ ( ( λ x810 -> true ) ) ) $ ( d12 ) else ( ( Bool -> Bool ) ∋ ( ( λ x820 -> d28 ) ) ) $ ( d1 )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if x860 then true else d63 ) ) ) $ ( if d32 then d37 else d44 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x910 -> ( ( Set -> Set ) ∋ ( ( λ x920 -> if true then Bool else Bool ) ) ) $ ( x910 ) ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if d63 then d15 else x900 ) ) ) $ ( if d73 then true else d6 )
        d93 : ( ( Set -> Set ) ∋ ( ( λ x970 -> if false then x970 else Bool ) ) ) $ ( if false then Bool else Bool )
        d93 = if ( ( Bool -> Bool ) ∋ ( ( λ x940 -> d44 ) ) ) $ ( d12 ) then ( ( Bool -> Bool ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( d73 ) else ( ( Bool -> Bool ) ∋ ( ( λ x960 -> false ) ) ) $ ( true )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> if true then Bool else x1000 ) ) ) $ ( if true then Bool else Bool )
        d98 = if if d59 then d40 else false then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x990 -> d89 ) ) ) $ ( false )
        d101 : if false then ( ( Set -> Set ) ∋ ( ( λ x1030 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d101 = if if false then true else d73 then ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( d80 ) else if d20 then d59 else d59
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then x1070 else x1060 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = if ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( false ) then if true then d24 else d63 else if true then d85 else false
        d108 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( Bool )
        d108 = if ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> d68 ) ) ) $ ( d93 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> false ) ) ) $ ( false )
        d113 : if false then ( ( Set -> Set ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1180 -> Bool ) ) ) $ ( Bool )
        d113 = if ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d59 ) ) ) $ ( d44 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> d44 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( d80 )
        d119 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if true then true else false ) ) ) $ ( if true then d73 else false )
        d122 : if true then if true then Bool else Bool else if false then Bool else Bool
        d122 = if ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> true ) ) ) $ ( d28 ) else if d6 then true else true
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1280 else x1270 ) ) ) $ ( x1270 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if d122 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d77 ) ) ) $ ( d54 ) else if d113 then true else false
        d129 : if true then ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( Bool )
        d129 = if ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d1 ) ) ) $ ( false ) then if false then d1 else d77 else ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d104 ) ) ) $ ( true )
        d134 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if x1350 then true else d15 ) ) ) $ ( if d108 then d119 else d54 )
        d137 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1390 -> Bool ) ) ) $ ( Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if d125 then x1380 else d32 ) ) ) $ ( if true then true else true )
        d140 : if false then ( ( Set -> Set ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1430 -> Bool ) ) ) $ ( Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> if d50 then d108 else d37 ) ) ) $ ( if false then true else d113 )
        d144 : if false then ( ( Set -> Set ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if x1450 then true else d73 ) ) ) $ ( if d119 then false else d89 )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> ( ( Set -> Set ) ∋ ( ( λ x1510 -> if false then x1510 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> if d144 then x1490 else d50 ) ) ) $ ( d20 ) ) ) ) $ ( if d93 then false else d122 )
        d152 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( Bool )
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if d6 then false else d108 ) ) ) $ ( if d93 then d129 else d89 )
        d155 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> if true then x1580 else x1580 ) ) ) $ ( if false then Bool else Bool )
        d155 = if ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> true ) ) ) $ ( d68 ) else if d144 then true else d12
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d159 = if if true then d89 else false then if d32 then d122 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> false ) ) ) $ ( false )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> if false then d20 else d104 ) ) ) $ ( if d85 then d104 else false )
        d165 : if true then ( ( Set -> Set ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d165 = if if false then d113 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> d113 ) ) ) $ ( d134 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> true ) ) ) $ ( d125 )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then x1710 else x1710 ) ) ) $ ( if false then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if x1700 then d165 else x1700 ) ) ) $ ( if d89 then false else false )
        d172 : if true then ( ( Set -> Set ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d172 = if if d1 then d165 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( true )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if false then Bool else x1790 ) ) ) $ ( if false then Bool else Bool )
        d176 = if ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> false ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( d40 ) else if false then d73 else true
        d180 : if true then if true then Bool else Bool else if false then Bool else Bool
        d180 = if ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> d48 ) ) ) $ ( false ) then if d144 then d50 else d129 else ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> d6 ) ) ) $ ( d85 )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> if false then x1850 else x1850 ) ) ) $ ( if false then Bool else Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if x1840 then true else false ) ) ) $ ( if d28 then true else false )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> if true then Bool else x1870 ) ) ) $ ( if true then Bool else Bool )
        d186 = if if d48 then d147 else true then if true then false else true else if d101 then false else d172
        d188 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1900 -> x1900 ) ) ) $ ( Bool )
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> if x1890 then x1890 else x1890 ) ) ) $ ( if d20 then d108 else d119 )
        d191 : if false then ( ( Set -> Set ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( Bool )
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> if x1920 then true else false ) ) ) $ ( x1920 ) ) ) ) $ ( if false then true else false )