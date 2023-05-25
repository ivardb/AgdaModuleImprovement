module Decls50Test10  where
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

    module M  where
        d1 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then x50 else Bool ) ) ) $ ( x50 ) ) ) ) $ ( if true then Bool else Bool )
        d1 = if ( ( Bool -> Bool ) ∋ ( ( λ x20 -> x20 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x30 -> x30 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x40 -> false ) ) ) $ ( false )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> if false then Bool else x100 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d1 then x90 else d1 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then d1 else true )
        d12 : if true then ( ( Set -> Set ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d12 = if ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x150 -> false ) ) ) $ ( true )
        d17 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( Bool )
        d17 = if if true then false else true then if false then false else d1 else if true then d7 else d12
        d19 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if false then x210 else x210 ) ) ) $ ( if false then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> if d1 then d12 else d17 ) ) ) $ ( if d12 then false else d7 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x260 -> if false then Bool else x260 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d22 = if ( ( Bool -> Bool ) ∋ ( ( λ x230 -> false ) ) ) $ ( d17 ) then ( ( Bool -> Bool ) ∋ ( ( λ x240 -> false ) ) ) $ ( false ) else if true then false else d1
        d27 : ( ( Set -> Set ) ∋ ( ( λ x300 -> if false then x300 else Bool ) ) ) $ ( if true then Bool else Bool )
        d27 = if if true then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x280 -> x280 ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x290 -> d22 ) ) ) $ ( true )
        d31 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if true then x340 else x340 ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x320 -> ( ( Bool -> Bool ) ∋ ( ( λ x330 -> if true then x330 else d12 ) ) ) $ ( false ) ) ) ) $ ( if true then false else d19 )
        d35 : if false then ( ( Set -> Set ) ∋ ( ( λ x370 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x380 -> x380 ) ) ) $ ( Bool )
        d35 = if ( ( Bool -> Bool ) ∋ ( ( λ x360 -> true ) ) ) $ ( d17 ) then if false then true else true else if false then true else d27
        d39 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x420 -> x420 ) ) ) $ ( Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x400 -> ( ( Bool -> Bool ) ∋ ( ( λ x410 -> if d1 then true else true ) ) ) $ ( true ) ) ) ) $ ( if d17 then d7 else d35 )
        d43 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x450 -> x450 ) ) ) $ ( Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x440 -> if d39 then false else d19 ) ) ) $ ( if true then d7 else d22 )
        d46 : if false then ( ( Set -> Set ) ∋ ( ( λ x490 -> x490 ) ) ) $ ( Bool ) else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x470 -> ( ( Bool -> Bool ) ∋ ( ( λ x480 -> if x470 then d39 else d1 ) ) ) $ ( x470 ) ) ) ) $ ( if true then d19 else false )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x510 -> if true then x510 else Bool ) ) ) $ ( if true then Bool else Bool )
        d50 = if if d35 then d46 else d17 then if true then true else true else if true then true else false
        d52 : if false then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x560 -> x560 ) ) ) $ ( Bool )
        d52 = if ( ( Bool -> Bool ) ∋ ( ( λ x530 -> true ) ) ) $ ( d43 ) then ( ( Bool -> Bool ) ∋ ( ( λ x540 -> x540 ) ) ) $ ( d31 ) else ( ( Bool -> Bool ) ∋ ( ( λ x550 -> d7 ) ) ) $ ( true )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x590 -> if false then x590 else Bool ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> if d39 then true else x580 ) ) ) $ ( if d19 then d22 else d46 )
        d60 : if true then ( ( Set -> Set ) ∋ ( ( λ x640 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( Bool )
        d60 = if ( ( Bool -> Bool ) ∋ ( ( λ x610 -> x610 ) ) ) $ ( d39 ) then ( ( Bool -> Bool ) ∋ ( ( λ x620 -> x620 ) ) ) $ ( d57 ) else ( ( Bool -> Bool ) ∋ ( ( λ x630 -> x630 ) ) ) $ ( d50 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x680 -> if false then x680 else Bool ) ) ) $ ( if false then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x670 -> if x670 then d35 else d17 ) ) ) $ ( if true then false else d1 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if false then x700 else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = if if d31 then d52 else false then if d31 then false else true else if false then d1 else true
        d71 : if true then if false then Bool else Bool else if false then Bool else Bool
        d71 = if if d52 then true else true then ( ( Bool -> Bool ) ∋ ( ( λ x720 -> d27 ) ) ) $ ( d1 ) else ( ( Bool -> Bool ) ∋ ( ( λ x730 -> d35 ) ) ) $ ( false )
        d74 : if false then ( ( Set -> Set ) ∋ ( ( λ x770 -> x770 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x780 -> Bool ) ) ) $ ( Bool )
        d74 = if ( ( Bool -> Bool ) ∋ ( ( λ x750 -> d17 ) ) ) $ ( false ) then ( ( Bool -> Bool ) ∋ ( ( λ x760 -> d57 ) ) ) $ ( d46 ) else if d43 then d35 else d46
        d79 : if false then ( ( Set -> Set ) ∋ ( ( λ x810 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x800 -> if d66 then x800 else d1 ) ) ) $ ( if d7 then false else true )
        d82 : if false then ( ( Set -> Set ) ∋ ( ( λ x840 -> Bool ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x850 -> x850 ) ) ) $ ( Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x830 -> if d74 then x830 else x830 ) ) ) $ ( if d35 then true else false )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if false then Bool else x890 ) ) ) $ ( if true then Bool else Bool )
        d86 = if if false then false else false then ( ( Bool -> Bool ) ∋ ( ( λ x870 -> x870 ) ) ) $ ( false ) else ( ( Bool -> Bool ) ∋ ( ( λ x880 -> false ) ) ) $ ( d7 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x910 -> if false then x910 else x910 ) ) ) $ ( if false then Bool else Bool )
        d90 = if if false then d60 else d46 then if d35 then d50 else true else if true then d39 else d31
        d92 : ( ( Set -> Set ) ∋ ( ( λ x950 -> ( ( Set -> Set ) ∋ ( ( λ x960 -> if false then x950 else x960 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> ( ( Bool -> Bool ) ∋ ( ( λ x940 -> if x940 then d31 else d35 ) ) ) $ ( d7 ) ) ) ) $ ( if true then d39 else d86 )
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x980 -> ( ( Bool -> Bool ) ∋ ( ( λ x990 -> if x980 then d90 else x980 ) ) ) $ ( false ) ) ) ) $ ( if d35 then true else d74 )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x1020 -> if true then x1020 else Bool ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if false then false else true ) ) ) $ ( if true then d86 else true )
        d103 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1060 -> Bool ) ) ) $ ( Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> ( ( Bool -> Bool ) ∋ ( ( λ x1050 -> if x1050 then x1040 else d19 ) ) ) $ ( false ) ) ) ) $ ( if d1 then true else true )
        d107 : if true then ( ( Set -> Set ) ∋ ( ( λ x1100 -> x1100 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x1080 -> ( ( Bool -> Bool ) ∋ ( ( λ x1090 -> if x1080 then d97 else x1080 ) ) ) $ ( x1080 ) ) ) ) $ ( if false then true else d7 )
        d111 : if true then ( ( Set -> Set ) ∋ ( ( λ x1150 -> Bool ) ) ) $ ( Bool ) else if false then Bool else Bool
        d111 = if ( ( Bool -> Bool ) ∋ ( ( λ x1120 -> false ) ) ) $ ( d90 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1130 -> true ) ) ) $ ( true ) else ( ( Bool -> Bool ) ∋ ( ( λ x1140 -> d39 ) ) ) $ ( true )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x1190 -> ( ( Set -> Set ) ∋ ( ( λ x1200 -> if false then x1190 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d116 = if ( ( Bool -> Bool ) ∋ ( ( λ x1170 -> x1170 ) ) ) $ ( d17 ) then ( ( Bool -> Bool ) ∋ ( ( λ x1180 -> x1180 ) ) ) $ ( false ) else if d39 then true else d31
        d121 : if false then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1240 -> x1240 ) ) ) $ ( Bool )
        d121 = if ( ( Bool -> Bool ) ∋ ( ( λ x1220 -> d27 ) ) ) $ ( false ) then if false then false else true else ( ( Bool -> Bool ) ∋ ( ( λ x1230 -> false ) ) ) $ ( d103 )
        d125 : ( ( Set -> Set ) ∋ ( ( λ x1280 -> ( ( Set -> Set ) ∋ ( ( λ x1290 -> if false then Bool else Bool ) ) ) $ ( x1280 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = if if false then d116 else false then ( ( Bool -> Bool ) ∋ ( ( λ x1260 -> true ) ) ) $ ( d22 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1270 -> x1270 ) ) ) $ ( d12 )
        d130 : if false then ( ( Set -> Set ) ∋ ( ( λ x1330 -> x1330 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1340 -> Bool ) ) ) $ ( Bool )
        d130 = ( ( Bool -> Bool ) ∋ ( ( λ x1310 -> ( ( Bool -> Bool ) ∋ ( ( λ x1320 -> if d46 then d17 else d22 ) ) ) $ ( d17 ) ) ) ) $ ( if d103 then false else true )
        d135 : if true then ( ( Set -> Set ) ∋ ( ( λ x1370 -> Bool ) ) ) $ ( Bool ) else if true then Bool else Bool
        d135 = ( ( Bool -> Bool ) ∋ ( ( λ x1360 -> if true then x1360 else d116 ) ) ) $ ( if d79 then d57 else d7 )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x1410 -> if true then Bool else x1410 ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x1390 -> ( ( Bool -> Bool ) ∋ ( ( λ x1400 -> if d60 then true else false ) ) ) $ ( x1390 ) ) ) ) $ ( if d79 then true else d69 )
        d142 : if true then if true then Bool else Bool else if false then Bool else Bool
        d142 = ( ( Bool -> Bool ) ∋ ( ( λ x1430 -> if d22 then false else false ) ) ) $ ( if d52 then d66 else true )
        d144 : ( ( Set -> Set ) ∋ ( ( λ x1460 -> if false then Bool else x1460 ) ) ) $ ( if false then Bool else Bool )
        d144 = ( ( Bool -> Bool ) ∋ ( ( λ x1450 -> if x1450 then x1450 else x1450 ) ) ) $ ( if true then d74 else d46 )
        d147 : ( ( Set -> Set ) ∋ ( ( λ x1500 -> if true then x1500 else x1500 ) ) ) $ ( if false then Bool else Bool )
        d147 = if ( ( Bool -> Bool ) ∋ ( ( λ x1480 -> true ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1490 -> d135 ) ) ) $ ( d82 ) else if d121 then d82 else d22
        d151 : ( ( Set -> Set ) ∋ ( ( λ x1530 -> if true then Bool else x1530 ) ) ) $ ( if true then Bool else Bool )
        d151 = if ( ( Bool -> Bool ) ∋ ( ( λ x1520 -> x1520 ) ) ) $ ( true ) then if d31 then true else d142 else if d86 then d142 else false
        d154 : ( ( Set -> Set ) ∋ ( ( λ x1560 -> ( ( Set -> Set ) ∋ ( ( λ x1570 -> if false then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x1550 -> if d103 then x1550 else x1550 ) ) ) $ ( if d79 then d52 else d97 )
        d158 : ( ( Set -> Set ) ∋ ( ( λ x1610 -> ( ( Set -> Set ) ∋ ( ( λ x1620 -> if true then Bool else Bool ) ) ) $ ( x1610 ) ) ) ) $ ( if true then Bool else Bool )
        d158 = if ( ( Bool -> Bool ) ∋ ( ( λ x1590 -> false ) ) ) $ ( d12 ) then if d135 then true else true else ( ( Bool -> Bool ) ∋ ( ( λ x1600 -> x1600 ) ) ) $ ( d107 )
        d163 : if false then if true then Bool else Bool else if true then Bool else Bool
        d163 = if ( ( Bool -> Bool ) ∋ ( ( λ x1640 -> false ) ) ) $ ( true ) then ( ( Bool -> Bool ) ∋ ( ( λ x1650 -> false ) ) ) $ ( d79 ) else ( ( Bool -> Bool ) ∋ ( ( λ x1660 -> false ) ) ) $ ( false )
        d167 : if false then ( ( Set -> Set ) ∋ ( ( λ x1700 -> x1700 ) ) ) $ ( Bool ) else if true then Bool else Bool
        d167 = ( ( Bool -> Bool ) ∋ ( ( λ x1680 -> ( ( Bool -> Bool ) ∋ ( ( λ x1690 -> if d92 then x1690 else x1680 ) ) ) $ ( x1680 ) ) ) ) $ ( if false then d151 else d12 )
        d171 : ( ( Set -> Set ) ∋ ( ( λ x1730 -> if false then x1730 else Bool ) ) ) $ ( if true then Bool else Bool )
        d171 = if ( ( Bool -> Bool ) ∋ ( ( λ x1720 -> true ) ) ) $ ( true ) then if d158 then d12 else d43 else if false then false else d125
        d174 : if true then if true then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x1760 -> Bool ) ) ) $ ( Bool )
        d174 = if ( ( Bool -> Bool ) ∋ ( ( λ x1750 -> d138 ) ) ) $ ( false ) then if false then d19 else d144 else if false then d79 else false
        d177 : ( ( Set -> Set ) ∋ ( ( λ x1790 -> if true then x1790 else Bool ) ) ) $ ( if true then Bool else Bool )
        d177 = ( ( Bool -> Bool ) ∋ ( ( λ x1780 -> if x1780 then x1780 else d92 ) ) ) $ ( if d82 then d158 else d79 )
        d180 : ( ( Set -> Set ) ∋ ( ( λ x1820 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d180 = ( ( Bool -> Bool ) ∋ ( ( λ x1810 -> if d125 then d69 else d1 ) ) ) $ ( if true then d92 else true )
        d183 : ( ( Set -> Set ) ∋ ( ( λ x1850 -> ( ( Set -> Set ) ∋ ( ( λ x1860 -> if true then x1850 else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d183 = ( ( Bool -> Bool ) ∋ ( ( λ x1840 -> if x1840 then true else x1840 ) ) ) $ ( if true then true else d151 )
        d187 : if false then ( ( Set -> Set ) ∋ ( ( λ x1890 -> x1890 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x1900 -> Bool ) ) ) $ ( Bool )
        d187 = ( ( Bool -> Bool ) ∋ ( ( λ x1880 -> if true then d177 else true ) ) ) $ ( if false then false else d103 )