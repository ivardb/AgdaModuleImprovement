module TypeSize50Test7  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
            d5 : if false then ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else Bool ) ) ) $ ( if false then Bool else Bool )
            d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if p30 then p30 else false ) ) ) $ ( if true then true else false )
            d10 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
            d10 = if if d5 then p30 else d5 then if false then true else d5 else if p10 then p10 else true
            d11 : if false then ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then x140 else Bool ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x120 ) ) ) $ ( p10 ) ) ) ) $ ( if true then p10 else d10 )
            d16 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then x170 else x180 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else x190 ) ) ) $ ( x170 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( x200 ) ) ) ) $ ( if false then Bool else Bool ) )
            d16 = if if d10 then false else true then if p10 then true else p30 else if d10 then d10 else false
            d22 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> if false then if false then x240 else x240 else if false then Bool else x230 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x250 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
            d22 = if if p30 then true else false then if p30 then d11 else p30 else if p10 then p10 else false
            d26 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if false then Bool else Bool
            d26 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x280 -> p30 ) ) ) $ ( false ) ) ) ) $ ( if true then true else p10 )
            d29 : ( ( Set -> Set ) ∋ ( ( λ x300 -> ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then if true then x310 else Bool else if false then Bool else Bool ) ) ) $ ( if true then x300 else x300 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x320 -> if false then x320 else Bool ) ) ) $ ( if true then Bool else Bool ) )
            d29 = if if false then p10 else p10 then if d26 then d5 else d26 else if d11 then p10 else d22
            d33 : ( ( Set -> Set ) ∋ ( ( λ x340 -> ( ( Set -> Set ) ∋ ( ( λ x350 -> if true then if false then x350 else Bool else if false then Bool else x350 ) ) ) $ ( if false then x340 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x360 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d33 = if if true then d26 else true then if p10 then p10 else false else if d5 then d5 else true
            d38 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if true then p10 else d33 ) ) ) $ ( if d29 then true else d22 )
            d40 : ( ( Set -> Set ) ∋ ( ( λ x410 -> if false then if false then x410 else x410 else ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then x420 else x410 ) ) ) $ ( x410 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> x430 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
            d40 = if if false then p10 else p10 then if d10 then d10 else d38 else if false then d26 else d33
            d45 : ( ( Set -> Set ) ∋ ( ( λ x470 -> if false then ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then Bool else Bool ) ) ) $ ( x470 ) else ( ( Set -> Set ) ∋ ( ( λ x490 -> if false then Bool else x490 ) ) ) $ ( x470 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x500 -> if true then x500 else Bool ) ) ) $ ( if false then Bool else Bool ) )
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if false then x460 else d22 ) ) ) $ ( if p30 then true else d38 )
            d51 : ( ( Set -> Set ) ∋ ( ( λ x520 -> if false then if true then Bool else Bool else if true then x520 else x520 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x530 -> ( ( Set -> Set ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
            d51 = if if d29 then d33 else p10 then if d22 then p10 else d33 else if p30 then p10 else d5
            d55 : ( ( Set -> Set ) ∋ ( ( λ x570 -> if true then if false then x570 else Bool else if false then x570 else x570 ) ) ) $ ( if true then if false then Bool else Bool else if false then Bool else Bool )
            d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if x560 then false else true ) ) ) $ ( if p30 then p30 else false )
            d58 : if false then ( ( Set -> Set ) ∋ ( ( λ x600 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x620 -> if false then x620 else x620 ) ) ) $ ( if true then Bool else Bool )
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if x590 then d45 else d16 ) ) ) $ ( if false then d40 else false )
            d63 : ( ( Set -> Set ) ∋ ( ( λ x650 -> if false then if false then x650 else Bool else ( ( Set -> Set ) ∋ ( ( λ x660 -> if false then x660 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x670 -> ( ( Set -> Set ) ∋ ( ( λ x680 -> Bool ) ) ) $ ( x670 ) ) ) ) $ ( if false then Bool else Bool ) )
            d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if p10 then p10 else x640 ) ) ) $ ( if p10 then p10 else false )
            d69 : ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x730 -> if false then x700 else Bool ) ) ) $ ( x700 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x740 -> if true then Bool else x740 ) ) ) $ ( if true then Bool else Bool ) )
            d69 = if if p10 then false else p30 then if true then false else d55 else if false then d5 else p10
            d75 : if false then ( ( Set -> Set ) ∋ ( ( λ x760 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d75 = if if p30 then true else false then if false then false else d38 else if d69 then false else false
            d77 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> if true then x810 else Bool ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if true then Bool else x790 ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if x780 then d40 else p10 ) ) ) $ ( if d33 then d45 else p30 )
            d82 : if true then ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> x850 ) ) ) $ ( x840 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x860 -> if false then Bool else x860 ) ) ) $ ( if true then Bool else Bool )
            d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if p10 then false else d29 ) ) ) $ ( if false then false else true )
            d87 : ( ( Set -> Set ) ∋ ( ( λ x880 -> ( ( Set -> Set ) ∋ ( ( λ x890 -> if false then if false then Bool else x880 else if true then Bool else Bool ) ) ) $ ( if true then x880 else Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d87 = if if p10 then d11 else true then if p30 then d11 else d5 else if d38 then p10 else d40
            d90 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if true then d77 else p30 ) ) ) $ ( if true then false else d33 )
            d94 : if false then ( ( Set -> Set ) ∋ ( ( λ x950 -> ( ( Set -> Set ) ∋ ( ( λ x960 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x970 -> ( ( Set -> Set ) ∋ ( ( λ x980 -> Bool ) ) ) $ ( x970 ) ) ) ) $ ( if true then Bool else Bool )
            d94 = if if p10 then false else d55 then if p10 then false else d40 else if p10 then false else d82
            d99 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1020 -> if false then x1020 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
            d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> if p10 then false else d55 ) ) ) $ ( if p30 then d16 else p10 )
            d103 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if true then Bool else Bool
            d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> true ) ) ) $ ( d40 ) ) ) ) $ ( if false then d16 else p10 )
            d106 : if true then ( ( Set -> Set ) ∋ ( ( λ x1070 -> if false then Bool else x1070 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then Bool else x1080 ) ) ) $ ( if true then Bool else Bool )
            d106 = if if true then d38 else d55 then if p30 then p30 else true else if true then d82 else p30
            d109 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1100 -> if false then Bool else x1100 ) ) ) $ ( if true then Bool else Bool )
            d109 = if if p10 then d51 else p30 then if false then d55 else p10 else if p10 then true else false
            d111 : if false then ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( x1120 ) ) ) ) $ ( if true then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
            d111 = if if false then d75 else true then if false then p10 else d55 else if p30 then true else p30
            d114 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> if false then if true then Bool else x1160 else ( ( Set -> Set ) ∋ ( ( λ x1170 -> if false then x1170 else x1160 ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> x1180 ) ) ) $ ( x1180 ) ) ) ) $ ( if false then Bool else Bool ) )
            d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if d29 then d51 else d10 ) ) ) $ ( if false then false else d111 )
            d120 : ( ( Set -> Set ) ∋ ( ( λ x1230 -> if false then if true then x1230 else Bool else if true then Bool else Bool ) ) ) $ ( if true then if false then Bool else Bool else if true then Bool else Bool )
            d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( true ) ) ) ) $ ( if p10 then false else false )
            d124 : if true then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1260 -> if true then x1260 else Bool ) ) ) $ ( if false then Bool else Bool )
            d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if d51 then d5 else true ) ) ) $ ( if p10 then d120 else p30 )
            d127 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if true then if true then x1300 else Bool else ( ( Set -> Set ) ∋ ( ( λ x1310 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
            d127 = ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> false ) ) ) $ ( true ) ) ) ) $ ( if d77 then d124 else p30 )
            d132 : if true then ( ( Set -> Set ) ∋ ( ( λ x1330 -> if false then Bool else x1330 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1340 -> ( ( Set -> Set ) ∋ ( ( λ x1350 -> x1340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d132 = if if p30 then true else true then if false then true else d5 else if d75 then true else d38
            d136 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> if true then if false then Bool else x1380 else if false then x1380 else x1380 ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
            d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if d127 then false else p30 ) ) ) $ ( if d5 then d99 else true )
            d139 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> ( ( Set -> Set ) ∋ ( ( λ x1450 -> if false then Bool else Bool ) ) ) $ ( x1420 ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1460 -> if true then x1420 else x1460 ) ) ) $ ( Bool ) ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
            d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> false ) ) ) $ ( p30 ) ) ) ) $ ( if d114 then d124 else d38 )
            d147 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1480 -> if false then Bool else x1480 ) ) ) $ ( if false then Bool else Bool )
            d147 = if if p10 then p10 else true then if d51 then d87 else p30 else if true then d69 else false
            d149 : if true then ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> Bool ) ) ) $ ( x1510 ) ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
            d149 = ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> if false then p10 else false ) ) ) $ ( if p10 then d10 else p30 )
            d153 : if false then if false then if true then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
            d153 = if if p30 then p10 else p30 then if true then d149 else true else if d114 then false else d114
            d154 : if true then ( ( Set -> Set ) ∋ ( ( λ x1550 -> if false then x1550 else x1550 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( x1560 ) ) ) ) $ ( if false then Bool else Bool )
            d154 = if if p30 then p10 else p30 then if p30 then d111 else p10 else if d69 then d5 else p10
            d158 : if true then ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> x1590 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1610 -> if true then Bool else x1610 ) ) ) $ ( if true then Bool else Bool )
            d158 = if if false then d77 else false then if false then p30 else d11 else if p10 then d22 else p30
            d162 : if false then if true then if false then Bool else Bool else if true then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
            d162 = if if p30 then p10 else p10 then if d90 then d69 else true else if false then d26 else true
        module M1'  = M1 ( true ) 
    d163 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> ( ( Set -> Set ) ∋ ( ( λ x1670 -> if false then Bool else x1660 ) ) ) $ ( if false then Bool else x1650 ) ) ) ) $ ( if false then x1650 else Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d163 = ( ( M.M1.d99 ) $ ( if false then false else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> false ) ) ) $ ( true ) )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> if true then if true then x1700 else Bool else if true then Bool else x1700 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1710 -> if true then x1710 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d168 = ( M.M1'.d106 ) $ ( ( ( M.M1.d153 ) $ ( ( M.M1'.d11 ) $ ( ( M.M1'.d139 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> d163 ) ) ) $ ( d163 ) ) ) ) ) $ ( ( ( M.M1.d16 ) $ ( false ) ) $ ( true ) ) )
    d172 : if false then if false then if false then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1730 -> if false then x1730 else x1730 ) ) ) $ ( if true then Bool else Bool )
    d172 = if if d163 then false else true then if d163 then d163 else true else if true then d163 else d168
    d174 : ( ( Set -> Set ) ∋ ( ( λ x1760 -> ( ( Set -> Set ) ∋ ( ( λ x1770 -> ( ( Set -> Set ) ∋ ( ( λ x1780 -> ( ( Set -> Set ) ∋ ( ( λ x1790 -> if false then Bool else x1760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else x1770 ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then Bool else x1800 ) ) ) $ ( if false then Bool else Bool ) )
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> ( ( M.M1.d127 ) $ ( if x1750 then x1750 else true ) ) $ ( if x1750 then x1750 else x1750 ) ) ) ) $ ( if d163 then d168 else false )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> if false then x1850 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then x1830 else Bool ) ) ) ) $ ( if false then x1820 else x1820 ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d181 = if if d172 then false else false then if false then false else d172 else if true then false else false
    d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> if true then if false then Bool else x1880 else if false then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1890 -> if false then x1890 else x1890 ) ) ) $ ( if false then Bool else Bool ) )
    d186 = ( ( M.M1.d77 ) $ ( if false then false else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> true ) ) ) $ ( d172 ) )
    d190 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
    d190 = ( M.M1'.d94 ) $ ( ( M.M1'.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if d163 then x1910 else d172 ) ) ) $ ( if true then true else false ) ) )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x1930 -> if false then ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then x1930 else x1940 ) ) ) $ ( x1930 ) else if true then Bool else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x1950 -> ( ( Set -> Set ) ∋ ( ( λ x1960 -> x1950 ) ) ) $ ( x1950 ) ) ) ) $ ( if true then Bool else Bool ) )
    d192 = if if false then false else d186 then if false then d172 else true else if d186 then false else d168
    d197 : if true then ( ( Set -> Set ) ∋ ( ( λ x1980 -> if false then Bool else x1980 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1990 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d197 = ( M.M1'.d114 ) $ ( ( ( M.M1.d55 ) $ ( ( ( M.M1.d94 ) $ ( d192 ) ) $ ( true ) ) ) $ ( if d172 then false else d172 ) )
    d200 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2010 -> if true then x2010 else Bool ) ) ) $ ( if true then Bool else Bool )
    d200 = if if d174 then d181 else true then if d168 then d174 else d197 else if true then true else d168
    d202 : if true then if true then if true then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d202 = if if true then d200 else true then if true then d192 else d200 else if true then d172 else d190
    d203 : if true then ( ( Set -> Set ) ∋ ( ( λ x2040 -> ( ( Set -> Set ) ∋ ( ( λ x2050 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2060 -> ( ( Set -> Set ) ∋ ( ( λ x2070 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d203 = ( M.M1'.d58 ) $ ( if if false then true else d202 then if d163 then true else d168 else if d172 then true else true )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> if true then if false then x2090 else Bool else ( ( Set -> Set ) ∋ ( ( λ x2100 -> if false then x2100 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2110 -> ( ( Set -> Set ) ∋ ( ( λ x2120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d208 = if if false then d203 else d172 then if d203 then d181 else d197 else if true then d181 else true
    d213 : ( ( Set -> Set ) ∋ ( ( λ x2140 -> if true then if false then x2140 else x2140 else if false then x2140 else Bool ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d213 = ( M.M1'.d90 ) $ ( ( M.M1'.d63 ) $ ( ( M.M1'.d153 ) $ ( if if false then d186 else d172 then if false then d208 else false else if true then true else d202 ) ) )
    d215 : if true then if true then if false then Bool else Bool else if true then Bool else Bool else if false then if false then Bool else Bool else if true then Bool else Bool
    d215 = ( M.M1'.d111 ) $ ( if if true then d190 else d192 then if d186 then true else true else if true then true else true )
    d216 : ( ( Set -> Set ) ∋ ( ( λ x2180 -> if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2190 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d216 = ( M.M1'.d5 ) $ ( ( ( M.M1.d162 ) $ ( ( M.M1'.d139 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2170 -> true ) ) ) $ ( false ) ) ) ) $ ( ( ( M.M1.d114 ) $ ( false ) ) $ ( d192 ) ) )
    d220 : if true then if false then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
    d220 = ( ( Bool -> Bool ) ∋ ( ( λ x2210 -> ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> x2210 ) ) ) $ ( true ) ) ) ) $ ( if false then d186 else false )
    d223 : ( ( Set -> Set ) ∋ ( ( λ x2250 -> if false then ( ( Set -> Set ) ∋ ( ( λ x2260 -> if true then Bool else Bool ) ) ) $ ( x2250 ) else ( ( Set -> Set ) ∋ ( ( λ x2270 -> if false then x2270 else Bool ) ) ) $ ( x2250 ) ) ) ) $ ( if true then if true then Bool else Bool else if false then Bool else Bool )
    d223 = ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> ( ( M.M1.d132 ) $ ( if d163 then false else d172 ) ) $ ( if d216 then x2240 else x2240 ) ) ) ) $ ( if d208 then false else d202 )
    d228 : ( ( Set -> Set ) ∋ ( ( λ x2300 -> ( ( Set -> Set ) ∋ ( ( λ x2310 -> ( ( Set -> Set ) ∋ ( ( λ x2320 -> ( ( Set -> Set ) ∋ ( ( λ x2330 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else x2300 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2340 -> if false then Bool else Bool ) ) ) $ ( x2300 ) ) ) ) ) $ ( if false then if false then Bool else Bool else if true then Bool else Bool )
    d228 = ( M.M1'.d94 ) $ ( ( M.M1'.d5 ) $ ( ( ( M.M1.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2290 -> x2290 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d40 ) $ ( ( ( M.M1.d94 ) $ ( d181 ) ) $ ( d174 ) ) ) ) )
    d235 : if true then ( ( Set -> Set ) ∋ ( ( λ x2360 -> ( ( Set -> Set ) ∋ ( ( λ x2370 -> Bool ) ) ) $ ( x2360 ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2380 -> ( ( Set -> Set ) ∋ ( ( λ x2390 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d235 = if if true then true else true then if d228 then true else d223 else if d163 then d228 else d192
    d240 : if false then ( ( Set -> Set ) ∋ ( ( λ x2420 -> ( ( Set -> Set ) ∋ ( ( λ x2430 -> x2420 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else if false then if false then Bool else Bool else if false then Bool else Bool
    d240 = ( ( M.M1.d139 ) $ ( ( ( M.M1.d99 ) $ ( d215 ) ) $ ( d223 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> x2410 ) ) ) $ ( false ) )
    d244 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( x2460 ) ) ) ) $ ( if false then Bool else Bool )
    d244 = ( M.M1'.d149 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> if x2450 then true else d181 ) ) ) $ ( if d174 then d240 else d190 ) )
    d248 : if false then if false then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2500 -> if true then x2500 else x2500 ) ) ) $ ( if true then Bool else Bool )
    d248 = ( ( Bool -> Bool ) ∋ ( ( λ x2490 -> if x2490 then d202 else x2490 ) ) ) $ ( if d190 then false else d200 )
    d251 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> ( ( Set -> Set ) ∋ ( ( λ x2540 -> ( ( Set -> Set ) ∋ ( ( λ x2550 -> if false then Bool else x2530 ) ) ) $ ( if true then x2530 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2560 -> if true then x2530 else Bool ) ) ) $ ( x2530 ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2570 -> if false then x2570 else x2570 ) ) ) $ ( if false then Bool else Bool ) )
    d251 = ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> ( M.M1'.d75 ) $ ( ( ( M.M1.d162 ) $ ( if x2520 then x2520 else x2520 ) ) $ ( if true then d202 else true ) ) ) ) ) $ ( if true then d200 else true )
    d258 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x2610 -> if false then Bool else x2610 ) ) ) $ ( if false then Bool else Bool )
    d258 = ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> ( M.M1'.d114 ) $ ( ( M.M1'.d154 ) $ ( ( M.M1'.d120 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> true ) ) ) $ ( false ) ) ) ) ) ) ) $ ( if d244 then d197 else d244 )
    d262 : ( ( Set -> Set ) ∋ ( ( λ x2640 -> if false then if true then x2640 else x2640 else if true then x2640 else x2640 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2650 -> ( ( Set -> Set ) ∋ ( ( λ x2660 -> x2650 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool ) )
    d262 = ( ( M.M1.d45 ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d109 ) $ ( ( M.M1'.d158 ) $ ( ( M.M1'.d139 ) $ ( ( M.M1'.d124 ) $ ( if false then d258 else false ) ) ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2630 -> true ) ) ) $ ( d228 ) )
    d267 : if false then ( ( Set -> Set ) ∋ ( ( λ x2680 -> if false then x2680 else x2680 ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d267 = ( M.M1'.d90 ) $ ( ( ( M.M1.d103 ) $ ( if d223 then true else true ) ) $ ( if d192 then false else true ) )
    d269 : ( ( Set -> Set ) ∋ ( ( λ x2710 -> ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> if false then x2720 else Bool ) ) ) $ ( if true then x2720 else x2710 ) ) ) ) $ ( if true then x2710 else x2710 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2740 -> ( ( Set -> Set ) ∋ ( ( λ x2750 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d269 = ( M.M1'.d87 ) $ ( ( ( M.M1.d162 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> x2700 ) ) ) $ ( d172 ) ) ) $ ( ( ( M.M1.d77 ) $ ( d213 ) ) $ ( d208 ) ) )
    d276 : if true then if true then if false then Bool else Bool else if false then Bool else Bool else if false then if false then Bool else Bool else if false then Bool else Bool
    d276 = ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> ( M.M1'.d154 ) $ ( if d174 then true else d203 ) ) ) ) $ ( if false then d258 else d208 )
    d278 : if true then ( ( Set -> Set ) ∋ ( ( λ x2810 -> if true then Bool else x2810 ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2820 -> ( ( Set -> Set ) ∋ ( ( λ x2830 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d278 = ( ( Bool -> Bool ) ∋ ( ( λ x2790 -> ( M.M1'.d94 ) $ ( ( M.M1'.d5 ) $ ( ( M.M1'.d5 ) $ ( ( M.M1'.d90 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> d172 ) ) ) $ ( true ) ) ) ) ) ) ) ) $ ( if true then d163 else d220 )
    d284 : ( ( Set -> Set ) ∋ ( ( λ x2860 -> if true then ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then x2870 else x2860 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x2880 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2890 -> if false then x2890 else x2890 ) ) ) $ ( if false then Bool else Bool ) )
    d284 = ( M.M1'.d120 ) $ ( ( M.M1'.d11 ) $ ( ( M.M1'.d90 ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d5 ) $ ( ( M.M1'.d99 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( M.M1.d16 ) $ ( if false then d181 else x2850 ) ) $ ( if d202 then true else false ) ) ) ) $ ( if false then false else d172 ) ) ) ) ) ) )
    d290 : if true then if false then if true then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d290 = ( ( M.M1.d139 ) $ ( ( M.M1'.d114 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> false ) ) ) $ ( d202 ) ) ) ) $ ( ( M.M1'.d127 ) $ ( if false then false else false ) )
    d292 : if false then if true then if true then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool
    d292 = if if true then d284 else false then if false then d284 else false else if true then false else true
    d293 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> if true then if true then x2960 else x2960 else if true then Bool else Bool ) ) ) $ ( if true then Bool else x2950 ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x2970 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool ) )
    d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> ( M.M1'.d124 ) $ ( if false then d192 else d223 ) ) ) ) $ ( if d190 then d223 else d203 )
    d298 : if true then ( ( Set -> Set ) ∋ ( ( λ x2990 -> if true then Bool else x2990 ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3000 -> if true then Bool else x3000 ) ) ) $ ( if false then Bool else Bool )
    d298 = ( M.M1'.d162 ) $ ( ( M.M1'.d120 ) $ ( if if false then d174 else d244 then if false then d290 else d197 else if d290 then d228 else false ) )
    d301 : if true then ( ( Set -> Set ) ∋ ( ( λ x3040 -> if true then x3040 else Bool ) ) ) $ ( if false then Bool else Bool ) else if true then if true then Bool else Bool else if true then Bool else Bool
    d301 = ( M.M1'.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> ( M.M1'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> x3020 ) ) ) $ ( x3020 ) ) ) ) ) $ ( if true then d186 else true ) )
    d305 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> if false then if false then Bool else x3060 else if false then x3060 else x3060 ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3070 -> if true then x3070 else Bool ) ) ) $ ( if true then Bool else Bool ) )
    d305 = if if true then true else d293 then if d298 then true else d213 else if false then false else d228
    d308 : if false then if true then if false then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3110 -> ( ( Set -> Set ) ∋ ( ( λ x3120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d308 = ( ( M.M1.d149 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3100 -> d208 ) ) ) $ ( d262 ) )
    d313 : if true then ( ( Set -> Set ) ∋ ( ( λ x3150 -> ( ( Set -> Set ) ∋ ( ( λ x3160 -> Bool ) ) ) $ ( x3150 ) ) ) ) $ ( if false then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3170 -> ( ( Set -> Set ) ∋ ( ( λ x3180 -> Bool ) ) ) $ ( x3170 ) ) ) ) $ ( if true then Bool else Bool )
    d313 = ( M.M1'.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3140 -> ( M.M1'.d55 ) $ ( ( M.M1'.d63 ) $ ( ( ( M.M1.d111 ) $ ( if x3140 then x3140 else x3140 ) ) $ ( if x3140 then x3140 else d308 ) ) ) ) ) ) $ ( if d240 then d244 else false ) )
    d319 : ( ( Set -> Set ) ∋ ( ( λ x3220 -> ( ( Set -> Set ) ∋ ( ( λ x3230 -> ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then Bool else x3230 ) ) ) $ ( if false then x3230 else Bool ) ) ) ) $ ( if false then Bool else Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if false then Bool else Bool )
    d319 = ( M.M1'.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> d216 ) ) ) $ ( x3200 ) ) ) ) $ ( if d313 then d305 else false ) )
    d325 : ( ( Set -> Set ) ∋ ( ( λ x3270 -> ( ( Set -> Set ) ∋ ( ( λ x3280 -> if false then if false then x3270 else Bool else if false then x3280 else x3280 ) ) ) $ ( if false then x3270 else x3270 ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d325 = ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> ( M.M1'.d114 ) $ ( if x3260 then d301 else true ) ) ) ) $ ( if d186 then d220 else d208 )
    d329 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> ( ( Set -> Set ) ∋ ( ( λ x3330 -> if true then if false then Bool else x3320 else if true then x3330 else Bool ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3340 -> if true then x3340 else x3320 ) ) ) $ ( Bool ) ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3350 -> ( ( Set -> Set ) ∋ ( ( λ x3360 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) )
    d329 = ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> x3300 ) ) ) $ ( x3300 ) ) ) ) $ ( if true then d305 else d267 )
    d337 : ( ( Set -> Set ) ∋ ( ( λ x3380 -> if true then if true then x3380 else x3380 else ( ( Set -> Set ) ∋ ( ( λ x3390 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if false then Bool else Bool else if false then Bool else Bool )
    d337 = ( M.M1'.d82 ) $ ( ( ( M.M1.d114 ) $ ( ( M.M1'.d77 ) $ ( if d325 then false else false ) ) ) $ ( ( M.M1'.d22 ) $ ( ( M.M1'.d16 ) $ ( ( ( M.M1.d51 ) $ ( d276 ) ) $ ( d235 ) ) ) ) )
    d340 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> if true then if true then x3410 else x3410 else ( ( Set -> Set ) ∋ ( ( λ x3420 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x3430 -> ( ( Set -> Set ) ∋ ( ( λ x3440 -> Bool ) ) ) $ ( x3430 ) ) ) ) $ ( if false then Bool else Bool ) )
    d340 = if if d301 then d181 else d298 then if d276 then false else d319 else if d278 then false else d290
    d345 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> if true then ( ( Set -> Set ) ∋ ( ( λ x3470 -> if true then Bool else x3460 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3480 -> if true then x3460 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then if true then Bool else Bool else if true then Bool else Bool )
    d345 = if if d215 then false else d197 then if d163 then true else true else if d251 then d278 else true
    d349 : if true then ( ( Set -> Set ) ∋ ( ( λ x3510 -> ( ( Set -> Set ) ∋ ( ( λ x3520 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3530 -> ( ( Set -> Set ) ∋ ( ( λ x3540 -> Bool ) ) ) $ ( x3530 ) ) ) ) $ ( if false then Bool else Bool )
    d349 = ( ( Bool -> Bool ) ∋ ( ( λ x3500 -> if d235 then false else x3500 ) ) ) $ ( if false then true else d235 )
    d355 : if true then ( ( Set -> Set ) ∋ ( ( λ x3570 -> if true then x3570 else Bool ) ) ) $ ( if false then Bool else Bool ) else if false then if false then Bool else Bool else if true then Bool else Bool
    d355 = ( M.M1'.d5 ) $ ( ( ( M.M1.d16 ) $ ( ( M.M1'.d111 ) $ ( if d216 then d267 else true ) ) ) $ ( ( M.M1'.d124 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> true ) ) ) $ ( d235 ) ) ) )
    d358 : if false then if true then if true then Bool else Bool else if false then Bool else Bool else if true then if false then Bool else Bool else if true then Bool else Bool
    d358 = ( M.M1'.d29 ) $ ( ( M.M1'.d154 ) $ ( ( M.M1'.d45 ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d114 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> d168 ) ) ) $ ( false ) ) ) ) $ ( if true then d215 else d215 ) ) ) ) ) )
    d361 : ( ( Set -> Set ) ∋ ( ( λ x3630 -> ( ( Set -> Set ) ∋ ( ( λ x3640 -> if false then if true then Bool else Bool else if false then Bool else x3630 ) ) ) $ ( if false then x3630 else x3630 ) ) ) ) $ ( if true then if true then Bool else Bool else if true then Bool else Bool )
    d361 = ( M.M1'.d90 ) $ ( ( M.M1'.d38 ) $ ( ( ( M.M1.d111 ) $ ( ( M.M1'.d55 ) $ ( ( M.M1'.d147 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> false ) ) ) $ ( false ) ) ) ) ) $ ( if d305 then false else d329 ) ) )
    d365 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x3660 -> if false then x3660 else Bool ) ) ) $ ( if false then Bool else Bool )
    d365 = ( M.M1'.d114 ) $ ( ( M.M1'.d87 ) $ ( if if d244 then d298 else false then if true then false else true else if false then d208 else false ) )