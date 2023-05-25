module AliasMod2Test3  where
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

    module M ( p10 : if false then Bool else Bool ) ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else x30 ) ) ) $ ( Bool ) )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> p20 ) ) ) $ ( p10 ) ) ) ) $ ( if false then p20 else p10 )
        d9 : if true then if true then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if d4 then d4 else d4 ) ) ) $ ( if false then d4 else p10 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then x140 else x140 ) ) ) $ ( if false then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> true ) ) ) $ ( false ) ) ) ) $ ( if p10 then p10 else false )
        d15 : if false then if false then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if false then true else x160 ) ) ) $ ( if p20 then false else p10 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> false ) ) ) $ ( false ) ) ) ) $ ( if d9 then p10 else p10 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x240 -> if true then x240 else x240 ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if p20 then x230 else p10 ) ) ) $ ( if p20 then p20 else false )
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = if if d9 then true else d22 then if false then p10 else true else if true then p20 else p20
        d26 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( x270 ) ) ) ) $ ( if false then Bool else Bool )
        d26 = if if p10 then false else p20 then if d25 then false else true else if false then d25 else d15
        d29 : ( ( Set -> Set ) ∋ ( ( λ x310 -> if false then x310 else x310 ) ) ) $ ( if false then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if false then x300 else false ) ) ) $ ( if p20 then true else d25 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if false then x330 else Bool ) ) ) $ ( if true then Bool else Bool )
        d32 = if if d22 then p10 else true then if d17 then p10 else d4 else if p20 then false else p20
        d34 : if true then if false then Bool else Bool else if false then Bool else Bool
        d34 = if if false then d29 else d25 then if false then false else d25 else if d17 then p20 else p10
        d35 : if true then if false then Bool else Bool else if true then Bool else Bool
        d35 = if if p20 then p20 else d9 then if false then p20 else p20 else if p20 then p20 else d25
        d36 : ( ( Set -> Set ) ∋ ( ( λ x370 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = if if true then d4 else p10 then if p20 then true else true else if d32 then true else true
        d38 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( x400 ) ) ) ) $ ( if true then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if p10 then x390 else d9 ) ) ) $ ( if p20 then p20 else d4 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x440 -> ( ( Set -> Set ) ∋ ( ( λ x450 -> x440 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if p20 then true else true ) ) ) $ ( if false then false else p10 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> x490 ) ) ) $ ( x490 ) ) ) ) $ ( if false then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> false ) ) ) $ ( x470 ) ) ) ) $ ( if d36 then true else d25 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x530 -> x520 ) ) ) $ ( x520 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if true then p10 else false then if true then true else d25 else if d34 then p20 else p10
        d54 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> Bool ) ) ) $ ( x560 ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if true then p20 else p20 ) ) ) $ ( if p20 then true else true )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x610 -> if true then Bool else x610 ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( d38 ) ) ) ) $ ( if true then p10 else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x650 -> ( ( Set -> Set ) ∋ ( ( λ x660 -> Bool ) ) ) $ ( x650 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> false ) ) ) $ ( true ) ) ) ) $ ( if p20 then p20 else p10 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x700 -> ( ( Set -> Set ) ∋ ( ( λ x710 -> x700 ) ) ) $ ( x700 ) ) ) ) $ ( if true then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d25 ) ) ) $ ( p20 ) ) ) ) $ ( if d54 then true else true )
        d72 : if true then if true then Bool else Bool else if true then Bool else Bool
        d72 = if if p10 then true else p20 then if d4 then true else d54 else if false then true else p20
        d73 : ( ( Set -> Set ) ∋ ( ( λ x740 -> ( ( Set -> Set ) ∋ ( ( λ x750 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d73 = if if true then d42 else true then if d34 then false else d35 else if d58 then d46 else d29
        d76 : ( ( Set -> Set ) ∋ ( ( λ x770 -> if false then x770 else Bool ) ) ) $ ( if true then Bool else Bool )
        d76 = if if true then p20 else false then if d38 then p10 else false else if d51 then true else false
        d78 : if false then if true then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> if true then true else p20 ) ) ) $ ( if false then d51 else p10 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> Bool ) ) ) $ ( x810 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = if if p10 then d22 else d73 then if true then p10 else true else if true then d73 else p10
        d83 : if true then if false then Bool else Bool else if true then Bool else Bool
        d83 = if if d76 then p20 else true then if true then p20 else false else if d76 then d36 else d67
        d84 : ( ( Set -> Set ) ∋ ( ( λ x870 -> if true then Bool else x870 ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> d17 ) ) ) $ ( p10 ) ) ) ) $ ( if d34 then d35 else p20 )
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = if if true then false else d4 then if false then true else d4 else if d17 then true else d36
        d89 : ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( x900 ) ) ) ) $ ( if true then Bool else Bool )
        d89 = if if p20 then p10 else p10 then if p20 then d51 else false else if p20 then p10 else false
        d92 : if true then if true then Bool else Bool else if true then Bool else Bool
        d92 = if if d80 then true else d83 then if d76 then p20 else p20 else if false then p10 else d89
        d93 : if true then if true then Bool else Bool else if false then Bool else Bool
        d93 = if if p20 then p20 else true then if d42 then true else p20 else if d15 then d46 else false
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> x960 ) ) ) $ ( true ) ) ) ) $ ( if d25 then d93 else p10 )
        d97 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> x990 ) ) ) $ ( x980 ) ) ) ) $ ( if false then Bool else Bool )
        d97 = if if d62 then d76 else p20 then if p10 then d84 else true else if false then true else false
        d100 : if true then if true then Bool else Bool else if true then Bool else Bool
        d100 = if if true then false else d11 then if d80 then d15 else d76 else if false then false else p20
        d101 : if true then if false then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if x1020 then d78 else false ) ) ) $ ( if p10 then true else false )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( x1040 ) ) ) ) $ ( if true then Bool else Bool )
        d103 = if if d78 then true else d17 then if p10 then d11 else p10 else if p10 then d88 else p10
        d106 : if true then if false then Bool else Bool else if true then Bool else Bool
        d106 = if if true then p20 else p20 then if d84 then d46 else false else if true then d42 else true
        d107 : if true then if true then Bool else Bool else if true then Bool else Bool
        d107 = if if p10 then false else false then if false then d93 else d22 else if d89 then d9 else d26
        d108 : if true then if false then Bool else Bool else if false then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> p20 ) ) ) $ ( d9 ) ) ) ) $ ( if false then d35 else d97 )
    module M'  = M ( true ) 
    d111 : if false then if false then Bool else Bool else if true then Bool else Bool
    d111 = ( ( M.d58 ) $ ( if true then true else false ) ) $ ( ( M'.d15 ) $ ( ( M'.d15 ) $ ( if false then false else true ) ) )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x1140 -> ( ( Set -> Set ) ∋ ( ( λ x1150 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if x1130 then x1130 else false ) ) ) $ ( if d111 then d111 else d111 )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> ( ( Set -> Set ) ∋ ( ( λ x1200 -> Bool ) ) ) $ ( x1190 ) ) ) ) $ ( if true then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> d111 ) ) ) $ ( false ) ) ) ) $ ( if d111 then false else true )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> Bool ) ) ) $ ( x1220 ) ) ) ) $ ( if false then Bool else Bool )
    d121 = ( ( M.d17 ) $ ( ( ( M.d29 ) $ ( true ) ) $ ( false ) ) ) $ ( if d116 then d112 else true )
    d124 : if true then if false then Bool else Bool else if false then Bool else Bool
    d124 = ( M'.d94 ) $ ( ( M'.d107 ) $ ( ( M'.d42 ) $ ( if if true then d121 else d112 then if d112 then d116 else d112 else if d111 then d111 else false ) ) )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x1260 -> if false then Bool else x1260 ) ) ) $ ( if true then Bool else Bool )
    d125 = if if false then d116 else d121 then if false then true else d124 else if d111 then true else false
    d127 : if false then if false then Bool else Bool else if true then Bool else Bool
    d127 = ( ( M.d101 ) $ ( ( ( M.d34 ) $ ( d124 ) ) $ ( false ) ) ) $ ( if d112 then d116 else true )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> ( ( Set -> Set ) ∋ ( ( λ x1300 -> Bool ) ) ) $ ( x1290 ) ) ) ) $ ( if true then Bool else Bool )
    d128 = ( M'.d58 ) $ ( ( M'.d34 ) $ ( ( M'.d29 ) $ ( if if d116 then true else false then if false then d127 else d125 else if true then false else true ) ) )
    d131 : if false then if false then Bool else Bool else if false then Bool else Bool
    d131 = ( M'.d100 ) $ ( if if d127 then false else d127 then if d128 then d128 else true else if d128 then false else d128 )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> ( ( Set -> Set ) ∋ ( ( λ x1340 -> x1340 ) ) ) $ ( x1330 ) ) ) ) $ ( if false then Bool else Bool )
    d132 = if if false then d125 else d112 then if false then true else false else if d125 then d128 else true
    d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> ( ( Set -> Set ) ∋ ( ( λ x1390 -> x1390 ) ) ) $ ( x1380 ) ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( M'.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> d131 ) ) ) $ ( true ) ) ) ) ) $ ( if true then false else false )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then x1410 else x1410 ) ) ) $ ( if true then Bool else Bool )
    d140 = ( M'.d36 ) $ ( ( M'.d80 ) $ ( if if true then d132 else true then if false then d135 else true else if d127 then false else true ) )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then Bool else x1440 ) ) ) $ ( if false then Bool else Bool )
    d142 = ( ( M.d25 ) $ ( ( M'.d108 ) $ ( ( M'.d58 ) $ ( ( M'.d80 ) $ ( ( M'.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( d111 ) ) ) ) ) ) ) $ ( if true then d135 else d125 )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> ( ( Set -> Set ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d145 = ( M'.d51 ) $ ( if if false then true else d132 then if d135 then true else false else if d128 then d132 else false )
    d148 : if false then if true then Bool else Bool else if false then Bool else Bool
    d148 = ( M'.d80 ) $ ( ( M'.d88 ) $ ( ( ( M.d11 ) $ ( ( ( M.d36 ) $ ( true ) ) $ ( d145 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> false ) ) ) $ ( d112 ) ) ) )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> ( ( M.d103 ) $ ( if x1510 then d121 else true ) ) $ ( if x1510 then false else d116 ) ) ) ) $ ( if false then d124 else d127 )
    d154 : if false then if true then Bool else Bool else if false then Bool else Bool
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( M'.d4 ) $ ( ( M'.d97 ) $ ( ( M'.d93 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> d111 ) ) ) $ ( true ) ) ) ) ) ) ) $ ( if true then d145 else false )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> ( ( M.d67 ) $ ( if d132 then x1580 else x1580 ) ) $ ( if true then false else x1580 ) ) ) ) $ ( if true then true else d154 )
    d161 : if true then if true then Bool else Bool else if false then Bool else Bool
    d161 = ( M'.d11 ) $ ( ( ( M.d100 ) $ ( if d116 then d131 else d142 ) ) $ ( ( M'.d101 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> d140 ) ) ) $ ( true ) ) ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( x1640 ) ) ) ) $ ( if false then Bool else Bool )
    d163 = if if d142 then d128 else false then if true then true else true else if d148 then false else false
    d166 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then Bool else x1680 ) ) ) $ ( if false then Bool else Bool )
    d166 = ( ( M.d92 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> d140 ) ) ) $ ( false ) ) ) $ ( ( ( M.d29 ) $ ( true ) ) $ ( d112 ) )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> if false then Bool else x1710 ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( ( M.d89 ) $ ( if x1700 then d161 else d131 ) ) $ ( if d111 then d142 else x1700 ) ) ) ) $ ( if d124 then true else true )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> x1740 ) ) ) $ ( x1730 ) ) ) ) $ ( if false then Bool else Bool )
    d172 = ( ( M.d101 ) $ ( ( M'.d29 ) $ ( ( M'.d97 ) $ ( if false then d166 else d163 ) ) ) ) $ ( ( M'.d58 ) $ ( ( M'.d97 ) $ ( ( M'.d103 ) $ ( if false then true else d157 ) ) ) )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if false then Bool else x1780 ) ) ) $ ( if false then Bool else Bool )
    d175 = ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> true ) ) ) $ ( x1760 ) ) ) ) $ ( if d132 then d161 else d169 )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then x1800 else x1800 ) ) ) $ ( if false then Bool else Bool )
    d179 = if if d145 then false else false then if true then d112 else true else if d163 then d125 else d150
    d181 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> ( ( Set -> Set ) ∋ ( ( λ x1840 -> x1840 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d181 = ( M'.d58 ) $ ( ( M'.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> ( ( M.d25 ) $ ( if false then true else x1820 ) ) $ ( if d157 then false else x1820 ) ) ) ) $ ( if false then d116 else true ) ) )
    d185 : if true then if false then Bool else Bool else if false then Bool else Bool
    d185 = ( M'.d36 ) $ ( ( M'.d25 ) $ ( ( M'.d106 ) $ ( ( M'.d78 ) $ ( ( ( M.d15 ) $ ( ( M'.d38 ) $ ( if false then true else false ) ) ) $ ( ( ( M.d101 ) $ ( d131 ) ) $ ( false ) ) ) ) ) )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> if false then Bool else x1890 ) ) ) $ ( if true then Bool else Bool )
    d186 = ( M'.d93 ) $ ( ( ( M.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> false ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> false ) ) ) $ ( true ) ) )
    d190 : if false then if true then Bool else Bool else if false then Bool else Bool
    d190 = ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> if d175 then d150 else d175 ) ) ) $ ( if false then d140 else false )
    d192 : if true then if false then Bool else Bool else if false then Bool else Bool
    d192 = if if d169 then d172 else d124 then if d186 then false else d124 else if d190 then d185 else d179
    d193 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if true then x1940 else x1940 ) ) ) $ ( if true then Bool else Bool )
    d193 = ( M'.d94 ) $ ( ( ( M.d32 ) $ ( ( ( M.d11 ) $ ( d121 ) ) $ ( true ) ) ) $ ( ( ( M.d93 ) $ ( false ) ) $ ( d131 ) ) )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x1980 -> if false then x1980 else Bool ) ) ) $ ( if true then Bool else Bool )
    d195 = ( M'.d58 ) $ ( ( M'.d9 ) $ ( ( M'.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d186 else d161 ) ) ) )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> ( ( Set -> Set ) ∋ ( ( λ x2020 -> Bool ) ) ) $ ( x2010 ) ) ) ) $ ( if false then Bool else Bool )
    d199 = ( M'.d107 ) $ ( ( M'.d106 ) $ ( ( M'.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( M'.d94 ) $ ( ( ( M.d35 ) $ ( if x2000 then d142 else d131 ) ) $ ( if true then false else false ) ) ) ) ) $ ( if d179 then true else false ) ) ) )
    d203 : if true then if false then Bool else Bool else if true then Bool else Bool
    d203 = ( M'.d106 ) $ ( ( ( M.d92 ) $ ( ( ( M.d76 ) $ ( false ) ) $ ( false ) ) ) $ ( if true then d111 else true ) )
    d204 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> ( ( Set -> Set ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( x2060 ) ) ) ) $ ( if false then Bool else Bool )
    d204 = ( M'.d107 ) $ ( ( ( M.d67 ) $ ( ( M'.d58 ) $ ( if d179 then false else false ) ) ) $ ( ( M'.d34 ) $ ( ( M'.d58 ) $ ( ( M'.d93 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> true ) ) ) $ ( true ) ) ) ) ) )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> ( ( Set -> Set ) ∋ ( ( λ x2100 -> Bool ) ) ) $ ( x2090 ) ) ) ) $ ( if true then Bool else Bool )
    d208 = if if d124 then d140 else false then if true then true else false else if d203 then true else d127
    d211 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> ( ( Set -> Set ) ∋ ( ( λ x2130 -> Bool ) ) ) $ ( x2120 ) ) ) ) $ ( if false then Bool else Bool )
    d211 = if if false then d150 else d121 then if false then d135 else false else if d203 then d193 else true
    d214 : if true then if false then Bool else Bool else if true then Bool else Bool
    d214 = ( M'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if d208 then x2150 else d140 ) ) ) $ ( if true then d181 else false ) )
    d216 : ( ( Set -> Set ) ∋ ( ( λ x2170 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d216 = if if false then d172 else d131 then if d166 then d179 else false else if d163 then true else d148
    d218 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> if false then Bool else x2200 ) ) ) $ ( if true then Bool else Bool )
    d218 = ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> ( ( M.d106 ) $ ( if true then x2190 else d112 ) ) $ ( if d172 then d216 else d128 ) ) ) ) $ ( if d190 then d179 else d216 )
    d221 : if true then if true then Bool else Bool else if true then Bool else Bool
    d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> ( M'.d46 ) $ ( ( M'.d25 ) $ ( if x2220 then d111 else true ) ) ) ) ) $ ( if false then d124 else d128 )
    d223 : ( ( Set -> Set ) ∋ ( ( λ x2250 -> if false then x2250 else x2250 ) ) ) $ ( if false then Bool else Bool )
    d223 = ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> if x2240 then d192 else d132 ) ) ) $ ( if d175 then true else d199 )
    d226 : if false then if true then Bool else Bool else if true then Bool else Bool
    d226 = ( ( M.d78 ) $ ( if d116 then d193 else d128 ) ) $ ( if true then false else d124 )
    d227 : ( ( Set -> Set ) ∋ ( ( λ x2280 -> if true then x2280 else Bool ) ) ) $ ( if true then Bool else Bool )
    d227 = if if false then false else d145 then if d193 then d161 else false else if false then d195 else false
    d229 : ( ( Set -> Set ) ∋ ( ( λ x2320 -> ( ( Set -> Set ) ∋ ( ( λ x2330 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d229 = ( M'.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2300 -> ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> x2300 ) ) ) $ ( false ) ) ) ) $ ( if d161 then false else d221 ) )
    d234 : if false then if true then Bool else Bool else if true then Bool else Bool
    d234 = ( M'.d88 ) $ ( ( ( M.d25 ) $ ( ( M'.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> d185 ) ) ) $ ( d135 ) ) ) ) $ ( ( M'.d89 ) $ ( ( M'.d89 ) $ ( if d111 then false else false ) ) ) )
    d236 : ( ( Set -> Set ) ∋ ( ( λ x2370 -> if false then x2370 else Bool ) ) ) $ ( if true then Bool else Bool )
    d236 = ( M'.d54 ) $ ( if if false then d128 else true then if d179 then true else d192 else if d234 then true else d140 )
    d238 : if false then if true then Bool else Bool else if true then Bool else Bool
    d238 = ( ( M.d76 ) $ ( if d166 then d195 else d227 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> false ) ) ) $ ( false ) )
    d240 : if true then if true then Bool else Bool else if false then Bool else Bool
    d240 = ( ( Bool -> Bool ) ∋ ( ( λ x2410 -> ( M'.d32 ) $ ( ( M'.d92 ) $ ( ( ( M.d22 ) $ ( if false then true else d221 ) ) $ ( if x2410 then false else x2410 ) ) ) ) ) ) $ ( if d192 then true else d185 )
    d242 : ( ( Set -> Set ) ∋ ( ( λ x2440 -> ( ( Set -> Set ) ∋ ( ( λ x2450 -> x2440 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d242 = ( M'.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> ( M'.d58 ) $ ( if false then x2430 else false ) ) ) ) $ ( if d161 then d131 else d161 ) )
    d246 : if false then if false then Bool else Bool else if false then Bool else Bool
    d246 = ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> ( M'.d38 ) $ ( if false then d218 else d166 ) ) ) ) $ ( if false then d221 else d142 )
    d248 : if true then if false then Bool else Bool else if false then Bool else Bool
    d248 = ( M'.d11 ) $ ( ( M'.d106 ) $ ( ( M'.d42 ) $ ( if if true then d116 else true then if true then true else true else if d214 then false else d204 ) ) )
    d249 : if false then if true then Bool else Bool else if false then Bool else Bool
    d249 = ( ( Bool -> Bool ) ∋ ( ( λ x2500 -> if false then x2500 else true ) ) ) $ ( if false then false else false )
    d251 : ( ( Set -> Set ) ∋ ( ( λ x2540 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d251 = ( M'.d84 ) $ ( ( M'.d80 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2520 -> ( ( Bool -> Bool ) ∋ ( ( λ x2530 -> false ) ) ) $ ( true ) ) ) ) $ ( if d193 then false else false ) ) )
    d255 : if false then if true then Bool else Bool else if true then Bool else Bool
    d255 = ( ( M.d108 ) $ ( if true then d204 else d186 ) ) $ ( ( ( M.d38 ) $ ( true ) ) $ ( d226 ) )
    d256 : if true then if true then Bool else Bool else if true then Bool else Bool
    d256 = if if true then d179 else true then if true then false else true else if d236 then d179 else d193
    d257 : ( ( Set -> Set ) ∋ ( ( λ x2590 -> ( ( Set -> Set ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( x2590 ) ) ) ) $ ( if true then Bool else Bool )
    d257 = ( ( M.d83 ) $ ( ( M'.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2580 -> x2580 ) ) ) $ ( d148 ) ) ) ) $ ( if d199 then true else d195 )
    d261 : ( ( Set -> Set ) ∋ ( ( λ x2630 -> ( ( Set -> Set ) ∋ ( ( λ x2640 -> x2630 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d261 = ( M'.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> ( M'.d108 ) $ ( if true then d192 else x2620 ) ) ) ) $ ( if false then d131 else false ) )
    d265 : if true then if false then Bool else Bool else if false then Bool else Bool
    d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if x2660 then d190 else true ) ) ) $ ( if true then false else d216 )
    d267 : if true then if true then Bool else Bool else if false then Bool else Bool
    d267 = ( M'.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> if x2680 then d125 else d186 ) ) ) $ ( if d163 then true else true ) )
    d269 : if true then if true then Bool else Bool else if true then Bool else Bool
    d269 = ( M'.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2700 -> ( M'.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> d242 ) ) ) $ ( false ) ) ) ) ) $ ( if true then true else true ) )
    d272 : ( ( Set -> Set ) ∋ ( ( λ x2740 -> ( ( Set -> Set ) ∋ ( ( λ x2750 -> Bool ) ) ) $ ( x2740 ) ) ) ) $ ( if true then Bool else Bool )
    d272 = ( M'.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2730 -> ( M'.d9 ) $ ( if d127 then false else d214 ) ) ) ) $ ( if false then d161 else true ) )
    d276 : if false then if false then Bool else Bool else if false then Bool else Bool
    d276 = ( M'.d100 ) $ ( ( M'.d83 ) $ ( if if false then true else true then if d192 then false else d131 else if true then d166 else false ) )
    d277 : ( ( Set -> Set ) ∋ ( ( λ x2780 -> ( ( Set -> Set ) ∋ ( ( λ x2790 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d277 = if if false then d221 else true then if d223 then d218 else d111 else if true then d193 else true
    d280 : if false then if false then Bool else Bool else if true then Bool else Bool
    d280 = ( M'.d100 ) $ ( ( M'.d93 ) $ ( if if d132 then true else d192 then if d204 then d124 else d185 else if true then d145 else d242 ) )
    d281 : ( ( Set -> Set ) ∋ ( ( λ x2820 -> if false then Bool else x2820 ) ) ) $ ( if true then Bool else Bool )
    d281 = ( M'.d106 ) $ ( ( ( M.d83 ) $ ( ( ( M.d15 ) $ ( false ) ) $ ( d269 ) ) ) $ ( if true then d227 else false ) )
    d283 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d283 = ( M'.d9 ) $ ( if if d251 then false else false then if d148 then true else false else if d179 then d229 else d140 )
    d286 : ( ( Set -> Set ) ∋ ( ( λ x2890 -> if false then Bool else x2890 ) ) ) $ ( if true then Bool else Bool )
    d286 = ( M'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2870 -> ( ( Bool -> Bool ) ∋ ( ( λ x2880 -> d181 ) ) ) $ ( x2870 ) ) ) ) $ ( if true then d261 else d234 ) )
    d290 : if true then if false then Bool else Bool else if false then Bool else Bool
    d290 = ( M'.d72 ) $ ( if if d267 then d116 else d111 then if d214 then d249 else false else if d154 then d125 else false )
    d291 : ( ( Set -> Set ) ∋ ( ( λ x2920 -> ( ( Set -> Set ) ∋ ( ( λ x2930 -> Bool ) ) ) $ ( x2920 ) ) ) ) $ ( if false then Bool else Bool )
    d291 = if if true then d163 else true then if d163 then true else d128 else if d121 then d276 else d211
    d294 : if false then if false then Bool else Bool else if false then Bool else Bool
    d294 = ( M'.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2950 -> if x2950 then x2950 else true ) ) ) $ ( if d234 then false else d265 ) )
    d296 : if true then if true then Bool else Bool else if false then Bool else Bool
    d296 = ( M'.d108 ) $ ( if if false then d185 else d269 then if false then d276 else d111 else if false then d221 else true )
    d297 : if true then if false then Bool else Bool else if false then Bool else Bool
    d297 = if if d291 then d240 else d290 then if d290 then true else d135 else if false then d236 else false
    d298 : if true then if true then Bool else Bool else if false then Bool else Bool
    d298 = ( M'.d36 ) $ ( if if true then false else false then if d265 then d172 else false else if true then false else true )
    d299 : if false then if true then Bool else Bool else if true then Bool else Bool
    d299 = ( ( Bool -> Bool ) ∋ ( ( λ x3000 -> ( M'.d46 ) $ ( ( M'.d101 ) $ ( ( M'.d25 ) $ ( ( ( M.d89 ) $ ( if false then x3000 else false ) ) $ ( if d192 then d140 else d211 ) ) ) ) ) ) ) $ ( if d163 then d294 else false )
    d301 : if true then if false then Bool else Bool else if false then Bool else Bool
    d301 = ( ( Bool -> Bool ) ∋ ( ( λ x3020 -> ( ( Bool -> Bool ) ∋ ( ( λ x3030 -> d186 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d185 )
    d304 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> ( ( Set -> Set ) ∋ ( ( λ x3070 -> Bool ) ) ) $ ( x3060 ) ) ) ) $ ( if false then Bool else Bool )
    d304 = ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> ( ( M.d26 ) $ ( if x3050 then x3050 else false ) ) $ ( if d121 then x3050 else d267 ) ) ) ) $ ( if true then d157 else true )
    d308 : ( ( Set -> Set ) ∋ ( ( λ x3090 -> if false then x3090 else x3090 ) ) ) $ ( if false then Bool else Bool )
    d308 = ( M'.d38 ) $ ( if if true then d223 else false then if false then d276 else d283 else if true then d195 else d238 )
    d310 : ( ( Set -> Set ) ∋ ( ( λ x3120 -> ( ( Set -> Set ) ∋ ( ( λ x3130 -> x3130 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d310 = ( ( M.d78 ) $ ( ( M'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3110 -> x3110 ) ) ) $ ( d256 ) ) ) ) $ ( ( M'.d58 ) $ ( ( ( M.d9 ) $ ( false ) ) $ ( false ) ) )
    d314 : if false then if false then Bool else Bool else if false then Bool else Bool
    d314 = ( M'.d94 ) $ ( ( M'.d78 ) $ ( ( M'.d67 ) $ ( ( M'.d9 ) $ ( if if d140 then false else true then if d121 then false else false else if d304 then d193 else true ) ) ) )
    d315 : if true then if true then Bool else Bool else if false then Bool else Bool
    d315 = ( M'.d76 ) $ ( ( M'.d101 ) $ ( ( ( M.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> d249 ) ) ) $ ( true ) ) ) $ ( ( M'.d15 ) $ ( ( M'.d46 ) $ ( ( ( M.d32 ) $ ( d249 ) ) $ ( d111 ) ) ) ) ) )
    d317 : ( ( Set -> Set ) ∋ ( ( λ x3190 -> ( ( Set -> Set ) ∋ ( ( λ x3200 -> x3190 ) ) ) $ ( x3190 ) ) ) ) $ ( if true then Bool else Bool )
    d317 = ( M'.d84 ) $ ( ( M'.d78 ) $ ( ( ( M.d36 ) $ ( ( M'.d17 ) $ ( ( M'.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3180 -> false ) ) ) $ ( false ) ) ) ) ) $ ( ( M'.d78 ) $ ( ( ( M.d106 ) $ ( d255 ) ) $ ( d211 ) ) ) ) )
    d321 : ( ( Set -> Set ) ∋ ( ( λ x3220 -> ( ( Set -> Set ) ∋ ( ( λ x3230 -> x3220 ) ) ) $ ( x3220 ) ) ) ) $ ( if true then Bool else Bool )
    d321 = ( ( M.d29 ) $ ( if true then d249 else d148 ) ) $ ( ( ( M.d97 ) $ ( false ) ) $ ( true ) )
    d324 : ( ( Set -> Set ) ∋ ( ( λ x3270 -> ( ( Set -> Set ) ∋ ( ( λ x3280 -> x3270 ) ) ) $ ( x3270 ) ) ) ) $ ( if false then Bool else Bool )
    d324 = ( M'.d73 ) $ ( ( M'.d62 ) $ ( ( M'.d88 ) $ ( ( M'.d26 ) $ ( ( ( M.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> d314 ) ) ) $ ( d192 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3260 -> x3260 ) ) ) $ ( true ) ) ) ) ) )
    d329 : if false then if false then Bool else Bool else if true then Bool else Bool
    d329 = ( M'.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3300 -> ( ( Bool -> Bool ) ∋ ( ( λ x3310 -> x3300 ) ) ) $ ( false ) ) ) ) $ ( if d269 then true else d127 ) )
    d332 : ( ( Set -> Set ) ∋ ( ( λ x3330 -> ( ( Set -> Set ) ∋ ( ( λ x3340 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d332 = if if true then d265 else false then if d203 then true else false else if d265 then d298 else d229
    d335 : ( ( Set -> Set ) ∋ ( ( λ x3370 -> ( ( Set -> Set ) ∋ ( ( λ x3380 -> x3370 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d335 = ( M'.d67 ) $ ( ( ( M.d94 ) $ ( ( ( M.d62 ) $ ( true ) ) $ ( d329 ) ) ) $ ( ( M'.d35 ) $ ( ( M'.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3360 -> true ) ) ) $ ( true ) ) ) ) )
    d339 : if true then if false then Bool else Bool else if true then Bool else Bool
    d339 = ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> ( ( Bool -> Bool ) ∋ ( ( λ x3410 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d172 )
    d342 : if true then if true then Bool else Bool else if false then Bool else Bool
    d342 = if if d256 then false else true then if d185 then d242 else d190 else if d272 then true else true
    d343 : ( ( Set -> Set ) ∋ ( ( λ x3450 -> if true then x3450 else Bool ) ) ) $ ( if true then Bool else Bool )
    d343 = ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> ( M'.d76 ) $ ( ( M'.d78 ) $ ( ( M'.d34 ) $ ( ( ( M.d38 ) $ ( if d199 then d238 else x3440 ) ) $ ( if d216 then x3440 else true ) ) ) ) ) ) ) $ ( if d145 then false else true )
    d346 : if false then if false then Bool else Bool else if true then Bool else Bool
    d346 = ( M'.d51 ) $ ( ( M'.d73 ) $ ( ( M'.d107 ) $ ( ( ( M.d25 ) $ ( if d332 then d112 else d190 ) ) $ ( ( M'.d76 ) $ ( if false then true else d296 ) ) ) ) )
    d347 : if true then if false then Bool else Bool else if false then Bool else Bool
    d347 = ( ( M.d106 ) $ ( ( M'.d97 ) $ ( if d277 then d169 else d242 ) ) ) $ ( ( M'.d32 ) $ ( if false then d255 else true ) )
    d348 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> if true then x3500 else x3500 ) ) ) $ ( if false then Bool else Bool )
    d348 = ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> ( ( M.d32 ) $ ( if false then true else x3490 ) ) $ ( if d142 then x3490 else x3490 ) ) ) ) $ ( if d175 then true else d297 )
    d351 : if false then if true then Bool else Bool else if true then Bool else Bool
    d351 = if if d255 then false else false then if d211 then true else true else if d179 then false else d142
    d352 : ( ( Set -> Set ) ∋ ( ( λ x3530 -> ( ( Set -> Set ) ∋ ( ( λ x3540 -> x3540 ) ) ) $ ( x3530 ) ) ) ) $ ( if true then Bool else Bool )
    d352 = ( M'.d54 ) $ ( ( M'.d11 ) $ ( ( M'.d58 ) $ ( ( M'.d32 ) $ ( ( M'.d34 ) $ ( ( M'.d76 ) $ ( if if d280 then d145 else true then if true then d172 else d249 else if true then d265 else false ) ) ) ) ) )
    d355 : if false then if false then Bool else Bool else if true then Bool else Bool
    d355 = if if false then d132 else d346 then if true then d256 else true else if d124 then true else d276
    d356 : if false then if true then Bool else Bool else if true then Bool else Bool
    d356 = ( M'.d51 ) $ ( ( ( M.d22 ) $ ( if d255 then d181 else false ) ) $ ( if d161 then true else d132 ) )
    d357 : if false then if false then Bool else Bool else if false then Bool else Bool
    d357 = ( M'.d17 ) $ ( ( ( M.d32 ) $ ( if d297 then d227 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3580 -> true ) ) ) $ ( d335 ) ) )
    d359 : if false then if false then Bool else Bool else if true then Bool else Bool
    d359 = ( M'.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3600 -> ( ( M.d106 ) $ ( if d351 then false else d227 ) ) $ ( if x3600 then false else x3600 ) ) ) ) $ ( if d121 then d140 else d294 ) )
    d361 : ( ( Set -> Set ) ∋ ( ( λ x3630 -> ( ( Set -> Set ) ∋ ( ( λ x3640 -> Bool ) ) ) $ ( x3630 ) ) ) ) $ ( if true then Bool else Bool )
    d361 = ( ( M.d38 ) $ ( ( ( M.d101 ) $ ( d121 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> true ) ) ) $ ( d166 ) )