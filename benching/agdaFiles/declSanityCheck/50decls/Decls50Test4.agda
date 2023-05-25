module Decls50Test4  where
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
        d1 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x40 -> x40 ) ) ) $ ( Bool )
        d1 = if if false then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x30 -> false ) ) ) $ ( true )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d5 = if if true then d1 else true then ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( d1 ) else if true then false else d1
        d8 : if true then ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool )
        d8 = if if false then d1 else true then ( ( Bool -> Bool ) ∋ ( ( λ x90 -> d1 ) ) ) $ ( d5 ) else if true then d1 else d5
        d12 : if true then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if true then true else x130 ) ) ) $ ( x130 ) ) ) ) $ ( if d8 then d1 else d8 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then Bool else x180 ) ) ) $ ( if true then Bool else Bool )
        d15 = if if true then d8 else false then ( ( Bool -> Bool ) ∋ ( ( λ x160 -> d1 ) ) ) $ ( d8 ) else ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d5 ) ) ) $ ( true )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x220 -> if false then Bool else x220 ) ) ) $ ( if true then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if x200 then x210 else x210 ) ) ) $ ( false ) ) ) ) $ ( if d1 then false else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then x250 else Bool ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if false then d12 else x240 ) ) ) $ ( if true then false else d19 )
        d26 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if x270 then false else false ) ) ) $ ( if d12 then true else true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if true then Bool else x320 ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if false then false else x300 ) ) ) $ ( x300 ) ) ) ) $ ( if d19 then d12 else d5 )
        d33 : if true then if false then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if d12 then d29 else d26 ) ) ) $ ( d12 ) ) ) ) $ ( if d1 then false else d5 )
        d36 : if true then if true then Bool else Bool else if false then Bool else Bool
        d36 = if ( ( Bool -> Bool ) ∋ ( ( λ x370 -> true ) ) ) $ ( true ) then if true then false else d12 else if d23 then true else true
        d38 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then Bool else x390 ) ) ) $ ( if false then Bool else Bool )
        d38 = if if false then false else d26 then if true then d23 else true else if d8 then d12 else d12
        d40 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> if false then Bool else Bool ) ) ) $ ( x430 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if d26 then x410 else x410 ) ) ) $ ( d38 ) ) ) ) $ ( if d26 then d12 else true )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then Bool else x470 ) ) ) $ ( if false then Bool else Bool )
        d45 = if ( ( Bool -> Bool ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( false ) then if d19 then d38 else d23 else if d36 then d1 else false
        d48 : if true then ( ( Set -> Set ) ∋ ( ( λ x500 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if false then d26 else d26 ) ) ) $ ( if false then d38 else d23 )
        d51 : if true then ( ( Set -> Set ) ∋ ( ( λ x530 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if d5 then x520 else true ) ) ) $ ( if d12 then false else d40 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then x570 else x570 ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if x560 then false else x550 ) ) ) $ ( false ) ) ) ) $ ( if d29 then true else d36 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then x620 else x620 ) ) ) $ ( if true then Bool else Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( d48 ) else ( ( Bool -> Bool ) ∋ ( ( λ x610 -> true ) ) ) $ ( d36 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x670 -> ( ( Set -> Set ) ∋ ( ( λ x680 -> if true then Bool else x680 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d58 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( d48 )
        d69 : if true then ( ( Set -> Set ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d69 = if if true then d12 else false then ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d19 ) ) ) $ ( d8 ) else if d26 then true else d40
        d72 : ( ( Set -> Set ) ∋ ( ( λ x750 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if x740 then x730 else x740 ) ) ) $ ( d58 ) ) ) ) $ ( if d15 then d1 else d19 )
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if true then x780 else d58 ) ) ) $ ( true ) ) ) ) $ ( if d12 then d58 else true )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x830 -> if false then x830 else x830 ) ) ) $ ( if false then Bool else Bool )
        d79 = if ( ( Bool -> Bool ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x810 -> false ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( true )
        d84 : if false then ( ( Set -> Set ) ∋ ( ( λ x870 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x880 -> Bool ) ) ) $ ( Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if x860 then x860 else d33 ) ) ) $ ( d51 ) ) ) ) $ ( if false then d45 else d76 )
        d89 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then Bool else x910 ) ) ) $ ( if false then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if x900 then true else false ) ) ) $ ( if false then d79 else d48 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> if true then Bool else x940 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if x930 then x930 else true ) ) ) $ ( if d8 then true else d58 )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if true then true else d15 then ( ( Bool -> Bool ) ∋ ( ( λ x970 -> x970 ) ) ) $ ( d33 ) else ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d69 ) ) ) $ ( d69 )
        d99 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( Bool )
        d99 = if if d23 then d84 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( d33 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> d12 ) ) ) $ ( d45 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> if false then Bool else x1050 ) ) ) $ ( if false then Bool else Bool )
        d103 = if if d54 then d89 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> d99 ) ) ) $ ( true ) else if d33 then d8 else d76
        d106 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1090 -> Bool ) ) ) $ ( Bool )
        d106 = if ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> d38 ) ) ) $ ( true ) then if d40 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d8 ) ) ) $ ( d40 )
        d110 : if false then ( ( Set -> Set ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1130 -> Bool ) ) ) $ ( Bool )
        d110 = if ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> x1110 ) ) ) $ ( d99 ) then if d92 then false else d58 else if d106 then false else d96
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then Bool else x1170 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d114 = if ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> d92 ) ) ) $ ( true ) then if true then d96 else d29 else if d110 then d8 else d40
        d118 : if false then if false then Bool else Bool else if false then Bool else Bool
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if true then false else false ) ) ) $ ( if d36 then d69 else d106 )
        d120 : if false then if false then Bool else Bool else if true then Bool else Bool
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if x1220 then x1210 else true ) ) ) $ ( true ) ) ) ) $ ( if d15 then false else d15 )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> if true then Bool else x1260 ) ) ) $ ( x1250 ) ) ) ) $ ( if true then Bool else Bool )
        d123 = if if d36 then d58 else d54 then ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( d40 ) else if d114 then d96 else d72
        d127 : if false then ( ( Set -> Set ) ∋ ( ( λ x1290 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d127 = if ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( d92 ) then if false then d58 else d8 else if true then d54 else d106
        d130 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> if true then x1330 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if true then x1310 else d15 ) ) ) $ ( d23 ) ) ) ) $ ( if false then false else d29 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1390 -> if true then x1390 else Bool ) ) ) $ ( if true then Bool else Bool )
        d135 = if ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> d89 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> false ) ) ) $ ( d118 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> d33 ) ) ) $ ( true )
        d140 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( Bool )
        d140 = if if d19 then d114 else d96 then if d5 then false else d8 else if false then d76 else d76
        d142 : if false then ( ( Set -> Set ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1450 -> Bool ) ) ) $ ( Bool )
        d142 = if if true then d5 else d114 then ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( true ) else if d63 then false else d118
        d146 : if false then if true then Bool else Bool else if true then Bool else Bool
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> if d103 then d89 else true ) ) ) $ ( if false then d51 else d33 )
        d148 : if false then if false then Bool else Bool else if true then Bool else Bool
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if d106 then x1490 else d99 ) ) ) $ ( x1490 ) ) ) ) $ ( if true then true else d72 )
        d151 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d151 = if ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> d1 ) ) ) $ ( d51 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> true ) ) ) $ ( d106 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> d92 ) ) ) $ ( false )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> ( ( Set -> Set ) ∋ ( ( λ x1580 -> if false then x1580 else x1570 ) ) ) $ ( x1570 ) ) ) ) $ ( if false then Bool else Bool )
        d156 = if if d142 then d151 else true then if d5 then true else false else if true then false else false
        d159 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d159 = if ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> false ) ) ) $ ( d19 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> true ) ) ) $ ( d130 )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> if false then Bool else x1670 ) ) ) $ ( x1670 ) ) ) ) $ ( if false then Bool else Bool )
        d164 = if ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( d89 ) then if true then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> d12 ) ) ) $ ( d8 )
        d169 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> ( ( Set -> Set ) ∋ ( ( λ x1730 -> if true then x1730 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> if true then x1700 else d45 ) ) ) $ ( d110 ) ) ) ) $ ( if true then d92 else d26 )
        d174 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1760 -> x1760 ) ) ) $ ( Bool )
        d174 = if if true then false else d69 then ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( d106 ) else if d140 then d5 else false
        d177 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then Bool else Bool ) ) ) $ ( x1790 ) ) ) ) $ ( if true then Bool else Bool )
        d177 = if if true then false else d89 then ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> d8 ) ) ) $ ( d84 ) else if d118 then d114 else d69
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> if true then x1840 else x1840 ) ) ) $ ( if false then Bool else Bool )
        d181 = if ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> true ) ) ) $ ( d8 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( true ) else if true then d148 else d174