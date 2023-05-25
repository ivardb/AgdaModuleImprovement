module TypeSize15Test8  where
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
            d3 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> Bool ) ) ) $ ( x50 ) ) ) ) $ ( if false then Bool else Bool )
            d3 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if true then true else true ) ) ) $ ( if p20 then true else true )
            d7 : if true then if true then Bool else Bool else if false then Bool else Bool
            d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if d3 then p10 else p20 ) ) ) $ ( if p20 then p20 else p10 )
            d9 : if true then if true then Bool else Bool else if true then Bool else Bool
            d9 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> true ) ) ) $ ( p20 ) ) ) ) $ ( if d7 then true else d3 )
            d12 : ( ( Set -> Set ) ∋ ( ( λ x130 -> if false then x130 else x130 ) ) ) $ ( if true then Bool else Bool )
            d12 = if if d9 then true else p20 then if true then p10 else false else if p10 then false else p10
            d14 : if false then if false then Bool else Bool else if true then Bool else Bool
            d14 = if if p10 then true else false then if d7 then false else d9 else if true then true else d9
            d15 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
            d15 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d7 then false else d3 ) ) ) $ ( if d3 then false else d12 )
            d18 : if true then if false then Bool else Bool else if true then Bool else Bool
            d18 = if if false then true else d3 then if false then d15 else true else if p20 then p10 else d14
            d19 : ( ( Set -> Set ) ∋ ( ( λ x200 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> Bool ) ) ) $ ( x200 ) ) ) ) $ ( if false then Bool else Bool )
            d19 = if if p20 then d12 else p10 then if d9 then false else true else if true then d9 else d9
            d22 : if false then if false then Bool else Bool else if true then Bool else Bool
            d22 = ( ( Bool -> Bool ) ∋ ( ( λ x230 -> ( ( Bool -> Bool ) ∋ ( ( λ x240 -> x230 ) ) ) $ ( d14 ) ) ) ) $ ( if d12 then false else d12 )
            d25 : ( ( Set -> Set ) ∋ ( ( λ x270 -> ( ( Set -> Set ) ∋ ( ( λ x280 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d25 = ( ( Bool -> Bool ) ∋ ( ( λ x260 -> if p10 then p10 else true ) ) ) $ ( if false then p10 else p20 )
            d29 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if true then Bool else x300 ) ) ) $ ( if false then Bool else Bool )
            d29 = if if false then d14 else p20 then if p10 then true else d25 else if p10 then false else true
            d31 : if false then if true then Bool else Bool else if false then Bool else Bool
            d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> if d25 then x320 else p20 ) ) ) $ ( if p20 then false else p20 )
            d33 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if true then x340 else x340 ) ) ) $ ( if true then Bool else Bool )
            d33 = if if true then d7 else d14 then if d14 then d22 else p20 else if d18 then false else p20
            d35 : if true then if true then Bool else Bool else if true then Bool else Bool
            d35 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> ( ( Bool -> Bool ) ∋ ( ( λ x370 -> x360 ) ) ) $ ( d15 ) ) ) ) $ ( if d7 then true else d33 )
            d38 : ( ( Set -> Set ) ∋ ( ( λ x390 -> if true then x390 else Bool ) ) ) $ ( if false then Bool else Bool )
            d38 = if if false then d9 else p10 then if true then p10 else false else if p10 then d3 else p20
            d40 : ( ( Set -> Set ) ∋ ( ( λ x430 -> ( ( Set -> Set ) ∋ ( ( λ x440 -> Bool ) ) ) $ ( x430 ) ) ) ) $ ( if true then Bool else Bool )
            d40 = ( ( Bool -> Bool ) ∋ ( ( λ x410 -> ( ( Bool -> Bool ) ∋ ( ( λ x420 -> p20 ) ) ) $ ( d25 ) ) ) ) $ ( if true then p20 else p20 )
            d45 : ( ( Set -> Set ) ∋ ( ( λ x460 -> if true then Bool else x460 ) ) ) $ ( if false then Bool else Bool )
            d45 = if if p10 then true else p10 then if d7 then p20 else d38 else if false then p20 else d25
            d47 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if true then x480 else Bool ) ) ) $ ( if true then Bool else Bool )
            d47 = if if d22 then p10 else p20 then if false then d25 else false else if p20 then true else false
            d49 : ( ( Set -> Set ) ∋ ( ( λ x500 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
            d49 = if if d40 then true else p10 then if d7 then false else true else if d33 then p20 else true
            d51 : if true then if true then Bool else Bool else if true then Bool else Bool
            d51 = if if true then true else false then if false then d31 else d18 else if true then d38 else p10
            d52 : if true then if false then Bool else Bool else if false then Bool else Bool
            d52 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if true then false else x530 ) ) ) $ ( if d15 then p10 else true )
            d54 : ( ( Set -> Set ) ∋ ( ( λ x560 -> ( ( Set -> Set ) ∋ ( ( λ x570 -> x560 ) ) ) $ ( x560 ) ) ) ) $ ( if true then Bool else Bool )
            d54 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> if d29 then true else p20 ) ) ) $ ( if p10 then true else false )
            d58 : if true then if true then Bool else Bool else if true then Bool else Bool
            d58 = ( ( Bool -> Bool ) ∋ ( ( λ x590 -> ( ( Bool -> Bool ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( true ) ) ) ) $ ( if d7 then p10 else p10 )
            d61 : if true then if true then Bool else Bool else if true then Bool else Bool
            d61 = if if false then d14 else p20 then if false then p10 else false else if false then d49 else d25
            d62 : ( ( Set -> Set ) ∋ ( ( λ x630 -> ( ( Set -> Set ) ∋ ( ( λ x640 -> x630 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
            d62 = if if true then d38 else p10 then if p20 then false else d29 else if d33 then d3 else d51
            d65 : ( ( Set -> Set ) ∋ ( ( λ x660 -> if true then Bool else x660 ) ) ) $ ( if false then Bool else Bool )
            d65 = if if p10 then p20 else p10 then if false then p20 else d47 else if d25 then d14 else true
            d67 : ( ( Set -> Set ) ∋ ( ( λ x690 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d67 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> if p10 then d33 else p10 ) ) ) $ ( if d38 then p20 else true )
            d71 : if false then if false then Bool else Bool else if true then Bool else Bool
            d71 = if if d47 then d7 else p10 then if false then d35 else true else if d35 then false else true
            d72 : if true then if true then Bool else Bool else if true then Bool else Bool
            d72 = if if true then false else d51 then if p20 then true else false else if false then d45 else d29
            d73 : ( ( Set -> Set ) ∋ ( ( λ x740 -> ( ( Set -> Set ) ∋ ( ( λ x750 -> x740 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
            d73 = if if d29 then false else false then if d15 then false else true else if false then d62 else true
            d76 : if true then if false then Bool else Bool else if true then Bool else Bool
            d76 = if if p20 then p10 else d47 then if d65 then p10 else true else if p10 then false else false
            d77 : if true then if false then Bool else Bool else if false then Bool else Bool
            d77 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if d51 then true else p10 ) ) ) $ ( if d14 then p10 else true )
            d79 : if false then if false then Bool else Bool else if true then Bool else Bool
            d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> false ) ) ) $ ( p20 ) ) ) ) $ ( if false then d31 else d54 )
            d82 : ( ( Set -> Set ) ∋ ( ( λ x830 -> ( ( Set -> Set ) ∋ ( ( λ x840 -> x840 ) ) ) $ ( x830 ) ) ) ) $ ( if false then Bool else Bool )
            d82 = if if d45 then p10 else p10 then if d76 then p20 else d22 else if d77 then p20 else true
            d85 : if true then if true then Bool else Bool else if false then Bool else Bool
            d85 = if if p10 then d49 else false then if false then false else false else if p10 then d61 else d82
            d86 : ( ( Set -> Set ) ∋ ( ( λ x870 -> if true then x870 else x870 ) ) ) $ ( if true then Bool else Bool )
            d86 = if if p10 then false else p20 then if d31 then false else true else if p20 then p10 else p10
            d88 : if false then if true then Bool else Bool else if false then Bool else Bool
            d88 = ( ( Bool -> Bool ) ∋ ( ( λ x890 -> ( ( Bool -> Bool ) ∋ ( ( λ x900 -> false ) ) ) $ ( false ) ) ) ) $ ( if d72 then false else true )
            d91 : ( ( Set -> Set ) ∋ ( ( λ x920 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> x920 ) ) ) $ ( x920 ) ) ) ) $ ( if false then Bool else Bool )
            d91 = if if p20 then p10 else p20 then if true then false else d76 else if d79 then true else false
            d94 : if true then if true then Bool else Bool else if true then Bool else Bool
            d94 = if if true then d15 else p10 then if d31 then p10 else d15 else if true then false else p20
            d95 : ( ( Set -> Set ) ∋ ( ( λ x960 -> if true then Bool else x960 ) ) ) $ ( if true then Bool else Bool )
            d95 = if if false then d38 else p20 then if true then d54 else false else if p20 then false else d25
        module M1'  = M1 ( p10 ) 
    d97 : if true then if false then Bool else Bool else if false then Bool else Bool
    d97 = ( ( M.M1.d91 ) $ ( if true then false else false ) ) $ ( if true then false else false )
    d98 : ( ( Set -> Set ) ∋ ( ( λ x1010 -> if false then x1010 else x1010 ) ) ) $ ( if false then Bool else Bool )
    d98 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> ( M.M1'.d22 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1000 -> d97 ) ) ) $ ( x990 ) ) ) ) ) $ ( if false then false else d97 )
    d102 : ( ( Set -> Set ) ∋ ( ( λ x1030 -> if false then x1030 else x1030 ) ) ) $ ( if true then Bool else Bool )
    d102 = ( ( M.M1.d85 ) $ ( if false then d98 else d98 ) ) $ ( ( M.M1'.d91 ) $ ( ( M.M1'.d33 ) $ ( if false then d98 else d97 ) ) )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> ( ( Set -> Set ) ∋ ( ( λ x1060 -> x1050 ) ) ) $ ( x1050 ) ) ) ) $ ( if true then Bool else Bool )
    d104 = ( M.M1'.d29 ) $ ( ( M.M1'.d49 ) $ ( if if false then true else d102 then if d97 then d102 else d97 else if true then true else d97 ) )
    d107 : if false then if true then Bool else Bool else if false then Bool else Bool
    d107 = ( M.M1'.d73 ) $ ( ( M.M1'.d88 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( M.M1'.d88 ) $ ( ( ( M.M1.d12 ) $ ( if d97 then d104 else true ) ) $ ( if x1080 then x1080 else false ) ) ) ) ) $ ( if d98 then true else d98 ) ) )
    d109 : if true then if false then Bool else Bool else if false then Bool else Bool
    d109 = ( M.M1'.d19 ) $ ( if if true then true else true then if d102 then true else d97 else if true then d102 else false )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x1110 -> if true then x1110 else Bool ) ) ) $ ( if false then Bool else Bool )
    d110 = ( ( M.M1.d29 ) $ ( if d97 then d109 else false ) ) $ ( if d107 then d107 else false )
    d112 : if true then if true then Bool else Bool else if true then Bool else Bool
    d112 = ( ( M.M1.d12 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> x1130 ) ) ) $ ( d98 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> false ) ) ) $ ( true ) )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x1180 -> ( ( Set -> Set ) ∋ ( ( λ x1190 -> x1180 ) ) ) $ ( x1180 ) ) ) ) $ ( if false then Bool else Bool )
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x1160 -> ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> true ) ) ) $ ( x1160 ) ) ) ) $ ( if true then true else true )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x1210 -> ( ( Set -> Set ) ∋ ( ( λ x1220 -> Bool ) ) ) $ ( x1210 ) ) ) ) $ ( if true then Bool else Bool )
    d120 = ( M.M1'.d71 ) $ ( ( ( M.M1.d49 ) $ ( if d102 then false else false ) ) $ ( ( ( M.M1.d49 ) $ ( false ) ) $ ( d97 ) ) )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x1240 -> ( ( Set -> Set ) ∋ ( ( λ x1250 -> x1240 ) ) ) $ ( x1240 ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( M.M1.d15 ) $ ( if false then false else d112 ) ) $ ( if false then false else true )
    d126 : if false then if false then Bool else Bool else if true then Bool else Bool
    d126 = ( M.M1'.d49 ) $ ( ( M.M1'.d62 ) $ ( ( ( M.M1.d12 ) $ ( ( M.M1'.d95 ) $ ( ( ( M.M1.d51 ) $ ( true ) ) $ ( d107 ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> false ) ) ) $ ( d110 ) ) ) )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x1300 -> ( ( Set -> Set ) ∋ ( ( λ x1310 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d128 = ( ( M.M1.d7 ) $ ( ( ( M.M1.d15 ) $ ( false ) ) $ ( d104 ) ) ) $ ( ( M.M1'.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1290 -> true ) ) ) $ ( d102 ) ) )
    d132 : if false then if true then Bool else Bool else if true then Bool else Bool
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x1330 -> ( ( M.M1.d79 ) $ ( if x1330 then true else false ) ) $ ( if false then d97 else false ) ) ) ) $ ( if d104 then d107 else false )
    d134 : if true then if false then Bool else Bool else if false then Bool else Bool
    d134 = if if false then false else d104 then if d102 then false else d102 else if d109 then d115 else d132
    d135 : ( ( Set -> Set ) ∋ ( ( λ x1380 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> ( ( Bool -> Bool ) ∋ ( ( λ x1370 -> d104 ) ) ) $ ( x1360 ) ) ) ) $ ( if true then false else true )
    d139 : if true then if false then Bool else Bool else if true then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> ( ( Bool -> Bool ) ∋ ( ( λ x1410 -> x1400 ) ) ) $ ( d98 ) ) ) ) $ ( if true then d98 else true )
    d142 : ( ( Set -> Set ) ∋ ( ( λ x1430 -> ( ( Set -> Set ) ∋ ( ( λ x1440 -> Bool ) ) ) $ ( x1430 ) ) ) ) $ ( if true then Bool else Bool )
    d142 = if if d109 then false else true then if true then false else true else if d98 then false else false
    d145 : ( ( Set -> Set ) ∋ ( ( λ x1470 -> if true then x1470 else Bool ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x1460 -> ( ( M.M1.d94 ) $ ( if false then false else d126 ) ) $ ( if d142 then true else x1460 ) ) ) ) $ ( if d132 then d107 else false )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x1510 -> ( ( Set -> Set ) ∋ ( ( λ x1520 -> Bool ) ) ) $ ( x1510 ) ) ) ) $ ( if false then Bool else Bool )
    d148 = ( ( M.M1.d73 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> true ) ) ) $ ( true ) ) ) $ ( ( M.M1'.d95 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1500 -> x1500 ) ) ) $ ( d128 ) ) )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x1550 -> ( ( Set -> Set ) ∋ ( ( λ x1560 -> x1560 ) ) ) $ ( x1550 ) ) ) ) $ ( if false then Bool else Bool )
    d153 = ( M.M1'.d88 ) $ ( ( ( M.M1.d15 ) $ ( ( ( M.M1.d54 ) $ ( d115 ) ) $ ( d135 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1540 -> x1540 ) ) ) $ ( false ) ) )
    d157 : ( ( Set -> Set ) ∋ ( ( λ x1590 -> ( ( Set -> Set ) ∋ ( ( λ x1600 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d157 = ( M.M1'.d65 ) $ ( ( ( M.M1.d35 ) $ ( ( M.M1'.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1580 -> x1580 ) ) ) $ ( false ) ) ) ) $ ( if d123 then true else d135 ) )
    d161 : if false then if false then Bool else Bool else if true then Bool else Bool
    d161 = if if true then false else false then if false then false else true else if false then d102 else false
    d162 : if false then if true then Bool else Bool else if false then Bool else Bool
    d162 = ( ( M.M1.d12 ) $ ( ( ( M.M1.d52 ) $ ( true ) ) $ ( d128 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1630 -> x1630 ) ) ) $ ( d115 ) )
    d164 : if true then if false then Bool else Bool else if false then Bool else Bool
    d164 = ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> ( ( M.M1.d52 ) $ ( if x1650 then true else false ) ) $ ( if true then d157 else x1650 ) ) ) ) $ ( if true then d123 else false )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x1690 -> ( ( Set -> Set ) ∋ ( ( λ x1700 -> Bool ) ) ) $ ( x1690 ) ) ) ) $ ( if false then Bool else Bool )
    d166 = ( M.M1'.d79 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1670 -> ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> false ) ) ) $ ( d148 ) ) ) ) $ ( if d164 then false else d139 ) )
    d171 : ( ( Set -> Set ) ∋ ( ( λ x1720 -> if false then x1720 else x1720 ) ) ) $ ( if false then Bool else Bool )
    d171 = ( M.M1'.d58 ) $ ( ( ( M.M1.d15 ) $ ( ( M.M1'.d49 ) $ ( ( ( M.M1.d58 ) $ ( d139 ) ) $ ( true ) ) ) ) $ ( if d102 then d112 else d139 ) )
    d173 : if true then if true then Bool else Bool else if false then Bool else Bool
    d173 = ( M.M1'.d3 ) $ ( if if true then false else true then if d171 then d134 else d132 else if d115 then false else d128 )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x1750 -> if true then Bool else x1750 ) ) ) $ ( if false then Bool else Bool )
    d174 = ( M.M1'.d94 ) $ ( ( ( M.M1.d76 ) $ ( ( ( M.M1.d25 ) $ ( d142 ) ) $ ( d109 ) ) ) $ ( ( M.M1'.d71 ) $ ( ( M.M1'.d3 ) $ ( ( ( M.M1.d76 ) $ ( false ) ) $ ( d139 ) ) ) ) )
    d176 : if true then if false then Bool else Bool else if true then Bool else Bool
    d176 = ( M.M1'.d62 ) $ ( if if d98 then d126 else false then if d115 then d174 else true else if d126 then true else true )
    d177 : if false then if false then Bool else Bool else if true then Bool else Bool
    d177 = ( M.M1'.d12 ) $ ( ( M.M1'.d7 ) $ ( ( M.M1'.d51 ) $ ( if if d123 then true else d110 then if d142 then false else d148 else if d161 then d174 else true ) ) )
    d178 : if true then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( M.M1.d95 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1790 -> d166 ) ) ) $ ( d115 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1800 -> false ) ) ) $ ( false ) )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if true then x1820 else x1820 ) ) ) $ ( if true then Bool else Bool )
    d181 = ( M.M1'.d31 ) $ ( ( M.M1'.d67 ) $ ( if if d115 then true else d173 then if d128 then d102 else true else if d145 then false else d142 ) )
    d183 : if false then if false then Bool else Bool else if true then Bool else Bool
    d183 = if if d98 then false else false then if true then false else true else if d115 then d174 else false
    d184 : if false then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x1850 -> ( ( M.M1.d71 ) $ ( if d157 then x1850 else true ) ) $ ( if x1850 then d181 else x1850 ) ) ) ) $ ( if false then d183 else false )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x1880 -> ( ( Set -> Set ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x1870 -> ( M.M1'.d67 ) $ ( ( M.M1'.d91 ) $ ( if x1870 then d139 else false ) ) ) ) ) $ ( if true then false else d123 )
    d190 : if false then if true then Bool else Bool else if true then Bool else Bool
    d190 = ( ( M.M1.d61 ) $ ( ( M.M1'.d54 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1910 -> x1910 ) ) ) $ ( false ) ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1920 -> false ) ) ) $ ( false ) )
    d193 : if true then if false then Bool else Bool else if true then Bool else Bool
    d193 = if if true then true else d123 then if true then false else d135 else if d107 then false else false
    d194 : ( ( Set -> Set ) ∋ ( ( λ x1960 -> ( ( Set -> Set ) ∋ ( ( λ x1970 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x1950 -> ( M.M1'.d45 ) $ ( ( M.M1'.d31 ) $ ( ( ( M.M1.d62 ) $ ( if true then d162 else d115 ) ) $ ( if true then d161 else d134 ) ) ) ) ) ) $ ( if true then d181 else d97 )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x2010 -> if true then Bool else x2010 ) ) ) $ ( if true then Bool else Bool )
    d198 = ( M.M1'.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x1990 -> ( ( Bool -> Bool ) ∋ ( ( λ x2000 -> false ) ) ) $ ( x1990 ) ) ) ) $ ( if d157 then false else false ) )
    d202 : ( ( Set -> Set ) ∋ ( ( λ x2030 -> ( ( Set -> Set ) ∋ ( ( λ x2040 -> x2040 ) ) ) $ ( x2030 ) ) ) ) $ ( if false then Bool else Bool )
    d202 = if if true then false else true then if d174 then d164 else false else if false then d184 else d132
    d205 : ( ( Set -> Set ) ∋ ( ( λ x2070 -> if true then Bool else x2070 ) ) ) $ ( if true then Bool else Bool )
    d205 = ( M.M1'.d49 ) $ ( ( ( M.M1.d58 ) $ ( ( ( M.M1.d38 ) $ ( d109 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x2060 -> x2060 ) ) ) $ ( false ) ) )
    d208 : ( ( Set -> Set ) ∋ ( ( λ x2090 -> ( ( Set -> Set ) ∋ ( ( λ x2100 -> Bool ) ) ) $ ( x2090 ) ) ) ) $ ( if false then Bool else Bool )
    d208 = if if d181 then d126 else d157 then if d183 then true else d139 else if false then false else d183
    d211 : ( ( Set -> Set ) ∋ ( ( λ x2120 -> ( ( Set -> Set ) ∋ ( ( λ x2130 -> x2120 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d211 = if if d173 then d145 else false then if d139 then true else d107 else if false then d162 else d177
    d214 : if false then if true then Bool else Bool else if true then Bool else Bool
    d214 = ( ( Bool -> Bool ) ∋ ( ( λ x2150 -> if x2150 then x2150 else x2150 ) ) ) $ ( if true then true else d107 )
    d216 : if false then if false then Bool else Bool else if true then Bool else Bool
    d216 = if if d177 then d132 else d173 then if true then true else d164 else if d102 then false else true
    d217 : if true then if false then Bool else Bool else if true then Bool else Bool
    d217 = ( ( M.M1.d35 ) $ ( if d98 then d109 else true ) ) $ ( ( M.M1'.d33 ) $ ( ( ( M.M1.d73 ) $ ( d216 ) ) $ ( false ) ) )
    d218 : if false then if false then Bool else Bool else if false then Bool else Bool
    d218 = ( ( M.M1.d58 ) $ ( ( M.M1'.d95 ) $ ( ( ( M.M1.d72 ) $ ( true ) ) $ ( true ) ) ) ) $ ( if false then false else d186 )
    d219 : ( ( Set -> Set ) ∋ ( ( λ x2200 -> if true then x2200 else Bool ) ) ) $ ( if false then Bool else Bool )
    d219 = if if d107 then d123 else d194 then if d190 then d217 else true else if d177 then true else false
    d221 : if true then if true then Bool else Bool else if false then Bool else Bool
    d221 = ( ( Bool -> Bool ) ∋ ( ( λ x2220 -> if x2220 then d120 else x2220 ) ) ) $ ( if d181 then d162 else true )