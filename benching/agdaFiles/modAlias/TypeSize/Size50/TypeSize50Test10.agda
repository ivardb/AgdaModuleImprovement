module TypeSize50Test10  where
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
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then x30 else Bool ) ) ) $ ( Bool ) )  where
            d4 : if true then ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then x70 else x70 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then true else true )
            d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then if false then Bool else x120 else if true then Bool else x130 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then x120 else Bool ) ) ) $ ( x120 ) ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if true then p20 else p20 ) ) ) $ ( if d4 then p20 else true )
            d15 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then if true then x170 else x170 else ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then x180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if true then d10 else x160 ) ) ) $ ( if p10 then d10 else true )
            d21 : ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then ( ( Set -> Set ) ∋ ( ( λ x250 -> if true then Bool else x250 ) ) ) $ ( x240 ) else ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then Bool else Bool ) ) ) $ ( x240 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x270 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> x220 ) ) ) $ ( d15 ) ) ) ) $ ( if true then p10 else p10 )
            d28 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if false then false else p20 ) ) ) $ ( if false then d21 else false )
            d30 : ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then Bool else Bool ) ) ) $ ( x310 ) else ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then x310 else x330 ) ) ) $ ( x310 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> x340 ) ) ) $ ( x340 ) ) ) ) $ ( if false then Bool else Bool ) )
            d30 = if if false then false else d10 then if p20 then true else false else if p20 then d28 else true
            d36 : if true then ( ( Set -> Set ) ∋ ( ( λ x390 -> if false then x390 else x390 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then x400 else x400 ) ) ) $ ( if false then Bool else Bool )
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> true ) ) ) $ ( p20 ) ) ) ) $ ( if p20 then p20 else false )
            d41 : if true then if false then if false then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
            d41 = if if d28 then false else p20 then if d10 then false else p20 else if false then false else true
            d42 : ( ( Set -> Set ) ∋ ( ( λ x450 -> ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> if true then Bool else x460 ) ) ) $ ( if true then x460 else Bool ) ) ) ) $ ( if true then Bool else x450 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then x480 else x480 ) ) ) $ ( if true then Bool else Bool ) )
            d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> x430 ) ) ) $ ( p20 ) ) ) ) $ ( if p10 then false else true )
            d49 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then x530 else Bool ) ) ) $ ( x500 ) ) ) ) $ ( if false then x500 else x500 ) ) ) ) $ ( if true then x500 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> x540 ) ) ) $ ( x540 ) ) ) ) $ ( if false then Bool else Bool ) )
            d49 = if if false then d21 else true then if d21 then true else d41 else if p20 then false else p20
            d56 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then if false then Bool else x570 else ( ( Set -> Set ) ∋ ( ( λ x580 -> if false then x570 else x570 ) ) ) $ ( x570 ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d56 = if if d41 then p20 else false then if true then d49 else false else if p20 then d10 else true
            d59 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if d56 then p20 else p10 ) ) ) $ ( if p10 then true else p20 )
            d61 : if false then ( ( Set -> Set ) ∋ ( ( λ x630 -> if false then Bool else x630 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then Bool else x640 ) ) ) $ ( if false then Bool else Bool )
            d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if d30 then true else p20 ) ) ) $ ( if d15 then d30 else d30 )
            d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if true then if false then x680 else x680 else ( ( Set -> Set ) ∋ ( ( λ x690 -> if false then Bool else Bool ) ) ) $ ( x680 ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( true ) ) ) ) $ ( if p10 then false else p10 )
            d70 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then Bool else Bool ) ) ) $ ( Bool ) else if false then Bool else Bool ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d30 ) ) ) $ ( p10 ) ) ) ) $ ( if false then d41 else d10 )
            d75 : if true then ( ( Set -> Set ) ∋ ( ( λ x780 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d21 ) ) ) $ ( d65 ) ) ) ) $ ( if true then p20 else p10 )
            d79 : if true then ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> x800 ) ) ) $ ( x800 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x820 -> if true then Bool else x820 ) ) ) $ ( if true then Bool else Bool )
            d79 = if if d28 then d28 else d21 then if p10 then false else false else if d30 then p10 else p20
            d83 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> true ) ) ) $ ( d42 ) ) ) ) $ ( if p10 then true else true )
            d86 : if false then ( ( Set -> Set ) ∋ ( ( λ x880 -> if true then x880 else x880 ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
            d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if true then x870 else p20 ) ) ) $ ( if p20 then d41 else p20 )
            d89 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
            d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if true then true else d86 )
            d92 : if true then ( ( Set -> Set ) ∋ ( ( λ x930 -> if true then Bool else x930 ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d92 = if if d86 then d41 else p20 then if p20 then d89 else d42 else if d89 then p10 else d61
            d94 : if true then ( ( Set -> Set ) ∋ ( ( λ x950 -> if true then x950 else Bool ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d94 = if if d28 then p20 else d15 then if p10 then false else p10 else if false then false else d70
            d96 : ( ( Set -> Set ) ∋ ( ( λ x980 -> if true then if false then x980 else x980 else ( ( Set -> Set ) ∋ ( ( λ x990 -> if false then Bool else x990 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if false then p20 else d83 ) ) ) $ ( if d65 then true else d41 )
            d100 : if true then ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> Bool ) ) ) $ ( x1020 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1040 -> if true then Bool else x1040 ) ) ) $ ( if false then Bool else Bool )
            d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if true then x1010 else false ) ) ) $ ( if p20 then true else true )
            d105 : if true then ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> x1070 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1080 -> ( ( Set -> Set ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d105 = if if false then p10 else false then if true then false else true else if false then true else false
            d110 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> if true then Bool else x1130 ) ) ) $ ( if false then Bool else x1120 ) ) ) ) $ ( if true then x1110 else Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d110 = if if d56 then true else d65 then if d86 then d15 else true else if d70 then d86 else d92
            d114 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( x1160 ) ) ) ) $ ( if false then Bool else Bool )
            d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if true then false else p20 ) ) ) $ ( if d42 then d30 else false )
            d118 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
            d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> d92 ) ) ) $ ( false ) ) ) ) $ ( if d100 then d110 else false )
            d121 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
            d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> if d92 then p20 else d21 ) ) ) $ ( if d41 then p10 else d4 )
            d123 : if true then ( ( Set -> Set ) ∋ ( ( λ x1240 -> ( ( Set -> Set ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d123 = if if p20 then d70 else false then if p20 then p20 else d105 else if false then true else false
            d126 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1280 else Bool ) ) ) $ ( if false then Bool else Bool )
            d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if false then d42 else p20 ) ) ) $ ( if d83 then true else true )
            d129 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> ( ( Set -> Set ) ∋ ( ( λ x1310 -> if true then if true then x1300 else Bool else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1320 -> if true then x1320 else x1300 ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d129 = if if false then p10 else p20 then if true then d110 else p10 else if false then false else p20
            d133 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1360 -> if false then x1350 else x1360 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1370 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1380 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
            d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if true then x1340 else x1340 ) ) ) $ ( if d10 then d4 else d114 )
            d139 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> if false then if true then Bool else Bool else if false then Bool else x1420 ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> d92 ) ) ) $ ( x1400 ) ) ) ) $ ( if true then p20 else d110 )
            d143 : ( ( Set -> Set ) ∋ ( ( λ x1450 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1460 -> if true then x1450 else Bool ) ) ) $ ( x1450 ) else ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> x1480 ) ) ) $ ( x1480 ) ) ) ) $ ( if false then Bool else Bool ) )
            d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> if d42 then p20 else p20 ) ) ) $ ( if false then false else p10 )
            d150 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
            d150 = if if false then d89 else p10 then if false then p10 else p10 else if true then false else d65
            d151 : if true then ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1530 -> ( ( Set -> Set ) ∋ ( ( λ x1540 -> x1530 ) ) ) $ ( x1530 ) ) ) ) $ ( if true then Bool else Bool )
            d151 = if if true then true else d83 then if false then d114 else p10 else if d86 then p10 else p20
            d155 : if false then ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d155 = if if false then false else true then if d79 then true else true else if d15 then false else d65
            d158 : if true then ( ( Set -> Set ) ∋ ( ( λ x1590 -> if false then x1590 else x1590 ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d158 = if if d28 then false else true then if false then d41 else d150 else if p20 then d30 else p10
            d160 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> true ) ) ) $ ( false ) ) ) ) $ ( if d123 then d129 else d28 )
        module M1'  = M1 ( true ) 
    d163 : if true then ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1660 -> if true then Bool else x1660 ) ) ) $ ( if true then Bool else Bool )
    d163 = ( ( M.M1.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> x1640 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d133 ) $ ( ( M.M1'.d123 ) $ ( if false then false else true ) ) )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then if true then x1680 else Bool else ( ( Set -> Set ) ∋ ( ( λ x1690 -> if true then Bool else Bool ) ) ) $ ( x1680 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d167 = ( M.M1'.d49 ) $ ( if if d163 then true else true then if true then d163 else true else if true then true else true )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> ( ( Set -> Set ) ∋ ( ( λ x1750 -> if false then if false then x1740 else Bool else if false then x1750 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1760 -> if false then Bool else Bool ) ) ) $ ( x1740 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1770 -> ( ( Set -> Set ) ∋ ( ( λ x1780 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( M.M1.d89 ) $ ( if x1730 then d163 else true ) ) $ ( if true then x1730 else d167 ) ) ) ) $ ( if d167 then d163 else true )
    d179 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d179 = if if d163 then d163 else d172 then if true then d172 else d167 else if false then d163 else d163
    d180 : if true then ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> Bool ) ) ) $ ( x1830 ) ) ) ) $ ( if false then Bool else Bool )
    d180 = ( M.M1'.d94 ) $ ( if if d163 then d179 else d172 then if d163 then d163 else d167 else if d179 then d167 else true )
    d185 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d185 = ( ( M.M1.d28 ) $ ( ( M.M1'.d92 ) $ ( if d172 then d167 else false ) ) ) $ ( ( M.M1'.d114 ) $ ( ( M.M1'.d114 ) $ ( ( ( M.M1.d79 ) $ ( false ) ) $ ( d179 ) ) ) )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> ( ( Set -> Set ) ∋ ( ( λ x1880 -> if true then if true then Bool else x1870 else if false then Bool else x1870 ) ) ) $ ( if true then x1870 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1890 -> ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( x1890 ) ) ) ) $ ( if false then Bool else Bool ) )
    d186 = ( M.M1'.d41 ) $ ( ( M.M1'.d15 ) $ ( ( M.M1'.d65 ) $ ( ( ( M.M1.d121 ) $ ( ( ( M.M1.d150 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.M1.d83 ) $ ( true ) ) $ ( true ) ) ) ) )
    d191 : if true then ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d191 = ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> ( ( Bool -> Bool ) ∋ ( ( λ x1930 -> x1920 ) ) ) $ ( true ) ) ) ) $ ( if d179 then d180 else d163 )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> ( ( Set -> Set ) ∋ ( ( λ x1990 -> if false then Bool else Bool ) ) ) $ ( if false then x1970 else x1980 ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2000 -> if true then x2000 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d195 = ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> ( M.M1'.d59 ) $ ( ( M.M1'.d75 ) $ ( ( ( M.M1.d160 ) $ ( if x1960 then x1960 else true ) ) $ ( if x1960 then x1960 else x1960 ) ) ) ) ) ) $ ( if d186 then d186 else false )
    d201 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2030 -> ( ( Set -> Set ) ∋ ( ( λ x2040 -> x2030 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d201 = ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> ( ( M.M1.d105 ) $ ( if d185 then d167 else d186 ) ) $ ( if x2020 then true else false ) ) ) ) $ ( if d186 then true else false )
    d205 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2070 -> if true then Bool else x2060 ) ) ) $ ( Bool ) else if false then Bool else x2060 ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d205 = ( ( M.M1.d129 ) $ ( if true then true else true ) ) $ ( if false then true else false )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> ( ( Set -> Set ) ∋ ( ( λ x2100 -> if true then if false then x2100 else Bool else if false then x2090 else Bool ) ) ) $ ( if false then Bool else x2090 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2110 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d208 = if if d172 then true else true then if d172 then true else d201 else if false then false else d201
    d212 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2130 -> ( ( Set -> Set ) ∋ ( ( λ x2140 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d212 = ( M.M1'.d150 ) $ ( ( M.M1'.d89 ) $ ( if if d208 then d185 else d167 then if d201 then d185 else d172 else if d167 then true else d180 ) )
    d215 : if true then ( ( Set -> Set ) ∋ ( ( λ x2170 -> if false then x2170 else x2170 ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d215 = ( M.M1'.d150 ) $ ( ( ( M.M1.d121 ) $ ( ( M.M1'.d83 ) $ ( ( M.M1'.d139 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> x2160 ) ) ) $ ( d186 ) ) ) ) ) $ ( ( M.M1'.d42 ) $ ( ( ( M.M1.d65 ) $ ( d195 ) ) $ ( true ) ) ) )
    d218 : if false then ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then Bool else x2200 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2210 -> if false then x2210 else Bool ) ) ) $ ( if false then Bool else Bool )
    d218 = ( ( M.M1.d92 ) $ ( ( M.M1'.d158 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
    d222 : ( ( Set -> Set ) ∋ ( ( λ x2230 -> ( ( Set -> Set ) ∋ ( ( λ x2240 -> ( ( Set -> Set ) ∋ ( ( λ x2250 -> ( ( Set -> Set ) ∋ ( ( λ x2260 -> if false then Bool else x2260 ) ) ) $ ( x2240 ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2270 -> ( ( Set -> Set ) ∋ ( ( λ x2280 -> x2270 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d222 = if if true then d205 else d179 then if false then d205 else false else if false then d167 else d163
    d229 : ( ( Set -> Set ) ∋ ( ( λ x2310 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2320 -> if false then Bool else Bool ) ) ) $ ( Bool ) else if true then Bool else x2310 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2330 -> if false then x2330 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d229 = ( M.M1'.d110 ) $ ( ( M.M1'.d105 ) $ ( ( ( M.M1.d123 ) $ ( ( M.M1'.d114 ) $ ( ( M.M1'.d41 ) $ ( ( ( M.M1.d155 ) $ ( d195 ) ) $ ( false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> x2300 ) ) ) $ ( false ) ) ) )
    d234 : ( ( Set -> Set ) ∋ ( ( λ x2350 -> ( ( Set -> Set ) ∋ ( ( λ x2360 -> ( ( Set -> Set ) ∋ ( ( λ x2370 -> ( ( Set -> Set ) ∋ ( ( λ x2380 -> if true then x2380 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2390 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d234 = ( M.M1'.d61 ) $ ( if if d208 then false else d163 then if d205 then d212 else d172 else if true then false else d180 )
    d240 : ( ( Set -> Set ) ∋ ( ( λ x2410 -> if true then if false then x2410 else Bool else ( ( Set -> Set ) ∋ ( ( λ x2420 -> if true then x2410 else x2420 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d240 = if if d215 then true else false then if true then false else true else if false then d179 else false
    d243 : if true then if false then if false then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
    d243 = ( M.M1'.d49 ) $ ( ( ( M.M1.d41 ) $ ( if d180 then true else d186 ) ) $ ( ( ( M.M1.d65 ) $ ( true ) ) $ ( d179 ) ) )
    d244 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( x2460 ) ) ) ) $ ( if false then Bool else Bool )
    d244 = ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> ( M.M1'.d75 ) $ ( ( ( M.M1.d133 ) $ ( if true then d201 else true ) ) $ ( if d163 then d243 else x2450 ) ) ) ) ) $ ( if d172 then true else true )
    d248 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2500 -> if false then x2490 else x2490 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d248 = ( ( M.M1.d86 ) $ ( ( M.M1'.d42 ) $ ( ( ( M.M1.d121 ) $ ( d201 ) ) $ ( true ) ) ) ) $ ( ( ( M.M1.d133 ) $ ( false ) ) $ ( false ) )
    d251 : ( ( Set -> Set ) ∋ ( ( λ x2520 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2530 -> if true then Bool else Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then Bool else x2520 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d251 = ( M.M1'.d4 ) $ ( ( M.M1'.d79 ) $ ( if if true then d240 else d229 then if true then false else false else if d218 then true else false ) )
    d255 : ( ( Set -> Set ) ∋ ( ( λ x2570 -> ( ( Set -> Set ) ∋ ( ( λ x2580 -> if true then if false then Bool else Bool else if false then x2570 else x2570 ) ) ) $ ( if true then x2570 else x2570 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2590 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> if x2560 then d215 else d244 ) ) ) $ ( if d244 then d218 else d191 )
    d260 : if true then ( ( Set -> Set ) ∋ ( ( λ x2610 -> if true then x2610 else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2620 -> if true then x2620 else x2620 ) ) ) $ ( if true then Bool else Bool )
    d260 = ( ( M.M1.d129 ) $ ( if d163 then false else d244 ) ) $ ( ( M.M1'.d158 ) $ ( ( ( M.M1.d94 ) $ ( d212 ) ) $ ( false ) ) )
    d263 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2650 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d263 = ( M.M1'.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if x2640 then x2640 else false ) ) ) $ ( if true then d218 else true ) )
    d266 : ( ( Set -> Set ) ∋ ( ( λ x2680 -> ( ( Set -> Set ) ∋ ( ( λ x2690 -> ( ( Set -> Set ) ∋ ( ( λ x2700 -> ( ( Set -> Set ) ∋ ( ( λ x2710 -> if true then Bool else x2680 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2720 -> if true then x2680 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2730 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> ( ( M.M1.d89 ) $ ( if x2670 then d201 else x2670 ) ) $ ( if false then x2670 else x2670 ) ) ) ) $ ( if d205 then d208 else false )
    d274 : ( ( Set -> Set ) ∋ ( ( λ x2760 -> ( ( Set -> Set ) ∋ ( ( λ x2770 -> ( ( Set -> Set ) ∋ ( ( λ x2780 -> if true then x2770 else x2760 ) ) ) $ ( if true then Bool else x2760 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2790 -> if false then x2760 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d274 = ( M.M1'.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> ( ( M.M1.d105 ) $ ( if true then x2750 else d208 ) ) $ ( if d185 then x2750 else d222 ) ) ) ) $ ( if true then true else false ) )
    d280 : ( ( Set -> Set ) ∋ ( ( λ x2830 -> ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> if false then x2850 else Bool ) ) ) $ ( if true then x2840 else x2840 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2860 -> if true then x2830 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d280 = ( ( Bool -> Bool ) ∋ ( ( λ x2810 -> ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> true ) ) ) $ ( d229 ) ) ) ) $ ( if d205 then false else false )
    d287 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
    d287 = ( ( M.M1.d4 ) $ ( if d263 then false else d212 ) ) $ ( ( ( M.M1.d114 ) $ ( d201 ) ) $ ( d186 ) )
    d288 : ( ( Set -> Set ) ∋ ( ( λ x2890 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2900 -> if true then x2900 else Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2910 -> if false then x2910 else Bool ) ) ) $ ( x2890 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2920 -> ( ( Set -> Set ) ∋ ( ( λ x2930 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d288 = ( ( M.M1.d114 ) $ ( if true then d234 else true ) ) $ ( ( M.M1'.d155 ) $ ( ( ( M.M1.d100 ) $ ( d280 ) ) $ ( true ) ) )
    d294 : ( ( Set -> Set ) ∋ ( ( λ x2970 -> if true then if false then x2970 else x2970 else ( ( Set -> Set ) ∋ ( ( λ x2980 -> if true then x2970 else x2980 ) ) ) $ ( x2970 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2990 -> if false then x2990 else x2990 ) ) ) $ ( if true then Bool else Bool ) )
    d294 = ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> ( M.M1'.d126 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2960 -> d185 ) ) ) $ ( true ) ) ) ) ) $ ( if true then true else d266 )
    d300 : if false then ( ( Set -> Set ) ∋ ( ( λ x3020 -> if true then x3020 else x3020 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3030 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d300 = ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> ( ( M.M1.d129 ) $ ( if x3010 then d212 else d195 ) ) $ ( if true then x3010 else d179 ) ) ) ) $ ( if true then true else d215 )
    d304 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then x3070 else Bool ) ) ) $ ( x3060 ) else if true then Bool else x3060 ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d304 = ( ( M.M1.d139 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> false ) ) ) $ ( d191 ) ) ) $ ( ( M.M1'.d150 ) $ ( ( ( M.M1.d89 ) $ ( d260 ) ) $ ( d274 ) ) )
    d308 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
    d308 = ( M.M1'.d126 ) $ ( if if d255 then d212 else d229 then if true then d280 else false else if d222 then true else d180 )
    d309 : ( ( Set -> Set ) ∋ ( ( λ x3100 -> if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3110 -> if true then Bool else x3100 ) ) ) $ ( x3100 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3120 -> if true then x3120 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d309 = ( M.M1'.d126 ) $ ( ( M.M1'.d70 ) $ ( if if false then d266 else true then if d287 then d244 else d266 else if d240 then false else d218 ) )
    d313 : ( ( Set -> Set ) ∋ ( ( λ x3140 -> ( ( Set -> Set ) ∋ ( ( λ x3150 -> ( ( Set -> Set ) ∋ ( ( λ x3160 -> if true then Bool else x3160 ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3170 -> if true then Bool else Bool ) ) ) $ ( x3140 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3180 -> if true then x3180 else x3180 ) ) ) $ ( if true then Bool else Bool ) )
    d313 = ( M.M1'.d59 ) $ ( ( ( M.M1.d151 ) $ ( if false then false else d255 ) ) $ ( ( ( M.M1.d129 ) $ ( false ) ) $ ( d185 ) ) )
    d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> ( ( Set -> Set ) ∋ ( ( λ x3220 -> if true then if true then Bool else Bool else if false then x3220 else x3220 ) ) ) $ ( if true then x3210 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3230 -> ( ( Set -> Set ) ∋ ( ( λ x3240 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d319 = ( M.M1'.d100 ) $ ( ( M.M1'.d65 ) $ ( ( M.M1'.d10 ) $ ( ( M.M1'.d36 ) $ ( ( M.M1'.d114 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> ( ( M.M1.d15 ) $ ( if false then d294 else false ) ) $ ( if x3200 then true else x3200 ) ) ) ) $ ( if false then false else true ) ) ) ) ) )
    d325 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
    d325 = ( ( M.M1.d30 ) $ ( if false then d180 else d266 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> d240 ) ) ) $ ( false ) )
    d327 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d327 = ( M.M1'.d28 ) $ ( ( M.M1'.d30 ) $ ( if if d255 then d179 else d201 then if true then true else true else if true then true else d287 ) )
    d328 : if false then ( ( Set -> Set ) ∋ ( ( λ x3290 -> if true then x3290 else x3290 ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d328 = if if true then false else false then if d325 then d304 else true else if true then false else false
    d330 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d330 = ( M.M1'.d100 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> ( ( M.M1.d89 ) $ ( if false then true else x3310 ) ) $ ( if d240 then d215 else d205 ) ) ) ) $ ( if d244 then true else d251 ) )
    d332 : ( ( Set -> Set ) ∋ ( ( λ x3340 -> ( ( Set -> Set ) ∋ ( ( λ x3350 -> if true then if true then Bool else Bool else if true then Bool else x3350 ) ) ) $ ( if false then x3340 else Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d332 = ( M.M1'.d151 ) $ ( ( M.M1'.d126 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> ( ( M.M1.d49 ) $ ( if d179 then x3330 else d172 ) ) $ ( if x3330 then true else true ) ) ) ) $ ( if true then d172 else false ) ) )
    d336 : ( ( Set -> Set ) ∋ ( ( λ x3370 -> ( ( Set -> Set ) ∋ ( ( λ x3380 -> ( ( Set -> Set ) ∋ ( ( λ x3390 -> if false then Bool else Bool ) ) ) $ ( if true then x3380 else Bool ) ) ) ) $ ( if false then Bool else x3370 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3400 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d336 = if if d304 then d215 else d319 then if true then d195 else d327 else if false then d240 else true
    d341 : if false then ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3450 -> if true then x3450 else Bool ) ) ) $ ( if true then Bool else Bool )
    d341 = ( ( M.M1.d151 ) $ ( ( M.M1'.d133 ) $ ( ( ( M.M1.d121 ) $ ( true ) ) $ ( d229 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3420 -> d327 ) ) ) $ ( d234 ) )
    d346 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> if false then if true then x3470 else Bool else if true then x3470 else x3470 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3480 -> if false then x3480 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d346 = ( ( M.M1.d83 ) $ ( if d332 then d218 else d251 ) ) $ ( ( M.M1'.d59 ) $ ( if true then false else true ) )
    d349 : ( ( Set -> Set ) ∋ ( ( λ x3510 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3520 -> if true then Bool else Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3530 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d349 = ( ( M.M1.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> false ) ) ) $ ( d330 ) ) ) $ ( ( ( M.M1.d41 ) $ ( true ) ) $ ( false ) )
    d354 : if false then ( ( Set -> Set ) ∋ ( ( λ x3570 -> if true then Bool else x3570 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3580 -> ( ( Set -> Set ) ∋ ( ( λ x3590 -> x3590 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d354 = ( M.M1'.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3550 -> ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> x3560 ) ) ) $ ( d308 ) ) ) ) $ ( if d313 then d287 else false ) )
    d360 : if false then ( ( Set -> Set ) ∋ ( ( λ x3620 -> ( ( Set -> Set ) ∋ ( ( λ x3630 -> x3620 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d360 = ( ( M.M1.d70 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> true ) ) ) $ ( true ) ) ) $ ( if false then d215 else d300 )
    d364 : ( ( Set -> Set ) ∋ ( ( λ x3650 -> ( ( Set -> Set ) ∋ ( ( λ x3660 -> if true then if false then x3660 else x3660 else if false then Bool else x3660 ) ) ) $ ( if false then x3650 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3670 -> if false then x3670 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d364 = ( M.M1'.d139 ) $ ( ( ( M.M1.d10 ) $ ( if true then d332 else d263 ) ) $ ( ( M.M1'.d114 ) $ ( ( M.M1'.d114 ) $ ( ( ( M.M1.d110 ) $ ( true ) ) $ ( false ) ) ) ) )