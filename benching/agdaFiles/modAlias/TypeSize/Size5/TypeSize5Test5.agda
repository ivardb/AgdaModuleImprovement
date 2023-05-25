module TypeSize5Test5  where
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
        module M1 ( p20 : if false then Bool else Bool )  where
            d3 : if false then Bool else Bool
            d3 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> true ) ) ) $ ( p20 ) ) ) ) $ ( if p20 then false else p20 )
            d6 : if true then Bool else Bool
            d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if d3 then d3 else d3 ) ) ) $ ( if p20 then d3 else p10 )
            d8 : if false then Bool else Bool
            d8 = if if p10 then d3 else d3 then if d6 then d6 else true else if p10 then p20 else d6
            d9 : if false then Bool else Bool
            d9 = if if p20 then p20 else true then if d3 then d8 else false else if p10 then p20 else d3
            d10 : if false then Bool else Bool
            d10 = if if p20 then d3 else false then if d9 then d9 else p20 else if p20 then p20 else p20
            d11 : if true then Bool else Bool
            d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if x120 then x120 else true ) ) ) $ ( if d6 then p20 else false )
            d13 : if true then Bool else Bool
            d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d9 ) ) ) $ ( x140 ) ) ) ) $ ( if false then d3 else p10 )
            d16 : if true then Bool else Bool
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> false ) ) ) $ ( d6 ) ) ) ) $ ( if p20 then true else false )
            d19 : if true then Bool else Bool
            d19 = if if d3 then d8 else d13 then if true then d13 else p20 else if d11 then p20 else p20
            d20 : if true then Bool else Bool
            d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if true then p20 else false ) ) ) $ ( if false then true else d8 )
            d22 : if false then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> d6 ) ) ) $ ( d16 ) ) ) ) $ ( if d11 then true else p20 )
            d25 : if true then Bool else Bool
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> ( ( Bool -> Bool ) ∋ ( ( λ x270 -> p10 ) ) ) $ ( false ) ) ) ) $ ( if d11 then p10 else d10 )
            d28 : if false then Bool else Bool
            d28 = if if p10 then false else d10 then if d13 then false else true else if p10 then false else d11
            d29 : if true then Bool else Bool
            d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> p10 ) ) ) $ ( false ) ) ) ) $ ( if p10 then d25 else p10 )
            d32 : if true then Bool else Bool
            d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if false then d28 else p10 ) ) ) $ ( if true then p10 else d13 )
            d34 : if false then Bool else Bool
            d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if d19 then p20 else d6 ) ) ) $ ( if false then d11 else true )
            d36 : if true then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if true then p20 else false ) ) ) $ ( if true then d3 else false )
            d38 : if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if d16 then p20 else false ) ) ) $ ( if d28 then true else p20 )
            d40 : if true then Bool else Bool
            d40 = if if p10 then p10 else d25 then if p20 then d19 else p10 else if p10 then false else p10
            d41 : if true then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> x420 ) ) ) $ ( d29 ) ) ) ) $ ( if p20 then p20 else p10 )
            d44 : if false then Bool else Bool
            d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if true then false else true ) ) ) $ ( if d8 then d20 else d22 )
            d46 : if false then Bool else Bool
            d46 = if if false then p10 else d29 then if true then d34 else d29 else if false then d11 else d40
            d47 : if true then Bool else Bool
            d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if d25 then true else x480 ) ) ) $ ( if d29 then true else d22 )
            d49 : if true then Bool else Bool
            d49 = if if d36 then false else d20 then if p10 then p20 else true else if d41 then p20 else d40
            d50 : if false then Bool else Bool
            d50 = if if d38 then d41 else false then if p10 then p10 else d19 else if p20 then p20 else p20
            d51 : if true then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> x520 ) ) ) $ ( d6 ) ) ) ) $ ( if false then d34 else p20 )
            d54 : if false then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> x550 ) ) ) $ ( true ) ) ) ) $ ( if p10 then p10 else d41 )
            d57 : if false then Bool else Bool
            d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> d11 ) ) ) $ ( x580 ) ) ) ) $ ( if p10 then d10 else p20 )
            d60 : if true then Bool else Bool
            d60 = if if p20 then true else d25 then if d34 then d44 else p20 else if d36 then d32 else d40
            d61 : if true then Bool else Bool
            d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if d19 then p20 else true ) ) ) $ ( if p10 then p20 else p20 )
            d63 : if true then Bool else Bool
            d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> if false then x640 else d22 ) ) ) $ ( if p10 then d22 else d20 )
            d65 : if true then Bool else Bool
            d65 = if if d20 then p20 else d41 then if d60 then d38 else d60 else if false then p10 else false
            d66 : if false then Bool else Bool
            d66 = if if true then d50 else p10 then if false then p10 else true else if d44 then true else d29
            d67 : if false then Bool else Bool
            d67 = if if d57 then true else d60 then if true then p20 else d22 else if true then true else d32
            d68 : if false then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if p10 then true else d38 ) ) ) $ ( if false then true else false )
            d70 : if true then Bool else Bool
            d70 = if if p20 then true else d67 then if d44 then d41 else true else if p10 then d60 else d38
            d71 : if false then Bool else Bool
            d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if p10 then d22 else d6 ) ) ) $ ( if d61 then false else true )
            d73 : if false then Bool else Bool
            d73 = if if d38 then d32 else true then if false then false else d34 else if true then p20 else p10
            d74 : if false then Bool else Bool
            d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if p10 then d66 else true ) ) ) $ ( if false then d16 else p20 )
            d76 : if false then Bool else Bool
            d76 = if if p10 then p10 else d61 then if p10 then d3 else d32 else if d28 then d34 else d49
        module M1'  = M1 ( p10 ) 
    d77 : if true then Bool else Bool
    d77 = ( ( M.M1.d8 ) $ ( ( M.M1'.d32 ) $ ( ( ( M.M1.d46 ) $ ( true ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x780 -> false ) ) ) $ ( true ) ) )
    d79 : if true then Bool else Bool
    d79 = ( ( M.M1.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x800 -> false ) ) ) $ ( d77 ) ) ) $ ( if d77 then false else true )
    d81 : if false then Bool else Bool
    d81 = ( M.M1'.d47 ) $ ( if if d77 then false else d79 then if d79 then d77 else false else if d77 then true else true )
    d82 : if true then Bool else Bool
    d82 = if if true then d79 else d79 then if false then false else false else if d81 then false else d81
    d83 : if false then Bool else Bool
    d83 = ( M.M1'.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( M.M1'.d73 ) $ ( ( M.M1'.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x850 -> true ) ) ) $ ( d81 ) ) ) ) ) ) $ ( if false then d79 else d81 ) )
    d86 : if false then Bool else Bool
    d86 = ( M.M1'.d9 ) $ ( if if true then d81 else true then if d81 then d82 else d83 else if true then false else d83 )
    d87 : if false then Bool else Bool
    d87 = ( ( Bool -> Bool ) ∋ ( ( λ x880 -> ( ( M.M1.d49 ) $ ( if d81 then true else d77 ) ) $ ( if x880 then true else true ) ) ) ) $ ( if true then d83 else false )
    d89 : if false then Bool else Bool
    d89 = ( ( M.M1.d3 ) $ ( ( M.M1'.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d83 ) ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d61 ) $ ( ( M.M1'.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x910 -> false ) ) ) $ ( d83 ) ) ) )
    d92 : if true then Bool else Bool
    d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if x930 then x930 else true ) ) ) $ ( if d83 then d83 else d79 )
    d94 : if false then Bool else Bool
    d94 = ( M.M1'.d60 ) $ ( ( M.M1'.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if d89 then true else false ) ) ) $ ( if d81 then d77 else d89 ) ) )
    d96 : if false then Bool else Bool
    d96 = if if d89 then false else d92 then if d81 then true else d81 else if d89 then true else d77
    d97 : if true then Bool else Bool
    d97 = if if d83 then true else true then if d87 then d82 else d77 else if d94 then false else true
    d98 : if false then Bool else Bool
    d98 = ( M.M1'.d73 ) $ ( ( M.M1'.d65 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x990 -> ( M.M1'.d3 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> false ) ) ) $ ( d86 ) ) ) ) ) $ ( if d97 then d89 else d77 ) ) )
    d101 : if true then Bool else Bool
    d101 = if if false then d92 else d94 then if true then d83 else true else if true then true else false
    d102 : if true then Bool else Bool
    d102 = ( M.M1'.d63 ) $ ( ( M.M1'.d22 ) $ ( ( M.M1'.d36 ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> x1030 ) ) ) $ ( d101 ) ) ) $ ( ( M.M1'.d11 ) $ ( ( ( M.M1.d49 ) $ ( true ) ) $ ( d87 ) ) ) ) ) ) ) )
    d104 : if false then Bool else Bool
    d104 = ( M.M1'.d32 ) $ ( ( ( M.M1.d6 ) $ ( ( M.M1'.d57 ) $ ( ( M.M1'.d61 ) $ ( if d94 then d97 else d89 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( d79 ) ) )
    d106 : if true then Bool else Bool
    d106 = ( M.M1'.d32 ) $ ( if if d98 then false else d92 then if true then true else d86 else if true then d81 else false )
    d107 : if false then Bool else Bool
    d107 = if if false then d77 else d98 then if d101 then d97 else false else if true then d79 else d94
    d108 : if true then Bool else Bool
    d108 = if if false then d79 else d89 then if true then true else d77 else if false then d92 else true
    d109 : if true then Bool else Bool
    d109 = ( M.M1'.d28 ) $ ( if if true then false else false then if d92 then false else false else if true then d82 else d89 )
    d110 : if false then Bool else Bool
    d110 = if if d79 then d83 else d92 then if false then d97 else d77 else if false then false else false
    d111 : if false then Bool else Bool
    d111 = ( ( M.M1.d29 ) $ ( ( M.M1'.d34 ) $ ( ( M.M1'.d44 ) $ ( if d101 then false else d86 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> true ) ) ) $ ( d87 ) )
    d113 : if true then Bool else Bool
    d113 = ( M.M1'.d32 ) $ ( if if false then true else true then if false then d98 else true else if false then false else d97 )
    d114 : if true then Bool else Bool
    d114 = ( M.M1'.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> d98 ) ) ) $ ( true ) ) ) ) $ ( if d83 then true else d83 ) )
    d117 : if true then Bool else Bool
    d117 = ( ( M.M1.d38 ) $ ( if true then false else d92 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> x1180 ) ) ) $ ( d108 ) )
    d119 : if true then Bool else Bool
    d119 = if if d108 then d102 else d117 then if false then d94 else false else if true then true else d89
    d120 : if false then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> d82 ) ) ) $ ( d111 ) ) ) ) $ ( if d113 then false else d104 )
    d123 : if true then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( M.M1'.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> d111 ) ) ) $ ( true ) ) ) ) ) $ ( if d104 then false else d104 )
    d126 : if true then Bool else Bool
    d126 = ( M.M1'.d70 ) $ ( if if true then true else d89 then if true then false else false else if d111 then d102 else true )
    d127 : if false then Bool else Bool
    d127 = if if true then true else false then if d81 then true else true else if d120 then d83 else true
    d128 : if true then Bool else Bool
    d128 = ( ( M.M1.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> d96 ) ) ) $ ( false ) )
    d131 : if false then Bool else Bool
    d131 = ( ( M.M1.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> true ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d57 ) $ ( d77 ) ) $ ( true ) )
    d133 : if false then Bool else Bool
    d133 = ( M.M1'.d49 ) $ ( ( ( M.M1.d8 ) $ ( ( M.M1'.d44 ) $ ( ( ( M.M1.d38 ) $ ( d117 ) ) $ ( true ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> false ) ) ) $ ( false ) ) )
    d135 : if true then Bool else Bool
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> d86 ) ) ) $ ( x1360 ) ) ) ) $ ( if d120 then d133 else d127 )
    d138 : if true then Bool else Bool
    d138 = ( M.M1'.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> ( M.M1'.d41 ) $ ( ( M.M1'.d70 ) $ ( if d117 then false else x1390 ) ) ) ) ) $ ( if d82 then d117 else false ) )
    d140 : if false then Bool else Bool
    d140 = ( M.M1'.d46 ) $ ( ( M.M1'.d71 ) $ ( ( ( M.M1.d50 ) $ ( if d97 then d87 else true ) ) $ ( if d119 then d92 else false ) ) )
    d141 : if false then Bool else Bool
    d141 = ( M.M1'.d11 ) $ ( ( M.M1'.d32 ) $ ( if if false then true else false then if true then d120 else true else if d106 then d111 else false ) )
    d142 : if true then Bool else Bool
    d142 = if if true then false else false then if true then false else d81 else if false then true else d110
    d143 : if true then Bool else Bool
    d143 = ( M.M1'.d44 ) $ ( ( M.M1'.d44 ) $ ( ( M.M1'.d76 ) $ ( ( M.M1'.d68 ) $ ( ( M.M1'.d34 ) $ ( ( ( M.M1.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d22 ) $ ( ( M.M1'.d76 ) $ ( ( ( M.M1.d3 ) $ ( d92 ) ) $ ( d140 ) ) ) ) ) ) ) ) )
    d145 : if false then Bool else Bool
    d145 = ( ( M.M1.d66 ) $ ( ( ( M.M1.d66 ) $ ( false ) ) $ ( d79 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( d89 ) )
    d147 : if true then Bool else Bool
    d147 = ( M.M1'.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> if d87 then d114 else x1480 ) ) ) $ ( if d138 then true else d133 ) )
    d149 : if false then Bool else Bool
    d149 = if if false then d141 else d86 then if false then false else d79 else if true then d102 else true
    d150 : if false then Bool else Bool
    d150 = ( M.M1'.d74 ) $ ( if if true then true else true then if d110 then false else d97 else if d133 then d135 else false )
    d151 : if true then Bool else Bool
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> if d126 then false else true ) ) ) $ ( if d110 then d120 else d149 )
    d153 : if true then Bool else Bool
    d153 = ( M.M1'.d68 ) $ ( ( M.M1'.d68 ) $ ( ( M.M1'.d73 ) $ ( ( M.M1'.d66 ) $ ( ( M.M1'.d49 ) $ ( ( ( M.M1.d71 ) $ ( ( ( M.M1.d60 ) $ ( d145 ) ) $ ( d104 ) ) ) $ ( ( ( M.M1.d74 ) $ ( false ) ) $ ( false ) ) ) ) ) ) )
    d154 : if true then Bool else Bool
    d154 = if if true then d141 else true then if d133 then d87 else true else if d92 then d87 else d110
    d155 : if true then Bool else Bool
    d155 = ( M.M1'.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if true then false else false ) ) ) $ ( if false then d153 else false ) )
    d157 : if true then Bool else Bool
    d157 = ( ( M.M1.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> d109 ) ) ) $ ( d109 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d127 ) ) ) $ ( false ) )
    d160 : if false then Bool else Bool
    d160 = ( M.M1'.d10 ) $ ( ( M.M1'.d74 ) $ ( ( ( M.M1.d70 ) $ ( ( ( M.M1.d51 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> d83 ) ) ) $ ( d96 ) ) ) )
    d162 : if false then Bool else Bool
    d162 = ( ( M.M1.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d22 ) $ ( d109 ) ) $ ( true ) )