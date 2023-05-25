module TypeSize50Test12  where
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

    module M ( p10 : if false then Bool else Bool )  where
        module M1 ( p20 : if false then Bool else Bool )  where
            d3 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then x50 else x40 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x60 else x40 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d3 = if if p10 then p20 else false then if false then false else p10 else if false then p20 else false
            d7 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> d3 ) ) ) $ ( x80 ) ) ) ) $ ( if p10 then false else p10 )
            d10 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then if true then x130 else x130 else if true then x120 else x130 ) ) ) $ ( if false then x120 else x120 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x140 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if false then d7 else x110 ) ) ) $ ( if p20 then d7 else d3 )
            d16 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then if true then Bool else x180 else if false then Bool else x180 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then x190 else x190 ) ) ) $ ( if false then Bool else Bool ) )
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if x170 then false else d7 ) ) ) $ ( if d3 then p10 else true )
            d20 : ( ( Set -> Set ) ∋ ( ( λ x210 -> ( ( Set -> Set ) ∋ ( ( λ x220 -> if true then if false then Bool else x210 else if false then Bool else x210 ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
            d20 = if if p10 then p20 else d3 then if p10 then d3 else d3 else if p10 then p20 else false
            d24 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d24 = if if false then d7 else d10 then if p20 then d3 else p10 else if p20 then p20 else d20
            d27 : if false then ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then Bool else x300 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> false ) ) ) $ ( p10 ) ) ) ) $ ( if p10 then d10 else p20 )
            d33 : ( ( Set -> Set ) ∋ ( ( λ x360 -> if false then if false then x360 else x360 else ( ( Set -> Set ) ∋ ( ( λ x370 -> if true then Bool else x360 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> d16 ) ) ) $ ( p20 ) ) ) ) $ ( if p20 then d10 else p20 )
            d38 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then if false then Bool else x390 else ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then Bool else x400 ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> Bool ) ) ) $ ( x410 ) ) ) ) $ ( if false then Bool else Bool ) )
            d38 = if if p20 then d27 else p20 then if d24 then false else true else if d3 then d16 else true
            d43 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then if true then x470 else Bool else if false then x460 else Bool ) ) ) $ ( if false then x460 else x460 ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> d33 ) ) ) $ ( true ) ) ) ) $ ( if d33 then d33 else d27 )
            d48 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then if true then x490 else x500 else if true then x500 else x500 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then x490 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d48 = if if p10 then false else p20 then if p20 then d20 else true else if d38 then true else false
            d54 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then if true then Bool else x570 else if true then Bool else x560 ) ) ) $ ( if false then x560 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x580 -> ( ( Set -> Set ) ∋ ( ( λ x590 -> x580 ) ) ) $ ( x580 ) ) ) ) $ ( if false then Bool else Bool ) )
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if true then d10 else d7 ) ) ) $ ( if d27 then true else p20 )
            d60 : ( ( Set -> Set ) ∋ ( ( λ x610 -> if false then if true then Bool else x610 else if true then Bool else x610 ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d60 = if if d7 then false else d27 then if p20 then d43 else d3 else if d33 then d20 else true
            d62 : if true then ( ( Set -> Set ) ∋ ( ( λ x630 -> if false then x630 else x630 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x640 -> if false then x640 else Bool ) ) ) $ ( if true then Bool else Bool )
            d62 = if if false then d43 else false then if p20 then d43 else d43 else if true then p10 else d7
            d65 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then if false then x660 else x660 else if false then Bool else x660 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x670 -> if false then x670 else Bool ) ) ) $ ( if true then Bool else Bool ) )
            d65 = if if true then p20 else false then if true then false else d48 else if p20 then false else p10
            d68 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> if true then x700 else Bool ) ) ) $ ( if true then Bool else x690 ) ) ) ) $ ( if false then x690 else x690 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x720 -> if true then Bool else x720 ) ) ) $ ( if true then Bool else Bool ) )
            d68 = if if false then d48 else p10 then if d62 then p20 else p20 else if p10 then d65 else p20
            d73 : ( ( Set -> Set ) ∋ ( ( λ x740 -> ( ( Set -> Set ) ∋ ( ( λ x750 -> if true then if false then Bool else x740 else if false then Bool else x750 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x760 -> if false then x760 else x740 ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d73 = if if true then true else d54 then if d54 then true else true else if false then d10 else p20
            d77 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
            d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if p20 then d27 else false ) ) ) $ ( if d24 then p10 else true )
            d79 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
            d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> true ) ) ) $ ( d73 ) ) ) ) $ ( if p20 then false else d7 )
            d82 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then if false then Bool else Bool else if false then x840 else x830 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x850 -> if false then x850 else x850 ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d82 = if if false then p10 else false then if false then p10 else d77 else if false then true else true
            d86 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x880 -> if true then Bool else x880 ) ) ) $ ( if true then Bool else Bool )
            d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if true then p20 else d73 ) ) ) $ ( if p10 then p10 else p10 )
            d89 : if false then ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> x930 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> p10 ) ) ) $ ( d82 ) ) ) ) $ ( if true then p10 else false )
            d94 : if false then ( ( Set -> Set ) ∋ ( ( λ x950 -> if true then x950 else x950 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d94 = if if false then p10 else p20 then if false then d86 else d38 else if d86 then p10 else false
            d97 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then Bool else x990 ) ) ) $ ( if false then Bool else Bool )
            d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if d77 then p10 else true ) ) ) $ ( if d38 then d68 else d7 )
            d100 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if false then x1060 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( if true then Bool else x1030 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> p10 ) ) ) $ ( true ) ) ) ) $ ( if p10 then false else false )
            d108 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> if true then if false then x1110 else Bool else ( ( Set -> Set ) ∋ ( ( λ x1120 -> if true then x1120 else Bool ) ) ) $ ( x1110 ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> p20 ) ) ) $ ( p20 ) ) ) ) $ ( if d27 then true else d100 )
            d113 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1140 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d113 = if if d62 then p20 else d100 then if p10 then p20 else d86 else if true then true else d43
            d115 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> if true then x1180 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else x1170 ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d115 = if if p20 then d27 else d77 then if p10 then d62 else false else if p10 then p20 else true
            d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> if true then if true then x1220 else Bool else ( ( Set -> Set ) ∋ ( ( λ x1230 -> if true then Bool else x1230 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if d24 then false else d77 ) ) ) $ ( if false then d97 else p10 )
            d124 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> ( ( Set -> Set ) ∋ ( ( λ x1270 -> if true then if false then x1270 else x1270 else if true then Bool else x1260 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1260 else x1260 ) ) ) $ ( x1260 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1290 -> ( ( Set -> Set ) ∋ ( ( λ x1300 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if p10 then true else d3 ) ) ) $ ( if d89 then p20 else p20 )
            d131 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1330 -> if false then Bool else x1330 ) ) ) $ ( if false then Bool else Bool )
            d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if p10 then false else p10 ) ) ) $ ( if p10 then p10 else false )
            d134 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> x1350 ) ) ) $ ( x1350 ) ) ) ) $ ( if false then Bool else Bool )
            d134 = if if true then p20 else p10 then if p10 then true else d24 else if d62 then d7 else p10
            d137 : if true then ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> Bool ) ) ) $ ( x1380 ) ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d137 = if if p10 then d108 else d27 then if p10 then d82 else p20 else if p20 then d120 else true
            d140 : if false then ( ( Set -> Set ) ∋ ( ( λ x1410 -> ( ( Set -> Set ) ∋ ( ( λ x1420 -> x1410 ) ) ) $ ( x1410 ) ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
            d140 = if if d38 then true else true then if p10 then d120 else p20 else if p20 then p10 else d77
            d143 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> d16 ) ) ) $ ( d115 ) ) ) ) $ ( if true then true else p10 )
            d146 : if true then ( ( Set -> Set ) ∋ ( ( λ x1490 -> ( ( Set -> Set ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( x1490 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1510 -> if true then x1510 else x1510 ) ) ) $ ( if false then Bool else Bool )
            d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> d24 ) ) ) $ ( d38 ) ) ) ) $ ( if p20 then false else false )
            d152 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then if true then Bool else x1540 else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1550 -> if false then Bool else Bool ) ) ) $ ( x1530 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( x1560 ) ) ) ) $ ( if false then Bool else Bool ) )
            d152 = if if p20 then false else p20 then if false then d89 else false else if p20 then p10 else d137
            d158 : if false then if false then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d158 = if if p10 then true else d100 then if p20 then false else false else if true then p20 else false
            d161 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then x1620 else Bool ) ) ) $ ( x1620 ) else if true then Bool else x1620 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> Bool ) ) ) $ ( x1640 ) ) ) ) $ ( if true then Bool else Bool ) )
            d161 = if if p10 then d38 else true then if p20 then false else d100 else if p20 then false else true
            d166 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1680 -> if false then x1680 else x1670 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1690 -> if false then Bool else x1670 ) ) ) $ ( x1670 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1700 -> if true then x1700 else x1700 ) ) ) $ ( if true then Bool else Bool ) )
            d166 = if if true then d65 else d20 then if d131 then d158 else p20 else if d24 then p10 else p10
        module M1'  = M1 ( true ) 
    d171 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d171 = ( ( M.M1.d3 ) $ ( ( M.M1'.d146 ) $ ( ( M.M1'.d89 ) $ ( ( M.M1'.d86 ) $ ( ( M.M1'.d152 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> false ) ) ) $ ( true ) ) ) ) ) ) ) $ ( ( M.M1'.d43 ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d161 ) $ ( ( M.M1'.d3 ) $ ( ( ( M.M1.d89 ) $ ( false ) ) $ ( true ) ) ) ) ) ) )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1760 -> if true then x1750 else Bool ) ) ) $ ( x1750 ) else ( ( Set -> Set ) ∋ ( ( λ x1770 -> if false then x1770 else x1750 ) ) ) $ ( x1750 ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> ( M.M1'.d10 ) $ ( ( M.M1'.d73 ) $ ( if x1740 then x1740 else true ) ) ) ) ) $ ( if d171 then d171 else d171 )
    d178 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then Bool else x1800 ) ) ) $ ( if false then Bool else Bool )
    d178 = ( ( M.M1.d3 ) $ ( ( M.M1'.d86 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> d173 ) ) ) $ ( true ) ) ) ) $ ( ( ( M.M1.d86 ) $ ( false ) ) $ ( true ) )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1850 -> if true then x1850 else Bool ) ) ) $ ( x1840 ) else if true then x1840 else Bool ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> ( ( Bool -> Bool ) ∋ ( ( λ x1830 -> d173 ) ) ) $ ( false ) ) ) ) $ ( if d173 then false else d171 )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x1870 -> ( ( Set -> Set ) ∋ ( ( λ x1880 -> if true then if false then x1880 else x1880 else if false then Bool else Bool ) ) ) $ ( if false then Bool else x1870 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1890 -> if true then x1890 else x1890 ) ) ) $ ( if true then Bool else Bool ) )
    d186 = if if false then d181 else d173 then if d178 then false else d178 else if d178 then false else d178
    d190 : ( ( Set -> Set ) ∋ ( ( λ x1910 -> ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> ( ( Set -> Set ) ∋ ( ( λ x1940 -> if true then x1940 else Bool ) ) ) $ ( x1910 ) ) ) ) $ ( if false then x1920 else Bool ) ) ) ) $ ( if false then x1910 else x1910 ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
    d190 = if if false then d171 else false then if true then d171 else true else if d181 then d186 else d171
    d195 : if false then ( ( Set -> Set ) ∋ ( ( λ x1960 -> ( ( Set -> Set ) ∋ ( ( λ x1970 -> Bool ) ) ) $ ( x1960 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1980 -> ( ( Set -> Set ) ∋ ( ( λ x1990 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d195 = if if d181 then d181 else true then if d190 then true else d173 else if d190 then true else d171
    d200 : ( ( Set -> Set ) ∋ ( ( λ x2030 -> ( ( Set -> Set ) ∋ ( ( λ x2040 -> if false then if true then x2040 else Bool else if true then x2040 else Bool ) ) ) $ ( if false then x2030 else x2030 ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d200 = ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> ( M.M1'.d43 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> d190 ) ) ) $ ( x2010 ) ) ) ) ) $ ( if false then d195 else d186 )
    d205 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> ( ( Set -> Set ) ∋ ( ( λ x2070 -> ( ( Set -> Set ) ∋ ( ( λ x2080 -> if false then x2080 else Bool ) ) ) $ ( if true then x2060 else x2060 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2090 -> if false then x2090 else Bool ) ) ) $ ( x2060 ) ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d205 = if if false then d178 else false then if false then false else false else if d190 then false else d186
    d210 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> ( ( Set -> Set ) ∋ ( ( λ x2130 -> if false then if false then Bool else x2130 else if true then x2120 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2140 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2150 -> if false then x2150 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d210 = ( M.M1'.d115 ) $ ( ( M.M1'.d100 ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d140 ) $ ( ( M.M1'.d131 ) $ ( ( M.M1'.d86 ) $ ( ( M.M1'.d120 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> x2110 ) ) ) $ ( d181 ) ) ) ) ) ) $ ( if true then d178 else d171 ) ) ) )
    d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2190 -> if true then Bool else Bool ) ) ) $ ( Bool ) else if true then x2180 else x2180 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2200 -> ( ( Set -> Set ) ∋ ( ( λ x2210 -> x2200 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d216 = ( M.M1'.d65 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> if x2170 then d205 else true ) ) ) $ ( if d173 then false else d210 ) )
    d222 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2250 -> if true then x2250 else x2250 ) ) ) $ ( if true then Bool else Bool )
    d222 = ( M.M1'.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> true ) ) ) $ ( true ) ) ) ) $ ( if d205 then true else false ) )
    d226 : ( ( Set -> Set ) ∋ ( ( λ x2270 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2280 -> if false then Bool else x2270 ) ) ) $ ( x2270 ) else ( ( Set -> Set ) ∋ ( ( λ x2290 -> if true then Bool else x2270 ) ) ) $ ( x2270 ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d226 = ( M.M1'.d68 ) $ ( ( M.M1'.d60 ) $ ( if if true then false else false then if false then d216 else d186 else if true then d216 else d216 ) )
    d230 : ( ( Set -> Set ) ∋ ( ( λ x2320 -> ( ( Set -> Set ) ∋ ( ( λ x2330 -> ( ( Set -> Set ) ∋ ( ( λ x2340 -> ( ( Set -> Set ) ∋ ( ( λ x2350 -> if false then x2350 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then x2330 else x2320 ) ) ) ) $ ( if true then x2320 else Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d230 = ( M.M1'.d108 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> ( M.M1'.d24 ) $ ( ( M.M1'.d7 ) $ ( ( ( M.M1.d60 ) $ ( if d186 then false else false ) ) $ ( if true then false else true ) ) ) ) ) ) $ ( if d190 then true else d195 ) )
    d236 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2370 -> if false then x2370 else x2370 ) ) ) $ ( if false then Bool else Bool )
    d236 = if if d190 then true else true then if true then false else true else if d230 then false else d216
    d238 : ( ( Set -> Set ) ∋ ( ( λ x2400 -> ( ( Set -> Set ) ∋ ( ( λ x2410 -> ( ( Set -> Set ) ∋ ( ( λ x2420 -> ( ( Set -> Set ) ∋ ( ( λ x2430 -> if false then x2400 else Bool ) ) ) $ ( x2420 ) ) ) ) $ ( if false then x2400 else Bool ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2440 -> if false then x2440 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d238 = ( M.M1'.d113 ) $ ( ( M.M1'.d77 ) $ ( ( ( M.M1.d86 ) $ ( ( M.M1'.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> d226 ) ) ) $ ( true ) ) ) ) $ ( if d173 then d230 else d200 ) ) )
    d245 : ( ( Set -> Set ) ∋ ( ( λ x2480 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2490 -> if false then Bool else x2490 ) ) ) $ ( x2480 ) else if false then x2480 else x2480 ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d245 = ( ( Bool -> Bool ) ∋ ( ( λ x2460 -> ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> x2460 ) ) ) $ ( d181 ) ) ) ) $ ( if false then d238 else d222 )
    d250 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> ( ( Set -> Set ) ∋ ( ( λ x2540 -> if true then if true then x2530 else Bool else if false then x2540 else x2530 ) ) ) $ ( if false then x2530 else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d250 = ( ( Bool -> Bool ) ∋ ( ( λ x2510 -> ( M.M1'.d158 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> x2520 ) ) ) $ ( true ) ) ) ) ) $ ( if true then true else d245 )
    d255 : ( ( Set -> Set ) ∋ ( ( λ x2580 -> ( ( Set -> Set ) ∋ ( ( λ x2590 -> if false then if false then Bool else x2580 else if false then Bool else x2590 ) ) ) $ ( if false then Bool else x2580 ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d255 = ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> ( M.M1'.d65 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> d173 ) ) ) $ ( x2560 ) ) ) ) ) $ ( if true then true else d238 )
    d260 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if false then if true then x2610 else x2610 else ( ( Set -> Set ) ∋ ( ( λ x2620 -> if false then x2620 else x2620 ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2630 -> ( ( Set -> Set ) ∋ ( ( λ x2640 -> x2630 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d260 = if if true then true else true then if false then false else d186 else if d216 then true else d205
    d265 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2670 -> if false then x2670 else Bool ) ) ) $ ( if false then Bool else Bool )
    d265 = ( M.M1'.d146 ) $ ( ( ( M.M1.d60 ) $ ( ( M.M1'.d3 ) $ ( ( ( M.M1.d120 ) $ ( true ) ) $ ( d210 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> x2660 ) ) ) $ ( false ) ) )
    d268 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d268 = ( M.M1'.d62 ) $ ( if if d226 then d236 else false then if d210 then d216 else true else if d186 then d181 else d238 )
    d269 : if false then ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> x2720 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if false then if true then Bool else Bool else if false then Bool else Bool
    d269 = ( ( M.M1.d79 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> d186 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d143 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> d200 ) ) ) $ ( d190 ) ) )
    d274 : ( ( Set -> Set ) ∋ ( ( λ x2760 -> ( ( Set -> Set ) ∋ ( ( λ x2770 -> if false then if true then Bool else x2760 else if false then x2760 else Bool ) ) ) $ ( if false then x2760 else x2760 ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d274 = ( M.M1'.d89 ) $ ( ( M.M1'.d86 ) $ ( ( M.M1'.d77 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> if false then x2750 else true ) ) ) $ ( if d268 then true else d200 ) ) ) )
    d278 : ( ( Set -> Set ) ∋ ( ( λ x2790 -> ( ( Set -> Set ) ∋ ( ( λ x2800 -> if true then if false then x2800 else Bool else if false then x2790 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2810 -> if true then x2790 else Bool ) ) ) $ ( x2790 ) ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d278 = if if true then true else d236 then if d186 then d190 else d230 else if true then d226 else true
    d282 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d282 = ( M.M1'.d131 ) $ ( ( M.M1'.d3 ) $ ( ( ( M.M1.d77 ) $ ( ( M.M1'.d161 ) $ ( ( M.M1'.d86 ) $ ( if d181 then d269 else d236 ) ) ) ) $ ( if true then d205 else false ) ) )
    d283 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d283 = ( ( M.M1.d89 ) $ ( ( M.M1'.d134 ) $ ( if true then true else true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> d268 ) ) ) $ ( d181 ) )
    d285 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then x2860 else x2870 ) ) ) $ ( Bool ) else if false then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2880 -> if true then Bool else x2880 ) ) ) $ ( if true then Bool else Bool ) )
    d285 = ( M.M1'.d131 ) $ ( ( ( M.M1.d115 ) $ ( if true then false else d226 ) ) $ ( ( ( M.M1.d131 ) $ ( true ) ) $ ( false ) ) )
    d289 : ( ( Set -> Set ) ∋ ( ( λ x2920 -> if true then if true then x2920 else Bool else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2930 -> if false then x2930 else x2930 ) ) ) $ ( if false then Bool else Bool ) )
    d289 = ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> ( M.M1'.d158 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> false ) ) ) $ ( d205 ) ) ) ) ) $ ( if false then true else d210 )
    d294 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> ( ( Set -> Set ) ∋ ( ( λ x2970 -> ( ( Set -> Set ) ∋ ( ( λ x2980 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then x2960 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2990 -> if false then Bool else x2990 ) ) ) $ ( x2950 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3000 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d294 = ( ( M.M1.d79 ) $ ( ( M.M1'.d97 ) $ ( ( M.M1'.d137 ) $ ( if true then d195 else false ) ) ) ) $ ( if false then true else true )
    d301 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3020 -> ( ( Set -> Set ) ∋ ( ( λ x3030 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d301 = ( ( M.M1.d43 ) $ ( ( M.M1'.d134 ) $ ( ( M.M1'.d158 ) $ ( ( ( M.M1.d146 ) $ ( true ) ) $ ( d245 ) ) ) ) ) $ ( if false then d186 else false )
    d304 : ( ( Set -> Set ) ∋ ( ( λ x3050 -> ( ( Set -> Set ) ∋ ( ( λ x3060 -> ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then Bool else Bool ) ) ) $ ( if false then x3050 else x3060 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3080 -> if false then Bool else x3050 ) ) ) $ ( x3050 ) ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d304 = ( M.M1'.d100 ) $ ( if if true then true else d274 then if false then true else d285 else if d230 then false else d268 )
    d309 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3130 -> if true then x3120 else x3120 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3140 -> if true then Bool else x3120 ) ) ) $ ( x3120 ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d309 = ( M.M1'.d79 ) $ ( ( M.M1'.d166 ) $ ( ( M.M1'.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> ( M.M1'.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> d301 ) ) ) $ ( x3100 ) ) ) ) ) $ ( if false then d285 else d178 ) ) ) )
    d315 : ( ( Set -> Set ) ∋ ( ( λ x3170 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3180 -> if false then Bool else x3170 ) ) ) $ ( x3170 ) else ( ( Set -> Set ) ∋ ( ( λ x3190 -> if true then x3190 else Bool ) ) ) $ ( x3170 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3200 -> ( ( Set -> Set ) ∋ ( ( λ x3210 -> Bool ) ) ) $ ( x3200 ) ) ) ) $ ( if false then Bool else Bool ) )
    d315 = ( M.M1'.d89 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> ( M.M1'.d124 ) $ ( ( ( M.M1.d27 ) $ ( if d283 then x3160 else d205 ) ) $ ( if false then x3160 else x3160 ) ) ) ) ) $ ( if true then true else true ) )
    d322 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d322 = ( M.M1'.d82 ) $ ( if if d173 then true else false then if d178 then d315 else d186 else if true then d283 else d178 )
    d323 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then if true then Bool else x3240 else if false then Bool else Bool ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d323 = if if d274 then true else true then if d222 then true else d255 else if d238 then d283 else true
    d325 : if false then ( ( Set -> Set ) ∋ ( ( λ x3260 -> ( ( Set -> Set ) ∋ ( ( λ x3270 -> x3260 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3280 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d325 = ( ( M.M1.d3 ) $ ( ( ( M.M1.d124 ) $ ( d205 ) ) $ ( true ) ) ) $ ( ( ( M.M1.d120 ) $ ( false ) ) $ ( d274 ) )
    d329 : if false then ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then Bool else x3300 ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
    d329 = if if true then d171 else d230 then if d250 then false else false else if d289 then true else d226
    d331 : if true then ( ( Set -> Set ) ∋ ( ( λ x3330 -> ( ( Set -> Set ) ∋ ( ( λ x3340 -> x3330 ) ) ) $ ( x3330 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3350 -> ( ( Set -> Set ) ∋ ( ( λ x3360 -> Bool ) ) ) $ ( x3350 ) ) ) ) $ ( if true then Bool else Bool )
    d331 = ( M.M1'.d140 ) $ ( ( ( M.M1.d152 ) $ ( if d216 then d181 else true ) ) $ ( ( M.M1'.d62 ) $ ( ( M.M1'.d134 ) $ ( ( M.M1'.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3320 -> d283 ) ) ) $ ( d181 ) ) ) ) ) )
    d337 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> ( ( Set -> Set ) ∋ ( ( λ x3390 -> ( ( Set -> Set ) ∋ ( ( λ x3400 -> ( ( Set -> Set ) ∋ ( ( λ x3410 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else x3390 ) ) ) ) $ ( if true then Bool else x3380 ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d337 = ( M.M1'.d10 ) $ ( ( M.M1'.d77 ) $ ( if if false then false else false then if true then false else true else if d210 then true else false ) )
    d342 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3450 -> if false then x3450 else x3450 ) ) ) $ ( x3440 ) else if true then x3440 else x3440 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3460 -> if false then x3460 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d342 = ( M.M1'.d24 ) $ ( ( ( M.M1.d146 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> d245 ) ) ) $ ( d200 ) ) ) $ ( ( ( M.M1.d43 ) $ ( d329 ) ) $ ( false ) ) )
    d347 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3490 -> ( ( Set -> Set ) ∋ ( ( λ x3500 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d347 = ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> ( ( M.M1.d10 ) $ ( if d269 then d200 else x3480 ) ) $ ( if d255 then x3480 else x3480 ) ) ) ) $ ( if false then d222 else false )
    d351 : ( ( Set -> Set ) ∋ ( ( λ x3520 -> ( ( Set -> Set ) ∋ ( ( λ x3530 -> ( ( Set -> Set ) ∋ ( ( λ x3540 -> if true then Bool else x3530 ) ) ) $ ( if true then x3520 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3550 -> if true then x3520 else Bool ) ) ) $ ( x3520 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3560 -> ( ( Set -> Set ) ∋ ( ( λ x3570 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d351 = if if false then true else d260 then if d269 then false else d195 else if false then d230 else d289
    d358 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
    d358 = ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> x3590 ) ) ) $ ( d222 ) ) ) ) $ ( if d322 then d309 else true )
    d361 : ( ( Set -> Set ) ∋ ( ( λ x3630 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3640 -> if true then Bool else x3630 ) ) ) $ ( x3630 ) else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3650 -> ( ( Set -> Set ) ∋ ( ( λ x3660 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d361 = ( ( M.M1.d100 ) $ ( ( M.M1'.d77 ) $ ( if true then false else d210 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( true ) )
    d367 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
    d367 = ( M.M1'.d27 ) $ ( ( M.M1'.d24 ) $ ( ( M.M1'.d124 ) $ ( ( ( M.M1.d16 ) $ ( ( ( M.M1.d161 ) $ ( false ) ) $ ( d351 ) ) ) $ ( ( M.M1'.d100 ) $ ( ( ( M.M1.d94 ) $ ( d285 ) ) $ ( true ) ) ) ) ) )
    d368 : if false then ( ( Set -> Set ) ∋ ( ( λ x3690 -> if false then x3690 else x3690 ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
    d368 = ( ( M.M1.d140 ) $ ( ( M.M1'.d137 ) $ ( ( ( M.M1.d73 ) $ ( d255 ) ) $ ( d200 ) ) ) ) $ ( ( M.M1'.d43 ) $ ( ( ( M.M1.d89 ) $ ( d301 ) ) $ ( true ) ) )
    d370 : ( ( Set -> Set ) ∋ ( ( λ x3730 -> ( ( Set -> Set ) ∋ ( ( λ x3740 -> if false then if true then x3740 else Bool else if false then Bool else x3740 ) ) ) $ ( if false then Bool else x3730 ) ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d370 = ( ( Bool -> Bool ) ∋ ( ( λ x3710 -> ( ( Bool -> Bool ) ∋ ( ( λ x3720 -> true ) ) ) $ ( false ) ) ) ) $ ( if d325 then d265 else true )
    d375 : if true then ( ( Set -> Set ) ∋ ( ( λ x3760 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d375 = if if d370 then false else true then if d337 then d351 else true else if d200 then true else true
    d377 : ( ( Set -> Set ) ∋ ( ( λ x3780 -> if false then if false then Bool else x3780 else ( ( Set -> Set ) ∋ ( ( λ x3790 -> if true then x3790 else x3780 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d377 = if if d351 then d245 else true then if d315 then d342 else d325 else if d282 then d367 else d171