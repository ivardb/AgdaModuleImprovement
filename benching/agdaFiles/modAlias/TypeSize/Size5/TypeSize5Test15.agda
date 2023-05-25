module TypeSize5Test15  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : if true then Bool else Bool )  where
            d4 : if true then Bool else Bool
            d4 = if if true then p10 else p10 then if false then true else true else if false then true else true
            d5 : if false then Bool else Bool
            d5 = if if d4 then d4 else p30 then if p30 then false else d4 else if d4 then true else p30
            d6 : if true then Bool else Bool
            d6 = if if p10 then false else d4 then if p10 then d4 else p30 else if p10 then d5 else d5
            d7 : if true then Bool else Bool
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( true ) ) ) ) $ ( if d4 then true else p10 )
            d10 : if false then Bool else Bool
            d10 = if if false then p30 else d4 then if p10 then p10 else true else if false then d6 else p30
            d11 : if false then Bool else Bool
            d11 = if if p10 then false else false then if p30 then p30 else p30 else if d4 then d10 else p10
            d12 : if false then Bool else Bool
            d12 = if if d7 then p30 else d11 then if p30 then p30 else true else if false then true else p30
            d13 : if true then Bool else Bool
            d13 = if if true then p30 else true then if true then p10 else false else if p30 then true else true
            d14 : if false then Bool else Bool
            d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if false then x150 else x150 ) ) ) $ ( if d4 then d4 else false )
            d16 : if false then Bool else Bool
            d16 = if if p10 then false else p30 then if false then d14 else p10 else if true then d12 else true
            d17 : if false then Bool else Bool
            d17 = if if p30 then false else d12 then if true then true else p10 else if d13 then d12 else p10
            d18 : if true then Bool else Bool
            d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x200 -> false ) ) ) $ ( d5 ) ) ) ) $ ( if d4 then d17 else false )
            d21 : if false then Bool else Bool
            d21 = if if d12 then d18 else p30 then if true then true else p10 else if d13 then false else false
            d22 : if true then Bool else Bool
            d22 = if if p10 then d7 else d14 then if false then d21 else d4 else if d14 then false else true
            d23 : if true then Bool else Bool
            d23 = if if false then p10 else true then if p30 then p30 else true else if true then p30 else d16
            d24 : if true then Bool else Bool
            d24 = if if d18 then p10 else d13 then if p10 then p30 else false else if p30 then d23 else p30
            d25 : if true then Bool else Bool
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> ( ( Bool -> Bool ) ∋ ( ( λ x270 -> d17 ) ) ) $ ( false ) ) ) ) $ ( if d21 then d10 else d11 )
            d28 : if true then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> p10 ) ) ) $ ( x290 ) ) ) ) $ ( if d22 then d21 else true )
            d31 : if false then Bool else Bool
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> true ) ) ) $ ( true ) ) ) ) $ ( if p30 then d11 else p30 )
            d34 : if true then Bool else Bool
            d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if d14 then x350 else d23 ) ) ) $ ( if p10 then false else p10 )
            d36 : if true then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> if p30 then d12 else x370 ) ) ) $ ( if p30 then p30 else d31 )
            d38 : if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> p30 ) ) ) $ ( p30 ) ) ) ) $ ( if p10 then true else p10 )
            d41 : if true then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d28 ) ) ) $ ( true ) ) ) ) $ ( if d10 then p30 else d36 )
            d44 : if true then Bool else Bool
            d44 = if if false then false else p30 then if p10 then false else p10 else if p30 then false else true
            d45 : if false then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if true then p30 else p10 ) ) ) $ ( if p10 then d5 else true )
            d47 : if false then Bool else Bool
            d47 = if if d36 then p10 else d7 then if false then d10 else false else if p30 then d34 else true
            d48 : if true then Bool else Bool
            d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> false ) ) ) $ ( p30 ) ) ) ) $ ( if true then p10 else p10 )
            d51 : if false then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if true then p30 else d23 ) ) ) $ ( if d47 then true else true )
            d53 : if true then Bool else Bool
            d53 = if if p30 then d23 else d31 then if d34 then d22 else true else if false then p30 else d14
            d54 : if true then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if d47 then d13 else p30 ) ) ) $ ( if p30 then d51 else d7 )
            d56 : if true then Bool else Bool
            d56 = if if p10 then d51 else d28 then if false then d34 else d11 else if d31 then false else d14
            d57 : if false then Bool else Bool
            d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> p10 ) ) ) $ ( d25 ) ) ) ) $ ( if false then p30 else d51 )
            d60 : if true then Bool else Bool
            d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> if false then true else true ) ) ) $ ( if p10 then false else d6 )
            d62 : if false then Bool else Bool
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if d6 then false else true ) ) ) $ ( if p30 then p30 else p10 )
            d64 : if false then Bool else Bool
            d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> false ) ) ) $ ( d13 ) ) ) ) $ ( if true then d51 else p10 )
            d67 : if true then Bool else Bool
            d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x690 -> p30 ) ) ) $ ( d13 ) ) ) ) $ ( if true then p30 else true )
            d70 : if true then Bool else Bool
            d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if x710 then d38 else x710 ) ) ) $ ( if false then p10 else d57 )
            d72 : if false then Bool else Bool
            d72 = if if true then d47 else p30 then if d38 then p30 else d17 else if false then p30 else d70
            d73 : if false then Bool else Bool
            d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> if d25 then false else p30 ) ) ) $ ( if p10 then p30 else d14 )
            d75 : if false then Bool else Bool
            d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> if p10 then false else p10 ) ) ) $ ( if true then d6 else d73 )
        module M1'  = M1 ( p10 ) 
    d77 : if true then Bool else Bool
    d77 = ( M.M1'.d64 ) $ ( ( M.M1'.d17 ) $ ( if if true then false else true then if false then true else false else if true then true else true ) )
    d78 : if false then Bool else Bool
    d78 = ( M.M1'.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x790 -> ( ( Bool -> Bool ) ∋ ( ( λ x800 -> x790 ) ) ) $ ( true ) ) ) ) $ ( if true then false else false ) )
    d81 : if true then Bool else Bool
    d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> ( M.M1'.d22 ) $ ( ( ( M.M1.d75 ) $ ( if x820 then x820 else x820 ) ) $ ( if d78 then d78 else x820 ) ) ) ) ) $ ( if d77 then d77 else d78 )
    d83 : if true then Bool else Bool
    d83 = ( ( M.M1.d10 ) $ ( ( M.M1'.d75 ) $ ( ( M.M1'.d51 ) $ ( ( ( M.M1.d54 ) $ ( true ) ) $ ( d78 ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( d78 ) )
    d85 : if true then Bool else Bool
    d85 = if if false then false else d81 then if false then d78 else d77 else if true then d83 else d78
    d86 : if true then Bool else Bool
    d86 = if if d77 then d77 else false then if d85 then true else false else if d83 then d77 else d83
    d87 : if false then Bool else Bool
    d87 = ( ( M.M1.d23 ) $ ( ( M.M1'.d22 ) $ ( ( M.M1'.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x880 -> false ) ) ) $ ( d81 ) ) ) ) ) $ ( ( M.M1'.d70 ) $ ( ( M.M1'.d31 ) $ ( if d81 then false else false ) ) )
    d89 : if true then Bool else Bool
    d89 = ( M.M1'.d44 ) $ ( ( M.M1'.d75 ) $ ( if if d78 then d83 else true then if true then d85 else true else if d81 then false else d86 ) )
    d90 : if true then Bool else Bool
    d90 = ( M.M1'.d10 ) $ ( ( M.M1'.d25 ) $ ( ( ( M.M1.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d86 ) ) ) $ ( d78 ) ) ) $ ( ( M.M1'.d24 ) $ ( if true then d86 else d77 ) ) ) )
    d92 : if true then Bool else Bool
    d92 = ( M.M1'.d17 ) $ ( ( M.M1'.d22 ) $ ( if if true then d85 else d81 then if d87 then false else d85 else if true then d89 else d81 ) )
    d93 : if true then Bool else Bool
    d93 = ( M.M1'.d47 ) $ ( ( ( M.M1.d34 ) $ ( if false then d92 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x940 -> x940 ) ) ) $ ( d83 ) ) )
    d95 : if false then Bool else Bool
    d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
    d98 : if false then Bool else Bool
    d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if x990 then d85 else true ) ) ) $ ( if d77 then d93 else false )
    d100 : if false then Bool else Bool
    d100 = ( ( M.M1.d31 ) $ ( ( ( M.M1.d6 ) $ ( d95 ) ) $ ( d85 ) ) ) $ ( ( M.M1'.d38 ) $ ( ( ( M.M1.d41 ) $ ( true ) ) $ ( false ) ) )
    d101 : if true then Bool else Bool
    d101 = if if true then true else true then if d92 then false else false else if d98 then d89 else true
    d102 : if true then Bool else Bool
    d102 = ( M.M1'.d47 ) $ ( ( ( M.M1.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> false ) ) ) $ ( d89 ) ) ) $ ( ( ( M.M1.d34 ) $ ( false ) ) $ ( false ) ) )
    d104 : if false then Bool else Bool
    d104 = ( M.M1'.d17 ) $ ( ( ( M.M1.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> d81 ) ) ) $ ( d83 ) ) ) $ ( ( M.M1'.d41 ) $ ( ( M.M1'.d13 ) $ ( ( ( M.M1.d72 ) $ ( d100 ) ) $ ( true ) ) ) ) )
    d106 : if false then Bool else Bool
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> ( M.M1'.d47 ) $ ( ( ( M.M1.d11 ) $ ( if d86 then d78 else d92 ) ) $ ( if false then x1070 else false ) ) ) ) ) $ ( if d104 then false else true )
    d108 : if true then Bool else Bool
    d108 = ( ( M.M1.d5 ) $ ( ( ( M.M1.d64 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> false ) ) ) $ ( d95 ) )
    d110 : if true then Bool else Bool
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> x1110 ) ) ) $ ( d100 ) ) ) ) $ ( if true then false else d108 )
    d113 : if true then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> if x1140 then true else d89 ) ) ) $ ( if d106 then d86 else true )
    d115 : if true then Bool else Bool
    d115 = ( M.M1'.d70 ) $ ( if if false then true else d87 then if d104 then true else d78 else if true then d108 else d113 )
    d116 : if true then Bool else Bool
    d116 = ( M.M1'.d62 ) $ ( ( ( M.M1.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> true ) ) ) $ ( d102 ) ) ) $ ( ( M.M1'.d23 ) $ ( ( M.M1'.d62 ) $ ( ( M.M1'.d64 ) $ ( if d98 then false else d115 ) ) ) ) )
    d118 : if false then Bool else Bool
    d118 = ( M.M1'.d47 ) $ ( ( M.M1'.d24 ) $ ( ( M.M1'.d73 ) $ ( if if false then true else true then if false then d92 else d101 else if true then true else d86 ) ) )
    d119 : if true then Bool else Bool
    d119 = ( M.M1'.d24 ) $ ( ( ( M.M1.d48 ) $ ( if d100 then d86 else d89 ) ) $ ( ( M.M1'.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> false ) ) ) $ ( d115 ) ) ) )
    d121 : if false then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( M.M1'.d25 ) $ ( ( M.M1'.d41 ) $ ( if x1220 then d77 else x1220 ) ) ) ) ) $ ( if d108 then false else true )
    d123 : if false then Bool else Bool
    d123 = ( M.M1'.d18 ) $ ( ( M.M1'.d70 ) $ ( ( M.M1'.d45 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( M.M1'.d47 ) $ ( if x1240 then d115 else true ) ) ) ) $ ( if true then false else false ) ) ) )
    d125 : if false then Bool else Bool
    d125 = if if d110 then true else false then if true then false else d100 else if false then true else d110
    d126 : if true then Bool else Bool
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( M.M1'.d48 ) $ ( ( ( M.M1.d23 ) $ ( if x1270 then d95 else true ) ) $ ( if true then d98 else x1270 ) ) ) ) ) $ ( if true then d77 else d85 )
    d128 : if false then Bool else Bool
    d128 = ( ( M.M1.d6 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> d85 ) ) ) $ ( d77 ) ) ) $ ( ( ( M.M1.d7 ) $ ( d116 ) ) $ ( d81 ) )
    d130 : if true then Bool else Bool
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> ( ( M.M1.d45 ) $ ( if d83 then d102 else x1310 ) ) $ ( if true then d89 else true ) ) ) ) $ ( if d113 then d128 else d77 )
    d132 : if true then Bool else Bool
    d132 = if if d115 then true else true then if true then true else false else if false then d100 else d90
    d133 : if false then Bool else Bool
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( M.M1'.d54 ) $ ( ( M.M1'.d41 ) $ ( if x1340 then x1340 else d86 ) ) ) ) ) $ ( if true then d110 else false )
    d135 : if true then Bool else Bool
    d135 = ( ( M.M1.d47 ) $ ( ( ( M.M1.d10 ) $ ( d98 ) ) $ ( d116 ) ) ) $ ( ( M.M1'.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> d123 ) ) ) $ ( true ) ) )
    d137 : if true then Bool else Bool
    d137 = if if d92 then d116 else d87 then if d77 then false else d116 else if d128 then d101 else d130
    d138 : if true then Bool else Bool
    d138 = if if true then d85 else false then if d101 then d113 else d119 else if false then true else d113
    d139 : if true then Bool else Bool
    d139 = ( M.M1'.d62 ) $ ( ( M.M1'.d18 ) $ ( ( M.M1'.d62 ) $ ( ( M.M1'.d70 ) $ ( ( M.M1'.d41 ) $ ( ( ( M.M1.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> d104 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> true ) ) ) $ ( true ) ) ) ) ) ) )
    d142 : if false then Bool else Bool
    d142 = if if true then d85 else d77 then if true then false else d106 else if d108 then d85 else d85
    d143 : if false then Bool else Bool
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> if x1440 then d92 else d135 ) ) ) $ ( if true then false else d118 )
    d145 : if true then Bool else Bool
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> if d126 then d87 else d143 ) ) ) $ ( if d143 then true else true )
    d147 : if false then Bool else Bool
    d147 = ( ( M.M1.d54 ) $ ( ( M.M1'.d70 ) $ ( if true then false else d93 ) ) ) $ ( ( M.M1'.d41 ) $ ( if false then false else d81 ) )
    d148 : if false then Bool else Bool
    d148 = ( ( M.M1.d22 ) $ ( ( ( M.M1.d34 ) $ ( true ) ) $ ( d77 ) ) ) $ ( ( M.M1'.d53 ) $ ( ( M.M1'.d73 ) $ ( ( ( M.M1.d21 ) $ ( false ) ) $ ( d89 ) ) ) )
    d149 : if false then Bool else Bool
    d149 = ( M.M1'.d45 ) $ ( ( M.M1'.d6 ) $ ( ( M.M1'.d51 ) $ ( ( M.M1'.d4 ) $ ( ( ( M.M1.d47 ) $ ( ( ( M.M1.d6 ) $ ( d147 ) ) $ ( false ) ) ) $ ( ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> false ) ) ) $ ( d110 ) ) ) ) ) ) )
    d151 : if true then Bool else Bool
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> ( M.M1'.d38 ) $ ( ( M.M1'.d13 ) $ ( ( M.M1'.d56 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> x1520 ) ) ) $ ( d77 ) ) ) ) ) ) ) $ ( if false then true else d87 )
    d154 : if false then Bool else Bool
    d154 = if if d135 then false else d135 then if d92 then false else true else if false then d137 else d95
    d155 : if true then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> ( M.M1'.d67 ) $ ( if x1560 then x1560 else x1560 ) ) ) ) $ ( if d106 then d143 else d118 )
    d157 : if true then Bool else Bool
    d157 = ( M.M1'.d57 ) $ ( ( M.M1'.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> ( M.M1'.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> d77 ) ) ) $ ( d101 ) ) ) ) ) $ ( if false then d154 else d89 ) ) )
    d160 : if true then Bool else Bool
    d160 = ( ( M.M1.d4 ) $ ( ( ( M.M1.d54 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.M1.d41 ) $ ( d145 ) ) $ ( true ) )
    d161 : if true then Bool else Bool
    d161 = ( ( M.M1.d28 ) $ ( ( ( M.M1.d34 ) $ ( true ) ) $ ( d81 ) ) ) $ ( ( M.M1'.d57 ) $ ( if d83 then false else d123 ) )
    d162 : if false then Bool else Bool
    d162 = if if d81 then d85 else true then if true then d115 else true else if true then d110 else d145