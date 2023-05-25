module AliasMod1Test1  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else x20 ) ) ) $ ( Bool ) ) ( p30 : if true then Bool else Bool )  where
        d4 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> x50 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d4 = if if true then false else p30 then if p10 then p10 else false else if true then true else p30
        d7 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> d4 ) ) ) $ ( p30 ) ) ) ) $ ( if p30 then p10 else true )
        d12 : if true then if false then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if p30 then p30 else false ) ) ) $ ( if false then d7 else false )
        d14 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d14 = if if p10 then d7 else false then if p30 then p10 else p30 else if d4 then d7 else d12
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if true then d4 else d14 ) ) ) $ ( if d7 then p30 else p30 )
        d19 : if true then if false then Bool else Bool else if true then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> true ) ) ) $ ( d14 ) ) ) ) $ ( if p10 then p30 else false )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x230 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> Bool ) ) ) $ ( x230 ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if if false then d4 else false then if p30 then true else p30 else if true then p10 else d4
        d25 : ( ( Set -> Set ) ∋ ( ( λ x280 -> if false then x280 else x280 ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> ( ( Bool -> Bool ) ∋ ( ( λ x270 -> false ) ) ) $ ( d12 ) ) ) ) $ ( if p10 then p10 else p30 )
        d29 : if false then if true then Bool else Bool else if true then Bool else Bool
        d29 = if if true then p10 else d7 then if p30 then p30 else true else if false then p30 else d19
        d30 : if true then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> ( ( Bool -> Bool ) ∋ ( ( λ x320 -> p30 ) ) ) $ ( d29 ) ) ) ) $ ( if p30 then d19 else true )
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if false then p10 else p30 then if false then d22 else p10 else if false then p10 else false
        d34 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( x350 ) ) ) ) $ ( if true then Bool else Bool )
        d34 = if if d33 then d25 else d17 then if p10 then p30 else false else if d17 then d29 else p10
        d37 : if false then if true then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if true then false else p30 ) ) ) $ ( if p10 then d34 else p10 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x410 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if p30 then x400 else false ) ) ) $ ( if false then d25 else true )
        d42 : if true then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> true ) ) ) $ ( d19 ) ) ) ) $ ( if d4 then false else true )
        d45 : if false then if true then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d22 ) ) ) $ ( true ) ) ) ) $ ( if p30 then false else d25 )
        d48 : if false then if false then Bool else Bool else if false then Bool else Bool
        d48 = if if false then p10 else p10 then if true then p10 else p30 else if d19 then true else false
        d49 : if true then if false then Bool else Bool else if false then Bool else Bool
        d49 = if if d34 then d45 else true then if false then p30 else d37 else if p30 then d42 else false
        d50 : ( ( Set -> Set ) ∋ ( ( λ x530 -> if true then x530 else x530 ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> true ) ) ) $ ( d34 ) ) ) ) $ ( if d48 then d12 else true )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> x580 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if d34 then p10 else p30 )
        d59 : ( ( Set -> Set ) ∋ ( ( λ x600 -> if false then x600 else x600 ) ) ) $ ( if false then Bool else Bool )
        d59 = if if true then p30 else d4 then if p30 then p10 else true else if p30 then false else p30
        d61 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then x640 else x640 ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> d42 ) ) ) $ ( d17 ) ) ) ) $ ( if d34 then d39 else d34 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x680 -> ( ( Set -> Set ) ∋ ( ( λ x690 -> Bool ) ) ) $ ( x680 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> false ) ) ) $ ( x660 ) ) ) ) $ ( if d49 then true else p10 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x720 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d70 = if if p30 then d61 else true then if d37 then true else true else if false then false else p10
        d73 : ( ( Set -> Set ) ∋ ( ( λ x740 -> ( ( Set -> Set ) ∋ ( ( λ x750 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d73 = if if p30 then p30 else p30 then if d37 then d54 else d30 else if true then false else p10
        d76 : if false then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if d12 then false else p10 ) ) ) $ ( if false then false else p10 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d78 = if if d30 then p10 else p10 then if p10 then false else d39 else if true then d12 else d39
        d81 : ( ( Set -> Set ) ∋ ( ( λ x840 -> if true then Bool else x840 ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> p30 ) ) ) $ ( x820 ) ) ) ) $ ( if true then false else true )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x860 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( x860 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = if if d33 then d39 else p10 then if true then true else d29 else if p10 then p30 else p10
        d88 : ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if p10 then p10 else d61 ) ) ) $ ( if true then true else p30 )
        d92 : if true then if false then Bool else Bool else if true then Bool else Bool
        d92 = if if false then p10 else d25 then if d14 then d42 else true else if d25 then p30 else p30
        d93 : if true then if true then Bool else Bool else if true then Bool else Bool
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x950 -> x940 ) ) ) $ ( p30 ) ) ) ) $ ( if false then p30 else d45 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x980 -> ( ( Set -> Set ) ∋ ( ( λ x990 -> x980 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if p10 then true else p30 ) ) ) $ ( if d33 then d42 else d17 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( x1030 ) ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( x1010 ) ) ) ) $ ( if p30 then d30 else false )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if true then Bool else x1080 ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if false then true else d49 )
        d109 : if false then if true then Bool else Bool else if false then Bool else Bool
        d109 = if if false then p10 else d22 then if true then p10 else true else if p30 then d25 else p10
        d110 : if true then if true then Bool else Bool else if false then Bool else Bool
        d110 = if if p30 then p10 else p10 then if p30 then d42 else d33 else if d93 then p30 else d96
        d111 : if false then if false then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> false ) ) ) $ ( d78 ) ) ) ) $ ( if false then true else d34 )
        d114 : if false then if false then Bool else Bool else if false then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d117 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d117 = if if p30 then d33 else p10 then if d48 then true else p30 else if p30 then p10 else p30
    module M'  = M ( false ) 
    d120 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d120 = if if false then true else false then if false then false else false else if false then false else true
    d122 : if false then if false then Bool else Bool else if true then Bool else Bool
    d122 = ( ( M.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> true ) ) ) $ ( d120 ) ) ) $ ( ( M'.d17 ) $ ( if true then true else d120 ) )
    d124 : if true then if true then Bool else Bool else if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> ( ( M.d48 ) $ ( if d122 then x1250 else d122 ) ) $ ( if true then d122 else d120 ) ) ) ) $ ( if true then true else false )
    d126 : if false then if false then Bool else Bool else if false then Bool else Bool
    d126 = if if true then d124 else d122 then if false then false else d124 else if true then true else false
    d127 : if false then if false then Bool else Bool else if false then Bool else Bool
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> ( M'.d7 ) $ ( ( M'.d92 ) $ ( if true then d124 else true ) ) ) ) ) $ ( if true then false else true )
    d129 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> if false then Bool else x1320 ) ) ) $ ( if true then Bool else Bool )
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> d124 ) ) ) $ ( x1300 ) ) ) ) $ ( if d126 then d127 else true )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> ( ( Set -> Set ) ∋ ( ( λ x1350 -> x1340 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d133 = ( M'.d88 ) $ ( ( M'.d45 ) $ ( if if false then false else d120 then if d127 then d129 else true else if false then false else false ) )
    d136 : if false then if false then Bool else Bool else if false then Bool else Bool
    d136 = ( M'.d33 ) $ ( ( M'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if d122 then true else d133 ) ) ) $ ( if d133 then false else false ) ) )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x1390 -> if false then x1390 else x1390 ) ) ) $ ( if true then Bool else Bool )
    d138 = if if false then true else d126 then if false then false else false else if d126 then d126 else true
    d140 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> ( ( Set -> Set ) ∋ ( ( λ x1420 -> Bool ) ) ) $ ( x1410 ) ) ) ) $ ( if true then Bool else Bool )
    d140 = if if true then false else d138 then if true then d122 else d126 else if false then d133 else d127
    d143 : if false then if true then Bool else Bool else if false then Bool else Bool
    d143 = ( ( M.d45 ) $ ( ( M'.d93 ) $ ( if false then true else d124 ) ) ) $ ( ( ( M.d117 ) $ ( d127 ) ) $ ( d138 ) )
    d144 : if false then if true then Bool else Bool else if false then Bool else Bool
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> ( M'.d48 ) $ ( if d140 then d124 else d122 ) ) ) ) $ ( if true then d120 else d129 )
    d146 : if true then if true then Bool else Bool else if true then Bool else Bool
    d146 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> true ) ) ) $ ( false ) ) ) $ ( ( ( M.d45 ) $ ( d133 ) ) $ ( d133 ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> ( ( Set -> Set ) ∋ ( ( λ x1500 -> x1490 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d148 = ( M'.d50 ) $ ( if if d136 then false else true then if true then true else true else if false then false else false )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x1540 -> if false then x1540 else Bool ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> x1520 ) ) ) $ ( true ) ) ) ) $ ( if false then d136 else d127 )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( x1560 ) ) ) ) $ ( if false then Bool else Bool )
    d155 = if if true then d127 else false then if d124 then d129 else d129 else if d120 then true else false
    d158 : if true then if false then Bool else Bool else if true then Bool else Bool
    d158 = ( M'.d85 ) $ ( if if d151 then false else d155 then if false then false else d143 else if d120 then true else d120 )
    d159 : if true then if false then Bool else Bool else if false then Bool else Bool
    d159 = ( M'.d73 ) $ ( ( ( M.d59 ) $ ( ( M'.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> d129 ) ) ) $ ( d140 ) ) ) ) $ ( ( M'.d65 ) $ ( ( ( M.d111 ) $ ( true ) ) $ ( true ) ) ) )
    d161 : if true then if true then Bool else Bool else if true then Bool else Bool
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> if x1620 then true else d151 ) ) ) $ ( if true then false else true )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d163 = ( M'.d29 ) $ ( ( ( M.d12 ) $ ( ( M'.d33 ) $ ( ( ( M.d17 ) $ ( true ) ) $ ( d127 ) ) ) ) $ ( if d158 then false else true ) )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> ( ( Set -> Set ) ∋ ( ( λ x1670 -> x1660 ) ) ) $ ( x1660 ) ) ) ) $ ( if true then Bool else Bool )
    d165 = if if d138 then d140 else false then if false then false else d158 else if d124 then d158 else true
    d168 : if false then if false then Bool else Bool else if false then Bool else Bool
    d168 = ( ( M.d19 ) $ ( if d161 then d122 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> false ) ) ) $ ( d165 ) )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> ( ( Set -> Set ) ∋ ( ( λ x1720 -> Bool ) ) ) $ ( x1710 ) ) ) ) $ ( if true then Bool else Bool )
    d170 = ( M'.d33 ) $ ( ( ( M.d17 ) $ ( ( M'.d29 ) $ ( ( ( M.d50 ) $ ( false ) ) $ ( d155 ) ) ) ) $ ( ( ( M.d29 ) $ ( false ) ) $ ( d127 ) ) )
    d173 : if false then if true then Bool else Bool else if false then Bool else Bool
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> ( M'.d96 ) $ ( ( ( M.d25 ) $ ( if x1740 then x1740 else x1740 ) ) $ ( if x1740 then false else x1740 ) ) ) ) ) $ ( if false then false else d138 )
    d175 : if false then if false then Bool else Bool else if true then Bool else Bool
    d175 = if if true then d165 else true then if d168 then true else false else if d143 then true else true
    d176 : if true then if false then Bool else Bool else if true then Bool else Bool
    d176 = if if true then d159 else true then if d151 then d122 else d158 else if true then false else d170
    d177 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> ( ( Set -> Set ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( x1780 ) ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( M.d61 ) $ ( ( M'.d54 ) $ ( ( M'.d14 ) $ ( ( M'.d45 ) $ ( ( M'.d59 ) $ ( ( ( M.d25 ) $ ( true ) ) $ ( d144 ) ) ) ) ) ) ) $ ( ( ( M.d76 ) $ ( false ) ) $ ( false ) )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> ( ( Set -> Set ) ∋ ( ( λ x1830 -> x1820 ) ) ) $ ( x1820 ) ) ) ) $ ( if false then Bool else Bool )
    d180 = ( M'.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( M'.d17 ) $ ( ( ( M.d61 ) $ ( if false then d159 else x1810 ) ) $ ( if true then x1810 else x1810 ) ) ) ) ) $ ( if false then d176 else false ) )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> if false then x1850 else Bool ) ) ) $ ( if true then Bool else Bool )
    d184 = ( M'.d49 ) $ ( ( M'.d109 ) $ ( ( M'.d39 ) $ ( if if d168 then d136 else true then if d129 then true else d163 else if true then false else true ) ) )
    d186 : if false then if false then Bool else Bool else if true then Bool else Bool
    d186 = ( M'.d73 ) $ ( ( M'.d114 ) $ ( ( ( M.d88 ) $ ( ( ( M.d109 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> d133 ) ) ) $ ( d146 ) ) ) )
    d188 : if false then if false then Bool else Bool else if false then Bool else Bool
    d188 = ( ( M.d96 ) $ ( ( ( M.d73 ) $ ( false ) ) $ ( d143 ) ) ) $ ( ( ( M.d30 ) $ ( d170 ) ) $ ( true ) )
    d189 : if false then if true then Bool else Bool else if false then Bool else Bool
    d189 = ( ( M.d50 ) $ ( if d148 then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> d136 ) ) ) $ ( d155 ) )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> Bool ) ) ) $ ( x1920 ) ) ) ) $ ( if false then Bool else Bool )
    d191 = if if false then false else d177 then if d186 then false else true else if false then false else d140
    d194 : if true then if true then Bool else Bool else if false then Bool else Bool
    d194 = ( ( M.d111 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1960 -> x1960 ) ) ) $ ( false ) )
    d197 : if true then if false then Bool else Bool else if true then Bool else Bool
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> ( ( M.d73 ) $ ( if true then x1980 else x1980 ) ) $ ( if true then x1980 else x1980 ) ) ) ) $ ( if true then false else d194 )
    d199 : if false then if true then Bool else Bool else if false then Bool else Bool
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> ( M'.d65 ) $ ( ( M'.d96 ) $ ( ( ( M.d12 ) $ ( if d120 then true else x2000 ) ) $ ( if x2000 then d165 else true ) ) ) ) ) ) $ ( if d189 then d127 else d138 )
    d201 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> ( ( Set -> Set ) ∋ ( ( λ x2050 -> Bool ) ) ) $ ( x2040 ) ) ) ) $ ( if true then Bool else Bool )
    d201 = ( ( Bool -> Bool ) ∋ ( ( λ x2020 -> ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> x2030 ) ) ) $ ( false ) ) ) ) $ ( if d138 then false else d194 )
    d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> ( ( Set -> Set ) ∋ ( ( λ x2090 -> x2080 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d206 = ( M'.d93 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> ( ( M.d70 ) $ ( if d138 then true else x2070 ) ) $ ( if d199 then d146 else d127 ) ) ) ) $ ( if true then d151 else true ) )
    d210 : if false then if true then Bool else Bool else if true then Bool else Bool
    d210 = ( M'.d19 ) $ ( ( M'.d105 ) $ ( if if false then d177 else false then if d201 then d201 else false else if false then true else true ) )
    d211 : if true then if true then Bool else Bool else if false then Bool else Bool
    d211 = ( ( M.d30 ) $ ( ( ( M.d7 ) $ ( false ) ) $ ( d144 ) ) ) $ ( if d176 then false else false )
    d212 : if false then if true then Bool else Bool else if true then Bool else Bool
    d212 = ( ( Bool -> Bool ) ∋ ( ( λ x2130 -> ( ( M.d85 ) $ ( if false then false else x2130 ) ) $ ( if d120 then true else d199 ) ) ) ) $ ( if true then true else false )
    d214 : ( ( Set -> Set ) ∋ ( ( λ x2150 -> ( ( Set -> Set ) ∋ ( ( λ x2160 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d214 = if if false then d158 else true then if true then true else d212 else if d210 then false else false
    d217 : if false then if true then Bool else Bool else if false then Bool else Bool
    d217 = ( ( M.d73 ) $ ( ( M'.d76 ) $ ( ( ( M.d105 ) $ ( d177 ) ) $ ( true ) ) ) ) $ ( ( ( M.d109 ) $ ( d191 ) ) $ ( false ) )
    d218 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> ( ( Set -> Set ) ∋ ( ( λ x2200 -> Bool ) ) ) $ ( x2190 ) ) ) ) $ ( if true then Bool else Bool )
    d218 = ( M'.d17 ) $ ( ( ( M.d81 ) $ ( ( ( M.d109 ) $ ( false ) ) $ ( true ) ) ) $ ( ( M'.d17 ) $ ( if d159 then false else false ) ) )
    d221 : if false then if true then Bool else Bool else if false then Bool else Bool
    d221 = ( ( M.d109 ) $ ( ( ( M.d61 ) $ ( d210 ) ) $ ( true ) ) ) $ ( ( M'.d19 ) $ ( if d133 then true else true ) )
    d222 : ( ( Set -> Set ) ∋ ( ( λ x2230 -> ( ( Set -> Set ) ∋ ( ( λ x2240 -> x2230 ) ) ) $ ( x2230 ) ) ) ) $ ( if false then Bool else Bool )
    d222 = if if d206 then true else false then if false then d165 else true else if true then d151 else d201
    d225 : if true then if false then Bool else Bool else if true then Bool else Bool
    d225 = ( M'.d25 ) $ ( ( ( M.d81 ) $ ( ( ( M.d33 ) $ ( false ) ) $ ( d188 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> false ) ) ) $ ( d161 ) ) )
    d227 : ( ( Set -> Set ) ∋ ( ( λ x2280 -> ( ( Set -> Set ) ∋ ( ( λ x2290 -> x2280 ) ) ) $ ( x2280 ) ) ) ) $ ( if true then Bool else Bool )
    d227 = if if true then false else true then if d210 then d127 else d189 else if d168 then d225 else d129
    d230 : ( ( Set -> Set ) ∋ ( ( λ x2320 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d230 = ( M'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2310 -> ( M'.d65 ) $ ( if true then d176 else x2310 ) ) ) ) $ ( if false then true else d194 ) )
    d233 : if false then if false then Bool else Bool else if true then Bool else Bool
    d233 = ( M'.d93 ) $ ( ( M'.d42 ) $ ( ( M'.d45 ) $ ( if if false then true else d177 then if false then false else d189 else if d165 then d177 else d186 ) ) )
    d234 : ( ( Set -> Set ) ∋ ( ( λ x2360 -> ( ( Set -> Set ) ∋ ( ( λ x2370 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d234 = ( ( Bool -> Bool ) ∋ ( ( λ x2350 -> if false then x2350 else d176 ) ) ) $ ( if d173 then false else d227 )
    d238 : if true then if false then Bool else Bool else if true then Bool else Bool
    d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> ( M'.d96 ) $ ( ( M'.d45 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2400 -> d170 ) ) ) $ ( x2390 ) ) ) ) ) ) $ ( if d138 then d120 else d170 )
    d241 : if true then if true then Bool else Bool else if true then Bool else Bool
    d241 = ( ( M.d25 ) $ ( ( ( M.d19 ) $ ( d227 ) ) $ ( d122 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2420 -> true ) ) ) $ ( true ) )
    d243 : if true then if true then Bool else Bool else if false then Bool else Bool
    d243 = ( ( Bool -> Bool ) ∋ ( ( λ x2440 -> ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> d211 ) ) ) $ ( false ) ) ) ) $ ( if d177 then d127 else false )
    d246 : if false then if false then Bool else Bool else if false then Bool else Bool
    d246 = ( ( M.d33 ) $ ( ( M'.d114 ) $ ( ( ( M.d34 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( true ) )
    d248 : if false then if false then Bool else Bool else if false then Bool else Bool
    d248 = ( M'.d117 ) $ ( ( M'.d30 ) $ ( ( M'.d50 ) $ ( if if d211 then false else true then if true then false else true else if d225 then false else true ) ) )
    d249 : ( ( Set -> Set ) ∋ ( ( λ x2500 -> ( ( Set -> Set ) ∋ ( ( λ x2510 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d249 = if if false then d197 else true then if true then false else d151 else if true then d124 else d188
    d252 : ( ( Set -> Set ) ∋ ( ( λ x2530 -> ( ( Set -> Set ) ∋ ( ( λ x2540 -> x2540 ) ) ) $ ( x2530 ) ) ) ) $ ( if false then Bool else Bool )
    d252 = if if d194 then false else d163 then if d222 then true else d217 else if false then false else false
    d255 : if true then if true then Bool else Bool else if false then Bool else Bool
    d255 = ( M'.d59 ) $ ( ( M'.d12 ) $ ( if if true then false else d252 then if d161 then d163 else false else if true then d177 else true ) )
    d256 : if false then if false then Bool else Bool else if false then Bool else Bool
    d256 = ( ( Bool -> Bool ) ∋ ( ( λ x2570 -> ( ( M.d117 ) $ ( if true then true else false ) ) $ ( if x2570 then false else d165 ) ) ) ) $ ( if d233 then d189 else true )
    d258 : if true then if true then Bool else Bool else if true then Bool else Bool
    d258 = if if d163 then d222 else d122 then if true then false else false else if d252 then false else d138
    d259 : ( ( Set -> Set ) ∋ ( ( λ x2620 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d259 = ( ( M.d111 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2600 -> x2600 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> x2610 ) ) ) $ ( true ) )
    d263 : if false then if true then Bool else Bool else if false then Bool else Bool
    d263 = ( ( Bool -> Bool ) ∋ ( ( λ x2640 -> if x2640 then false else x2640 ) ) ) $ ( if false then true else d248 )
    d265 : if false then if true then Bool else Bool else if true then Bool else Bool
    d265 = ( M'.d59 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> if d158 then x2660 else x2660 ) ) ) $ ( if true then false else d188 ) )
    d267 : if false then if false then Bool else Bool else if true then Bool else Bool
    d267 = if if d122 then d217 else true then if d173 then d188 else false else if d263 then d199 else d246
    d268 : if false then if true then Bool else Bool else if false then Bool else Bool
    d268 = ( ( M.d50 ) $ ( if d186 then d133 else false ) ) $ ( ( ( M.d81 ) $ ( false ) ) $ ( false ) )
    d269 : if false then if false then Bool else Bool else if false then Bool else Bool
    d269 = if if d180 then d177 else false then if false then false else false else if true then d155 else true
    d270 : if false then if true then Bool else Bool else if false then Bool else Bool
    d270 = ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> ( ( Bool -> Bool ) ∋ ( ( λ x2720 -> x2720 ) ) ) $ ( d159 ) ) ) ) $ ( if false then true else true )
    d273 : ( ( Set -> Set ) ∋ ( ( λ x2740 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d273 = if if d155 then d158 else true then if false then false else d249 else if d138 then false else d127
    d275 : ( ( Set -> Set ) ∋ ( ( λ x2760 -> if true then x2760 else x2760 ) ) ) $ ( if false then Bool else Bool )
    d275 = if if d143 then d265 else true then if d225 then false else d159 else if false then true else d124
    d277 : if true then if true then Bool else Bool else if false then Bool else Bool
    d277 = ( M'.d110 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2780 -> if x2780 then true else true ) ) ) $ ( if d246 then d184 else true ) )
    d279 : if true then if false then Bool else Bool else if true then Bool else Bool
    d279 = ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if x2800 then x2800 else true ) ) ) $ ( if d201 then d144 else d217 )
    d281 : ( ( Set -> Set ) ∋ ( ( λ x2830 -> if false then x2830 else x2830 ) ) ) $ ( if false then Bool else Bool )
    d281 = ( ( Bool -> Bool ) ∋ ( ( λ x2820 -> if d159 then false else true ) ) ) $ ( if d243 then false else d267 )
    d284 : ( ( Set -> Set ) ∋ ( ( λ x2870 -> if true then Bool else x2870 ) ) ) $ ( if false then Bool else Bool )
    d284 = ( M'.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2850 -> ( ( Bool -> Bool ) ∋ ( ( λ x2860 -> d126 ) ) ) $ ( x2850 ) ) ) ) $ ( if d170 then false else d222 ) )
    d288 : if false then if true then Bool else Bool else if true then Bool else Bool
    d288 = ( ( M.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2890 -> false ) ) ) $ ( d201 ) ) ) $ ( if d227 then d206 else false )
    d290 : if false then if false then Bool else Bool else if false then Bool else Bool
    d290 = if if d168 then d140 else true then if false then d249 else d184 else if d201 then true else false
    d291 : if true then if false then Bool else Bool else if true then Bool else Bool
    d291 = if if d173 then d275 else true then if d170 then d281 else false else if d186 then d146 else false
    d292 : if true then if false then Bool else Bool else if true then Bool else Bool
    d292 = if if d248 then false else d151 then if d127 then false else d175 else if true then false else true
    d293 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d293 = ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> if x2940 then x2940 else x2940 ) ) ) $ ( if false then false else d259 )
    d297 : ( ( Set -> Set ) ∋ ( ( λ x2980 -> if false then x2980 else x2980 ) ) ) $ ( if false then Bool else Bool )
    d297 = if if false then false else true then if d269 then d127 else d184 else if false then d222 else d124
    d299 : if true then if false then Bool else Bool else if false then Bool else Bool
    d299 = if if d165 then true else d273 then if d234 then false else d275 else if d227 then true else true
    d300 : ( ( Set -> Set ) ∋ ( ( λ x3010 -> if true then x3010 else Bool ) ) ) $ ( if false then Bool else Bool )
    d300 = ( ( M.d12 ) $ ( ( M'.d114 ) $ ( if true then d140 else d151 ) ) ) $ ( if true then true else d281 )
    d302 : if false then if false then Bool else Bool else if true then Bool else Bool
    d302 = if if d233 then false else false then if d175 then false else true else if d189 then d124 else true
    d303 : ( ( Set -> Set ) ∋ ( ( λ x3060 -> if false then x3060 else Bool ) ) ) $ ( if false then Bool else Bool )
    d303 = ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> d120 ) ) ) $ ( false ) ) ) ) $ ( if d151 then false else d214 )
    d307 : ( ( Set -> Set ) ∋ ( ( λ x3100 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d307 = ( ( Bool -> Bool ) ∋ ( ( λ x3080 -> ( ( Bool -> Bool ) ∋ ( ( λ x3090 -> false ) ) ) $ ( d151 ) ) ) ) $ ( if d186 then true else true )
    d311 : if false then if false then Bool else Bool else if false then Bool else Bool
    d311 = ( ( M.d7 ) $ ( if d122 then false else false ) ) $ ( ( ( M.d30 ) $ ( d218 ) ) $ ( false ) )
    d312 : ( ( Set -> Set ) ∋ ( ( λ x3130 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d312 = ( M'.d85 ) $ ( ( M'.d17 ) $ ( ( M'.d48 ) $ ( ( M'.d33 ) $ ( if if d122 then d222 else d165 then if d206 then d127 else d180 else if true then d238 else true ) ) ) )
    d314 : ( ( Set -> Set ) ∋ ( ( λ x3170 -> ( ( Set -> Set ) ∋ ( ( λ x3180 -> x3180 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d314 = ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> ( ( Bool -> Bool ) ∋ ( ( λ x3160 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d170 else false )
    d319 : ( ( Set -> Set ) ∋ ( ( λ x3210 -> ( ( Set -> Set ) ∋ ( ( λ x3220 -> x3220 ) ) ) $ ( x3210 ) ) ) ) $ ( if false then Bool else Bool )
    d319 = ( M'.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3200 -> ( ( M.d111 ) $ ( if d173 then true else x3200 ) ) $ ( if false then x3200 else true ) ) ) ) $ ( if d175 then d284 else d284 ) )
    d323 : if true then if false then Bool else Bool else if false then Bool else Bool
    d323 = ( M'.d85 ) $ ( ( M'.d33 ) $ ( ( M'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3240 -> ( M'.d65 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3250 -> x3250 ) ) ) $ ( x3240 ) ) ) ) ) $ ( if false then d155 else true ) ) ) )
    d326 : if true then if false then Bool else Bool else if true then Bool else Bool
    d326 = ( ( Bool -> Bool ) ∋ ( ( λ x3270 -> if true then false else x3270 ) ) ) $ ( if true then false else d252 )
    d328 : if false then if false then Bool else Bool else if true then Bool else Bool
    d328 = ( M'.d92 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> if d265 then x3290 else true ) ) ) $ ( if false then d241 else true ) )
    d330 : ( ( Set -> Set ) ∋ ( ( λ x3310 -> ( ( Set -> Set ) ∋ ( ( λ x3320 -> Bool ) ) ) $ ( x3310 ) ) ) ) $ ( if true then Bool else Bool )
    d330 = if if d136 then true else false then if d122 then d256 else true else if d143 then d148 else true
    d333 : ( ( Set -> Set ) ∋ ( ( λ x3360 -> ( ( Set -> Set ) ∋ ( ( λ x3370 -> Bool ) ) ) $ ( x3360 ) ) ) ) $ ( if false then Bool else Bool )
    d333 = ( ( Bool -> Bool ) ∋ ( ( λ x3340 -> ( ( Bool -> Bool ) ∋ ( ( λ x3350 -> x3340 ) ) ) $ ( x3340 ) ) ) ) $ ( if false then d170 else d189 )
    d338 : ( ( Set -> Set ) ∋ ( ( λ x3410 -> if true then x3410 else Bool ) ) ) $ ( if true then Bool else Bool )
    d338 = ( ( Bool -> Bool ) ∋ ( ( λ x3390 -> ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> x3390 ) ) ) $ ( true ) ) ) ) $ ( if d155 then true else true )
    d342 : ( ( Set -> Set ) ∋ ( ( λ x3440 -> if true then x3440 else Bool ) ) ) $ ( if true then Bool else Bool )
    d342 = ( ( Bool -> Bool ) ∋ ( ( λ x3430 -> if x3430 then x3430 else x3430 ) ) ) $ ( if d218 then d314 else d243 )
    d345 : if false then if true then Bool else Bool else if true then Bool else Bool
    d345 = ( ( Bool -> Bool ) ∋ ( ( λ x3460 -> ( M'.d48 ) $ ( ( ( M.d96 ) $ ( if d273 then x3460 else x3460 ) ) $ ( if false then true else d211 ) ) ) ) ) $ ( if true then d158 else d140 )
    d347 : if true then if false then Bool else Bool else if true then Bool else Bool
    d347 = ( M'.d65 ) $ ( ( M'.d96 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3480 -> ( ( M.d49 ) $ ( if d210 then d326 else x3480 ) ) $ ( if d338 then x3480 else x3480 ) ) ) ) $ ( if d143 then false else d159 ) ) )
    d349 : if true then if false then Bool else Bool else if true then Bool else Bool
    d349 = if if d151 then false else d180 then if true then d155 else false else if true then d284 else d281
    d350 : if true then if true then Bool else Bool else if false then Bool else Bool
    d350 = ( ( Bool -> Bool ) ∋ ( ( λ x3510 -> ( ( M.d59 ) $ ( if d158 then false else x3510 ) ) $ ( if d140 then false else d259 ) ) ) ) $ ( if true then d211 else false )