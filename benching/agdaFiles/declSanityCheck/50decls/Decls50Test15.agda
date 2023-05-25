module Decls50Test15  where
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
        d1 : if true then ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x50 -> x50 ) ) ) $ ( Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x30 then true else x30 ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d6 = if ( ( Bool -> Bool ) ∋ ( ( λ x70 -> false ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( d1 ) else if d1 then d1 else true
        d11 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then Bool else x160 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if ( ( Bool -> Bool ) ∋ ( ( λ x120 -> true ) ) ) $ ( d6 ) then ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x140 -> false ) ) ) $ ( true )
        d17 : if true then if false then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if x180 then d6 else x180 ) ) ) $ ( if false then d1 else true )
        d19 : if false then ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x220 -> x220 ) ) ) $ ( Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if x200 then d17 else d1 ) ) ) $ ( if d6 then true else d1 )
        d23 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( Bool )
        d23 = if ( ( Bool -> Bool ) ∋ ( ( λ x240 -> d11 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x260 -> x260 ) ) ) $ ( d19 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then Bool else x320 ) ) ) $ ( x310 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if x290 then x290 else true ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d33 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then x360 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d33 = if if false then false else d23 then if true then false else d19 else ( ( Bool -> Bool ) ∋ ( ( λ x340 -> false ) ) ) $ ( false )
        d37 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x400 -> x400 ) ) ) $ ( Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if x390 then false else true ) ) ) $ ( x380 ) ) ) ) $ ( if true then false else d28 )
        d41 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x430 -> if true then Bool else Bool ) ) ) $ ( x420 ) ) ) ) $ ( if false then Bool else Bool )
        d41 = if if d23 then d1 else d37 then if d17 then false else false else if false then true else true
        d44 : if true then ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if d37 then d11 else x450 ) ) ) $ ( if d23 then false else false )
        d47 : if false then if false then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if x480 then x480 else d17 ) ) ) $ ( if d11 then d1 else d28 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> if false then Bool else x520 ) ) ) $ ( x510 ) ) ) ) $ ( if true then Bool else Bool )
        d49 = if if d6 then d1 else d17 then ( ( Bool -> Bool ) ∋ ( ( λ x500 -> d6 ) ) ) $ ( true ) else if d41 then d33 else d47
        d53 : if false then ( ( Set -> Set ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d53 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x540 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x550 ) ) ) $ ( true )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then Bool else x600 ) ) ) $ ( if true then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if d37 then x580 else d1 ) ) ) $ ( false ) ) ) ) $ ( if true then d1 else d53 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if false then Bool else x640 ) ) ) $ ( if false then Bool else Bool )
        d61 = if if d33 then d6 else true then ( ( Bool -> Bool ) ∋ ( ( λ x620 -> true ) ) ) $ ( d23 ) else ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( d19 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if x660 then d19 else true ) ) ) $ ( x660 ) ) ) ) $ ( if d33 then d23 else false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = if if true then true else true then if d44 then true else d47 else if d44 then d53 else false
        d72 : if false then if true then Bool else Bool else if true then Bool else Bool
        d72 = if if false then false else false then if false then d23 else false else ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( true )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then x760 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if d49 then x750 else x750 ) ) ) $ ( if d72 then d19 else d72 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> if true then Bool else x810 ) ) ) $ ( x810 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x790 then d6 else d47 ) ) ) $ ( x790 ) ) ) ) $ ( if d72 then false else true )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then x860 else Bool ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if d74 then x840 else d23 ) ) ) $ ( false ) ) ) ) $ ( if true then true else true )
        d87 : if true then if true then Bool else Bool else if true then Bool else Bool
        d87 = if if d17 then d49 else false then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x880 -> d83 ) ) ) $ ( false )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> if true then x940 else x930 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d89 = if ( ( Bool -> Bool ) ∋ ( ( λ x900 -> x900 ) ) ) $ ( d37 ) then ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d69 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( d37 )
        d95 : ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then x960 else x960 ) ) ) $ ( if false then Bool else Bool )
        d95 = if if true then false else true then if false then true else d41 else if false then d17 else false
        d97 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> if true then x1000 else Bool ) ) ) $ ( x1000 ) ) ) ) $ ( if false then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if x980 then false else d19 ) ) ) $ ( x980 ) ) ) ) $ ( if true then false else d11 )
        d102 : if true then ( ( Set -> Set ) ∋ ( ( λ x1040 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> if d95 then false else d11 ) ) ) $ ( if false then false else d33 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then x1090 else Bool ) ) ) $ ( x1090 ) ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if false then x1080 else x1070 ) ) ) $ ( false ) ) ) ) $ ( if d69 then false else d23 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then x1130 else x1130 ) ) ) $ ( x1130 ) ) ) ) $ ( if false then Bool else Bool )
        d111 = if if d95 then true else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( true ) else if true then false else d33
        d115 : if true then if true then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if x1160 then d28 else x1160 ) ) ) $ ( if true then false else d28 )
        d117 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1200 -> x1200 ) ) ) $ ( Bool )
        d117 = if ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> false ) ) ) $ ( d19 ) then if d102 then d28 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> x1190 ) ) ) $ ( d53 )
        d121 : ( ( Set -> Set ) ∋ ( ( λ x1230 -> ( ( Set -> Set ) ∋ ( ( λ x1240 -> if false then Bool else x1240 ) ) ) $ ( x1230 ) ) ) ) $ ( if false then Bool else Bool )
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if d78 then false else false ) ) ) $ ( if false then false else false )
        d125 : if false then ( ( Set -> Set ) ∋ ( ( λ x1280 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1290 -> Bool ) ) ) $ ( Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if d87 then true else d53 ) ) ) $ ( x1260 ) ) ) ) $ ( if true then true else false )
        d130 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> if true then x1320 else x1320 ) ) ) $ ( if true then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if d17 then x1310 else x1310 ) ) ) $ ( if d6 then d37 else false )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d133 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> true ) ) ) $ ( d130 ) else if false then true else d49
        d137 : if false then ( ( Set -> Set ) ∋ ( ( λ x1400 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1410 -> Bool ) ) ) $ ( Bool )
        d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if x1390 then d65 else d53 ) ) ) $ ( true ) ) ) ) $ ( if d57 then false else true )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then x1440 else Bool ) ) ) $ ( x1440 ) ) ) ) $ ( if true then Bool else Bool )
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if x1430 then x1430 else x1430 ) ) ) $ ( if d72 then d23 else d28 )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> if false then x1490 else Bool ) ) ) $ ( if false then Bool else Bool )
        d146 = if ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> d78 ) ) ) $ ( d33 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> d102 ) ) ) $ ( d74 ) else if false then true else d97
        d150 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1530 -> x1530 ) ) ) $ ( Bool )
        d150 = ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> if d17 then d72 else false ) ) ) $ ( d117 ) ) ) ) $ ( if d28 then true else true )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if true then Bool else x1570 ) ) ) $ ( x1560 ) ) ) ) $ ( if false then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if x1550 then d95 else d37 ) ) ) $ ( if d121 then d49 else d106 )
        d158 : ( ( Set -> Set ) ∋ ( ( λ x1600 -> if false then x1600 else x1600 ) ) ) $ ( if true then Bool else Bool )
        d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if false then true else false ) ) ) $ ( if true then false else d17 )
        d161 : if false then ( ( Set -> Set ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1640 -> Bool ) ) ) $ ( Bool )
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if true then false else true ) ) ) $ ( if d37 then true else false )
        d165 : if true then ( ( Set -> Set ) ∋ ( ( λ x1670 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if false then x1660 else true ) ) ) $ ( if false then false else false )
        d168 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1710 -> x1710 ) ) ) $ ( Bool )
        d168 = if ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> x1690 ) ) ) $ ( d97 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> d89 ) ) ) $ ( true ) else if d28 then d17 else d53
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> if false then Bool else Bool ) ) ) $ ( x1750 ) ) ) ) $ ( if false then Bool else Bool )
        d172 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( d117 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( true )
        d177 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then Bool else x1800 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if x1780 then d95 else false ) ) ) $ ( d72 ) ) ) ) $ ( if true then false else false )
        d182 : if true then if true then Bool else Bool else if false then Bool else Bool
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if false then x1830 else d117 ) ) ) $ ( if d177 then d97 else true )
        d184 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1860 -> Bool ) ) ) $ ( Bool )
        d184 = if ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> d130 ) ) ) $ ( d95 ) then if false then d83 else d49 else if false then true else d89
        d187 : if true then ( ( Set -> Set ) ∋ ( ( λ x1910 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1920 -> Bool ) ) ) $ ( Bool )
        d187 = if ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> d172 ) ) ) $ ( d142 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> false ) ) ) $ ( d172 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> false ) ) ) $ ( d184 )
        d193 : if true then if false then Bool else Bool else if false then Bool else Bool
        d193 = if ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( d111 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> x1950 ) ) ) $ ( true ) else if d49 then d87 else d121