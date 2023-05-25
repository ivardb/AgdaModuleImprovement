module TypeSize5Test9  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if false then Bool else x20 ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else Bool ) ) ) $ ( Bool ) )  where
            d5 : if false then Bool else Bool
            d5 = if if p10 then true else true then if false then p30 else p10 else if false then p10 else p10
            d6 : if true then Bool else Bool
            d6 = if if false then true else p10 then if true then d5 else d5 else if true then p10 else d5
            d7 : if false then Bool else Bool
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( p30 ) ) ) ) $ ( if p10 then p10 else true )
            d10 : if true then Bool else Bool
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d5 ) ) ) $ ( true ) ) ) ) $ ( if p30 then d6 else d6 )
            d13 : if false then Bool else Bool
            d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> d10 ) ) ) $ ( x140 ) ) ) ) $ ( if p30 then d6 else p30 )
            d16 : if true then Bool else Bool
            d16 = if if false then p30 else false then if d6 then d7 else p10 else if true then d6 else d13
            d17 : if true then Bool else Bool
            d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if x180 then d5 else false ) ) ) $ ( if p10 then d13 else false )
            d19 : if false then Bool else Bool
            d19 = if if d7 then d7 else p10 then if p10 then false else p10 else if d16 then false else d7
            d20 : if false then Bool else Bool
            d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if x210 then d5 else d5 ) ) ) $ ( if false then true else false )
            d22 : if false then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> false ) ) ) $ ( d10 ) ) ) ) $ ( if p10 then d5 else true )
            d25 : if false then Bool else Bool
            d25 = if if p10 then d22 else d19 then if d16 then d19 else d17 else if false then d19 else d13
            d26 : if false then Bool else Bool
            d26 = if if true then false else false then if true then p10 else d10 else if p30 then d5 else d20
            d27 : if true then Bool else Bool
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> p30 ) ) ) $ ( x280 ) ) ) ) $ ( if d25 then d13 else true )
            d30 : if true then Bool else Bool
            d30 = if if d26 then p30 else d7 then if false then false else true else if p10 then p30 else false
            d31 : if false then Bool else Bool
            d31 = if if d16 then false else p30 then if d13 then p10 else true else if d7 then d7 else d6
            d32 : if true then Bool else Bool
            d32 = ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if d5 then d10 else true ) ) ) $ ( if false then true else d16 )
            d34 : if false then Bool else Bool
            d34 = if if true then p10 else d16 then if true then p10 else true else if p10 then true else d13
            d35 : if true then Bool else Bool
            d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> if p10 then true else p30 ) ) ) $ ( if p30 then p10 else p10 )
            d37 : if false then Bool else Bool
            d37 = if if p10 then d31 else d20 then if p10 then true else p10 else if d6 then false else p30
            d38 : if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> true ) ) ) $ ( d16 ) ) ) ) $ ( if p30 then false else d25 )
            d41 : if true then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if d20 then p30 else d16 )
            d44 : if true then Bool else Bool
            d44 = ( ( Bool -> Bool ) ∋ ( ( λ x450 -> ( ( Bool -> Bool ) ∋ ( ( λ x460 -> p10 ) ) ) $ ( d26 ) ) ) ) $ ( if d6 then false else p10 )
            d47 : if false then Bool else Bool
            d47 = if if d27 then p30 else false then if p30 then d22 else d44 else if p10 then p30 else true
            d48 : if false then Bool else Bool
            d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> if true then p10 else p10 ) ) ) $ ( if false then d6 else d37 )
            d50 : if false then Bool else Bool
            d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if x510 then d37 else true ) ) ) $ ( if false then p10 else d48 )
            d52 : if true then Bool else Bool
            d52 = if if d16 then true else true then if false then d27 else p10 else if d30 then d19 else d34
            d53 : if false then Bool else Bool
            d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> x540 ) ) ) $ ( p10 ) ) ) ) $ ( if true then p10 else d32 )
            d56 : if true then Bool else Bool
            d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x580 -> x570 ) ) ) $ ( true ) ) ) ) $ ( if p10 then true else p10 )
            d59 : if true then Bool else Bool
            d59 = if if p10 then d52 else d20 then if d31 then p10 else true else if p30 then p30 else d53
            d60 : if false then Bool else Bool
            d60 = if if p10 then p10 else true then if false then p10 else p10 else if false then p30 else p30
            d61 : if false then Bool else Bool
            d61 = if if false then d60 else d56 then if d53 then d5 else d53 else if true then d56 else d41
            d62 : if false then Bool else Bool
            d62 = if if p30 then p10 else d32 then if false then true else false else if p30 then p10 else p10
            d63 : if false then Bool else Bool
            d63 = if if p30 then true else d32 then if false then false else d35 else if d53 then d5 else true
            d64 : if false then Bool else Bool
            d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( Bool -> Bool ) ∋ ( ( λ x660 -> x660 ) ) ) $ ( true ) ) ) ) $ ( if true then d25 else true )
            d67 : if true then Bool else Bool
            d67 = if if p30 then true else p10 then if d7 then d7 else true else if d37 then d30 else d32
            d68 : if true then Bool else Bool
            d68 = if if false then d62 else d5 then if p10 then p10 else d53 else if true then d35 else false
            d69 : if true then Bool else Bool
            d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> if x700 then false else d60 ) ) ) $ ( if d44 then d17 else p30 )
            d71 : if true then Bool else Bool
            d71 = if if p30 then true else p10 then if p10 then true else d63 else if true then d22 else p10
            d72 : if true then Bool else Bool
            d72 = if if false then d68 else p10 then if p10 then true else true else if p10 then p10 else p10
            d73 : if false then Bool else Bool
            d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> d31 ) ) ) $ ( x740 ) ) ) ) $ ( if p30 then false else false )
        module M1'  = M1 ( true ) 
    d76 : if false then Bool else Bool
    d76 = ( M.M1'.d60 ) $ ( ( M.M1'.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( M.M1'.d25 ) $ ( if false then true else x770 ) ) ) ) $ ( if false then true else false ) ) )
    d78 : if true then Bool else Bool
    d78 = ( M.M1'.d44 ) $ ( ( M.M1'.d38 ) $ ( if if false then true else true then if false then d76 else d76 else if false then d76 else false ) )
    d79 : if true then Bool else Bool
    d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if x800 then d78 else false ) ) ) $ ( if d78 then d76 else true )
    d81 : if false then Bool else Bool
    d81 = ( ( M.M1.d30 ) $ ( if d79 then d76 else d79 ) ) $ ( if true then d79 else d79 )
    d82 : if true then Bool else Bool
    d82 = if if true then true else d78 then if d78 then true else true else if true then true else d81
    d83 : if true then Bool else Bool
    d83 = if if d82 then d78 else false then if d81 then true else d79 else if false then false else true
    d84 : if false then Bool else Bool
    d84 = if if true then d83 else d76 then if d76 then false else false else if false then d76 else false
    d85 : if false then Bool else Bool
    d85 = ( ( Bool -> Bool ) ∋ ( ( λ x860 -> ( ( M.M1.d19 ) $ ( if x860 then x860 else d84 ) ) $ ( if true then x860 else x860 ) ) ) ) $ ( if d82 then false else false )
    d87 : if true then Bool else Bool
    d87 = ( M.M1'.d31 ) $ ( ( ( M.M1.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x880 -> true ) ) ) $ ( d76 ) ) ) $ ( ( ( M.M1.d71 ) $ ( true ) ) $ ( true ) ) )
    d89 : if false then Bool else Bool
    d89 = if if true then d83 else d76 then if true then d78 else d76 else if d84 then false else d82
    d90 : if true then Bool else Bool
    d90 = if if false then true else false then if d81 then d85 else false else if true then false else false
    d91 : if false then Bool else Bool
    d91 = ( M.M1'.d7 ) $ ( ( M.M1'.d68 ) $ ( if if true then true else d89 then if d76 then true else d89 else if d85 then false else d90 ) )
    d92 : if false then Bool else Bool
    d92 = ( M.M1'.d73 ) $ ( ( M.M1'.d64 ) $ ( if if true then d89 else d90 then if true then true else d85 else if false then true else d83 ) )
    d93 : if false then Bool else Bool
    d93 = ( M.M1'.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if false then d78 else d85 ) ) ) $ ( if true then true else d91 ) )
    d95 : if false then Bool else Bool
    d95 = if if d78 then false else d83 then if d81 then true else false else if d82 then false else false
    d96 : if false then Bool else Bool
    d96 = ( ( M.M1.d32 ) $ ( ( M.M1'.d31 ) $ ( ( ( M.M1.d10 ) $ ( true ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d72 ) $ ( if d82 then d93 else d85 ) )
    d97 : if true then Bool else Bool
    d97 = ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> if true then true else d95 ) ) ) $ ( if d78 then d79 else d90 ) )
    d99 : if true then Bool else Bool
    d99 = ( ( M.M1.d53 ) $ ( ( M.M1'.d60 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> false ) ) ) $ ( true ) ) ) ) $ ( if d93 then false else d84 )
    d101 : if true then Bool else Bool
    d101 = ( ( M.M1.d68 ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d37 ) $ ( d95 ) ) $ ( true ) ) ) ) $ ( ( ( M.M1.d16 ) $ ( true ) ) $ ( d85 ) )
    d102 : if true then Bool else Bool
    d102 = ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> ( ( M.M1.d52 ) $ ( if x1030 then d83 else x1030 ) ) $ ( if d90 then d89 else false ) ) ) ) $ ( if false then d85 else false )
    d104 : if false then Bool else Bool
    d104 = ( M.M1'.d50 ) $ ( ( ( M.M1.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> d78 ) ) ) $ ( d82 ) ) ) $ ( ( M.M1'.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( false ) ) ) )
    d107 : if false then Bool else Bool
    d107 = ( M.M1'.d6 ) $ ( ( M.M1'.d17 ) $ ( ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> if d91 then x1080 else d99 ) ) ) $ ( if d85 then false else false ) ) ) )
    d109 : if true then Bool else Bool
    d109 = ( M.M1'.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> ( ( M.M1.d47 ) $ ( if true then x1100 else false ) ) $ ( if true then true else d93 ) ) ) ) $ ( if d83 then false else false ) )
    d111 : if true then Bool else Bool
    d111 = ( M.M1'.d32 ) $ ( ( M.M1'.d10 ) $ ( if if true then d81 else d99 then if false then true else false else if d82 then d85 else true ) )
    d112 : if false then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( M.M1'.d48 ) $ ( ( M.M1'.d68 ) $ ( if d99 then true else x1130 ) ) ) ) ) $ ( if true then true else true )
    d114 : if false then Bool else Bool
    d114 = ( ( M.M1.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( d82 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> false ) ) ) $ ( d84 ) )
    d117 : if true then Bool else Bool
    d117 = ( M.M1'.d20 ) $ ( ( M.M1'.d22 ) $ ( if if true then d93 else false then if false then d104 else true else if d81 then false else d95 ) )
    d118 : if true then Bool else Bool
    d118 = ( M.M1'.d71 ) $ ( ( ( M.M1.d17 ) $ ( ( M.M1'.d41 ) $ ( ( M.M1'.d44 ) $ ( ( M.M1'.d38 ) $ ( if false then true else d91 ) ) ) ) ) $ ( ( M.M1'.d25 ) $ ( ( M.M1'.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> x1190 ) ) ) $ ( false ) ) ) ) )
    d120 : if false then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> ( M.M1'.d6 ) $ ( ( M.M1'.d38 ) $ ( if x1210 then x1210 else true ) ) ) ) ) $ ( if true then d82 else d91 )
    d122 : if false then Bool else Bool
    d122 = ( M.M1'.d61 ) $ ( ( M.M1'.d26 ) $ ( ( ( M.M1.d5 ) $ ( ( M.M1'.d7 ) $ ( ( M.M1'.d27 ) $ ( ( ( M.M1.d26 ) $ ( false ) ) $ ( false ) ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> d109 ) ) ) $ ( false ) ) ) )
    d124 : if false then Bool else Bool
    d124 = ( M.M1'.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> if d82 then d78 else d109 ) ) ) $ ( if d91 then true else false ) )
    d126 : if true then Bool else Bool
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> ( M.M1'.d48 ) $ ( ( ( M.M1.d37 ) $ ( if d120 then false else x1270 ) ) $ ( if false then true else true ) ) ) ) ) $ ( if false then d97 else d117 )
    d128 : if false then Bool else Bool
    d128 = ( ( M.M1.d6 ) $ ( if d87 then false else true ) ) $ ( ( M.M1'.d48 ) $ ( ( M.M1'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> d118 ) ) ) $ ( false ) ) ) )
    d130 : if false then Bool else Bool
    d130 = ( M.M1'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> ( ( M.M1.d10 ) $ ( if x1310 then d104 else x1310 ) ) $ ( if true then true else d90 ) ) ) ) $ ( if d118 then false else false ) )
    d132 : if true then Bool else Bool
    d132 = ( M.M1'.d17 ) $ ( if if false then true else true then if true then false else false else if false then d95 else true )
    d133 : if true then Bool else Bool
    d133 = ( M.M1'.d60 ) $ ( ( M.M1'.d50 ) $ ( ( M.M1'.d52 ) $ ( if if d111 then false else true then if d126 then d90 else true else if d97 then d83 else d82 ) ) )
    d134 : if false then Bool else Bool
    d134 = ( ( M.M1.d22 ) $ ( ( ( M.M1.d47 ) $ ( true ) ) $ ( d78 ) ) ) $ ( ( ( M.M1.d27 ) $ ( d124 ) ) $ ( d84 ) )
    d135 : if false then Bool else Bool
    d135 = ( ( M.M1.d20 ) $ ( ( ( M.M1.d67 ) $ ( d109 ) ) $ ( false ) ) ) $ ( ( ( M.M1.d25 ) $ ( d112 ) ) $ ( true ) )
    d136 : if false then Bool else Bool
    d136 = ( M.M1'.d25 ) $ ( ( M.M1'.d27 ) $ ( if if false then d102 else false then if d96 then d124 else false else if false then d117 else d90 ) )
    d137 : if true then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( M.M1'.d56 ) $ ( if x1380 then d84 else false ) ) ) ) $ ( if d89 then d104 else false )
    d139 : if false then Bool else Bool
    d139 = ( M.M1'.d35 ) $ ( ( M.M1'.d60 ) $ ( if if true then true else d91 then if true then d96 else true else if true then false else false ) )
    d140 : if true then Bool else Bool
    d140 = ( M.M1'.d37 ) $ ( ( ( M.M1.d27 ) $ ( ( ( M.M1.d17 ) $ ( true ) ) $ ( d93 ) ) ) $ ( ( M.M1'.d56 ) $ ( ( M.M1'.d20 ) $ ( if d124 then d139 else d93 ) ) ) )
    d141 : if false then Bool else Bool
    d141 = ( M.M1'.d6 ) $ ( ( ( M.M1.d22 ) $ ( if d122 then false else d118 ) ) $ ( ( M.M1'.d52 ) $ ( ( M.M1'.d37 ) $ ( if true then d93 else true ) ) ) )
    d142 : if false then Bool else Bool
    d142 = ( M.M1'.d26 ) $ ( if if d79 then d85 else false then if d87 then true else false else if d122 then false else d81 )
    d143 : if true then Bool else Bool
    d143 = ( M.M1'.d34 ) $ ( if if d90 then d102 else true then if d84 then true else d120 else if true then false else false )
    d144 : if false then Bool else Bool
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if d141 then false else x1450 ) ) ) $ ( if true then d122 else false )
    d146 : if true then Bool else Bool
    d146 = ( M.M1'.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1470 -> ( ( M.M1.d68 ) $ ( if true then x1470 else false ) ) $ ( if x1470 then d78 else false ) ) ) ) $ ( if d93 then d126 else false ) )
    d148 : if true then Bool else Bool
    d148 = ( M.M1'.d71 ) $ ( if if d84 then true else true then if false then true else true else if d135 then d81 else d137 )
    d149 : if true then Bool else Bool
    d149 = ( ( M.M1.d13 ) $ ( ( ( M.M1.d32 ) $ ( d136 ) ) $ ( d135 ) ) ) $ ( ( ( M.M1.d64 ) $ ( d96 ) ) $ ( true ) )
    d150 : if true then Bool else Bool
    d150 = ( M.M1'.d6 ) $ ( ( M.M1'.d20 ) $ ( ( M.M1'.d34 ) $ ( ( M.M1'.d47 ) $ ( if if d109 then d148 else d122 then if false then false else d92 else if d92 then d90 else true ) ) ) )