module TypeSize5Test1  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else Bool ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : if true then Bool else Bool )  where
            d4 : if true then Bool else Bool
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if x50 then true else true ) ) ) $ ( if true then false else p10 )
            d6 : if false then Bool else Bool
            d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if p10 then x70 else false ) ) ) $ ( if p30 then p30 else d4 )
            d8 : if true then Bool else Bool
            d8 = if if p10 then p30 else false then if d4 then d4 else false else if d4 then p10 else p30
            d9 : if false then Bool else Bool
            d9 = if if d4 then p30 else false then if p30 then p10 else p10 else if p30 then p30 else false
            d10 : if true then Bool else Bool
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d6 then d9 else d9 ) ) ) $ ( if p30 then p10 else p10 )
            d12 : if false then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d10 then d8 else p30 ) ) ) $ ( if false then d9 else d8 )
            d14 : if false then Bool else Bool
            d14 = if if p30 then p10 else p10 then if d9 then p30 else true else if d9 then true else p30
            d15 : if false then Bool else Bool
            d15 = if if d14 then p30 else p30 then if false then p10 else false else if p10 then d4 else d6
            d16 : if true then Bool else Bool
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> false ) ) ) $ ( p10 ) ) ) ) $ ( if d9 then d8 else true )
            d19 : if false then Bool else Bool
            d19 = if if p10 then true else p10 then if d10 then p30 else d14 else if d15 then d9 else true
            d20 : if false then Bool else Bool
            d20 = if if d9 then d19 else p10 then if true then p10 else d15 else if p30 then d10 else true
            d21 : if false then Bool else Bool
            d21 = if if p30 then d20 else d19 then if p10 then false else d6 else if p10 then p30 else p30
            d22 : if true then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> if d14 then d14 else p30 ) ) ) $ ( if p10 then d12 else true )
            d24 : if false then Bool else Bool
            d24 = if if false then d20 else d10 then if p30 then false else false else if d19 then false else true
            d25 : if false then Bool else Bool
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> ( ( Bool -> Bool ) ∋ ( ( λ x270 -> false ) ) ) $ ( x260 ) ) ) ) $ ( if p10 then d6 else p10 )
            d28 : if false then Bool else Bool
            d28 = if if d14 then d21 else p10 then if d25 then p30 else true else if d24 then p30 else true
            d29 : if false then Bool else Bool
            d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> x300 ) ) ) $ ( p10 ) ) ) ) $ ( if d15 then true else p30 )
            d32 : if false then Bool else Bool
            d32 = if if d15 then d14 else d4 then if true then p30 else true else if p30 then p10 else false
            d33 : if false then Bool else Bool
            d33 = if if d16 then true else d9 then if false then d4 else p30 else if true then d29 else d15
            d34 : if true then Bool else Bool
            d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if x350 then true else true ) ) ) $ ( if d15 then true else d12 )
            d36 : if false then Bool else Bool
            d36 = if if p30 then p10 else d16 then if p30 then true else true else if d20 then d9 else d4
            d37 : if false then Bool else Bool
            d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d32 ) ) ) $ ( x380 ) ) ) ) $ ( if p10 then p10 else p30 )
            d40 : if false then Bool else Bool
            d40 = if if p30 then d34 else true then if p10 then p30 else p10 else if d15 then true else d8
            d41 : if false then Bool else Bool
            d41 = if if true then d24 else p10 then if false then d9 else true else if p10 then p10 else false
            d42 : if true then Bool else Bool
            d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if p10 then false else d37 ) ) ) $ ( if d15 then p10 else false )
            d44 : if true then Bool else Bool
            d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if false then false else true ) ) ) $ ( if p30 then p10 else p10 )
            d46 : if true then Bool else Bool
            d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> x470 ) ) ) $ ( false ) ) ) ) $ ( if d4 then p10 else d44 )
            d49 : if true then Bool else Bool
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> false ) ) ) $ ( false ) ) ) ) $ ( if p10 then false else d8 )
            d52 : if false then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if x530 then x530 else d15 ) ) ) $ ( if p10 then d10 else p10 )
            d54 : if false then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if d21 then d37 else d42 ) ) ) $ ( if false then d32 else false )
            d56 : if true then Bool else Bool
            d56 = if if d9 then d42 else false then if true then true else p30 else if p30 then d37 else p30
            d57 : if false then Bool else Bool
            d57 = if if false then true else d52 then if d28 then d12 else false else if d8 then d56 else true
            d58 : if true then Bool else Bool
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if p30 then p30 else d15 ) ) ) $ ( if p10 then false else d44 )
            d60 : if true then Bool else Bool
            d60 = if if d22 then p10 else d33 then if true then p10 else p10 else if d15 then p10 else false
            d61 : if false then Bool else Bool
            d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if d25 then p30 else false ) ) ) $ ( if d54 then d22 else d14 )
            d63 : if false then Bool else Bool
            d63 = if if p10 then true else d6 then if d44 then p10 else p10 else if p10 then true else false
            d64 : if false then Bool else Bool
            d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if x650 then p10 else p10 ) ) ) $ ( if p30 then d25 else p30 )
            d66 : if true then Bool else Bool
            d66 = if if true then p30 else p30 then if d20 then true else p30 else if d54 then true else p30
            d67 : if false then Bool else Bool
            d67 = if if true then d21 else d66 then if true then p30 else p10 else if p30 then d44 else d36
            d68 : if true then Bool else Bool
            d68 = if if p10 then true else true then if d56 then true else p10 else if p30 then p30 else false
        module M1'  = M1 ( p10 ) 
    d69 : if false then Bool else Bool
    d69 = ( ( M.M1.d57 ) $ ( ( ( M.M1.d58 ) $ ( false ) ) $ ( false ) ) ) $ ( ( M.M1'.d57 ) $ ( if true then true else true ) )
    d70 : if false then Bool else Bool
    d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( ( Bool -> Bool ) ∋ ( ( λ x720 -> x710 ) ) ) $ ( d69 ) ) ) ) $ ( if true then d69 else d69 )
    d73 : if true then Bool else Bool
    d73 = ( ( M.M1.d22 ) $ ( ( M.M1'.d67 ) $ ( ( ( M.M1.d20 ) $ ( d69 ) ) $ ( true ) ) ) ) $ ( if true then false else true )
    d74 : if true then Bool else Bool
    d74 = ( M.M1'.d67 ) $ ( ( M.M1'.d67 ) $ ( ( M.M1'.d52 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( M.M1'.d19 ) $ ( if false then true else false ) ) ) ) $ ( if d69 then true else d73 ) ) ) )
    d76 : if false then Bool else Bool
    d76 = ( ( M.M1.d21 ) $ ( ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x770 -> d70 ) ) ) $ ( d74 ) ) ) ) $ ( if d69 then false else false )
    d78 : if false then Bool else Bool
    d78 = ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( M.M1'.d24 ) $ ( ( M.M1'.d49 ) $ ( if d69 then d70 else x790 ) ) ) ) ) $ ( if d76 then d76 else d70 )
    d80 : if false then Bool else Bool
    d80 = ( M.M1'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( ( Bool -> Bool ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( x810 ) ) ) ) $ ( if false then false else d78 ) )
    d83 : if false then Bool else Bool
    d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> if x840 then d80 else x840 ) ) ) $ ( if true then false else d69 )
    d85 : if false then Bool else Bool
    d85 = ( M.M1'.d21 ) $ ( ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x860 -> ( M.M1'.d32 ) $ ( if d70 then false else d69 ) ) ) ) $ ( if true then false else false ) ) )
    d87 : if false then Bool else Bool
    d87 = ( M.M1'.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( M.M1'.d37 ) $ ( ( ( M.M1.d68 ) $ ( if false then x880 else true ) ) $ ( if d83 then d78 else false ) ) ) ) ) $ ( if d78 then d73 else true ) )
    d89 : if false then Bool else Bool
    d89 = ( ( Bool -> Bool ) ∋ ( ( λ x900 -> ( ( M.M1.d60 ) $ ( if x900 then d69 else d87 ) ) $ ( if x900 then x900 else x900 ) ) ) ) $ ( if true then true else d69 )
    d91 : if true then Bool else Bool
    d91 = ( M.M1'.d61 ) $ ( if if d76 then true else true then if false then true else d73 else if d80 then d85 else d74 )
    d92 : if true then Bool else Bool
    d92 = ( M.M1'.d33 ) $ ( ( M.M1'.d44 ) $ ( ( M.M1'.d6 ) $ ( ( M.M1'.d36 ) $ ( if if d91 then d89 else d78 then if false then false else false else if true then true else true ) ) ) )
    d93 : if false then Bool else Bool
    d93 = ( ( M.M1.d40 ) $ ( if d92 then true else d78 ) ) $ ( ( M.M1'.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x940 -> false ) ) ) $ ( false ) ) )
    d95 : if false then Bool else Bool
    d95 = ( M.M1'.d15 ) $ ( ( M.M1'.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( M.M1'.d37 ) $ ( ( ( M.M1.d25 ) $ ( if false then true else x960 ) ) $ ( if x960 then false else true ) ) ) ) ) $ ( if d70 then true else d87 ) ) )
    d97 : if false then Bool else Bool
    d97 = ( M.M1'.d68 ) $ ( ( M.M1'.d21 ) $ ( if if d70 then d89 else d87 then if true then false else true else if false then d69 else d95 ) )
    d98 : if true then Bool else Bool
    d98 = ( M.M1'.d60 ) $ ( if if d69 then false else false then if d74 then d97 else true else if true then d83 else d74 )
    d99 : if false then Bool else Bool
    d99 = ( M.M1'.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> ( ( M.M1.d40 ) $ ( if x1000 then x1000 else true ) ) $ ( if false then false else x1000 ) ) ) ) $ ( if false then d98 else false ) )
    d101 : if false then Bool else Bool
    d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( M.M1'.d68 ) $ ( ( M.M1'.d58 ) $ ( if false then d70 else x1020 ) ) ) ) ) $ ( if d74 then true else d98 )
    d103 : if false then Bool else Bool
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( M.M1'.d67 ) $ ( if x1040 then d95 else true ) ) ) ) $ ( if d93 then d97 else d87 )
    d105 : if false then Bool else Bool
    d105 = ( ( M.M1.d46 ) $ ( ( M.M1'.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> d83 ) ) ) $ ( false ) ) ) ) $ ( ( M.M1'.d15 ) $ ( ( ( M.M1.d14 ) $ ( false ) ) $ ( true ) ) )
    d107 : if false then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( M.M1.d12 ) $ ( if d91 then true else d73 ) ) $ ( if d73 then true else true ) ) ) ) $ ( if false then d74 else false )
    d109 : if true then Bool else Bool
    d109 = ( M.M1'.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( M.M1'.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> d69 ) ) ) $ ( x1100 ) ) ) ) ) $ ( if true then false else d78 ) )
    d112 : if true then Bool else Bool
    d112 = ( ( M.M1.d40 ) $ ( ( M.M1'.d28 ) $ ( if false then false else d74 ) ) ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d37 ) $ ( if false then true else d92 ) ) )
    d113 : if true then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if false then false else x1140 ) ) ) $ ( if d92 then d85 else false )
    d115 : if true then Bool else Bool
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( M.M1'.d66 ) $ ( ( ( M.M1.d56 ) $ ( if x1160 then d105 else x1160 ) ) $ ( if d95 then d103 else false ) ) ) ) ) $ ( if d113 then true else d91 )
    d117 : if true then Bool else Bool
    d117 = ( M.M1'.d29 ) $ ( if if d87 then true else d74 then if false then d89 else false else if d95 then false else true )
    d118 : if false then Bool else Bool
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( M.M1'.d22 ) $ ( ( M.M1'.d37 ) $ ( ( ( M.M1.d36 ) $ ( if d109 then true else d101 ) ) $ ( if true then x1190 else x1190 ) ) ) ) ) ) $ ( if d70 then d92 else false )
    d120 : if true then Bool else Bool
    d120 = ( ( M.M1.d15 ) $ ( ( M.M1'.d19 ) $ ( ( ( M.M1.d6 ) $ ( d117 ) ) $ ( d83 ) ) ) ) $ ( ( M.M1'.d44 ) $ ( if d105 then d117 else true ) )
    d121 : if false then Bool else Bool
    d121 = ( M.M1'.d28 ) $ ( ( ( M.M1.d32 ) $ ( ( ( M.M1.d28 ) $ ( true ) ) $ ( true ) ) ) $ ( ( M.M1'.d28 ) $ ( ( M.M1'.d56 ) $ ( if true then false else true ) ) ) )
    d122 : if true then Bool else Bool
    d122 = if if false then true else d69 then if d101 then d76 else d117 else if d98 then d109 else d115
    d123 : if true then Bool else Bool
    d123 = ( M.M1'.d60 ) $ ( ( M.M1'.d21 ) $ ( ( M.M1'.d64 ) $ ( ( M.M1'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( M.M1'.d6 ) $ ( if x1240 then x1240 else d107 ) ) ) ) $ ( if d101 then false else true ) ) ) ) )
    d125 : if true then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> ( M.M1'.d37 ) $ ( if false then false else false ) ) ) ) $ ( if d87 then d113 else true )
    d127 : if false then Bool else Bool
    d127 = if if true then d89 else d92 then if true then true else d85 else if true then true else true
    d128 : if true then Bool else Bool
    d128 = ( M.M1'.d8 ) $ ( if if d107 then true else true then if true then d73 else d125 else if d74 then false else true )
    d129 : if false then Bool else Bool
    d129 = ( M.M1'.d34 ) $ ( ( M.M1'.d56 ) $ ( ( ( M.M1.d41 ) $ ( ( M.M1'.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d95 ) ) ) $ ( true ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> false ) ) ) $ ( false ) ) ) )
    d132 : if true then Bool else Bool
    d132 = ( M.M1'.d28 ) $ ( if if d74 then d74 else d78 then if true then d120 else d127 else if true then d121 else d107 )
    d133 : if false then Bool else Bool
    d133 = if if d113 then true else d98 then if d98 then true else false else if d118 then false else false
    d134 : if false then Bool else Bool
    d134 = if if false then false else d127 then if d74 then d69 else d121 else if true then false else d69
    d135 : if false then Bool else Bool
    d135 = ( M.M1'.d63 ) $ ( ( ( M.M1.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( d128 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> false ) ) ) $ ( d70 ) ) )
    d138 : if false then Bool else Bool
    d138 = ( ( M.M1.d64 ) $ ( ( M.M1'.d56 ) $ ( ( M.M1'.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> d127 ) ) ) $ ( false ) ) ) ) ) $ ( if d123 then true else d69 )
    d140 : if true then Bool else Bool
    d140 = ( M.M1'.d4 ) $ ( ( ( M.M1.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> false ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d36 ) $ ( d99 ) ) $ ( d122 ) ) )
    d142 : if true then Bool else Bool
    d142 = ( M.M1'.d64 ) $ ( ( ( M.M1.d12 ) $ ( ( M.M1'.d28 ) $ ( if true then true else d107 ) ) ) $ ( if false then d93 else true ) )
    d143 : if false then Bool else Bool
    d143 = ( M.M1'.d60 ) $ ( ( ( M.M1.d56 ) $ ( ( M.M1'.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> false ) ) ) $ ( d92 ) ) ) ) $ ( ( M.M1'.d19 ) $ ( ( ( M.M1.d37 ) $ ( true ) ) $ ( d112 ) ) ) )
    d145 : if true then Bool else Bool
    d145 = ( ( M.M1.d46 ) $ ( if d69 then true else d140 ) ) $ ( ( M.M1'.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> true ) ) ) $ ( d109 ) ) )
    d147 : if false then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> if d113 then x1480 else d109 ) ) ) $ ( if true then false else d109 )
    d149 : if false then Bool else Bool
    d149 = if if d117 then true else false then if d112 then false else false else if d122 then d128 else d123
    d150 : if false then Bool else Bool
    d150 = if if d109 then d145 else false then if false then true else false else if false then d132 else d135
    d151 : if true then Bool else Bool
    d151 = if if d127 then false else d143 then if d98 then d127 else false else if true then d127 else false
    d152 : if true then Bool else Bool
    d152 = ( M.M1'.d54 ) $ ( if if d99 then d125 else false then if true then true else true else if true then d109 else true )