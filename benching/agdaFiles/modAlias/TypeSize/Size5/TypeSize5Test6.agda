module TypeSize5Test6  where
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
        module M1 ( p20 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else x30 ) ) ) $ ( Bool ) )  where
            d4 : if true then Bool else Bool
            d4 = if if true then true else true then if true then p10 else false else if p20 then true else false
            d5 : if true then Bool else Bool
            d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if true then false else p20 ) ) ) $ ( if d4 then false else p10 )
            d7 : if false then Bool else Bool
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if false then x80 else false ) ) ) $ ( if false then p20 else p20 )
            d9 : if false then Bool else Bool
            d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> p20 ) ) ) $ ( p20 ) ) ) ) $ ( if d5 then true else d7 )
            d12 : if true then Bool else Bool
            d12 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if false then p20 else p20 )
            d15 : if false then Bool else Bool
            d15 = if if true then d12 else p10 then if d5 then false else d4 else if p10 then p10 else true
            d16 : if true then Bool else Bool
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> d7 ) ) ) $ ( p10 ) ) ) ) $ ( if p20 then false else d12 )
            d19 : if true then Bool else Bool
            d19 = if if p20 then p10 else true then if true then true else p20 else if d12 then p10 else p10
            d20 : if false then Bool else Bool
            d20 = if if d19 then d5 else d16 then if p20 then d16 else d7 else if d7 then d12 else d12
            d21 : if false then Bool else Bool
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if true then x220 else p10 ) ) ) $ ( if true then false else p10 )
            d23 : if false then Bool else Bool
            d23 = if if true then false else d21 then if p10 then false else d9 else if p20 then d16 else d7
            d24 : if true then Bool else Bool
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> true ) ) ) $ ( true ) ) ) ) $ ( if p20 then d9 else p20 )
            d27 : if true then Bool else Bool
            d27 = if if d21 then d12 else d24 then if false then p10 else p20 else if d24 then true else d20
            d28 : if false then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then p20 else d5 )
            d31 : if false then Bool else Bool
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> false ) ) ) $ ( p20 ) ) ) ) $ ( if true then p20 else false )
            d34 : if true then Bool else Bool
            d34 = if if true then false else false then if true then p10 else p10 else if d24 then p20 else p10
            d35 : if false then Bool else Bool
            d35 = if if p10 then d34 else p20 then if d12 then true else true else if true then d20 else false
            d36 : if false then Bool else Bool
            d36 = ( ( Bool -> Bool ) ∋ ( ( λ x370 -> ( ( Bool -> Bool ) ∋ ( ( λ x380 -> d9 ) ) ) $ ( true ) ) ) ) $ ( if p10 then p10 else false )
            d39 : if true then Bool else Bool
            d39 = if if p10 then d28 else true then if false then p10 else false else if p20 then p20 else d4
            d40 : if false then Bool else Bool
            d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> false ) ) ) $ ( false ) ) ) ) $ ( if p10 then true else d15 )
            d43 : if true then Bool else Bool
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( d35 ) ) ) ) $ ( if p10 then d34 else false )
            d46 : if false then Bool else Bool
            d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> if p10 then p20 else true ) ) ) $ ( if false then p20 else false )
            d48 : if true then Bool else Bool
            d48 = if if p10 then false else d31 then if false then false else p10 else if d23 then true else d4
            d49 : if true then Bool else Bool
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if true then true else p20 ) ) ) $ ( if true then p20 else true )
            d51 : if false then Bool else Bool
            d51 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x530 -> d16 ) ) ) $ ( true ) ) ) ) $ ( if p20 then d4 else p10 )
            d54 : if true then Bool else Bool
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x560 -> d28 ) ) ) $ ( d23 ) ) ) ) $ ( if false then p10 else true )
            d57 : if false then Bool else Bool
            d57 = if if d19 then p20 else p10 then if d12 then d46 else p10 else if d4 then p20 else p20
            d58 : if true then Bool else Bool
            d58 = if if d5 then true else true then if false then true else p20 else if p10 then p10 else p20
            d59 : if false then Bool else Bool
            d59 = if if false then false else p20 then if d24 then false else true else if d19 then true else d43
            d60 : if false then Bool else Bool
            d60 = if if p20 then d12 else false then if d46 then p10 else d59 else if true then d5 else p20
            d61 : if false then Bool else Bool
            d61 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if d7 then d60 else p10 ) ) ) $ ( if p10 then d49 else true )
            d63 : if false then Bool else Bool
            d63 = if if true then d59 else d31 then if p10 then d40 else d58 else if p10 then true else d7
            d64 : if true then Bool else Bool
            d64 = ( ( Bool -> Bool ) ∋ ( ( λ x650 -> if d59 then false else p10 ) ) ) $ ( if d28 then p10 else true )
            d66 : if false then Bool else Bool
            d66 = if if p20 then d40 else true then if d9 then false else true else if d21 then p20 else true
            d67 : if true then Bool else Bool
            d67 = if if true then false else d20 then if p10 then p10 else d12 else if d19 then false else false
            d68 : if true then Bool else Bool
            d68 = ( ( Bool -> Bool ) ∋ ( ( λ x690 -> ( ( Bool -> Bool ) ∋ ( ( λ x700 -> false ) ) ) $ ( d36 ) ) ) ) $ ( if p20 then p20 else p20 )
            d71 : if true then Bool else Bool
            d71 = if if p20 then true else d63 then if p10 then false else false else if false then d5 else d57
            d72 : if false then Bool else Bool
            d72 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if true then p10 else d63 )
            d75 : if true then Bool else Bool
            d75 = if if false then d43 else d43 then if d16 then d23 else p10 else if p10 then p10 else d9
            d76 : if false then Bool else Bool
            d76 = if if false then false else true then if d36 then false else d72 else if d23 then d46 else false
        module M1'  = M1 ( false ) 
    d77 : if false then Bool else Bool
    d77 = ( ( M.M1.d75 ) $ ( ( ( M.M1.d28 ) $ ( false ) ) $ ( true ) ) ) $ ( ( M.M1'.d59 ) $ ( ( M.M1'.d24 ) $ ( ( M.M1'.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x780 -> false ) ) ) $ ( false ) ) ) ) )
    d79 : if true then Bool else Bool
    d79 = ( M.M1'.d59 ) $ ( if if d77 then false else true then if true then false else false else if d77 then true else false )
    d80 : if true then Bool else Bool
    d80 = if if false then true else false then if d77 then d79 else d79 else if true then true else d79
    d81 : if false then Bool else Bool
    d81 = if if d79 then true else false then if true then d79 else false else if d79 then true else false
    d82 : if true then Bool else Bool
    d82 = ( M.M1'.d34 ) $ ( ( M.M1'.d71 ) $ ( ( M.M1'.d68 ) $ ( if if d81 then d81 else true then if false then d81 else d80 else if d79 then false else true ) ) )
    d83 : if true then Bool else Bool
    d83 = ( M.M1'.d5 ) $ ( ( M.M1'.d59 ) $ ( ( ( M.M1.d63 ) $ ( ( M.M1'.d60 ) $ ( if true then d82 else false ) ) ) $ ( ( M.M1'.d64 ) $ ( ( M.M1'.d59 ) $ ( if d82 then d81 else d79 ) ) ) ) )
    d84 : if false then Bool else Bool
    d84 = ( ( M.M1.d20 ) $ ( if d79 then d81 else true ) ) $ ( ( M.M1'.d21 ) $ ( if d82 then true else true ) )
    d85 : if false then Bool else Bool
    d85 = if if true then d77 else d77 then if d80 then d82 else false else if true then d83 else true
    d86 : if false then Bool else Bool
    d86 = ( ( M.M1.d51 ) $ ( ( M.M1'.d27 ) $ ( ( ( M.M1.d36 ) $ ( true ) ) $ ( true ) ) ) ) $ ( ( ( M.M1.d75 ) $ ( d83 ) ) $ ( d81 ) )
    d87 : if true then Bool else Bool
    d87 = if if true then false else d79 then if false then false else false else if d83 then true else true
    d88 : if true then Bool else Bool
    d88 = ( M.M1'.d19 ) $ ( if if true then d85 else false then if d80 then false else d80 else if false then d86 else d77 )
    d89 : if false then Bool else Bool
    d89 = ( M.M1'.d21 ) $ ( ( M.M1'.d9 ) $ ( if if true then false else true then if true then d80 else d80 else if false then true else true ) )
    d90 : if false then Bool else Bool
    d90 = ( M.M1'.d76 ) $ ( if if d85 then true else false then if d77 then false else true else if d77 then true else d79 )
    d91 : if false then Bool else Bool
    d91 = ( M.M1'.d66 ) $ ( ( ( M.M1.d63 ) $ ( ( M.M1'.d49 ) $ ( if true then false else true ) ) ) $ ( ( M.M1'.d20 ) $ ( if true then d81 else d89 ) ) )
    d92 : if false then Bool else Bool
    d92 = ( M.M1'.d60 ) $ ( ( ( M.M1.d46 ) $ ( ( M.M1'.d28 ) $ ( ( M.M1'.d31 ) $ ( ( M.M1'.d40 ) $ ( ( M.M1'.d67 ) $ ( ( ( M.M1.d19 ) $ ( d91 ) ) $ ( true ) ) ) ) ) ) ) $ ( ( M.M1'.d72 ) $ ( ( ( M.M1.d46 ) $ ( false ) ) $ ( true ) ) ) )
    d93 : if true then Bool else Bool
    d93 = ( M.M1'.d15 ) $ ( if if d85 then d90 else true then if false then d89 else true else if d85 then false else d80 )
    d94 : if true then Bool else Bool
    d94 = ( M.M1'.d67 ) $ ( ( ( M.M1.d34 ) $ ( ( M.M1'.d64 ) $ ( ( M.M1'.d72 ) $ ( if false then true else false ) ) ) ) $ ( ( M.M1'.d72 ) $ ( ( M.M1'.d64 ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d24 ) $ ( ( M.M1'.d48 ) $ ( if d89 then d86 else d89 ) ) ) ) ) ) )
    d95 : if true then Bool else Bool
    d95 = ( M.M1'.d27 ) $ ( if if false then d81 else true then if true then true else true else if false then d89 else true )
    d96 : if true then Bool else Bool
    d96 = ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( ( M.M1.d43 ) $ ( if x970 then d82 else x970 ) ) $ ( if d83 then x970 else x970 ) ) ) ) $ ( if d91 then true else d93 ) )
    d98 : if true then Bool else Bool
    d98 = ( M.M1'.d12 ) $ ( ( ( M.M1.d63 ) $ ( ( ( M.M1.d28 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x990 -> d84 ) ) ) $ ( d85 ) ) )
    d100 : if false then Bool else Bool
    d100 = ( M.M1'.d36 ) $ ( ( M.M1'.d21 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d64 ) $ ( ( ( M.M1.d9 ) $ ( ( M.M1'.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> x1010 ) ) ) $ ( d85 ) ) ) ) $ ( if d88 then false else d91 ) ) ) ) )
    d102 : if true then Bool else Bool
    d102 = ( ( M.M1.d19 ) $ ( ( M.M1'.d24 ) $ ( ( ( M.M1.d61 ) $ ( d86 ) ) $ ( true ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1030 -> d83 ) ) ) $ ( d79 ) )
    d104 : if false then Bool else Bool
    d104 = ( ( M.M1.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( d79 ) )
    d107 : if false then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( M.M1.d5 ) $ ( if d86 then d98 else d104 ) ) $ ( if x1080 then true else false ) ) ) ) $ ( if d92 then d96 else d93 )
    d109 : if false then Bool else Bool
    d109 = ( M.M1'.d71 ) $ ( ( M.M1'.d27 ) $ ( ( M.M1'.d9 ) $ ( ( M.M1'.d60 ) $ ( if if true then d93 else false then if d90 then false else d107 else if false then d96 else d93 ) ) ) )
    d110 : if false then Bool else Bool
    d110 = ( M.M1'.d72 ) $ ( if if d96 then false else d104 then if true then false else false else if d91 then d96 else false )
    d111 : if false then Bool else Bool
    d111 = ( M.M1'.d9 ) $ ( if if d93 then d95 else d84 then if d81 then d98 else true else if d81 then true else true )
    d112 : if false then Bool else Bool
    d112 = ( M.M1'.d35 ) $ ( ( M.M1'.d7 ) $ ( ( M.M1'.d59 ) $ ( ( M.M1'.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d111 ) ) ) $ ( x1130 ) ) ) ) ) $ ( if d111 then d77 else true ) ) ) ) )
    d115 : if true then Bool else Bool
    d115 = ( ( M.M1.d20 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> false ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d57 ) $ ( if d89 then false else false ) )
    d117 : if true then Bool else Bool
    d117 = ( ( M.M1.d28 ) $ ( ( M.M1'.d4 ) $ ( if true then false else false ) ) ) $ ( if false then false else false )
    d118 : if true then Bool else Bool
    d118 = ( M.M1'.d31 ) $ ( ( M.M1'.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> ( M.M1'.d40 ) $ ( if x1190 then d83 else x1190 ) ) ) ) $ ( if true then d77 else d82 ) ) )
    d120 : if false then Bool else Bool
    d120 = ( M.M1'.d40 ) $ ( ( M.M1'.d4 ) $ ( ( M.M1'.d5 ) $ ( ( ( M.M1.d9 ) $ ( if false then false else d84 ) ) $ ( ( ( M.M1.d9 ) $ ( d102 ) ) $ ( true ) ) ) ) )
    d121 : if true then Bool else Bool
    d121 = ( M.M1'.d36 ) $ ( ( ( M.M1.d7 ) $ ( ( M.M1'.d66 ) $ ( if d85 then d93 else false ) ) ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d58 ) $ ( ( ( M.M1.d39 ) $ ( d110 ) ) $ ( d83 ) ) ) ) )
    d122 : if false then Bool else Bool
    d122 = if if true then true else d107 then if d89 then d95 else false else if d82 then d104 else d92
    d123 : if false then Bool else Bool
    d123 = ( M.M1'.d46 ) $ ( ( M.M1'.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> true ) ) ) $ ( x1240 ) ) ) ) $ ( if true then false else true ) ) )
    d126 : if false then Bool else Bool
    d126 = ( ( M.M1.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> false ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( false ) )
    d129 : if true then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x1300 -> ( M.M1'.d43 ) $ ( ( M.M1'.d46 ) $ ( ( M.M1'.d48 ) $ ( ( M.M1'.d21 ) $ ( if x1300 then true else d100 ) ) ) ) ) ) ) $ ( if d121 then d109 else true )
    d131 : if false then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> ( M.M1'.d46 ) $ ( ( M.M1'.d16 ) $ ( if false then x1320 else x1320 ) ) ) ) ) $ ( if d77 then d77 else true )
    d133 : if true then Bool else Bool
    d133 = ( M.M1'.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> ( ( M.M1.d51 ) $ ( if x1340 then d112 else true ) ) $ ( if false then d111 else x1340 ) ) ) ) $ ( if false then d98 else false ) )
    d135 : if true then Bool else Bool
    d135 = ( M.M1'.d5 ) $ ( if if d110 then true else true then if true then d83 else false else if d126 then d120 else d87 )
    d136 : if true then Bool else Bool
    d136 = if if true then false else false then if d85 then true else d107 else if false then d123 else d118
    d137 : if false then Bool else Bool
    d137 = ( M.M1'.d7 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( M.M1'.d46 ) $ ( ( M.M1'.d60 ) $ ( if d94 then true else x1380 ) ) ) ) ) $ ( if d122 then d81 else d133 ) )
    d139 : if false then Bool else Bool
    d139 = if if d93 then d102 else false then if false then false else false else if false then false else false
    d140 : if true then Bool else Bool
    d140 = ( ( M.M1.d15 ) $ ( if d118 then d89 else d112 ) ) $ ( if false then false else true )
    d141 : if false then Bool else Bool
    d141 = ( M.M1'.d58 ) $ ( ( ( M.M1.d71 ) $ ( ( M.M1'.d21 ) $ ( ( ( M.M1.d58 ) $ ( false ) ) $ ( false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1420 -> d81 ) ) ) $ ( false ) ) )
    d143 : if false then Bool else Bool
    d143 = ( ( M.M1.d27 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( d87 ) ) ) $ ( if false then true else true )
    d145 : if false then Bool else Bool
    d145 = ( M.M1'.d5 ) $ ( ( M.M1'.d19 ) $ ( ( M.M1'.d60 ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d21 ) $ ( if if false then true else d102 then if true then true else false else if true then true else true ) ) ) ) )
    d146 : if false then Bool else Bool
    d146 = ( M.M1'.d49 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d49 ) $ ( ( M.M1'.d4 ) $ ( ( ( M.M1.d60 ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d35 ) $ ( ( M.M1'.d35 ) $ ( ( M.M1'.d48 ) $ ( ( ( M.M1.d20 ) $ ( d87 ) ) $ ( false ) ) ) ) ) ) ) $ ( ( ( M.M1.d21 ) $ ( true ) ) $ ( true ) ) ) ) ) )
    d147 : if true then Bool else Bool
    d147 = ( M.M1'.d40 ) $ ( if if d139 then d110 else d91 then if false then d100 else d82 else if false then d117 else false )
    d148 : if false then Bool else Bool
    d148 = if if d136 then d89 else d91 then if d90 then d86 else false else if d80 then d135 else d109