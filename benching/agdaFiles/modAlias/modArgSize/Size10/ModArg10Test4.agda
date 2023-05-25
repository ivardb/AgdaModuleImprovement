module ModArg10Test4  where
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

    module M ( p10 : if false then Bool else Bool ) ( p20 : if true then Bool else Bool )  where
        module M1 ( p30 : if true then Bool else Bool ) ( p40 : if true then Bool else Bool )  where
            d5 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> x70 ) ) ) $ ( x60 ) ) ) ) $ ( if false then Bool else Bool )
            d5 = if if true then p20 else p20 then if false then p20 else p40 else if false then false else false
            d8 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then Bool else x90 ) ) ) $ ( if true then Bool else Bool )
            d8 = if if d5 then p30 else p10 then if d5 then p40 else d5 else if false then d5 else p30
            d10 : if true then if false then Bool else Bool else if true then Bool else Bool
            d10 = if if true then p40 else p30 then if d5 then d5 else false else if p20 then p10 else false
            d11 : if true then if false then Bool else Bool else if false then Bool else Bool
            d11 = if if true then false else p10 then if p40 then d8 else p10 else if true then true else d8
            d12 : if true then if false then Bool else Bool else if false then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> d5 ) ) ) $ ( p30 ) ) ) ) $ ( if d8 then d5 else true )
            d15 : if true then if false then Bool else Bool else if false then Bool else Bool
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if p30 then x160 else p40 ) ) ) $ ( if p10 then p20 else p30 )
            d17 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> x200 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> p30 ) ) ) $ ( x180 ) ) ) ) $ ( if d15 then true else d8 )
            d22 : if false then if true then Bool else Bool else if false then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if d15 then d17 else d8 ) ) ) $ ( if p20 then true else true )
            d24 : if true then if false then Bool else Bool else if true then Bool else Bool
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> p40 ) ) ) $ ( p40 ) ) ) ) $ ( if true then true else d5 )
            d27 : ( ( Set -> Set ) ∋ ( ( λ x280 -> ( ( Set -> Set ) ∋ ( ( λ x290 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d27 = if if p30 then false else d12 then if true then p40 else p30 else if d11 then d17 else p30
            d30 : ( ( Set -> Set ) ∋ ( ( λ x310 -> ( ( Set -> Set ) ∋ ( ( λ x320 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d30 = if if p30 then p40 else p20 then if p30 then d22 else p30 else if d10 then true else d27
            d33 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d33 = if if d5 then false else false then if p10 then false else false else if d24 then d27 else p20
            d35 : if false then if true then Bool else Bool else if false then Bool else Bool
            d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if true then d17 else false ) ) ) $ ( if true then true else d8 )
            d37 : if false then if true then Bool else Bool else if true then Bool else Bool
            d37 = if if p20 then d22 else true then if d33 then true else true else if d11 then p10 else d30
            d38 : if true then if true then Bool else Bool else if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if d22 then d27 else true )
            d41 : if true then if true then Bool else Bool else if false then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if p40 then true else true ) ) ) $ ( if p30 then d35 else true )
            d43 : ( ( Set -> Set ) ∋ ( ( λ x450 -> if true then Bool else x450 ) ) ) $ ( if true then Bool else Bool )
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if d5 then false else d11 ) ) ) $ ( if d27 then p30 else d12 )
            d46 : if true then if true then Bool else Bool else if true then Bool else Bool
            d46 = if if p20 then false else d11 then if d11 then false else p10 else if p40 then d24 else true
            d47 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d47 = if if false then p10 else true then if p10 then true else p10 else if true then d27 else d22
            d49 : if false then if true then Bool else Bool else if false then Bool else Bool
            d49 = if if p10 then p20 else d38 then if d33 then p30 else false else if p20 then d30 else p20
            d50 : if true then if false then Bool else Bool else if true then Bool else Bool
            d50 = if if p40 then p30 else d38 then if d30 then d35 else d8 else if p20 then p10 else d49
            d51 : if false then if true then Bool else Bool else if false then Bool else Bool
            d51 = if if true then p20 else false then if d27 then d41 else false else if false then true else false
            d52 : if true then if true then Bool else Bool else if false then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if x530 then p30 else true ) ) ) $ ( if p10 then p10 else true )
            d54 : if true then if false then Bool else Bool else if false then Bool else Bool
            d54 = if if false then d46 else true then if false then false else p30 else if d5 then d41 else p10
            d55 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> Bool ) ) ) $ ( x570 ) ) ) ) $ ( if true then Bool else Bool )
            d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if d47 then false else true ) ) ) $ ( if true then d50 else d43 )
            d59 : ( ( Set -> Set ) ∋ ( ( λ x610 -> ( ( Set -> Set ) ∋ ( ( λ x620 -> x610 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if false then true else p40 ) ) ) $ ( if d43 then false else d15 )
            d63 : if false then if true then Bool else Bool else if true then Bool else Bool
            d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if true then p30 else p20 ) ) ) $ ( if p20 then d46 else true )
            d65 : ( ( Set -> Set ) ∋ ( ( λ x670 -> if true then x670 else Bool ) ) ) $ ( if false then Bool else Bool )
            d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if d54 then d33 else p10 ) ) ) $ ( if false then p10 else p40 )
            d68 : if true then if true then Bool else Bool else if true then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> false ) ) ) $ ( p30 ) ) ) ) $ ( if true then false else d38 )
            d71 : if true then if true then Bool else Bool else if false then Bool else Bool
            d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> p30 ) ) ) $ ( false ) ) ) ) $ ( if p10 then p40 else p40 )
            d74 : ( ( Set -> Set ) ∋ ( ( λ x750 -> if true then Bool else x750 ) ) ) $ ( if false then Bool else Bool )
            d74 = if if d50 then true else p40 then if p10 then d50 else true else if p40 then d65 else p30
            d76 : if true then if false then Bool else Bool else if true then Bool else Bool
            d76 = if if d43 then d35 else false then if p30 then p40 else d68 else if p10 then p20 else d8
            d77 : ( ( Set -> Set ) ∋ ( ( λ x800 -> if true then x800 else Bool ) ) ) $ ( if false then Bool else Bool )
            d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d71 ) ) ) $ ( x780 ) ) ) ) $ ( if false then false else false )
            d81 : if true then if false then Bool else Bool else if true then Bool else Bool
            d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( ( Bool -> Bool ) ∋ ( ( λ x830 -> false ) ) ) $ ( false ) ) ) ) $ ( if p30 then false else d55 )
            d84 : if true then if false then Bool else Bool else if true then Bool else Bool
            d84 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if p40 then p40 else false ) ) ) $ ( if d59 then p30 else p40 )
            d86 : if true then if true then Bool else Bool else if true then Bool else Bool
            d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if d84 then p10 else p10 ) ) ) $ ( if p40 then d8 else p10 )
            d88 : if true then if false then Bool else Bool else if true then Bool else Bool
            d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if true then true else false ) ) ) $ ( if d55 then d74 else true )
            d90 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then x910 else x910 ) ) ) $ ( if true then Bool else Bool )
            d90 = if if p20 then true else true then if false then d63 else p40 else if true then d86 else d35
            d92 : ( ( Set -> Set ) ∋ ( ( λ x930 -> if false then Bool else x930 ) ) ) $ ( if false then Bool else Bool )
            d92 = if if d71 then p40 else false then if true then d77 else false else if false then p30 else d41
            d94 : ( ( Set -> Set ) ∋ ( ( λ x970 -> ( ( Set -> Set ) ∋ ( ( λ x980 -> x980 ) ) ) $ ( x970 ) ) ) ) $ ( if false then Bool else Bool )
            d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> p20 ) ) ) $ ( false ) ) ) ) $ ( if p20 then d24 else p20 )
        module M1'  = M1 ( if false then p20 else p10 ) 
    d99 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d99 = if if false then false else true then if false then false else false else if false then true else false
    d101 : if false then if false then Bool else Bool else if true then Bool else Bool
    d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> x1020 ) ) ) $ ( false ) ) ) ) $ ( if d99 then false else true )
    d104 : if true then if true then Bool else Bool else if true then Bool else Bool
    d104 = if if false then false else d99 then if false then d99 else true else if true then false else d101
    d105 : if true then if false then Bool else Bool else if true then Bool else Bool
    d105 = ( ( ( M.M1'.d50 ) $ ( if d104 then true else true ) ) $ ( if d99 then d104 else d99 ) ) $ ( if d99 then true else false )
    d106 : if true then if false then Bool else Bool else if false then Bool else Bool
    d106 = ( ( ( M.M1'.d33 ) $ ( if true then true else d99 ) ) $ ( if true then false else false ) ) $ ( if true then d105 else d101 )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x1080 -> if false then x1080 else x1080 ) ) ) $ ( if false then Bool else Bool )
    d107 = if if false then true else d101 then if d101 then true else d105 else if d105 then true else true
    d109 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then x1100 else Bool ) ) ) $ ( if true then Bool else Bool )
    d109 = ( ( ( M.M1'.d5 ) $ ( if true then false else true ) ) $ ( if true then false else d106 ) ) $ ( if true then d104 else true )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x1120 -> ( ( Set -> Set ) ∋ ( ( λ x1130 -> x1120 ) ) ) $ ( x1120 ) ) ) ) $ ( if false then Bool else Bool )
    d111 = if if d101 then d101 else false then if d107 then true else false else if d104 then d107 else true
    d114 : if true then if false then Bool else Bool else if true then Bool else Bool
    d114 = if if false then d104 else d105 then if false then false else true else if true then false else d99
    d115 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> Bool ) ) ) $ ( x1170 ) ) ) ) $ ( if true then Bool else Bool )
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> if x1160 then d101 else true ) ) ) $ ( if false then false else false )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if true then Bool else x1200 ) ) ) $ ( if true then Bool else Bool )
    d119 = if if false then true else true then if d105 then d111 else d109 else if d99 then false else d111
    d121 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> ( ( Set -> Set ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d121 = ( ( ( M.M1'.d24 ) $ ( if d109 then d109 else d119 ) ) $ ( if true then d115 else false ) ) $ ( if false then d111 else true )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> x1250 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d124 = ( ( ( ( M.M1.d68 ) $ ( false ) ) $ ( false ) ) $ ( true ) ) $ ( d119 )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> Bool ) ) ) $ ( x1280 ) ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( ( M.M1'.d54 ) $ ( if d106 then false else d104 ) ) $ ( if true then true else false ) ) $ ( if true then true else d115 )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1310 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( ( M.M1'.d22 ) $ ( if d114 then d119 else d105 ) ) $ ( if false then false else true ) ) $ ( if d107 then false else d99 )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x1340 -> ( ( Set -> Set ) ∋ ( ( λ x1350 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d133 = ( ( ( ( M.M1.d55 ) $ ( d115 ) ) $ ( d104 ) ) $ ( true ) ) $ ( true )
    d136 : if false then if true then Bool else Bool else if true then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> if false then x1370 else x1370 ) ) ) $ ( if true then d101 else d119 )
    d138 : if true then if true then Bool else Bool else if false then Bool else Bool
    d138 = if if false then true else false then if true then d107 else false else if true then d99 else true
    d139 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> x1400 ) ) ) $ ( x1400 ) ) ) ) $ ( if false then Bool else Bool )
    d139 = if if false then true else true then if d115 then true else false else if true then true else d136
    d142 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if true then x1440 else Bool ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> ( ( ( M.M1'.d52 ) $ ( x1430 ) ) $ ( true ) ) $ ( false ) ) ) ) $ ( if d127 then d130 else true )
    d145 : if true then if true then Bool else Bool else if true then Bool else Bool
    d145 = ( ( ( ( M.M1.d17 ) $ ( false ) ) $ ( false ) ) $ ( d105 ) ) $ ( false )
    d146 : if true then if false then Bool else Bool else if false then Bool else Bool
    d146 = if if d109 then d121 else d136 then if d106 then true else true else if true then d119 else true
    d147 : if true then if true then Bool else Bool else if false then Bool else Bool
    d147 = ( ( ( M.M1'.d33 ) $ ( if d133 then true else false ) ) $ ( if false then false else false ) ) $ ( if false then false else false )
    d148 : if true then if true then Bool else Bool else if true then Bool else Bool
    d148 = ( ( ( M.M1'.d10 ) $ ( if d142 then true else d105 ) ) $ ( if false then d104 else true ) ) $ ( if true then d146 else d136 )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d149 = if if false then false else d130 then if d124 then false else true else if d142 then true else d107
    d151 : if false then if false then Bool else Bool else if true then Bool else Bool
    d151 = ( ( ( M.M1'.d37 ) $ ( if true then d145 else d114 ) ) $ ( if d111 then false else true ) ) $ ( if false then d115 else d121 )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> if false then Bool else x1530 ) ) ) $ ( if true then Bool else Bool )
    d152 = ( ( ( ( M.M1.d8 ) $ ( d111 ) ) $ ( d104 ) ) $ ( true ) ) $ ( true )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> if false then x1550 else Bool ) ) ) $ ( if true then Bool else Bool )
    d154 = if if true then false else d119 then if d115 then d136 else false else if true then d152 else false
    d156 : ( ( Set -> Set ) ∋ ( ( λ x1570 -> ( ( Set -> Set ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( x1570 ) ) ) ) $ ( if false then Bool else Bool )
    d156 = ( ( ( M.M1'.d71 ) $ ( if d152 then true else d109 ) ) $ ( if true then d111 else d138 ) ) $ ( if d147 then d114 else d121 )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x1600 -> ( ( Set -> Set ) ∋ ( ( λ x1610 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d159 = ( ( ( ( M.M1.d33 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( false )
    d162 : if false then if false then Bool else Bool else if false then Bool else Bool
    d162 = ( ( ( M.M1'.d77 ) $ ( if false then d111 else d124 ) ) $ ( if d142 then d146 else false ) ) $ ( if false then d148 else d156 )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> if false then Bool else x1650 ) ) ) $ ( if false then Bool else Bool )
    d163 = ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> ( ( ( M.M1'.d65 ) $ ( d149 ) ) $ ( false ) ) $ ( x1640 ) ) ) ) $ ( if false then d159 else d147 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> if true then x1670 else Bool ) ) ) $ ( if false then Bool else Bool )
    d166 = ( ( ( M.M1'.d84 ) $ ( if false then d109 else d136 ) ) $ ( if d156 then d146 else d115 ) ) $ ( if false then d106 else d151 )
    d168 : if true then if false then Bool else Bool else if true then Bool else Bool
    d168 = ( ( ( M.M1'.d59 ) $ ( if d133 then false else false ) ) $ ( if d162 then true else true ) ) $ ( if d145 then d119 else d101 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> if false then x1700 else x1700 ) ) ) $ ( if false then Bool else Bool )
    d169 = ( ( ( ( M.M1.d63 ) $ ( false ) ) $ ( d136 ) ) $ ( d105 ) ) $ ( d99 )
    d171 : if true then if true then Bool else Bool else if false then Bool else Bool
    d171 = ( ( ( M.M1'.d52 ) $ ( if d168 then true else true ) ) $ ( if true then d148 else true ) ) $ ( if true then d114 else d130 )
    d172 : if true then if true then Bool else Bool else if false then Bool else Bool
    d172 = ( ( ( M.M1'.d92 ) $ ( if d154 then d115 else false ) ) $ ( if false then true else true ) ) $ ( if false then false else d115 )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> ( ( Set -> Set ) ∋ ( ( λ x1750 -> x1750 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( ( M.M1'.d86 ) $ ( if d169 then d119 else d109 ) ) $ ( if true then d149 else d136 ) ) $ ( if d101 then d130 else true )
    d176 : if false then if false then Bool else Bool else if false then Bool else Bool
    d176 = ( ( ( M.M1'.d63 ) $ ( if d172 then true else true ) ) $ ( if d114 then d149 else false ) ) $ ( if false then d124 else d133 )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x1780 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d177 = ( ( ( M.M1'.d74 ) $ ( if false then true else d142 ) ) $ ( if d152 then false else d156 ) ) $ ( if false then false else d151 )
    d179 : if true then if false then Bool else Bool else if true then Bool else Bool
    d179 = if if d168 then false else d111 then if false then false else d172 else if false then true else false
    d180 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> ( ( Set -> Set ) ∋ ( ( λ x1820 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d180 = if if false then d171 else false then if true then true else d173 else if d148 then true else true
    d183 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> ( ( Set -> Set ) ∋ ( ( λ x1850 -> x1850 ) ) ) $ ( x1840 ) ) ) ) $ ( if true then Bool else Bool )
    d183 = ( ( ( ( M.M1.d47 ) $ ( d168 ) ) $ ( d115 ) ) $ ( d145 ) ) $ ( d130 )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> if true then x1880 else Bool ) ) ) $ ( if false then Bool else Bool )
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> if d148 then false else d177 ) ) ) $ ( if d146 then true else d146 )
    d189 : if false then if true then Bool else Bool else if true then Bool else Bool
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x1900 -> ( ( ( M.M1'.d92 ) $ ( x1900 ) ) $ ( true ) ) $ ( false ) ) ) ) $ ( if d133 then d176 else d105 )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> ( ( Set -> Set ) ∋ ( ( λ x1930 -> Bool ) ) ) $ ( x1920 ) ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( ( ( M.M1.d71 ) $ ( d169 ) ) $ ( false ) ) $ ( d166 ) ) $ ( d107 )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> ( ( Set -> Set ) ∋ ( ( λ x1970 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> ( ( ( ( M.M1.d24 ) $ ( true ) ) $ ( x1950 ) ) $ ( x1950 ) ) $ ( false ) ) ) ) $ ( if false then false else false )
    d198 : if true then if false then Bool else Bool else if true then Bool else Bool
    d198 = ( ( ( M.M1'.d71 ) $ ( if true then true else false ) ) $ ( if d121 then d145 else d146 ) ) $ ( if true then d162 else false )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> if false then x2000 else Bool ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( ( M.M1'.d71 ) $ ( if true then d176 else d152 ) ) $ ( if false then d198 else true ) ) $ ( if false then d169 else d189 )
    d201 : if false then if false then Bool else Bool else if false then Bool else Bool
    d201 = ( ( ( ( M.M1.d41 ) $ ( d173 ) ) $ ( d101 ) ) $ ( false ) ) $ ( false )