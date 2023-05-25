module Decls50Test5  where
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
        d1 : if false then ( ( Set -> Set ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( Bool )
        d1 = if if true then true else false then if true then false else true else if false then true else false
        d4 : if false then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d1 then d1 else x50 ) ) ) $ ( d1 ) ) ) ) $ ( if false then d1 else d1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x90 else Bool ) ) ) $ ( if false then Bool else Bool )
        d7 = if if d1 then d4 else false then ( ( Bool -> Bool ) ∋ ( ( λ x80 -> false ) ) ) $ ( false ) else if d4 then false else true
        d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then x110 else d7 ) ) ) $ ( if d1 then false else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if x140 then false else d4 ) ) ) $ ( if d1 then d10 else d7 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then x200 else Bool ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if d13 then d10 else d7 ) ) ) $ ( true ) ) ) ) $ ( if d10 then d10 else d1 )
        d21 : if true then ( ( Set -> Set ) ∋ ( ( λ x230 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x240 -> Bool ) ) ) $ ( Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d7 then false else d1 ) ) ) $ ( if false then false else true )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x280 -> if false then Bool else x280 ) ) ) $ ( if true then Bool else Bool )
        d25 = if if d1 then d21 else false then ( ( Bool -> Bool ) ∋ ( ( λ x260 -> d13 ) ) ) $ ( d21 ) else ( ( Bool -> Bool ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( true )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = if ( ( Bool -> Bool ) ∋ ( ( λ x300 -> x300 ) ) ) $ ( false ) then if false then false else d17 else if false then d17 else true
        d32 : if true then ( ( Set -> Set ) ∋ ( ( λ x340 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if false then false else d29 ) ) ) $ ( if d17 then true else d1 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> if false then Bool else x380 ) ) ) $ ( x370 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if true then x360 else true ) ) ) $ ( if true then true else d21 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then Bool else Bool ) ) ) $ ( x410 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if true then false else d21 ) ) ) $ ( if d29 then d32 else true )
        d43 : if false then if true then Bool else Bool else if true then Bool else Bool
        d43 = if ( ( Bool -> Bool ) ∋ ( ( λ x440 -> false ) ) ) $ ( d10 ) then ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x460 -> false ) ) ) $ ( d7 )
        d47 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x500 -> Bool ) ) ) $ ( Bool )
        d47 = if if d13 then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x480 -> d13 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x490 -> false ) ) ) $ ( false )
        d51 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( Bool )
        d51 = if if d7 then d1 else false then ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d47 ) ) ) $ ( d35 ) else ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d13 ) ) ) $ ( true )
        d55 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> if false then x580 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d55 = if ( ( Bool -> Bool ) ∋ ( ( λ x560 -> true ) ) ) $ ( true ) then if true then d1 else true else if d21 then d21 else d21
        d59 : ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d59 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( d25 ) else if false then d29 else false
        d62 : if true then ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if x640 then false else true ) ) ) $ ( false ) ) ) ) $ ( if false then false else d17 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> if true then x700 else x700 ) ) ) $ ( x690 ) ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if false then true else false ) ) ) $ ( true ) ) ) ) $ ( if d39 then true else d32 )
        d71 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x730 -> Bool ) ) ) $ ( Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if false then true else d25 ) ) ) $ ( if false then d21 else d17 )
        d74 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if x760 then d10 else x760 ) ) ) $ ( d71 ) ) ) ) $ ( if false then false else false )
        d78 : if false then ( ( Set -> Set ) ∋ ( ( λ x800 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if false then d25 else d32 ) ) ) $ ( if false then true else false )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then Bool else x840 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if ( ( Bool -> Bool ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( d35 ) then if true then false else false else if d71 then d39 else d78
        d85 : if true then if true then Bool else Bool else if false then Bool else Bool
        d85 = if ( ( Bool -> Bool ) ∋ ( ( λ x860 -> true ) ) ) $ ( d66 ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x870 -> d21 ) ) ) $ ( d66 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if true then x910 else Bool ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if true then true else true ) ) ) $ ( d7 ) ) ) ) $ ( if d74 then false else d47 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then x950 else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if d29 then x930 else x940 ) ) ) $ ( x930 ) ) ) ) $ ( if d32 then d7 else d10 )
        d96 : if false then ( ( Set -> Set ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if true then true else false ) ) ) $ ( if true then d17 else d21 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> if false then Bool else x1020 ) ) ) $ ( if true then Bool else Bool )
        d100 = if if true then false else d10 then if false then true else d55 else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( false )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then x1060 else x1060 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if false then d47 else d25 ) ) ) $ ( d32 ) ) ) ) $ ( if true then d100 else false )
        d108 : if false then if false then Bool else Bool else if false then Bool else Bool
        d108 = if ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> false ) ) ) $ ( d17 ) then if true then d43 else d78 else if true then true else false
        d110 : if true then if true then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if true then false else x1110 ) ) ) $ ( d7 ) ) ) ) $ ( if false then d108 else d88 )
        d113 : if true then ( ( Set -> Set ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1160 -> Bool ) ) ) $ ( Bool )
        d113 = if if true then true else d71 then ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( true ) else if false then true else d17
        d117 : if true then ( ( Set -> Set ) ∋ ( ( λ x1200 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d117 = if ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> x1180 ) ) ) $ ( false ) then if false then d1 else true else ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> false ) ) ) $ ( false )
        d121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if false then true else d51 ) ) ) $ ( true ) ) ) ) $ ( if d51 then false else d103 )
        d124 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then Bool else x1270 ) ) ) $ ( if false then Bool else Bool )
        d124 = if ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d55 ) ) ) $ ( d39 ) else if d85 then false else true
        d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> ( ( Set -> Set ) ∋ ( ( λ x1310 -> if false then x1310 else x1310 ) ) ) $ ( x1300 ) ) ) ) $ ( if false then Bool else Bool )
        d128 = if if d55 then d13 else d88 then if d43 then false else d103 else ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> x1290 ) ) ) $ ( d103 )
        d132 : if true then ( ( Set -> Set ) ∋ ( ( λ x1340 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( Bool )
        d132 = if if true then true else false then ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( true ) else if true then true else d47
        d136 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> if false then Bool else x1390 ) ) ) $ ( x1380 ) ) ) ) $ ( if true then Bool else Bool )
        d136 = if if d103 then d117 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> d21 ) ) ) $ ( d1 ) else if true then d4 else d110
        d140 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> if true then x1430 else Bool ) ) ) $ ( if true then Bool else Bool )
        d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> if x1410 then x1410 else x1420 ) ) ) $ ( x1410 ) ) ) ) $ ( if false then d100 else d81 )
        d144 : if true then ( ( Set -> Set ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1480 -> x1480 ) ) ) $ ( Bool )
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> if d124 then x1460 else d103 ) ) ) $ ( d32 ) ) ) ) $ ( if d21 then d117 else false )
        d149 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then x1520 else x1510 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if x1500 then d62 else x1500 ) ) ) $ ( if true then d121 else d25 )
        d153 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( Bool )
        d153 = ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if false then d59 else false ) ) ) $ ( true ) ) ) ) $ ( if true then false else d1 )
        d157 : if false then ( ( Set -> Set ) ∋ ( ( λ x1590 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> if x1580 then x1580 else d29 ) ) ) $ ( if d62 then false else d55 )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d160 = if ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( d113 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> false ) ) ) $ ( d43 ) else if d13 then d153 else true
        d164 : if false then ( ( Set -> Set ) ∋ ( ( λ x1660 -> x1660 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d164 = if if false then d128 else false then if d7 then d62 else false else ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> d59 ) ) ) $ ( false )
        d167 : if false then ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( Bool )
        d167 = if ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> x1690 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( d140 )
        d173 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( Bool )
        d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> if false then d144 else false ) ) ) $ ( if d144 then true else true )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d176 = if if d110 then false else d160 then if d117 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> x1770 ) ) ) $ ( d39 )
        d179 : if false then if false then Bool else Bool else if false then Bool else Bool
        d179 = if ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( true ) then if d113 then true else false else ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> x1810 ) ) ) $ ( true )
        d182 : if true then ( ( Set -> Set ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d182 = if if true then d35 else true then if true then d17 else false else if false then true else d47