module Decl450Test9  where
    import Decl450Base9
    open import Decl450Base9 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> true ) ) ) $ ( Decl450Base9.M.d103 ) ) ) ) $ ( if Decl450Base9.M.d670 then Decl450Base9.M.d1082 else Decl450Base9.M.d406 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> x9 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if d1 then d1 else x7 ) ) ) $ ( if true then Decl450Base9.M.d1125 else Decl450Base9.M.d1135 )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x13 ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> false ) ) ) $ ( false ) ) ) ) $ ( if Decl450Base9.M.d943 then Decl450Base9.M.d647 else true )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x17 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if Decl450Base9.M.d271 then Decl450Base9.M.d126 else true then if false then false else Decl450Base9.M.d194 else if true then d6 else d1
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = if if d15 then true else true then if d6 then false else d6 else if false then Decl450Base9.M.d615 else d1
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if false then Bool else Bool )
        d19 = if if Decl450Base9.M.d237 then Decl450Base9.M.d954 else d15 then if Decl450Base9.M.d770 then Decl450Base9.M.d855 else Decl450Base9.M.d1071 else if Decl450Base9.M.d38 then Decl450Base9.M.d436 else Decl450Base9.M.d1117
        d22 : if false then if false then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if Decl450Base9.M.d888 then Decl450Base9.M.d212 else x23 ) ) ) $ ( if d19 then Decl450Base9.M.d282 else true )
        d24 : if true then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> true ) ) ) $ ( Decl450Base9.M.d310 ) ) ) ) $ ( if Decl450Base9.M.d265 then d22 else false )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if true then Decl450Base9.M.d253 else Decl450Base9.M.d366 then if Decl450Base9.M.d114 then Decl450Base9.M.d579 else true else if true then Decl450Base9.M.d1111 else Decl450Base9.M.d231
        d28 : if true then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if Decl450Base9.M.d139 then d19 else Decl450Base9.M.d773 then if d22 then Decl450Base9.M.d935 else true else if Decl450Base9.M.d52 then Decl450Base9.M.d137 else true
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> if false then Bool else x30 ) ) ) $ ( if false then Bool else Bool )
        d29 = if if Decl450Base9.M.d1130 then Decl450Base9.M.d155 else Decl450Base9.M.d292 then if true then d15 else d18 else if false then d18 else Decl450Base9.M.d1000
        d31 : ( ( Set -> Set ) ∋ ( ( λ x34 -> ( ( Set -> Set ) ∋ ( ( λ x35 -> Bool ) ) ) $ ( x34 ) ) ) ) $ ( if false then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> Decl450Base9.M.d956 ) ) ) $ ( true ) ) ) ) $ ( if Decl450Base9.M.d378 then Decl450Base9.M.d470 else Decl450Base9.M.d190 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> Decl450Base9.M.d184 ) ) ) $ ( Decl450Base9.M.d364 ) ) ) ) $ ( if Decl450Base9.M.d764 then Decl450Base9.M.d753 else Decl450Base9.M.d776 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x42 -> ( ( Set -> Set ) ∋ ( ( λ x43 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if Decl450Base9.M.d1066 then x41 else Decl450Base9.M.d979 ) ) ) $ ( if true then Decl450Base9.M.d118 else Decl450Base9.M.d903 )
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = if if d40 then Decl450Base9.M.d404 else Decl450Base9.M.d94 then if Decl450Base9.M.d304 then Decl450Base9.M.d431 else Decl450Base9.M.d305 else if Decl450Base9.M.d497 then Decl450Base9.M.d630 else d15
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = if if Decl450Base9.M.d742 then d22 else Decl450Base9.M.d1111 then if d1 then true else Decl450Base9.M.d747 else if Decl450Base9.M.d431 then Decl450Base9.M.d250 else false
        d46 : if false then if true then Bool else Bool else if false then Bool else Bool
        d46 = ( ( Bool -> Bool ) ∋ ( ( λ x47 -> ( ( Bool -> Bool ) ∋ ( ( λ x48 -> Decl450Base9.M.d928 ) ) ) $ ( Decl450Base9.M.d148 ) ) ) ) $ ( if d28 then false else Decl450Base9.M.d52 )
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if Decl450Base9.M.d313 then d1 else Decl450Base9.M.d935 ) ) ) $ ( if Decl450Base9.M.d591 then d27 else d36 )
        d51 : if false then if true then Bool else Bool else if true then Bool else Bool
        d51 = if if true then Decl450Base9.M.d1146 else Decl450Base9.M.d1069 then if Decl450Base9.M.d850 then d24 else Decl450Base9.M.d222 else if false then Decl450Base9.M.d649 else Decl450Base9.M.d946
        d52 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( x54 ) ) ) ) $ ( if true then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> if Decl450Base9.M.d807 then false else true ) ) ) $ ( if Decl450Base9.M.d550 then true else Decl450Base9.M.d382 )
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d56 = if if true then true else true then if d18 then Decl450Base9.M.d832 else d36 else if d10 then Decl450Base9.M.d292 else Decl450Base9.M.d409
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( x60 ) ) ) ) $ ( if false then Bool else Bool )
        d59 = if if d49 then false else false then if false then Decl450Base9.M.d849 else false else if d15 then true else Decl450Base9.M.d2
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d62 = if if d1 then false else Decl450Base9.M.d465 then if false then Decl450Base9.M.d970 else Decl450Base9.M.d600 else if Decl450Base9.M.d970 then false else d22
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> d29 ) ) ) $ ( d49 ) ) ) ) $ ( if true then false else Decl450Base9.M.d1050 )
        d68 : if false then if false then Bool else Bool else if false then Bool else Bool
        d68 = if if d15 then Decl450Base9.M.d361 else d31 then if false then Decl450Base9.M.d35 else Decl450Base9.M.d406 else if d46 then Decl450Base9.M.d940 else d40
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d69 = if if true then d56 else Decl450Base9.M.d645 then if false then true else d52 else if d6 then true else Decl450Base9.M.d259
        d72 : if false then if true then Bool else Bool else if true then Bool else Bool
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if Decl450Base9.M.d488 then d22 else d46 ) ) ) $ ( if Decl450Base9.M.d287 then Decl450Base9.M.d521 else Decl450Base9.M.d256 )
        d74 : if false then if true then Bool else Bool else if true then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> Decl450Base9.M.d682 ) ) ) $ ( Decl450Base9.M.d823 ) ) ) ) $ ( if true then Decl450Base9.M.d1135 else d36 )
        d77 : if true then if true then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> if Decl450Base9.M.d693 then Decl450Base9.M.d8 else false ) ) ) $ ( if Decl450Base9.M.d811 then Decl450Base9.M.d712 else d28 )
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = if if Decl450Base9.M.d703 then Decl450Base9.M.d400 else Decl450Base9.M.d1056 then if Decl450Base9.M.d355 then Decl450Base9.M.d1100 else Decl450Base9.M.d423 else if Decl450Base9.M.d375 then false else d44
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> Bool ) ) ) $ ( x81 ) ) ) ) $ ( if false then Bool else Bool )
        d80 = if if true then true else d29 then if true then d10 else true else if Decl450Base9.M.d1139 then true else Decl450Base9.M.d194
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = if if Decl450Base9.M.d628 then true else d56 then if Decl450Base9.M.d834 then Decl450Base9.M.d665 else true else if d45 then Decl450Base9.M.d475 else d62
        d86 : if true then if true then Bool else Bool else if false then Bool else Bool
        d86 = if if Decl450Base9.M.d1056 then Decl450Base9.M.d1054 else Decl450Base9.M.d990 then if d49 then Decl450Base9.M.d55 else Decl450Base9.M.d1114 else if Decl450Base9.M.d827 then true else false
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x88 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if if false then Decl450Base9.M.d624 else d80 then if Decl450Base9.M.d1073 then true else Decl450Base9.M.d1130 else if d28 then true else Decl450Base9.M.d834
        d90 : if false then if true then Bool else Bool else if false then Bool else Bool
        d90 = if if d49 then Decl450Base9.M.d709 else Decl450Base9.M.d41 then if Decl450Base9.M.d41 then Decl450Base9.M.d880 else true else if d1 then Decl450Base9.M.d105 else Decl450Base9.M.d128
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( x92 ) ) ) ) $ ( if true then Bool else Bool )
        d91 = if if Decl450Base9.M.d417 then Decl450Base9.M.d645 else d79 then if false then Decl450Base9.M.d385 else Decl450Base9.M.d266 else if false then false else Decl450Base9.M.d918
        d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> Decl450Base9.M.d1149 ) ) ) $ ( true ) ) ) ) $ ( if Decl450Base9.M.d401 then false else true )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then Bool else x100 ) ) ) $ ( if true then Bool else Bool )
        d99 = if if d69 then false else Decl450Base9.M.d874 then if d59 then Decl450Base9.M.d703 else Decl450Base9.M.d275 else if Decl450Base9.M.d660 then true else Decl450Base9.M.d1127
        d101 : if false then if true then Bool else Bool else if true then Bool else Bool
        d101 = if if Decl450Base9.M.d197 then d79 else Decl450Base9.M.d125 then if d72 then true else Decl450Base9.M.d41 else if d19 then Decl450Base9.M.d731 else Decl450Base9.M.d349
        d102 : if false then if true then Bool else Bool else if false then Bool else Bool
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if Decl450Base9.M.d352 then Decl450Base9.M.d612 else x103 ) ) ) $ ( if Decl450Base9.M.d247 then d86 else Decl450Base9.M.d792 )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then x106 else x106 ) ) ) $ ( if false then Bool else Bool )
        d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> if x105 then x105 else Decl450Base9.M.d1024 ) ) ) $ ( if false then false else Decl450Base9.M.d420 )
        d107 : if false then if false then Bool else Bool else if true then Bool else Bool
        d107 = if if d29 then d77 else Decl450Base9.M.d1125 then if Decl450Base9.M.d972 then true else d52 else if Decl450Base9.M.d671 then false else d69
        d108 : if true then if false then Bool else Bool else if true then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> ( ( Bool -> Bool ) ∋ ( ( λ x110 -> true ) ) ) $ ( x109 ) ) ) ) $ ( if true then Decl450Base9.M.d439 else d99 )
        d111 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( x113 ) ) ) ) $ ( if true then Bool else Bool )
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if Decl450Base9.M.d1002 then d68 else true ) ) ) $ ( if Decl450Base9.M.d280 then Decl450Base9.M.d663 else d108 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x116 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d115 = if if Decl450Base9.M.d556 then true else Decl450Base9.M.d1063 then if Decl450Base9.M.d909 then d90 else d107 else if Decl450Base9.M.d789 then Decl450Base9.M.d131 else true
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if false then x119 else x119 ) ) ) $ ( if false then Bool else Bool )
        d118 = if if d111 then true else false then if d107 then false else d111 else if false then d22 else Decl450Base9.M.d44
        d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if false then x122 else Bool ) ) ) $ ( if true then Bool else Bool )
        d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> if Decl450Base9.M.d1002 then Decl450Base9.M.d181 else d80 ) ) ) $ ( if Decl450Base9.M.d1049 then Decl450Base9.M.d103 else false )
        d123 : if false then if false then Bool else Bool else if false then Bool else Bool
        d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if Decl450Base9.M.d100 then x124 else x124 ) ) ) $ ( if Decl450Base9.M.d687 then d120 else Decl450Base9.M.d922 )
        d125 : if false then if true then Bool else Bool else if true then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> d45 ) ) ) $ ( x126 ) ) ) ) $ ( if Decl450Base9.M.d233 then Decl450Base9.M.d266 else true )
        d128 : if false then if false then Bool else Bool else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> d77 ) ) ) $ ( Decl450Base9.M.d139 ) ) ) ) $ ( if false then Decl450Base9.M.d1063 else Decl450Base9.M.d578 )