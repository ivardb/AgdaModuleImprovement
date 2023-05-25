module Decls50Test2  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else Bool ) ) ) $ ( x30 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = if if false then true else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x20 -> false ) ) ) $ ( true )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( d1 ) then if false then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( false )
        d10 : if true then ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d10 = if ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d5 ) ) ) $ ( d1 ) then if d1 then true else d5 else if false then true else d5
        d13 : if true then ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if false then d5 else false ) ) ) $ ( if d5 then d1 else false )
        d16 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then x190 else x190 ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if d5 then d1 else x180 ) ) ) $ ( false ) ) ) ) $ ( if d13 then true else false )
        d20 : if false then if false then Bool else Bool else if true then Bool else Bool
        d20 = if ( ( Bool -> Bool ) ∋ ( ( λ x210 -> true ) ) ) $ ( d16 ) then ( ( Bool -> Bool ) ∋ ( ( λ x220 -> d10 ) ) ) $ ( false ) else if d10 then d1 else d1
        d23 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d23 = if if true then d1 else d13 then ( ( Bool -> Bool ) ∋ ( ( λ x240 -> true ) ) ) $ ( d20 ) else ( ( Bool -> Bool ) ∋ ( ( λ x250 -> d13 ) ) ) $ ( true )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then x320 else Bool ) ) ) $ ( if false then Bool else Bool )
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( d23 ) then ( ( Bool -> Bool ) ∋ ( ( λ x300 -> true ) ) ) $ ( d13 ) else ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d1 ) ) ) $ ( true )
        d33 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if false then x340 else false ) ) ) $ ( d16 ) ) ) ) $ ( if d16 then false else d23 )
        d37 : if false then if true then Bool else Bool else if true then Bool else Bool
        d37 = if if true then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x380 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d10 ) ) ) $ ( d10 )
        d40 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if false then x420 else d33 ) ) ) $ ( x410 ) ) ) ) $ ( if false then d10 else d33 )
        d44 : if true then if true then Bool else Bool else if false then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if false then x450 else d1 ) ) ) $ ( if false then false else d40 )
        d46 : if false then ( ( Set -> Set ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x490 -> Bool ) ) ) $ ( Bool )
        d46 = if ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d10 ) ) ) $ ( d16 ) then if d10 then d37 else d28 else if true then true else d16
        d50 : ( ( Set -> Set ) ∋ ( ( λ x530 -> ( ( Set -> Set ) ∋ ( ( λ x540 -> if true then Bool else x530 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if x520 then d44 else x510 ) ) ) $ ( d13 ) ) ) ) $ ( if false then d13 else false )
        d55 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x580 -> x580 ) ) ) $ ( Bool )
        d55 = if ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d23 ) ) ) $ ( d50 ) then ( ( Bool -> Bool ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( true ) else if false then false else true
        d59 : if true then ( ( Set -> Set ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if d28 then d55 else d44 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false )
        d63 : if false then ( ( Set -> Set ) ∋ ( ( λ x660 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d50 ) ) ) $ ( d16 ) then if d1 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x650 -> d28 ) ) ) $ ( d5 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if x680 then x680 else true ) ) ) $ ( d59 ) ) ) ) $ ( if false then true else false )
        d71 : if false then ( ( Set -> Set ) ∋ ( ( λ x740 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x750 -> Bool ) ) ) $ ( Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if d37 then x730 else d23 ) ) ) $ ( false ) ) ) ) $ ( if d23 then d63 else d13 )
        d76 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> if true then x800 else x790 ) ) ) $ ( x790 ) ) ) ) $ ( if false then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if true then x770 else false ) ) ) $ ( x770 ) ) ) ) $ ( if d71 then d20 else true )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if true then x830 else true ) ) ) $ ( true ) ) ) ) $ ( if d71 then false else true )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> if false then Bool else x890 ) ) ) $ ( x890 ) ) ) ) $ ( if true then Bool else Bool )
        d86 = if ( ( Bool -> Bool ) ∋ ( ( λ x870 -> true ) ) ) $ ( d81 ) then ( ( Bool -> Bool ) ∋ ( ( λ x880 -> x880 ) ) ) $ ( d33 ) else if d1 then d37 else d10
        d91 : if true then ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d91 = if if d10 then false else d81 then ( ( Bool -> Bool ) ∋ ( ( λ x920 -> d76 ) ) ) $ ( d10 ) else if d67 then d10 else true
        d94 : ( ( Set -> Set ) ∋ ( ( λ x970 -> if false then x970 else Bool ) ) ) $ ( if false then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> if d10 then false else x960 ) ) ) $ ( false ) ) ) ) $ ( if d46 then d13 else d1 )
        d98 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1020 -> Bool ) ) ) $ ( Bool )
        d98 = if ( ( Bool -> Bool ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( d59 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d76 ) ) ) $ ( true )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> if true then x1050 else Bool ) ) ) $ ( if false then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if x1040 then x1040 else true ) ) ) $ ( if true then true else true )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> ( ( Set -> Set ) ∋ ( ( λ x1090 -> if false then Bool else Bool ) ) ) $ ( x1080 ) ) ) ) $ ( if true then Bool else Bool )
        d106 = if ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> d86 ) ) ) $ ( d5 ) then if d86 then d94 else d28 else if false then d13 else d16
        d110 : if false then ( ( Set -> Set ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d110 = if if true then false else true then if d1 then d63 else d55 else if d44 then d50 else d94
        d112 : if false then if false then Bool else Bool else if true then Bool else Bool
        d112 = if if d106 then d55 else true then if true then d13 else d81 else ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> d94 ) ) ) $ ( false )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> if false then x1180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if true then d1 else x1160 ) ) ) $ ( d106 ) ) ) ) $ ( if d76 then false else d13 )
        d119 : if true then ( ( Set -> Set ) ∋ ( ( λ x1220 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1230 -> Bool ) ) ) $ ( Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1200 then true else d98 ) ) ) $ ( false ) ) ) ) $ ( if d10 then true else false )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> if false then Bool else x1260 ) ) ) $ ( if false then Bool else Bool )
        d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if d67 then d63 else d103 ) ) ) $ ( if true then d20 else true )
        d127 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> ( ( Set -> Set ) ∋ ( ( λ x1310 -> if false then x1300 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d127 = if ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( d63 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( true ) else if d98 then d63 else d1
        d132 : if true then ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if d94 then true else d106 ) ) ) $ ( if true then false else true )
        d135 : if false then ( ( Set -> Set ) ∋ ( ( λ x1380 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if false then true else true ) ) ) $ ( true ) ) ) ) $ ( if d110 then d5 else true )
        d139 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> ( ( Set -> Set ) ∋ ( ( λ x1430 -> if true then x1420 else x1430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> if false then x1410 else x1410 ) ) ) $ ( d110 ) ) ) ) $ ( if d40 then d119 else false )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> if true then Bool else x1460 ) ) ) $ ( if true then Bool else Bool )
        d144 = if ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> d91 ) ) ) $ ( d110 ) then if d91 then d40 else false else if d91 then d76 else d86
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> ( ( Set -> Set ) ∋ ( ( λ x1500 -> if true then x1500 else x1490 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d147 = if if true then true else false then if true then true else d10 else ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> d55 ) ) ) $ ( d20 )
        d151 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then x1530 else x1530 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d151 = if if d139 then d71 else false then if false then d119 else d76 else if false then d13 else false
        d154 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if true then x1560 else x1550 ) ) ) $ ( x1550 ) ) ) ) $ ( if d81 then true else d139 )
        d158 : if false then ( ( Set -> Set ) ∋ ( ( λ x1600 -> x1600 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1610 -> Bool ) ) ) $ ( Bool )
        d158 = if ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d139 ) ) ) $ ( d16 ) then if d28 then d98 else true else if d98 then true else d23
        d162 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then Bool else Bool ) ) ) $ ( x1640 ) ) ) ) $ ( if false then Bool else Bool )
        d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> if d144 then x1630 else d147 ) ) ) $ ( if true then true else true )
        d166 : if false then ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1690 -> x1690 ) ) ) $ ( Bool )
        d166 = if if d132 then true else false then if true then true else d112 else ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> x1670 ) ) ) $ ( true )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> if true then x1720 else x1720 ) ) ) $ ( if false then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if d98 then d81 else x1710 ) ) ) $ ( if d91 then true else false )
        d173 : if false then if true then Bool else Bool else if false then Bool else Bool
        d173 = if ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> d1 ) ) ) $ ( d67 ) then if true then d55 else d106 else ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( d135 )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then Bool else Bool ) ) ) $ ( x1790 ) ) ) ) $ ( if true then Bool else Bool )
        d176 = if ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> false ) ) ) $ ( d135 ) then if d124 then true else d10 else ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> d162 ) ) ) $ ( true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then Bool else x1830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if true then d1 else x1820 ) ) ) $ ( if false then true else d23 )
        d185 : if true then ( ( Set -> Set ) ∋ ( ( λ x1870 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> if x1860 then false else false ) ) ) $ ( if d63 then d44 else d166 )
        d188 : if false then if true then Bool else Bool else if false then Bool else Bool
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> if x1900 then x1900 else false ) ) ) $ ( true ) ) ) ) $ ( if d59 then d103 else d71 )
        d191 : if false then ( ( Set -> Set ) ∋ ( ( λ x1930 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( Bool )
        d191 = if if true then false else false then if d106 then true else d59 else ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> d55 ) ) ) $ ( false )