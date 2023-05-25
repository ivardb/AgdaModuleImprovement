module TypeSize5Test12  where
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
        module M1 ( p30 : if false then Bool else Bool )  where
            d4 : if false then Bool else Bool
            d4 = if if true then p10 else false then if false then p10 else p10 else if p30 then p30 else p10
            d5 : if true then Bool else Bool
            d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> p10 ) ) ) $ ( p30 ) ) ) ) $ ( if d4 then p30 else p30 )
            d8 : if false then Bool else Bool
            d8 = if if p30 then p30 else d4 then if true then d5 else p30 else if true then d4 else true
            d9 : if true then Bool else Bool
            d9 = if if p10 then true else p10 then if p30 then p10 else d8 else if p30 then true else p30
            d10 : if false then Bool else Bool
            d10 = if if d8 then true else p10 then if p30 then d8 else d5 else if false then p30 else d5
            d11 : if true then Bool else Bool
            d11 = if if true then p10 else true then if p10 then true else true else if p10 then false else false
            d12 : if true then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if false then x130 else d10 ) ) ) $ ( if p10 then d9 else false )
            d14 : if true then Bool else Bool
            d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> true ) ) ) $ ( d12 ) ) ) ) $ ( if true then d11 else d10 )
            d17 : if true then Bool else Bool
            d17 = if if p10 then false else p10 then if p10 then p10 else p30 else if d10 then true else p10
            d18 : if true then Bool else Bool
            d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if false then d4 else p10 ) ) ) $ ( if p30 then false else d12 )
            d20 : if false then Bool else Bool
            d20 = if if false then true else true then if false then p30 else d18 else if false then d4 else true
            d21 : if false then Bool else Bool
            d21 = if if d11 then d20 else p30 then if true then p30 else p30 else if d8 then d9 else false
            d22 : if true then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> d9 ) ) ) $ ( false ) ) ) ) $ ( if d9 then p30 else d4 )
            d25 : if true then Bool else Bool
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> ( ( Bool -> Bool ) ∋ ( ( λ x270 -> true ) ) ) $ ( d4 ) ) ) ) $ ( if true then d5 else true )
            d28 : if true then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if p10 then false else p30 )
            d31 : if true then Bool else Bool
            d31 = if if d10 then true else false then if p10 then false else d21 else if false then false else true
            d32 : if true then Bool else Bool
            d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> ( ( Bool -> Bool ) ∋ ( ( λ x340 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if d10 then true else false )
            d35 : if true then Bool else Bool
            d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if p10 then false else d12 ) ) ) $ ( if d32 then d31 else true )
            d37 : if true then Bool else Bool
            d37 = if if p10 then p30 else p30 then if p30 then p10 else d4 else if p30 then d32 else p30
            d38 : if false then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if d4 then p30 else d5 )
            d41 : if false then Bool else Bool
            d41 = if if false then true else d4 then if d20 then false else d5 else if true then d25 else true
            d42 : if true then Bool else Bool
            d42 = if if p10 then p10 else false then if d37 then d35 else p30 else if p10 then d12 else d18
            d43 : if true then Bool else Bool
            d43 = if if d41 then false else d22 then if d38 then p10 else d20 else if d10 then p10 else true
            d44 : if false then Bool else Bool
            d44 = if if false then true else d12 then if p10 then d37 else false else if false then true else d42
            d45 : if true then Bool else Bool
            d45 = if if d17 then d5 else d43 then if p10 then p30 else p10 else if p30 then false else p30
            d46 : if false then Bool else Bool
            d46 = if if p30 then true else p30 then if p10 then true else d43 else if p10 then p10 else d31
            d47 : if false then Bool else Bool
            d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if false then p30 else p30 ) ) ) $ ( if p30 then p10 else true )
            d49 : if false then Bool else Bool
            d49 = if if false then p30 else p10 then if false then d46 else p30 else if true then p30 else false
            d50 : if true then Bool else Bool
            d50 = if if d10 then true else d8 then if p30 then false else false else if d31 then p30 else p30
            d51 : if false then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if d4 then d45 else false ) ) ) $ ( if p30 then true else d43 )
            d53 : if true then Bool else Bool
            d53 = if if d49 then false else p10 then if d37 then false else false else if false then p30 else true
            d54 : if true then Bool else Bool
            d54 = if if d17 then true else p30 then if true then d22 else p10 else if p30 then d8 else true
            d55 : if false then Bool else Bool
            d55 = ( ( Bool -> Bool ) ∋ ( ( λ x560 -> if x560 then d44 else p10 ) ) ) $ ( if p30 then p10 else d37 )
            d57 : if true then Bool else Bool
            d57 = if if true then true else p30 then if true then d28 else d42 else if p30 then p30 else d9
            d58 : if false then Bool else Bool
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if p10 then x590 else true ) ) ) $ ( if false then d17 else true )
            d60 : if false then Bool else Bool
            d60 = ( ( Bool -> Bool ) ∋ ( ( λ x610 -> ( ( Bool -> Bool ) ∋ ( ( λ x620 -> false ) ) ) $ ( d10 ) ) ) ) $ ( if d12 then p10 else d44 )
            d63 : if true then Bool else Bool
            d63 = if if false then p10 else p10 then if d28 then d49 else true else if p10 then true else d47
            d64 : if true then Bool else Bool
            d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then p30 else true )
            d67 : if true then Bool else Bool
            d67 = if if p30 then p30 else d17 then if p10 then false else p10 else if d47 then d14 else d45
            d68 : if false then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> d41 ) ) ) $ ( false ) ) ) ) $ ( if d44 then d45 else p10 )
        module M1'  = M1 ( p10 ) 
    d71 : if true then Bool else Bool
    d71 = ( ( M.M1.d60 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x720 -> x720 ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d28 ) $ ( false ) ) $ ( true ) )
    d73 : if false then Bool else Bool
    d73 = ( M.M1'.d31 ) $ ( ( M.M1'.d10 ) $ ( ( M.M1'.d43 ) $ ( ( M.M1'.d53 ) $ ( ( M.M1'.d55 ) $ ( ( ( M.M1.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x740 -> x740 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d37 ) $ ( ( M.M1'.d10 ) $ ( if true then false else d71 ) ) ) ) ) ) ) ) ) )
    d75 : if true then Bool else Bool
    d75 = ( ( Bool -> Bool ) ∋ ( ( λ x760 -> ( ( M.M1.d5 ) $ ( if false then x760 else true ) ) $ ( if x760 then d71 else x760 ) ) ) ) $ ( if true then false else d73 )
    d77 : if false then Bool else Bool
    d77 = if if d75 then d73 else true then if d73 then false else true else if false then d75 else true
    d78 : if false then Bool else Bool
    d78 = ( M.M1'.d28 ) $ ( ( M.M1'.d41 ) $ ( ( M.M1'.d47 ) $ ( if if true then false else false then if false then d77 else false else if false then true else d73 ) ) )
    d79 : if true then Bool else Bool
    d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x800 then true else d73 ) ) ) $ ( if true then d73 else d71 )
    d81 : if false then Bool else Bool
    d81 = ( ( M.M1.d43 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x820 -> x820 ) ) ) $ ( d79 ) ) ) $ ( if d79 then d71 else false )
    d83 : if false then Bool else Bool
    d83 = ( M.M1'.d20 ) $ ( if if d79 then false else true then if d78 then d73 else true else if d73 then true else true )
    d84 : if false then Bool else Bool
    d84 = if if d77 then d75 else d77 then if d75 then d83 else true else if d77 then d81 else false
    d85 : if true then Bool else Bool
    d85 = ( ( M.M1.d68 ) $ ( if d84 then true else d73 ) ) $ ( if false then d75 else d71 )
    d86 : if false then Bool else Bool
    d86 = ( M.M1'.d58 ) $ ( ( M.M1'.d32 ) $ ( ( M.M1'.d50 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d9 ) $ ( ( ( M.M1.d12 ) $ ( if d81 then false else true ) ) $ ( ( M.M1'.d58 ) $ ( ( M.M1'.d14 ) $ ( ( M.M1'.d47 ) $ ( ( M.M1'.d55 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x870 -> false ) ) ) $ ( true ) ) ) ) ) ) ) ) ) ) )
    d88 : if true then Bool else Bool
    d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( M.M1.d41 ) $ ( if x890 then x890 else x890 ) ) $ ( if false then d73 else true ) ) ) ) $ ( if false then true else d79 )
    d90 : if true then Bool else Bool
    d90 = ( ( M.M1.d47 ) $ ( ( M.M1'.d18 ) $ ( ( ( M.M1.d9 ) $ ( false ) ) $ ( true ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( d71 ) )
    d92 : if true then Bool else Bool
    d92 = ( ( M.M1.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x930 -> d77 ) ) ) $ ( true ) ) ) $ ( ( ( M.M1.d17 ) $ ( d86 ) ) $ ( true ) )
    d94 : if false then Bool else Bool
    d94 = ( M.M1'.d44 ) $ ( ( ( M.M1.d4 ) $ ( if d83 then true else d77 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( d85 ) ) )
    d96 : if true then Bool else Bool
    d96 = ( ( M.M1.d46 ) $ ( if true then d77 else d86 ) ) $ ( ( M.M1'.d54 ) $ ( ( ( M.M1.d4 ) $ ( d86 ) ) $ ( false ) ) )
    d97 : if true then Bool else Bool
    d97 = ( ( M.M1.d58 ) $ ( ( ( M.M1.d10 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> true ) ) ) $ ( d78 ) )
    d99 : if true then Bool else Bool
    d99 = ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> ( ( M.M1.d22 ) $ ( if true then false else x1000 ) ) $ ( if d92 then d90 else x1000 ) ) ) ) $ ( if true then d86 else d88 )
    d101 : if true then Bool else Bool
    d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( M.M1'.d51 ) $ ( ( M.M1'.d11 ) $ ( ( ( M.M1.d68 ) $ ( if x1020 then d79 else true ) ) $ ( if false then d96 else x1020 ) ) ) ) ) ) $ ( if false then d94 else true )
    d103 : if true then Bool else Bool
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( M.M1'.d32 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d37 ) $ ( ( ( M.M1.d58 ) $ ( if d81 then x1040 else d85 ) ) $ ( if d85 then x1040 else x1040 ) ) ) ) ) ) ) $ ( if false then d75 else false )
    d105 : if true then Bool else Bool
    d105 = ( ( M.M1.d21 ) $ ( if d92 then d84 else d71 ) ) $ ( ( M.M1'.d31 ) $ ( if true then d92 else false ) )
    d106 : if true then Bool else Bool
    d106 = if if d85 then false else d105 then if true then true else true else if false then d90 else false
    d107 : if true then Bool else Bool
    d107 = ( M.M1'.d42 ) $ ( ( ( M.M1.d28 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> true ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> false ) ) ) $ ( d84 ) ) )
    d110 : if true then Bool else Bool
    d110 = if if d88 then true else d90 then if false then d94 else d107 else if d94 then true else true
    d111 : if true then Bool else Bool
    d111 = ( M.M1'.d45 ) $ ( ( M.M1'.d25 ) $ ( ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> ( M.M1'.d47 ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d11 ) $ ( ( M.M1'.d57 ) $ ( ( M.M1'.d10 ) $ ( if true then x1120 else false ) ) ) ) ) ) ) ) $ ( if d96 then d73 else d92 ) ) ) )
    d113 : if true then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> ( ( M.M1.d47 ) $ ( if d78 then true else true ) ) $ ( if true then false else false ) ) ) ) $ ( if true then true else false )
    d115 : if false then Bool else Bool
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( M.M1.d41 ) $ ( if d75 then false else d99 ) ) $ ( if false then true else d71 ) ) ) ) $ ( if d75 then false else d103 )
    d117 : if true then Bool else Bool
    d117 = if if d107 then d113 else d79 then if d111 then d79 else d96 else if false then d110 else false
    d118 : if true then Bool else Bool
    d118 = ( M.M1'.d58 ) $ ( ( ( M.M1.d41 ) $ ( ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> true ) ) ) $ ( false ) ) ) ) $ ( ( M.M1'.d67 ) $ ( ( ( M.M1.d58 ) $ ( d113 ) ) $ ( d86 ) ) ) )
    d120 : if true then Bool else Bool
    d120 = ( M.M1'.d63 ) $ ( ( ( M.M1.d54 ) $ ( ( M.M1'.d14 ) $ ( if false then false else true ) ) ) $ ( ( M.M1'.d14 ) $ ( ( M.M1'.d53 ) $ ( ( M.M1'.d41 ) $ ( ( M.M1'.d67 ) $ ( ( ( M.M1.d12 ) $ ( false ) ) $ ( true ) ) ) ) ) ) )
    d121 : if true then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> ( M.M1'.d43 ) $ ( if x1220 then d73 else true ) ) ) ) $ ( if d117 then d92 else d103 )
    d123 : if false then Bool else Bool
    d123 = if if d120 then false else d78 then if false then false else false else if d79 then false else d107
    d124 : if true then Bool else Bool
    d124 = ( ( M.M1.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> x1250 ) ) ) $ ( d83 ) ) ) $ ( ( M.M1'.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d120 ) ) ) $ ( false ) ) )
    d127 : if false then Bool else Bool
    d127 = ( ( M.M1.d20 ) $ ( ( M.M1'.d14 ) $ ( ( M.M1'.d18 ) $ ( ( M.M1'.d45 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> false ) ) ) $ ( true ) ) ) ) ) ) $ ( if true then false else d73 )
    d129 : if false then Bool else Bool
    d129 = ( ( M.M1.d46 ) $ ( ( M.M1'.d41 ) $ ( if d111 then true else false ) ) ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d55 ) $ ( d111 ) ) $ ( d71 ) ) )
    d130 : if true then Bool else Bool
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> ( M.M1'.d58 ) $ ( ( M.M1'.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( d120 ) ) ) ) ) ) $ ( if d105 then d75 else true )
    d133 : if true then Bool else Bool
    d133 = ( ( M.M1.d54 ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d31 ) $ ( if false then false else true ) ) ) ) $ ( ( M.M1'.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> d79 ) ) ) $ ( d123 ) ) )
    d135 : if false then Bool else Bool
    d135 = ( M.M1'.d43 ) $ ( ( ( M.M1.d20 ) $ ( ( M.M1'.d60 ) $ ( if d88 then false else true ) ) ) $ ( ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> x1360 ) ) ) $ ( d73 ) ) ) )
    d137 : if true then Bool else Bool
    d137 = ( ( M.M1.d47 ) $ ( ( ( M.M1.d28 ) $ ( d124 ) ) $ ( false ) ) ) $ ( ( ( M.M1.d12 ) $ ( d127 ) ) $ ( d90 ) )
    d138 : if false then Bool else Bool
    d138 = ( M.M1'.d42 ) $ ( if if d75 then d81 else true then if false then true else d88 else if d120 then d113 else d77 )
    d139 : if false then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> x1400 ) ) ) $ ( d79 ) ) ) ) $ ( if false then d113 else false )
    d142 : if false then Bool else Bool
    d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> ( M.M1'.d60 ) $ ( ( M.M1'.d49 ) $ ( ( ( M.M1.d45 ) $ ( if x1430 then d107 else d115 ) ) $ ( if d138 then x1430 else d85 ) ) ) ) ) ) $ ( if d124 then true else true )
    d144 : if true then Bool else Bool
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> ( M.M1'.d38 ) $ ( if x1450 then true else d103 ) ) ) ) $ ( if false then true else d99 )
    d146 : if false then Bool else Bool
    d146 = ( M.M1'.d31 ) $ ( if if d81 then d103 else d94 then if d71 then d144 else d78 else if d137 then true else d75 )
    d147 : if false then Bool else Bool
    d147 = ( M.M1'.d45 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( M.M1'.d35 ) $ ( ( M.M1'.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> true ) ) ) $ ( d121 ) ) ) ) ) ) $ ( if true then d120 else false ) )
    d150 : if true then Bool else Bool
    d150 = if if d144 then d137 else d101 then if d97 then true else false else if true then d97 else true
    d151 : if false then Bool else Bool
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> ( ( M.M1.d28 ) $ ( if d147 then true else true ) ) $ ( if d88 then x1520 else d120 ) ) ) ) $ ( if d88 then true else d124 )
    d153 : if false then Bool else Bool
    d153 = ( M.M1'.d57 ) $ ( ( ( M.M1.d5 ) $ ( ( M.M1'.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d60 ) $ ( if d97 then d130 else d135 ) ) ) )
    d155 : if false then Bool else Bool
    d155 = ( M.M1'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> if d83 then true else true ) ) ) $ ( if true then false else true ) )
    d157 : if true then Bool else Bool
    d157 = if if d105 then d155 else d86 then if true then d142 else d79 else if true then false else true