module Decls50Test7  where
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
        d1 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then x20 else x20 ) ) ) $ ( x20 ) ) ) ) $ ( if false then false else true )
        d5 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if false then x60 else d1 ) ) ) $ ( if d1 then d1 else d1 )
        d8 : if false then ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x110 -> x110 ) ) ) $ ( Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if true then d5 else x90 ) ) ) $ ( if d5 then d1 else false )
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if true then false else false ) ) ) $ ( if false then d1 else d8 )
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if true then false else d1 then ( ( Bool -> Bool ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( d12 ) else if false then d5 else false
        d16 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then Bool else x190 ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if false then x170 else false ) ) ) $ ( d5 ) ) ) ) $ ( if false then d14 else d5 )
        d20 : if true then if false then Bool else Bool else if true then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if x210 then d16 else x210 ) ) ) $ ( if true then d8 else d1 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if true then Bool else x260 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d8 then x240 else d20 ) ) ) $ ( true ) ) ) ) $ ( if true then d16 else false )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then x300 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d27 = if ( ( Bool -> Bool ) ∋ ( ( λ x280 -> true ) ) ) $ ( false ) then if true then d5 else d12 else ( ( Bool -> Bool ) ∋ ( ( λ x290 -> x290 ) ) ) $ ( d12 )
        d32 : if true then ( ( Set -> Set ) ∋ ( ( λ x340 -> x340 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x350 -> Bool ) ) ) $ ( Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if x330 then d8 else d27 ) ) ) $ ( if d22 then d12 else false )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x380 -> ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then Bool else x390 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if if d14 then d22 else d27 then ( ( Bool -> Bool ) ∋ ( ( λ x370 -> true ) ) ) $ ( false ) else if false then d8 else d8
        d40 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x430 -> if true then Bool else x420 ) ) ) $ ( x420 ) ) ) ) $ ( if false then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if x410 then x410 else d27 ) ) ) $ ( if true then d1 else d27 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = if ( ( Bool -> Bool ) ∋ ( ( λ x450 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x460 -> true ) ) ) $ ( d40 ) else if true then true else d8
        d48 : if true then if true then Bool else Bool else if false then Bool else Bool
        d48 = if ( ( Bool -> Bool ) ∋ ( ( λ x490 -> true ) ) ) $ ( false ) then if false then false else d40 else ( ( Bool -> Bool ) ∋ ( ( λ x500 -> d44 ) ) ) $ ( true )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x530 -> if false then Bool else x530 ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if true then true else false ) ) ) $ ( if false then d32 else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then x580 else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = if ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d20 ) ) ) $ ( d5 ) then ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d22 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x570 -> x570 ) ) ) $ ( true )
        d59 : if true then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if d40 then d8 else x600 ) ) ) $ ( if d22 then false else d51 )
        d61 : if true then ( ( Set -> Set ) ∋ ( ( λ x640 -> x640 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if d36 then false else d8 ) ) ) $ ( false ) ) ) ) $ ( if d59 then true else d12 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x670 -> ( ( Set -> Set ) ∋ ( ( λ x680 -> if true then x670 else x670 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d66 = if if d20 then d54 else true then if d22 then d27 else d32 else if d1 then d32 else true
        d69 : ( ( Set -> Set ) ∋ ( ( λ x720 -> ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then x730 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if true then false else d40 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d40 )
        d74 : if false then if true then Bool else Bool else if true then Bool else Bool
        d74 = if ( ( Bool -> Bool ) ∋ ( ( λ x750 -> d66 ) ) ) $ ( d27 ) then if d40 then d8 else d51 else ( ( Bool -> Bool ) ∋ ( ( λ x760 -> d5 ) ) ) $ ( d27 )
        d77 : if false then if false then Bool else Bool else if false then Bool else Bool
        d77 = if ( ( Bool -> Bool ) ∋ ( ( λ x780 -> false ) ) ) $ ( d32 ) then if d69 then d44 else d27 else if true then d59 else false
        d79 : if true then ( ( Set -> Set ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x800 then x800 else true ) ) ) $ ( if false then d1 else false )
        d83 : if true then ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x870 -> Bool ) ) ) $ ( Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if true then true else false ) ) ) $ ( d36 ) ) ) ) $ ( if false then d12 else d16 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if false then x890 else Bool ) ) ) $ ( if false then Bool else Bool )
        d88 = if if false then false else true then if true then d14 else true else if false then d40 else true
        d90 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if x910 then d20 else true ) ) ) $ ( false ) ) ) ) $ ( if true then d44 else d40 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x970 -> ( ( Set -> Set ) ∋ ( ( λ x980 -> if false then x970 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d94 = if if d32 then d40 else false then ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d32 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x960 -> d77 ) ) ) $ ( d88 )
        d99 : if true then ( ( Set -> Set ) ∋ ( ( λ x1010 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if false then x1000 else false ) ) ) $ ( if d16 then d8 else d90 )
        d103 : if false then if true then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if true then x1050 else x1040 ) ) ) $ ( d14 ) ) ) ) $ ( if d20 then false else d48 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d106 = if ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> d20 ) ) ) $ ( true ) then if true then d16 else d61 else ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> x1080 ) ) ) $ ( false )
        d110 : if true then ( ( Set -> Set ) ∋ ( ( λ x1130 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if d54 then false else true ) ) ) $ ( d40 ) ) ) ) $ ( if d106 then d27 else d51 )
        d114 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then x1160 else x1160 ) ) ) $ ( x1160 ) ) ) ) $ ( if true then Bool else Bool )
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if false then false else d12 ) ) ) $ ( if d90 then d48 else d27 )
        d118 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> if false then Bool else x1210 ) ) ) $ ( if false then Bool else Bool )
        d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if d8 then d79 else false ) ) ) $ ( d94 ) ) ) ) $ ( if d27 then false else d66 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if d79 then d12 else x1230 ) ) ) $ ( if true then d44 else true )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then x1270 else x1270 ) ) ) $ ( if false then Bool else Bool )
        d125 = if if false then true else d83 then if false then false else d8 else ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> x1260 ) ) ) $ ( true )
        d128 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1300 -> Bool ) ) ) $ ( Bool )
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> if true then false else false ) ) ) $ ( if true then d94 else d125 )
        d131 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> if false then x1320 else x1320 ) ) ) $ ( false ) ) ) ) $ ( if false then d12 else d59 )
        d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> if false then Bool else x1380 ) ) ) $ ( if true then Bool else Bool )
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if x1370 then d131 else true ) ) ) $ ( d51 ) ) ) ) $ ( if false then d77 else true )
        d139 : if false then ( ( Set -> Set ) ∋ ( ( λ x1400 -> x1400 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( Bool )
        d139 = if if true then true else false then if false then false else false else if false then d135 else d12
        d142 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> ( ( Set -> Set ) ∋ ( ( λ x1460 -> if true then x1460 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d142 = if ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> false ) ) ) $ ( true ) then if d94 then false else d27 else ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( false )
        d147 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1510 -> Bool ) ) ) $ ( Bool )
        d147 = if ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> true ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> true ) ) ) $ ( d54 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> true ) ) ) $ ( false )
        d152 : if false then if true then Bool else Bool else if true then Bool else Bool
        d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if false then false else d131 ) ) ) $ ( if false then d131 else d16 )
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> if false then Bool else x1560 ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if false then d1 else x1550 ) ) ) $ ( if d61 then false else false )
        d157 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1590 -> x1590 ) ) ) $ ( Bool )
        d157 = if if true then d147 else true then if false then d20 else d154 else ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( d128 )
        d160 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then Bool else x1620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if true then d114 else d103 ) ) ) $ ( if true then true else d152 )
        d164 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> if true then x1660 else x1660 ) ) ) $ ( if false then Bool else Bool )
        d164 = if if true then d147 else d51 then ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> true ) ) ) $ ( true ) else if d160 then d103 else d79
        d167 : if true then ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d167 = if ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> x1680 ) ) ) $ ( d118 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> true ) ) ) $ ( d79 ) else if d20 then d103 else d77
        d171 : if false then if false then Bool else Bool else if true then Bool else Bool
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if d12 then x1730 else x1720 ) ) ) $ ( false ) ) ) ) $ ( if d59 then d5 else false )
        d174 : ( ( Set -> Set ) ∋ ( ( λ x1760 -> ( ( Set -> Set ) ∋ ( ( λ x1770 -> if false then x1760 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d174 = if ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( d142 ) then if d135 then d48 else false else if d118 then d106 else true
        d178 : if true then ( ( Set -> Set ) ∋ ( ( λ x1800 -> x1800 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d178 = ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> if true then d103 else x1790 ) ) ) $ ( if d8 then false else d1 )