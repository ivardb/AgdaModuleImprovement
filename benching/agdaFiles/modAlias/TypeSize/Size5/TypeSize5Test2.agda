module TypeSize5Test2  where
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
        module M1 ( p20 : if true then Bool else Bool )  where
            d3 : if false then Bool else Bool
            d3 = if if true then p20 else p20 then if true then true else p10 else if false then p20 else p10
            d4 : if false then Bool else Bool
            d4 = if if false then d3 else false then if false then p10 else d3 else if false then false else false
            d5 : if false then Bool else Bool
            d5 = if if d3 then d3 else p10 then if p20 then p10 else d4 else if false then d3 else p20
            d6 : if true then Bool else Bool
            d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> p10 ) ) ) $ ( d3 ) ) ) ) $ ( if d4 then p10 else d5 )
            d9 : if false then Bool else Bool
            d9 = if if p20 then true else p10 then if d5 then p20 else d3 else if d4 then d3 else d3
            d10 : if false then Bool else Bool
            d10 = if if false then true else p20 then if false then p20 else d6 else if true then false else false
            d11 : if false then Bool else Bool
            d11 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if d6 then p20 else d4 ) ) ) $ ( if false then false else d9 )
            d13 : if false then Bool else Bool
            d13 = if if d3 then false else true then if p10 then d11 else true else if p10 then p20 else false
            d14 : if true then Bool else Bool
            d14 = if if d3 then d10 else true then if p20 then d10 else d10 else if false then p10 else d5
            d15 : if true then Bool else Bool
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> p10 ) ) ) $ ( false ) ) ) ) $ ( if p10 then p10 else p10 )
            d18 : if false then Bool else Bool
            d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> true ) ) ) $ ( d4 ) ) ) ) $ ( if d5 then p20 else d15 )
            d21 : if true then Bool else Bool
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> d10 ) ) ) $ ( d15 ) ) ) ) $ ( if d13 then p10 else p10 )
            d24 : if false then Bool else Bool
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> d15 ) ) ) $ ( d6 ) ) ) ) $ ( if true then p20 else p10 )
            d27 : if true then Bool else Bool
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if p10 then d3 else p10 ) ) ) $ ( if d6 then true else true )
            d29 : if false then Bool else Bool
            d29 = if if d10 then false else d11 then if d18 then true else p10 else if d14 then d4 else p20
            d30 : if false then Bool else Bool
            d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if d18 then x310 else true ) ) ) $ ( if p20 then p20 else false )
            d32 : if false then Bool else Bool
            d32 = if if p20 then p10 else d4 then if p20 then false else true else if d15 then p20 else d27
            d33 : if true then Bool else Bool
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> d13 ) ) ) $ ( d24 ) ) ) ) $ ( if false then p10 else d3 )
            d36 : if true then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if true then d13 else p20 ) ) ) $ ( if p20 then false else d32 )
            d38 : if true then Bool else Bool
            d38 = if if p20 then p20 else p10 then if true then p10 else p20 else if true then false else false
            d39 : if false then Bool else Bool
            d39 = if if true then p20 else p20 then if p10 then d27 else false else if d9 then true else d10
            d40 : if true then Bool else Bool
            d40 = if if d24 then p20 else d9 then if d18 then p20 else false else if d24 then true else p10
            d41 : if false then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if d33 then true else false ) ) ) $ ( if p20 then p10 else true )
            d43 : if true then Bool else Bool
            d43 = if if p20 then false else p10 then if d4 then p10 else d14 else if d38 then p10 else p20
            d44 : if false then Bool else Bool
            d44 = if if false then p10 else d11 then if false then true else d15 else if d38 then p20 else p10
            d45 : if false then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d9 then false else false ) ) ) $ ( if p10 then d13 else d27 )
            d47 : if true then Bool else Bool
            d47 = if if true then d32 else true then if p20 then true else false else if d4 then p10 else d27
            d48 : if true then Bool else Bool
            d48 = if if true then d30 else false then if p20 then d44 else true else if false then false else p20
            d49 : if true then Bool else Bool
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if false then true else false ) ) ) $ ( if true then true else d30 )
            d51 : if false then Bool else Bool
            d51 = if if true then p10 else p20 then if false then d29 else true else if p20 then false else p10
            d52 : if false then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if p20 then p20 else p20 ) ) ) $ ( if p10 then p20 else d40 )
            d54 : if true then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d10 ) ) ) $ ( p10 ) ) ) ) $ ( if false then true else p10 )
            d57 : if true then Bool else Bool
            d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> d27 ) ) ) $ ( p20 ) ) ) ) $ ( if p20 then d5 else false )
            d60 : if false then Bool else Bool
            d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if false then false else false ) ) ) $ ( if p10 then false else false )
            d62 : if true then Bool else Bool
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> d36 ) ) ) $ ( p10 ) ) ) ) $ ( if d29 then true else d30 )
            d65 : if false then Bool else Bool
            d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> d3 ) ) ) $ ( x660 ) ) ) ) $ ( if true then false else true )
            d68 : if false then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d44 ) ) ) $ ( true ) ) ) ) $ ( if d39 then d49 else d4 )
            d71 : if false then Bool else Bool
            d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> if false then d15 else x720 ) ) ) $ ( if p20 then d5 else p10 )
            d73 : if true then Bool else Bool
            d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if d11 then true else true ) ) ) $ ( if d13 then p20 else p10 )
            d75 : if false then Bool else Bool
            d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( Bool -> Bool ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( p20 ) ) ) ) $ ( if true then d3 else false )
        module M1'  = M1 ( p10 ) 
    d78 : if false then Bool else Bool
    d78 = ( M.M1'.d44 ) $ ( if if true then true else false then if true then true else false else if true then true else true )
    d79 : if true then Bool else Bool
    d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( M.M1'.d43 ) $ ( ( M.M1'.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x810 -> x810 ) ) ) $ ( true ) ) ) ) ) ) $ ( if true then d78 else false )
    d82 : if false then Bool else Bool
    d82 = if if false then false else true then if d79 then d79 else false else if d78 then d79 else d78
    d83 : if false then Bool else Bool
    d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( M.M1.d4 ) $ ( if true then true else x840 ) ) $ ( if true then true else x840 ) ) ) ) $ ( if d82 then true else d78 )
    d85 : if false then Bool else Bool
    d85 = if if d78 then d82 else d79 then if d79 then d78 else d83 else if true then true else false
    d86 : if false then Bool else Bool
    d86 = if if d82 then true else true then if d79 then d78 else d83 else if d78 then d83 else d83
    d87 : if true then Bool else Bool
    d87 = if if false then d85 else true then if d83 then d78 else true else if d78 then true else false
    d88 : if true then Bool else Bool
    d88 = ( M.M1'.d21 ) $ ( ( M.M1'.d60 ) $ ( if if d86 then d83 else d85 then if d79 then false else d86 else if d83 then true else false ) )
    d89 : if true then Bool else Bool
    d89 = ( M.M1'.d18 ) $ ( ( ( M.M1.d3 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x900 -> true ) ) ) $ ( true ) ) ) $ ( ( ( M.M1.d33 ) $ ( d78 ) ) $ ( true ) ) )
    d91 : if true then Bool else Bool
    d91 = if if false then true else d86 then if d89 then d78 else d85 else if false then d87 else d83
    d92 : if true then Bool else Bool
    d92 = if if true then d78 else d79 then if false then d79 else d78 else if false then false else false
    d93 : if false then Bool else Bool
    d93 = ( ( M.M1.d4 ) $ ( ( ( M.M1.d10 ) $ ( d87 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( true ) )
    d95 : if false then Bool else Bool
    d95 = ( M.M1'.d62 ) $ ( if if true then true else d93 then if false then true else d93 else if d78 then false else d91 )
    d96 : if true then Bool else Bool
    d96 = ( M.M1'.d65 ) $ ( if if d87 then true else d83 then if d86 then true else true else if d79 then true else true )
    d97 : if false then Bool else Bool
    d97 = ( M.M1'.d73 ) $ ( ( M.M1'.d51 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( M.M1'.d5 ) $ ( if x980 then false else x980 ) ) ) ) $ ( if true then d78 else false ) ) )
    d99 : if false then Bool else Bool
    d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( true ) ) ) ) $ ( if false then d87 else d78 )
    d102 : if false then Bool else Bool
    d102 = ( ( M.M1.d75 ) $ ( ( ( M.M1.d48 ) $ ( false ) ) $ ( d93 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> x1030 ) ) ) $ ( true ) )
    d104 : if false then Bool else Bool
    d104 = ( M.M1'.d4 ) $ ( ( ( M.M1.d4 ) $ ( ( ( M.M1.d39 ) $ ( d89 ) ) $ ( d95 ) ) ) $ ( ( M.M1'.d18 ) $ ( ( ( M.M1.d39 ) $ ( true ) ) $ ( true ) ) ) )
    d105 : if false then Bool else Bool
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> ( M.M1'.d15 ) $ ( ( ( M.M1.d15 ) $ ( if x1060 then x1060 else d87 ) ) $ ( if x1060 then d89 else x1060 ) ) ) ) ) $ ( if d82 then d89 else true )
    d107 : if false then Bool else Bool
    d107 = ( M.M1'.d60 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( M.M1.d41 ) $ ( if x1080 then d92 else d85 ) ) $ ( if true then d78 else x1080 ) ) ) ) $ ( if true then d96 else d88 ) )
    d109 : if true then Bool else Bool
    d109 = ( M.M1'.d27 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( ( M.M1.d43 ) $ ( if x1100 then d79 else x1100 ) ) $ ( if x1100 then x1100 else d83 ) ) ) ) $ ( if d104 then false else d88 ) )
    d111 : if false then Bool else Bool
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( ( M.M1.d39 ) $ ( if d102 then d102 else true ) ) $ ( if false then x1120 else x1120 ) ) ) ) $ ( if d82 then false else d104 )
    d113 : if true then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> false ) ) ) $ ( d96 ) ) ) ) $ ( if false then false else d102 )
    d116 : if true then Bool else Bool
    d116 = if if d93 then d78 else d86 then if false then false else d113 else if true then false else true
    d117 : if false then Bool else Bool
    d117 = ( ( M.M1.d39 ) $ ( ( M.M1'.d4 ) $ ( ( ( M.M1.d41 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d24 ) $ ( ( ( M.M1.d10 ) $ ( d105 ) ) $ ( false ) ) )
    d118 : if true then Bool else Bool
    d118 = if if d99 then d92 else true then if d97 then false else d111 else if true then true else d83
    d119 : if false then Bool else Bool
    d119 = ( ( M.M1.d62 ) $ ( ( M.M1'.d43 ) $ ( if false then d116 else true ) ) ) $ ( if d104 then d97 else d118 )
    d120 : if true then Bool else Bool
    d120 = ( ( M.M1.d49 ) $ ( ( M.M1'.d6 ) $ ( if d113 then d78 else d79 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> true ) ) ) $ ( true ) )
    d122 : if true then Bool else Bool
    d122 = ( ( M.M1.d21 ) $ ( ( ( M.M1.d73 ) $ ( d102 ) ) $ ( true ) ) ) $ ( if d88 then d119 else false )
    d123 : if true then Bool else Bool
    d123 = if if false then true else false then if true then d99 else d99 else if false then d82 else d95
    d124 : if false then Bool else Bool
    d124 = if if true then true else d123 then if true then d83 else true else if d87 then d85 else d107
    d125 : if true then Bool else Bool
    d125 = ( ( M.M1.d62 ) $ ( ( ( M.M1.d68 ) $ ( true ) ) $ ( d119 ) ) ) $ ( ( M.M1'.d36 ) $ ( if false then d113 else false ) )
    d126 : if true then Bool else Bool
    d126 = ( M.M1'.d30 ) $ ( ( ( M.M1.d45 ) $ ( ( ( M.M1.d15 ) $ ( d118 ) ) $ ( d118 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( true ) ) )
    d128 : if true then Bool else Bool
    d128 = ( M.M1'.d24 ) $ ( ( M.M1'.d71 ) $ ( ( M.M1'.d14 ) $ ( ( ( M.M1.d54 ) $ ( ( ( M.M1.d60 ) $ ( true ) ) $ ( d102 ) ) ) $ ( if true then d111 else false ) ) ) )
    d129 : if true then Bool else Bool
    d129 = ( M.M1'.d15 ) $ ( ( M.M1'.d68 ) $ ( if if d102 then d111 else false then if false then d123 else d93 else if true then d113 else true ) )
    d130 : if false then Bool else Bool
    d130 = ( ( M.M1.d51 ) $ ( ( M.M1'.d6 ) $ ( ( ( M.M1.d18 ) $ ( false ) ) $ ( d107 ) ) ) ) $ ( ( M.M1'.d13 ) $ ( ( M.M1'.d21 ) $ ( ( M.M1'.d10 ) $ ( if false then true else true ) ) ) )
    d131 : if true then Bool else Bool
    d131 = if if true then d111 else d125 then if true then d92 else d95 else if d111 then true else false
    d132 : if false then Bool else Bool
    d132 = if if d86 then true else false then if d120 then d105 else true else if d78 then true else d102
    d133 : if true then Bool else Bool
    d133 = ( M.M1'.d49 ) $ ( if if d85 then d95 else false then if d89 then false else true else if d97 then true else true )
    d134 : if true then Bool else Bool
    d134 = if if true then false else true then if d79 then d96 else false else if d85 then d124 else d92
    d135 : if true then Bool else Bool
    d135 = ( ( M.M1.d24 ) $ ( ( M.M1'.d39 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> false ) ) ) $ ( d119 ) ) ) ) $ ( ( M.M1'.d38 ) $ ( if false then d89 else true ) )
    d137 : if true then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( M.M1'.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> true ) ) ) $ ( d113 ) ) ) ) ) $ ( if d116 then true else d123 )
    d140 : if true then Bool else Bool
    d140 = ( ( M.M1.d60 ) $ ( ( ( M.M1.d40 ) $ ( d86 ) ) $ ( d105 ) ) ) $ ( ( M.M1'.d29 ) $ ( ( M.M1'.d62 ) $ ( ( M.M1'.d36 ) $ ( if true then d107 else d125 ) ) ) )
    d141 : if false then Bool else Bool
    d141 = ( M.M1'.d43 ) $ ( ( ( M.M1.d47 ) $ ( if d140 then true else false ) ) $ ( ( M.M1'.d33 ) $ ( if d134 then true else d140 ) ) )
    d142 : if false then Bool else Bool
    d142 = ( M.M1'.d43 ) $ ( ( M.M1'.d13 ) $ ( ( M.M1'.d73 ) $ ( if if d102 then false else d107 then if d96 then d116 else true else if d82 then d123 else d129 ) ) )
    d143 : if false then Bool else Bool
    d143 = if if d99 then true else false then if d79 then false else d97 else if true then true else d126
    d144 : if false then Bool else Bool
    d144 = ( M.M1'.d9 ) $ ( ( ( M.M1.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> d97 ) ) ) $ ( d120 ) ) ) $ ( ( M.M1'.d62 ) $ ( ( ( M.M1.d33 ) $ ( true ) ) $ ( d93 ) ) ) )
    d146 : if false then Bool else Bool
    d146 = ( M.M1'.d65 ) $ ( ( M.M1'.d71 ) $ ( ( ( M.M1.d24 ) $ ( if d79 then d79 else d107 ) ) $ ( if d140 then d140 else d97 ) ) )
    d147 : if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> d95 ) ) ) $ ( d125 ) ) ) ) $ ( if false then false else d109 )
    d150 : if false then Bool else Bool
    d150 = ( ( M.M1.d15 ) $ ( ( ( M.M1.d36 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> true ) ) ) $ ( true ) )