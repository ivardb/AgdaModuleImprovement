module ModArg10Test1  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then x20 else x20 ) ) ) $ ( Bool ) ) ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then Bool else x40 ) ) ) $ ( Bool ) )  where
        module M1 ( p50 : if false then Bool else Bool ) ( p60 : if false then Bool else Bool )  where
            d7 : if true then if false then Bool else Bool else if true then Bool else Bool
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if false then x80 else p60 ) ) ) $ ( if false then false else p60 )
            d9 : if true then if false then Bool else Bool else if true then Bool else Bool
            d9 = if if p30 then false else true then if p60 then true else p50 else if d7 then d7 else false
            d10 : if true then if false then Bool else Bool else if true then Bool else Bool
            d10 = if if d7 then false else false then if d9 then p30 else p50 else if p60 then p10 else false
            d11 : if true then if false then Bool else Bool else if true then Bool else Bool
            d11 = if if d7 then p50 else p60 then if d7 then p30 else p50 else if d10 then false else true
            d12 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x140 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d10 then p50 else true ) ) ) $ ( if p60 then p10 else d9 )
            d16 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> p60 ) ) ) $ ( true ) ) ) ) $ ( if d12 then false else d12 )
            d20 : if true then if true then Bool else Bool else if true then Bool else Bool
            d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if d10 then false else x210 ) ) ) $ ( if d16 then p10 else d16 )
            d22 : ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d22 = if if d11 then d9 else d10 then if true then false else d9 else if d20 then d7 else true
            d24 : if false then if true then Bool else Bool else if false then Bool else Bool
            d24 = if if d20 then d7 else d12 then if false then p10 else p60 else if true then true else d20
            d25 : ( ( Set -> Set ) ∋ ( ( λ x260 -> ( ( Set -> Set ) ∋ ( ( λ x270 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d25 = if if true then d7 else false then if d22 then p60 else d9 else if false then false else p10
            d28 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> x320 ) ) ) $ ( x310 ) ) ) ) $ ( if false then Bool else Bool )
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> p60 ) ) ) $ ( d12 ) ) ) ) $ ( if d20 then p60 else p30 )
            d33 : if false then if false then Bool else Bool else if false then Bool else Bool
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d10 then true else d11 ) ) ) $ ( if p30 then d11 else false )
            d35 : if false then if true then Bool else Bool else if false then Bool else Bool
            d35 = if if p60 then d22 else true then if p10 then d24 else false else if true then true else d16
            d36 : if false then if false then Bool else Bool else if false then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d25 ) ) ) $ ( d20 ) ) ) ) $ ( if d12 then false else p30 )
            d39 : if false then if false then Bool else Bool else if false then Bool else Bool
            d39 = if if false then true else p30 then if p10 then p60 else true else if true then false else p60
            d40 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if true then Bool else x420 ) ) ) $ ( if false then Bool else Bool )
            d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if p30 then true else p10 ) ) ) $ ( if d12 then true else true )
            d43 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x470 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> p30 ) ) ) $ ( d28 ) ) ) ) $ ( if p60 then true else p30 )
            d48 : if false then if false then Bool else Bool else if false then Bool else Bool
            d48 = if if true then p60 else d33 then if p50 then d33 else true else if p50 then false else d9
            d49 : ( ( Set -> Set ) ∋ ( ( λ x510 -> ( ( Set -> Set ) ∋ ( ( λ x520 -> x520 ) ) ) $ ( x510 ) ) ) ) $ ( if false then Bool else Bool )
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if d20 then d25 else d40 ) ) ) $ ( if false then p60 else d28 )
            d53 : if false then if true then Bool else Bool else if false then Bool else Bool
            d53 = if if p30 then d28 else true then if true then false else p60 else if p30 then d33 else true
            d54 : ( ( Set -> Set ) ∋ ( ( λ x550 -> ( ( Set -> Set ) ∋ ( ( λ x560 -> Bool ) ) ) $ ( x550 ) ) ) ) $ ( if true then Bool else Bool )
            d54 = if if d12 then d25 else p30 then if p30 then d49 else true else if p50 then d11 else false
            d57 : if true then if true then Bool else Bool else if false then Bool else Bool
            d57 = if if p60 then d36 else p10 then if false then p50 else d43 else if p60 then p60 else d39
            d58 : ( ( Set -> Set ) ∋ ( ( λ x590 -> ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( x590 ) ) ) ) $ ( if true then Bool else Bool )
            d58 = if if p30 then true else d57 then if d22 then d20 else d24 else if true then p60 else d54
            d61 : ( ( Set -> Set ) ∋ ( ( λ x620 -> if true then Bool else x620 ) ) ) $ ( if true then Bool else Bool )
            d61 = if if true then d57 else true then if false then p10 else false else if true then p10 else false
            d63 : ( ( Set -> Set ) ∋ ( ( λ x640 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d63 = if if p50 then d33 else false then if d49 then false else false else if d11 then p60 else p10
            d65 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d65 = if if d39 then true else false then if d40 then true else false else if p60 then false else false
            d67 : if true then if false then Bool else Bool else if false then Bool else Bool
            d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if d53 then d9 else p50 ) ) ) $ ( if true then d9 else false )
            d69 : ( ( Set -> Set ) ∋ ( ( λ x720 -> if false then x720 else x720 ) ) ) $ ( if false then Bool else Bool )
            d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> p50 ) ) ) $ ( true ) ) ) ) $ ( if p10 then d16 else p30 )
            d73 : ( ( Set -> Set ) ∋ ( ( λ x740 -> if false then x740 else x740 ) ) ) $ ( if true then Bool else Bool )
            d73 = if if d22 then p50 else p60 then if d61 then d48 else d67 else if p50 then false else false
            d75 : if true then if false then Bool else Bool else if true then Bool else Bool
            d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if false then d35 else d16 ) ) ) $ ( if d61 then p50 else d61 )
            d77 : if true then if true then Bool else Bool else if false then Bool else Bool
            d77 = if if d22 then d7 else d11 then if p60 then d53 else p60 else if p50 then true else false
            d78 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> x790 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d78 = if if d10 then p10 else p50 then if false then d63 else p50 else if true then p30 else p10
            d81 : if false then if true then Bool else Bool else if false then Bool else Bool
            d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> false ) ) ) $ ( false ) ) ) ) $ ( if d33 then d49 else false )
            d84 : if true then if false then Bool else Bool else if false then Bool else Bool
            d84 = if if d11 then d36 else d48 then if d39 then d20 else d69 else if d25 then false else d11
            d85 : if false then if true then Bool else Bool else if true then Bool else Bool
            d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> if d48 then p50 else false ) ) ) $ ( if d36 then d20 else p60 )
            d87 : ( ( Set -> Set ) ∋ ( ( λ x900 -> ( ( Set -> Set ) ∋ ( ( λ x910 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( Bool -> Bool ) ∋ ( ( λ x890 -> p60 ) ) ) $ ( true ) ) ) ) $ ( if d75 then d58 else d43 )
            d92 : if false then if false then Bool else Bool else if false then Bool else Bool
            d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if false then p30 else d25 ) ) ) $ ( if false then true else d12 )
            d94 : if false then if true then Bool else Bool else if false then Bool else Bool
            d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if p60 then p50 else d10 ) ) ) $ ( if false then d16 else d65 )
            d96 : if false then if false then Bool else Bool else if false then Bool else Bool
            d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> if d33 then false else d67 ) ) ) $ ( if d39 then d87 else d69 )
            d98 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> Bool ) ) ) $ ( x990 ) ) ) ) $ ( if true then Bool else Bool )
            d98 = if if false then false else false then if d77 then d54 else false else if true then d63 else p30
        module M1'  = M1 ( ( ( M1.d73 ) $ ( if false then p30 else true ) ) $ ( if true then p30 else true ) ) 
    d101 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> ( ( Set -> Set ) ∋ ( ( λ x1040 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( ( ( M.M1.d75 ) $ ( x1020 ) ) $ ( x1020 ) ) $ ( x1020 ) ) $ ( true ) ) ) ) $ ( if false then true else false )
    d105 : if false then if true then Bool else Bool else if false then Bool else Bool
    d105 = if if d101 then d101 else false then if true then false else d101 else if true then d101 else d101
    d106 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> if true then Bool else x1070 ) ) ) $ ( if true then Bool else Bool )
    d106 = ( ( ( ( M.M1.d57 ) $ ( d101 ) ) $ ( d101 ) ) $ ( d101 ) ) $ ( d101 )
    d108 : if true then if false then Bool else Bool else if true then Bool else Bool
    d108 = ( ( ( M.M1'.d69 ) $ ( if false then d106 else d105 ) ) $ ( if d106 then false else true ) ) $ ( if d106 then false else d105 )
    d109 : if true then if false then Bool else Bool else if true then Bool else Bool
    d109 = if if d105 then true else true then if d106 then d108 else d101 else if false then d108 else true
    d110 : if false then if false then Bool else Bool else if false then Bool else Bool
    d110 = ( ( ( ( M.M1.d35 ) $ ( false ) ) $ ( d108 ) ) $ ( true ) ) $ ( d105 )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d111 = ( ( ( M.M1'.d67 ) $ ( if true then d105 else d101 ) ) $ ( if d105 then d101 else false ) ) $ ( if d109 then true else false )
    d114 : if false then if false then Bool else Bool else if true then Bool else Bool
    d114 = ( ( ( M.M1'.d36 ) $ ( if d109 then d110 else true ) ) $ ( if true then d106 else d106 ) ) $ ( if d101 then true else false )
    d115 : if false then if false then Bool else Bool else if false then Bool else Bool
    d115 = ( ( ( ( M.M1.d81 ) $ ( d111 ) ) $ ( true ) ) $ ( true ) ) $ ( true )
    d116 : if false then if true then Bool else Bool else if true then Bool else Bool
    d116 = if if d105 then true else true then if d105 then true else false else if true then false else true
    d117 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> if true then x1180 else x1180 ) ) ) $ ( if false then Bool else Bool )
    d117 = ( ( ( M.M1'.d96 ) $ ( if d105 then d115 else false ) ) $ ( if d101 then d116 else true ) ) $ ( if d108 then false else false )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> ( ( Set -> Set ) ∋ ( ( λ x1210 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d119 = if if true then true else d116 then if true then d111 else d110 else if false then d115 else d105
    d122 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> ( ( Set -> Set ) ∋ ( ( λ x1250 -> Bool ) ) ) $ ( x1240 ) ) ) ) $ ( if false then Bool else Bool )
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if x1230 then false else false ) ) ) $ ( if false then d117 else true )
    d126 : if false then if true then Bool else Bool else if false then Bool else Bool
    d126 = ( ( ( M.M1'.d67 ) $ ( if d122 then true else d111 ) ) $ ( if d108 then d111 else d106 ) ) $ ( if false then d116 else false )
    d127 : if true then if true then Bool else Bool else if true then Bool else Bool
    d127 = ( ( ( ( M.M1.d35 ) $ ( true ) ) $ ( true ) ) $ ( d111 ) ) $ ( d117 )
    d128 : if false then if true then Bool else Bool else if true then Bool else Bool
    d128 = if if d106 then false else d115 then if d117 then d105 else true else if d122 then true else d110
    d129 : if true then if false then Bool else Bool else if false then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( ( ( M.M1.d63 ) $ ( d110 ) ) $ ( true ) ) $ ( d128 ) ) $ ( false ) ) ) ) $ ( if false then d108 else true )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x1320 -> ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1320 ) ) ) $ ( x1320 ) ) ) ) $ ( if true then Bool else Bool )
    d131 = ( ( ( M.M1'.d78 ) $ ( if d110 then false else d115 ) ) $ ( if d110 then false else d110 ) ) $ ( if d117 then d126 else false )
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = ( ( ( M.M1'.d67 ) $ ( if d110 then false else d126 ) ) $ ( if d114 then false else d105 ) ) $ ( if false then false else d111 )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x1360 -> ( ( Set -> Set ) ∋ ( ( λ x1370 -> Bool ) ) ) $ ( x1360 ) ) ) ) $ ( if true then Bool else Bool )
    d135 = ( ( ( M.M1'.d65 ) $ ( if true then d106 else true ) ) $ ( if d128 then d117 else d110 ) ) $ ( if true then d111 else false )
    d138 : if true then if true then Bool else Bool else if true then Bool else Bool
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> ( ( ( ( M.M1.d48 ) $ ( d135 ) ) $ ( x1390 ) ) $ ( false ) ) $ ( x1390 ) ) ) ) $ ( if d127 then false else false )
    d140 : if false then if false then Bool else Bool else if true then Bool else Bool
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> if x1410 then x1410 else d135 ) ) ) $ ( if d138 then d126 else false )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> if false then Bool else x1430 ) ) ) $ ( if false then Bool else Bool )
    d142 = ( ( ( ( M.M1.d69 ) $ ( d105 ) ) $ ( d116 ) ) $ ( d110 ) ) $ ( true )
    d144 : if true then if true then Bool else Bool else if false then Bool else Bool
    d144 = if if d140 then false else true then if d111 then true else d108 else if d131 then true else false
    d145 : if false then if true then Bool else Bool else if true then Bool else Bool
    d145 = if if d126 then true else false then if d131 then true else d117 else if d131 then true else d109
    d146 : if true then if true then Bool else Bool else if false then Bool else Bool
    d146 = ( ( ( ( M.M1.d33 ) $ ( d131 ) ) $ ( d135 ) ) $ ( d115 ) ) $ ( d140 )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x1480 -> if true then x1480 else x1480 ) ) ) $ ( if true then Bool else Bool )
    d147 = ( ( ( ( M.M1.d53 ) $ ( false ) ) $ ( true ) ) $ ( d110 ) ) $ ( true )
    d149 : if true then if true then Bool else Bool else if false then Bool else Bool
    d149 = ( ( ( M.M1'.d84 ) $ ( if d134 then d131 else false ) ) $ ( if d128 then d134 else false ) ) $ ( if true then true else false )
    d150 : if false then if false then Bool else Bool else if true then Bool else Bool
    d150 = if if false then d147 else false then if false then true else d140 else if true then d131 else d146
    d151 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> Bool ) ) ) $ ( x1520 ) ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( ( M.M1'.d35 ) $ ( if d126 then true else d111 ) ) $ ( if true then d147 else d146 ) ) $ ( if d145 then true else false )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> Bool ) ) ) $ ( x1550 ) ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( ( ( M.M1.d67 ) $ ( d110 ) ) $ ( d126 ) ) $ ( d131 ) ) $ ( d101 )
    d157 : if true then if true then Bool else Bool else if false then Bool else Bool
    d157 = ( ( ( M.M1'.d7 ) $ ( if d110 then d144 else d122 ) ) $ ( if d147 then d108 else d135 ) ) $ ( if false then d116 else d115 )
    d158 : if true then if false then Bool else Bool else if false then Bool else Bool
    d158 = ( ( ( ( M.M1.d7 ) $ ( d114 ) ) $ ( d138 ) ) $ ( d101 ) ) $ ( false )
    d159 : if false then if true then Bool else Bool else if false then Bool else Bool
    d159 = ( ( ( ( M.M1.d58 ) $ ( true ) ) $ ( d110 ) ) $ ( true ) ) $ ( d142 )
    d160 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> if false then x1610 else Bool ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( ( M.M1'.d85 ) $ ( if true then d157 else true ) ) $ ( if d119 then true else true ) ) $ ( if false then d145 else false )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if true then x1630 else Bool ) ) ) $ ( if true then Bool else Bool )
    d162 = ( ( ( ( M.M1.d24 ) $ ( true ) ) $ ( true ) ) $ ( d147 ) ) $ ( d144 )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then x1650 else Bool ) ) ) $ ( if false then Bool else Bool )
    d164 = ( ( ( ( M.M1.d33 ) $ ( true ) ) $ ( false ) ) $ ( d151 ) ) $ ( true )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( ( M.M1'.d48 ) $ ( if false then d157 else true ) ) $ ( if true then true else d154 ) ) $ ( if d159 then true else d158 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x1710 -> ( ( Set -> Set ) ∋ ( ( λ x1720 -> x1720 ) ) ) $ ( x1710 ) ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> if d149 then true else x1700 ) ) ) $ ( if false then false else d117 )
    d173 : if true then if false then Bool else Bool else if false then Bool else Bool
    d173 = ( ( ( M.M1'.d36 ) $ ( if false then d166 else d144 ) ) $ ( if true then d159 else d134 ) ) $ ( if d140 then d146 else false )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> Bool ) ) ) $ ( x1750 ) ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( ( M.M1'.d87 ) $ ( if d164 then true else false ) ) $ ( if true then false else d111 ) ) $ ( if false then true else d157 )
    d177 : if true then if false then Bool else Bool else if true then Bool else Bool
    d177 = if if d149 then d173 else true then if d105 then false else d111 else if d117 then d138 else false
    d178 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if true then Bool else x1790 ) ) ) $ ( if false then Bool else Bool )
    d178 = ( ( ( M.M1'.d84 ) $ ( if d169 then d164 else true ) ) $ ( if true then false else d173 ) ) $ ( if d111 then false else true )
    d180 : if true then if false then Bool else Bool else if false then Bool else Bool
    d180 = ( ( ( M.M1'.d25 ) $ ( if d151 then true else d138 ) ) $ ( if true then false else d111 ) ) $ ( if true then d146 else true )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> ( ( Set -> Set ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( x1820 ) ) ) ) $ ( if true then Bool else Bool )
    d181 = ( ( ( M.M1'.d78 ) $ ( if true then true else d106 ) ) $ ( if true then true else false ) ) $ ( if true then false else false )
    d184 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> ( ( Set -> Set ) ∋ ( ( λ x1860 -> Bool ) ) ) $ ( x1850 ) ) ) ) $ ( if true then Bool else Bool )
    d184 = ( ( ( M.M1'.d85 ) $ ( if d160 then false else false ) ) $ ( if d135 then false else d180 ) ) $ ( if false then true else d119 )
    d187 : if true then if false then Bool else Bool else if true then Bool else Bool
    d187 = ( ( ( ( M.M1.d43 ) $ ( true ) ) $ ( false ) ) $ ( d166 ) ) $ ( d173 )
    d188 : if false then if false then Bool else Bool else if true then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> d116 ) ) ) $ ( x1890 ) ) ) ) $ ( if true then d129 else false )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if true then x1920 else x1920 ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( ( M.M1'.d11 ) $ ( if d105 then false else d131 ) ) $ ( if d122 then false else d114 ) ) $ ( if d166 then false else d127 )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> if false then Bool else x1940 ) ) ) $ ( if false then Bool else Bool )
    d193 = ( ( ( M.M1'.d40 ) $ ( if d146 then true else false ) ) $ ( if false then false else d169 ) ) $ ( if false then d188 else true )