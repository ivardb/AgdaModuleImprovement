module Decls50Test19  where
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else x30 ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d1 = if if false then false else false then if true then true else true else if false then true else true
        d4 : if true then ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if x50 then d1 else x50 ) ) ) $ ( if false then d1 else d1 )
        d7 : if false then ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d7 = if if d1 then true else true then if false then d4 else false else if d1 then false else true
        d9 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then Bool else x120 ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x100 then x110 else true ) ) ) $ ( x100 ) ) ) ) $ ( if true then false else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then Bool else x160 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = if ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( d9 ) then if false then true else d1 else ( ( Bool -> Bool ) ∋ ( ( λ x150 -> false ) ) ) $ ( false )
        d18 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( Bool )
        d18 = if ( ( Bool -> Bool ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( false ) then if true then true else d7 else ( ( Bool -> Bool ) ∋ ( ( λ x200 -> d1 ) ) ) $ ( true )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if true then x260 else x250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if x230 then d4 else true ) ) ) $ ( d4 ) ) ) ) $ ( if false then true else d13 )
        d27 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if d18 then true else x280 ) ) ) $ ( d18 ) ) ) ) $ ( if true then d13 else false )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> if true then Bool else Bool ) ) ) $ ( x340 ) ) ) ) $ ( if true then Bool else Bool )
        d31 = if ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d7 ) ) ) $ ( d13 ) then if d7 then d9 else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x330 -> false ) ) ) $ ( d4 )
        d36 : if true then ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d36 = if if d27 then d22 else d13 then if d22 then d1 else d13 else if true then d4 else d9
        d38 : if false then ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if false then d18 else x400 ) ) ) $ ( x390 ) ) ) ) $ ( if d9 then d18 else d13 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x450 -> if true then x450 else Bool ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if x440 then x440 else d18 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
        d46 : if true then ( ( Set -> Set ) ∋ ( ( λ x490 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x500 -> x500 ) ) ) $ ( Bool )
        d46 = if ( ( Bool -> Bool ) ∋ ( ( λ x470 -> true ) ) ) $ ( d7 ) then if d36 then d22 else false else ( ( Bool -> Bool ) ∋ ( ( λ x480 -> d7 ) ) ) $ ( false )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x540 -> if true then Bool else x540 ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if x520 then x530 else d38 ) ) ) $ ( d22 ) ) ) ) $ ( if d46 then d1 else false )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x580 -> ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then Bool else x580 ) ) ) $ ( x580 ) ) ) ) $ ( if true then Bool else Bool )
        d55 = if ( ( Bool -> Bool ) ∋ ( ( λ x560 -> false ) ) ) $ ( true ) then if d18 then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x570 -> true ) ) ) $ ( false )
        d60 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( Bool )
        d60 = if if false then d22 else d55 then ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d4 ) ) ) $ ( d22 ) else ( ( Bool -> Bool ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( true )
        d64 : if false then if false then Bool else Bool else if false then Bool else Bool
        d64 = if ( ( Bool -> Bool ) ∋ ( ( λ x650 -> false ) ) ) $ ( true ) then if false then d1 else d42 else ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( d38 )
        d67 : if true then ( ( Set -> Set ) ∋ ( ( λ x690 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if x680 then true else x680 ) ) ) $ ( if d64 then true else d7 )
        d71 : if false then if true then Bool else Bool else if false then Bool else Bool
        d71 = if ( ( Bool -> Bool ) ∋ ( ( λ x720 -> false ) ) ) $ ( false ) then if true then d51 else d55 else ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( true )
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = if if false then d60 else true then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> d4 ) ) ) $ ( true )
        d76 : if true then if true then Bool else Bool else if false then Bool else Bool
        d76 = if if d38 then false else d4 then ( ( Bool -> Bool ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( d31 ) else ( ( Bool -> Bool ) ∋ ( ( λ x780 -> true ) ) ) $ ( d64 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> if false then Bool else x810 ) ) ) $ ( x810 ) ) ) ) $ ( if true then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x800 then x800 else d42 ) ) ) $ ( if false then false else false )
        d83 : if true then ( ( Set -> Set ) ∋ ( ( λ x850 -> x850 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d83 = if if true then d13 else d51 then ( ( Bool -> Bool ) ∋ ( ( λ x840 -> d74 ) ) ) $ ( true ) else if d79 then d38 else false
        d86 : if true then ( ( Set -> Set ) ∋ ( ( λ x900 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d86 = if ( ( Bool -> Bool ) ∋ ( ( λ x870 -> d31 ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x880 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x890 -> d4 ) ) ) $ ( true )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then x940 else x940 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d91 = if ( ( Bool -> Bool ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( true ) then if d74 then d71 else true else ( ( Bool -> Bool ) ∋ ( ( λ x930 -> false ) ) ) $ ( d36 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> if false then Bool else Bool ) ) ) $ ( x980 ) ) ) ) $ ( if false then Bool else Bool )
        d96 = if if d13 then true else d7 then if true then d13 else false else ( ( Bool -> Bool ) ∋ ( ( λ x970 -> false ) ) ) $ ( d22 )
        d100 : if true then ( ( Set -> Set ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1030 -> x1030 ) ) ) $ ( Bool )
        d100 = if if true then d7 else d51 then if true then true else d60 else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> false ) ) ) $ ( true )
        d104 : if false then if true then Bool else Bool else if true then Bool else Bool
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if d31 then false else x1050 ) ) ) $ ( d83 ) ) ) ) $ ( if d18 then false else d31 )
        d107 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> ( ( Set -> Set ) ∋ ( ( λ x1100 -> if false then x1090 else x1100 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d107 = if ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( true ) then if d104 then d104 else d42 else if false then false else true
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> ( ( Set -> Set ) ∋ ( ( λ x1150 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if x1120 then false else x1130 ) ) ) $ ( x1120 ) ) ) ) $ ( if d31 then true else false )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> if d1 then x1170 else x1180 ) ) ) $ ( x1170 ) ) ) ) $ ( if d96 then true else false )
        d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> if false then x1220 else x1220 ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if d83 then x1210 else x1210 ) ) ) $ ( if d104 then d79 else true )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> if false then Bool else x1250 ) ) ) $ ( if false then Bool else Bool )
        d123 = if ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> d13 ) ) ) $ ( false ) then if d67 then true else d55 else if true then d74 else d107
        d126 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1280 else Bool ) ) ) $ ( if true then Bool else Bool )
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if x1270 then x1270 else d31 ) ) ) $ ( if d74 then false else d7 )
        d129 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> if d51 then false else true ) ) ) $ ( d100 ) ) ) ) $ ( if true then d60 else false )
        d133 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> if false then Bool else x1350 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if d91 then d71 else false ) ) ) $ ( if true then true else d100 )
        d137 : if true then ( ( Set -> Set ) ∋ ( ( λ x1380 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( Bool )
        d137 = if if false then false else true then if d74 then d123 else true else if d4 then d126 else d22
        d140 : if true then if true then Bool else Bool else if true then Bool else Bool
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> if x1410 then x1410 else x1410 ) ) ) $ ( if false then true else d83 )
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> if false then x1450 else Bool ) ) ) $ ( if false then Bool else Bool )
        d142 = if ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( true ) then if true then d60 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> false ) ) ) $ ( d36 )
        d146 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> if true then x1480 else Bool ) ) ) $ ( if false then Bool else Bool )
        d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> if x1470 then true else d96 ) ) ) $ ( if false then d18 else d4 )
        d149 : if true then ( ( Set -> Set ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1520 -> x1520 ) ) ) $ ( Bool )
        d149 = if if d133 then false else d71 then if d7 then false else d9 else ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> d74 ) ) ) $ ( d111 )
        d153 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1550 -> Bool ) ) ) $ ( Bool )
        d153 = if if d67 then true else d83 then ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( true ) else if true then true else d1
        d156 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> if d42 then false else d142 ) ) ) $ ( if true then true else d64 )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then x1630 else x1630 ) ) ) $ ( x1620 ) ) ) ) $ ( if true then Bool else Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if x1610 then d146 else d76 ) ) ) $ ( if d42 then d18 else d142 )
        d164 : if true then ( ( Set -> Set ) ∋ ( ( λ x1660 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> if true then d38 else x1650 ) ) ) $ ( if d149 then d96 else true )
        d167 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d167 = if ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> d7 ) ) ) $ ( d7 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> d79 ) ) ) $ ( false ) else if false then true else true
        d171 : if false then ( ( Set -> Set ) ∋ ( ( λ x1740 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d171 = if ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> false ) ) ) $ ( d120 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> x1730 ) ) ) $ ( true ) else if true then d13 else false
        d175 : if false then ( ( Set -> Set ) ∋ ( ( λ x1770 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> if x1760 then d76 else false ) ) ) $ ( if false then d51 else false )
        d178 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if x1790 then d91 else x1790 ) ) ) $ ( if true then d146 else true )
        d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then x1840 else Bool ) ) ) $ ( if true then Bool else Bool )
        d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> if d160 then d46 else d79 ) ) ) $ ( x1820 ) ) ) ) $ ( if d22 then true else d31 )