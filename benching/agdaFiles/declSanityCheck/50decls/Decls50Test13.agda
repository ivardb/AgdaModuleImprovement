module Decls50Test13  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( false ) then if false then true else false else if false then false else true
        d4 : if false then ( ( Set -> Set ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if false then x50 else x50 ) ) ) $ ( if d1 then true else d1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d7 = if if d1 then d4 else d1 then if false then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( true )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d11 = if ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d4 ) ) ) $ ( true ) then if d7 then d7 else true else ( ( Bool -> Bool ) ∋ ( ( λ x130 -> d7 ) ) ) $ ( d1 )
        d15 : if false then ( ( Set -> Set ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d1 then d1 else d7 ) ) ) $ ( if false then d11 else d1 )
        d19 : if true then ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x220 -> Bool ) ) ) $ ( Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if false then d11 else false ) ) ) $ ( if d11 then d15 else d11 )
        d23 : if true then ( ( Set -> Set ) ∋ ( ( λ x260 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x270 -> Bool ) ) ) $ ( Bool )
        d23 = if if false then true else d15 then ( ( Bool -> Bool ) ∋ ( ( λ x240 -> d7 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x250 -> x250 ) ) ) $ ( false )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then x310 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( d7 ) then if true then d15 else false else ( ( Bool -> Bool ) ∋ ( ( λ x300 -> d7 ) ) ) $ ( true )
        d33 : if false then ( ( Set -> Set ) ∋ ( ( λ x370 -> x370 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( Bool )
        d33 = if ( ( Bool -> Bool ) ∋ ( ( λ x340 -> x340 ) ) ) $ ( d4 ) then ( ( Bool -> Bool ) ∋ ( ( λ x350 -> x350 ) ) ) $ ( d11 ) else ( ( Bool -> Bool ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( d7 )
        d39 : if true then if false then Bool else Bool else if false then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d23 then d1 else d33 ) ) ) $ ( d7 ) ) ) ) $ ( if d4 then d7 else true )
        d42 : if true then if false then Bool else Bool else if false then Bool else Bool
        d42 = if ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d28 ) ) ) $ ( false ) then if true then false else true else if d1 then false else d28
        d44 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if true then Bool else x470 ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if true then x450 else true ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
        d48 : if false then if false then Bool else Bool else if true then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if x490 then true else x490 ) ) ) $ ( d42 ) ) ) ) $ ( if d4 then d39 else d19 )
        d51 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if x520 then x520 else d28 ) ) ) $ ( d33 ) ) ) ) $ ( if d48 then d19 else d48 )
        d55 : if true then ( ( Set -> Set ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if false then true else d1 ) ) ) $ ( if false then d44 else d4 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then x600 else x600 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = if if d39 then d15 else d39 then if d33 then d42 else false else ( ( Bool -> Bool ) ∋ ( ( λ x590 -> x590 ) ) ) $ ( d51 )
        d62 : if false then ( ( Set -> Set ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( Bool )
        d62 = if if d4 then true else d44 then if d28 then d28 else false else if true then true else true
        d65 : if false then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if false then d23 else x660 ) ) ) $ ( if false then d44 else true )
        d67 : if false then ( ( Set -> Set ) ∋ ( ( λ x690 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if d1 then false else d55 ) ) ) $ ( if d4 then d28 else d7 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d70 = if if false then d19 else d44 then if d11 then d19 else true else ( ( Bool -> Bool ) ∋ ( ( λ x710 -> d65 ) ) ) $ ( false )
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = if ( ( Bool -> Bool ) ∋ ( ( λ x750 -> d15 ) ) ) $ ( d1 ) then ( ( Bool -> Bool ) ∋ ( ( λ x760 -> true ) ) ) $ ( d62 ) else ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d42 ) ) ) $ ( true )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> if false then x810 else x810 ) ) ) $ ( x800 ) ) ) ) $ ( if true then Bool else Bool )
        d78 = if ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d39 ) ) ) $ ( false ) then if d65 then d42 else d28 else if d51 then true else d70
        d82 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> ( ( Bool -> Bool ) ∋ ( ( λ x840 -> if x840 then false else false ) ) ) $ ( true ) ) ) ) $ ( if false then d55 else d7 )
        d86 : if true then ( ( Set -> Set ) ∋ ( ( λ x880 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( Bool )
        d86 = if if true then true else d65 then if d33 then d58 else d19 else ( ( Bool -> Bool ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( false )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then x920 else x920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if true then x910 else true ) ) ) $ ( if d82 then false else d62 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x960 -> ( ( Set -> Set ) ∋ ( ( λ x970 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if false then x950 else true ) ) ) $ ( if d7 then true else true )
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then x1020 else x1030 ) ) ) $ ( x1020 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = if ( ( Bool -> Bool ) ∋ ( ( λ x990 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( d4 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( false )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then x1060 else Bool ) ) ) $ ( if true then Bool else Bool )
        d104 = if if true then d7 else true then ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> false ) ) ) $ ( d1 ) else if true then d11 else false
        d107 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if x1080 then d78 else true ) ) ) $ ( false ) ) ) ) $ ( if false then d86 else d55 )
        d111 : if false then if true then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if d104 then false else false ) ) ) $ ( if d86 then d51 else false )
        d113 : if true then if true then Bool else Bool else if false then Bool else Bool
        d113 = if ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d11 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( d23 ) else if d65 then d15 else d51
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> false ) ) ) $ ( false ) then if d51 then d1 else true else if d11 then false else false
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> if false then x1220 else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( false ) else if false then d65 else d74
        d123 : if true then ( ( Set -> Set ) ∋ ( ( λ x1240 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d123 = if if false then d44 else d62 then if true then false else true else if d78 then d120 else true
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> if true then x1270 else x1270 ) ) ) $ ( if false then Bool else Bool )
        d125 = if if true then true else false then if false then false else false else ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> true ) ) ) $ ( d120 )
        d128 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( Bool )
        d128 = if if d125 then d125 else true then if d123 then true else d15 else if true then d1 else false
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1330 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1340 -> Bool ) ) ) $ ( Bool )
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d58 ) ) ) $ ( d120 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> false ) ) ) $ ( true ) else if true then true else d74
        d135 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1380 -> x1380 ) ) ) $ ( Bool )
        d135 = if ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> true ) ) ) $ ( d28 ) else if true then false else false
        d139 : if false then if true then Bool else Bool else if true then Bool else Bool
        d139 = if ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> d70 ) ) ) $ ( true ) else if d58 then true else false
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then x1440 else Bool ) ) ) $ ( x1440 ) ) ) ) $ ( if true then Bool else Bool )
        d142 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> false ) ) ) $ ( false ) else if d11 then false else d104
        d146 : if true then if false then Bool else Bool else if false then Bool else Bool
        d146 = if ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( d58 ) then if true then d48 else d42 else ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( d23 )
        d149 : if false then ( ( Set -> Set ) ∋ ( ( λ x1520 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1530 -> x1530 ) ) ) $ ( Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if true then d48 else x1500 ) ) ) $ ( true ) ) ) ) $ ( if false then d78 else d123 )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d154 = if if d28 then d142 else true then if true then true else false else if d28 then true else true
        d157 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d157 = if if true then true else true then if d139 then d123 else d42 else ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( true )
        d160 : if false then ( ( Set -> Set ) ∋ ( ( λ x1620 -> x1620 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d160 = if if false then true else true then if d7 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> d44 ) ) ) $ ( true )
        d163 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> if true then x1640 else x1650 ) ) ) $ ( x1640 ) ) ) ) $ ( if true then Bool else Bool )
        d163 = if if d42 then false else d146 then if false then false else d4 else if false then false else d82
        d166 : if true then ( ( Set -> Set ) ∋ ( ( λ x1690 -> x1690 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if d48 then x1670 else x1670 ) ) ) $ ( x1670 ) ) ) ) $ ( if false then false else false )
        d170 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then x1740 else x1730 ) ) ) $ ( x1730 ) ) ) ) $ ( if true then Bool else Bool )
        d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> if d74 then d107 else false ) ) ) $ ( d113 ) ) ) ) $ ( if true then d142 else true )
        d175 : if false then ( ( Set -> Set ) ∋ ( ( λ x1780 -> x1780 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1790 -> Bool ) ) ) $ ( Bool )
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> if d78 then false else d55 ) ) ) $ ( false ) ) ) ) $ ( if false then d90 else false )
        d180 : if false then if true then Bool else Bool else if true then Bool else Bool
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> if x1820 then d139 else x1810 ) ) ) $ ( d175 ) ) ) ) $ ( if d58 then d58 else false )