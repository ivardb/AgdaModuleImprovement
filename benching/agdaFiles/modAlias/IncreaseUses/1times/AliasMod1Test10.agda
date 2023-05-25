module AliasMod1Test10  where
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

    module M ( p10 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else x20 ) ) ) $ ( Bool ) ) ( p30 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if true then x40 else x40 ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x80 ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if p10 then true else true ) ) ) $ ( if false then p30 else true )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if if p30 then p10 else true then if d5 then p30 else p10 else if false then p30 else true
        d12 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if true then x130 else x130 ) ) ) $ ( if false then Bool else Bool )
        d12 = if if true then false else true then if d9 then p30 else false else if d9 then d5 else d5
        d14 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else x150 ) ) ) $ ( if true then Bool else Bool )
        d14 = if if false then p30 else d5 then if d12 then d9 else false else if d12 then true else d12
        d16 : if true then if true then Bool else Bool else if true then Bool else Bool
        d16 = if if p10 then true else p30 then if d9 then d9 else d9 else if d9 then true else p30
        d17 : if false then if true then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x180 -> if d9 then d9 else d9 ) ) ) $ ( if p30 then d14 else d12 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d19 = if if p10 then true else d17 then if p10 then p30 else d14 else if p30 then p30 else p10
        d21 : if false then if true then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x220 -> ( ( Bool -> Bool ) ∋ ( ( λ x230 -> false ) ) ) $ ( p10 ) ) ) ) $ ( if d12 then false else p10 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d24 = if if false then d16 else false then if d5 then p30 else true else if true then d12 else d9
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x280 -> ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d19 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d30 : if false then if true then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x310 -> if p10 then d19 else false ) ) ) $ ( if d16 then p30 else true )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x330 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d32 = if if p30 then true else d12 then if p30 then p10 else p10 else if false then p10 else d24
        d34 : ( ( Set -> Set ) ∋ ( ( λ x350 -> ( ( Set -> Set ) ∋ ( ( λ x360 -> x360 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = if if p10 then p30 else p10 then if d16 then false else d5 else if false then d9 else p30
        d37 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x410 -> Bool ) ) ) $ ( x400 ) ) ) ) $ ( if false then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x380 -> ( ( Bool -> Bool ) ∋ ( ( λ x390 -> d24 ) ) ) $ ( p10 ) ) ) ) $ ( if d16 then d14 else d21 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x450 -> ( ( Set -> Set ) ∋ ( ( λ x460 -> x460 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x430 -> ( ( Bool -> Bool ) ∋ ( ( λ x440 -> d37 ) ) ) $ ( false ) ) ) ) $ ( if p10 then false else true )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x480 -> ( ( Set -> Set ) ∋ ( ( λ x490 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if p10 then d21 else true then if true then p10 else p30 else if false then false else true
        d50 : if true then if false then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> ( ( Bool -> Bool ) ∋ ( ( λ x520 -> false ) ) ) $ ( true ) ) ) ) $ ( if p10 then true else false )
        d53 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> x560 ) ) ) $ ( x560 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x540 -> ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d27 ) ) ) $ ( d47 ) ) ) ) $ ( if p10 then p10 else p10 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x610 -> if true then x610 else x610 ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> true ) ) ) $ ( d5 ) ) ) ) $ ( if true then p30 else p10 )
        d62 : if false then if true then Bool else Bool else if false then Bool else Bool
        d62 = if if p30 then p30 else d42 then if p30 then p30 else false else if p10 then p30 else p10
        d63 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if false then x660 else Bool ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x640 -> ( ( Bool -> Bool ) ∋ ( ( λ x650 -> p30 ) ) ) $ ( true ) ) ) ) $ ( if d62 then p30 else d32 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then Bool else x680 ) ) ) $ ( if true then Bool else Bool )
        d67 = if if p30 then false else p10 then if p30 then true else true else if true then d32 else p30
        d69 : ( ( Set -> Set ) ∋ ( ( λ x720 -> if true then x720 else Bool ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x700 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d50 else d17 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x760 -> if false then Bool else x760 ) ) ) $ ( if true then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x740 -> ( ( Bool -> Bool ) ∋ ( ( λ x750 -> p10 ) ) ) $ ( x740 ) ) ) ) $ ( if d14 then d21 else p10 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x790 -> ( ( Set -> Set ) ∋ ( ( λ x800 -> x790 ) ) ) $ ( x790 ) ) ) ) $ ( if false then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if true then x780 else true ) ) ) $ ( if false then d42 else d34 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x820 -> ( ( Set -> Set ) ∋ ( ( λ x830 -> x820 ) ) ) $ ( x820 ) ) ) ) $ ( if true then Bool else Bool )
        d81 = if if d9 then d37 else p30 then if p10 then p10 else true else if true then p10 else d58
        d84 : ( ( Set -> Set ) ∋ ( ( λ x850 -> if true then x850 else Bool ) ) ) $ ( if true then Bool else Bool )
        d84 = if if d47 then p10 else false then if false then false else p30 else if d50 then true else d12
        d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> ( ( Set -> Set ) ∋ ( ( λ x900 -> x890 ) ) ) $ ( x890 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x870 -> ( ( Bool -> Bool ) ∋ ( ( λ x880 -> false ) ) ) $ ( false ) ) ) ) $ ( if p10 then p10 else d84 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x930 -> ( ( Set -> Set ) ∋ ( ( λ x940 -> Bool ) ) ) $ ( x930 ) ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if x920 then d32 else d81 ) ) ) $ ( if true then p30 else true )
        d95 : if true then if true then Bool else Bool else if true then Bool else Bool
        d95 = ( ( Bool -> Bool ) ∋ ( ( λ x960 -> ( ( Bool -> Bool ) ∋ ( ( λ x970 -> p10 ) ) ) $ ( p30 ) ) ) ) $ ( if p30 then d5 else d24 )
        d98 : if false then if true then Bool else Bool else if true then Bool else Bool
        d98 = if if d77 then p30 else d32 then if true then d21 else false else if true then d24 else true
        d99 : ( ( Set -> Set ) ∋ ( ( λ x1000 -> if false then x1000 else x1000 ) ) ) $ ( if false then Bool else Bool )
        d99 = if if d30 then p10 else d95 then if p10 then d27 else true else if d67 then p10 else p10
        d101 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> ( ( Set -> Set ) ∋ ( ( λ x1030 -> Bool ) ) ) $ ( x1020 ) ) ) ) $ ( if false then Bool else Bool )
        d101 = if if false then false else d62 then if p10 then true else p30 else if true then p10 else d21
        d104 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> x1060 ) ) ) $ ( x1050 ) ) ) ) $ ( if true then Bool else Bool )
        d104 = if if d12 then d42 else d42 then if p30 then d30 else d14 else if d34 then true else d81
        d107 : if false then if false then Bool else Bool else if false then Bool else Bool
        d107 = if if d99 then true else false then if false then d12 else true else if p30 then d14 else d17
        d108 : ( ( Set -> Set ) ∋ ( ( λ x1100 -> if true then x1100 else x1100 ) ) ) $ ( if false then Bool else Bool )
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if d81 then d63 else p30 ) ) ) $ ( if true then d67 else d5 )
        d111 : if true then if false then Bool else Bool else if true then Bool else Bool
        d111 = if if false then false else d19 then if d5 then d30 else p10 else if d42 then d73 else p30
        d112 : if true then if false then Bool else Bool else if true then Bool else Bool
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> if d50 then d84 else d21 ) ) ) $ ( if p10 then d86 else d62 )
        d114 : if true then if true then Bool else Bool else if false then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x1150 -> if true then false else p10 ) ) ) $ ( if d30 then true else true )
        d116 : if true then if false then Bool else Bool else if true then Bool else Bool
        d116 = ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> true ) ) ) $ ( p30 ) ) ) ) $ ( if d114 then d63 else d77 )
    module M'  = M ( true ) 
    d119 : if false then if false then Bool else Bool else if true then Bool else Bool
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x1200 -> if true then x1200 else true ) ) ) $ ( if false then false else true )
    d121 : if false then if false then Bool else Bool else if false then Bool else Bool
    d121 = if if true then d119 else true then if false then false else d119 else if d119 then true else false
    d122 : if false then if true then Bool else Bool else if true then Bool else Bool
    d122 = ( ( M.d19 ) $ ( ( ( M.d69 ) $ ( d119 ) ) $ ( true ) ) ) $ ( ( M'.d17 ) $ ( if false then false else d119 ) )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x1250 -> ( ( Set -> Set ) ∋ ( ( λ x1260 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( M.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1240 -> d119 ) ) ) $ ( true ) ) ) $ ( ( M'.d73 ) $ ( ( ( M.d84 ) $ ( d122 ) ) $ ( d122 ) ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then Bool else x1290 ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( M.d98 ) $ ( ( M'.d27 ) $ ( ( M'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1280 -> x1280 ) ) ) $ ( d122 ) ) ) ) ) $ ( ( ( M.d27 ) $ ( d121 ) ) $ ( true ) )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x1310 -> ( ( Set -> Set ) ∋ ( ( λ x1320 -> x1320 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d130 = if if d127 then false else true then if d123 then d127 else true else if false then true else false
    d133 : ( ( Set -> Set ) ∋ ( ( λ x1350 -> ( ( Set -> Set ) ∋ ( ( λ x1360 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d133 = ( M'.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1340 -> if x1340 then true else true ) ) ) $ ( if d127 then d123 else d130 ) )
    d137 : if false then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( M.d91 ) $ ( ( M'.d27 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1380 -> d121 ) ) ) $ ( true ) ) ) ) $ ( if d133 then false else d123 )
    d139 : if true then if false then Bool else Bool else if false then Bool else Bool
    d139 = ( M'.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> x1410 ) ) ) $ ( x1400 ) ) ) ) $ ( if true then true else d122 ) )
    d142 : if false then if false then Bool else Bool else if false then Bool else Bool
    d142 = ( M'.d21 ) $ ( if if d122 then true else d130 then if d123 then d122 else d133 else if false then true else d130 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x1440 -> if false then Bool else x1440 ) ) ) $ ( if true then Bool else Bool )
    d143 = ( M'.d12 ) $ ( if if true then d133 else d121 then if d123 then d123 else false else if d142 then false else d121 )
    d145 : if false then if false then Bool else Bool else if false then Bool else Bool
    d145 = ( ( M.d95 ) $ ( if true then d119 else false ) ) $ ( if d127 then d123 else true )
    d146 : if false then if true then Bool else Bool else if true then Bool else Bool
    d146 = ( ( M.d32 ) $ ( ( M'.d37 ) $ ( ( ( M.d63 ) $ ( d143 ) ) $ ( false ) ) ) ) $ ( ( ( M.d86 ) $ ( d130 ) ) $ ( false ) )
    d147 : if true then if false then Bool else Bool else if false then Bool else Bool
    d147 = ( M'.d19 ) $ ( ( M'.d99 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> ( ( M.d84 ) $ ( if false then d139 else x1480 ) ) $ ( if true then false else d119 ) ) ) ) $ ( if true then false else true ) ) )
    d149 : if false then if true then Bool else Bool else if true then Bool else Bool
    d149 = ( M'.d9 ) $ ( ( M'.d9 ) $ ( if if d122 then d147 else d143 then if d147 then false else true else if true then false else false ) )
    d150 : if true then if false then Bool else Bool else if true then Bool else Bool
    d150 = ( ( M.d17 ) $ ( ( ( M.d84 ) $ ( true ) ) $ ( true ) ) ) $ ( ( M'.d101 ) $ ( ( M'.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1510 -> x1510 ) ) ) $ ( true ) ) ) )
    d152 : if false then if true then Bool else Bool else if false then Bool else Bool
    d152 = if if true then false else d147 then if true then false else d123 else if d130 then d121 else true
    d153 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d153 = ( ( M.d37 ) $ ( ( M'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( false ) ) ) ) $ ( ( M'.d95 ) $ ( ( ( M.d14 ) $ ( d130 ) ) $ ( true ) ) )
    d157 : if true then if false then Bool else Bool else if true then Bool else Bool
    d157 = ( M'.d86 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> ( ( M.d81 ) $ ( if true then d137 else d139 ) ) $ ( if d146 then d133 else true ) ) ) ) $ ( if false then d146 else true ) )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x1600 -> if false then Bool else x1600 ) ) ) $ ( if false then Bool else Bool )
    d159 = if if true then true else d143 then if false then true else false else if true then false else d150
    d161 : if true then if true then Bool else Bool else if true then Bool else Bool
    d161 = if if d150 then d159 else d143 then if true then false else d146 else if true then true else d150
    d162 : if false then if true then Bool else Bool else if false then Bool else Bool
    d162 = ( ( M.d84 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> d159 ) ) ) $ ( true ) ) ) $ ( ( M'.d86 ) $ ( ( ( M.d50 ) $ ( false ) ) $ ( true ) ) )
    d164 : if true then if true then Bool else Bool else if true then Bool else Bool
    d164 = ( M'.d104 ) $ ( if if true then true else d153 then if d142 then false else d119 else if false then false else d146 )
    d165 : if true then if true then Bool else Bool else if true then Bool else Bool
    d165 = ( M'.d14 ) $ ( ( ( M.d32 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> true ) ) ) $ ( false ) ) ) $ ( ( M'.d67 ) $ ( ( M'.d95 ) $ ( ( M'.d17 ) $ ( ( M'.d99 ) $ ( if false then false else d137 ) ) ) ) ) )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x1680 -> ( ( Set -> Set ) ∋ ( ( λ x1690 -> Bool ) ) ) $ ( x1680 ) ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( M.d111 ) $ ( ( ( M.d91 ) $ ( d142 ) ) $ ( d143 ) ) ) $ ( if d161 then d143 else false )
    d170 : if true then if false then Bool else Bool else if true then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x1710 -> ( ( M.d19 ) $ ( if d146 then true else x1710 ) ) $ ( if d119 then d157 else x1710 ) ) ) ) $ ( if true then d147 else d122 )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x1740 -> if true then x1740 else x1740 ) ) ) $ ( if true then Bool else Bool )
    d172 = ( ( M.d62 ) $ ( ( M'.d19 ) $ ( if true then d146 else d123 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1730 -> d123 ) ) ) $ ( true ) )
    d175 : if false then if false then Bool else Bool else if false then Bool else Bool
    d175 = ( M'.d107 ) $ ( if if false then d164 else true then if true then true else d157 else if d147 then d119 else d161 )
    d176 : if true then if true then Bool else Bool else if false then Bool else Bool
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x1770 -> ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> false ) ) ) $ ( false ) ) ) ) $ ( if d170 then true else true )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> ( ( Set -> Set ) ∋ ( ( λ x1830 -> x1830 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d179 = ( M'.d116 ) $ ( ( M'.d58 ) $ ( ( ( M.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> d165 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> d153 ) ) ) $ ( d127 ) ) ) )
    d184 : if true then if true then Bool else Bool else if true then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> ( ( Bool -> Bool ) ∋ ( ( λ x1860 -> d152 ) ) ) $ ( true ) ) ) ) $ ( if d121 then d145 else d164 )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x1890 -> ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( x1890 ) ) ) ) $ ( if false then Bool else Bool )
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> ( ( M.d30 ) $ ( if false then d119 else true ) ) $ ( if d143 then d127 else d122 ) ) ) ) $ ( if d123 then true else true )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x1920 -> if true then x1920 else Bool ) ) ) $ ( if true then Bool else Bool )
    d191 = ( M'.d5 ) $ ( if if d153 then false else true then if true then false else true else if false then false else true )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x1950 -> ( ( Set -> Set ) ∋ ( ( λ x1960 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d193 = ( M'.d107 ) $ ( ( ( M.d99 ) $ ( ( ( M.d50 ) $ ( false ) ) $ ( true ) ) ) $ ( ( M'.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1940 -> x1940 ) ) ) $ ( true ) ) ) )
    d197 : ( ( Set -> Set ) ∋ ( ( λ x1990 -> ( ( Set -> Set ) ∋ ( ( λ x2000 -> x2000 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d197 = ( ( M.d91 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1980 -> true ) ) ) $ ( false ) ) ) $ ( ( ( M.d107 ) $ ( d157 ) ) $ ( d121 ) )
    d201 : ( ( Set -> Set ) ∋ ( ( λ x2020 -> ( ( Set -> Set ) ∋ ( ( λ x2030 -> x2020 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d201 = ( M'.d116 ) $ ( ( M'.d32 ) $ ( if if false then d119 else d143 then if true then true else d159 else if d145 then false else d122 ) )
    d204 : ( ( Set -> Set ) ∋ ( ( λ x2070 -> if true then x2070 else x2070 ) ) ) $ ( if false then Bool else Bool )
    d204 = ( ( Bool -> Bool ) ∋ ( ( λ x2050 -> ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> d149 ) ) ) $ ( x2050 ) ) ) ) $ ( if d139 then true else d201 )
    d208 : if false then if false then Bool else Bool else if true then Bool else Bool
    d208 = if if false then d150 else false then if d153 then d165 else false else if true then true else d164
    d209 : if false then if false then Bool else Bool else if false then Bool else Bool
    d209 = if if d139 then true else true then if d170 then true else d162 else if d142 then d123 else d133
    d210 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> ( ( Set -> Set ) ∋ ( ( λ x2130 -> x2130 ) ) ) $ ( x2120 ) ) ) ) $ ( if true then Bool else Bool )
    d210 = ( ( Bool -> Bool ) ∋ ( ( λ x2110 -> ( ( M.d14 ) $ ( if x2110 then true else false ) ) $ ( if false then false else false ) ) ) ) $ ( if false then true else false )
    d214 : if false then if true then Bool else Bool else if true then Bool else Bool
    d214 = ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> ( M'.d63 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2160 -> true ) ) ) $ ( x2150 ) ) ) ) ) $ ( if false then d130 else d165 )
    d217 : if false then if false then Bool else Bool else if false then Bool else Bool
    d217 = if if d209 then true else d210 then if false then false else d193 else if d127 then true else true
    d218 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> ( ( Set -> Set ) ∋ ( ( λ x2210 -> Bool ) ) ) $ ( x2200 ) ) ) ) $ ( if false then Bool else Bool )
    d218 = ( ( Bool -> Bool ) ∋ ( ( λ x2190 -> ( ( M.d81 ) $ ( if d193 then x2190 else d162 ) ) $ ( if x2190 then d142 else d119 ) ) ) ) $ ( if d191 then d165 else false )
    d222 : if false then if false then Bool else Bool else if false then Bool else Bool
    d222 = ( ( Bool -> Bool ) ∋ ( ( λ x2230 -> ( ( Bool -> Bool ) ∋ ( ( λ x2240 -> false ) ) ) $ ( d164 ) ) ) ) $ ( if d217 then d152 else true )
    d225 : if true then if false then Bool else Bool else if true then Bool else Bool
    d225 = ( ( Bool -> Bool ) ∋ ( ( λ x2260 -> ( M'.d34 ) $ ( if d145 then d218 else d122 ) ) ) ) $ ( if false then true else false )
    d227 : if false then if false then Bool else Bool else if false then Bool else Bool
    d227 = ( M'.d108 ) $ ( if if false then d210 else true then if false then d159 else d157 else if d164 then true else d130 )
    d228 : ( ( Set -> Set ) ∋ ( ( λ x2290 -> ( ( Set -> Set ) ∋ ( ( λ x2300 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d228 = if if true then d164 else false then if d191 then d130 else true else if false then d119 else d143
    d231 : ( ( Set -> Set ) ∋ ( ( λ x2340 -> if true then x2340 else x2340 ) ) ) $ ( if false then Bool else Bool )
    d231 = ( M'.d107 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2320 -> ( ( Bool -> Bool ) ∋ ( ( λ x2330 -> x2330 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d147 ) )
    d235 : if false then if false then Bool else Bool else if false then Bool else Bool
    d235 = if if d150 then false else d150 then if d167 then false else false else if true then d209 else d161
    d236 : if true then if false then Bool else Bool else if false then Bool else Bool
    d236 = ( ( M.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2370 -> x2370 ) ) ) $ ( true ) ) ) $ ( if true then d164 else false )
    d238 : ( ( Set -> Set ) ∋ ( ( λ x2400 -> if false then Bool else x2400 ) ) ) $ ( if false then Bool else Bool )
    d238 = ( ( Bool -> Bool ) ∋ ( ( λ x2390 -> ( M'.d32 ) $ ( if false then d157 else x2390 ) ) ) ) $ ( if false then d153 else true )
    d241 : if false then if false then Bool else Bool else if false then Bool else Bool
    d241 = if if d197 then d137 else d175 then if d153 then false else d204 else if false then d170 else false
    d242 : if true then if true then Bool else Bool else if true then Bool else Bool
    d242 = ( ( M.d99 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2430 -> true ) ) ) $ ( d119 ) ) ) $ ( ( ( M.d53 ) $ ( d204 ) ) $ ( true ) )
    d244 : ( ( Set -> Set ) ∋ ( ( λ x2460 -> ( ( Set -> Set ) ∋ ( ( λ x2470 -> x2470 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d244 = ( ( Bool -> Bool ) ∋ ( ( λ x2450 -> ( ( M.d16 ) $ ( if true then x2450 else d157 ) ) $ ( if x2450 then x2450 else false ) ) ) ) $ ( if false then d238 else true )
    d248 : ( ( Set -> Set ) ∋ ( ( λ x2490 -> ( ( Set -> Set ) ∋ ( ( λ x2500 -> Bool ) ) ) $ ( x2490 ) ) ) ) $ ( if false then Bool else Bool )
    d248 = ( M'.d62 ) $ ( ( ( M.d116 ) $ ( ( ( M.d47 ) $ ( false ) ) $ ( d227 ) ) ) $ ( ( ( M.d42 ) $ ( false ) ) $ ( true ) ) )
    d251 : ( ( Set -> Set ) ∋ ( ( λ x2520 -> ( ( Set -> Set ) ∋ ( ( λ x2530 -> x2530 ) ) ) $ ( x2520 ) ) ) ) $ ( if false then Bool else Bool )
    d251 = ( M'.d69 ) $ ( if if d149 then d187 else d123 then if d242 then d137 else d145 else if false then d238 else d167 )
    d254 : if false then if true then Bool else Bool else if true then Bool else Bool
    d254 = if if false then false else d123 then if d150 then d214 else d139 else if true then false else true
    d255 : ( ( Set -> Set ) ∋ ( ( λ x2570 -> if true then x2570 else x2570 ) ) ) $ ( if false then Bool else Bool )
    d255 = ( ( M.d104 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2560 -> d146 ) ) ) $ ( true ) ) ) $ ( if true then false else true )
    d258 : if false then if true then Bool else Bool else if true then Bool else Bool
    d258 = ( M'.d95 ) $ ( ( ( M.d73 ) $ ( ( ( M.d107 ) $ ( d201 ) ) $ ( d123 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2590 -> d121 ) ) ) $ ( false ) ) )
    d260 : ( ( Set -> Set ) ∋ ( ( λ x2630 -> ( ( Set -> Set ) ∋ ( ( λ x2640 -> Bool ) ) ) $ ( x2630 ) ) ) ) $ ( if false then Bool else Bool )
    d260 = ( M'.d42 ) $ ( ( ( M.d50 ) $ ( ( M'.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2610 -> d187 ) ) ) $ ( true ) ) ) ) $ ( ( M'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2620 -> d123 ) ) ) $ ( d121 ) ) ) )
    d265 : if true then if false then Bool else Bool else if false then Bool else Bool
    d265 = ( ( Bool -> Bool ) ∋ ( ( λ x2660 -> ( ( M.d53 ) $ ( if d121 then true else true ) ) $ ( if x2660 then false else x2660 ) ) ) ) $ ( if d119 then d123 else true )
    d267 : ( ( Set -> Set ) ∋ ( ( λ x2690 -> if false then x2690 else Bool ) ) ) $ ( if false then Bool else Bool )
    d267 = ( M'.d47 ) $ ( ( M'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2680 -> if x2680 then x2680 else x2680 ) ) ) $ ( if false then d187 else d210 ) ) )
    d270 : ( ( Set -> Set ) ∋ ( ( λ x2720 -> ( ( Set -> Set ) ∋ ( ( λ x2730 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d270 = ( M'.d112 ) $ ( ( ( M.d32 ) $ ( if false then d235 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2710 -> true ) ) ) $ ( d193 ) ) )
    d274 : if true then if true then Bool else Bool else if true then Bool else Bool
    d274 = ( M'.d42 ) $ ( ( ( M.d16 ) $ ( if d241 then d122 else d187 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2750 -> x2750 ) ) ) $ ( false ) ) )
    d276 : ( ( Set -> Set ) ∋ ( ( λ x2780 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d276 = ( ( Bool -> Bool ) ∋ ( ( λ x2770 -> ( M'.d63 ) $ ( if false then true else d167 ) ) ) ) $ ( if true then d157 else d172 )
    d279 : if true then if true then Bool else Bool else if false then Bool else Bool
    d279 = ( M'.d116 ) $ ( ( M'.d111 ) $ ( ( M'.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2800 -> if false then true else false ) ) ) $ ( if d208 then true else d210 ) ) ) )
    d281 : if false then if false then Bool else Bool else if false then Bool else Bool
    d281 = ( M'.d21 ) $ ( ( ( M.d63 ) $ ( ( M'.d42 ) $ ( ( M'.d24 ) $ ( ( M'.d62 ) $ ( ( M'.d107 ) $ ( ( ( M.d32 ) $ ( d157 ) ) $ ( d251 ) ) ) ) ) ) ) $ ( ( M'.d62 ) $ ( if d149 then d251 else d251 ) ) )
    d282 : ( ( Set -> Set ) ∋ ( ( λ x2840 -> ( ( Set -> Set ) ∋ ( ( λ x2850 -> Bool ) ) ) $ ( x2840 ) ) ) ) $ ( if false then Bool else Bool )
    d282 = ( M'.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2830 -> ( ( M.d47 ) $ ( if d214 then x2830 else x2830 ) ) $ ( if true then d260 else true ) ) ) ) $ ( if true then d167 else false ) )
    d286 : if true then if true then Bool else Bool else if false then Bool else Bool
    d286 = if if false then true else true then if d157 then d152 else d248 else if d228 then false else d251
    d287 : ( ( Set -> Set ) ∋ ( ( λ x2880 -> ( ( Set -> Set ) ∋ ( ( λ x2890 -> x2890 ) ) ) $ ( x2880 ) ) ) ) $ ( if true then Bool else Bool )
    d287 = if if d122 then false else false then if false then true else false else if false then true else true
    d290 : if true then if true then Bool else Bool else if true then Bool else Bool
    d290 = ( M'.d81 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2910 -> if true then d167 else false ) ) ) $ ( if false then d244 else false ) )
    d292 : ( ( Set -> Set ) ∋ ( ( λ x2950 -> ( ( Set -> Set ) ∋ ( ( λ x2960 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d292 = ( ( Bool -> Bool ) ∋ ( ( λ x2930 -> ( ( Bool -> Bool ) ∋ ( ( λ x2940 -> false ) ) ) $ ( x2930 ) ) ) ) $ ( if true then true else true )
    d297 : if true then if false then Bool else Bool else if false then Bool else Bool
    d297 = if if d255 then d210 else d122 then if d292 then d143 else false else if true then true else d227
    d298 : ( ( Set -> Set ) ∋ ( ( λ x3000 -> ( ( Set -> Set ) ∋ ( ( λ x3010 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d298 = ( ( Bool -> Bool ) ∋ ( ( λ x2990 -> ( M'.d16 ) $ ( if x2990 then x2990 else x2990 ) ) ) ) $ ( if d222 then false else true )
    d302 : if false then if false then Bool else Bool else if true then Bool else Bool
    d302 = if if false then d119 else d225 then if d248 then false else true else if true then true else d290
    d303 : if true then if false then Bool else Bool else if false then Bool else Bool
    d303 = ( M'.d21 ) $ ( ( M'.d114 ) $ ( ( M'.d91 ) $ ( ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3040 -> false ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3050 -> x3050 ) ) ) $ ( false ) ) ) ) )
    d306 : ( ( Set -> Set ) ∋ ( ( λ x3080 -> ( ( Set -> Set ) ∋ ( ( λ x3090 -> x3090 ) ) ) $ ( x3080 ) ) ) ) $ ( if false then Bool else Bool )
    d306 = ( M'.d91 ) $ ( ( M'.d112 ) $ ( ( ( M.d95 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3070 -> d298 ) ) ) $ ( true ) ) ) $ ( ( M'.d30 ) $ ( ( M'.d53 ) $ ( if false then d149 else d265 ) ) ) ) )
    d310 : if true then if true then Bool else Bool else if true then Bool else Bool
    d310 = if if d231 then true else d157 then if d248 then d282 else true else if false then false else false
    d311 : if false then if false then Bool else Bool else if true then Bool else Bool
    d311 = if if false then true else true then if true then d145 else false else if true then d170 else d175
    d312 : if false then if false then Bool else Bool else if true then Bool else Bool
    d312 = ( ( Bool -> Bool ) ∋ ( ( λ x3130 -> ( ( M.d19 ) $ ( if d222 then true else d119 ) ) $ ( if true then x3130 else d184 ) ) ) ) $ ( if d145 then d187 else d153 )
    d314 : if false then if false then Bool else Bool else if true then Bool else Bool
    d314 = ( M'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3150 -> ( M'.d84 ) $ ( if false then x3150 else true ) ) ) ) $ ( if false then d225 else d251 ) )
    d316 : ( ( Set -> Set ) ∋ ( ( λ x3180 -> ( ( Set -> Set ) ∋ ( ( λ x3190 -> Bool ) ) ) $ ( x3180 ) ) ) ) $ ( if true then Bool else Bool )
    d316 = ( M'.d98 ) $ ( ( M'.d30 ) $ ( ( M'.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3170 -> if x3170 then false else d122 ) ) ) $ ( if d311 then d159 else d228 ) ) ) )
    d320 : if true then if false then Bool else Bool else if true then Bool else Bool
    d320 = ( ( Bool -> Bool ) ∋ ( ( λ x3210 -> ( ( Bool -> Bool ) ∋ ( ( λ x3220 -> x3210 ) ) ) $ ( false ) ) ) ) $ ( if true then d193 else d204 )
    d323 : ( ( Set -> Set ) ∋ ( ( λ x3240 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d323 = if if d175 then d286 else false then if false then false else d162 else if true then d292 else false
    d325 : ( ( Set -> Set ) ∋ ( ( λ x3260 -> ( ( Set -> Set ) ∋ ( ( λ x3270 -> x3260 ) ) ) $ ( x3260 ) ) ) ) $ ( if false then Bool else Bool )
    d325 = if if d210 then false else false then if false then d146 else d165 else if false then false else d145
    d328 : ( ( Set -> Set ) ∋ ( ( λ x3300 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d328 = ( M'.d58 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3290 -> if true then d270 else false ) ) ) $ ( if d218 then d201 else d310 ) )
    d331 : ( ( Set -> Set ) ∋ ( ( λ x3320 -> ( ( Set -> Set ) ∋ ( ( λ x3330 -> x3330 ) ) ) $ ( x3320 ) ) ) ) $ ( if true then Bool else Bool )
    d331 = if if d236 then d130 else d121 then if d251 then false else d316 else if true then false else d130
    d334 : ( ( Set -> Set ) ∋ ( ( λ x3350 -> ( ( Set -> Set ) ∋ ( ( λ x3360 -> Bool ) ) ) $ ( x3350 ) ) ) ) $ ( if true then Bool else Bool )
    d334 = if if false then d238 else d137 then if d208 then d130 else d267 else if true then d303 else d238
    d337 : if true then if false then Bool else Bool else if false then Bool else Bool
    d337 = ( ( Bool -> Bool ) ∋ ( ( λ x3380 -> if x3380 then x3380 else true ) ) ) $ ( if true then false else d323 )
    d339 : if true then if true then Bool else Bool else if true then Bool else Bool
    d339 = ( M'.d30 ) $ ( ( ( M.d50 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3400 -> x3400 ) ) ) $ ( true ) ) ) $ ( ( ( M.d42 ) $ ( true ) ) $ ( true ) ) )
    d341 : if false then if false then Bool else Bool else if false then Bool else Bool
    d341 = if if true then false else false then if d282 then true else true else if false then true else true
    d342 : if true then if true then Bool else Bool else if false then Bool else Bool
    d342 = ( ( M.d50 ) $ ( if false then false else true ) ) $ ( ( ( M.d116 ) $ ( true ) ) $ ( false ) )
    d343 : if true then if true then Bool else Bool else if true then Bool else Bool
    d343 = ( M'.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3440 -> if true then true else d251 ) ) ) $ ( if d311 then false else d172 ) )
    d345 : ( ( Set -> Set ) ∋ ( ( λ x3460 -> ( ( Set -> Set ) ∋ ( ( λ x3470 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d345 = ( M'.d9 ) $ ( ( ( M.d63 ) $ ( ( M'.d91 ) $ ( ( M'.d112 ) $ ( ( ( M.d114 ) $ ( d193 ) ) $ ( true ) ) ) ) ) $ ( ( M'.d107 ) $ ( ( M'.d32 ) $ ( if false then true else d265 ) ) ) )
    d348 : ( ( Set -> Set ) ∋ ( ( λ x3500 -> ( ( Set -> Set ) ∋ ( ( λ x3510 -> Bool ) ) ) $ ( x3500 ) ) ) ) $ ( if true then Bool else Bool )
    d348 = ( ( M.d47 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3490 -> x3490 ) ) ) $ ( d231 ) ) ) $ ( if true then d127 else false )
    d352 : ( ( Set -> Set ) ∋ ( ( λ x3540 -> if false then x3540 else x3540 ) ) ) $ ( if false then Bool else Bool )
    d352 = ( ( M.d14 ) $ ( ( M'.d112 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3530 -> x3530 ) ) ) $ ( true ) ) ) ) $ ( ( M'.d24 ) $ ( if d331 then true else true ) )
    d355 : if true then if true then Bool else Bool else if true then Bool else Bool
    d355 = ( ( M.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3560 -> false ) ) ) $ ( d218 ) ) ) $ ( if true then true else d152 )
    d357 : if false then if false then Bool else Bool else if false then Bool else Bool
    d357 = ( M'.d16 ) $ ( ( ( M.d50 ) $ ( ( M'.d9 ) $ ( if d345 then d142 else false ) ) ) $ ( if false then false else false ) )
    d358 : ( ( Set -> Set ) ∋ ( ( λ x3600 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d358 = ( ( Bool -> Bool ) ∋ ( ( λ x3590 -> if true then d348 else d209 ) ) ) $ ( if d162 then d265 else true )
    d361 : ( ( Set -> Set ) ∋ ( ( λ x3630 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d361 = ( ( M.d81 ) $ ( ( ( M.d86 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x3620 -> x3620 ) ) ) $ ( true ) )