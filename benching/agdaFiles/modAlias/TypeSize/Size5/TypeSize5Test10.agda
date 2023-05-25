module TypeSize5Test10  where
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

    module M ( p10 : if false then Bool else Bool )  where
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then x30 else Bool ) ) ) $ ( Bool ) )  where
            d4 : if false then Bool else Bool
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then true else p20 ) ) ) $ ( if p10 then p10 else p20 )
            d6 : if false then Bool else Bool
            d6 = if if d4 then p20 else p20 then if p10 then p10 else p10 else if false then p10 else p10
            d7 : if false then Bool else Bool
            d7 = if if p20 then true else false then if d6 then true else true else if d6 then false else false
            d8 : if true then Bool else Bool
            d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d7 then d4 else x90 ) ) ) $ ( if true then p20 else d7 )
            d10 : if true then Bool else Bool
            d10 = if if true then d4 else p20 then if true then false else false else if p20 then false else d7
            d11 : if true then Bool else Bool
            d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if true then p20 else false ) ) ) $ ( if d7 then true else false )
            d13 : if true then Bool else Bool
            d13 = if if d7 then d8 else d7 then if p20 then p10 else false else if true then d4 else d6
            d14 : if true then Bool else Bool
            d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if true then false else false ) ) ) $ ( if p10 then p10 else d4 )
            d16 : if false then Bool else Bool
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else d13 )
            d19 : if true then Bool else Bool
            d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> false ) ) ) $ ( x200 ) ) ) ) $ ( if d6 then d13 else d6 )
            d22 : if true then Bool else Bool
            d22 = if if d16 then p20 else d7 then if p20 then true else true else if false then false else p20
            d23 : if true then Bool else Bool
            d23 = if if true then false else true then if false then d22 else false else if false then true else d8
            d24 : if true then Bool else Bool
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> d13 ) ) ) $ ( d8 ) ) ) ) $ ( if d14 then d23 else true )
            d27 : if true then Bool else Bool
            d27 = if if d6 then p10 else d7 then if p10 then false else false else if d23 then false else false
            d28 : if false then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if false then false else x290 ) ) ) $ ( if true then d19 else d24 )
            d30 : if true then Bool else Bool
            d30 = if if true then true else true then if d19 then d13 else true else if true then p10 else d23
            d31 : if true then Bool else Bool
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if d11 then p20 else d8 ) ) ) $ ( if d7 then p10 else p20 )
            d33 : if false then Bool else Bool
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if p10 then d8 else true ) ) ) $ ( if false then false else p20 )
            d35 : if true then Bool else Bool
            d35 = if if d4 then d6 else false then if p20 then p20 else d31 else if d23 then p10 else true
            d36 : if false then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if false then d28 else d10 ) ) ) $ ( if false then d10 else p10 )
            d38 : if false then Bool else Bool
            d38 = if if true then d31 else true then if d14 then d7 else p10 else if d22 then false else d27
            d39 : if false then Bool else Bool
            d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if d38 then false else d22 ) ) ) $ ( if d14 then d30 else p10 )
            d41 : if true then Bool else Bool
            d41 = if if p20 then p10 else p20 then if d30 then d22 else p10 else if true then d7 else d31
            d42 : if true then Bool else Bool
            d42 = if if p20 then false else d38 then if d35 then d27 else false else if d7 then p10 else d7
            d43 : if true then Bool else Bool
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if false then true else d14 ) ) ) $ ( if d6 then p20 else false )
            d45 : if false then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d13 ) ) ) $ ( d30 ) ) ) ) $ ( if p20 then d23 else d39 )
            d48 : if false then Bool else Bool
            d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> false ) ) ) $ ( d30 ) ) ) ) $ ( if d7 then d45 else true )
            d51 : if true then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if d42 then true else d23 ) ) ) $ ( if p20 then p20 else d6 )
            d53 : if true then Bool else Bool
            d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> if true then false else p10 ) ) ) $ ( if d38 then d35 else d8 )
            d55 : if true then Bool else Bool
            d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x570 -> d51 ) ) ) $ ( x560 ) ) ) ) $ ( if true then false else false )
            d58 : if false then Bool else Bool
            d58 = if if false then d55 else d23 then if p10 then d35 else false else if false then true else d7
            d59 : if true then Bool else Bool
            d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d38 ) ) ) $ ( d36 ) ) ) ) $ ( if d51 then d36 else d6 )
            d62 : if false then Bool else Bool
            d62 = if if p10 then p10 else p20 then if p10 then false else true else if d24 then d10 else p10
            d63 : if true then Bool else Bool
            d63 = if if p20 then d33 else false then if d33 then d36 else d39 else if false then p10 else true
            d64 : if true then Bool else Bool
            d64 = if if p20 then true else d59 then if p20 then p20 else d53 else if p20 then d7 else false
            d65 : if true then Bool else Bool
            d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> x670 ) ) ) $ ( false ) ) ) ) $ ( if p10 then p20 else p10 )
            d68 : if true then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> true ) ) ) $ ( d65 ) ) ) ) $ ( if d28 then true else d6 )
            d71 : if true then Bool else Bool
            d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if true then x720 else x720 ) ) ) $ ( if false then true else true )
            d73 : if true then Bool else Bool
            d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if x740 then p10 else true ) ) ) $ ( if d7 then p10 else p10 )
            d75 : if true then Bool else Bool
            d75 = if if d64 then false else d33 then if false then p10 else d7 else if d23 then true else d36
        module M1'  = M1 ( true ) 
    d76 : if true then Bool else Bool
    d76 = ( M.M1'.d75 ) $ ( ( ( M.M1.d35 ) $ ( ( M.M1'.d31 ) $ ( ( ( M.M1.d38 ) $ ( true ) ) $ ( false ) ) ) ) $ ( if false then true else true ) )
    d77 : if false then Bool else Bool
    d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> ( M.M1'.d33 ) $ ( ( M.M1'.d24 ) $ ( ( M.M1'.d39 ) $ ( ( ( M.M1.d36 ) $ ( if true then true else x780 ) ) $ ( if d76 then x780 else d76 ) ) ) ) ) ) ) $ ( if d76 then false else d76 )
    d79 : if true then Bool else Bool
    d79 = ( M.M1'.d6 ) $ ( ( M.M1'.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> d76 ) ) ) $ ( d76 ) ) ) ) $ ( if d77 then false else d76 ) ) )
    d82 : if false then Bool else Bool
    d82 = ( M.M1'.d14 ) $ ( if if false then true else d76 then if true then false else false else if d76 then d76 else d76 )
    d83 : if false then Bool else Bool
    d83 = ( M.M1'.d23 ) $ ( ( M.M1'.d63 ) $ ( ( M.M1'.d59 ) $ ( ( M.M1'.d10 ) $ ( ( ( M.M1.d64 ) $ ( if true then true else d77 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( false ) ) ) ) ) )
    d85 : if true then Bool else Bool
    d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> ( ( Bool -> Bool ) ∋ ( ( λ x870 -> d83 ) ) ) $ ( x860 ) ) ) ) $ ( if false then true else false )
    d88 : if true then Bool else Bool
    d88 = if if d77 then d85 else d83 then if false then d85 else d85 else if false then false else false
    d89 : if false then Bool else Bool
    d89 = ( M.M1'.d13 ) $ ( ( M.M1'.d36 ) $ ( ( M.M1'.d30 ) $ ( ( M.M1'.d65 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( M.M1'.d45 ) $ ( ( M.M1'.d62 ) $ ( if d85 then x900 else false ) ) ) ) ) $ ( if d76 then true else d85 ) ) ) ) )
    d91 : if false then Bool else Bool
    d91 = if if false then true else d77 then if false then true else true else if false then false else d83
    d92 : if false then Bool else Bool
    d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> ( M.M1'.d10 ) $ ( ( M.M1'.d33 ) $ ( ( ( M.M1.d4 ) $ ( if x930 then d91 else d89 ) ) $ ( if true then x930 else d83 ) ) ) ) ) ) $ ( if true then d85 else d76 )
    d94 : if false then Bool else Bool
    d94 = ( ( M.M1.d33 ) $ ( ( M.M1'.d39 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x950 -> d91 ) ) ) $ ( d91 ) ) ) ) $ ( ( M.M1'.d16 ) $ ( ( M.M1'.d23 ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d55 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x960 -> true ) ) ) $ ( false ) ) ) ) ) )
    d97 : if false then Bool else Bool
    d97 = ( M.M1'.d35 ) $ ( ( M.M1'.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( M.M1.d35 ) $ ( if x980 then x980 else true ) ) $ ( if x980 then false else d89 ) ) ) ) $ ( if d94 then d82 else d83 ) ) )
    d99 : if false then Bool else Bool
    d99 = ( M.M1'.d63 ) $ ( ( M.M1'.d22 ) $ ( ( M.M1'.d7 ) $ ( if if d83 then d97 else true then if d76 then d88 else false else if false then true else true ) ) )
    d100 : if false then Bool else Bool
    d100 = ( M.M1'.d63 ) $ ( if if d82 then false else d99 then if d99 then d99 else false else if true then d92 else d83 )
    d101 : if false then Bool else Bool
    d101 = if if d91 then d91 else false then if false then d85 else true else if d100 then true else d83
    d102 : if false then Bool else Bool
    d102 = ( M.M1'.d27 ) $ ( ( ( M.M1.d35 ) $ ( ( M.M1'.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> d76 ) ) ) $ ( d97 ) ) ) ) $ ( ( M.M1'.d75 ) $ ( ( M.M1'.d31 ) $ ( if d83 then d100 else true ) ) ) )
    d104 : if false then Bool else Bool
    d104 = ( ( M.M1.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> true ) ) ) $ ( d91 ) ) )
    d107 : if false then Bool else Bool
    d107 = if if d76 then d102 else true then if false then false else d83 else if false then d100 else d79
    d108 : if false then Bool else Bool
    d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d107 else d89 )
    d111 : if false then Bool else Bool
    d111 = ( ( M.M1.d7 ) $ ( ( M.M1'.d28 ) $ ( if true then d94 else d91 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> d82 ) ) ) $ ( d83 ) )
    d113 : if false then Bool else Bool
    d113 = ( M.M1'.d10 ) $ ( ( ( M.M1.d62 ) $ ( if false then false else false ) ) $ ( if false then false else true ) )
    d114 : if true then Bool else Bool
    d114 = ( M.M1'.d10 ) $ ( ( M.M1'.d68 ) $ ( ( M.M1'.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> false ) ) ) $ ( false ) ) ) ) ) $ ( if d97 then d77 else true ) ) ) )
    d117 : if false then Bool else Bool
    d117 = ( ( M.M1.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> d85 ) ) ) $ ( d102 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> d77 ) ) ) $ ( d102 ) )
    d120 : if false then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> ( M.M1'.d7 ) $ ( if x1210 then false else true ) ) ) ) $ ( if d76 then true else false )
    d122 : if false then Bool else Bool
    d122 = ( M.M1'.d53 ) $ ( ( ( M.M1.d58 ) $ ( ( M.M1'.d55 ) $ ( ( M.M1'.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( d117 ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( d94 ) ) )
    d125 : if false then Bool else Bool
    d125 = if if false then false else false then if false then true else d122 else if d122 then true else d79
    d126 : if false then Bool else Bool
    d126 = ( M.M1'.d48 ) $ ( ( ( M.M1.d63 ) $ ( if d113 then d89 else d107 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> d77 ) ) ) $ ( true ) ) )
    d128 : if true then Bool else Bool
    d128 = ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d101 ) ) ) $ ( false ) ) ) ) $ ( if d83 then d99 else d76 )
    d131 : if true then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if true then d91 else d122 ) ) ) $ ( if true then d122 else d97 )
    d133 : if false then Bool else Bool
    d133 = ( M.M1'.d38 ) $ ( ( ( M.M1.d43 ) $ ( ( ( M.M1.d10 ) $ ( d100 ) ) $ ( false ) ) ) $ ( ( M.M1'.d53 ) $ ( ( M.M1'.d11 ) $ ( ( ( M.M1.d43 ) $ ( true ) ) $ ( false ) ) ) ) )
    d134 : if true then Bool else Bool
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> ( M.M1'.d35 ) $ ( ( M.M1'.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( true ) ) ) ) ) ) $ ( if false then false else false )
    d137 : if false then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> if d108 then d76 else x1380 ) ) ) $ ( if false then d113 else d91 )
    d139 : if false then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( M.M1.d53 ) $ ( if x1400 then x1400 else x1400 ) ) $ ( if d107 then true else x1400 ) ) ) ) $ ( if d91 then d133 else false )
    d141 : if true then Bool else Bool
    d141 = ( M.M1'.d39 ) $ ( ( M.M1'.d53 ) $ ( ( ( M.M1.d41 ) $ ( if d91 then true else d100 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> x1420 ) ) ) $ ( d126 ) ) ) )
    d143 : if false then Bool else Bool
    d143 = if if d120 then d85 else d126 then if false then true else true else if d131 then d89 else d99
    d144 : if false then Bool else Bool
    d144 = ( M.M1'.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> ( M.M1'.d28 ) $ ( ( M.M1'.d23 ) $ ( ( ( M.M1.d41 ) $ ( if true then false else x1450 ) ) $ ( if d134 then d101 else d128 ) ) ) ) ) ) $ ( if d133 then true else d107 ) )
    d146 : if false then Bool else Bool
    d146 = ( ( M.M1.d16 ) $ ( ( M.M1'.d11 ) $ ( ( M.M1'.d64 ) $ ( ( M.M1'.d35 ) $ ( ( M.M1'.d62 ) $ ( if d79 then d139 else d131 ) ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> x1470 ) ) ) $ ( d102 ) )
    d148 : if false then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> if x1490 then d100 else false ) ) ) $ ( if false then true else d108 )
    d150 : if false then Bool else Bool
    d150 = ( ( M.M1.d39 ) $ ( if d137 then d94 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( false ) )
    d152 : if false then Bool else Bool
    d152 = if if true then d97 else false then if d107 then false else d92 else if d114 then d92 else false
    d153 : if false then Bool else Bool
    d153 = ( M.M1'.d73 ) $ ( ( ( M.M1.d22 ) $ ( ( M.M1'.d10 ) $ ( if true then false else false ) ) ) $ ( ( ( M.M1.d75 ) $ ( true ) ) $ ( true ) ) )
    d154 : if true then Bool else Bool
    d154 = ( M.M1'.d30 ) $ ( ( ( M.M1.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> d137 ) ) ) $ ( d139 ) ) ) $ ( ( M.M1'.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( d91 ) ) ) )
    d157 : if false then Bool else Bool
    d157 = ( M.M1'.d75 ) $ ( ( M.M1'.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> ( M.M1'.d19 ) $ ( ( ( M.M1.d55 ) $ ( if false then d83 else d99 ) ) $ ( if true then d104 else x1580 ) ) ) ) ) $ ( if d79 then d139 else d114 ) ) )
    d159 : if true then Bool else Bool
    d159 = if if true then d108 else true then if d128 then d88 else false else if false then d143 else false
    d160 : if false then Bool else Bool
    d160 = ( M.M1'.d33 ) $ ( if if true then true else true then if true then d104 else false else if true then true else d88 )
    d161 : if false then Bool else Bool
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> ( M.M1'.d63 ) $ ( if false then x1620 else x1620 ) ) ) ) $ ( if d94 then true else d113 )
    d163 : if false then Bool else Bool
    d163 = ( M.M1'.d75 ) $ ( if if d79 then d126 else d91 then if d91 then d141 else true else if d141 then true else d76 )
    d164 : if true then Bool else Bool
    d164 = ( ( M.M1.d43 ) $ ( ( ( M.M1.d6 ) $ ( d128 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> x1650 ) ) ) $ ( d137 ) )
    d166 : if true then Bool else Bool
    d166 = ( ( M.M1.d30 ) $ ( if d94 then d131 else d164 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> x1670 ) ) ) $ ( d97 ) )
    d168 : if true then Bool else Bool
    d168 = if if d148 then true else true then if d141 then true else true else if d148 then true else d161