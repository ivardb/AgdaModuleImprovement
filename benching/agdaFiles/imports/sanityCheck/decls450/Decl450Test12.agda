module Decl450Test12  where
    import Decl450Base12
    open import Decl450Base12 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else x4 ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( true ) ) ) ) $ ( if Decl450Base12.M.d705 then Decl450Base12.M.d531 else true )
        d5 : if false then if false then Bool else Bool else if true then Bool else Bool
        d5 = if if Decl450Base12.M.d717 then false else d1 then if true then true else Decl450Base12.M.d874 else if Decl450Base12.M.d405 then Decl450Base12.M.d874 else false
        d6 : if false then if true then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d1 then Decl450Base12.M.d922 else d5 ) ) ) $ ( if Decl450Base12.M.d192 then Decl450Base12.M.d652 else Decl450Base12.M.d962 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if false then Bool else x11 ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> Decl450Base12.M.d184 ) ) ) $ ( Decl450Base12.M.d968 ) ) ) ) $ ( if Decl450Base12.M.d1 then d5 else Decl450Base12.M.d396 )
        d12 : if false then if true then Bool else Bool else if true then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if Decl450Base12.M.d83 then d8 else x13 ) ) ) $ ( if Decl450Base12.M.d539 then d8 else true )
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if d1 then true else Decl450Base12.M.d955 then if Decl450Base12.M.d897 then d5 else d8 else if true then true else false
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if d8 then d6 else x16 ) ) ) $ ( if d1 then Decl450Base12.M.d842 else Decl450Base12.M.d442 )
        d17 : if true then if true then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if Decl450Base12.M.d625 then true else Decl450Base12.M.d174 ) ) ) $ ( if Decl450Base12.M.d274 then Decl450Base12.M.d566 else d15 )
        d19 : if true then if false then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> Decl450Base12.M.d633 ) ) ) $ ( x20 ) ) ) ) $ ( if d17 then Decl450Base12.M.d696 else Decl450Base12.M.d789 )
        d22 : if true then if false then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d1 ) ) ) $ ( d12 ) ) ) ) $ ( if Decl450Base12.M.d1038 then Decl450Base12.M.d590 else Decl450Base12.M.d919 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> x27 ) ) ) $ ( x26 ) ) ) ) $ ( if false then Bool else Bool )
        d25 = if if d14 then d19 else d1 then if true then Decl450Base12.M.d256 else Decl450Base12.M.d845 else if d14 then Decl450Base12.M.d336 else d15
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if false then d6 else Decl450Base12.M.d690 then if Decl450Base12.M.d323 then Decl450Base12.M.d909 else Decl450Base12.M.d136 else if Decl450Base12.M.d165 then d5 else Decl450Base12.M.d385
        d29 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x32 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> ( ( Bool -> Bool ) ∋ ( ( λ x31 -> Decl450Base12.M.d462 ) ) ) $ ( d1 ) ) ) ) $ ( if d8 then d14 else Decl450Base12.M.d1002 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> if false then x37 else Bool ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> x35 ) ) ) $ ( Decl450Base12.M.d1001 ) ) ) ) $ ( if Decl450Base12.M.d673 then Decl450Base12.M.d147 else true )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then Bool else x39 ) ) ) $ ( if true then Bool else Bool )
        d38 = if if Decl450Base12.M.d222 then d12 else Decl450Base12.M.d102 then if Decl450Base12.M.d1001 then Decl450Base12.M.d190 else Decl450Base12.M.d874 else if Decl450Base12.M.d729 then Decl450Base12.M.d336 else d25
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if d8 then Decl450Base12.M.d138 else Decl450Base12.M.d826 ) ) ) $ ( if Decl450Base12.M.d545 then d19 else Decl450Base12.M.d997 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if d22 then x43 else Decl450Base12.M.d458 ) ) ) $ ( if d15 then true else true )
        d45 : if true then if true then Bool else Bool else if true then Bool else Bool
        d45 = if if false then d15 else Decl450Base12.M.d815 then if d8 then false else true else if d42 then d15 else Decl450Base12.M.d906
        d46 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> Decl450Base12.M.d192 ) ) ) $ ( x47 ) ) ) ) $ ( if true then false else Decl450Base12.M.d269 )
        d51 : if false then if true then Bool else Bool else if false then Bool else Bool
        d51 = if if d42 then Decl450Base12.M.d151 else Decl450Base12.M.d12 then if Decl450Base12.M.d218 then true else Decl450Base12.M.d1031 else if d19 then Decl450Base12.M.d250 else Decl450Base12.M.d825
        d52 : if true then if false then Bool else Bool else if true then Bool else Bool
        d52 = if if Decl450Base12.M.d901 then d45 else d38 then if Decl450Base12.M.d1049 then d29 else d14 else if true then Decl450Base12.M.d610 else false
        d53 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if x54 then d15 else x54 ) ) ) $ ( if Decl450Base12.M.d642 then d38 else Decl450Base12.M.d856 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if false then x59 else x59 ) ) ) $ ( if false then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d12 ) ) ) $ ( x57 ) ) ) ) $ ( if Decl450Base12.M.d610 then Decl450Base12.M.d926 else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d60 = if if d38 then Decl450Base12.M.d250 else false then if Decl450Base12.M.d810 then Decl450Base12.M.d811 else Decl450Base12.M.d120 else if Decl450Base12.M.d81 then false else d42
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> true ) ) ) $ ( Decl450Base12.M.d39 ) ) ) ) $ ( if Decl450Base12.M.d331 then Decl450Base12.M.d117 else true )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then Bool else x68 ) ) ) $ ( if true then Bool else Bool )
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> if d22 then Decl450Base12.M.d856 else d34 ) ) ) $ ( if d56 then Decl450Base12.M.d574 else Decl450Base12.M.d1031 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then x70 else x70 ) ) ) $ ( if true then Bool else Bool )
        d69 = if if Decl450Base12.M.d800 then Decl450Base12.M.d821 else false then if d6 then d14 else true else if d28 then Decl450Base12.M.d72 else d63
        d71 : if false then if false then Bool else Bool else if false then Bool else Bool
        d71 = if if Decl450Base12.M.d308 then Decl450Base12.M.d25 else Decl450Base12.M.d851 then if false then Decl450Base12.M.d305 else Decl450Base12.M.d1043 else if Decl450Base12.M.d1059 then d29 else d51
        d72 : if true then if false then Bool else Bool else if true then Bool else Bool
        d72 = if if d12 then d14 else Decl450Base12.M.d199 then if Decl450Base12.M.d98 then Decl450Base12.M.d6 else Decl450Base12.M.d117 else if true then false else d63
        d73 : ( ( Set -> Set ) ∋ ( ( λ x75 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if false then true else d60 ) ) ) $ ( if Decl450Base12.M.d330 then Decl450Base12.M.d428 else Decl450Base12.M.d800 )
        d76 : if false then if true then Bool else Bool else if false then Bool else Bool
        d76 = if if d40 then Decl450Base12.M.d891 else d25 then if d40 then Decl450Base12.M.d506 else Decl450Base12.M.d488 else if Decl450Base12.M.d811 then Decl450Base12.M.d614 else Decl450Base12.M.d808
        d77 : if true then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if false then false else d42 ) ) ) $ ( if d46 then Decl450Base12.M.d913 else Decl450Base12.M.d993 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if d72 then false else true then if Decl450Base12.M.d101 then false else Decl450Base12.M.d620 else if Decl450Base12.M.d962 then d53 else Decl450Base12.M.d492
        d82 : if true then if true then Bool else Bool else if false then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if Decl450Base12.M.d1046 then Decl450Base12.M.d856 else x83 ) ) ) $ ( if Decl450Base12.M.d241 then Decl450Base12.M.d1046 else d19 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( x85 ) ) ) ) $ ( if true then Bool else Bool )
        d84 = if if d12 then true else Decl450Base12.M.d505 then if true then d46 else Decl450Base12.M.d93 else if Decl450Base12.M.d88 then d45 else false
        d87 : if false then if true then Bool else Bool else if true then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> x88 ) ) ) $ ( Decl450Base12.M.d317 ) ) ) ) $ ( if d53 then d34 else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d90 = if if Decl450Base12.M.d894 then true else false then if Decl450Base12.M.d706 then Decl450Base12.M.d77 else Decl450Base12.M.d962 else if Decl450Base12.M.d304 then true else true
        d93 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d93 = ( ( Bool -> Bool ) ∋ ( ( λ x94 -> if d15 then Decl450Base12.M.d155 else true ) ) ) $ ( if Decl450Base12.M.d560 then Decl450Base12.M.d349 else Decl450Base12.M.d341 )
        d96 : if false then if false then Bool else Bool else if true then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> ( ( Bool -> Bool ) ∋ ( ( λ x98 -> Decl450Base12.M.d345 ) ) ) $ ( false ) ) ) ) $ ( if true then Decl450Base12.M.d1052 else Decl450Base12.M.d200 )
        d99 : if false then if true then Bool else Bool else if true then Bool else Bool
        d99 = if if true then d66 else true then if Decl450Base12.M.d231 then Decl450Base12.M.d998 else d42 else if d69 then Decl450Base12.M.d185 else false
        d100 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if false then x102 else Bool ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> if d45 then Decl450Base12.M.d887 else Decl450Base12.M.d506 ) ) ) $ ( if false then Decl450Base12.M.d69 else Decl450Base12.M.d738 )
        d103 : if true then if true then Bool else Bool else if true then Bool else Bool
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> ( ( Bool -> Bool ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( Decl450Base12.M.d266 ) ) ) ) $ ( if d77 then Decl450Base12.M.d842 else d72 )
        d106 : ( ( Set -> Set ) ∋ ( ( λ x109 -> ( ( Set -> Set ) ∋ ( ( λ x110 -> Bool ) ) ) $ ( x109 ) ) ) ) $ ( if false then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( x107 ) ) ) ) $ ( if d52 then Decl450Base12.M.d583 else Decl450Base12.M.d256 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x112 ) ) ) $ ( x112 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = if if Decl450Base12.M.d48 then true else Decl450Base12.M.d424 then if Decl450Base12.M.d517 then d6 else Decl450Base12.M.d1019 else if d82 then Decl450Base12.M.d280 else false
        d114 : if false then if true then Bool else Bool else if true then Bool else Bool
        d114 = ( ( Bool -> Bool ) ∋ ( ( λ x115 -> if false then false else x115 ) ) ) $ ( if true then true else d42 )
        d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
        d116 = if if false then d45 else d111 then if Decl450Base12.M.d594 then Decl450Base12.M.d499 else Decl450Base12.M.d465 else if Decl450Base12.M.d462 then Decl450Base12.M.d180 else Decl450Base12.M.d468
        d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> if Decl450Base12.M.d222 then Decl450Base12.M.d685 else d90 ) ) ) $ ( if Decl450Base12.M.d265 then true else false )
        d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d123 = if if Decl450Base12.M.d881 then true else true then if true then true else Decl450Base12.M.d15 else if Decl450Base12.M.d274 then d103 else Decl450Base12.M.d789
        d126 : if false then if false then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> true ) ) ) $ ( d38 ) ) ) ) $ ( if Decl450Base12.M.d81 then d69 else false )
        d129 : if true then if true then Bool else Bool else if true then Bool else Bool
        d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if d79 then Decl450Base12.M.d263 else Decl450Base12.M.d901 ) ) ) $ ( if Decl450Base12.M.d902 then Decl450Base12.M.d339 else true )