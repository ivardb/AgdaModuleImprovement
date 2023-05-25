module TypeSize5Test14  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : if false then Bool else Bool )  where
            d4 : if false then Bool else Bool
            d4 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if p30 then false else p10 )
            d7 : if false then Bool else Bool
            d7 = if if p30 then p10 else d4 then if true then p30 else p10 else if false then true else p30
            d8 : if true then Bool else Bool
            d8 = if if false then false else false then if true then false else false else if p10 then false else false
            d9 : if true then Bool else Bool
            d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if p30 then d7 else false ) ) ) $ ( if false then d7 else false )
            d11 : if true then Bool else Bool
            d11 = if if d7 then d8 else d9 then if true then p10 else d7 else if d8 then p30 else p30
            d12 : if false then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> true ) ) ) $ ( d7 ) ) ) ) $ ( if d11 then d11 else d7 )
            d15 : if false then Bool else Bool
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d4 then false else d8 ) ) ) $ ( if p10 then d9 else true )
            d17 : if false then Bool else Bool
            d17 = if if true then p30 else false then if d8 then false else d8 else if p10 then p30 else true
            d18 : if false then Bool else Bool
            d18 = if if false then true else true then if true then true else p30 else if false then d15 else d4
            d19 : if false then Bool else Bool
            d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if p10 then d18 else false ) ) ) $ ( if p10 then true else false )
            d21 : if true then Bool else Bool
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> p30 ) ) ) $ ( true ) ) ) ) $ ( if d11 then false else p10 )
            d24 : if true then Bool else Bool
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> p10 ) ) ) $ ( false ) ) ) ) $ ( if d11 then d7 else d11 )
            d27 : if false then Bool else Bool
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if d7 then x280 else p10 ) ) ) $ ( if p30 then d15 else false )
            d29 : if false then Bool else Bool
            d29 = if if d19 then p10 else p10 then if false then p30 else false else if p10 then false else p10
            d30 : if false then Bool else Bool
            d30 = if if true then d9 else false then if p30 then false else p10 else if false then d24 else false
            d31 : if false then Bool else Bool
            d31 = if if true then d18 else true then if p30 then true else d19 else if d24 then d29 else p30
            d32 : if true then Bool else Bool
            d32 = if if false then d24 else d21 then if d19 then true else d17 else if d19 then p10 else true
            d33 : if true then Bool else Bool
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if d15 then x340 else p10 ) ) ) $ ( if d27 then true else d32 )
            d35 : if true then Bool else Bool
            d35 = if if p10 then d9 else d27 then if p30 then d19 else d17 else if true then p30 else p10
            d36 : if false then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if true then true else p10 ) ) ) $ ( if false then true else d11 )
            d38 : if false then Bool else Bool
            d38 = if if d19 then d27 else true then if d31 then p30 else true else if true then false else true
            d39 : if true then Bool else Bool
            d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if false then x400 else d38 ) ) ) $ ( if p30 then p10 else false )
            d41 : if false then Bool else Bool
            d41 = if if p30 then true else false then if false then d39 else d4 else if p10 then true else p10
            d42 : if true then Bool else Bool
            d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> if d30 then p30 else x430 ) ) ) $ ( if d18 then p10 else p10 )
            d44 : if false then Bool else Bool
            d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if false then false else true )
            d47 : if false then Bool else Bool
            d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> ( ( Bool -> Bool ) ∋ ( ( λ x490 -> x480 ) ) ) $ ( d24 ) ) ) ) $ ( if true then d12 else false )
            d50 : if false then Bool else Bool
            d50 = if if false then d38 else false then if d31 then p10 else d9 else if false then p30 else d44
            d51 : if true then Bool else Bool
            d51 = if if false then false else false then if true then false else false else if d39 then d30 else true
            d52 : if false then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> ( ( Bool -> Bool ) ∋ ( ( λ x540 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if true then false else true )
            d55 : if false then Bool else Bool
            d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> ( ( Bool -> Bool ) ∋ ( ( λ x570 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then true else d18 )
            d58 : if true then Bool else Bool
            d58 = if if p30 then p30 else d42 then if p10 then true else d30 else if d24 then false else true
            d59 : if true then Bool else Bool
            d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( false ) ) ) ) $ ( if d31 then p10 else false )
            d62 : if false then Bool else Bool
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if false then true else true )
            d65 : if true then Bool else Bool
            d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> ( ( Bool -> Bool ) ∋ ( ( λ x670 -> d58 ) ) ) $ ( d18 ) ) ) ) $ ( if p30 then false else d42 )
            d68 : if false then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> if x690 then p10 else d52 ) ) ) $ ( if p30 then p30 else d58 )
            d70 : if true then Bool else Bool
            d70 = if if p10 then true else p10 then if true then d18 else true else if d31 then false else p30
            d71 : if false then Bool else Bool
            d71 = if if true then false else true then if false then p10 else true else if p30 then true else p30
            d72 : if true then Bool else Bool
            d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> if x730 then p10 else false ) ) ) $ ( if p30 then p10 else false )
            d74 : if false then Bool else Bool
            d74 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> d27 ) ) ) $ ( d32 ) ) ) ) $ ( if true then d51 else d12 )
            d77 : if false then Bool else Bool
            d77 = if if p10 then p10 else d72 then if d21 then d18 else false else if p30 then false else false
        module M1'  = M1 ( p10 ) 
    d78 : if true then Bool else Bool
    d78 = ( ( M.M1.d32 ) $ ( if false then true else false ) ) $ ( ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x790 -> true ) ) ) $ ( false ) ) )
    d80 : if true then Bool else Bool
    d80 = ( M.M1'.d52 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x810 -> ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x820 -> false ) ) ) $ ( x810 ) ) ) ) ) $ ( if true then true else d78 ) )
    d83 : if true then Bool else Bool
    d83 = ( ( M.M1.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( d80 ) ) ) $ ( ( M.M1'.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x850 -> false ) ) ) $ ( true ) ) )
    d86 : if true then Bool else Bool
    d86 = if if d83 then false else false then if d78 then true else d83 else if d83 then true else true
    d87 : if false then Bool else Bool
    d87 = if if false then d80 else d86 then if true then d80 else false else if d83 then d80 else false
    d88 : if false then Bool else Bool
    d88 = ( M.M1'.d36 ) $ ( ( ( M.M1.d29 ) $ ( ( ( M.M1.d74 ) $ ( d86 ) ) $ ( d78 ) ) ) $ ( if false then false else false ) )
    d89 : if false then Bool else Bool
    d89 = ( M.M1'.d4 ) $ ( ( ( M.M1.d12 ) $ ( ( M.M1'.d59 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x900 -> d87 ) ) ) $ ( false ) ) ) ) $ ( if d86 then d80 else d87 ) )
    d91 : if true then Bool else Bool
    d91 = ( M.M1'.d59 ) $ ( ( M.M1'.d51 ) $ ( ( M.M1'.d7 ) $ ( ( ( M.M1.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x920 -> d80 ) ) ) $ ( true ) ) ) $ ( if true then d89 else false ) ) ) )
    d93 : if true then Bool else Bool
    d93 = ( M.M1'.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( M.M1'.d36 ) $ ( ( ( M.M1.d19 ) $ ( if d78 then d91 else d78 ) ) $ ( if x940 then x940 else d78 ) ) ) ) ) $ ( if d78 then false else d83 ) )
    d95 : if false then Bool else Bool
    d95 = ( M.M1'.d70 ) $ ( ( ( M.M1.d77 ) $ ( ( M.M1'.d47 ) $ ( if false then true else d89 ) ) ) $ ( ( M.M1'.d12 ) $ ( ( M.M1'.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x960 -> true ) ) ) $ ( true ) ) ) ) )
    d97 : if true then Bool else Bool
    d97 = ( ( M.M1.d4 ) $ ( ( M.M1'.d27 ) $ ( ( ( M.M1.d72 ) $ ( d78 ) ) $ ( d83 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> true ) ) ) $ ( true ) )
    d99 : if true then Bool else Bool
    d99 = if if d95 then d97 else false then if d88 then true else d83 else if d80 then true else true
    d100 : if false then Bool else Bool
    d100 = ( M.M1'.d42 ) $ ( ( M.M1'.d72 ) $ ( ( ( M.M1.d31 ) $ ( if d89 then d93 else true ) ) $ ( ( ( M.M1.d58 ) $ ( d95 ) ) $ ( d80 ) ) ) )
    d101 : if false then Bool else Bool
    d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( M.M1.d59 ) $ ( if d88 then d97 else d88 ) ) $ ( if x1020 then d88 else x1020 ) ) ) ) $ ( if d97 then true else d93 )
    d103 : if true then Bool else Bool
    d103 = ( M.M1'.d9 ) $ ( ( ( M.M1.d36 ) $ ( ( M.M1'.d68 ) $ ( ( ( M.M1.d58 ) $ ( d89 ) ) $ ( d93 ) ) ) ) $ ( if false then d97 else true ) )
    d104 : if false then Bool else Bool
    d104 = ( ( M.M1.d51 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d55 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( false ) ) ) ) ) $ ( ( M.M1'.d36 ) $ ( ( ( M.M1.d68 ) $ ( d83 ) ) $ ( true ) ) )
    d106 : if true then Bool else Bool
    d106 = ( ( M.M1.d62 ) $ ( ( M.M1'.d59 ) $ ( if d83 then d95 else d86 ) ) ) $ ( ( M.M1'.d15 ) $ ( ( ( M.M1.d38 ) $ ( d97 ) ) $ ( d100 ) ) )
    d107 : if true then Bool else Bool
    d107 = ( M.M1'.d50 ) $ ( ( M.M1'.d29 ) $ ( ( ( M.M1.d35 ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d4 ) $ ( if d95 then d87 else d99 ) ) ) ) $ ( if true then false else true ) ) )
    d108 : if true then Bool else Bool
    d108 = ( M.M1'.d15 ) $ ( if if d101 then d97 else true then if true then d107 else false else if false then d107 else false )
    d109 : if false then Bool else Bool
    d109 = ( M.M1'.d19 ) $ ( ( M.M1'.d51 ) $ ( ( M.M1'.d17 ) $ ( ( M.M1'.d59 ) $ ( ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> x1100 ) ) ) $ ( true ) ) ) ) $ ( if true then false else d88 ) ) ) ) ) )
    d112 : if true then Bool else Bool
    d112 = ( ( M.M1.d21 ) $ ( ( ( M.M1.d52 ) $ ( true ) ) $ ( d78 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( d107 ) )
    d114 : if false then Bool else Bool
    d114 = if if true then d101 else d89 then if false then d89 else d88 else if d89 then d78 else d108
    d115 : if false then Bool else Bool
    d115 = ( M.M1'.d41 ) $ ( ( M.M1'.d31 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d19 ) $ ( ( M.M1'.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( M.M1'.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> true ) ) ) $ ( d100 ) ) ) ) ) $ ( if d112 then true else true ) ) ) ) ) )
    d118 : if false then Bool else Bool
    d118 = ( ( M.M1.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> d87 ) ) ) $ ( d109 ) ) ) $ ( ( M.M1'.d36 ) $ ( ( M.M1'.d32 ) $ ( if true then true else true ) ) )
    d120 : if true then Bool else Bool
    d120 = ( M.M1'.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> if x1210 then x1210 else d80 ) ) ) $ ( if d109 then d118 else false ) )
    d122 : if false then Bool else Bool
    d122 = ( M.M1'.d8 ) $ ( if if true then true else d109 then if d103 then d101 else d104 else if d91 then d93 else true )
    d123 : if true then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> if x1240 then d80 else d114 ) ) ) $ ( if false then true else true )
    d125 : if false then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( x1260 ) ) ) ) $ ( if true then false else d89 )
    d128 : if true then Bool else Bool
    d128 = ( M.M1'.d77 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> ( M.M1'.d7 ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d47 ) $ ( ( M.M1'.d18 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d51 ) $ ( ( M.M1'.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> true ) ) ) $ ( d108 ) ) ) ) ) ) ) ) ) ) ) $ ( if true then false else d103 ) )
    d131 : if true then Bool else Bool
    d131 = ( M.M1'.d38 ) $ ( ( ( M.M1.d42 ) $ ( if true then d112 else d88 ) ) $ ( ( M.M1'.d74 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> true ) ) ) $ ( d107 ) ) ) )
    d133 : if false then Bool else Bool
    d133 = ( ( M.M1.d12 ) $ ( if d89 then d107 else d108 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> true ) ) ) $ ( true ) )
    d135 : if false then Bool else Bool
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> x1370 ) ) ) $ ( true ) ) ) ) $ ( if d118 then d112 else d106 )
    d138 : if true then Bool else Bool
    d138 = ( M.M1'.d71 ) $ ( ( ( M.M1.d32 ) $ ( ( ( M.M1.d70 ) $ ( true ) ) $ ( false ) ) ) $ ( if d115 then d118 else d131 ) )
    d139 : if true then Bool else Bool
    d139 = ( M.M1'.d41 ) $ ( ( M.M1'.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( M.M1.d47 ) $ ( if d114 then d125 else true ) ) $ ( if true then d118 else x1400 ) ) ) ) $ ( if d83 then d88 else d107 ) ) )
    d141 : if false then Bool else Bool
    d141 = ( ( M.M1.d70 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> d103 ) ) ) $ ( d112 ) ) ) $ ( ( ( M.M1.d50 ) $ ( false ) ) $ ( false ) )
    d143 : if true then Bool else Bool
    d143 = ( M.M1'.d42 ) $ ( ( ( M.M1.d77 ) $ ( ( M.M1'.d71 ) $ ( ( M.M1'.d52 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> false ) ) ) $ ( d131 ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> false ) ) ) $ ( false ) ) )
    d146 : if false then Bool else Bool
    d146 = if if true then d80 else d114 then if d114 then d78 else false else if false then true else d115
    d147 : if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( M.M1'.d9 ) $ ( ( M.M1'.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1490 ) ) ) $ ( x1480 ) ) ) ) ) ) $ ( if true then d97 else d101 )
    d150 : if true then Bool else Bool
    d150 = if if false then d107 else d123 then if d139 then d87 else true else if false then true else true
    d151 : if true then Bool else Bool
    d151 = ( M.M1'.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> ( M.M1'.d51 ) $ ( if x1520 then false else true ) ) ) ) $ ( if false then true else d101 ) )
    d153 : if true then Bool else Bool
    d153 = ( M.M1'.d51 ) $ ( ( M.M1'.d21 ) $ ( if if d114 then d114 else true then if true then true else false else if d101 then d103 else d89 ) )
    d154 : if true then Bool else Bool
    d154 = if if d107 then true else d123 then if d109 then true else d128 else if d83 then false else false
    d155 : if true then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> ( ( M.M1.d51 ) $ ( if false then x1560 else d115 ) ) $ ( if x1560 then d86 else true ) ) ) ) $ ( if false then d95 else d122 )
    d157 : if false then Bool else Bool
    d157 = ( ( M.M1.d19 ) $ ( ( M.M1'.d52 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( false ) ) ) ) $ ( ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> false ) ) ) $ ( d151 ) ) )
    d160 : if false then Bool else Bool
    d160 = ( M.M1'.d18 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1610 -> ( M.M1'.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1620 -> false ) ) ) $ ( d107 ) ) ) ) ) $ ( if d138 then true else false ) )
    d163 : if true then Bool else Bool
    d163 = ( ( M.M1.d21 ) $ ( ( M.M1'.d70 ) $ ( if d101 then true else d101 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> d83 ) ) ) $ ( d100 ) )
    d165 : if false then Bool else Bool
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> ( M.M1'.d72 ) $ ( if d157 then x1660 else x1660 ) ) ) ) $ ( if false then true else true )
    d167 : if true then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( M.M1'.d74 ) $ ( ( M.M1'.d74 ) $ ( ( M.M1'.d30 ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d71 ) $ ( ( ( M.M1.d68 ) $ ( if d80 then true else d114 ) ) $ ( if false then false else d83 ) ) ) ) ) ) ) ) ) $ ( if d87 then d143 else false )
    d169 : if true then Bool else Bool
    d169 = ( M.M1'.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1700 -> ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> x1710 ) ) ) $ ( d114 ) ) ) ) ) $ ( if false then d97 else d78 ) )
    d172 : if true then Bool else Bool
    d172 = ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> if x1730 then x1730 else x1730 ) ) ) $ ( if false then d146 else false )