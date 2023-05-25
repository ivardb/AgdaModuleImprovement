module TypeSize5Test3  where
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
        module M1 ( p20 : if true then Bool else Bool )  where
            d3 : if true then Bool else Bool
            d3 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if false then false else true ) ) ) $ ( if true then p20 else false )
            d5 : if true then Bool else Bool
            d5 = if if false then p20 else true then if p10 then false else p20 else if true then true else p10
            d6 : if false then Bool else Bool
            d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if true then d5 else p10 ) ) ) $ ( if true then true else d3 )
            d8 : if false then Bool else Bool
            d8 = if if true then true else true then if d3 then p10 else true else if p10 then p20 else true
            d9 : if false then Bool else Bool
            d9 = if if p20 then p10 else d8 then if p20 then p20 else d3 else if p10 then true else false
            d10 : if true then Bool else Bool
            d10 = if if false then d8 else p20 then if p20 then false else d6 else if p20 then p20 else p10
            d11 : if true then Bool else Bool
            d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( p20 ) ) ) ) $ ( if p10 then d10 else d5 )
            d14 : if true then Bool else Bool
            d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if true then d11 else x150 ) ) ) $ ( if d11 then p10 else true )
            d16 : if false then Bool else Bool
            d16 = if if true then p10 else p10 then if false then d5 else true else if p20 then p20 else p20
            d17 : if true then Bool else Bool
            d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if p20 then p10 else d14 ) ) ) $ ( if true then d3 else false )
            d19 : if true then Bool else Bool
            d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x210 -> d16 ) ) ) $ ( p10 ) ) ) ) $ ( if false then d11 else d10 )
            d22 : if false then Bool else Bool
            d22 = if if p20 then true else p10 then if true then true else false else if p20 then p10 else false
            d23 : if false then Bool else Bool
            d23 = if if true then false else p10 then if d17 then p20 else p20 else if true then d9 else d19
            d24 : if true then Bool else Bool
            d24 = if if true then d6 else false then if p10 then d8 else d14 else if false then d16 else d10
            d25 : if true then Bool else Bool
            d25 = if if p20 then d23 else d5 then if p20 then p20 else true else if p10 then true else false
            d26 : if true then Bool else Bool
            d26 = if if p20 then p20 else true then if false then false else d14 else if true then false else d10
            d27 : if false then Bool else Bool
            d27 = if if true then false else d16 then if false then d6 else p10 else if false then p10 else p20
            d28 : if false then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> if d5 then d14 else d23 ) ) ) $ ( if p10 then p10 else d5 )
            d30 : if true then Bool else Bool
            d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if false then false else true ) ) ) $ ( if p20 then p20 else p10 )
            d32 : if false then Bool else Bool
            d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> d16 ) ) ) $ ( false ) ) ) ) $ ( if d23 then p20 else d17 )
            d35 : if true then Bool else Bool
            d35 = if if p10 then p20 else true then if true then p10 else p10 else if d14 then d25 else p10
            d36 : if true then Bool else Bool
            d36 = if if true then p20 else d19 then if p10 then false else p20 else if true then p20 else p10
            d37 : if false then Bool else Bool
            d37 = if if p10 then true else false then if d27 then d25 else p20 else if false then false else false
            d38 : if false then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> false ) ) ) $ ( d9 ) ) ) ) $ ( if d23 then p10 else d19 )
            d41 : if true then Bool else Bool
            d41 = if if p20 then false else p20 then if false then p20 else p20 else if p10 then p10 else p10
            d42 : if true then Bool else Bool
            d42 = if if p10 then p10 else d19 then if d37 then p10 else d9 else if p10 then p20 else false
            d43 : if false then Bool else Bool
            d43 = if if p10 then p20 else p10 then if d27 then false else false else if d35 then p10 else true
            d44 : if false then Bool else Bool
            d44 = if if d42 then p20 else true then if true then true else true else if false then p10 else d41
            d45 : if false then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> d44 ) ) ) $ ( d38 ) ) ) ) $ ( if p20 then d41 else d10 )
            d48 : if false then Bool else Bool
            d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> true ) ) ) $ ( d11 ) ) ) ) $ ( if d9 then true else true )
            d51 : if true then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d9 ) ) ) $ ( false ) ) ) ) $ ( if p10 then d16 else false )
            d54 : if false then Bool else Bool
            d54 = if if p20 then false else true then if d27 then p20 else p20 else if d43 then d5 else p10
            d55 : if false then Bool else Bool
            d55 = if if false then d26 else d16 then if false then true else p10 else if true then true else p20
            d56 : if true then Bool else Bool
            d56 = if if d9 then d28 else d14 then if p10 then d16 else false else if d23 then d11 else true
            d57 : if true then Bool else Bool
            d57 = if if true then true else p10 then if true then true else true else if true then p20 else p10
            d58 : if false then Bool else Bool
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> false ) ) ) $ ( p10 ) ) ) ) $ ( if p20 then d57 else false )
            d61 : if true then Bool else Bool
            d61 = if if d8 then true else d11 then if p20 then d16 else true else if d16 then d57 else d14
            d62 : if true then Bool else Bool
            d62 = if if d9 then false else d30 then if true then p10 else false else if d17 then false else p10
            d63 : if true then Bool else Bool
            d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> ( ( Bool -> Bool ) ∋ ( ( λ x650 -> true ) ) ) $ ( d37 ) ) ) ) $ ( if d36 then d10 else false )
            d66 : if false then Bool else Bool
            d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> d3 ) ) ) $ ( p20 ) ) ) ) $ ( if p10 then d62 else true )
        module M1'  = M1 ( false ) 
    d69 : if true then Bool else Bool
    d69 = ( ( M.M1.d45 ) $ ( ( M.M1'.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x700 -> true ) ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x710 -> x710 ) ) ) $ ( true ) ) ) ) )
    d72 : if true then Bool else Bool
    d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if false then true else x730 ) ) ) $ ( if d69 then d69 else d69 )
    d74 : if true then Bool else Bool
    d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( M.M1'.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x760 -> x750 ) ) ) $ ( d69 ) ) ) ) ) $ ( if false then d69 else true )
    d77 : if true then Bool else Bool
    d77 = ( M.M1'.d56 ) $ ( ( ( M.M1.d27 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( d72 ) ) ) $ ( ( M.M1'.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x790 -> x790 ) ) ) $ ( d72 ) ) ) )
    d80 : if false then Bool else Bool
    d80 = ( ( M.M1.d44 ) $ ( ( M.M1'.d56 ) $ ( if d74 then d77 else true ) ) ) $ ( if d74 then d72 else d77 )
    d81 : if true then Bool else Bool
    d81 = ( M.M1'.d45 ) $ ( if if false then true else false then if d69 then d74 else true else if d80 then d72 else d80 )
    d82 : if true then Bool else Bool
    d82 = if if d74 then d80 else d74 then if false then d69 else true else if false then true else true
    d83 : if false then Bool else Bool
    d83 = ( M.M1'.d9 ) $ ( if if false then d77 else d77 then if d82 then d74 else d82 else if d69 then true else d69 )
    d84 : if true then Bool else Bool
    d84 = ( M.M1'.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x850 -> ( ( Bool -> Bool ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( x850 ) ) ) ) $ ( if true then d72 else true ) )
    d87 : if true then Bool else Bool
    d87 = ( M.M1'.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( M.M1'.d55 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x880 ) ) ) $ ( d84 ) ) ) ) ) $ ( if d82 then false else d69 ) )
    d90 : if false then Bool else Bool
    d90 = if if true then d74 else d84 then if false then d80 else true else if d77 then true else d82
    d91 : if false then Bool else Bool
    d91 = ( M.M1'.d30 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x920 -> ( ( M.M1.d26 ) $ ( if false then x920 else d83 ) ) $ ( if d87 then x920 else x920 ) ) ) ) $ ( if false then true else true ) ) ) )
    d93 : if false then Bool else Bool
    d93 = ( ( M.M1.d54 ) $ ( ( M.M1'.d30 ) $ ( ( M.M1'.d11 ) $ ( ( ( M.M1.d41 ) $ ( d69 ) ) $ ( false ) ) ) ) ) $ ( if d83 then d81 else true )
    d94 : if false then Bool else Bool
    d94 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> ( M.M1'.d45 ) $ ( if x950 then d69 else false ) ) ) ) $ ( if d82 then false else d84 )
    d96 : if true then Bool else Bool
    d96 = ( M.M1'.d30 ) $ ( ( ( M.M1.d37 ) $ ( ( M.M1'.d3 ) $ ( ( ( M.M1.d6 ) $ ( d87 ) ) $ ( d87 ) ) ) ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d61 ) $ ( if d77 then true else false ) ) ) )
    d97 : if false then Bool else Bool
    d97 = ( M.M1'.d43 ) $ ( ( ( M.M1.d27 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d82 ) ) ) $ ( false ) ) ) $ ( if false then true else d96 ) )
    d99 : if true then Bool else Bool
    d99 = ( ( M.M1.d14 ) $ ( ( M.M1'.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( false ) ) )
    d102 : if true then Bool else Bool
    d102 = if if false then d96 else d99 then if d97 then d87 else d80 else if d82 then false else false
    d103 : if false then Bool else Bool
    d103 = ( ( M.M1.d17 ) $ ( if false then true else true ) ) $ ( ( ( M.M1.d56 ) $ ( d77 ) ) $ ( d87 ) )
    d104 : if true then Bool else Bool
    d104 = if if true then false else d81 then if true then false else d93 else if d82 then true else d94
    d105 : if false then Bool else Bool
    d105 = ( ( M.M1.d5 ) $ ( ( M.M1'.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> d77 ) ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d42 ) $ ( ( M.M1'.d28 ) $ ( ( ( M.M1.d14 ) $ ( d96 ) ) $ ( d74 ) ) ) )
    d107 : if true then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( M.M1'.d48 ) $ ( if x1080 then d69 else x1080 ) ) ) ) $ ( if false then d80 else false )
    d109 : if false then Bool else Bool
    d109 = ( M.M1'.d24 ) $ ( ( M.M1'.d41 ) $ ( ( ( M.M1.d11 ) $ ( ( M.M1'.d16 ) $ ( ( M.M1'.d51 ) $ ( ( ( M.M1.d57 ) $ ( d94 ) ) $ ( false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> true ) ) ) $ ( false ) ) ) )
    d111 : if true then Bool else Bool
    d111 = ( ( M.M1.d44 ) $ ( ( M.M1'.d9 ) $ ( ( ( M.M1.d42 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( ( M.M1.d38 ) $ ( d109 ) ) $ ( d77 ) )
    d112 : if false then Bool else Bool
    d112 = if if true then d69 else false then if d83 then false else false else if d111 then false else d93
    d113 : if true then Bool else Bool
    d113 = if if d109 then false else d74 then if d77 then d91 else d109 else if true then true else true
    d114 : if true then Bool else Bool
    d114 = ( M.M1'.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( M.M1.d66 ) $ ( if x1150 then true else d105 ) ) $ ( if x1150 then x1150 else false ) ) ) ) $ ( if d74 then true else false ) )
    d116 : if false then Bool else Bool
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then d81 else d105 )
    d119 : if false then Bool else Bool
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( ( M.M1.d24 ) $ ( if d102 then x1200 else x1200 ) ) $ ( if x1200 then x1200 else d94 ) ) ) ) $ ( if d113 then d91 else d72 )
    d121 : if false then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( M.M1'.d27 ) $ ( ( M.M1'.d57 ) $ ( ( ( M.M1.d24 ) $ ( if x1220 then false else false ) ) $ ( if false then x1220 else x1220 ) ) ) ) ) ) $ ( if true then false else true )
    d123 : if true then Bool else Bool
    d123 = if if d97 then true else false then if d74 then false else false else if d94 then false else true
    d124 : if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if d87 then x1250 else true ) ) ) $ ( if true then d114 else d84 )
    d126 : if true then Bool else Bool
    d126 = ( M.M1'.d32 ) $ ( ( M.M1'.d32 ) $ ( ( ( M.M1.d55 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> false ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d24 ) $ ( d109 ) ) $ ( false ) ) ) )
    d128 : if true then Bool else Bool
    d128 = if if true then d96 else d91 then if d83 then true else d111 else if false then true else false
    d129 : if false then Bool else Bool
    d129 = ( M.M1'.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( M.M1'.d36 ) $ ( ( M.M1'.d30 ) $ ( if false then d104 else false ) ) ) ) ) $ ( if d112 then d97 else false ) )
    d131 : if false then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if d96 then x1320 else d81 ) ) ) $ ( if false then d103 else d119 )
    d133 : if false then Bool else Bool
    d133 = ( M.M1'.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( M.M1.d56 ) $ ( if false then d126 else d124 ) ) $ ( if false then d105 else false ) ) ) ) $ ( if d129 then d91 else false ) )
    d135 : if true then Bool else Bool
    d135 = ( M.M1'.d8 ) $ ( ( ( M.M1.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> d69 ) ) ) $ ( d87 ) ) ) $ ( ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> true ) ) ) $ ( false ) ) ) )
    d138 : if false then Bool else Bool
    d138 = ( M.M1'.d38 ) $ ( ( M.M1'.d36 ) $ ( ( ( M.M1.d5 ) $ ( ( M.M1'.d43 ) $ ( if d133 then false else false ) ) ) $ ( ( M.M1'.d35 ) $ ( ( M.M1'.d51 ) $ ( if true then d69 else d84 ) ) ) ) )
    d139 : if true then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( x1400 ) ) ) ) $ ( if d135 then d94 else d69 )
    d142 : if true then Bool else Bool
    d142 = ( ( M.M1.d54 ) $ ( if false then true else false ) ) $ ( if false then true else d96 )
    d143 : if true then Bool else Bool
    d143 = ( ( M.M1.d61 ) $ ( if true then false else d112 ) ) $ ( ( M.M1'.d32 ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d16 ) $ ( ( ( M.M1.d44 ) $ ( d123 ) ) $ ( d105 ) ) ) ) )
    d144 : if true then Bool else Bool
    d144 = ( M.M1'.d38 ) $ ( ( M.M1'.d42 ) $ ( ( M.M1'.d42 ) $ ( ( M.M1'.d22 ) $ ( ( ( M.M1.d35 ) $ ( ( M.M1'.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> d103 ) ) ) $ ( false ) ) ) ) $ ( ( M.M1'.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> false ) ) ) $ ( d81 ) ) ) ) ) ) )
    d147 : if false then Bool else Bool
    d147 = ( M.M1'.d58 ) $ ( ( M.M1'.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> if d90 then x1480 else x1480 ) ) ) $ ( if false then d97 else d84 ) ) )
    d149 : if true then Bool else Bool
    d149 = ( M.M1'.d42 ) $ ( ( M.M1'.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( M.M1.d3 ) $ ( if d93 then x1500 else true ) ) $ ( if false then false else d81 ) ) ) ) $ ( if false then true else d91 ) ) )
    d151 : if false then Bool else Bool
    d151 = ( ( M.M1.d17 ) $ ( ( M.M1'.d54 ) $ ( ( ( M.M1.d35 ) $ ( d143 ) ) $ ( d126 ) ) ) ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d51 ) $ ( ( M.M1'.d28 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> true ) ) ) $ ( d113 ) ) ) ) )
    d153 : if true then Bool else Bool
    d153 = ( ( M.M1.d10 ) $ ( if true then d102 else false ) ) $ ( ( M.M1'.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( d102 ) ) )
    d155 : if true then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> x1570 ) ) ) $ ( x1560 ) ) ) ) $ ( if d153 then d72 else true )
    d158 : if false then Bool else Bool
    d158 = if if true then false else true then if false then false else true else if false then d93 else true
    d159 : if false then Bool else Bool
    d159 = ( ( M.M1.d63 ) $ ( ( ( M.M1.d58 ) $ ( true ) ) $ ( d151 ) ) ) $ ( if d155 then d90 else true )