module TypeSize5Test7  where
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

    module M ( p10 : if false then Bool else Bool )  where
        module M1 ( p20 : if false then Bool else Bool )  where
            d3 : if true then Bool else Bool
            d3 = if if true then true else true then if p20 then p20 else true else if p20 then false else p10
            d4 : if false then Bool else Bool
            d4 = if if d3 then p10 else true then if d3 then true else false else if p20 then d3 else d3
            d5 : if true then Bool else Bool
            d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d3 then true else d4 ) ) ) $ ( if p10 then p10 else false )
            d7 : if false then Bool else Bool
            d7 = if if d4 then d4 else true then if false then p10 else false else if d5 then true else p10
            d8 : if true then Bool else Bool
            d8 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d7 then d4 else d4 ) ) ) $ ( if p20 then true else d7 )
            d10 : if false then Bool else Bool
            d10 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d8 ) ) ) $ ( d8 ) ) ) ) $ ( if p20 then d4 else p10 )
            d13 : if false then Bool else Bool
            d13 = if if p20 then d5 else p10 then if p20 then d8 else d5 else if p20 then false else d10
            d14 : if false then Bool else Bool
            d14 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> ( ( Bool -> Bool ) ∋ ( ( λ x160 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then d3 else true )
            d17 : if false then Bool else Bool
            d17 = if if p20 then d3 else false then if true then p10 else d5 else if p20 then d14 else p20
            d18 : if true then Bool else Bool
            d18 = if if p10 then false else p20 then if false then true else false else if false then d7 else p10
            d19 : if true then Bool else Bool
            d19 = if if p20 then d18 else d8 then if p10 then false else true else if p20 then d10 else true
            d20 : if false then Bool else Bool
            d20 = if if p10 then p10 else false then if p20 then p20 else true else if true then p10 else false
            d21 : if true then Bool else Bool
            d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> if d13 then x220 else d19 ) ) ) $ ( if false then p10 else p20 )
            d23 : if false then Bool else Bool
            d23 = if if p10 then d19 else p20 then if d18 then p20 else p20 else if false then d19 else d3
            d24 : if false then Bool else Bool
            d24 = ( ( Bool -> Bool ) ∋ ( ( λ x250 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then true else p10 )
            d27 : if true then Bool else Bool
            d27 = if if true then p10 else p20 then if p10 then d13 else d18 else if true then d23 else d21
            d28 : if false then Bool else Bool
            d28 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x300 -> d20 ) ) ) $ ( true ) ) ) ) $ ( if true then p10 else true )
            d31 : if true then Bool else Bool
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> x320 ) ) ) $ ( x320 ) ) ) ) $ ( if p20 then true else d24 )
            d34 : if false then Bool else Bool
            d34 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x360 -> false ) ) ) $ ( p20 ) ) ) ) $ ( if true then true else d31 )
            d37 : if true then Bool else Bool
            d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> if d23 then false else d7 ) ) ) $ ( if false then true else d18 )
            d39 : if false then Bool else Bool
            d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> if x400 then d23 else p20 ) ) ) $ ( if d28 then d7 else p20 )
            d41 : if true then Bool else Bool
            d41 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> if d20 then false else false ) ) ) $ ( if d18 then p20 else true )
            d43 : if false then Bool else Bool
            d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if p20 then p10 else d3 ) ) ) $ ( if p10 then p10 else p20 )
            d45 : if true then Bool else Bool
            d45 = ( ( Bool -> Bool ) ∋ ( ( λ x460 -> ( ( Bool -> Bool ) ∋ ( ( λ x470 -> true ) ) ) $ ( false ) ) ) ) $ ( if d24 then true else p10 )
            d48 : if false then Bool else Bool
            d48 = ( ( Bool -> Bool ) ∋ ( ( λ x490 -> ( ( Bool -> Bool ) ∋ ( ( λ x500 -> p20 ) ) ) $ ( d4 ) ) ) ) $ ( if d5 then p20 else d13 )
            d51 : if false then Bool else Bool
            d51 = if if true then d20 else p20 then if p20 then d21 else p20 else if false then false else d39
            d52 : if false then Bool else Bool
            d52 = if if false then d20 else true then if false then false else p10 else if true then true else p10
            d53 : if false then Bool else Bool
            d53 = if if false then d41 else d24 then if false then p10 else p10 else if d13 then p20 else p20
            d54 : if true then Bool else Bool
            d54 = if if false then false else p20 then if true then true else d41 else if d53 then false else p10
            d55 : if false then Bool else Bool
            d55 = if if false then d14 else true then if d20 then true else p10 else if p10 then d21 else p20
            d56 : if true then Bool else Bool
            d56 = ( ( Bool -> Bool ) ∋ ( ( λ x570 -> ( ( Bool -> Bool ) ∋ ( ( λ x580 -> false ) ) ) $ ( x570 ) ) ) ) $ ( if d4 then d13 else false )
            d59 : if true then Bool else Bool
            d59 = ( ( Bool -> Bool ) ∋ ( ( λ x600 -> ( ( Bool -> Bool ) ∋ ( ( λ x610 -> d55 ) ) ) $ ( d39 ) ) ) ) $ ( if p10 then p10 else true )
            d62 : if true then Bool else Bool
            d62 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> if x630 then true else false ) ) ) $ ( if true then d4 else false )
            d64 : if false then Bool else Bool
            d64 = if if false then p10 else true then if d48 then p20 else p20 else if d27 then true else true
            d65 : if false then Bool else Bool
            d65 = ( ( Bool -> Bool ) ∋ ( ( λ x660 -> if false then p20 else false ) ) ) $ ( if d10 then d31 else false )
            d67 : if false then Bool else Bool
            d67 = if if p10 then p20 else false then if p20 then p10 else p10 else if p10 then d54 else p10
            d68 : if true then Bool else Bool
            d68 = if if p20 then p10 else p10 then if false then d37 else p10 else if p10 then false else true
            d69 : if false then Bool else Bool
            d69 = if if d53 then d19 else d64 then if true then p10 else d48 else if true then true else d8
            d70 : if false then Bool else Bool
            d70 = if if d13 then d55 else true then if p10 then p10 else d53 else if false then false else p20
            d71 : if true then Bool else Bool
            d71 = ( ( Bool -> Bool ) ∋ ( ( λ x720 -> ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d53 ) ) ) $ ( d7 ) ) ) ) $ ( if false then true else d37 )
        module M1'  = M1 ( false ) 
    d74 : if false then Bool else Bool
    d74 = ( M.M1'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x750 -> ( ( Bool -> Bool ) ∋ ( ( λ x760 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then true else true ) )
    d77 : if true then Bool else Bool
    d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if d74 then x780 else false ) ) ) $ ( if false then true else true )
    d79 : if false then Bool else Bool
    d79 = ( M.M1'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( M.M1'.d14 ) $ ( ( M.M1'.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x810 -> d77 ) ) ) $ ( false ) ) ) ) ) ) $ ( if false then d77 else true ) )
    d82 : if false then Bool else Bool
    d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if x830 then true else true ) ) ) $ ( if true then false else d77 )
    d84 : if false then Bool else Bool
    d84 = ( M.M1'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if true then d82 else true ) ) ) $ ( if false then d82 else d79 ) )
    d86 : if false then Bool else Bool
    d86 = ( ( M.M1.d17 ) $ ( ( M.M1'.d13 ) $ ( if true then d84 else true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x870 -> d77 ) ) ) $ ( d74 ) )
    d88 : if false then Bool else Bool
    d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( M.M1'.d71 ) $ ( ( ( M.M1.d34 ) $ ( if true then x890 else x890 ) ) $ ( if false then x890 else d84 ) ) ) ) ) $ ( if false then true else d74 )
    d90 : if false then Bool else Bool
    d90 = ( ( M.M1.d45 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x910 -> x910 ) ) ) $ ( false ) ) ) $ ( if d79 then false else true )
    d92 : if false then Bool else Bool
    d92 = ( M.M1'.d34 ) $ ( ( ( M.M1.d14 ) $ ( ( M.M1'.d31 ) $ ( ( M.M1'.d18 ) $ ( if true then true else d90 ) ) ) ) $ ( ( ( M.M1.d10 ) $ ( false ) ) $ ( d82 ) ) )
    d93 : if true then Bool else Bool
    d93 = ( M.M1'.d3 ) $ ( if if false then true else false then if true then d84 else true else if d90 then true else false )
    d94 : if true then Bool else Bool
    d94 = ( M.M1'.d67 ) $ ( ( M.M1'.d68 ) $ ( ( M.M1'.d54 ) $ ( ( M.M1'.d4 ) $ ( if if false then true else d86 then if true then true else d90 else if d93 then d79 else d93 ) ) ) )
    d95 : if false then Bool else Bool
    d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( M.M1'.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x970 -> true ) ) ) $ ( false ) ) ) ) ) $ ( if false then false else d92 )
    d98 : if true then Bool else Bool
    d98 = ( M.M1'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x990 -> ( M.M1'.d65 ) $ ( ( ( M.M1.d56 ) $ ( if d94 then x990 else false ) ) $ ( if false then d74 else true ) ) ) ) ) $ ( if d82 then false else true ) )
    d100 : if false then Bool else Bool
    d100 = ( ( M.M1.d54 ) $ ( ( ( M.M1.d70 ) $ ( true ) ) $ ( true ) ) ) $ ( ( M.M1'.d45 ) $ ( ( M.M1'.d37 ) $ ( if true then d94 else false ) ) )
    d101 : if true then Bool else Bool
    d101 = ( M.M1'.d24 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( M.M1'.d54 ) $ ( ( ( M.M1.d5 ) $ ( if d98 then false else d84 ) ) $ ( if d74 then true else false ) ) ) ) ) $ ( if d74 then true else d100 ) )
    d103 : if false then Bool else Bool
    d103 = ( M.M1'.d54 ) $ ( ( M.M1'.d31 ) $ ( ( ( M.M1.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> x1040 ) ) ) $ ( false ) ) ) $ ( ( M.M1'.d64 ) $ ( if d86 then true else d88 ) ) ) )
    d105 : if true then Bool else Bool
    d105 = if if d90 then d98 else d74 then if false then true else false else if d103 then d92 else false
    d106 : if true then Bool else Bool
    d106 = ( M.M1'.d59 ) $ ( ( M.M1'.d13 ) $ ( ( M.M1'.d31 ) $ ( ( M.M1'.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1070 -> ( ( M.M1.d27 ) $ ( if x1070 then false else true ) ) $ ( if true then true else false ) ) ) ) $ ( if false then d103 else d82 ) ) ) ) )
    d108 : if true then Bool else Bool
    d108 = ( ( M.M1.d37 ) $ ( ( M.M1'.d70 ) $ ( ( M.M1'.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> x1090 ) ) ) $ ( false ) ) ) ) ) $ ( ( M.M1'.d64 ) $ ( ( M.M1'.d37 ) $ ( if d105 then false else false ) ) )
    d110 : if true then Bool else Bool
    d110 = ( M.M1'.d41 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1110 -> if d95 then d106 else x1110 ) ) ) $ ( if d82 then true else d100 ) )
    d112 : if true then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> ( M.M1'.d69 ) $ ( ( ( M.M1.d23 ) $ ( if true then false else d79 ) ) $ ( if d92 then x1130 else d95 ) ) ) ) ) $ ( if d103 then false else true )
    d114 : if false then Bool else Bool
    d114 = ( ( M.M1.d31 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> x1150 ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d56 ) $ ( ( M.M1'.d62 ) $ ( ( M.M1'.d4 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> x1160 ) ) ) $ ( false ) ) ) ) )
    d117 : if true then Bool else Bool
    d117 = ( M.M1'.d8 ) $ ( ( M.M1'.d41 ) $ ( ( ( M.M1.d54 ) $ ( ( M.M1'.d59 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> d108 ) ) ) $ ( false ) ) ) ) $ ( ( M.M1'.d39 ) $ ( if d112 then true else false ) ) ) )
    d119 : if false then Bool else Bool
    d119 = ( M.M1'.d3 ) $ ( ( M.M1'.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> ( M.M1'.d69 ) $ ( ( M.M1'.d67 ) $ ( ( M.M1'.d62 ) $ ( ( M.M1'.d68 ) $ ( if x1200 then d84 else x1200 ) ) ) ) ) ) ) $ ( if d74 then true else false ) ) )
    d121 : if false then Bool else Bool
    d121 = ( M.M1'.d70 ) $ ( if if d108 then d108 else true then if true then false else d92 else if d95 then d84 else true )
    d122 : if true then Bool else Bool
    d122 = ( M.M1'.d53 ) $ ( ( M.M1'.d5 ) $ ( ( M.M1'.d59 ) $ ( ( ( M.M1.d5 ) $ ( if true then false else d110 ) ) $ ( if d103 then false else d112 ) ) ) )
    d123 : if false then Bool else Bool
    d123 = ( M.M1'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> ( M.M1'.d14 ) $ ( if d88 then true else d90 ) ) ) ) $ ( if d103 then true else false ) )
    d125 : if true then Bool else Bool
    d125 = ( M.M1'.d68 ) $ ( ( M.M1'.d39 ) $ ( if if d110 then d86 else true then if d119 then false else false else if true then d103 else d93 ) )
    d126 : if false then Bool else Bool
    d126 = ( M.M1'.d55 ) $ ( if if d77 then false else false then if false then d106 else d93 else if d108 then d123 else false )
    d127 : if false then Bool else Bool
    d127 = if if d105 then d125 else true then if d100 then d119 else d112 else if true then true else false
    d128 : if false then Bool else Bool
    d128 = ( M.M1'.d67 ) $ ( ( M.M1'.d39 ) $ ( if if false then d125 else d84 then if d86 then d74 else true else if false then d86 else false ) )
    d129 : if true then Bool else Bool
    d129 = if if d123 then true else d121 then if false then false else true else if d90 then d95 else true
    d130 : if true then Bool else Bool
    d130 = ( M.M1'.d53 ) $ ( ( ( M.M1.d51 ) $ ( ( ( M.M1.d5 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> x1310 ) ) ) $ ( false ) ) )
    d132 : if false then Bool else Bool
    d132 = ( ( M.M1.d69 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( d98 ) ) ) $ ( ( M.M1'.d8 ) $ ( if true then false else true ) )
    d134 : if true then Bool else Bool
    d134 = ( M.M1'.d43 ) $ ( ( ( M.M1.d3 ) $ ( if false then d74 else d119 ) ) $ ( ( ( M.M1.d54 ) $ ( d114 ) ) $ ( false ) ) )
    d135 : if false then Bool else Bool
    d135 = if if d121 then true else false then if d95 then false else d88 else if true then true else false
    d136 : if false then Bool else Bool
    d136 = ( M.M1'.d41 ) $ ( ( ( M.M1.d71 ) $ ( ( M.M1'.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> d88 ) ) ) $ ( d132 ) ) ) ) $ ( ( M.M1'.d43 ) $ ( ( M.M1'.d13 ) $ ( ( M.M1'.d67 ) $ ( ( M.M1'.d55 ) $ ( ( M.M1'.d56 ) $ ( ( ( M.M1.d5 ) $ ( true ) ) $ ( d112 ) ) ) ) ) ) ) )
    d138 : if true then Bool else Bool
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> if false then d82 else false ) ) ) $ ( if true then d92 else false )
    d140 : if false then Bool else Bool
    d140 = ( ( M.M1.d48 ) $ ( ( ( M.M1.d43 ) $ ( false ) ) $ ( d79 ) ) ) $ ( if d121 then true else true )
    d141 : if false then Bool else Bool
    d141 = ( M.M1'.d41 ) $ ( if if d134 then d94 else d95 then if true then true else false else if true then d138 else false )
    d142 : if false then Bool else Bool
    d142 = ( M.M1'.d27 ) $ ( ( ( M.M1.d27 ) $ ( if true then false else d123 ) ) $ ( ( M.M1'.d8 ) $ ( ( ( M.M1.d31 ) $ ( false ) ) $ ( true ) ) ) )
    d143 : if true then Bool else Bool
    d143 = ( M.M1'.d71 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1440 -> ( ( M.M1.d8 ) $ ( if true then d82 else d84 ) ) $ ( if d94 then x1440 else true ) ) ) ) $ ( if true then false else false ) )
    d145 : if false then Bool else Bool
    d145 = ( ( M.M1.d43 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> x1460 ) ) ) $ ( false ) ) ) $ ( ( ( M.M1.d48 ) $ ( true ) ) $ ( false ) )
    d147 : if true then Bool else Bool
    d147 = ( ( M.M1.d19 ) $ ( ( ( M.M1.d4 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.M1.d21 ) $ ( d105 ) ) $ ( true ) )
    d148 : if false then Bool else Bool
    d148 = if if d103 then d122 else d140 then if true then false else d84 else if d98 then true else false
    d149 : if true then Bool else Bool
    d149 = ( M.M1'.d3 ) $ ( ( M.M1'.d59 ) $ ( ( ( M.M1.d31 ) $ ( ( ( M.M1.d10 ) $ ( false ) ) $ ( d135 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> true ) ) ) $ ( d79 ) ) ) )
    d151 : if false then Bool else Bool
    d151 = if if false then d103 else d90 then if d136 then true else false else if false then true else d86
    d152 : if false then Bool else Bool
    d152 = ( ( M.M1.d69 ) $ ( ( ( M.M1.d21 ) $ ( true ) ) $ ( d126 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1530 -> x1530 ) ) ) $ ( d145 ) )
    d154 : if true then Bool else Bool
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d86 then x1550 else false ) ) ) $ ( if d123 then d147 else d88 )
    d156 : if false then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x1570 -> ( ( M.M1.d19 ) $ ( if x1570 then x1570 else false ) ) $ ( if true then d110 else true ) ) ) ) $ ( if false then true else d129 )