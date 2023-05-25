module TypeSize50Test5  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else x20 ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then Bool else x40 ) ) ) $ ( Bool ) )  where
            d5 : if false then ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x90 else Bool ) ) ) $ ( if true then Bool else Bool )
            d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if false then p30 else false ) ) ) $ ( if p10 then true else true )
            d10 : if true then ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( x140 ) ) ) ) $ ( if false then Bool else Bool )
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> false ) ) ) $ ( d5 ) ) ) ) $ ( if d5 then p10 else false )
            d16 : if false then ( ( Set -> Set ) ∋ ( ( λ x170 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if true then if false then Bool else Bool else if false then Bool else Bool
            d16 = if if d10 then p30 else d5 then if false then d10 else d10 else if d10 then true else true
            d19 : if false then ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> x200 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
            d19 = if if p30 then true else d16 then if p10 then d10 else false else if d5 then true else p10
            d22 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> ( ( Set -> Set ) ∋ ( ( λ x250 -> if true then x230 else x240 ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x260 -> if true then Bool else x260 ) ) ) $ ( x230 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d22 = if if d16 then d5 else true then if d19 then d5 else false else if false then d16 else false
            d29 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
            d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if d19 then p10 else true ) ) ) $ ( if d16 then false else p10 )
            d31 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x320 ) ) ) $ ( false ) ) ) ) $ ( if false then p30 else d16 )
            d36 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
            d36 = if if true then d16 else p30 then if d29 then p30 else d29 else if d10 then d10 else false
            d37 : ( ( Set -> Set ) ∋ ( ( λ x380 -> if true then if true then x380 else x380 else if true then x380 else x380 ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d37 = if if d5 then p30 else false then if p30 then d5 else d10 else if p10 then p10 else d36
            d39 : ( ( Set -> Set ) ∋ ( ( λ x400 -> if false then ( ( Set -> Set ) ∋ ( ( λ x410 -> if true then Bool else x400 ) ) ) $ ( x400 ) else if false then x400 else Bool ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d39 = if if p30 then d19 else true then if p10 then p30 else d10 else if p30 then d29 else p10
            d42 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
            d42 = if if true then true else true then if false then p30 else false else if p30 then p10 else p10
            d43 : if false then ( ( Set -> Set ) ∋ ( ( λ x450 -> ( ( Set -> Set ) ∋ ( ( λ x460 -> Bool ) ) ) $ ( x450 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x480 -> x470 ) ) ) $ ( x470 ) ) ) ) $ ( if true then Bool else Bool )
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if false then true else p30 ) ) ) $ ( if p10 then d31 else d10 )
            d49 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> if false then if true then x510 else Bool else if false then x510 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x520 -> if true then x520 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d49 = if if p10 then true else false then if true then d10 else p30 else if p30 then d22 else true
            d53 : ( ( Set -> Set ) ∋ ( ( λ x550 -> if true then ( ( Set -> Set ) ∋ ( ( λ x560 -> if true then x550 else x550 ) ) ) $ ( x550 ) else ( ( Set -> Set ) ∋ ( ( λ x570 -> if false then Bool else x550 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if x540 then d43 else true ) ) ) $ ( if p30 then p10 else d10 )
            d58 : if true then ( ( Set -> Set ) ∋ ( ( λ x590 -> if true then Bool else x590 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> x600 ) ) ) $ ( x600 ) ) ) ) $ ( if false then Bool else Bool )
            d58 = if if true then false else p30 then if false then d37 else d39 else if d16 then d43 else true
            d62 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then if false then x640 else Bool else ( ( Set -> Set ) ∋ ( ( λ x650 -> if false then x640 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x660 -> ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if true then d53 else d5 ) ) ) $ ( if d58 then p10 else p10 )
            d68 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> if true then if true then Bool else x690 else if false then x700 else x690 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x710 -> if false then x690 else x690 ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d68 = if if d19 then true else true then if true then d36 else false else if p30 then d10 else p10
            d72 : ( ( Set -> Set ) ∋ ( ( λ x730 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then if true then x740 else Bool else if true then Bool else x730 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x750 -> if true then Bool else x730 ) ) ) $ ( x730 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x760 -> ( ( Set -> Set ) ∋ ( ( λ x770 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d72 = if if true then d19 else d49 then if d37 then p10 else d19 else if d58 then p30 else true
            d78 : if true then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> Bool ) ) ) $ ( x810 ) ) ) ) $ ( if true then Bool else Bool )
            d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> d10 ) ) ) $ ( p30 ) ) ) ) $ ( if d39 then true else p10 )
            d83 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
            d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> x840 ) ) ) $ ( d43 ) ) ) ) $ ( if true then p10 else p30 )
            d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if true then if true then Bool else Bool else if true then x890 else x890 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> ( ( Bool -> Bool ) ∋ ( ( λ x880 -> d43 ) ) ) $ ( x870 ) ) ) ) $ ( if p30 then d49 else false )
            d92 : ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> if false then if false then Bool else Bool else if true then x930 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then Bool else Bool ) ) ) $ ( x930 ) ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d92 = if if p30 then d62 else false then if p30 then true else p10 else if false then p10 else true
            d96 : if false then ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1000 -> ( ( Set -> Set ) ∋ ( ( λ x1010 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( Bool -> Bool ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( p30 ) ) ) ) $ ( if false then true else false )
            d102 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> if true then x1050 else x1030 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else x1030 ) ) ) ) $ ( if false then x1030 else Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d102 = if if p30 then d78 else d10 then if false then false else p10 else if d86 then p30 else false
            d107 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1090 -> if true then x1090 else x1090 ) ) ) $ ( x1080 ) else ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then x1100 else x1100 ) ) ) $ ( x1080 ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d107 = if if true then p10 else d96 then if d49 then d31 else p10 else if false then p30 else d83
            d111 : if false then ( ( Set -> Set ) ∋ ( ( λ x1130 -> if true then x1130 else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1140 -> if true then Bool else x1140 ) ) ) $ ( if false then Bool else Bool )
            d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> if false then p10 else x1120 ) ) ) $ ( if p10 then p30 else p10 )
            d115 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> if false then Bool else Bool ) ) ) $ ( if true then x1170 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1190 -> if true then x1190 else Bool ) ) ) $ ( x1160 ) ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d115 = if if true then d19 else p10 then if false then p10 else p30 else if d37 then p30 else p30
            d120 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> if true then if true then x1220 else x1220 else if true then x1220 else x1220 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1240 -> if true then x1240 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if false then false else p30 ) ) ) $ ( if p10 then true else true )
            d127 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then if true then x1290 else Bool else if false then x1290 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1300 -> if false then x1300 else Bool ) ) ) $ ( if true then Bool else Bool ) )
            d127 = ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> if p10 then x1280 else d31 ) ) ) $ ( if p30 then p10 else p30 )
            d131 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d131 = if if p30 then d36 else true then if p10 then d22 else true else if d16 then d111 else false
            d132 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> if true then ( ( Set -> Set ) ∋ ( ( λ x1360 -> if false then Bool else Bool ) ) ) $ ( x1350 ) else if false then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1370 -> ( ( Set -> Set ) ∋ ( ( λ x1380 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( true ) ) ) ) $ ( if d86 then d29 else d36 )
            d139 : if false then ( ( Set -> Set ) ∋ ( ( λ x1420 -> if false then Bool else x1420 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> x1430 ) ) ) $ ( x1430 ) ) ) ) $ ( if false then Bool else Bool )
            d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> d10 ) ) ) $ ( x1400 ) ) ) ) $ ( if false then false else d62 )
            d145 : if true then if false then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> if true then false else p10 ) ) ) $ ( if false then p10 else false )
            d147 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> ( ( Set -> Set ) ∋ ( ( λ x1490 -> ( ( Set -> Set ) ∋ ( ( λ x1500 -> ( ( Set -> Set ) ∋ ( ( λ x1510 -> if false then x1480 else x1500 ) ) ) $ ( Bool ) ) ) ) $ ( if false then x1480 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then x1520 else x1480 ) ) ) $ ( x1480 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then x1530 else x1530 ) ) ) $ ( if true then Bool else Bool ) )
            d147 = if if p30 then true else d115 then if d92 then p30 else p10 else if p30 then true else p10
            d154 : if true then ( ( Set -> Set ) ∋ ( ( λ x1570 -> if true then Bool else x1570 ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
            d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> p10 ) ) ) $ ( false ) ) ) ) $ ( if d111 then true else d83 )
            d158 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> ( ( Set -> Set ) ∋ ( ( λ x1620 -> if true then if false then Bool else Bool else if false then x1610 else x1620 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then x1630 else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
            d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> d96 ) ) ) $ ( d132 ) ) ) ) $ ( if p30 then d145 else d31 )
            d164 : if true then ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> Bool ) ) ) $ ( x1650 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1670 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d164 = if if true then true else p30 then if true then d49 else p30 else if true then false else d147
            d168 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else if false then if true then Bool else Bool else if false then Bool else Bool
            d168 = if if true then p10 else true then if false then p10 else false else if true then p30 else d19
            d169 : if false then ( ( Set -> Set ) ∋ ( ( λ x1700 -> if false then Bool else x1700 ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
            d169 = if if true then true else d36 then if p30 then true else true else if d115 then p30 else false
            d171 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> if false then Bool else Bool ) ) ) $ ( if false then x1740 else Bool ) ) ) ) $ ( if true then x1740 else x1740 ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d171 = ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> p30 ) ) ) $ ( true ) ) ) ) $ ( if d168 then p10 else false )
        module M1'  = M1 ( false ) 
    d177 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then if true then Bool else x1790 else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
    d177 = ( ( M.M1.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> true ) ) ) $ ( false ) ) ) $ ( ( M.M1'.d22 ) $ ( ( M.M1'.d120 ) $ ( if false then false else false ) ) )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> ( ( Set -> Set ) ∋ ( ( λ x1860 -> if false then x1830 else Bool ) ) ) $ ( x1840 ) ) ) ) $ ( if false then x1840 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1870 -> if false then x1830 else x1830 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1880 -> if true then x1880 else x1880 ) ) ) $ ( if true then Bool else Bool ) )
    d182 = ( ( M.M1.d120 ) $ ( if true then true else d177 ) ) $ ( ( ( M.M1.d169 ) $ ( d177 ) ) $ ( d177 ) )
    d189 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d189 = ( M.M1'.d132 ) $ ( ( M.M1'.d169 ) $ ( ( M.M1'.d169 ) $ ( ( ( M.M1.d132 ) $ ( ( ( M.M1.d19 ) $ ( d177 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> d182 ) ) ) $ ( true ) ) ) ) )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> ( ( Set -> Set ) ∋ ( ( λ x1940 -> ( ( Set -> Set ) ∋ ( ( λ x1950 -> if true then Bool else x1940 ) ) ) $ ( x1920 ) ) ) ) $ ( if true then Bool else x1930 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1960 -> if true then Bool else x1960 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1970 -> if false then Bool else x1970 ) ) ) $ ( if true then Bool else Bool ) )
    d191 = if if false then d189 else false then if d182 then d177 else d177 else if d189 then true else d177
    d198 : if true then ( ( Set -> Set ) ∋ ( ( λ x2010 -> ( ( Set -> Set ) ∋ ( ( λ x2020 -> x2010 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else if true then if false then Bool else Bool else if true then Bool else Bool
    d198 = ( M.M1'.d107 ) $ ( ( ( M.M1.d139 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> d191 ) ) ) $ ( d189 ) ) ) $ ( ( M.M1'.d78 ) $ ( ( M.M1'.d92 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> d191 ) ) ) $ ( false ) ) ) ) )
    d203 : ( ( Set -> Set ) ∋ ( ( λ x2050 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2060 -> if false then Bool else Bool ) ) ) $ ( x2050 ) else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2070 -> ( ( Set -> Set ) ∋ ( ( λ x2080 -> x2080 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d203 = ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> ( M.M1'.d31 ) $ ( ( M.M1'.d62 ) $ ( ( ( M.M1.d62 ) $ ( if x2040 then x2040 else x2040 ) ) $ ( if x2040 then x2040 else false ) ) ) ) ) ) $ ( if d198 then d191 else d191 )
    d209 : if true then ( ( Set -> Set ) ∋ ( ( λ x2100 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2110 -> if false then Bool else x2110 ) ) ) $ ( if true then Bool else Bool )
    d209 = if if true then true else true then if d177 then d189 else d203 else if d182 then false else true
    d212 : if false then ( ( Set -> Set ) ∋ ( ( λ x2140 -> ( ( Set -> Set ) ∋ ( ( λ x2150 -> x2150 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d212 = ( M.M1'.d164 ) $ ( ( M.M1'.d171 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> ( ( M.M1.d86 ) $ ( if x2130 then x2130 else true ) ) $ ( if false then x2130 else true ) ) ) ) $ ( if d189 then d189 else false ) ) )
    d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2190 -> if true then Bool else Bool ) ) ) $ ( x2180 ) else ( ( Set -> Set ) ∋ ( ( λ x2200 -> if true then Bool else Bool ) ) ) $ ( x2180 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2210 -> if false then Bool else x2210 ) ) ) $ ( if false then Bool else Bool ) )
    d216 = ( ( M.M1.d86 ) $ ( ( M.M1'.d53 ) $ ( ( ( M.M1.d29 ) $ ( d177 ) ) $ ( false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> d191 ) ) ) $ ( true ) )
    d222 : if true then ( ( Set -> Set ) ∋ ( ( λ x2230 -> ( ( Set -> Set ) ∋ ( ( λ x2240 -> Bool ) ) ) $ ( x2230 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2250 -> ( ( Set -> Set ) ∋ ( ( λ x2260 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d222 = if if false then true else d191 then if d216 then true else d209 else if d177 then false else true
    d227 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if true then Bool else Bool else if true then Bool else Bool
    d227 = ( M.M1'.d36 ) $ ( if if true then false else true then if d177 then d209 else d189 else if false then false else d189 )
    d228 : if false then ( ( Set -> Set ) ∋ ( ( λ x2310 -> if false then x2310 else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
    d228 = ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> false ) ) ) $ ( x2290 ) ) ) ) $ ( if d177 then d203 else d198 )
    d232 : ( ( Set -> Set ) ∋ ( ( λ x2350 -> ( ( Set -> Set ) ∋ ( ( λ x2360 -> if true then if true then Bool else Bool else if false then x2350 else x2360 ) ) ) $ ( if false then x2350 else x2350 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2370 -> if true then x2370 else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d232 = ( M.M1'.d58 ) $ ( ( M.M1'.d145 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> ( ( Bool -> Bool ) ∋ ( ( λ x2340 -> x2330 ) ) ) $ ( true ) ) ) ) $ ( if false then d203 else d228 ) ) )
    d238 : if true then ( ( Set -> Set ) ∋ ( ( λ x2390 -> ( ( Set -> Set ) ∋ ( ( λ x2400 -> x2400 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if false then if true then Bool else Bool else if true then Bool else Bool
    d238 = if if d228 then false else false then if d203 then true else d212 else if true then true else d182
    d241 : ( ( Set -> Set ) ∋ ( ( λ x2430 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2440 -> if false then x2440 else Bool ) ) ) $ ( x2430 ) else if true then x2430 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2450 -> if true then Bool else x2450 ) ) ) $ ( if false then Bool else Bool ) )
    d241 = ( ( M.M1.d115 ) $ ( ( M.M1'.d131 ) $ ( ( ( M.M1.d58 ) $ ( false ) ) $ ( d203 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> x2420 ) ) ) $ ( d198 ) )
    d246 : ( ( Set -> Set ) ∋ ( ( λ x2470 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2480 -> if true then Bool else Bool ) ) ) $ ( Bool ) else if false then x2470 else x2470 ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
    d246 = if if false then true else d228 then if false then true else d216 else if d189 then true else true
    d249 : if false then ( ( Set -> Set ) ∋ ( ( λ x2500 -> if true then x2500 else Bool ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if false then Bool else Bool
    d249 = if if false then d191 else false then if false then d209 else false else if d182 then d238 else d189
    d251 : if false then ( ( Set -> Set ) ∋ ( ( λ x2540 -> ( ( Set -> Set ) ∋ ( ( λ x2550 -> x2540 ) ) ) $ ( x2540 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2560 -> ( ( Set -> Set ) ∋ ( ( λ x2570 -> x2570 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d251 = ( ( M.M1.d58 ) $ ( ( M.M1'.d83 ) $ ( ( M.M1'.d96 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> true ) ) ) $ ( false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> true ) ) ) $ ( true ) )
    d258 : ( ( Set -> Set ) ∋ ( ( λ x2610 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2620 -> if true then Bool else x2620 ) ) ) $ ( Bool ) else if false then x2610 else Bool ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
    d258 = ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> d177 ) ) ) $ ( true ) ) ) ) $ ( if d251 then true else d198 )
    d263 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2650 -> if false then x2650 else Bool ) ) ) $ ( if false then Bool else Bool )
    d263 = ( M.M1'.d139 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> ( M.M1'.d36 ) $ ( ( ( M.M1.d68 ) $ ( if false then true else x2640 ) ) $ ( if true then d189 else x2640 ) ) ) ) ) $ ( if d191 then d189 else true ) )
    d266 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2690 -> if false then x2690 else x2690 ) ) ) $ ( if false then Bool else Bool )
    d266 = ( ( Bool -> Bool ) ∋ ( ( λ x2670 -> ( M.M1'.d145 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> d249 ) ) ) $ ( false ) ) ) ) ) $ ( if d258 then d209 else d263 )
    d270 : if true then ( ( Set -> Set ) ∋ ( ( λ x2730 -> ( ( Set -> Set ) ∋ ( ( λ x2740 -> x2740 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2750 -> ( ( Set -> Set ) ∋ ( ( λ x2760 -> Bool ) ) ) $ ( x2750 ) ) ) ) $ ( if false then Bool else Bool )
    d270 = ( M.M1'.d168 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> ( M.M1'.d169 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> true ) ) ) $ ( x2710 ) ) ) ) ) $ ( if false then d177 else true ) )
    d277 : if true then ( ( Set -> Set ) ∋ ( ( λ x2790 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2800 -> ( ( Set -> Set ) ∋ ( ( λ x2810 -> x2800 ) ) ) $ ( x2800 ) ) ) ) $ ( if true then Bool else Bool )
    d277 = ( M.M1'.d92 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if x2780 then d198 else false ) ) ) $ ( if false then d258 else d270 ) )
    d282 : ( ( Set -> Set ) ∋ ( ( λ x2850 -> ( ( Set -> Set ) ∋ ( ( λ x2860 -> if true then if false then x2850 else Bool else if true then Bool else x2850 ) ) ) $ ( if true then x2850 else x2850 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2870 -> ( ( Set -> Set ) ∋ ( ( λ x2880 -> Bool ) ) ) $ ( x2870 ) ) ) ) $ ( if false then Bool else Bool ) )
    d282 = ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> ( M.M1'.d78 ) $ ( ( M.M1'.d78 ) $ ( ( M.M1'.d53 ) $ ( ( M.M1'.d145 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2840 -> true ) ) ) $ ( true ) ) ) ) ) ) ) ) $ ( if false then false else true )
    d289 : ( ( Set -> Set ) ∋ ( ( λ x2910 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2920 -> if false then Bool else x2910 ) ) ) $ ( x2910 ) else ( ( Set -> Set ) ∋ ( ( λ x2930 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d289 = ( ( M.M1.d102 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2900 -> x2900 ) ) ) $ ( d232 ) ) ) $ ( ( ( M.M1.d58 ) $ ( d232 ) ) $ ( true ) )
    d294 : ( ( Set -> Set ) ∋ ( ( λ x2960 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2970 -> if true then Bool else x2960 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2980 -> if true then x2980 else x2960 ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d294 = ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> ( ( M.M1.d111 ) $ ( if d203 then d212 else x2950 ) ) $ ( if d189 then x2950 else x2950 ) ) ) ) $ ( if d198 then d249 else d277 )
    d299 : ( ( Set -> Set ) ∋ ( ( λ x3020 -> ( ( Set -> Set ) ∋ ( ( λ x3030 -> ( ( Set -> Set ) ∋ ( ( λ x3040 -> ( ( Set -> Set ) ∋ ( ( λ x3050 -> if true then Bool else x3040 ) ) ) $ ( x3040 ) ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3060 -> if true then Bool else x3060 ) ) ) $ ( x3020 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3070 -> ( ( Set -> Set ) ∋ ( ( λ x3080 -> x3070 ) ) ) $ ( x3070 ) ) ) ) $ ( if true then Bool else Bool ) )
    d299 = ( M.M1'.d154 ) $ ( ( M.M1'.d168 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> ( ( Bool -> Bool ) ∋ ( ( λ x3010 -> false ) ) ) $ ( x3000 ) ) ) ) $ ( if d246 then true else true ) ) )
    d309 : ( ( Set -> Set ) ∋ ( ( λ x3110 -> ( ( Set -> Set ) ∋ ( ( λ x3120 -> if false then if false then Bool else Bool else if true then Bool else Bool ) ) ) $ ( if false then Bool else x3110 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3130 -> ( ( Set -> Set ) ∋ ( ( λ x3140 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d309 = ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> ( ( M.M1.d171 ) $ ( if d191 then d228 else false ) ) $ ( if d289 then false else x3100 ) ) ) ) $ ( if d289 then d198 else d277 )
    d315 : if false then ( ( Set -> Set ) ∋ ( ( λ x3160 -> ( ( Set -> Set ) ∋ ( ( λ x3170 -> x3170 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3180 -> ( ( Set -> Set ) ∋ ( ( λ x3190 -> x3190 ) ) ) $ ( x3180 ) ) ) ) $ ( if false then Bool else Bool )
    d315 = if if false then true else false then if false then true else d228 else if false then d216 else d270
    d320 : ( ( Set -> Set ) ∋ ( ( λ x3220 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3230 -> if false then x3220 else Bool ) ) ) $ ( x3220 ) else ( ( Set -> Set ) ∋ ( ( λ x3240 -> if true then Bool else Bool ) ) ) $ ( x3220 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3250 -> ( ( Set -> Set ) ∋ ( ( λ x3260 -> Bool ) ) ) $ ( x3250 ) ) ) ) $ ( if true then Bool else Bool ) )
    d320 = ( M.M1'.d169 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> ( M.M1'.d107 ) $ ( ( ( M.M1.d131 ) $ ( if d241 then true else x3210 ) ) $ ( if true then x3210 else x3210 ) ) ) ) ) $ ( if d177 then d228 else d189 ) )
    d327 : ( ( Set -> Set ) ∋ ( ( λ x3280 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3290 -> if true then x3290 else Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3310 -> if false then Bool else x3310 ) ) ) $ ( if false then Bool else Bool ) )
    d327 = if if d241 then true else d216 then if true then d263 else d258 else if d182 then d249 else true
    d332 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3350 -> if true then x3350 else x3350 ) ) ) $ ( if false then Bool else Bool )
    d332 = ( ( Bool -> Bool ) ∋ ( ( λ x3330 -> ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> d270 ) ) ) $ ( d249 ) ) ) ) $ ( if false then d191 else true )
    d336 : ( ( Set -> Set ) ∋ ( ( λ x3370 -> if false then ( ( Set -> Set ) ∋ ( ( λ x3380 -> if true then x3370 else x3380 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3390 -> if true then x3370 else x3390 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d336 = ( ( M.M1.d58 ) $ ( if false then true else true ) ) $ ( if d222 then true else true )
    d340 : if false then ( ( Set -> Set ) ∋ ( ( λ x3420 -> ( ( Set -> Set ) ∋ ( ( λ x3430 -> x3430 ) ) ) $ ( x3420 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3440 -> ( ( Set -> Set ) ∋ ( ( λ x3450 -> Bool ) ) ) $ ( x3440 ) ) ) ) $ ( if false then Bool else Bool )
    d340 = ( ( M.M1.d145 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> x3410 ) ) ) $ ( false ) ) ) $ ( ( M.M1'.d158 ) $ ( ( M.M1'.d72 ) $ ( if d266 then d320 else true ) ) )
    d346 : ( ( Set -> Set ) ∋ ( ( λ x3470 -> if true then if true then x3470 else x3470 else if true then Bool else x3470 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3480 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d346 = ( M.M1'.d127 ) $ ( if if d294 then d182 else d270 then if d216 then d189 else true else if d209 then d340 else false )
    d349 : if true then ( ( Set -> Set ) ∋ ( ( λ x3500 -> ( ( Set -> Set ) ∋ ( ( λ x3510 -> x3500 ) ) ) $ ( x3500 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3520 -> ( ( Set -> Set ) ∋ ( ( λ x3530 -> Bool ) ) ) $ ( x3520 ) ) ) ) $ ( if false then Bool else Bool )
    d349 = ( M.M1'.d43 ) $ ( ( M.M1'.d19 ) $ ( if if false then d309 else d282 then if false then true else d238 else if true then false else d332 ) )
    d354 : if false then ( ( Set -> Set ) ∋ ( ( λ x3550 -> if true then x3550 else x3550 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3560 -> if false then x3560 else x3560 ) ) ) $ ( if true then Bool else Bool )
    d354 = if if false then d189 else false then if d251 then d216 else d228 else if false then false else d222
    d357 : if true then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3590 -> if false then Bool else x3590 ) ) ) $ ( if true then Bool else Bool )
    d357 = ( ( M.M1.d158 ) $ ( ( M.M1'.d16 ) $ ( ( M.M1'.d78 ) $ ( ( M.M1'.d139 ) $ ( ( ( M.M1.d53 ) $ ( d294 ) ) $ ( d249 ) ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> d191 ) ) ) $ ( true ) )
    d360 : ( ( Set -> Set ) ∋ ( ( λ x3620 -> if false then if true then Bool else x3620 else ( ( Set -> Set ) ∋ ( ( λ x3630 -> if false then Bool else x3620 ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3640 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d360 = ( ( M.M1.d132 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3610 -> true ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d42 ) $ ( if d354 then d227 else d270 ) )
    d365 : ( ( Set -> Set ) ∋ ( ( λ x3670 -> ( ( Set -> Set ) ∋ ( ( λ x3680 -> if false then if false then x3680 else x3670 else if true then Bool else x3670 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3690 -> if true then x3670 else Bool ) ) ) $ ( x3670 ) ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d365 = ( ( Bool -> Bool ) ∋ ( ( λ x3660 -> ( ( M.M1.d31 ) $ ( if d251 then d266 else d282 ) ) $ ( if x3660 then true else false ) ) ) ) $ ( if d249 then d232 else d249 )
    d370 : if false then ( ( Set -> Set ) ∋ ( ( λ x3710 -> ( ( Set -> Set ) ∋ ( ( λ x3720 -> x3720 ) ) ) $ ( x3710 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3730 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d370 = if if false then d357 else d299 then if false then d357 else d263 else if false then d246 else true
    d374 : if true then ( ( Set -> Set ) ∋ ( ( λ x3770 -> ( ( Set -> Set ) ∋ ( ( λ x3780 -> Bool ) ) ) $ ( x3770 ) ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d374 = ( ( Bool -> Bool ) ∋ ( ( λ x3750 -> ( ( Bool -> Bool ) ∋ ( ( λ x3760 -> x3760 ) ) ) $ ( true ) ) ) ) $ ( if d182 then d212 else d349 )
    d379 : ( ( Set -> Set ) ∋ ( ( λ x3820 -> ( ( Set -> Set ) ∋ ( ( λ x3830 -> ( ( Set -> Set ) ∋ ( ( λ x3840 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else x3820 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3850 -> if false then x3820 else x3850 ) ) ) $ ( x3820 ) ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d379 = ( M.M1'.d145 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3800 -> ( ( Bool -> Bool ) ∋ ( ( λ x3810 -> d249 ) ) ) $ ( false ) ) ) ) $ ( if d299 then false else d263 ) )
    d386 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
    d386 = ( ( Bool -> Bool ) ∋ ( ( λ x3870 -> if x3870 then x3870 else d365 ) ) ) $ ( if d320 then d374 else false )
    d388 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3890 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d388 = ( ( M.M1.d102 ) $ ( ( ( M.M1.d115 ) $ ( false ) ) $ ( d258 ) ) ) $ ( ( M.M1'.d92 ) $ ( if d357 then true else d327 ) )
    d390 : if true then ( ( Set -> Set ) ∋ ( ( λ x3920 -> if false then x3920 else Bool ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3930 -> ( ( Set -> Set ) ∋ ( ( λ x3940 -> Bool ) ) ) $ ( x3930 ) ) ) ) $ ( if true then Bool else Bool )
    d390 = ( ( Bool -> Bool ) ∋ ( ( λ x3910 -> ( M.M1'.d111 ) $ ( ( ( M.M1.d111 ) $ ( if true then x3910 else true ) ) $ ( if x3910 then x3910 else d360 ) ) ) ) ) $ ( if true then d360 else false )
    d395 : ( ( Set -> Set ) ∋ ( ( λ x3970 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3980 -> if true then Bool else Bool ) ) ) $ ( x3970 ) else ( ( Set -> Set ) ∋ ( ( λ x3990 -> if true then x3970 else x3970 ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d395 = ( ( M.M1.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3960 -> d289 ) ) ) $ ( d277 ) ) ) $ ( ( ( M.M1.d164 ) $ ( d360 ) ) $ ( d294 ) )
    d400 : ( ( Set -> Set ) ∋ ( ( λ x4010 -> ( ( Set -> Set ) ∋ ( ( λ x4020 -> if false then if false then Bool else x4010 else if true then x4020 else x4020 ) ) ) $ ( if true then Bool else x4010 ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d400 = ( ( M.M1.d22 ) $ ( ( M.M1'.d86 ) $ ( if true then d327 else d249 ) ) ) $ ( if false then d294 else false )
    d403 : if false then ( ( Set -> Set ) ∋ ( ( λ x4040 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d403 = ( M.M1'.d58 ) $ ( ( ( M.M1.d131 ) $ ( ( ( M.M1.d96 ) $ ( d390 ) ) $ ( false ) ) ) $ ( ( ( M.M1.d158 ) $ ( false ) ) $ ( true ) ) )
    d405 : ( ( Set -> Set ) ∋ ( ( λ x4060 -> ( ( Set -> Set ) ∋ ( ( λ x4070 -> ( ( Set -> Set ) ∋ ( ( λ x4080 -> ( ( Set -> Set ) ∋ ( ( λ x4090 -> if true then Bool else x4060 ) ) ) $ ( x4060 ) ) ) ) $ ( if true then x4060 else Bool ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x4100 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d405 = ( M.M1'.d164 ) $ ( if if false then d379 else d315 then if true then true else d277 else if d177 then d374 else d191 )