module TypeSize5Test4  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else x20 ) ) ) $ ( Bool ) )  where
        module M1 ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else x40 ) ) ) $ ( Bool ) )  where
            d5 : if true then Bool else Bool
            d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> p30 ) ) ) $ ( x60 ) ) ) ) $ ( if true then p30 else p10 )
            d8 : if false then Bool else Bool
            d8 = if if p10 then p30 else p30 then if p10 then p10 else d5 else if p10 then p30 else p10
            d9 : if false then Bool else Bool
            d9 = if if true then true else false then if true then d5 else p30 else if p10 then d8 else p10
            d10 : if false then Bool else Bool
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d8 ) ) ) $ ( x110 ) ) ) ) $ ( if d9 then d8 else d8 )
            d13 : if true then Bool else Bool
            d13 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( Bool -> Bool ) ∋ ( ( λ x150 -> true ) ) ) $ ( false ) ) ) ) $ ( if p30 then p10 else p10 )
            d16 : if true then Bool else Bool
            d16 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( Bool -> Bool ) ∋ ( ( λ x180 -> true ) ) ) $ ( p10 ) ) ) ) $ ( if false then p30 else p30 )
            d19 : if false then Bool else Bool
            d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if p10 then false else d10 ) ) ) $ ( if true then d13 else p10 )
            d21 : if true then Bool else Bool
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d19 then true else d19 ) ) ) $ ( if d19 then false else p30 )
            d23 : if true then Bool else Bool
            d23 = ( ( Bool -> Bool ) ∋ ( ( λ x240 -> ( ( Bool -> Bool ) ∋ ( ( λ x250 -> d19 ) ) ) $ ( false ) ) ) ) $ ( if d21 then d19 else false )
            d26 : if false then Bool else Bool
            d26 = if if d21 then p10 else d13 then if d5 then p30 else p30 else if true then d10 else p10
            d27 : if false then Bool else Bool
            d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> if false then p10 else true ) ) ) $ ( if true then p30 else false )
            d29 : if true then Bool else Bool
            d29 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d27 ) ) ) $ ( d10 ) ) ) ) $ ( if p30 then p10 else true )
            d32 : if true then Bool else Bool
            d32 = if if true then p30 else p10 then if false then p30 else d29 else if d13 then p30 else d8
            d33 : if false then Bool else Bool
            d33 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> ( ( Bool -> Bool ) ∋ ( ( λ x350 -> x350 ) ) ) $ ( true ) ) ) ) $ ( if p30 then d32 else true )
            d36 : if false then Bool else Bool
            d36 = if if d5 then false else d29 then if false then p30 else p30 else if d13 then p10 else d5
            d37 : if true then Bool else Bool
            d37 = if if true then p30 else p30 then if p10 then false else p10 else if true then d32 else d29
            d38 : if true then Bool else Bool
            d38 = if if p30 then true else p30 then if d13 then p10 else d10 else if p10 then p10 else p10
            d39 : if false then Bool else Bool
            d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> true ) ) ) $ ( x400 ) ) ) ) $ ( if d38 then p10 else true )
            d42 : if false then Bool else Bool
            d42 = if if d26 then p30 else d29 then if false then true else false else if true then d33 else p10
            d43 : if true then Bool else Bool
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> d27 ) ) ) $ ( p10 ) ) ) ) $ ( if d39 then true else p30 )
            d46 : if true then Bool else Bool
            d46 = if if d39 then true else d36 then if d21 then d32 else true else if d32 then false else d29
            d47 : if true then Bool else Bool
            d47 = if if false then true else false then if p10 then p10 else d42 else if false then p10 else d13
            d48 : if true then Bool else Bool
            d48 = if if p30 then false else true then if false then d43 else d43 else if p10 then true else d46
            d49 : if false then Bool else Bool
            d49 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if false then false else true ) ) ) $ ( if false then d37 else p30 )
            d51 : if false then Bool else Bool
            d51 = if if p10 then d39 else d29 then if p10 then d5 else d33 else if p10 then true else true
            d52 : if true then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if false then true else p10 ) ) ) $ ( if p10 then p10 else p30 )
            d54 : if true then Bool else Bool
            d54 = if if p10 then d21 else d42 then if d23 then p30 else p10 else if d33 then d19 else p30
            d55 : if false then Bool else Bool
            d55 = if if true then d8 else d51 then if p30 then p10 else d29 else if p10 then d51 else p10
            d56 : if false then Bool else Bool
            d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> if true then true else d8 ) ) ) $ ( if true then d47 else p30 )
            d58 : if true then Bool else Bool
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> if true then p10 else true ) ) ) $ ( if false then d47 else false )
            d60 : if true then Bool else Bool
            d60 = if if d29 then true else p30 then if true then p30 else true else if d5 then d9 else false
            d61 : if true then Bool else Bool
            d61 = if if d55 then false else d27 then if p10 then p10 else true else if p10 then d51 else true
            d62 : if false then Bool else Bool
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if true then p30 else x630 ) ) ) $ ( if d46 then false else p30 )
            d64 : if true then Bool else Bool
            d64 = if if p30 then p30 else false then if d56 then d49 else p10 else if true then true else true
            d65 : if false then Bool else Bool
            d65 = if if p10 then p30 else p10 then if p30 then d29 else d21 else if p30 then false else p10
            d66 : if true then Bool else Bool
            d66 = if if p10 then p30 else p10 then if d8 then p30 else p10 else if d23 then p30 else false
            d67 : if true then Bool else Bool
            d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if true then true else p10 ) ) ) $ ( if p30 then d48 else d62 )
            d69 : if false then Bool else Bool
            d69 = if if d9 then false else false then if d62 then false else p30 else if true then p10 else false
            d70 : if false then Bool else Bool
            d70 = ( ( Bool -> Bool ) ∋ ( ( λ x710 -> if false then d39 else d13 ) ) ) $ ( if false then true else true )
            d72 : if true then Bool else Bool
            d72 = if if d56 then p10 else p30 then if true then d56 else p30 else if d26 then false else false
        module M1'  = M1 ( true ) 
    d73 : if false then Bool else Bool
    d73 = ( M.M1'.d64 ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d10 ) $ ( ( M.M1'.d60 ) $ ( ( M.M1'.d60 ) $ ( if if true then false else true then if false then false else true else if false then true else false ) ) ) ) )
    d74 : if true then Bool else Bool
    d74 = ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( M.M1'.d33 ) $ ( ( ( M.M1.d47 ) $ ( if x750 then x750 else d73 ) ) $ ( if true then x750 else x750 ) ) ) ) ) $ ( if false then d73 else true ) )
    d76 : if true then Bool else Bool
    d76 = ( M.M1'.d29 ) $ ( ( M.M1'.d8 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x770 -> ( ( M.M1.d21 ) $ ( if d73 then false else false ) ) $ ( if x770 then d74 else x770 ) ) ) ) $ ( if false then false else d74 ) ) )
    d78 : if false then Bool else Bool
    d78 = if if true then d76 else d74 then if d73 then true else d76 else if false then d76 else d74
    d79 : if true then Bool else Bool
    d79 = ( M.M1'.d54 ) $ ( ( M.M1'.d21 ) $ ( ( M.M1'.d56 ) $ ( if if true then d76 else d74 then if false then d73 else false else if false then true else false ) ) )
    d80 : if false then Bool else Bool
    d80 = ( ( Bool -> Bool ) ∋ ( ( λ x810 -> if x810 then d74 else x810 ) ) ) $ ( if d76 then d74 else d76 )
    d82 : if false then Bool else Bool
    d82 = if if false then d80 else false then if d78 then d78 else false else if d76 then d79 else false
    d83 : if false then Bool else Bool
    d83 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( M.M1'.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x850 -> x840 ) ) ) $ ( false ) ) ) ) ) $ ( if d78 then d73 else d80 )
    d86 : if false then Bool else Bool
    d86 = ( M.M1'.d19 ) $ ( ( M.M1'.d39 ) $ ( ( M.M1'.d64 ) $ ( ( M.M1'.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x870 -> if false then d83 else true ) ) ) $ ( if d79 then false else true ) ) ) ) )
    d88 : if false then Bool else Bool
    d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> if d83 then false else true ) ) ) $ ( if true then d83 else false )
    d90 : if true then Bool else Bool
    d90 = ( M.M1'.d54 ) $ ( ( M.M1'.d60 ) $ ( ( ( M.M1.d33 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( d79 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x920 -> true ) ) ) $ ( false ) ) ) )
    d93 : if true then Bool else Bool
    d93 = ( M.M1'.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x950 -> x950 ) ) ) $ ( false ) ) ) ) $ ( if d88 then true else false ) )
    d96 : if false then Bool else Bool
    d96 = ( ( Bool -> Bool ) ∋ ( ( λ x970 -> ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x980 -> d93 ) ) ) $ ( d88 ) ) ) ) ) $ ( if false then false else d74 )
    d99 : if false then Bool else Bool
    d99 = ( M.M1'.d56 ) $ ( ( ( M.M1.d9 ) $ ( ( M.M1'.d52 ) $ ( ( M.M1'.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( true ) ) ) ) ) $ ( ( M.M1'.d62 ) $ ( ( M.M1'.d5 ) $ ( ( M.M1'.d38 ) $ ( if false then d74 else d86 ) ) ) ) )
    d101 : if true then Bool else Bool
    d101 = ( ( M.M1.d52 ) $ ( if d90 then d74 else true ) ) $ ( ( M.M1'.d51 ) $ ( if true then false else true ) )
    d102 : if false then Bool else Bool
    d102 = ( M.M1'.d64 ) $ ( ( ( M.M1.d5 ) $ ( if d79 then true else true ) ) $ ( if d78 then d99 else d80 ) )
    d103 : if false then Bool else Bool
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> if x1040 then false else false ) ) ) $ ( if false then d96 else true )
    d105 : if true then Bool else Bool
    d105 = ( ( M.M1.d36 ) $ ( ( M.M1'.d48 ) $ ( if true then false else true ) ) ) $ ( ( ( M.M1.d51 ) $ ( d86 ) ) $ ( true ) )
    d106 : if true then Bool else Bool
    d106 = if if d105 then false else d74 then if false then true else true else if d88 then d96 else true
    d107 : if true then Bool else Bool
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> x1080 ) ) ) $ ( false ) ) ) ) $ ( if d80 then false else d96 )
    d110 : if false then Bool else Bool
    d110 = ( M.M1'.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> ( M.M1'.d43 ) $ ( ( ( M.M1.d72 ) $ ( if d106 then true else x1110 ) ) $ ( if d80 then x1110 else x1110 ) ) ) ) ) $ ( if false then d79 else true ) )
    d112 : if true then Bool else Bool
    d112 = ( ( M.M1.d70 ) $ ( ( M.M1'.d46 ) $ ( ( ( M.M1.d46 ) $ ( d82 ) ) $ ( true ) ) ) ) $ ( ( M.M1'.d65 ) $ ( ( ( M.M1.d21 ) $ ( false ) ) $ ( d102 ) ) )
    d113 : if false then Bool else Bool
    d113 = ( M.M1'.d10 ) $ ( if if true then true else d112 then if d107 then false else d101 else if false then false else d110 )
    d114 : if false then Bool else Bool
    d114 = ( ( M.M1.d16 ) $ ( ( M.M1'.d23 ) $ ( ( ( M.M1.d60 ) $ ( d105 ) ) $ ( d82 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> d112 ) ) ) $ ( false ) )
    d116 : if false then Bool else Bool
    d116 = ( ( M.M1.d72 ) $ ( ( M.M1'.d51 ) $ ( ( M.M1'.d27 ) $ ( if false then d76 else false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> d113 ) ) ) $ ( true ) )
    d118 : if false then Bool else Bool
    d118 = ( ( M.M1.d67 ) $ ( if true then d90 else false ) ) $ ( ( M.M1'.d5 ) $ ( ( M.M1'.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1190 -> x1190 ) ) ) $ ( false ) ) ) )
    d120 : if false then Bool else Bool
    d120 = ( ( M.M1.d72 ) $ ( ( M.M1'.d43 ) $ ( if false then d114 else d113 ) ) ) $ ( if d78 then true else d116 )
    d121 : if false then Bool else Bool
    d121 = ( M.M1'.d21 ) $ ( ( M.M1'.d29 ) $ ( ( ( M.M1.d60 ) $ ( ( ( M.M1.d72 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.M1.d29 ) $ ( d113 ) ) $ ( true ) ) ) )
    d122 : if true then Bool else Bool
    d122 = if if false then false else d93 then if false then d106 else d73 else if d74 then false else d120
    d123 : if false then Bool else Bool
    d123 = if if false then true else d82 then if d80 then true else true else if true then true else true
    d124 : if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x1250 -> ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> d114 ) ) ) $ ( false ) ) ) ) $ ( if false then d86 else false )
    d127 : if false then Bool else Bool
    d127 = if if d99 then false else false then if false then d121 else false else if d105 then d122 else d110
    d128 : if false then Bool else Bool
    d128 = ( M.M1'.d54 ) $ ( ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> if x1290 then false else d110 ) ) ) $ ( if false then false else true ) ) )
    d130 : if true then Bool else Bool
    d130 = ( M.M1'.d65 ) $ ( ( ( M.M1.d39 ) $ ( if d93 then true else d80 ) ) $ ( ( ( M.M1.d42 ) $ ( d113 ) ) $ ( d88 ) ) )
    d131 : if true then Bool else Bool
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> x1320 ) ) ) $ ( d80 ) ) ) ) $ ( if d123 then false else d101 )
    d134 : if false then Bool else Bool
    d134 = if if d82 then d110 else false then if true then false else d103 else if d74 then false else false
    d135 : if true then Bool else Bool
    d135 = ( M.M1'.d23 ) $ ( ( M.M1'.d60 ) $ ( ( M.M1'.d5 ) $ ( ( ( M.M1.d27 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> false ) ) ) $ ( d110 ) ) ) $ ( ( M.M1'.d47 ) $ ( ( ( M.M1.d13 ) $ ( false ) ) $ ( false ) ) ) ) ) )
    d137 : if true then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> ( M.M1'.d52 ) $ ( ( M.M1'.d52 ) $ ( ( ( M.M1.d9 ) $ ( if d121 then d128 else true ) ) $ ( if false then d122 else d93 ) ) ) ) ) ) $ ( if d101 then d112 else d96 )
    d139 : if false then Bool else Bool
    d139 = ( M.M1'.d5 ) $ ( ( M.M1'.d19 ) $ ( if if true then d123 else true then if d74 then d114 else false else if true then false else false ) )
    d140 : if false then Bool else Bool
    d140 = ( M.M1'.d36 ) $ ( ( M.M1'.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> ( M.M1'.d60 ) $ ( ( M.M1'.d26 ) $ ( if x1410 then true else x1410 ) ) ) ) ) $ ( if false then d114 else false ) ) )
    d142 : if true then Bool else Bool
    d142 = if if true then true else false then if d134 then d130 else d74 else if d99 then d90 else true
    d143 : if true then Bool else Bool
    d143 = ( ( M.M1.d72 ) $ ( ( M.M1'.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> x1440 ) ) ) $ ( false ) ) ) ) $ ( if d99 then d131 else false )
    d145 : if true then Bool else Bool
    d145 = ( M.M1'.d23 ) $ ( if if true then false else true then if d113 then false else d120 else if true then true else d131 )
    d146 : if false then Bool else Bool
    d146 = ( ( M.M1.d13 ) $ ( ( ( M.M1.d37 ) $ ( d90 ) ) $ ( d134 ) ) ) $ ( ( M.M1'.d49 ) $ ( ( ( M.M1.d37 ) $ ( d113 ) ) $ ( d106 ) ) )
    d147 : if false then Bool else Bool
    d147 = ( M.M1'.d36 ) $ ( ( M.M1'.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> x1480 ) ) ) $ ( d90 ) ) ) ) $ ( if false then true else d93 ) ) )
    d150 : if true then Bool else Bool
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> if x1510 then x1510 else d96 ) ) ) $ ( if true then d102 else false )
    d152 : if false then Bool else Bool
    d152 = ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> ( M.M1'.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> true ) ) ) $ ( false ) ) ) ) ) $ ( if true then true else d135 )
    d155 : if false then Bool else Bool
    d155 = ( ( M.M1.d72 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1560 -> d143 ) ) ) $ ( d102 ) ) ) $ ( ( ( M.M1.d52 ) $ ( true ) ) $ ( d131 ) )
    d157 : if true then Bool else Bool
    d157 = ( ( M.M1.d65 ) $ ( ( M.M1'.d56 ) $ ( if d102 then false else false ) ) ) $ ( ( M.M1'.d66 ) $ ( ( M.M1'.d70 ) $ ( ( ( M.M1.d62 ) $ ( false ) ) $ ( false ) ) ) )
    d158 : if false then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> if x1590 then x1590 else d96 ) ) ) $ ( if false then d83 else d140 )