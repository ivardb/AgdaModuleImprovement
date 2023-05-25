module ModArg10Test7  where
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

    module M ( p10 : if true then Bool else Bool ) ( p20 : if false then Bool else Bool )  where
        module M1 ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ( p50 : if false then Bool else Bool )  where
            d6 : if true then if false then Bool else Bool else if false then Bool else Bool
            d6 = if if p50 then false else false then if p20 then true else true else if true then true else false
            d7 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if d6 then false else p30 ) ) ) $ ( if d6 then d6 else p50 )
            d11 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then x130 else Bool ) ) ) $ ( if false then Bool else Bool )
            d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if x120 then true else p10 ) ) ) $ ( if d7 then true else d6 )
            d14 : if false then if false then Bool else Bool else if true then Bool else Bool
            d14 = if if false then true else true then if p20 then p20 else false else if p50 then d11 else false
            d15 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( x160 ) ) ) ) $ ( if false then Bool else Bool )
            d15 = if if p50 then d7 else d11 then if p50 then p30 else d11 else if p50 then d7 else d6
            d18 : ( ( Set -> Set ) ∋ ( ( λ x190 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( x190 ) ) ) ) $ ( if false then Bool else Bool )
            d18 = if if true then false else true then if p30 then d11 else d6 else if p20 then d7 else true
            d21 : ( ( Set -> Set ) ∋ ( ( λ x230 -> if true then x230 else Bool ) ) ) $ ( if true then Bool else Bool )
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if p30 then x220 else x220 ) ) ) $ ( if d14 then d6 else d7 )
            d24 : if false then if false then Bool else Bool else if false then Bool else Bool
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> false ) ) ) $ ( d15 ) ) ) ) $ ( if d14 then d14 else d14 )
            d27 : if true then if false then Bool else Bool else if true then Bool else Bool
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> x280 ) ) ) $ ( false ) ) ) ) $ ( if true then p20 else p50 )
            d30 : ( ( Set -> Set ) ∋ ( ( λ x310 -> if true then x310 else Bool ) ) ) $ ( if false then Bool else Bool )
            d30 = if if d15 then d24 else true then if false then d27 else true else if true then p50 else d24
            d32 : if true then if false then Bool else Bool else if true then Bool else Bool
            d32 = if if p50 then false else d21 then if p10 then d24 else d14 else if p50 then false else d18
            d33 : ( ( Set -> Set ) ∋ ( ( λ x360 -> ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> d24 ) ) ) $ ( d14 ) ) ) ) $ ( if d32 then p30 else p50 )
            d38 : if false then if false then Bool else Bool else if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if p30 then p50 else p30 ) ) ) $ ( if d14 then d33 else p20 )
            d40 : ( ( Set -> Set ) ∋ ( ( λ x410 -> ( ( Set -> Set ) ∋ ( ( λ x420 -> x410 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d40 = if if false then p20 else p20 then if true then d14 else d21 else if d15 then p30 else p30
            d43 : if true then if false then Bool else Bool else if true then Bool else Bool
            d43 = if if d15 then true else p50 then if p30 then d15 else p20 else if p30 then p10 else true
            d44 : if false then if true then Bool else Bool else if true then Bool else Bool
            d44 = if if p50 then d30 else d43 then if p20 then true else p30 else if p50 then p30 else false
            d45 : if true then if false then Bool else Bool else if true then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if false then d21 else true ) ) ) $ ( if true then p50 else false )
            d47 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if false then Bool else x480 ) ) ) $ ( if false then Bool else Bool )
            d47 = if if d40 then p10 else true then if false then d32 else p50 else if false then false else p30
            d49 : ( ( Set -> Set ) ∋ ( ( λ x500 -> ( ( Set -> Set ) ∋ ( ( λ x510 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d49 = if if false then p20 else p20 then if true then d47 else p20 else if d43 then p50 else d18
            d52 : if false then if false then Bool else Bool else if true then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if p30 then true else p10 ) ) ) $ ( if true then true else false )
            d54 : ( ( Set -> Set ) ∋ ( ( λ x570 -> ( ( Set -> Set ) ∋ ( ( λ x580 -> x580 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> true ) ) ) $ ( true ) ) ) ) $ ( if d45 then d15 else p20 )
            d59 : if false then if true then Bool else Bool else if true then Bool else Bool
            d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> if false then p20 else d43 ) ) ) $ ( if p20 then false else d15 )
            d61 : if true then if true then Bool else Bool else if false then Bool else Bool
            d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( d33 ) ) ) ) $ ( if d40 then true else d44 )
            d64 : ( ( Set -> Set ) ∋ ( ( λ x660 -> ( ( Set -> Set ) ∋ ( ( λ x670 -> Bool ) ) ) $ ( x660 ) ) ) ) $ ( if false then Bool else Bool )
            d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if d49 then false else d43 ) ) ) $ ( if true then p50 else p50 )
            d68 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> x690 ) ) ) $ ( x690 ) ) ) ) $ ( if true then Bool else Bool )
            d68 = if if true then p10 else p30 then if d49 then false else false else if p10 then d21 else p50
            d71 : if true then if true then Bool else Bool else if false then Bool else Bool
            d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> x720 ) ) ) $ ( d45 ) ) ) ) $ ( if p30 then p50 else d30 )
            d74 : ( ( Set -> Set ) ∋ ( ( λ x750 -> if false then Bool else x750 ) ) ) $ ( if false then Bool else Bool )
            d74 = if if false then true else p20 then if p30 then p50 else p10 else if p30 then d33 else false
            d76 : if false then if false then Bool else Bool else if true then Bool else Bool
            d76 = ( ( Bool -> Bool ) ∋ ( ( λ x770 -> if d45 then d43 else true ) ) ) $ ( if true then true else p50 )
            d78 : ( ( Set -> Set ) ∋ ( ( λ x810 -> ( ( Set -> Set ) ∋ ( ( λ x820 -> x810 ) ) ) $ ( x810 ) ) ) ) $ ( if false then Bool else Bool )
            d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> p20 ) ) ) $ ( x790 ) ) ) ) $ ( if d21 then p20 else true )
            d83 : ( ( Set -> Set ) ∋ ( ( λ x840 -> ( ( Set -> Set ) ∋ ( ( λ x850 -> x840 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d83 = if if false then p10 else p30 then if false then p10 else p30 else if d30 then p50 else true
            d86 : if true then if false then Bool else Bool else if false then Bool else Bool
            d86 = if if d6 then p30 else d40 then if p10 then p10 else p50 else if p30 then true else p30
            d87 : if false then if true then Bool else Bool else if false then Bool else Bool
            d87 = if if d32 then false else false then if d76 then false else d83 else if d40 then false else d59
            d88 : if false then if true then Bool else Bool else if false then Bool else Bool
            d88 = if if true then false else p50 then if p50 then d47 else p10 else if true then p10 else d27
            d89 : ( ( Set -> Set ) ∋ ( ( λ x920 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> p10 ) ) ) $ ( p10 ) ) ) ) $ ( if false then p10 else d61 )
            d93 : if true then if false then Bool else Bool else if true then Bool else Bool
            d93 = if if true then p20 else p20 then if p10 then false else true else if false then d18 else d83
            d94 : if true then if true then Bool else Bool else if true then Bool else Bool
            d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if d21 then true else p50 ) ) ) $ ( if d45 then d18 else p20 )
            d96 : if false then if false then Bool else Bool else if false then Bool else Bool
            d96 = if if true then p10 else false then if true then p20 else true else if false then d86 else p50
            d97 : if true then if false then Bool else Bool else if true then Bool else Bool
            d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x990 -> true ) ) ) $ ( false ) ) ) ) $ ( if p10 then p20 else true )
            d100 : if true then if true then Bool else Bool else if true then Bool else Bool
            d100 = if if p50 then d33 else true then if true then d88 else false else if d33 then p50 else true
            d101 : if true then if true then Bool else Bool else if false then Bool else Bool
            d101 = if if p30 then p50 else false then if false then true else true else if false then p10 else d11
        module M1'  = M1 ( if p10 then true else false ) 
    d102 : if false then if true then Bool else Bool else if false then Bool else Bool
    d102 = ( ( ( ( M.M1.d76 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( false )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x1040 -> ( ( Set -> Set ) ∋ ( ( λ x1050 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d103 = if if true then false else d102 then if d102 then d102 else true else if true then d102 else false
    d106 : if true then if false then Bool else Bool else if true then Bool else Bool
    d106 = ( ( ( ( M.M1.d76 ) $ ( false ) ) $ ( d103 ) ) $ ( d102 ) ) $ ( d102 )
    d107 : if true then if false then Bool else Bool else if false then Bool else Bool
    d107 = ( ( ( M.M1'.d33 ) $ ( if false then false else true ) ) $ ( if d103 then d103 else d106 ) ) $ ( if false then true else d106 )
    d108 : if false then if false then Bool else Bool else if true then Bool else Bool
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if x1090 then x1090 else true ) ) ) $ ( if d107 then d102 else true )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> ( ( Set -> Set ) ∋ ( ( λ x1120 -> x1120 ) ) ) $ ( x1110 ) ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( ( M.M1'.d100 ) $ ( if true then d106 else true ) ) $ ( if d103 then d103 else false ) ) $ ( if false then d106 else false )
    d113 : if true then if false then Bool else Bool else if true then Bool else Bool
    d113 = ( ( ( M.M1'.d97 ) $ ( if d108 then false else false ) ) $ ( if d107 then d107 else d110 ) ) $ ( if false then true else false )
    d114 : if false then if false then Bool else Bool else if true then Bool else Bool
    d114 = ( ( ( M.M1'.d78 ) $ ( if true then true else false ) ) $ ( if d106 then true else d113 ) ) $ ( if false then d107 else false )
    d115 : if false then if true then Bool else Bool else if false then Bool else Bool
    d115 = if if d106 then d110 else d107 then if d106 then d106 else d102 else if d103 then false else false
    d116 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( ( ( M.M1'.d21 ) $ ( false ) ) $ ( true ) ) $ ( x1170 ) ) ) ) $ ( if true then false else true )
    d119 : if false then if false then Bool else Bool else if true then Bool else Bool
    d119 = ( ( ( ( M.M1.d100 ) $ ( d113 ) ) $ ( false ) ) $ ( true ) ) $ ( d103 )
    d120 : if true then if false then Bool else Bool else if false then Bool else Bool
    d120 = if if d119 then d103 else true then if d102 then d115 else true else if d108 then d116 else d102
    d121 : if true then if true then Bool else Bool else if false then Bool else Bool
    d121 = if if d114 then true else true then if d106 then false else d107 else if true then d110 else d119
    d122 : if false then if false then Bool else Bool else if true then Bool else Bool
    d122 = ( ( ( ( M.M1.d74 ) $ ( d103 ) ) $ ( false ) ) $ ( d115 ) ) $ ( d119 )
    d123 : if false then if true then Bool else Bool else if false then Bool else Bool
    d123 = ( ( ( M.M1'.d38 ) $ ( if d103 then d102 else d106 ) ) $ ( if true then d121 else true ) ) $ ( if true then d108 else d107 )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> Bool ) ) ) $ ( x1250 ) ) ) ) $ ( if true then Bool else Bool )
    d124 = ( ( ( ( M.M1.d44 ) $ ( true ) ) $ ( false ) ) $ ( false ) ) $ ( d123 )
    d127 : if true then if true then Bool else Bool else if false then Bool else Bool
    d127 = if if false then true else d107 then if false then d116 else d108 else if d102 then false else false
    d128 : if false then if true then Bool else Bool else if false then Bool else Bool
    d128 = ( ( ( ( M.M1.d33 ) $ ( false ) ) $ ( d122 ) ) $ ( false ) ) $ ( false )
    d129 : if false then if false then Bool else Bool else if true then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( ( ( M.M1'.d11 ) $ ( d120 ) ) $ ( d110 ) ) $ ( false ) ) ) ) $ ( if d110 then d116 else d121 )
    d131 : if true then if false then Bool else Bool else if true then Bool else Bool
    d131 = ( ( ( M.M1'.d21 ) $ ( if true then d102 else true ) ) $ ( if d106 then true else true ) ) $ ( if false then d129 else true )
    d132 : ( ( Set -> Set ) ∋ ( ( λ x1330 -> if false then Bool else x1330 ) ) ) $ ( if true then Bool else Bool )
    d132 = ( ( ( M.M1'.d30 ) $ ( if d119 then false else d103 ) ) $ ( if false then d123 else d122 ) ) $ ( if d123 then d106 else d116 )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> if true then x1350 else Bool ) ) ) $ ( if false then Bool else Bool )
    d134 = if if d114 then d108 else d114 then if true then d106 else d116 else if false then d108 else true
    d136 : if true then if true then Bool else Bool else if false then Bool else Bool
    d136 = if if true then d115 else true then if d113 then d113 else d124 else if d113 then d122 else false
    d137 : if true then if true then Bool else Bool else if false then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( ( ( M.M1'.d44 ) $ ( true ) ) $ ( x1380 ) ) $ ( false ) ) ) ) $ ( if d106 then false else false )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x1400 -> ( ( Set -> Set ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( x1400 ) ) ) ) $ ( if false then Bool else Bool )
    d139 = ( ( ( M.M1'.d11 ) $ ( if d129 then true else false ) ) $ ( if d107 then d129 else d136 ) ) $ ( if false then false else d106 )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> if true then Bool else x1430 ) ) ) $ ( if false then Bool else Bool )
    d142 = ( ( ( ( M.M1.d49 ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( true )
    d144 : if false then if false then Bool else Bool else if true then Bool else Bool
    d144 = ( ( ( M.M1'.d87 ) $ ( if d142 then d134 else d122 ) ) $ ( if d142 then d110 else d129 ) ) $ ( if d131 then d131 else true )
    d145 : if true then if false then Bool else Bool else if false then Bool else Bool
    d145 = ( ( ( M.M1'.d47 ) $ ( if d107 then d134 else d137 ) ) $ ( if d123 then false else false ) ) $ ( if false then d134 else d134 )
    d146 : if false then if true then Bool else Bool else if true then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> ( ( ( ( M.M1.d59 ) $ ( d103 ) ) $ ( d123 ) ) $ ( d136 ) ) $ ( x1470 ) ) ) ) $ ( if d129 then d106 else true )
    d148 : if false then if false then Bool else Bool else if true then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> if true then true else true ) ) ) $ ( if false then d136 else d136 )
    d150 : if true then if true then Bool else Bool else if true then Bool else Bool
    d150 = ( ( ( M.M1'.d59 ) $ ( if false then d122 else false ) ) $ ( if d119 then false else false ) ) $ ( if true then true else true )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x1520 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( ( M.M1'.d71 ) $ ( if true then true else false ) ) $ ( if d108 then true else true ) ) $ ( if true then d134 else false )
    d153 : if false then if false then Bool else Bool else if true then Bool else Bool
    d153 = ( ( ( ( M.M1.d52 ) $ ( true ) ) $ ( d115 ) ) $ ( d108 ) ) $ ( d137 )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> Bool ) ) ) $ ( x1550 ) ) ) ) $ ( if false then Bool else Bool )
    d154 = ( ( ( M.M1'.d33 ) $ ( if d110 then d137 else true ) ) $ ( if true then false else false ) ) $ ( if d122 then d107 else true )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x1580 -> ( ( Set -> Set ) ∋ ( ( λ x1590 -> Bool ) ) ) $ ( x1580 ) ) ) ) $ ( if true then Bool else Bool )
    d157 = if if d134 then false else d120 then if d124 then false else false else if d115 then false else d148
    d160 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> ( ( Set -> Set ) ∋ ( ( λ x1620 -> Bool ) ) ) $ ( x1610 ) ) ) ) $ ( if false then Bool else Bool )
    d160 = if if d122 then false else false then if false then true else false else if d145 then d154 else true
    d163 : ( ( Set -> Set ) ∋ ( ( λ x1640 -> ( ( Set -> Set ) ∋ ( ( λ x1650 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d163 = ( ( ( M.M1'.d78 ) $ ( if true then d108 else true ) ) $ ( if true then false else d116 ) ) $ ( if d136 then true else d131 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> ( ( ( M.M1'.d15 ) $ ( d163 ) ) $ ( x1670 ) ) $ ( false ) ) ) ) $ ( if false then d116 else d154 )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x1700 -> ( ( Set -> Set ) ∋ ( ( λ x1710 -> Bool ) ) ) $ ( x1700 ) ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( ( M.M1'.d76 ) $ ( if false then d142 else false ) ) $ ( if d163 then d106 else false ) ) $ ( if d137 then d144 else false )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> ( ( Set -> Set ) ∋ ( ( λ x1740 -> Bool ) ) ) $ ( x1730 ) ) ) ) $ ( if true then Bool else Bool )
    d172 = if if d142 then d120 else false then if true then true else d154 else if d102 then true else true
    d175 : if true then if false then Bool else Bool else if false then Bool else Bool
    d175 = ( ( ( ( M.M1.d43 ) $ ( true ) ) $ ( true ) ) $ ( d110 ) ) $ ( true )
    d176 : if false then if true then Bool else Bool else if true then Bool else Bool
    d176 = ( ( ( ( M.M1.d83 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( true )
    d177 : if false then if true then Bool else Bool else if true then Bool else Bool
    d177 = ( ( ( M.M1'.d88 ) $ ( if false then d106 else false ) ) $ ( if true then true else d145 ) ) $ ( if true then d121 else false )
    d178 : if false then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( ( M.M1'.d52 ) $ ( if d122 then d120 else false ) ) $ ( if false then false else d106 ) ) $ ( if d139 then d119 else d175 )
    d179 : if false then if true then Bool else Bool else if false then Bool else Bool
    d179 = if if d148 then d150 else true then if d136 then true else d166 else if d121 then true else d103
    d180 : ( ( Set -> Set ) ∋ ( ( λ x1810 -> if false then x1810 else x1810 ) ) ) $ ( if true then Bool else Bool )
    d180 = ( ( ( ( M.M1.d83 ) $ ( true ) ) $ ( d103 ) ) $ ( d137 ) ) $ ( true )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x1830 -> if false then x1830 else x1830 ) ) ) $ ( if false then Bool else Bool )
    d182 = ( ( ( M.M1'.d93 ) $ ( if d157 then d160 else d180 ) ) $ ( if d145 then d175 else true ) ) $ ( if d127 then d102 else d157 )
    d184 : if true then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( ( ( M.M1.d52 ) $ ( d115 ) ) $ ( d151 ) ) $ ( false ) ) $ ( true )
    d185 : if false then if false then Bool else Bool else if true then Bool else Bool
    d185 = if if d182 then d134 else false then if false then true else false else if true then d180 else true
    d186 : if true then if true then Bool else Bool else if false then Bool else Bool
    d186 = ( ( ( M.M1'.d71 ) $ ( if d150 then d166 else true ) ) $ ( if d179 then true else d157 ) ) $ ( if d131 then d139 else false )