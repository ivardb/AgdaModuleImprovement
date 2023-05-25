module TypeSize15Test3  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : if true then Bool else Bool )  where
            d4 : if true then if false then Bool else Bool else if true then Bool else Bool
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if p30 then true else true ) ) ) $ ( if p10 then false else true )
            d6 : if true then if false then Bool else Bool else if true then Bool else Bool
            d6 = if if p30 then p10 else d4 then if d4 then d4 else d4 else if d4 then false else d4
            d7 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then Bool else x100 ) ) ) $ ( if false then Bool else Bool )
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> false ) ) ) $ ( x80 ) ) ) ) $ ( if false then d6 else false )
            d11 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then x120 else Bool ) ) ) $ ( if false then Bool else Bool )
            d11 = if if d4 then p10 else p30 then if d7 then true else p30 else if p30 then false else p10
            d13 : if true then if true then Bool else Bool else if false then Bool else Bool
            d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> if true then p10 else p10 ) ) ) $ ( if p10 then p10 else d7 )
            d15 : if false then if false then Bool else Bool else if true then Bool else Bool
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if true then d6 else true ) ) ) $ ( if false then true else d6 )
            d17 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then x190 else Bool ) ) ) $ ( if true then Bool else Bool )
            d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if p30 then true else d6 ) ) ) $ ( if p10 then true else p30 )
            d20 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if false then x210 else x210 ) ) ) $ ( if false then Bool else Bool )
            d20 = if if false then p30 else d17 then if true then d7 else p10 else if d11 then p30 else d15
            d22 : if false then if false then Bool else Bool else if true then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then true else p30 )
            d25 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( x270 ) ) ) ) $ ( if true then Bool else Bool )
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if p10 then false else p30 ) ) ) $ ( if p10 then d20 else p10 )
            d29 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then x300 else x300 ) ) ) $ ( if true then Bool else Bool )
            d29 = if if p30 then p30 else d11 then if false then true else d6 else if false then p30 else false
            d31 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> d13 ) ) ) $ ( d25 ) ) ) ) $ ( if true then false else p10 )
            d35 : ( ( Set -> Set ) ∋ ( ( λ x360 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d35 = if if d25 then p10 else true then if d31 then p10 else true else if p10 then p10 else d11
            d38 : ( ( Set -> Set ) ∋ ( ( λ x390 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> x400 ) ) ) $ ( x390 ) ) ) ) $ ( if false then Bool else Bool )
            d38 = if if d20 then true else d6 then if p10 then d6 else p30 else if false then d31 else d17
            d41 : if false then if false then Bool else Bool else if false then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if true then false else true ) ) ) $ ( if false then false else d7 )
            d43 : if true then if true then Bool else Bool else if false then Bool else Bool
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> true ) ) ) $ ( d7 ) ) ) ) $ ( if d20 then true else false )
            d46 : if true then if true then Bool else Bool else if true then Bool else Bool
            d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> false ) ) ) $ ( p10 ) ) ) ) $ ( if false then p30 else d4 )
            d49 : if true then if false then Bool else Bool else if false then Bool else Bool
            d49 = if if true then p30 else d13 then if d29 then p10 else d31 else if d4 then p10 else d22
            d50 : if false then if false then Bool else Bool else if false then Bool else Bool
            d50 = if if p30 then true else true then if p10 then d11 else p30 else if p30 then p10 else p10
            d51 : if true then if true then Bool else Bool else if false then Bool else Bool
            d51 = if if d46 then true else p30 then if d7 then false else p30 else if true then true else false
            d52 : if false then if false then Bool else Bool else if false then Bool else Bool
            d52 = if if p30 then p10 else false then if p30 then d22 else false else if true then d7 else false
            d53 : ( ( Set -> Set ) ∋ ( ( λ x540 -> if false then Bool else x540 ) ) ) $ ( if true then Bool else Bool )
            d53 = if if p10 then d20 else true then if true then p10 else d35 else if true then d29 else p30
            d55 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> Bool ) ) ) $ ( x560 ) ) ) ) $ ( if true then Bool else Bool )
            d55 = if if p10 then d46 else d38 then if p10 then d13 else d49 else if p10 then false else p10
            d58 : ( ( Set -> Set ) ∋ ( ( λ x590 -> ( ( Set -> Set ) ∋ ( ( λ x600 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d58 = if if p30 then true else p10 then if d41 then true else p30 else if p10 then d31 else d20
            d61 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> d51 ) ) ) $ ( true ) ) ) ) $ ( if p10 then d41 else d51 )
            d66 : ( ( Set -> Set ) ∋ ( ( λ x690 -> if false then Bool else x690 ) ) ) $ ( if false then Bool else Bool )
            d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d6 ) ) ) $ ( p30 ) ) ) ) $ ( if p30 then d41 else p10 )
            d70 : ( ( Set -> Set ) ∋ ( ( λ x730 -> ( ( Set -> Set ) ∋ ( ( λ x740 -> x730 ) ) ) $ ( x730 ) ) ) ) $ ( if false then Bool else Bool )
            d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> false ) ) ) $ ( false ) ) ) ) $ ( if d15 then p10 else p10 )
            d75 : ( ( Set -> Set ) ∋ ( ( λ x770 -> if true then Bool else x770 ) ) ) $ ( if false then Bool else Bool )
            d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if x760 then x760 else d50 ) ) ) $ ( if p30 then false else p30 )
            d78 : if false then if true then Bool else Bool else if true then Bool else Bool
            d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> x800 ) ) ) $ ( false ) ) ) ) $ ( if d6 then p30 else d22 )
            d81 : if false then if false then Bool else Bool else if false then Bool else Bool
            d81 = if if d75 then p30 else p30 then if d4 then d4 else false else if p30 then p30 else d78
            d82 : ( ( Set -> Set ) ∋ ( ( λ x830 -> if true then x830 else Bool ) ) ) $ ( if false then Bool else Bool )
            d82 = if if d35 then p30 else d20 then if false then d25 else true else if true then p30 else false
            d84 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d84 = if if d7 then d66 else true then if d49 then p30 else true else if p30 then true else false
            d86 : ( ( Set -> Set ) ∋ ( ( λ x880 -> if false then x880 else Bool ) ) ) $ ( if false then Bool else Bool )
            d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if d50 then false else p10 ) ) ) $ ( if d75 then true else p10 )
            d89 : if false then if false then Bool else Bool else if true then Bool else Bool
            d89 = if if false then p30 else d17 then if p10 then true else false else if p30 then d49 else d86
            d90 : if false then if true then Bool else Bool else if false then Bool else Bool
            d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if true then d25 else false ) ) ) $ ( if false then p30 else false )
            d92 : if true then if false then Bool else Bool else if true then Bool else Bool
            d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if d43 then false else p30 ) ) ) $ ( if true then true else d15 )
            d94 : ( ( Set -> Set ) ∋ ( ( λ x950 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d94 = if if false then d22 else p10 then if d90 then p10 else true else if d41 then p10 else d35
            d96 : if true then if false then Bool else Bool else if true then Bool else Bool
            d96 = if if p10 then d7 else d92 then if d46 then false else true else if p10 then false else p30
            d97 : if true then if false then Bool else Bool else if false then Bool else Bool
            d97 = if if d11 then false else true then if false then p10 else true else if d6 then p10 else p30
            d98 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> if false then x1010 else x1010 ) ) ) $ ( if true then Bool else Bool )
            d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> true ) ) ) $ ( false ) ) ) ) $ ( if p10 then p10 else true )
        module M1'  = M1 ( true ) 
    d102 : if false then if true then Bool else Bool else if false then Bool else Bool
    d102 = ( ( M.M1.d66 ) $ ( ( ( M.M1.d20 ) $ ( true ) ) $ ( true ) ) ) $ ( if true then false else false )
    d103 : if true then if false then Bool else Bool else if false then Bool else Bool
    d103 = ( ( M.M1.d22 ) $ ( ( M.M1'.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( true ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> d102 ) ) ) $ ( false ) )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> if true then x1070 else x1070 ) ) ) $ ( if false then Bool else Bool )
    d106 = if if false then true else d102 then if d103 then true else false else if false then true else d102
    d108 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> if false then Bool else x1110 ) ) ) $ ( if true then Bool else Bool )
    d108 = ( M.M1'.d15 ) $ ( ( M.M1'.d6 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( true ) ) ) ) $ ( if d102 then d103 else false ) ) )
    d112 : if true then if true then Bool else Bool else if true then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> x1140 ) ) ) $ ( x1130 ) ) ) ) $ ( if false then true else d102 )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x1160 -> ( ( Set -> Set ) ∋ ( ( λ x1170 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d115 = if if d112 then true else true then if d112 then d102 else true else if d106 then false else false
    d118 : if true then if false then Bool else Bool else if false then Bool else Bool
    d118 = ( M.M1'.d7 ) $ ( ( M.M1'.d11 ) $ ( if if d106 then true else d115 then if true then d102 else true else if d115 then false else d102 ) )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> ( ( Set -> Set ) ∋ ( ( λ x1220 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( M.M1'.d38 ) $ ( ( ( M.M1.d22 ) $ ( if x1200 then x1200 else d103 ) ) $ ( if d112 then d102 else false ) ) ) ) ) $ ( if d108 then true else true )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> if false then Bool else x1250 ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( M.M1.d15 ) $ ( if false then true else d118 ) ) $ ( ( M.M1'.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> d103 ) ) ) $ ( false ) ) )
    d126 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> if true then Bool else x1280 ) ) ) $ ( if false then Bool else Bool )
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( M.M1'.d35 ) $ ( ( ( M.M1.d66 ) $ ( if d118 then false else false ) ) $ ( if true then x1270 else true ) ) ) ) ) $ ( if false then d123 else true )
    d129 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> if false then x1300 else x1300 ) ) ) $ ( if false then Bool else Bool )
    d129 = if if d118 then false else d123 then if false then true else true else if true then d115 else true
    d131 : if true then if false then Bool else Bool else if true then Bool else Bool
    d131 = ( M.M1'.d22 ) $ ( ( ( M.M1.d75 ) $ ( ( M.M1'.d29 ) $ ( ( M.M1'.d29 ) $ ( ( ( M.M1.d7 ) $ ( d115 ) ) $ ( d118 ) ) ) ) ) $ ( ( M.M1'.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( true ) ) ) )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> if false then x1340 else x1340 ) ) ) $ ( if true then Bool else Bool )
    d133 = ( M.M1'.d49 ) $ ( ( M.M1'.d17 ) $ ( ( M.M1'.d25 ) $ ( ( M.M1'.d55 ) $ ( ( M.M1'.d20 ) $ ( if if false then true else true then if false then d126 else d129 else if false then d118 else d108 ) ) ) ) )
    d135 : if false then if true then Bool else Bool else if false then Bool else Bool
    d135 = if if d123 then true else d112 then if d106 then d106 else false else if d131 then d106 else false
    d136 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> if true then Bool else x1380 ) ) ) $ ( if false then Bool else Bool )
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if x1370 then true else d131 ) ) ) $ ( if d115 then true else d118 )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> if false then Bool else x1420 ) ) ) $ ( if false then Bool else Bool )
    d139 = ( M.M1'.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( false ) ) ) ) $ ( if d135 then d108 else false ) )
    d143 : if true then if false then Bool else Bool else if false then Bool else Bool
    d143 = if if d135 then d103 else d136 then if false then d123 else false else if d126 then false else d129
    d144 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> ( ( Set -> Set ) ∋ ( ( λ x1470 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d144 = ( M.M1'.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if d115 then true else false ) ) ) $ ( if true then false else false ) )
    d148 : if false then if true then Bool else Bool else if false then Bool else Bool
    d148 = ( M.M1'.d38 ) $ ( ( M.M1'.d86 ) $ ( ( ( M.M1.d22 ) $ ( if d131 then d131 else true ) ) $ ( ( ( M.M1.d82 ) $ ( d144 ) ) $ ( false ) ) ) )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> Bool ) ) ) $ ( x1520 ) ) ) ) $ ( if false then Bool else Bool )
    d149 = ( M.M1'.d49 ) $ ( ( M.M1'.d53 ) $ ( ( M.M1'.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> d119 ) ) ) $ ( d106 ) ) ) ) $ ( if false then true else d133 ) ) ) )
    d154 : if false then if true then Bool else Bool else if false then Bool else Bool
    d154 = ( ( M.M1.d90 ) $ ( ( M.M1'.d49 ) $ ( ( M.M1'.d52 ) $ ( ( M.M1'.d75 ) $ ( if d112 then false else false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> x1550 ) ) ) $ ( d108 ) )
    d156 : if false then if false then Bool else Bool else if false then Bool else Bool
    d156 = ( M.M1'.d20 ) $ ( ( M.M1'.d96 ) $ ( ( M.M1'.d75 ) $ ( ( M.M1'.d86 ) $ ( if if d154 then d149 else d143 then if true then d103 else false else if true then d148 else false ) ) ) )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d157 = if if true then d143 else false then if d115 then d106 else d108 else if false then false else false
    d159 : if false then if false then Bool else Bool else if false then Bool else Bool
    d159 = if if d102 then d119 else d102 then if false then true else d115 else if false then d136 else d115
    d160 : ( ( Set -> Set ) ∋ ( ( λ x1620 -> if true then Bool else x1620 ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( M.M1.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> x1610 ) ) ) $ ( true ) ) ) $ ( if d106 then false else d157 )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d163 = ( M.M1'.d20 ) $ ( ( ( M.M1.d46 ) $ ( if d123 then false else d126 ) ) $ ( ( ( M.M1.d66 ) $ ( true ) ) $ ( d115 ) ) )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x1660 -> if true then Bool else x1660 ) ) ) $ ( if true then Bool else Bool )
    d165 = ( M.M1'.d75 ) $ ( if if false then d135 else d159 then if d118 then false else false else if false then true else true )
    d167 : if false then if true then Bool else Bool else if false then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> if true then d129 else x1680 ) ) ) $ ( if false then true else d165 )
    d169 : if true then if false then Bool else Bool else if true then Bool else Bool
    d169 = ( ( M.M1.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( false ) ) ) $ ( ( M.M1'.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> d131 ) ) ) $ ( d156 ) ) )
    d172 : if false then if true then Bool else Bool else if true then Bool else Bool
    d172 = ( ( M.M1.d38 ) $ ( if d163 then d112 else true ) ) $ ( ( M.M1'.d46 ) $ ( ( M.M1'.d55 ) $ ( ( M.M1'.d53 ) $ ( ( M.M1'.d13 ) $ ( ( M.M1'.d55 ) $ ( ( ( M.M1.d52 ) $ ( d139 ) ) $ ( false ) ) ) ) ) ) )
    d173 : if true then if true then Bool else Bool else if false then Bool else Bool
    d173 = ( ( M.M1.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> d143 ) ) ) $ ( d112 ) ) ) $ ( ( M.M1'.d70 ) $ ( ( M.M1'.d13 ) $ ( ( ( M.M1.d86 ) $ ( true ) ) $ ( d160 ) ) ) )
    d175 : if true then if true then Bool else Bool else if false then Bool else Bool
    d175 = ( M.M1'.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1760 -> ( M.M1'.d86 ) $ ( ( M.M1'.d89 ) $ ( if d133 then true else x1760 ) ) ) ) ) $ ( if d149 then true else d154 ) )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> if false then x1800 else x1800 ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> x1790 ) ) ) $ ( x1780 ) ) ) ) $ ( if false then d135 else d112 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then Bool else x1820 ) ) ) $ ( if false then Bool else Bool )
    d181 = ( M.M1'.d43 ) $ ( if if false then false else d136 then if false then d159 else d108 else if true then true else d139 )
    d183 : if false then if false then Bool else Bool else if false then Bool else Bool
    d183 = if if d108 then true else false then if false then true else false else if false then true else false
    d184 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> if true then x1860 else Bool ) ) ) $ ( if false then Bool else Bool )
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> ( ( M.M1.d35 ) $ ( if d149 then true else d133 ) ) $ ( if d102 then true else d131 ) ) ) ) $ ( if false then d159 else d108 )
    d187 : if false then if true then Bool else Bool else if true then Bool else Bool
    d187 = if if d126 then d135 else false then if d165 then true else d175 else if true then false else false
    d188 : ( ( Set -> Set ) ∋ ( ( λ x1900 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( M.M1.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1890 -> false ) ) ) $ ( false ) ) ) $ ( if d163 then false else d103 )
    d191 : if true then if false then Bool else Bool else if true then Bool else Bool
    d191 = ( M.M1'.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> if false then x1920 else x1920 ) ) ) $ ( if true then false else true ) )
    d193 : if false then if true then Bool else Bool else if true then Bool else Bool
    d193 = ( M.M1'.d94 ) $ ( ( M.M1'.d46 ) $ ( ( ( M.M1.d22 ) $ ( ( ( M.M1.d61 ) $ ( d123 ) ) $ ( false ) ) ) $ ( ( M.M1'.d82 ) $ ( ( M.M1'.d17 ) $ ( ( M.M1'.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> true ) ) ) $ ( false ) ) ) ) ) ) )
    d195 : if true then if true then Bool else Bool else if true then Bool else Bool
    d195 = ( M.M1'.d31 ) $ ( ( M.M1'.d49 ) $ ( ( M.M1'.d58 ) $ ( if if d136 then false else true then if d175 then false else true else if d163 then true else true ) ) )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x1970 -> ( ( Set -> Set ) ∋ ( ( λ x1980 -> x1970 ) ) ) $ ( x1970 ) ) ) ) $ ( if false then Bool else Bool )
    d196 = ( M.M1'.d98 ) $ ( if if d183 then d195 else d165 then if false then d195 else d191 else if d119 then true else d129 )
    d199 : if true then if true then Bool else Bool else if false then Bool else Bool
    d199 = ( M.M1'.d78 ) $ ( if if d154 then true else d191 then if d112 then d156 else true else if true then true else d148 )
    d200 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> if false then x2020 else x2020 ) ) ) $ ( if true then Bool else Bool )
    d200 = ( M.M1'.d43 ) $ ( ( M.M1'.d86 ) $ ( ( ( M.M1.d70 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2010 -> d136 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d35 ) $ ( if d169 then true else d195 ) ) ) )
    d203 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> ( ( Set -> Set ) ∋ ( ( λ x2050 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d203 = if if d119 then false else true then if d175 then d106 else true else if d200 then false else d157
    d206 : if true then if false then Bool else Bool else if true then Bool else Bool
    d206 = ( ( M.M1.d31 ) $ ( if true then true else false ) ) $ ( if true then d191 else false )
    d207 : if false then if true then Bool else Bool else if false then Bool else Bool
    d207 = ( ( M.M1.d55 ) $ ( ( ( M.M1.d92 ) $ ( false ) ) $ ( d172 ) ) ) $ ( ( M.M1'.d49 ) $ ( if true then d135 else d136 ) )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> ( ( Set -> Set ) ∋ ( ( λ x2100 -> x2090 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d208 = if if false then true else true then if false then true else false else if false then d139 else true
    d211 : if true then if true then Bool else Bool else if false then Bool else Bool
    d211 = ( M.M1'.d86 ) $ ( ( ( M.M1.d81 ) $ ( if true then true else true ) ) $ ( if d207 then d167 else d207 ) )
    d212 : if true then if true then Bool else Bool else if true then Bool else Bool
    d212 = ( M.M1'.d82 ) $ ( ( M.M1'.d52 ) $ ( ( ( M.M1.d78 ) $ ( ( M.M1'.d84 ) $ ( if true then d167 else false ) ) ) $ ( if d126 then d156 else d172 ) ) )