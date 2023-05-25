module TypeSize15Test15  where
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
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if true then Bool else x30 ) ) ) $ ( Bool ) )  where
            d4 : if true then if true then Bool else Bool else if true then Bool else Bool
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> false ) ) ) $ ( p10 ) ) ) ) $ ( if true then p20 else false )
            d7 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if true then x80 else x80 ) ) ) $ ( if true then Bool else Bool )
            d7 = if if false then d4 else d4 then if true then d4 else p10 else if false then p10 else false
            d9 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> x100 ) ) ) $ ( x100 ) ) ) ) $ ( if true then Bool else Bool )
            d9 = if if d4 then d7 else p10 then if true then true else false else if p10 then d4 else p10
            d12 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( x130 ) ) ) ) $ ( if false then Bool else Bool )
            d12 = if if d4 then false else false then if d9 then true else false else if p10 then d4 else d7
            d15 : if true then if false then Bool else Bool else if true then Bool else Bool
            d15 = if if p10 then d9 else d12 then if d9 then p20 else d9 else if true then d12 else p20
            d16 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then x170 else x170 ) ) ) $ ( if false then Bool else Bool )
            d16 = if if d15 then d4 else false then if true then p10 else d12 else if true then false else false
            d18 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x190 ) ) ) $ ( x190 ) ) ) ) $ ( if true then Bool else Bool )
            d18 = if if d4 then true else false then if p10 then false else p10 else if false then p20 else d7
            d21 : if true then if true then Bool else Bool else if true then Bool else Bool
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d7 then p10 else p10 ) ) ) $ ( if d4 then d16 else false )
            d23 : ( ( Set -> Set ) ∋ ( ( λ x240 -> if false then Bool else x240 ) ) ) $ ( if false then Bool else Bool )
            d23 = if if false then d7 else p10 then if d4 then p10 else true else if d16 then true else d21
            d25 : if false then if true then Bool else Bool else if true then Bool else Bool
            d25 = if if p20 then p20 else d18 then if p10 then d7 else p10 else if false then p20 else true
            d26 : ( ( Set -> Set ) ∋ ( ( λ x270 -> if false then x270 else x270 ) ) ) $ ( if false then Bool else Bool )
            d26 = if if false then p20 else false then if d23 then d18 else d9 else if d23 then true else p20
            d28 : ( ( Set -> Set ) ∋ ( ( λ x290 -> ( ( Set -> Set ) ∋ ( ( λ x300 -> Bool ) ) ) $ ( x290 ) ) ) ) $ ( if true then Bool else Bool )
            d28 = if if false then false else p20 then if true then true else d18 else if p10 then true else p10
            d31 : if true then if true then Bool else Bool else if true then Bool else Bool
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> false ) ) ) $ ( p10 ) ) ) ) $ ( if true then p20 else p20 )
            d34 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( x350 ) ) ) ) $ ( if false then Bool else Bool )
            d34 = if if p20 then true else d4 then if p10 then p10 else d7 else if true then d16 else p20
            d37 : ( ( Set -> Set ) ∋ ( ( λ x390 -> ( ( Set -> Set ) ∋ ( ( λ x400 -> Bool ) ) ) $ ( x390 ) ) ) ) $ ( if false then Bool else Bool )
            d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if d31 then x380 else d28 ) ) ) $ ( if p10 then d26 else d28 )
            d41 : if false then if true then Bool else Bool else if false then Bool else Bool
            d41 = if if p20 then p10 else p20 then if false then p10 else d34 else if d7 then d23 else d16
            d42 : if true then if false then Bool else Bool else if false then Bool else Bool
            d42 = if if d31 then true else true then if d28 then false else d23 else if true then p20 else true
            d43 : if true then if true then Bool else Bool else if true then Bool else Bool
            d43 = if if p10 then p20 else p20 then if p20 then d7 else d16 else if p10 then d23 else true
            d44 : if false then if true then Bool else Bool else if true then Bool else Bool
            d44 = if if p20 then d7 else p20 then if true then false else d37 else if p20 then true else true
            d45 : if true then if false then Bool else Bool else if true then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d15 ) ) ) $ ( d43 ) ) ) ) $ ( if p10 then p20 else p20 )
            d48 : ( ( Set -> Set ) ∋ ( ( λ x490 -> ( ( Set -> Set ) ∋ ( ( λ x500 -> x490 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d48 = if if p10 then false else p10 then if p10 then false else p10 else if p10 then d9 else false
            d51 : if false then if true then Bool else Bool else if true then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> true ) ) ) $ ( x520 ) ) ) ) $ ( if false then d18 else p10 )
            d54 : if false then if true then Bool else Bool else if true then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if false then false else true ) ) ) $ ( if true then d18 else p20 )
            d56 : if true then if false then Bool else Bool else if false then Bool else Bool
            d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if p20 then false else p20 ) ) ) $ ( if p20 then p20 else d26 )
            d58 : ( ( Set -> Set ) ∋ ( ( λ x610 -> ( ( Set -> Set ) ∋ ( ( λ x620 -> Bool ) ) ) $ ( x610 ) ) ) ) $ ( if false then Bool else Bool )
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> d56 ) ) ) $ ( p10 ) ) ) ) $ ( if d37 then d9 else false )
            d63 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( x640 ) ) ) ) $ ( if false then Bool else Bool )
            d63 = if if d12 then p10 else true then if p10 then d4 else d45 else if p20 then d34 else p10
            d66 : if false then if false then Bool else Bool else if true then Bool else Bool
            d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if true then x670 else x670 ) ) ) $ ( if p10 then false else d4 )
            d68 : if true then if true then Bool else Bool else if false then Bool else Bool
            d68 = if if p20 then p10 else p10 then if false then true else false else if false then d43 else false
            d69 : ( ( Set -> Set ) ∋ ( ( λ x710 -> if true then x710 else Bool ) ) ) $ ( if true then Bool else Bool )
            d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if true then x700 else x700 ) ) ) $ ( if d9 then p10 else p10 )
            d72 : ( ( Set -> Set ) ∋ ( ( λ x730 -> if true then x730 else x730 ) ) ) $ ( if true then Bool else Bool )
            d72 = if if p20 then true else p10 then if p20 then d23 else d41 else if p20 then p20 else d16
            d74 : if false then if true then Bool else Bool else if true then Bool else Bool
            d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> d41 ) ) ) $ ( p10 ) ) ) ) $ ( if p20 then false else d34 )
            d77 : ( ( Set -> Set ) ∋ ( ( λ x800 -> ( ( Set -> Set ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( x800 ) ) ) ) $ ( if true then Bool else Bool )
            d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( ( Bool -> Bool ) ∋ ( ( λ x790 -> d72 ) ) ) $ ( true ) ) ) ) $ ( if p20 then d34 else true )
            d82 : ( ( Set -> Set ) ∋ ( ( λ x830 -> if false then x830 else Bool ) ) ) $ ( if false then Bool else Bool )
            d82 = if if d31 then true else d18 then if d66 then false else p20 else if p20 then d23 else d18
            d84 : ( ( Set -> Set ) ∋ ( ( λ x850 -> ( ( Set -> Set ) ∋ ( ( λ x860 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d84 = if if false then p20 else true then if false then p20 else d16 else if d28 then p10 else false
            d87 : if false then if false then Bool else Bool else if true then Bool else Bool
            d87 = if if p20 then p20 else p10 then if p10 then p20 else d23 else if d56 then d54 else d43
            d88 : if false then if true then Bool else Bool else if true then Bool else Bool
            d88 = if if d66 then false else p20 then if true then p10 else p10 else if d4 then d58 else d23
            d89 : ( ( Set -> Set ) ∋ ( ( λ x920 -> if true then x920 else Bool ) ) ) $ ( if false then Bool else Bool )
            d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( p10 ) ) ) ) $ ( if d74 then true else d63 )
            d93 : ( ( Set -> Set ) ∋ ( ( λ x940 -> ( ( Set -> Set ) ∋ ( ( λ x950 -> x940 ) ) ) $ ( x940 ) ) ) ) $ ( if false then Bool else Bool )
            d93 = if if d26 then false else false then if d74 then p10 else true else if d21 then d41 else d54
            d96 : ( ( Set -> Set ) ∋ ( ( λ x990 -> if true then Bool else x990 ) ) ) $ ( if true then Bool else Bool )
            d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d7 ) ) ) $ ( false ) ) ) ) $ ( if d15 then p10 else p20 )
            d100 : if false then if false then Bool else Bool else if true then Bool else Bool
            d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1010 ) ) ) $ ( p10 ) ) ) ) $ ( if true then p10 else p10 )
        module M1'  = M1 ( p10 ) 
    d103 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> if false then Bool else x1040 ) ) ) $ ( if false then Bool else Bool )
    d103 = ( ( M.M1.d34 ) $ ( if true then true else false ) ) $ ( ( M.M1'.d56 ) $ ( ( M.M1'.d74 ) $ ( if true then false else true ) ) )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x1060 -> ( ( Set -> Set ) ∋ ( ( λ x1070 -> Bool ) ) ) $ ( x1060 ) ) ) ) $ ( if false then Bool else Bool )
    d105 = ( M.M1'.d12 ) $ ( ( ( M.M1.d7 ) $ ( ( ( M.M1.d31 ) $ ( d103 ) ) $ ( true ) ) ) $ ( if d103 then false else d103 ) )
    d108 : if false then if false then Bool else Bool else if true then Bool else Bool
    d108 = ( M.M1'.d93 ) $ ( ( M.M1'.d48 ) $ ( ( ( M.M1.d51 ) $ ( ( M.M1'.d74 ) $ ( ( ( M.M1.d72 ) $ ( d105 ) ) $ ( d105 ) ) ) ) $ ( ( M.M1'.d74 ) $ ( ( ( M.M1.d54 ) $ ( d103 ) ) $ ( false ) ) ) ) )
    d109 : if true then if true then Bool else Bool else if false then Bool else Bool
    d109 = ( ( M.M1.d37 ) $ ( ( M.M1'.d48 ) $ ( ( M.M1'.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> false ) ) ) $ ( d103 ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> false ) ) ) $ ( true ) )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x1130 -> if false then x1130 else x1130 ) ) ) $ ( if true then Bool else Bool )
    d112 = ( M.M1'.d37 ) $ ( ( ( M.M1.d72 ) $ ( ( ( M.M1.d82 ) $ ( false ) ) $ ( d108 ) ) ) $ ( if d103 then false else d109 ) )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x1170 -> ( ( Set -> Set ) ∋ ( ( λ x1180 -> x1170 ) ) ) $ ( x1170 ) ) ) ) $ ( if false then Bool else Bool )
    d114 = ( M.M1'.d87 ) $ ( ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( d109 ) ) ) ) $ ( if true then d109 else false ) ) )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x1200 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d119 = ( M.M1'.d56 ) $ ( if if d103 then true else true then if d109 then true else d103 else if true then d103 else false )
    d121 : if false then if true then Bool else Bool else if false then Bool else Bool
    d121 = ( M.M1'.d45 ) $ ( ( ( M.M1.d34 ) $ ( ( M.M1'.d87 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> x1220 ) ) ) $ ( false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> false ) ) ) $ ( false ) ) )
    d124 : if false then if true then Bool else Bool else if false then Bool else Bool
    d124 = ( M.M1'.d54 ) $ ( if if false then d121 else true then if d105 then d109 else d112 else if d119 then d105 else false )
    d125 : if false then if false then Bool else Bool else if true then Bool else Bool
    d125 = ( ( M.M1.d96 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d124 ) ) ) $ ( d114 ) ) ) $ ( ( ( M.M1.d51 ) $ ( d103 ) ) $ ( d103 ) )
    d127 : if true then if false then Bool else Bool else if false then Bool else Bool
    d127 = ( M.M1'.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> if false then d112 else d109 ) ) ) $ ( if d114 then false else d119 ) )
    d129 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d129 = ( ( M.M1.d69 ) $ ( if true then d112 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d105 ) ) ) $ ( true ) )
    d133 : if true then if true then Bool else Bool else if false then Bool else Bool
    d133 = if if d129 then d103 else true then if false then d114 else false else if false then true else d127
    d134 : if false then if true then Bool else Bool else if true then Bool else Bool
    d134 = ( ( M.M1.d41 ) $ ( ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> d114 ) ) ) $ ( d119 ) ) ) ) $ ( ( M.M1'.d63 ) $ ( ( ( M.M1.d16 ) $ ( d103 ) ) $ ( false ) ) )
    d136 : if false then if false then Bool else Bool else if false then Bool else Bool
    d136 = ( M.M1'.d96 ) $ ( ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> d124 ) ) ) $ ( d119 ) ) ) ) $ ( if d114 then true else false ) ) )
    d139 : if false then if false then Bool else Bool else if true then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( M.M1.d74 ) $ ( if false then x1400 else true ) ) $ ( if d129 then true else d121 ) ) ) ) $ ( if false then d114 else d119 )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x1420 -> if true then x1420 else Bool ) ) ) $ ( if true then Bool else Bool )
    d141 = ( M.M1'.d7 ) $ ( ( M.M1'.d31 ) $ ( ( M.M1'.d28 ) $ ( ( ( M.M1.d7 ) $ ( if d133 then true else d129 ) ) $ ( ( M.M1'.d37 ) $ ( if d103 then d108 else d121 ) ) ) ) )
    d143 : if true then if true then Bool else Bool else if false then Bool else Bool
    d143 = if if d114 then true else d108 then if false then d112 else true else if d139 then true else d134
    d144 : if true then if false then Bool else Bool else if true then Bool else Bool
    d144 = if if true then true else true then if false then d133 else true else if d105 then false else false
    d145 : if true then if false then Bool else Bool else if true then Bool else Bool
    d145 = ( M.M1'.d87 ) $ ( ( M.M1'.d9 ) $ ( if if true then true else true then if d129 then true else true else if false then d144 else false ) )
    d146 : if true then if true then Bool else Bool else if true then Bool else Bool
    d146 = ( M.M1'.d41 ) $ ( ( ( M.M1.d44 ) $ ( if d119 then d141 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( true ) ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x1490 -> if false then Bool else x1490 ) ) ) $ ( if true then Bool else Bool )
    d148 = if if true then d134 else true then if false then d143 else true else if d141 then d119 else d139
    d150 : if false then if false then Bool else Bool else if false then Bool else Bool
    d150 = ( M.M1'.d34 ) $ ( ( ( M.M1.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( d119 ) ) ) $ ( if true then d112 else d141 ) )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x1540 -> ( ( Set -> Set ) ∋ ( ( λ x1550 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d152 = ( M.M1'.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> if true then true else x1530 ) ) ) $ ( if d136 then d112 else d103 ) )
    d156 : if false then if true then Bool else Bool else if true then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( M.M1'.d41 ) $ ( if false then x1570 else true ) ) ) ) $ ( if true then false else true )
    d158 : if false then if true then Bool else Bool else if false then Bool else Bool
    d158 = ( M.M1'.d63 ) $ ( ( ( M.M1.d77 ) $ ( ( M.M1'.d77 ) $ ( ( M.M1'.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d143 ) ) ) $ ( true ) ) ) ) ) $ ( ( ( M.M1.d48 ) $ ( false ) ) $ ( false ) ) )
    d160 : if false then if false then Bool else Bool else if true then Bool else Bool
    d160 = ( M.M1'.d58 ) $ ( if if true then false else d146 then if true then false else d150 else if false then false else d108 )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x1630 -> if false then x1630 else Bool ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> ( M.M1'.d100 ) $ ( ( ( M.M1.d37 ) $ ( if d112 then false else d134 ) ) $ ( if false then d146 else x1620 ) ) ) ) ) $ ( if d160 then d124 else d129 )
    d164 : if false then if false then Bool else Bool else if false then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> if x1650 then x1650 else x1650 ) ) ) $ ( if false then false else d105 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x1670 -> ( ( Set -> Set ) ∋ ( ( λ x1680 -> Bool ) ) ) $ ( x1670 ) ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( M.M1.d23 ) $ ( ( ( M.M1.d9 ) $ ( d129 ) ) $ ( d124 ) ) ) $ ( ( ( M.M1.d93 ) $ ( true ) ) $ ( d114 ) )
    d169 : if false then if true then Bool else Bool else if true then Bool else Bool
    d169 = ( M.M1'.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( M.M1'.d7 ) $ ( ( M.M1'.d77 ) $ ( if d158 then x1700 else d148 ) ) ) ) ) $ ( if d114 then d160 else true ) )
    d171 : if true then if true then Bool else Bool else if true then Bool else Bool
    d171 = ( ( M.M1.d54 ) $ ( ( M.M1'.d88 ) $ ( ( ( M.M1.d41 ) $ ( d161 ) ) $ ( false ) ) ) ) $ ( if d119 then false else false )
    d172 : if false then if true then Bool else Bool else if true then Bool else Bool
    d172 = ( M.M1'.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> ( ( M.M1.d93 ) $ ( if true then x1730 else true ) ) $ ( if d152 then d136 else true ) ) ) ) $ ( if d160 then true else d127 ) )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x1760 -> ( ( Set -> Set ) ∋ ( ( λ x1770 -> x1760 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> if d134 then false else d172 ) ) ) $ ( if true then d124 else d112 )
    d178 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if false then x1790 else x1790 ) ) ) $ ( if true then Bool else Bool )
    d178 = ( M.M1'.d23 ) $ ( ( M.M1'.d43 ) $ ( if if false then false else true then if d145 then d144 else d133 else if d171 then d139 else false ) )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d180 = ( M.M1'.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> ( M.M1'.d82 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1820 -> false ) ) ) $ ( x1810 ) ) ) ) ) $ ( if d160 then false else true ) )
    d184 : if true then if true then Bool else Bool else if false then Bool else Bool
    d184 = ( M.M1'.d12 ) $ ( if if d134 then d119 else true then if d119 then d119 else true else if d148 then d109 else d119 )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x1860 -> ( ( Set -> Set ) ∋ ( ( λ x1870 -> x1860 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d185 = if if d124 then true else true then if false then d161 else false else if true then d178 else true
    d188 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( x1890 ) ) ) ) $ ( if false then Bool else Bool )
    d188 = if if true then d145 else d127 then if d148 then d103 else false else if d172 then false else false
    d191 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d191 = ( M.M1'.d37 ) $ ( if if true then false else false then if d148 then true else d178 else if true then false else d145 )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x1940 -> ( ( Set -> Set ) ∋ ( ( λ x1950 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d193 = ( M.M1'.d96 ) $ ( if if false then false else false then if d166 then d166 else d112 else if d114 then d129 else d143 )
    d196 : if false then if true then Bool else Bool else if true then Bool else Bool
    d196 = ( M.M1'.d15 ) $ ( ( M.M1'.d37 ) $ ( ( M.M1'.d18 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1970 -> ( ( M.M1.d18 ) $ ( if true then true else false ) ) $ ( if x1970 then true else true ) ) ) ) $ ( if true then true else true ) ) ) )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x2000 -> ( ( Set -> Set ) ∋ ( ( λ x2010 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d198 = ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> if d124 then d127 else d160 ) ) ) $ ( if true then d133 else true )
    d202 : ( ( Set -> Set ) ∋ ( ( λ x2040 -> ( ( Set -> Set ) ∋ ( ( λ x2050 -> x2050 ) ) ) $ ( x2040 ) ) ) ) $ ( if true then Bool else Bool )
    d202 = ( ( M.M1.d72 ) $ ( if false then true else d133 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2030 -> d158 ) ) ) $ ( false ) )
    d206 : ( ( Set -> Set ) ∋ ( ( λ x2080 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d206 = ( ( M.M1.d100 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2070 -> d125 ) ) ) $ ( d161 ) ) ) $ ( ( ( M.M1.d51 ) $ ( d141 ) ) $ ( false ) )
    d209 : if false then if false then Bool else Bool else if true then Bool else Bool
    d209 = ( M.M1'.d56 ) $ ( ( M.M1'.d72 ) $ ( if if d174 then false else true then if d158 then d103 else false else if true then false else false ) )
    d210 : ( ( Set -> Set ) ∋ ( ( λ x2130 -> ( ( Set -> Set ) ∋ ( ( λ x2140 -> x2140 ) ) ) $ ( x2130 ) ) ) ) $ ( if true then Bool else Bool )
    d210 = ( M.M1'.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> ( M.M1'.d89 ) $ ( ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2120 -> d103 ) ) ) $ ( x2110 ) ) ) ) ) ) $ ( if d178 then true else d198 ) )
    d215 : if false then if false then Bool else Bool else if true then Bool else Bool
    d215 = ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> ( ( M.M1.d44 ) $ ( if x2160 then true else false ) ) $ ( if x2160 then x2160 else x2160 ) ) ) ) $ ( if false then false else false )
    d217 : if true then if true then Bool else Bool else if false then Bool else Bool
    d217 = if if d125 then d150 else false then if true then true else false else if false then true else false
    d218 : ( ( Set -> Set ) ∋ ( ( λ x2190 -> ( ( Set -> Set ) ∋ ( ( λ x2200 -> x2190 ) ) ) $ ( x2190 ) ) ) ) $ ( if false then Bool else Bool )
    d218 = if if d202 then false else true then if true then d127 else false else if d169 then true else d127