module ModArg10Test10  where
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

    module M ( p10 : if false then Bool else Bool ) ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        module M1 ( p40 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then Bool else x50 ) ) ) $ ( Bool ) ) ( p60 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
            d8 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if true then x90 else Bool ) ) ) $ ( if false then Bool else Bool )
            d8 = if if p60 then p60 else p60 then if true then p20 else true else if p10 then p60 else p40
            d10 : if false then if true then Bool else Bool else if false then Bool else Bool
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if true then x110 else d8 ) ) ) $ ( if d8 then d8 else d8 )
            d12 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> false ) ) ) $ ( d10 ) ) ) ) $ ( if true then p40 else p40 )
            d17 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if false then Bool else x180 ) ) ) $ ( if true then Bool else Bool )
            d17 = if if false then p40 else d10 then if d8 then false else p40 else if d12 then p20 else false
            d19 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> x210 ) ) ) $ ( x200 ) ) ) ) $ ( if false then Bool else Bool )
            d19 = if if false then d17 else true then if false then p10 else false else if false then false else d12
            d22 : if false then if true then Bool else Bool else if true then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> false ) ) ) $ ( true ) ) ) ) $ ( if d17 then p10 else p10 )
            d25 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> x270 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if false then false else true ) ) ) $ ( if p20 then d22 else p60 )
            d29 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if true then x300 else x300 ) ) ) $ ( if true then Bool else Bool )
            d29 = if if false then d22 else false then if d10 then p40 else p10 else if d17 then d12 else d22
            d31 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if true then x330 else Bool ) ) ) $ ( if true then Bool else Bool )
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if true then false else true ) ) ) $ ( if true then d25 else d10 )
            d34 : if false then if false then Bool else Bool else if false then Bool else Bool
            d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if true then x350 else true ) ) ) $ ( if true then false else d19 )
            d36 : ( ( Set -> Set ) ∋ ( ( λ x370 -> ( ( Set -> Set ) ∋ ( ( λ x380 -> Bool ) ) ) $ ( x370 ) ) ) ) $ ( if true then Bool else Bool )
            d36 = if if true then d12 else d31 then if p20 then false else p60 else if false then p60 else d19
            d39 : if true then if true then Bool else Bool else if false then Bool else Bool
            d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if p40 then d8 else x400 ) ) ) $ ( if d12 then true else false )
            d41 : ( ( Set -> Set ) ∋ ( ( λ x420 -> if false then x420 else x420 ) ) ) $ ( if false then Bool else Bool )
            d41 = if if d12 then true else d34 then if p40 then true else p40 else if true then false else p10
            d43 : ( ( Set -> Set ) ∋ ( ( λ x440 -> if false then Bool else x440 ) ) ) $ ( if false then Bool else Bool )
            d43 = if if p10 then d34 else d41 then if d10 then p40 else p10 else if true then false else p10
            d45 : if false then if true then Bool else Bool else if false then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if p60 then true else d36 ) ) ) $ ( if p60 then false else p60 )
            d47 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then Bool else x480 ) ) ) $ ( if true then Bool else Bool )
            d47 = if if true then p40 else true then if true then p40 else p40 else if false then false else false
            d49 : if false then if false then Bool else Bool else if true then Bool else Bool
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> d47 ) ) ) $ ( d47 ) ) ) ) $ ( if d12 then d41 else true )
            d52 : ( ( Set -> Set ) ∋ ( ( λ x540 -> ( ( Set -> Set ) ∋ ( ( λ x550 -> Bool ) ) ) $ ( x540 ) ) ) ) $ ( if false then Bool else Bool )
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if d22 then p20 else true ) ) ) $ ( if p40 then d19 else d12 )
            d56 : if false then if true then Bool else Bool else if false then Bool else Bool
            d56 = if if false then false else d22 then if d31 then d39 else false else if p20 then true else d12
            d57 : ( ( Set -> Set ) ∋ ( ( λ x580 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d57 = if if p10 then false else d43 then if p40 then false else true else if d25 then false else true
            d59 : if false then if true then Bool else Bool else if false then Bool else Bool
            d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d39 ) ) ) $ ( x600 ) ) ) ) $ ( if d31 then true else d49 )
            d62 : if true then if true then Bool else Bool else if true then Bool else Bool
            d62 = if if p20 then true else d49 then if false then d17 else true else if p20 then false else p10
            d63 : if true then if false then Bool else Bool else if false then Bool else Bool
            d63 = if if p60 then d52 else p60 then if p20 then false else p60 else if p60 then false else false
            d64 : if false then if false then Bool else Bool else if true then Bool else Bool
            d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> false ) ) ) $ ( d12 ) ) ) ) $ ( if false then false else d57 )
            d67 : if false then if false then Bool else Bool else if true then Bool else Bool
            d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if p20 then p40 else d41 ) ) ) $ ( if true then d31 else d29 )
            d69 : if true then if false then Bool else Bool else if false then Bool else Bool
            d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> p40 ) ) ) $ ( false ) ) ) ) $ ( if d39 then p10 else p60 )
            d72 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if true then x730 else x730 ) ) ) $ ( if true then Bool else Bool )
            d72 = if if d8 then d57 else d39 then if p10 then d8 else p10 else if d64 then true else d59
            d74 : if false then if true then Bool else Bool else if false then Bool else Bool
            d74 = if if false then p10 else d45 then if true then d31 else d39 else if d17 then false else d25
            d75 : ( ( Set -> Set ) ∋ ( ( λ x780 -> ( ( Set -> Set ) ∋ ( ( λ x790 -> Bool ) ) ) $ ( x780 ) ) ) ) $ ( if false then Bool else Bool )
            d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d41 ) ) ) $ ( p60 ) ) ) ) $ ( if true then p20 else true )
            d80 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x830 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> if x810 then d10 else d59 ) ) ) $ ( if d34 then false else d41 )
            d84 : if true then if true then Bool else Bool else if true then Bool else Bool
            d84 = if if p60 then false else true then if true then false else false else if d31 then p40 else d43
            d85 : if true then if false then Bool else Bool else if false then Bool else Bool
            d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> ( ( Bool -> Bool ) ∋ ( ( λ x870 -> d17 ) ) ) $ ( p60 ) ) ) ) $ ( if true then d72 else true )
            d88 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> x890 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d88 = if if d19 then p20 else false then if true then false else d25 else if d17 then p10 else p60
            d91 : ( ( Set -> Set ) ∋ ( ( λ x920 -> if true then x920 else x920 ) ) ) $ ( if true then Bool else Bool )
            d91 = if if d34 then false else p60 then if p20 then p40 else false else if d56 then p20 else true
            d93 : ( ( Set -> Set ) ∋ ( ( λ x950 -> if false then x950 else x950 ) ) ) $ ( if false then Bool else Bool )
            d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if d43 then p20 else true ) ) ) $ ( if true then d67 else p20 )
            d96 : ( ( Set -> Set ) ∋ ( ( λ x990 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> x990 ) ) ) $ ( x990 ) ) ) ) $ ( if true then Bool else Bool )
            d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( Bool -> Bool ) ∋ ( ( λ x980 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then p40 else d69 )
            d101 : if true then if true then Bool else Bool else if false then Bool else Bool
            d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if false then false else d31 ) ) ) $ ( if p20 then p20 else p10 )
            d103 : if false then if true then Bool else Bool else if true then Bool else Bool
            d103 = if if true then d74 else p60 then if p20 then d101 else true else if false then false else d69
            d104 : if false then if false then Bool else Bool else if true then Bool else Bool
            d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if d69 then d17 else d59 ) ) ) $ ( if p60 then d56 else d84 )
            d106 : if false then if true then Bool else Bool else if true then Bool else Bool
            d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> if p40 then d17 else p20 ) ) ) $ ( if true then true else false )
        module M1'  = M1 ( if true then p20 else p20 ) 
    d108 : ( ( Set -> Set ) ∋ ( ( λ x1090 -> ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d108 = if if false then true else false then if false then true else false else if true then false else true
    d111 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> if false then x1130 else x1130 ) ) ) $ ( if true then Bool else Bool )
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( ( ( M.M1.d41 ) $ ( d108 ) ) $ ( false ) ) $ ( x1120 ) ) $ ( true ) ) ) ) $ ( if true then d108 else false )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x1150 -> ( ( Set -> Set ) ∋ ( ( λ x1160 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d114 = ( ( ( M.M1'.d93 ) $ ( if d108 then true else d111 ) ) $ ( if true then true else d111 ) ) $ ( if d108 then false else true )
    d117 : if false then if true then Bool else Bool else if true then Bool else Bool
    d117 = ( ( ( M.M1'.d63 ) $ ( if true then d111 else true ) ) $ ( if true then d108 else d114 ) ) $ ( if d114 then true else d111 )
    d118 : if false then if true then Bool else Bool else if false then Bool else Bool
    d118 = ( ( ( ( M.M1.d12 ) $ ( false ) ) $ ( false ) ) $ ( d111 ) ) $ ( false )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if true then x1200 else x1200 ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( ( M.M1'.d101 ) $ ( if false then d114 else d108 ) ) $ ( if d114 then d111 else true ) ) $ ( if true then d108 else false )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x1220 -> if false then x1220 else Bool ) ) ) $ ( if false then Bool else Bool )
    d121 = ( ( ( M.M1'.d74 ) $ ( if d114 then true else d111 ) ) $ ( if true then d114 else false ) ) $ ( if d119 then d119 else true )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> x1260 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if x1240 then d111 else x1240 ) ) ) $ ( if d118 then false else d119 )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> if false then x1280 else Bool ) ) ) $ ( if false then Bool else Bool )
    d127 = if if d121 then d123 else d117 then if true then d121 else d121 else if d118 then false else d111
    d129 : if true then if false then Bool else Bool else if true then Bool else Bool
    d129 = if if d108 then false else true then if d123 then d111 else false else if true then d111 else d127
    d130 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1310 ) ) ) $ ( x1310 ) ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( ( ( M.M1.d36 ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( d108 )
    d133 : if false then if false then Bool else Bool else if true then Bool else Bool
    d133 = ( ( ( M.M1'.d49 ) $ ( if d114 then d129 else true ) ) $ ( if d121 then false else true ) ) $ ( if d111 then true else d127 )
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> ( ( ( ( M.M1.d8 ) $ ( x1350 ) ) $ ( x1350 ) ) $ ( x1350 ) ) $ ( true ) ) ) ) $ ( if d121 then false else true )
    d136 : ( ( Set -> Set ) ∋ ( ( λ x1370 -> ( ( Set -> Set ) ∋ ( ( λ x1380 -> x1380 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d136 = if if false then true else d134 then if false then d114 else false else if true then true else d133
    d139 : if true then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( ( M.M1'.d96 ) $ ( if false then false else d111 ) ) $ ( if true then d121 else d130 ) ) $ ( if true then d133 else d130 )
    d140 : if true then if false then Bool else Bool else if false then Bool else Bool
    d140 = if if d130 then d108 else false then if true then true else false else if true then true else true
    d141 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> ( ( Set -> Set ) ∋ ( ( λ x1430 -> x1420 ) ) ) $ ( x1420 ) ) ) ) $ ( if true then Bool else Bool )
    d141 = ( ( ( ( M.M1.d59 ) $ ( true ) ) $ ( true ) ) $ ( d111 ) ) $ ( d133 )
    d144 : if false then if false then Bool else Bool else if false then Bool else Bool
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> ( ( ( M.M1'.d74 ) $ ( false ) ) $ ( true ) ) $ ( x1450 ) ) ) ) $ ( if d136 then d118 else true )
    d146 : if true then if false then Bool else Bool else if true then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> ( ( ( M.M1'.d10 ) $ ( x1470 ) ) $ ( x1470 ) ) $ ( d139 ) ) ) ) $ ( if true then false else false )
    d148 : if false then if false then Bool else Bool else if true then Bool else Bool
    d148 = if if d117 then false else d141 then if true then true else d114 else if d146 then false else d111
    d149 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> if false then x1500 else x1500 ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( ( ( M.M1.d10 ) $ ( false ) ) $ ( false ) ) $ ( d139 ) ) $ ( true )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> ( ( Set -> Set ) ∋ ( ( λ x1530 -> x1520 ) ) ) $ ( x1520 ) ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( ( M.M1'.d85 ) $ ( if d130 then d148 else false ) ) $ ( if false then d129 else d134 ) ) $ ( if d144 then true else true )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( ( M.M1'.d69 ) $ ( d121 ) ) $ ( true ) ) $ ( x1550 ) ) ) ) $ ( if d117 then d111 else true )
    d158 : if true then if false then Bool else Bool else if true then Bool else Bool
    d158 = ( ( ( ( M.M1.d80 ) $ ( d121 ) ) $ ( d119 ) ) $ ( d139 ) ) $ ( d114 )
    d159 : if false then if false then Bool else Bool else if false then Bool else Bool
    d159 = if if true then false else true then if true then false else false else if d118 then d141 else true
    d160 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> ( ( Set -> Set ) ∋ ( ( λ x1620 -> x1610 ) ) ) $ ( x1610 ) ) ) ) $ ( if false then Bool else Bool )
    d160 = ( ( ( M.M1'.d57 ) $ ( if true then d140 else d129 ) ) $ ( if d146 then false else d136 ) ) $ ( if d129 then d119 else d118 )
    d163 : if true then if false then Bool else Bool else if true then Bool else Bool
    d163 = ( ( ( M.M1'.d29 ) $ ( if d130 then true else d129 ) ) $ ( if d160 then false else true ) ) $ ( if true then d136 else true )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x1650 -> ( ( Set -> Set ) ∋ ( ( λ x1660 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( ( M.M1'.d25 ) $ ( if true then d141 else false ) ) $ ( if d149 then true else d121 ) ) $ ( if d163 then d141 else false )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d167 = if if d164 then true else d111 then if d121 then d130 else true else if d154 then false else d149
    d169 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> if false then Bool else x1720 ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> false ) ) ) $ ( x1700 ) ) ) ) $ ( if d151 then true else true )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> ( ( Set -> Set ) ∋ ( ( λ x1760 -> Bool ) ) ) $ ( x1750 ) ) ) ) $ ( if true then Bool else Bool )
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x1740 -> ( ( ( M.M1'.d85 ) $ ( true ) ) $ ( true ) ) $ ( x1740 ) ) ) ) $ ( if d169 then d134 else d119 )
    d177 : ( ( Set -> Set ) ∋ ( ( λ x1800 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> d148 ) ) ) $ ( true ) ) ) ) $ ( if d123 then false else d159 )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then x1820 else x1820 ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( ( ( M.M1.d64 ) $ ( false ) ) $ ( false ) ) $ ( d130 ) ) $ ( true )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x1840 -> if true then x1840 else x1840 ) ) ) $ ( if true then Bool else Bool )
    d183 = ( ( ( ( M.M1.d91 ) $ ( false ) ) $ ( true ) ) $ ( d159 ) ) $ ( d118 )
    d185 : if false then if false then Bool else Bool else if true then Bool else Bool
    d185 = ( ( ( M.M1'.d22 ) $ ( if true then false else false ) ) $ ( if d129 then true else d129 ) ) $ ( if true then true else d148 )
    d186 : if false then if false then Bool else Bool else if false then Bool else Bool
    d186 = ( ( ( ( M.M1.d56 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( d140 )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( x1890 ) ) ) ) $ ( if false then Bool else Bool )
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( ( M.M1'.d25 ) $ ( true ) ) $ ( false ) ) $ ( x1880 ) ) ) ) $ ( if false then false else d127 )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( ( M.M1'.d62 ) $ ( if d133 then d134 else true ) ) $ ( if true then true else d134 ) ) $ ( if true then d169 else true )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> ( ( Set -> Set ) ∋ ( ( λ x1950 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d193 = ( ( ( ( M.M1.d59 ) $ ( false ) ) $ ( true ) ) $ ( d169 ) ) $ ( false )
    d196 : if false then if false then Bool else Bool else if false then Bool else Bool
    d196 = ( ( ( M.M1'.d25 ) $ ( if false then false else d181 ) ) $ ( if d140 then d169 else d119 ) ) $ ( if false then true else false )
    d197 : if true then if true then Bool else Bool else if false then Bool else Bool
    d197 = ( ( ( M.M1'.d63 ) $ ( if d181 then false else d158 ) ) $ ( if false then d169 else false ) ) $ ( if false then d185 else true )
    d198 : if true then if false then Bool else Bool else if true then Bool else Bool
    d198 = ( ( ( M.M1'.d10 ) $ ( if d121 then d169 else false ) ) $ ( if d149 then false else true ) ) $ ( if false then d197 else d139 )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> ( ( Set -> Set ) ∋ ( ( λ x2020 -> x2020 ) ) ) $ ( x2010 ) ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> if false then d117 else d123 ) ) ) $ ( if false then false else d167 )
    d203 : if false then if false then Bool else Bool else if false then Bool else Bool
    d203 = ( ( Bool -> Bool ) ∋ ( ( λ x2040 -> if true then d193 else x2040 ) ) ) $ ( if true then false else d144 )
    d205 : ( ( Set -> Set ) ∋ ( ( λ x2060 -> ( ( Set -> Set ) ∋ ( ( λ x2070 -> x2070 ) ) ) $ ( x2060 ) ) ) ) $ ( if true then Bool else Bool )
    d205 = ( ( ( M.M1'.d29 ) $ ( if true then d123 else d191 ) ) $ ( if true then false else true ) ) $ ( if d119 then d140 else true )
    d208 : if false then if true then Bool else Bool else if true then Bool else Bool
    d208 = ( ( ( M.M1'.d19 ) $ ( if true then d108 else d158 ) ) $ ( if d151 then true else false ) ) $ ( if true then d149 else d117 )
    d209 : if true then if true then Bool else Bool else if false then Bool else Bool
    d209 = ( ( ( M.M1'.d63 ) $ ( if false then d173 else d140 ) ) $ ( if d136 then false else true ) ) $ ( if d108 then true else d139 )
    d210 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d210 = ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> x2110 ) ) ) $ ( d118 ) ) ) ) $ ( if d193 then false else true )
    d214 : if false then if false then Bool else Bool else if false then Bool else Bool
    d214 = if if false then d133 else true then if d119 then false else d144 else if d119 then true else d144
    d215 : if true then if false then Bool else Bool else if false then Bool else Bool
    d215 = ( ( ( ( M.M1.d12 ) $ ( d114 ) ) $ ( true ) ) $ ( d149 ) ) $ ( d127 )