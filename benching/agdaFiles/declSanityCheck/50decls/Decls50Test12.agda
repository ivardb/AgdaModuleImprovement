module Decls50Test12  where
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
        d1 : if false then ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then false else x30 ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d5 : if true then if false then Bool else Bool else if false then Bool else Bool
        d5 = if ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d1 ) ) ) $ ( d1 ) then if d1 then d1 else false else ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d1 ) ) ) $ ( false )
        d8 : if true then ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if true then true else x90 ) ) ) $ ( if false then true else false )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> if true then Bool else Bool ) ) ) $ ( x130 ) ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if d5 then x120 else false ) ) ) $ ( if false then false else d5 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else Bool ) ) ) $ ( x180 ) ) ) ) $ ( if true then Bool else Bool )
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if x170 then d8 else x170 ) ) ) $ ( d8 ) ) ) ) $ ( if false then false else false )
        d20 : if true then ( ( Set -> Set ) ∋ ( ( λ x230 -> x230 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d5 then false else true ) ) ) $ ( d11 ) ) ) ) $ ( if d8 then true else true )
        d24 : if false then ( ( Set -> Set ) ∋ ( ( λ x270 -> x270 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if false then x250 else x250 ) ) ) $ ( d20 ) ) ) ) $ ( if false then d5 else false )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x320 -> if true then x320 else x320 ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if x300 then x300 else x300 ) ) ) $ ( x300 ) ) ) ) $ ( if true then false else false )
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if false then x340 else false ) ) ) $ ( if d5 then false else d11 )
        d35 : if false then if true then Bool else Bool else if false then Bool else Bool
        d35 = if ( ( Bool -> Bool ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( d20 ) then ( ( Bool -> Bool ) ∋ ( ( λ x370 -> true ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d20 ) ) ) $ ( d11 )
        d39 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x420 -> Bool ) ) ) $ ( Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d15 then true else d5 ) ) ) $ ( d20 ) ) ) ) $ ( if d5 then true else false )
        d43 : if false then if true then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if false then false else d5 ) ) ) $ ( if d20 then d39 else true )
        d45 : if true then ( ( Set -> Set ) ∋ ( ( λ x470 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d24 then x460 else d20 ) ) ) $ ( if true then false else true )
        d48 : if false then ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d48 = if if true then d15 else true then if d5 then d11 else d1 else if d5 then d43 else d20
        d50 : ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then Bool else x530 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if x510 then false else false ) ) ) $ ( x510 ) ) ) ) $ ( if d11 then true else d33 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then x570 else x570 ) ) ) $ ( if false then Bool else Bool )
        d54 = if ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d39 ) ) ) $ ( d5 ) then ( ( Bool -> Bool ) ∋ ( ( λ x560 -> false ) ) ) $ ( d15 ) else if d39 then d45 else d43
        d58 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d58 = if ( ( Bool -> Bool ) ∋ ( ( λ x590 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( true )
        d63 : if true then ( ( Set -> Set ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool )
        d63 = if ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d29 ) ) ) $ ( d58 ) then ( ( Bool -> Bool ) ∋ ( ( λ x650 -> true ) ) ) $ ( true ) else if false then d1 else d58
        d68 : if true then ( ( Set -> Set ) ∋ ( ( λ x710 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if d50 then false else false ) ) ) $ ( d50 ) ) ) ) $ ( if true then d15 else d1 )
        d72 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x730 -> x730 ) ) ) $ ( Bool )
        d72 = if if d33 then true else true then if d20 then false else true else if d8 then d68 else d29
        d74 : if false then ( ( Set -> Set ) ∋ ( ( λ x760 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d74 = if if d54 then d11 else true then if d33 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x750 -> true ) ) ) $ ( d58 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> if false then x800 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d77 = if ( ( Bool -> Bool ) ∋ ( ( λ x780 -> true ) ) ) $ ( d45 ) then if d11 then d39 else true else if d45 then d1 else d45
        d81 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if d5 then d24 else d72 ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d85 : if true then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if x860 then d72 else d58 ) ) ) $ ( if false then true else false )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then x900 else Bool ) ) ) $ ( x900 ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if false then x880 else false ) ) ) $ ( x880 ) ) ) ) $ ( if false then d8 else true )
        d92 : if true then if false then Bool else Bool else if false then Bool else Bool
        d92 = if if d54 then true else d29 then if false then false else d11 else if d72 then true else d33
        d93 : if false then if true then Bool else Bool else if true then Bool else Bool
        d93 = if ( ( Bool -> Bool ) ∋ ( ( λ x940 -> true ) ) ) $ ( d92 ) then if d20 then d29 else d43 else ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d8 ) ) ) $ ( true )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x970 -> if false then x970 else Bool ) ) ) $ ( if false then Bool else Bool )
        d96 = if if false then true else d29 then if false then d11 else false else if d39 then d45 else false
        d98 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if ( ( Bool -> Bool ) ∋ ( ( λ x990 -> true ) ) ) $ ( d81 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> d48 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> false ) ) ) $ ( d1 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> if true then x1070 else x1070 ) ) ) $ ( if false then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> if x1060 then true else x1050 ) ) ) $ ( false ) ) ) ) $ ( if d77 then d48 else false )
        d108 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1100 -> Bool ) ) ) $ ( Bool )
        d108 = if ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> d68 ) ) ) $ ( true ) then if false then d8 else d74 else if d11 then true else d24
        d111 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then x1140 else Bool ) ) ) $ ( x1130 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = if ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d96 ) ) ) $ ( true ) then if d45 then false else true else if true then d58 else false
        d115 : if true then if true then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> if d50 then d48 else d43 ) ) ) $ ( x1160 ) ) ) ) $ ( if d20 then d45 else d15 )
        d118 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if x1200 then false else x1200 ) ) ) $ ( x1190 ) ) ) ) $ ( if d63 then false else false )
        d122 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1240 -> Bool ) ) ) $ ( Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1230 then d15 else x1230 ) ) ) $ ( if d15 then d1 else false )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> if true then x1260 else Bool ) ) ) $ ( if true then Bool else Bool )
        d125 = if if true then d72 else false then if d43 then true else true else if true then d68 else d43
        d127 : if true then ( ( Set -> Set ) ∋ ( ( λ x1300 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d127 = ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> if false then d87 else true ) ) ) $ ( false ) ) ) ) $ ( if d35 then d115 else false )
        d131 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( Bool )
        d131 = if if d45 then true else d63 then ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> true ) ) ) $ ( true ) else if d48 then d74 else d87
        d134 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> ( ( Set -> Set ) ∋ ( ( λ x1370 -> if true then x1360 else Bool ) ) ) $ ( x1360 ) ) ) ) $ ( if false then Bool else Bool )
        d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> if false then x1350 else x1350 ) ) ) $ ( if d118 then true else d8 )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then x1400 else x1400 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if x1390 then true else d39 ) ) ) $ ( if true then true else d72 )
        d142 : if false then ( ( Set -> Set ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if x1430 then false else x1430 ) ) ) $ ( if d1 then true else true )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then x1470 else Bool ) ) ) $ ( if false then Bool else Bool )
        d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> if true then x1460 else x1460 ) ) ) $ ( if true then false else true )
        d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> if false then x1510 else Bool ) ) ) $ ( if false then Bool else Bool )
        d148 = if if false then true else d87 then ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> true ) ) ) $ ( d142 )
        d152 : if true then if false then Bool else Bool else if true then Bool else Bool
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> if false then true else d45 ) ) ) $ ( x1530 ) ) ) ) $ ( if false then true else d127 )
        d155 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> if true then Bool else Bool ) ) ) $ ( x1580 ) ) ) ) $ ( if true then Bool else Bool )
        d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> if d45 then true else d48 ) ) ) $ ( false ) ) ) ) $ ( if true then d131 else false )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then x1630 else x1630 ) ) ) $ ( if true then Bool else Bool )
        d160 = if if false then false else d127 then ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> d50 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> false ) ) ) $ ( false )
        d164 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1670 -> Bool ) ) ) $ ( Bool )
        d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> if d142 then x1660 else true ) ) ) $ ( d104 ) ) ) ) $ ( if true then d48 else d45 )
        d168 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if true then false else x1690 ) ) ) $ ( if d160 then false else false )
        d172 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> ( ( Set -> Set ) ∋ ( ( λ x1750 -> if false then x1750 else x1740 ) ) ) $ ( x1740 ) ) ) ) $ ( if true then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if x1730 then false else d43 ) ) ) $ ( if d131 then true else false )
        d176 : if false then ( ( Set -> Set ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1800 -> Bool ) ) ) $ ( Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if false then x1770 else x1770 ) ) ) $ ( d77 ) ) ) ) $ ( if false then d20 else false )