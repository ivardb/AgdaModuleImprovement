module TypeSize5Test11  where
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
        module M1 ( p30 : if false then Bool else Bool )  where
            d4 : if true then Bool else Bool
            d4 = if if false then p30 else p10 then if false then p30 else p10 else if false then false else true
            d5 : if false then Bool else Bool
            d5 = if if false then p30 else p30 then if p30 then false else p30 else if false then p30 else p30
            d6 : if false then Bool else Bool
            d6 = if if p30 then true else true then if true then d5 else p30 else if d4 then d4 else true
            d7 : if false then Bool else Bool
            d7 = if if p10 then p10 else d4 then if d4 then p10 else d4 else if true then d4 else d6
            d8 : if false then Bool else Bool
            d8 = if if p30 then true else p10 then if p10 then d7 else d7 else if p30 then d6 else false
            d9 : if true then Bool else Bool
            d9 = if if true then false else d6 then if p30 then d4 else d8 else if false then p30 else p10
            d10 : if false then Bool else Bool
            d10 = if if d5 then d6 else p30 then if p10 then p30 else p10 else if d6 then false else d6
            d11 : if true then Bool else Bool
            d11 = if if p10 then false else d5 then if p30 then false else false else if d4 then p30 else false
            d12 : if true then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if p30 then d9 else false ) ) ) $ ( if p30 then d4 else false )
            d14 : if false then Bool else Bool
            d14 = if if true then false else d8 then if p30 then p30 else true else if p10 then d7 else d10
            d15 : if true then Bool else Bool
            d15 = if if true then p30 else p10 then if false then d9 else p30 else if p10 then true else d12
            d16 : if false then Bool else Bool
            d16 = if if true then p10 else false then if false then false else p30 else if true then true else true
            d17 : if false then Bool else Bool
            d17 = if if true then true else false then if p30 then false else p10 else if true then d14 else p10
            d18 : if false then Bool else Bool
            d18 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> if x190 then d14 else p10 ) ) ) $ ( if p10 then d15 else false )
            d20 : if false then Bool else Bool
            d20 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> if p10 then p30 else d7 ) ) ) $ ( if false then p10 else d5 )
            d22 : if false then Bool else Bool
            d22 = if if false then false else p10 then if d12 then p10 else d20 else if d16 then p30 else p10
            d23 : if false then Bool else Bool
            d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> if d15 then true else x240 ) ) ) $ ( if d22 then p10 else true )
            d25 : if false then Bool else Bool
            d25 = if if d8 then p10 else true then if true then d6 else true else if d18 then p10 else false
            d26 : if false then Bool else Bool
            d26 = if if false then p30 else d22 then if false then d25 else p10 else if true then d17 else true
            d27 : if false then Bool else Bool
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d6 ) ) ) $ ( d18 ) ) ) ) $ ( if d25 then false else p30 )
            d30 : if true then Bool else Bool
            d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if d9 then d8 else p30 ) ) ) $ ( if false then p30 else false )
            d32 : if false then Bool else Bool
            d32 = if if d30 then p10 else d12 then if false then false else p10 else if p10 then false else d30
            d33 : if false then Bool else Bool
            d33 = if if true then d6 else false then if p30 then d25 else true else if p30 then true else d9
            d34 : if false then Bool else Bool
            d34 = if if false then d7 else d6 then if true then d14 else p30 else if true then true else false
            d35 : if true then Bool else Bool
            d35 = if if p10 then p30 else d22 then if p10 then d17 else false else if p30 then p30 else d23
            d36 : if true then Bool else Bool
            d36 = if if p10 then d11 else d15 then if false then false else p10 else if true then p30 else p10
            d37 : if true then Bool else Bool
            d37 = if if d6 then p10 else p10 then if p10 then p30 else d18 else if p10 then d7 else false
            d38 : if true then Bool else Bool
            d38 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> ( ( Bool -> Bool ) ∋ ( ( λ x400 -> false ) ) ) $ ( d9 ) ) ) ) $ ( if p10 then false else d23 )
            d41 : if true then Bool else Bool
            d41 = if if d10 then d4 else p30 then if d10 then d38 else true else if p30 then d22 else p10
            d42 : if false then Bool else Bool
            d42 = if if p10 then d12 else true then if d12 then p10 else p30 else if d36 then true else false
            d43 : if false then Bool else Bool
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if d8 then d37 else d18 ) ) ) $ ( if d32 then false else false )
            d45 : if false then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> if d9 then d25 else false ) ) ) $ ( if p30 then p10 else false )
            d47 : if false then Bool else Bool
            d47 = ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if d42 then d26 else p10 ) ) ) $ ( if p30 then d36 else d14 )
            d49 : if true then Bool else Bool
            d49 = if if p30 then d35 else true then if p30 then false else d20 else if p10 then p30 else p30
            d50 : if false then Bool else Bool
            d50 = if if true then p10 else false then if p10 then p10 else d38 else if p10 then p10 else d10
            d51 : if false then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> if true then true else false ) ) ) $ ( if p30 then d4 else d32 )
            d53 : if true then Bool else Bool
            d53 = if if p10 then true else d34 then if p10 then true else p30 else if d14 then true else true
            d54 : if false then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> p30 ) ) ) $ ( d5 ) ) ) ) $ ( if p30 then d12 else true )
            d57 : if false then Bool else Bool
            d57 = if if d33 then true else d37 then if true then p10 else true else if p10 then d49 else d22
            d58 : if false then Bool else Bool
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> true ) ) ) $ ( true ) ) ) ) $ ( if p10 then d33 else p30 )
        module M1'  = M1 ( p10 ) 
    d61 : if true then Bool else Bool
    d61 = ( ( M.M1.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( false ) ) ) $ ( ( M.M1'.d23 ) $ ( ( M.M1'.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( false ) ) ) )
    d64 : if true then Bool else Bool
    d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> ( ( M.M1.d6 ) $ ( if x650 then d61 else x650 ) ) $ ( if x650 then d61 else d61 ) ) ) ) $ ( if d61 then false else d61 )
    d66 : if true then Bool else Bool
    d66 = if if true then false else d61 then if d61 then true else false else if false then false else d61
    d67 : if true then Bool else Bool
    d67 = if if d61 then true else d64 then if true then d66 else d66 else if false then d66 else d64
    d68 : if false then Bool else Bool
    d68 = ( ( M.M1.d54 ) $ ( ( M.M1'.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x690 -> d64 ) ) ) $ ( d64 ) ) ) ) $ ( ( M.M1'.d33 ) $ ( if d64 then false else true ) )
    d70 : if true then Bool else Bool
    d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> ( M.M1'.d32 ) $ ( ( M.M1'.d32 ) $ ( ( ( M.M1.d4 ) $ ( if true then x710 else d68 ) ) $ ( if x710 then x710 else x710 ) ) ) ) ) ) $ ( if false then d66 else d67 )
    d72 : if false then Bool else Bool
    d72 = ( M.M1'.d30 ) $ ( ( M.M1'.d35 ) $ ( ( ( M.M1.d47 ) $ ( if d66 then false else true ) ) $ ( ( M.M1'.d18 ) $ ( ( ( M.M1.d25 ) $ ( false ) ) $ ( true ) ) ) ) )
    d73 : if true then Bool else Bool
    d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> x740 ) ) ) $ ( false ) ) ) ) $ ( if d67 then false else d64 )
    d76 : if false then Bool else Bool
    d76 = ( M.M1'.d6 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( Bool -> Bool ) ∋ ( ( λ x780 -> false ) ) ) $ ( true ) ) ) ) $ ( if d68 then true else d70 ) )
    d79 : if false then Bool else Bool
    d79 = ( ( M.M1.d6 ) $ ( ( M.M1'.d38 ) $ ( if false then false else false ) ) ) $ ( ( M.M1'.d4 ) $ ( if d76 then false else d64 ) )
    d80 : if true then Bool else Bool
    d80 = ( ( M.M1.d22 ) $ ( if false then false else d64 ) ) $ ( if true then d70 else true )
    d81 : if false then Bool else Bool
    d81 = ( ( Bool -> Bool ) ∋ ( ( λ x820 -> if d72 then d79 else d61 ) ) ) $ ( if true then d66 else false )
    d83 : if true then Bool else Bool
    d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> d76 ) ) ) $ ( x840 ) ) ) ) $ ( if true then false else d72 )
    d86 : if false then Bool else Bool
    d86 = ( ( M.M1.d18 ) $ ( ( ( M.M1.d54 ) $ ( d68 ) ) $ ( d76 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x870 -> true ) ) ) $ ( d72 ) )
    d88 : if false then Bool else Bool
    d88 = if if true then true else true then if true then d61 else d76 else if true then false else true
    d89 : if true then Bool else Bool
    d89 = if if false then d80 else false then if d66 then true else d68 else if d79 then false else true
    d90 : if true then Bool else Bool
    d90 = if if false then d81 else false then if d61 then d70 else false else if true then true else false
    d91 : if true then Bool else Bool
    d91 = ( ( M.M1.d30 ) $ ( if false then d81 else false ) ) $ ( if d86 then false else true )
    d92 : if false then Bool else Bool
    d92 = ( M.M1'.d20 ) $ ( if if d91 then d89 else false then if false then false else false else if true then true else true )
    d93 : if true then Bool else Bool
    d93 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if true then x940 else x940 ) ) ) $ ( if false then true else true )
    d95 : if true then Bool else Bool
    d95 = if if d83 then d67 else true then if d66 then false else false else if d83 then d88 else d86
    d96 : if false then Bool else Bool
    d96 = if if false then d89 else false then if d83 then false else true else if d68 then false else false
    d97 : if false then Bool else Bool
    d97 = ( M.M1'.d47 ) $ ( ( M.M1'.d33 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d36 ) $ ( if if false then false else d91 then if false then true else d92 else if d89 then true else true ) ) ) )
    d98 : if true then Bool else Bool
    d98 = ( ( M.M1.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x990 -> d95 ) ) ) $ ( d97 ) ) ) $ ( ( ( M.M1.d41 ) $ ( false ) ) $ ( false ) )
    d100 : if false then Bool else Bool
    d100 = ( ( M.M1.d11 ) $ ( ( M.M1'.d49 ) $ ( ( M.M1'.d36 ) $ ( if false then true else d70 ) ) ) ) $ ( if false then d70 else true )
    d101 : if true then Bool else Bool
    d101 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> x1030 ) ) ) $ ( d80 ) ) ) ) $ ( if d96 then d97 else d97 )
    d104 : if true then Bool else Bool
    d104 = ( M.M1'.d47 ) $ ( ( M.M1'.d35 ) $ ( ( M.M1'.d34 ) $ ( ( ( M.M1.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> x1050 ) ) ) $ ( d88 ) ) ) $ ( if false then d73 else d88 ) ) ) )
    d106 : if true then Bool else Bool
    d106 = ( M.M1'.d25 ) $ ( if if false then d79 else false then if d80 then true else d64 else if false then false else true )
    d107 : if true then Bool else Bool
    d107 = ( M.M1'.d7 ) $ ( ( M.M1'.d26 ) $ ( ( M.M1'.d43 ) $ ( ( M.M1'.d20 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d25 ) $ ( ( M.M1'.d7 ) $ ( ( M.M1'.d20 ) $ ( if if d98 then d70 else false then if d64 then d104 else true else if d101 then false else d86 ) ) ) ) ) ) ) )
    d108 : if true then Bool else Bool
    d108 = if if false then true else true then if d67 then false else d80 else if false then d72 else d80
    d109 : if false then Bool else Bool
    d109 = ( ( M.M1.d27 ) $ ( ( M.M1'.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1100 -> d66 ) ) ) $ ( d89 ) ) ) ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d6 ) $ ( ( M.M1'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> d67 ) ) ) $ ( true ) ) ) ) )
    d112 : if true then Bool else Bool
    d112 = ( ( M.M1.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( true ) ) ) $ ( if d97 then d70 else d70 )
    d114 : if true then Bool else Bool
    d114 = ( M.M1'.d4 ) $ ( ( M.M1'.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> ( M.M1'.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( true ) ) ) ) ) $ ( if true then true else false ) ) )
    d117 : if true then Bool else Bool
    d117 = ( M.M1'.d54 ) $ ( ( ( M.M1.d49 ) $ ( ( M.M1'.d26 ) $ ( ( M.M1'.d38 ) $ ( ( M.M1'.d35 ) $ ( ( M.M1'.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> x1180 ) ) ) $ ( true ) ) ) ) ) ) ) $ ( ( M.M1'.d23 ) $ ( ( M.M1'.d36 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> x1190 ) ) ) $ ( d92 ) ) ) ) )
    d120 : if true then Bool else Bool
    d120 = ( ( M.M1.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1210 -> x1210 ) ) ) $ ( false ) ) ) $ ( if d107 then true else false )
    d122 : if false then Bool else Bool
    d122 = if if true then false else true then if d67 then true else true else if true then d107 else false
    d123 : if false then Bool else Bool
    d123 = ( ( M.M1.d32 ) $ ( ( M.M1'.d16 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> false ) ) ) $ ( d61 ) )
    d126 : if true then Bool else Bool
    d126 = ( M.M1'.d50 ) $ ( ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> if d70 then true else d104 ) ) ) $ ( if d100 then false else d66 ) ) )
    d128 : if false then Bool else Bool
    d128 = ( M.M1'.d42 ) $ ( if if true then true else false then if d122 then d120 else d108 else if d107 then false else d92 )
    d129 : if true then Bool else Bool
    d129 = if if d66 then d81 else d86 then if true then d93 else true else if d98 then d106 else d68
    d130 : if true then Bool else Bool
    d130 = ( M.M1'.d18 ) $ ( if if false then d117 else d108 then if d70 then d95 else false else if d120 then true else true )
    d131 : if false then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> ( ( M.M1.d26 ) $ ( if d98 then d88 else true ) ) $ ( if x1320 then true else x1320 ) ) ) ) $ ( if d128 then d112 else d106 )
    d133 : if true then Bool else Bool
    d133 = if if d112 then d107 else d104 then if true then false else d93 else if d72 then d76 else d97
    d134 : if false then Bool else Bool
    d134 = if if true then d73 else false then if d120 then d81 else false else if true then d64 else false
    d135 : if false then Bool else Bool
    d135 = if if d97 then d122 else true then if false then d61 else d107 else if true then true else d126
    d136 : if true then Bool else Bool
    d136 = ( ( M.M1.d49 ) $ ( if d93 then true else d98 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> x1370 ) ) ) $ ( d81 ) )
    d138 : if true then Bool else Bool
    d138 = ( ( M.M1.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.M1.d42 ) $ ( true ) ) $ ( d91 ) )
    d140 : if true then Bool else Bool
    d140 = ( M.M1'.d38 ) $ ( ( M.M1'.d45 ) $ ( if if d79 then d96 else d114 then if false then true else true else if d73 then true else d101 ) )
    d141 : if false then Bool else Bool
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> false ) ) ) $ ( x1420 ) ) ) ) $ ( if d100 then d93 else d66 )
    d144 : if true then Bool else Bool
    d144 = if if d88 then d134 else d140 then if false then true else d104 else if d107 then false else d112