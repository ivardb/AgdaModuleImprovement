module Decls50Test1  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if if true then true else false then if false then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( true )
        d5 : if true then ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( Bool )
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> x60 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d1 ) ) ) $ ( true ) else if false then false else false
        d10 : if true then ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d10 = if if d1 then d5 else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( d1 ) else if false then d1 else d1
        d13 : if true then ( ( Set -> Set ) ∋ ( ( λ x150 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x160 -> Bool ) ) ) $ ( Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if d5 then d10 else true ) ) ) $ ( if d10 then d1 else true )
        d17 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( Bool )
        d17 = if if false then true else d10 then if false then true else d13 else ( ( Bool -> Bool ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( true )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x220 -> if false then x220 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if false then x210 else d1 ) ) ) $ ( if d1 then false else true )
        d23 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x250 -> Bool ) ) ) $ ( Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if true then true else false ) ) ) $ ( if d10 then false else false )
        d26 : if false then if false then Bool else Bool else if true then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if d1 then x270 else d1 ) ) ) $ ( if false then true else d5 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then Bool else x310 ) ) ) $ ( if true then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if d5 then x290 else true ) ) ) $ ( false ) ) ) ) $ ( if d13 then d1 else d5 )
        d32 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x350 -> Bool ) ) ) $ ( Bool )
        d32 = if if d13 then d28 else d23 then ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x330 ) ) ) $ ( d17 ) else ( ( Bool -> Bool ) ∋ ( ( λ x340 -> d23 ) ) ) $ ( d1 )
        d36 : if false then if false then Bool else Bool else if false then Bool else Bool
        d36 = if if d5 then d26 else d17 then if false then d17 else d10 else if true then d23 else d28
        d37 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x390 -> Bool ) ) ) $ ( Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if x380 then x380 else x380 ) ) ) $ ( if d36 then d10 else false )
        d40 : if false then ( ( Set -> Set ) ∋ ( ( λ x440 -> x440 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d40 = if ( ( Bool -> Bool ) ∋ ( ( λ x410 -> x410 ) ) ) $ ( d28 ) then ( ( Bool -> Bool ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x430 ) ) ) $ ( true )
        d45 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x480 -> x480 ) ) ) $ ( Bool )
        d45 = if ( ( Bool -> Bool ) ∋ ( ( λ x460 -> d1 ) ) ) $ ( d5 ) then if false then d23 else false else ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d5 ) ) ) $ ( false )
        d49 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x510 -> Bool ) ) ) $ ( Bool )
        d49 = if if d10 then d26 else false then if false then d32 else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x500 -> false ) ) ) $ ( d5 )
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if d36 then false else true then if d20 then d28 else d10 else if true then d37 else true
        d53 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then x560 else x570 ) ) ) $ ( x560 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = if ( ( Bool -> Bool ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d52 ) ) ) $ ( d32 ) else if false then false else false
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if false then x600 else true ) ) ) $ ( x590 ) ) ) ) $ ( if true then true else d20 )
        d61 : if false then ( ( Set -> Set ) ∋ ( ( λ x630 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if false then false else x620 ) ) ) $ ( if d20 then false else true )
        d64 : if false then ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d64 = if ( ( Bool -> Bool ) ∋ ( ( λ x650 -> d45 ) ) ) $ ( d5 ) then if false then d32 else d58 else ( ( Bool -> Bool ) ∋ ( ( λ x660 -> d28 ) ) ) $ ( d45 )
        d68 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool )
        d68 = if if true then false else d5 then if d23 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d45 ) ) ) $ ( d23 )
        d71 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x740 -> Bool ) ) ) $ ( Bool )
        d71 = if if true then true else d26 then ( ( Bool -> Bool ) ∋ ( ( λ x720 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d68 ) ) ) $ ( true )
        d75 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if true then d52 else d20 ) ) ) $ ( if false then true else d28 )
        d78 : if true then ( ( Set -> Set ) ∋ ( ( λ x810 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if d45 then true else x790 ) ) ) $ ( x790 ) ) ) ) $ ( if d49 then d58 else d53 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then x850 else x850 ) ) ) $ ( x840 ) ) ) ) $ ( if true then Bool else Bool )
        d83 = if if d71 then true else d23 then if d71 then true else d10 else if true then true else d53
        d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> ( ( Bool -> Bool ) ∋ ( ( λ x880 -> if d36 then true else true ) ) ) $ ( d10 ) ) ) ) $ ( if false then d64 else d40 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then Bool else x930 ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if d53 then false else true ) ) ) $ ( d1 ) ) ) ) $ ( if true then d86 else false )
        d94 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x960 -> x960 ) ) ) $ ( Bool )
        d94 = if ( ( Bool -> Bool ) ∋ ( ( λ x950 -> false ) ) ) $ ( true ) then if d58 then false else false else if d45 then true else false
        d97 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( Bool )
        d97 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x990 -> d68 ) ) ) $ ( d20 )
        d101 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1030 -> Bool ) ) ) $ ( Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if x1020 then true else true ) ) ) $ ( if d45 then d97 else false )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> if true then x1070 else x1070 ) ) ) $ ( if true then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if false then true else d20 ) ) ) $ ( x1050 ) ) ) ) $ ( if d68 then true else d40 )
        d108 : if false then ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d108 = if if true then d75 else d45 then if true then d71 else d75 else if false then d75 else true
        d110 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> if true then Bool else x1130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if d58 then true else d108 ) ) ) $ ( if false then false else d78 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d114 = if ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( false ) then if d13 then d97 else false else if false then d104 else false
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> if false then Bool else x1210 ) ) ) $ ( x1200 ) ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> if x1190 then true else x1190 ) ) ) $ ( if false then d36 else true )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if d36 then true else d64 ) ) ) $ ( if d53 then d45 else true )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then Bool else x1290 ) ) ) $ ( x1280 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if d114 then false else x1260 ) ) ) $ ( d68 ) ) ) ) $ ( if true then false else false )
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d130 = if ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d36 ) ) ) $ ( d78 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( d26 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> false ) ) ) $ ( true )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if true then Bool else Bool ) ) ) $ ( x1380 ) ) ) ) $ ( if true then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if d10 then x1370 else true ) ) ) $ ( x1360 ) ) ) ) $ ( if true then d28 else true )
        d140 : if false then if false then Bool else Bool else if false then Bool else Bool
        d140 = if ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> true ) ) ) $ ( true ) then if true then true else d71 else ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> true ) ) ) $ ( false )
        d143 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1460 -> Bool ) ) ) $ ( Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if false then x1450 else false ) ) ) $ ( x1440 ) ) ) ) $ ( if d58 then d13 else d125 )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> if false then Bool else x1490 ) ) ) $ ( if true then Bool else Bool )
        d147 = if if d75 then d37 else d37 then if true then d108 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> false ) ) ) $ ( true )
        d150 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then Bool else x1530 ) ) ) $ ( if true then Bool else Bool )
        d150 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> false ) ) ) $ ( d147 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> d58 ) ) ) $ ( d64 )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d110 then true else x1550 ) ) ) $ ( if d40 then d37 else d108 )
        d157 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> if true then x1600 else Bool ) ) ) $ ( x1590 ) ) ) ) $ ( if true then Bool else Bool )
        d157 = if ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> d58 ) ) ) $ ( d61 ) then if d143 then false else d49 else if true then true else false
        d161 : if true then ( ( Set -> Set ) ∋ ( ( λ x1630 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if true then d61 else false ) ) ) $ ( if true then d150 else d108 )
        d164 : if false then ( ( Set -> Set ) ∋ ( ( λ x1660 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d164 = if if d161 then false else d1 then if d154 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> true ) ) ) $ ( d71 )
        d167 : if true then if false then Bool else Bool else if false then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if false then false else d40 ) ) ) $ ( false ) ) ) ) $ ( if d61 then true else false )
        d170 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( Bool )
        d170 = if if false then true else d32 then ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> d1 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> d5 ) ) ) $ ( true )
        d174 : if false then ( ( Set -> Set ) ∋ ( ( λ x1770 -> x1770 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d174 = if if true then d97 else d114 then ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( d71 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> d61 ) ) ) $ ( true )