module TypeSize5Test8  where
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
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
            d4 : if false then Bool else Bool
            d4 = if if false then p10 else false then if p10 then p10 else true else if true then p20 else p20
            d5 : if false then Bool else Bool
            d5 = if if d4 then false else d4 then if d4 then p10 else d4 else if p10 then true else d4
            d6 : if true then Bool else Bool
            d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> false ) ) ) $ ( p20 ) ) ) ) $ ( if p20 then false else d4 )
            d9 : if true then Bool else Bool
            d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> p10 ) ) ) $ ( d6 ) ) ) ) $ ( if d5 then d5 else p10 )
            d12 : if true then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if x130 then true else x130 ) ) ) $ ( if p10 then true else true )
            d14 : if false then Bool else Bool
            d14 = if if true then p10 else p20 then if d9 then d4 else d9 else if p10 then d6 else p20
            d15 : if false then Bool else Bool
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if false then d9 else p10 ) ) ) $ ( if true then p10 else false )
            d17 : if false then Bool else Bool
            d17 = if if d5 then true else false then if d4 then p10 else true else if p10 then false else false
            d18 : if false then Bool else Bool
            d18 = if if p10 then true else true then if false then d4 else true else if d4 then p10 else true
            d19 : if true then Bool else Bool
            d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if true then d6 else d4 ) ) ) $ ( if p10 then d18 else d18 )
            d21 : if true then Bool else Bool
            d21 = if if p10 then p10 else true then if d15 then false else true else if p10 then p20 else p10
            d22 : if true then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if d21 then d15 else true ) ) ) $ ( if p10 then false else p20 )
            d24 : if false then Bool else Bool
            d24 = if if p10 then d17 else d6 then if d14 then p10 else true else if true then p10 else d15
            d25 : if true then Bool else Bool
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> ( ( Bool -> Bool ) ∋ ( ( λ x270 -> p10 ) ) ) $ ( true ) ) ) ) $ ( if true then p20 else false )
            d28 : if true then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> x300 ) ) ) $ ( d12 ) ) ) ) $ ( if d12 then true else p10 )
            d31 : if true then Bool else Bool
            d31 = if if true then true else d22 then if d14 then p20 else true else if true then p10 else false
            d32 : if false then Bool else Bool
            d32 = if if false then false else p20 then if true then p20 else false else if true then d21 else true
            d33 : if false then Bool else Bool
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> d4 ) ) ) $ ( p20 ) ) ) ) $ ( if d32 then d18 else false )
            d36 : if false then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> p20 ) ) ) $ ( false ) ) ) ) $ ( if p10 then false else p10 )
            d39 : if false then Bool else Bool
            d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> d33 ) ) ) $ ( d9 ) ) ) ) $ ( if d4 then p10 else true )
            d42 : if true then Bool else Bool
            d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if d33 then d21 else p10 ) ) ) $ ( if false then d12 else p20 )
            d44 : if true then Bool else Bool
            d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if p10 then d28 else d12 ) ) ) $ ( if true then p10 else false )
            d46 : if true then Bool else Bool
            d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if p10 then true else d6 ) ) ) $ ( if false then p20 else false )
            d48 : if false then Bool else Bool
            d48 = if if false then p20 else false then if p10 then p20 else false else if true then false else p10
            d49 : if true then Bool else Bool
            d49 = if if true then p20 else p10 then if true then true else p20 else if d9 then false else d46
            d50 : if true then Bool else Bool
            d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> d33 ) ) ) $ ( true ) ) ) ) $ ( if false then false else p10 )
            d53 : if false then Bool else Bool
            d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d6 ) ) ) $ ( p10 ) ) ) ) $ ( if d50 then d39 else p10 )
            d56 : if true then Bool else Bool
            d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if false then d9 else d39 ) ) ) $ ( if d36 then true else false )
            d58 : if false then Bool else Bool
            d58 = if if false then p10 else d49 then if p20 then d39 else p20 else if p20 then false else p20
            d59 : if true then Bool else Bool
            d59 = if if false then d14 else true then if d15 then p10 else true else if p10 then false else false
            d60 : if false then Bool else Bool
            d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x620 -> false ) ) ) $ ( x610 ) ) ) ) $ ( if false then true else p20 )
            d63 : if false then Bool else Bool
            d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if p10 then true else d58 ) ) ) $ ( if d33 then true else d21 )
            d65 : if false then Bool else Bool
            d65 = if if false then p20 else p10 then if p10 then d63 else p20 else if p10 then p10 else true
            d66 : if true then Bool else Bool
            d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if true then false else d56 ) ) ) $ ( if p20 then true else d4 )
            d68 : if false then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if d28 then p10 else true ) ) ) $ ( if p20 then p10 else d63 )
            d70 : if false then Bool else Bool
            d70 = if if d44 then d46 else true then if d21 then true else d32 else if d21 then false else d5
            d71 : if true then Bool else Bool
            d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if true then p10 else x720 ) ) ) $ ( if p10 then p20 else d18 )
            d73 : if true then Bool else Bool
            d73 = if if true then false else d59 then if d63 then false else d18 else if p10 then p10 else p20
            d74 : if false then Bool else Bool
            d74 = if if p20 then d60 else p10 then if p10 then false else d14 else if d22 then d15 else p10
            d75 : if false then Bool else Bool
            d75 = if if p20 then d19 else p10 then if true then true else p20 else if p10 then d44 else true
        module M1'  = M1 ( true ) 
    d76 : if false then Bool else Bool
    d76 = if if false then true else false then if false then true else false else if false then false else true
    d77 : if true then Bool else Bool
    d77 = ( M.M1'.d25 ) $ ( ( ( M.M1.d75 ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d68 ) $ ( ( M.M1'.d42 ) $ ( if d76 then false else false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x780 -> false ) ) ) $ ( true ) ) )
    d79 : if false then Bool else Bool
    d79 = if if false then d76 else true then if false then d76 else false else if d76 then d76 else true
    d80 : if false then Bool else Bool
    d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> true ) ) ) $ ( x810 ) ) ) ) $ ( if d79 then d76 else d79 )
    d83 : if true then Bool else Bool
    d83 = if if d79 then true else false then if false then d76 else d79 else if false then d77 else d80
    d84 : if true then Bool else Bool
    d84 = if if false then true else true then if true then true else d80 else if d79 then false else true
    d85 : if true then Bool else Bool
    d85 = ( ( M.M1.d28 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( d76 ) ) ) $ ( ( M.M1'.d15 ) $ ( ( M.M1'.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( false ) ) ) )
    d88 : if true then Bool else Bool
    d88 = ( M.M1'.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( M.M1.d49 ) $ ( if d84 then d76 else x890 ) ) $ ( if d80 then true else x890 ) ) ) ) $ ( if d76 then d80 else false ) )
    d90 : if false then Bool else Bool
    d90 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> ( ( Bool -> Bool ) ∋ ( ( λ x920 -> x920 ) ) ) $ ( d76 ) ) ) ) $ ( if d77 then d76 else false )
    d93 : if false then Bool else Bool
    d93 = if if d88 then d77 else false then if d90 then false else false else if d83 then false else d88
    d94 : if true then Bool else Bool
    d94 = if if true then false else false then if true then false else false else if true then true else false
    d95 : if false then Bool else Bool
    d95 = ( M.M1'.d15 ) $ ( ( ( M.M1.d18 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x960 -> d94 ) ) ) $ ( d90 ) ) ) $ ( ( ( M.M1.d18 ) $ ( d77 ) ) $ ( false ) ) )
    d97 : if false then Bool else Bool
    d97 = ( ( M.M1.d12 ) $ ( ( ( M.M1.d31 ) $ ( d90 ) ) $ ( d76 ) ) ) $ ( ( M.M1'.d66 ) $ ( ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> false ) ) ) $ ( d77 ) ) ) )
    d99 : if false then Bool else Bool
    d99 = ( M.M1'.d25 ) $ ( ( M.M1'.d49 ) $ ( ( ( M.M1.d56 ) $ ( if d76 then true else d79 ) ) $ ( if true then true else d90 ) ) )
    d100 : if false then Bool else Bool
    d100 = ( M.M1'.d31 ) $ ( if if d95 then d93 else d76 then if d76 then d90 else true else if d88 then true else true )
    d101 : if true then Bool else Bool
    d101 = ( ( M.M1.d28 ) $ ( ( M.M1'.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> x1020 ) ) ) $ ( d97 ) ) ) ) $ ( ( ( M.M1.d63 ) $ ( d76 ) ) $ ( false ) )
    d103 : if false then Bool else Bool
    d103 = ( M.M1'.d28 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if d83 then x1040 else x1040 ) ) ) $ ( if d77 then d76 else d101 ) )
    d105 : if true then Bool else Bool
    d105 = ( M.M1'.d46 ) $ ( if if false then d84 else d99 then if true then true else d93 else if true then true else true )
    d106 : if true then Bool else Bool
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> d100 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d99 )
    d109 : if true then Bool else Bool
    d109 = ( M.M1'.d19 ) $ ( ( M.M1'.d68 ) $ ( ( M.M1'.d28 ) $ ( ( ( M.M1.d39 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> d97 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> false ) ) ) $ ( false ) ) ) ) )
    d112 : if true then Bool else Bool
    d112 = ( M.M1'.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d106 ) ) ) $ ( true ) ) ) ) $ ( if false then d103 else d94 ) )
    d115 : if false then Bool else Bool
    d115 = ( M.M1'.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( M.M1'.d50 ) $ ( ( M.M1'.d15 ) $ ( if d79 then x1160 else false ) ) ) ) ) $ ( if true then true else false ) )
    d117 : if false then Bool else Bool
    d117 = ( M.M1'.d15 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> ( M.M1'.d18 ) $ ( ( ( M.M1.d49 ) $ ( if d105 then d77 else x1180 ) ) $ ( if d83 then x1180 else true ) ) ) ) ) $ ( if true then false else false ) )
    d119 : if false then Bool else Bool
    d119 = ( ( M.M1.d59 ) $ ( if false then false else d94 ) ) $ ( ( M.M1'.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> false ) ) ) $ ( false ) ) )
    d121 : if false then Bool else Bool
    d121 = ( M.M1'.d4 ) $ ( ( ( M.M1.d56 ) $ ( ( ( M.M1.d33 ) $ ( false ) ) $ ( d99 ) ) ) $ ( if d103 then d109 else d79 ) )
    d122 : if true then Bool else Bool
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> if d94 then x1230 else x1230 ) ) ) $ ( if d80 then true else d105 )
    d124 : if true then Bool else Bool
    d124 = ( M.M1'.d65 ) $ ( ( M.M1'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> ( M.M1'.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> x1250 ) ) ) $ ( true ) ) ) ) ) $ ( if d84 then false else d84 ) ) )
    d127 : if true then Bool else Bool
    d127 = ( M.M1'.d24 ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d36 ) $ ( ( ( M.M1.d70 ) $ ( if d97 then true else d83 ) ) $ ( if true then d122 else d124 ) ) ) )
    d128 : if true then Bool else Bool
    d128 = ( ( M.M1.d59 ) $ ( ( M.M1'.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> true ) ) ) $ ( d80 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d97 ) ) ) $ ( d77 ) )
    d131 : if true then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if false then true else x1320 ) ) ) $ ( if d122 then true else true )
    d133 : if false then Bool else Bool
    d133 = ( M.M1'.d60 ) $ ( ( M.M1'.d17 ) $ ( ( M.M1'.d56 ) $ ( if if d85 then false else true then if false then true else true else if true then true else true ) ) )
    d134 : if false then Bool else Bool
    d134 = ( ( M.M1.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1350 -> x1350 ) ) ) $ ( d94 ) ) ) $ ( if d106 then d109 else d117 )
    d136 : if false then Bool else Bool
    d136 = ( M.M1'.d73 ) $ ( if if false then d117 else false then if true then false else d106 else if true then true else true )
    d137 : if false then Bool else Bool
    d137 = ( M.M1'.d46 ) $ ( if if d83 then false else d80 then if d88 then false else true else if true then d93 else d97 )
    d138 : if false then Bool else Bool
    d138 = ( M.M1'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> d137 ) ) ) $ ( x1390 ) ) ) ) $ ( if true then d112 else true ) )
    d141 : if true then Bool else Bool
    d141 = ( ( M.M1.d24 ) $ ( ( ( M.M1.d53 ) $ ( false ) ) $ ( d76 ) ) ) $ ( ( ( M.M1.d22 ) $ ( false ) ) $ ( false ) )
    d142 : if false then Bool else Bool
    d142 = ( ( M.M1.d46 ) $ ( if false then true else true ) ) $ ( ( ( M.M1.d24 ) $ ( true ) ) $ ( true ) )
    d143 : if false then Bool else Bool
    d143 = if if true then d79 else d133 then if false then d84 else d136 else if true then false else d134
    d144 : if false then Bool else Bool
    d144 = ( ( M.M1.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> d95 ) ) ) $ ( d124 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( true ) )
    d147 : if false then Bool else Bool
    d147 = ( M.M1'.d44 ) $ ( ( ( M.M1.d59 ) $ ( if false then true else d144 ) ) $ ( if false then false else d131 ) )
    d148 : if false then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> ( ( M.M1.d46 ) $ ( if d94 then d95 else x1490 ) ) $ ( if d122 then false else d128 ) ) ) ) $ ( if false then d94 else d124 )
    d150 : if true then Bool else Bool
    d150 = ( ( M.M1.d36 ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( d141 ) ) ) ) ) $ ( ( M.M1'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> x1520 ) ) ) $ ( d142 ) ) )
    d153 : if false then Bool else Bool
    d153 = ( ( M.M1.d15 ) $ ( ( M.M1'.d18 ) $ ( ( M.M1'.d24 ) $ ( ( ( M.M1.d42 ) $ ( d99 ) ) $ ( false ) ) ) ) ) $ ( ( ( M.M1.d60 ) $ ( false ) ) $ ( d94 ) )
    d154 : if true then Bool else Bool
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> ( ( M.M1.d48 ) $ ( if d141 then d105 else d103 ) ) $ ( if d128 then x1550 else d100 ) ) ) ) $ ( if d117 then d80 else true )
    d156 : if false then Bool else Bool
    d156 = ( M.M1'.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> true ) ) ) $ ( false ) ) ) ) $ ( if d109 then d131 else d88 ) )
    d159 : if true then Bool else Bool
    d159 = if if true then true else d105 then if true then d150 else true else if false then d105 else d141
    d160 : if false then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> if d103 then true else x1610 ) ) ) $ ( if true then d95 else d83 )
    d162 : if true then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> ( M.M1'.d6 ) $ ( ( M.M1'.d73 ) $ ( if d134 then true else x1630 ) ) ) ) ) $ ( if false then false else true )
    d164 : if true then Bool else Bool
    d164 = if if false then false else true then if false then false else false else if false then false else d93
    d165 : if true then Bool else Bool
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> ( M.M1'.d44 ) $ ( ( M.M1'.d71 ) $ ( ( M.M1'.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> d90 ) ) ) $ ( x1660 ) ) ) ) ) ) ) $ ( if true then false else d90 )