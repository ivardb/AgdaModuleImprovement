module TypeSize50Test4  where
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

    module M ( p10 : if true then Bool else Bool )  where
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
            d4 : if false then ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x50 ) ) ) $ ( x50 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then x70 else x70 ) ) ) $ ( if false then Bool else Bool )
            d4 = if if true then false else p10 then if p10 then true else true else if true then true else p20
            d8 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then x90 else Bool ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d8 = if if p20 then false else d4 then if d4 then p20 else d4 else if d4 then false else true
            d12 : if false then ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then x150 else x150 ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> d4 ) ) ) $ ( x130 ) ) ) ) $ ( if d4 then p20 else d8 )
            d16 : ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> if false then if true then x170 else x180 else if true then Bool else x170 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then x190 else x190 ) ) ) $ ( x170 ) ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d16 = if if d12 then d4 else d12 then if false then p10 else d4 else if d4 then p20 else false
            d20 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then x210 else x250 ) ) ) $ ( x210 ) ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d20 = if if false then true else p10 then if p20 then true else p10 else if true then p20 else false
            d26 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x310 -> if false then x290 else x290 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then Bool else x320 ) ) ) $ ( if true then Bool else Bool ) )
            d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> if true then d16 else x270 ) ) ) $ ( if p20 then d12 else p10 )
            d33 : if false then ( ( Set -> Set ) ∋ ( ( λ x350 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d26 then true else p20 ) ) ) $ ( if d12 then p10 else true )
            d36 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if p10 then d20 else p10 ) ) ) $ ( if p10 then true else true )
            d38 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then if true then x390 else x390 else ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then x390 else x400 ) ) ) $ ( x390 ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d38 = if if true then true else false then if d26 then d12 else false else if p20 then p10 else false
            d41 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x440 -> ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d36 ) ) ) $ ( d8 ) ) ) ) $ ( if d36 then false else p20 )
            d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then ( ( Set -> Set ) ∋ ( ( λ x500 -> if true then x500 else x490 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then x510 else x510 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
            d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> false ) ) ) $ ( p20 ) ) ) ) $ ( if p20 then d36 else d16 )
            d52 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x550 -> ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( x550 ) ) ) ) $ ( if false then Bool else Bool )
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> ( ( Bool -> Bool ) ∋ ( ( λ x540 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if false then p20 else d41 )
            d57 : ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then if true then x580 else Bool else ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then Bool else Bool ) ) ) $ ( x580 ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d57 = if if d16 then d12 else false then if p20 then d33 else d16 else if p10 then p20 else d46
            d60 : if false then ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
            d60 = if if p10 then false else true then if d4 then d41 else d16 else if false then p20 else d12
            d62 : ( ( Set -> Set ) ∋ ( ( λ x630 -> if true then if false then x630 else x630 else if true then Bool else x630 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( x640 ) ) ) ) $ ( if false then Bool else Bool ) )
            d62 = if if false then p20 else p20 then if p20 then d26 else p20 else if p10 then p10 else d16
            d66 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
            d66 = if if false then p20 else p20 then if d52 then d57 else false else if p20 then true else true
            d67 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d67 = if if p20 then d20 else d33 then if true then d36 else p10 else if true then p20 else d57
            d68 : if true then ( ( Set -> Set ) ∋ ( ( λ x690 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then x700 else Bool ) ) ) $ ( if true then Bool else Bool )
            d68 = if if p20 then true else p10 then if true then d4 else true else if d16 then p10 else d33
            d71 : if true then ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then x720 else x720 ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d71 = if if false then p20 else p20 then if d36 then p10 else d36 else if d60 then p20 else p10
            d73 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
            d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if x740 then false else false ) ) ) $ ( if true then false else p10 )
            d75 : ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> ( ( Set -> Set ) ∋ ( ( λ x780 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else x770 ) ) ) ) $ ( if true then Bool else x760 ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d75 = if if d67 then p20 else p20 then if d4 then p10 else p20 else if p10 then p20 else true
            d79 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> if false then if true then x810 else Bool else if true then x810 else Bool ) ) ) $ ( if true then x810 else x810 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x830 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if d4 then d66 else d73 ) ) ) $ ( if d62 then d52 else d16 )
            d84 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if false then if true then x850 else x850 else if true then Bool else x850 ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d84 = if if d12 then d20 else p10 then if false then d73 else true else if d38 then true else p10
            d86 : if false then ( ( Set -> Set ) ∋ ( ( λ x870 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> Bool ) ) ) $ ( x870 ) ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
            d86 = if if d79 then true else p10 then if true then d67 else true else if true then p20 else p20
            d89 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> if d26 then p10 else false ) ) ) $ ( if d60 then d12 else d71 )
            d92 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then x960 else x950 ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x970 -> if false then x970 else x940 ) ) ) $ ( x940 ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if d33 then true else false ) ) ) $ ( if d84 then d26 else p20 )
            d98 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> x990 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d98 = if if d41 then d79 else d36 then if true then d60 else d8 else if d46 then true else d86
            d101 : if false then ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
            d101 = if if d66 then d89 else false then if p20 then p20 else d20 else if d20 then d89 else p10
            d104 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then if false then Bool else x1060 else ( ( Set -> Set ) ∋ ( ( λ x1070 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then x1080 else Bool ) ) ) $ ( if true then Bool else Bool ) )
            d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d16 then true else true ) ) ) $ ( if d36 then p20 else d89 )
            d109 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> if false then x1100 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then x1100 else x1100 ) ) ) ) $ ( if true then x1100 else x1100 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then x1140 else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d109 = if if false then p20 else d38 then if d20 then p20 else d68 else if d71 then d60 else d12
            d115 : if false then ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then Bool else x1160 ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d115 = if if false then p10 else true then if d46 then d33 else d68 else if true then d16 else d68
            d117 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> ( ( Set -> Set ) ∋ ( ( λ x1220 -> if true then Bool else Bool ) ) ) $ ( x1190 ) ) ) ) $ ( if false then x1200 else x1190 ) ) ) ) $ ( if false then x1190 else x1190 ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d117 = ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> if true then p10 else true ) ) ) $ ( if d46 then false else false )
            d123 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> if false then if false then x1260 else Bool else if false then x1260 else Bool ) ) ) $ ( if false then Bool else x1260 ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> d67 ) ) ) $ ( true ) ) ) ) $ ( if p20 then p10 else d46 )
            d128 : if false then ( ( Set -> Set ) ∋ ( ( λ x1290 -> ( ( Set -> Set ) ∋ ( ( λ x1300 -> Bool ) ) ) $ ( x1290 ) ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
            d128 = if if false then d38 else p20 then if false then d12 else false else if p20 then d33 else d86
            d131 : if true then ( ( Set -> Set ) ∋ ( ( λ x1320 -> if true then x1320 else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1330 -> if false then x1330 else x1330 ) ) ) $ ( if false then Bool else Bool )
            d131 = if if d41 then true else true then if false then d66 else true else if true then p10 else false
            d134 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> if false then if true then x1350 else Bool else if true then x1350 else Bool ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
            d134 = if if p10 then false else d71 then if p10 then d46 else p10 else if p20 then d68 else false
            d136 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> ( ( Set -> Set ) ∋ ( ( λ x1400 -> if true then x1380 else Bool ) ) ) $ ( x1370 ) ) ) ) $ ( if false then x1380 else x1370 ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d136 = if if p10 then true else d57 then if false then false else p20 else if d41 then true else d86
            d141 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
            d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> true ) ) ) $ ( true ) ) ) ) $ ( if p10 then p10 else d98 )
            d144 : if false then ( ( Set -> Set ) ∋ ( ( λ x1450 -> ( ( Set -> Set ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( x1450 ) ) ) ) $ ( if false then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
            d144 = if if d98 then d68 else p20 then if d141 then p20 else d115 else if true then d71 else p10
            d147 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d147 = if if d52 then p10 else d73 then if d71 then p20 else true else if d60 then p10 else d46
        module M1'  = M1 ( p10 ) 
    d148 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1500 -> ( ( Set -> Set ) ∋ ( ( λ x1510 -> Bool ) ) ) $ ( x1500 ) ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( M.M1.d66 ) $ ( ( M.M1'.d41 ) $ ( ( ( M.M1.d75 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( true ) )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> ( ( Set -> Set ) ∋ ( ( λ x1540 -> ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else x1530 ) ) ) ) $ ( if true then x1530 else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d152 = ( ( M.M1.d38 ) $ ( ( M.M1'.d147 ) $ ( if d148 then d148 else d148 ) ) ) $ ( ( M.M1'.d101 ) $ ( ( M.M1'.d115 ) $ ( ( M.M1'.d57 ) $ ( if false then false else d148 ) ) ) )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> if true then x1580 else x1590 ) ) ) $ ( if true then Bool else x1590 ) ) ) ) $ ( if true then Bool else x1580 ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d157 = if if false then false else false then if d152 then false else d152 else if false then d148 else true
    d161 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then Bool else x1620 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d161 = ( M.M1'.d73 ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d141 ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d128 ) $ ( d152 ) ) $ ( d157 ) ) ) ) $ ( ( M.M1'.d92 ) $ ( ( ( M.M1.d8 ) $ ( d157 ) ) $ ( true ) ) ) ) )
    d164 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
    d164 = ( M.M1'.d38 ) $ ( ( M.M1'.d71 ) $ ( ( M.M1'.d123 ) $ ( ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( M.M1'.d136 ) $ ( ( M.M1'.d41 ) $ ( ( ( M.M1.d84 ) $ ( if d152 then d152 else x1650 ) ) $ ( if x1650 then d148 else true ) ) ) ) ) ) $ ( if d152 then d148 else d161 ) ) ) ) )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then Bool else Bool ) ) ) $ ( x1670 ) else ( ( Set -> Set ) ∋ ( ( λ x1690 -> if false then x1670 else x1670 ) ) ) $ ( x1670 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1700 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d166 = if if true then true else true then if d161 then true else true else if d161 then false else d157
    d171 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> if false then if true then x1730 else Bool else if true then Bool else x1730 ) ) ) $ ( if false then x1730 else x1730 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1750 -> if false then x1750 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d171 = ( ( M.M1.d71 ) $ ( ( ( M.M1.d4 ) $ ( false ) ) $ ( d166 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> d157 ) ) ) $ ( d152 ) )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then x1800 else Bool ) ) ) $ ( if true then x1790 else x1780 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then Bool else x1810 ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d176 = ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> ( M.M1'.d68 ) $ ( ( ( M.M1.d41 ) $ ( if x1770 then x1770 else d152 ) ) $ ( if x1770 then d152 else x1770 ) ) ) ) ) $ ( if d161 then false else d164 ) )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> if true then if false then Bool else x1840 else ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then Bool else x1850 ) ) ) $ ( x1840 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1860 -> ( ( Set -> Set ) ∋ ( ( λ x1870 -> x1870 ) ) ) $ ( x1860 ) ) ) ) $ ( if true then Bool else Bool ) )
    d182 = ( M.M1'.d71 ) $ ( ( ( M.M1.d123 ) $ ( ( M.M1'.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d164 ) )
    d188 : if true then ( ( Set -> Set ) ∋ ( ( λ x1910 -> ( ( Set -> Set ) ∋ ( ( λ x1920 -> x1920 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1930 -> ( ( Set -> Set ) ∋ ( ( λ x1940 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> d152 ) ) ) $ ( d164 ) ) ) ) $ ( if d148 then true else false )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> ( ( Set -> Set ) ∋ ( ( λ x1970 -> if true then if false then x1970 else Bool else if false then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1980 -> if false then Bool else x1960 ) ) ) $ ( x1960 ) ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d195 = ( M.M1'.d20 ) $ ( if if false then false else d164 then if d152 then false else d152 else if false then true else d182 )
    d199 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2020 -> ( ( Set -> Set ) ∋ ( ( λ x2030 -> x2020 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( M.M1'.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> d166 ) ) ) $ ( false ) ) ) ) ) $ ( if d166 then false else d195 )
    d204 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2060 -> if true then Bool else Bool ) ) ) $ ( x2050 ) else ( ( Set -> Set ) ∋ ( ( λ x2070 -> if true then x2050 else x2050 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
    d204 = ( M.M1'.d123 ) $ ( if if d164 then true else d161 then if d152 then true else d161 else if false then false else false )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> ( ( Set -> Set ) ∋ ( ( λ x2100 -> ( ( Set -> Set ) ∋ ( ( λ x2110 -> ( ( Set -> Set ) ∋ ( ( λ x2120 -> if true then Bool else x2110 ) ) ) $ ( Bool ) ) ) ) $ ( if true then x2100 else x2090 ) ) ) ) $ ( if true then x2090 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2130 -> ( ( Set -> Set ) ∋ ( ( λ x2140 -> x2130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d208 = if if d204 then d199 else false then if false then true else false else if true then true else d148
    d215 : ( ( Set -> Set ) ∋ ( ( λ x2160 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2170 -> if true then Bool else x2170 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then Bool else Bool ) ) ) $ ( x2160 ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d215 = ( M.M1'.d57 ) $ ( ( M.M1'.d73 ) $ ( if if d152 then d188 else d208 then if d161 then d204 else d208 else if d166 then d188 else true ) )
    d219 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d219 = ( M.M1'.d98 ) $ ( ( M.M1'.d66 ) $ ( ( ( M.M1.d16 ) $ ( ( M.M1'.d75 ) $ ( ( ( M.M1.d36 ) $ ( false ) ) $ ( d176 ) ) ) ) $ ( if false then true else false ) ) )
    d221 : if true then ( ( Set -> Set ) ∋ ( ( λ x2240 -> ( ( Set -> Set ) ∋ ( ( λ x2250 -> x2240 ) ) ) $ ( x2240 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2260 -> ( ( Set -> Set ) ∋ ( ( λ x2270 -> x2270 ) ) ) $ ( x2260 ) ) ) ) $ ( if true then Bool else Bool )
    d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d164 else true )
    d228 : ( ( Set -> Set ) ∋ ( ( λ x2300 -> ( ( Set -> Set ) ∋ ( ( λ x2310 -> ( ( Set -> Set ) ∋ ( ( λ x2320 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if false then Bool else x2300 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2330 -> if false then Bool else x2330 ) ) ) $ ( if false then Bool else Bool ) )
    d228 = ( M.M1'.d4 ) $ ( ( M.M1'.d66 ) $ ( ( M.M1'.d73 ) $ ( ( M.M1'.d101 ) $ ( ( M.M1'.d41 ) $ ( ( M.M1'.d41 ) $ ( ( M.M1'.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> ( ( M.M1.d79 ) $ ( if x2290 then d199 else true ) ) $ ( if d164 then x2290 else false ) ) ) ) $ ( if true then false else d215 ) ) ) ) ) ) ) )
    d234 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
    d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> ( ( Bool -> Bool ) ∋ ( ( λ x2360 -> false ) ) ) $ ( x2350 ) ) ) ) $ ( if false then true else false )
    d237 : if true then ( ( Set -> Set ) ∋ ( ( λ x2380 -> ( ( Set -> Set ) ∋ ( ( λ x2390 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
    d237 = ( M.M1'.d134 ) $ ( ( M.M1'.d123 ) $ ( ( M.M1'.d128 ) $ ( if if d171 then d204 else d188 then if d164 then false else d219 else if false then false else d208 ) ) )
    d240 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> ( ( Set -> Set ) ∋ ( ( λ x2420 -> if true then if true then x2420 else x2410 else if true then x2410 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2430 -> if false then x2410 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d240 = ( M.M1'.d131 ) $ ( ( M.M1'.d101 ) $ ( ( ( M.M1.d92 ) $ ( ( M.M1'.d33 ) $ ( ( M.M1'.d66 ) $ ( ( ( M.M1.d73 ) $ ( true ) ) $ ( d152 ) ) ) ) ) $ ( if true then false else true ) ) )
    d244 : ( ( Set -> Set ) ∋ ( ( λ x2450 -> ( ( Set -> Set ) ∋ ( ( λ x2460 -> if false then if true then x2450 else Bool else if true then x2460 else x2450 ) ) ) $ ( if true then Bool else x2450 ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d244 = if if d164 then d157 else true then if true then d157 else d157 else if false then d166 else d234
    d247 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then Bool else Bool ) ) ) $ ( Bool ) else if true then x2480 else x2480 ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
    d247 = ( ( M.M1.d147 ) $ ( if d161 then d171 else d166 ) ) $ ( ( M.M1'.d98 ) $ ( if false then d204 else d161 ) )
    d250 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( ( M.M1.d79 ) $ ( if x2510 then d204 else x2510 ) ) $ ( if false then false else d171 ) ) ) ) $ ( if true then d148 else false )
    d252 : if true then ( ( Set -> Set ) ∋ ( ( λ x2540 -> if true then x2540 else x2540 ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
    d252 = ( ( M.M1.d101 ) $ ( ( M.M1'.d60 ) $ ( if d157 then d208 else false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( d157 ) )
    d255 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2580 -> ( ( Set -> Set ) ∋ ( ( λ x2590 -> x2590 ) ) ) $ ( x2580 ) ) ) ) $ ( if true then Bool else Bool )
    d255 = ( M.M1'.d141 ) $ ( ( M.M1'.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( M.M1'.d12 ) $ ( ( M.M1'.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> false ) ) ) $ ( true ) ) ) ) ) ) $ ( if false then false else false ) ) )
    d260 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2620 -> ( ( Set -> Set ) ∋ ( ( λ x2630 -> x2630 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d260 = ( ( M.M1.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> x2610 ) ) ) $ ( d250 ) ) ) $ ( ( M.M1'.d8 ) $ ( if true then d157 else d215 ) )
    d264 : ( ( Set -> Set ) ∋ ( ( λ x2650 -> ( ( Set -> Set ) ∋ ( ( λ x2660 -> if true then if false then x2660 else Bool else if false then Bool else x2660 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2670 -> if false then x2670 else x2670 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2680 -> if true then Bool else x2680 ) ) ) $ ( if false then Bool else Bool ) )
    d264 = ( M.M1'.d84 ) $ ( ( M.M1'.d68 ) $ ( if if true then true else d195 then if d188 then d188 else false else if true then d228 else true ) )
    d269 : ( ( Set -> Set ) ∋ ( ( λ x2710 -> ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> if true then x2710 else x2710 ) ) ) $ ( if true then x2710 else x2710 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2740 -> if false then Bool else x2710 ) ) ) $ ( x2710 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2750 -> if true then x2750 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d269 = ( ( M.M1.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> true ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d92 ) $ ( d244 ) ) $ ( d166 ) )
    d276 : if true then ( ( Set -> Set ) ∋ ( ( λ x2770 -> if false then x2770 else x2770 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2780 -> ( ( Set -> Set ) ∋ ( ( λ x2790 -> x2780 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d276 = ( ( M.M1.d12 ) $ ( if true then d152 else true ) ) $ ( ( M.M1'.d16 ) $ ( ( ( M.M1.d73 ) $ ( d228 ) ) $ ( d264 ) ) )
    d280 : if true then ( ( Set -> Set ) ∋ ( ( λ x2810 -> ( ( Set -> Set ) ∋ ( ( λ x2820 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
    d280 = ( M.M1'.d123 ) $ ( ( M.M1'.d52 ) $ ( if if d269 then d244 else true then if false then false else true else if d237 then true else d234 ) )
    d283 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2860 -> if true then x2860 else x2860 ) ) ) $ ( x2850 ) else if true then x2850 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> x2880 ) ) ) $ ( x2870 ) ) ) ) $ ( if true then Bool else Bool ) )
    d283 = ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> ( ( M.M1.d84 ) $ ( if false then false else x2840 ) ) $ ( if false then d204 else d247 ) ) ) ) $ ( if d264 then d204 else d208 )
    d289 : ( ( Set -> Set ) ∋ ( ( λ x2900 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2910 -> if false then x2910 else x2900 ) ) ) $ ( x2900 ) else ( ( Set -> Set ) ∋ ( ( λ x2920 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2930 -> if true then x2930 else x2930 ) ) ) $ ( if true then Bool else Bool ) )
    d289 = ( M.M1'.d66 ) $ ( if if true then d283 else d164 then if d237 then d188 else d171 else if false then d250 else d280 )
    d294 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2960 -> ( ( Set -> Set ) ∋ ( ( λ x2970 -> Bool ) ) ) $ ( x2960 ) ) ) ) $ ( if false then Bool else Bool )
    d294 = ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> ( M.M1'.d131 ) $ ( if true then true else x2950 ) ) ) ) $ ( if d176 then false else d195 )
    d298 : ( ( Set -> Set ) ∋ ( ( λ x2990 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3000 -> if false then x2990 else Bool ) ) ) $ ( Bool ) else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3010 -> if false then x3010 else x3010 ) ) ) $ ( if false then Bool else Bool ) )
    d298 = ( ( M.M1.d57 ) $ ( if false then true else d250 ) ) $ ( ( ( M.M1.d62 ) $ ( d250 ) ) $ ( true ) )
    d302 : ( ( Set -> Set ) ∋ ( ( λ x3030 -> ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if true then Bool else Bool ) ) ) $ ( if false then x3030 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3060 -> if false then x3060 else x3030 ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d302 = ( ( M.M1.d66 ) $ ( if d148 then false else d260 ) ) $ ( ( M.M1'.d123 ) $ ( if true then d161 else false ) )
    d307 : ( ( Set -> Set ) ∋ ( ( λ x3080 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3090 -> if false then Bool else Bool ) ) ) $ ( Bool ) else if false then x3080 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3100 -> if true then Bool else x3100 ) ) ) $ ( if true then Bool else Bool ) )
    d307 = ( M.M1'.d4 ) $ ( if if d166 then d237 else false then if true then d195 else d276 else if d182 then d298 else d260 )
    d311 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3120 -> ( ( Set -> Set ) ∋ ( ( λ x3130 -> x3120 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d311 = ( M.M1'.d38 ) $ ( ( M.M1'.d131 ) $ ( ( ( M.M1.d62 ) $ ( ( ( M.M1.d123 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.M1.d57 ) $ ( d195 ) ) $ ( d260 ) ) ) )
    d314 : if false then if false then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3170 -> ( ( Set -> Set ) ∋ ( ( λ x3180 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d314 = ( M.M1'.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> x3150 ) ) ) $ ( x3150 ) ) ) ) $ ( if d215 then false else false ) )
    d319 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d319 = ( ( M.M1.d141 ) $ ( ( ( M.M1.d67 ) $ ( false ) ) $ ( false ) ) ) $ ( ( M.M1'.d71 ) $ ( ( M.M1'.d86 ) $ ( ( M.M1'.d128 ) $ ( if true then d298 else false ) ) ) )
    d320 : if true then ( ( Set -> Set ) ∋ ( ( λ x3230 -> if false then x3230 else Bool ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> ( M.M1'.d115 ) $ ( ( M.M1'.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> true ) ) ) $ ( true ) ) ) ) ) ) $ ( if d204 then d182 else d204 )
    d324 : if true then if false then if false then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
    d324 = ( M.M1'.d68 ) $ ( ( ( M.M1.d84 ) $ ( if false then true else false ) ) $ ( if d176 then d264 else d234 ) )
    d325 : ( ( Set -> Set ) ∋ ( ( λ x3260 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3270 -> if false then Bool else Bool ) ) ) $ ( Bool ) else if true then Bool else x3260 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3280 -> ( ( Set -> Set ) ∋ ( ( λ x3290 -> x3280 ) ) ) $ ( x3280 ) ) ) ) $ ( if false then Bool else Bool ) )
    d325 = ( ( M.M1.d144 ) $ ( ( ( M.M1.d131 ) $ ( d283 ) ) $ ( d307 ) ) ) $ ( ( ( M.M1.d92 ) $ ( d260 ) ) $ ( d195 ) )
    d330 : ( ( Set -> Set ) ∋ ( ( λ x3310 -> ( ( Set -> Set ) ∋ ( ( λ x3320 -> if false then if false then Bool else Bool else if true then x3320 else x3320 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3330 -> if true then Bool else x3330 ) ) ) $ ( x3310 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3340 -> if false then x3340 else x3340 ) ) ) $ ( if true then Bool else Bool ) )
    d330 = if if true then false else true then if d255 then true else true else if d164 then true else false
    d335 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3370 -> if true then x3360 else Bool ) ) ) $ ( x3360 ) else if false then Bool else x3360 ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d335 = ( ( M.M1.d36 ) $ ( if d320 then false else true ) ) $ ( if false then false else true )
    d338 : if true then if false then if false then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d338 = if if d302 then false else d247 then if true then true else true else if d314 then d215 else d250
    d339 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> ( M.M1'.d86 ) $ ( if d335 then d314 else true ) ) ) ) $ ( if d188 then d219 else true )
    d341 : ( ( Set -> Set ) ∋ ( ( λ x3420 -> ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else x3430 ) ) ) ) $ ( if true then x3420 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3450 -> if true then x3450 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d341 = if if d152 then d199 else d311 then if d171 then d314 else d325 else if d240 then d182 else d199
    d346 : ( ( Set -> Set ) ∋ ( ( λ x3480 -> ( ( Set -> Set ) ∋ ( ( λ x3490 -> if true then if true then x3490 else Bool else if false then x3490 else x3490 ) ) ) $ ( if true then x3480 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3500 -> ( ( Set -> Set ) ∋ ( ( λ x3510 -> x3500 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d346 = ( M.M1'.d98 ) $ ( ( ( M.M1.d128 ) $ ( ( M.M1'.d16 ) $ ( ( M.M1'.d117 ) $ ( if d171 then d324 else false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3470 -> d221 ) ) ) $ ( true ) ) )
    d352 : ( ( Set -> Set ) ∋ ( ( λ x3530 -> if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3540 -> if false then Bool else x3540 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d352 = if if false then true else d330 then if d228 then true else d188 else if true then d208 else true