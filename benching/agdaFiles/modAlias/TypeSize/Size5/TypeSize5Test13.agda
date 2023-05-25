module TypeSize5Test13  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else x20 ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else Bool ) ) ) $ ( Bool ) )  where
            d5 : if false then Bool else Bool
            d5 = if if p30 then p30 else p10 then if p10 then false else false else if p10 then false else p10
            d6 : if true then Bool else Bool
            d6 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if p30 then p10 else d5 ) ) ) $ ( if d5 then p10 else p30 )
            d8 : if false then Bool else Bool
            d8 = if if false then d5 else d5 then if p10 then d5 else p10 else if d5 then d5 else d6
            d9 : if false then Bool else Bool
            d9 = if if p30 then d8 else true then if d8 then false else d8 else if false then true else p10
            d10 : if true then Bool else Bool
            d10 = if if d9 then p30 else p10 then if p10 then d5 else true else if false then d5 else d5
            d11 : if false then Bool else Bool
            d11 = if if true then false else false then if p30 then true else d8 else if true then d9 else true
            d12 : if true then Bool else Bool
            d12 = if if d11 then d8 else d10 then if d8 then false else d8 else if true then true else d10
            d13 : if false then Bool else Bool
            d13 = if if true then true else false then if true then d9 else d10 else if p30 then d5 else p10
            d14 : if true then Bool else Bool
            d14 = if if p30 then d10 else true then if p30 then p10 else p10 else if p30 then true else true
            d15 : if false then Bool else Bool
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> d5 ) ) ) $ ( d14 ) ) ) ) $ ( if false then false else d10 )
            d18 : if false then Bool else Bool
            d18 = if if d10 then d10 else p10 then if p30 then true else d8 else if d8 then d11 else p10
            d19 : if false then Bool else Bool
            d19 = if if true then p10 else d6 then if p30 then false else d10 else if d11 then d9 else p10
            d20 : if true then Bool else Bool
            d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( Bool -> Bool ) ∋ ( ( λ x220 -> x210 ) ) ) $ ( true ) ) ) ) $ ( if p10 then false else p30 )
            d23 : if false then Bool else Bool
            d23 = if if p10 then false else p10 then if false then false else false else if d18 then p10 else p30
            d24 : if true then Bool else Bool
            d24 = if if d23 then p30 else true then if true then p10 else d20 else if false then d13 else p30
            d25 : if true then Bool else Bool
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if p10 then p10 else false ) ) ) $ ( if p30 then p30 else true )
            d27 : if false then Bool else Bool
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if d11 then true else d13 ) ) ) $ ( if true then p30 else d5 )
            d29 : if true then Bool else Bool
            d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d18 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d12 )
            d32 : if true then Bool else Bool
            d32 = if if p30 then p30 else true then if true then false else true else if p30 then d14 else false
            d33 : if true then Bool else Bool
            d33 = if if d24 then d29 else p10 then if d10 then p30 else d8 else if p10 then d25 else false
            d34 : if true then Bool else Bool
            d34 = if if false then d27 else false then if true then p10 else d18 else if d12 then p10 else p30
            d35 : if true then Bool else Bool
            d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> ( ( Bool -> Bool ) ∋ ( ( λ x370 -> d8 ) ) ) $ ( d10 ) ) ) ) $ ( if true then p30 else d14 )
            d38 : if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> d29 ) ) ) $ ( d25 ) ) ) ) $ ( if true then d19 else false )
            d41 : if false then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> false ) ) ) $ ( x420 ) ) ) ) $ ( if p30 then d27 else p30 )
            d44 : if true then Bool else Bool
            d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> if false then d23 else false ) ) ) $ ( if d12 then false else true )
            d46 : if true then Bool else Bool
            d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if false then x470 else p30 ) ) ) $ ( if false then d15 else true )
            d48 : if true then Bool else Bool
            d48 = if if p10 then d5 else d41 then if d15 then false else true else if false then p10 else d14
            d49 : if true then Bool else Bool
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> ( ( Bool -> Bool ) ∋ ( ( λ x510 -> true ) ) ) $ ( true ) ) ) ) $ ( if d48 then d19 else p10 )
            d52 : if false then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if p30 then true else false ) ) ) $ ( if p30 then true else true )
            d54 : if false then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d29 ) ) ) $ ( p30 ) ) ) ) $ ( if p30 then p30 else p10 )
            d57 : if true then Bool else Bool
            d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x590 -> d48 ) ) ) $ ( p30 ) ) ) ) $ ( if true then false else p10 )
            d60 : if true then Bool else Bool
            d60 = if if d23 then d41 else d41 then if d24 then false else d9 else if d15 then d54 else p30
            d61 : if true then Bool else Bool
            d61 = if if false then p30 else d5 then if false then p30 else false else if p30 then d10 else p10
            d62 : if false then Bool else Bool
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x640 -> p30 ) ) ) $ ( x630 ) ) ) ) $ ( if p30 then d49 else d54 )
            d65 : if false then Bool else Bool
            d65 = if if d25 then d5 else p10 then if false then true else false else if false then p30 else p10
            d66 : if false then Bool else Bool
            d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> ( ( Bool -> Bool ) ∋ ( ( λ x680 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if d32 then d14 else d11 )
            d69 : if true then Bool else Bool
            d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if true then x700 else p10 ) ) ) $ ( if d66 then d65 else true )
            d71 : if false then Bool else Bool
            d71 = if if d29 then true else p10 then if false then d61 else true else if d35 then false else p30
            d72 : if true then Bool else Bool
            d72 = if if p10 then d14 else d60 then if true then p10 else p30 else if p10 then p10 else d33
            d73 : if false then Bool else Bool
            d73 = if if d41 then d60 else false then if p30 then false else d62 else if d46 then p30 else d12
        module M1'  = M1 ( true ) 
    d74 : if true then Bool else Bool
    d74 = if if false then false else false then if false then true else false else if true then true else true
    d75 : if true then Bool else Bool
    d75 = ( ( M.M1.d20 ) $ ( ( ( M.M1.d13 ) $ ( d74 ) ) $ ( d74 ) ) ) $ ( ( M.M1'.d13 ) $ ( ( ( M.M1.d6 ) $ ( d74 ) ) $ ( false ) ) )
    d76 : if true then Bool else Bool
    d76 = if if d75 then d75 else false then if false then d75 else d75 else if d74 then true else false
    d77 : if true then Bool else Bool
    d77 = ( M.M1'.d61 ) $ ( ( ( M.M1.d49 ) $ ( ( M.M1'.d20 ) $ ( if false then d75 else d74 ) ) ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x780 -> x780 ) ) ) $ ( false ) ) ) ) ) )
    d79 : if false then Bool else Bool
    d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> d75 ) ) ) $ ( true ) ) ) ) $ ( if false then d74 else false )
    d82 : if true then Bool else Bool
    d82 = if if false then d74 else true then if d77 then false else true else if false then d76 else d79
    d83 : if true then Bool else Bool
    d83 = if if d79 then d77 else d74 then if true then false else true else if true then d74 else false
    d84 : if false then Bool else Bool
    d84 = ( M.M1'.d8 ) $ ( ( M.M1'.d27 ) $ ( ( M.M1'.d65 ) $ ( ( ( M.M1.d6 ) $ ( if d83 then false else d76 ) ) $ ( if d82 then true else d74 ) ) ) )
    d85 : if false then Bool else Bool
    d85 = ( M.M1'.d12 ) $ ( ( ( M.M1.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x860 -> x860 ) ) ) $ ( false ) ) ) $ ( if d83 then false else d76 ) )
    d87 : if true then Bool else Bool
    d87 = ( ( M.M1.d24 ) $ ( ( M.M1'.d66 ) $ ( ( M.M1'.d57 ) $ ( ( M.M1'.d41 ) $ ( ( M.M1'.d19 ) $ ( ( M.M1'.d46 ) $ ( if d79 then d84 else false ) ) ) ) ) ) ) $ ( ( ( M.M1.d52 ) $ ( false ) ) $ ( d84 ) )
    d88 : if false then Bool else Bool
    d88 = ( M.M1'.d8 ) $ ( ( M.M1'.d34 ) $ ( ( ( M.M1.d18 ) $ ( ( M.M1'.d20 ) $ ( ( M.M1'.d12 ) $ ( ( M.M1'.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x890 -> x890 ) ) ) $ ( true ) ) ) ) ) ) $ ( ( M.M1'.d62 ) $ ( if true then d76 else true ) ) ) )
    d90 : if false then Bool else Bool
    d90 = ( M.M1'.d20 ) $ ( if if d76 then d74 else d74 then if d76 then d83 else d84 else if d88 then true else true )
    d91 : if false then Bool else Bool
    d91 = ( M.M1'.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x920 -> ( ( Bool -> Bool ) ∋ ( ( λ x930 -> x920 ) ) ) $ ( d85 ) ) ) ) $ ( if d85 then d75 else true ) )
    d94 : if false then Bool else Bool
    d94 = if if d77 then d87 else d82 then if d77 then true else d87 else if d82 then true else d82
    d95 : if true then Bool else Bool
    d95 = ( ( M.M1.d46 ) $ ( ( M.M1'.d44 ) $ ( ( M.M1'.d49 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d34 ) $ ( if d77 then d75 else true ) ) ) ) ) ) ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d11 ) $ ( if true then d91 else true ) ) )
    d96 : if false then Bool else Bool
    d96 = if if false then d90 else false then if false then true else d91 else if d82 then d75 else false
    d97 : if true then Bool else Bool
    d97 = if if false then d79 else d91 then if true then false else true else if true then d95 else false
    d98 : if false then Bool else Bool
    d98 = ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if x990 then true else x990 ) ) ) $ ( if false then d87 else true ) )
    d100 : if true then Bool else Bool
    d100 = if if false then d79 else d75 then if d84 then true else false else if d88 then true else false
    d101 : if false then Bool else Bool
    d101 = ( ( M.M1.d49 ) $ ( ( M.M1'.d6 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> d76 ) ) ) $ ( false ) ) ) ) $ ( ( M.M1'.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> d77 ) ) ) $ ( true ) ) )
    d104 : if true then Bool else Bool
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> ( M.M1'.d44 ) $ ( ( ( M.M1.d14 ) $ ( if false then d87 else true ) ) $ ( if d82 then x1050 else d87 ) ) ) ) ) $ ( if true then true else d79 )
    d106 : if true then Bool else Bool
    d106 = if if d101 then d90 else false then if d79 then d95 else d84 else if d76 then d104 else false
    d107 : if true then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( M.M1.d13 ) $ ( if d94 then d96 else true ) ) $ ( if d98 then x1080 else x1080 ) ) ) ) $ ( if false then true else d82 )
    d109 : if false then Bool else Bool
    d109 = ( M.M1'.d73 ) $ ( ( M.M1'.d48 ) $ ( ( M.M1'.d8 ) $ ( ( M.M1'.d73 ) $ ( ( M.M1'.d23 ) $ ( ( ( M.M1.d65 ) $ ( ( M.M1'.d65 ) $ ( if false then false else false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> false ) ) ) $ ( false ) ) ) ) ) ) )
    d111 : if true then Bool else Bool
    d111 = ( M.M1'.d44 ) $ ( ( ( M.M1.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> true ) ) ) $ ( d101 ) ) ) $ ( ( M.M1'.d20 ) $ ( ( ( M.M1.d49 ) $ ( true ) ) $ ( true ) ) ) )
    d113 : if true then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> ( M.M1'.d54 ) $ ( ( M.M1'.d14 ) $ ( if d83 then x1140 else d82 ) ) ) ) ) $ ( if false then d111 else d97 )
    d115 : if false then Bool else Bool
    d115 = ( M.M1'.d66 ) $ ( ( M.M1'.d61 ) $ ( ( M.M1'.d35 ) $ ( ( ( M.M1.d29 ) $ ( ( ( M.M1.d60 ) $ ( d84 ) ) $ ( false ) ) ) $ ( if d79 then d82 else d104 ) ) ) )
    d116 : if true then Bool else Bool
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( M.M1'.d73 ) $ ( ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> d77 ) ) ) $ ( true ) ) ) ) ) ) $ ( if true then true else d95 )
    d119 : if false then Bool else Bool
    d119 = ( M.M1'.d13 ) $ ( if if d94 then d100 else false then if d101 then true else true else if d98 then d116 else d95 )
    d120 : if false then Bool else Bool
    d120 = if if d85 then true else d119 then if false then d111 else d109 else if d109 then d88 else d113
    d121 : if true then Bool else Bool
    d121 = ( M.M1'.d8 ) $ ( if if false then true else d119 then if false then d107 else d76 else if true then false else false )
    d122 : if true then Bool else Bool
    d122 = ( M.M1'.d6 ) $ ( ( ( M.M1.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> x1230 ) ) ) $ ( d107 ) ) ) $ ( ( M.M1'.d46 ) $ ( ( M.M1'.d6 ) $ ( if false then d79 else true ) ) ) )
    d124 : if true then Bool else Bool
    d124 = ( ( M.M1.d65 ) $ ( ( M.M1'.d49 ) $ ( ( ( M.M1.d32 ) $ ( d121 ) ) $ ( d76 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> true ) ) ) $ ( true ) )
    d126 : if true then Bool else Bool
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if true then false else true ) ) ) $ ( if d101 then d98 else true )
    d128 : if false then Bool else Bool
    d128 = ( M.M1'.d73 ) $ ( ( M.M1'.d71 ) $ ( ( ( M.M1.d46 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> d82 ) ) ) $ ( false ) ) ) $ ( if d75 then d119 else true ) ) )
    d130 : if true then Bool else Bool
    d130 = ( ( M.M1.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> true ) ) ) $ ( true ) ) ) $ ( if d83 then d85 else d75 )
    d132 : if false then Bool else Bool
    d132 = ( M.M1'.d18 ) $ ( ( M.M1'.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> ( M.M1'.d33 ) $ ( ( ( M.M1.d5 ) $ ( if d75 then x1330 else false ) ) $ ( if d90 then x1330 else d85 ) ) ) ) ) $ ( if true then true else false ) ) )
    d134 : if true then Bool else Bool
    d134 = if if d83 then false else true then if d115 then false else false else if false then d120 else false
    d135 : if true then Bool else Bool
    d135 = ( M.M1'.d44 ) $ ( if if false then true else d87 then if d109 then false else d75 else if false then true else false )
    d136 : if true then Bool else Bool
    d136 = if if d82 then false else false then if true then d91 else d88 else if d121 then true else true
    d137 : if false then Bool else Bool
    d137 = if if d134 then false else false then if true then d100 else true else if true then true else true
    d138 : if true then Bool else Bool
    d138 = ( ( M.M1.d8 ) $ ( ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> false ) ) ) $ ( d122 ) ) ) ) $ ( ( M.M1'.d52 ) $ ( if true then true else d96 ) )
    d140 : if false then Bool else Bool
    d140 = ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( ( M.M1.d60 ) $ ( if true then d135 else x1410 ) ) $ ( if false then x1410 else x1410 ) ) ) ) $ ( if d83 then false else false ) )
    d142 : if true then Bool else Bool
    d142 = ( M.M1'.d20 ) $ ( ( M.M1'.d57 ) $ ( ( M.M1'.d12 ) $ ( ( ( M.M1.d52 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> x1430 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d52 ) $ ( ( ( M.M1.d61 ) $ ( true ) ) $ ( true ) ) ) ) ) )
    d144 : if false then Bool else Bool
    d144 = if if true then d132 else false then if true then d87 else d95 else if d136 then true else true
    d145 : if true then Bool else Bool
    d145 = ( M.M1'.d71 ) $ ( ( M.M1'.d62 ) $ ( ( ( M.M1.d6 ) $ ( ( ( M.M1.d10 ) $ ( false ) ) $ ( false ) ) ) $ ( ( M.M1'.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( true ) ) ) ) )
    d147 : if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( ( M.M1.d69 ) $ ( if x1480 then d83 else d106 ) ) $ ( if false then d121 else false ) ) ) ) $ ( if d95 then true else d119 )
    d149 : if true then Bool else Bool
    d149 = ( M.M1'.d44 ) $ ( ( M.M1'.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false ) ) )
    d152 : if true then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( M.M1'.d61 ) $ ( ( M.M1'.d27 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1530 ) ) ) $ ( x1530 ) ) ) ) ) ) $ ( if false then d96 else false )
    d155 : if false then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> ( ( M.M1.d14 ) $ ( if x1560 then d82 else false ) ) $ ( if x1560 then d100 else d85 ) ) ) ) $ ( if true then false else true )