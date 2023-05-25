module Decl450Test3  where
    import Decl450Base3
    open import Decl450Base3 using (Bool; true; false; ⊤; tt) public
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
        d1 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> if Decl450Base3.M.d845 then Decl450Base3.M.d57 else false ) ) ) $ ( if false then Decl450Base3.M.d1024 else Decl450Base3.M.d546 )
        d4 : if true then if false then Bool else Bool else if true then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if x5 then Decl450Base3.M.d330 else d1 ) ) ) $ ( if d1 then false else Decl450Base3.M.d432 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else x7 ) ) ) $ ( if false then Bool else Bool )
        d6 = if if d4 then Decl450Base3.M.d1014 else true then if Decl450Base3.M.d363 then Decl450Base3.M.d875 else Decl450Base3.M.d506 else if Decl450Base3.M.d893 then Decl450Base3.M.d140 else Decl450Base3.M.d493
        d8 : if true then if true then Bool else Bool else if true then Bool else Bool
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> ( ( Bool -> Bool ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( Decl450Base3.M.d129 ) ) ) ) $ ( if d4 then Decl450Base3.M.d718 else Decl450Base3.M.d1078 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x14 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> ( ( Bool -> Bool ) ∋ ( ( λ x13 -> Decl450Base3.M.d1060 ) ) ) $ ( Decl450Base3.M.d54 ) ) ) ) $ ( if Decl450Base3.M.d1089 then Decl450Base3.M.d744 else d1 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> if false then x16 else Bool ) ) ) $ ( if false then Bool else Bool )
        d15 = if if Decl450Base3.M.d916 then Decl450Base3.M.d331 else d4 then if Decl450Base3.M.d1102 then false else Decl450Base3.M.d1128 else if Decl450Base3.M.d232 then d11 else true
        d17 : if false then if false then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> Decl450Base3.M.d33 ) ) ) $ ( Decl450Base3.M.d762 ) ) ) ) $ ( if Decl450Base3.M.d597 then d8 else d8 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( x21 ) ) ) ) $ ( if false then Bool else Bool )
        d20 = if if true then d1 else d17 then if Decl450Base3.M.d1089 then Decl450Base3.M.d102 else Decl450Base3.M.d1122 else if Decl450Base3.M.d1006 then d8 else true
        d23 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then x26 else x26 ) ) ) $ ( if true then Bool else Bool )
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> ( ( Bool -> Bool ) ∋ ( ( λ x25 -> Decl450Base3.M.d845 ) ) ) $ ( true ) ) ) ) $ ( if d20 then d17 else Decl450Base3.M.d958 )
        d27 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d27 = if if false then true else Decl450Base3.M.d506 then if Decl450Base3.M.d117 then Decl450Base3.M.d887 else false else if d4 then Decl450Base3.M.d1054 else Decl450Base3.M.d66
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if false then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> Decl450Base3.M.d293 ) ) ) $ ( x31 ) ) ) ) $ ( if d11 then d6 else d27 )
        d35 : if false then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if false then false else Decl450Base3.M.d877 ) ) ) $ ( if false then true else d30 )
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if d11 then Decl450Base3.M.d868 else false then if false then true else true else if Decl450Base3.M.d773 then Decl450Base3.M.d820 else false
        d38 : if false then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if Decl450Base3.M.d261 then Decl450Base3.M.d970 else Decl450Base3.M.d381 then if d1 then Decl450Base3.M.d262 else Decl450Base3.M.d91 else if Decl450Base3.M.d781 then Decl450Base3.M.d307 else Decl450Base3.M.d402
        d39 : if false then if false then Bool else Bool else if false then Bool else Bool
        d39 = if if false then d27 else d8 then if Decl450Base3.M.d672 then Decl450Base3.M.d33 else Decl450Base3.M.d464 else if d37 then Decl450Base3.M.d9 else Decl450Base3.M.d989
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x43 ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> x41 ) ) ) $ ( true ) ) ) ) $ ( if Decl450Base3.M.d875 then d30 else Decl450Base3.M.d91 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( x46 ) ) ) ) $ ( if false then Bool else Bool )
        d45 = if if d11 then Decl450Base3.M.d914 else d1 then if d23 then Decl450Base3.M.d1128 else Decl450Base3.M.d753 else if Decl450Base3.M.d812 then true else d1
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if true then x49 else x49 ) ) ) $ ( if true then Bool else Bool )
        d48 = if if d23 then d17 else Decl450Base3.M.d773 then if Decl450Base3.M.d366 then d4 else Decl450Base3.M.d650 else if false then Decl450Base3.M.d184 else d40
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> true ) ) ) $ ( Decl450Base3.M.d1128 ) ) ) ) $ ( if d30 then d45 else d6 )
        d55 : if true then if false then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> Decl450Base3.M.d80 ) ) ) $ ( x56 ) ) ) ) $ ( if Decl450Base3.M.d1008 then d38 else Decl450Base3.M.d697 )
        d58 : if true then if true then Bool else Bool else if true then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if Decl450Base3.M.d562 then Decl450Base3.M.d386 else Decl450Base3.M.d730 ) ) ) $ ( if Decl450Base3.M.d462 then d55 else d17 )
        d60 : if true then if false then Bool else Bool else if false then Bool else Bool
        d60 = if if Decl450Base3.M.d493 then Decl450Base3.M.d77 else true then if false then Decl450Base3.M.d334 else Decl450Base3.M.d511 else if Decl450Base3.M.d475 then Decl450Base3.M.d914 else d45
        d61 : if false then if true then Bool else Bool else if true then Bool else Bool
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if false then d8 else true ) ) ) $ ( if Decl450Base3.M.d1116 then Decl450Base3.M.d544 else Decl450Base3.M.d749 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d63 = if if false then d15 else d61 then if d30 then Decl450Base3.M.d123 else d11 else if d40 then Decl450Base3.M.d1018 else Decl450Base3.M.d369
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( x67 ) ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if x66 then true else d6 ) ) ) $ ( if Decl450Base3.M.d462 then d17 else false )
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = if if Decl450Base3.M.d329 then false else Decl450Base3.M.d908 then if d6 then Decl450Base3.M.d71 else d1 else if Decl450Base3.M.d54 then d6 else Decl450Base3.M.d378
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then Bool else x73 ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> x71 ) ) ) $ ( true ) ) ) ) $ ( if d40 then Decl450Base3.M.d1029 else Decl450Base3.M.d746 )
        d74 : ( ( Set -> Set ) ∋ ( ( λ x77 -> if false then x77 else Bool ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d1 ) ) ) $ ( Decl450Base3.M.d1064 ) ) ) ) $ ( if Decl450Base3.M.d704 then Decl450Base3.M.d1060 else d20 )
        d78 : if true then if true then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d20 then x79 else x79 ) ) ) $ ( if d23 then Decl450Base3.M.d1026 else Decl450Base3.M.d75 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then Bool else x82 ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if Decl450Base3.M.d535 then x81 else d70 ) ) ) $ ( if true then true else Decl450Base3.M.d1072 )
        d83 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if Decl450Base3.M.d718 then Decl450Base3.M.d780 else true ) ) ) $ ( if d20 then Decl450Base3.M.d879 else d50 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x89 ) ) ) $ ( x89 ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if d65 then d23 else Decl450Base3.M.d214 ) ) ) $ ( if false then d40 else Decl450Base3.M.d868 )
        d91 : if true then if true then Bool else Bool else if false then Bool else Bool
        d91 = if if Decl450Base3.M.d707 then Decl450Base3.M.d691 else Decl450Base3.M.d781 then if true then Decl450Base3.M.d637 else Decl450Base3.M.d1100 else if d45 then false else d45
        d92 : if false then if false then Bool else Bool else if false then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if false then Decl450Base3.M.d1029 else Decl450Base3.M.d790 ) ) ) $ ( if true then d40 else Decl450Base3.M.d605 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then x95 else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = if if Decl450Base3.M.d667 then Decl450Base3.M.d425 else Decl450Base3.M.d697 then if Decl450Base3.M.d802 then d74 else true else if Decl450Base3.M.d788 then Decl450Base3.M.d164 else Decl450Base3.M.d162
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if true then true else d30 then if Decl450Base3.M.d883 then false else Decl450Base3.M.d7 else if false then d58 else d80
        d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> if false then x98 else Bool ) ) ) $ ( if false then Bool else Bool )
        d97 = if if Decl450Base3.M.d1118 then d61 else true then if true then Decl450Base3.M.d147 else d23 else if Decl450Base3.M.d1060 then false else Decl450Base3.M.d236
        d99 : if true then if false then Bool else Bool else if true then Bool else Bool
        d99 = if if Decl450Base3.M.d488 then Decl450Base3.M.d558 else Decl450Base3.M.d261 then if Decl450Base3.M.d153 then true else d63 else if false then d11 else false
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> Decl450Base3.M.d235 ) ) ) $ ( Decl450Base3.M.d133 ) ) ) ) $ ( if Decl450Base3.M.d1072 then Decl450Base3.M.d504 else false )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else x105 ) ) ) $ ( if false then Bool else Bool )
        d104 = if if Decl450Base3.M.d153 then d96 else Decl450Base3.M.d239 then if true then Decl450Base3.M.d432 else d97 else if false then false else true
        d106 : if false then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if Decl450Base3.M.d605 then false else true then if Decl450Base3.M.d970 then Decl450Base3.M.d1022 else Decl450Base3.M.d873 else if d63 then d38 else false
        d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> true ) ) ) $ ( d100 ) ) ) ) $ ( if d20 then false else d65 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else x115 ) ) ) $ ( if true then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> Decl450Base3.M.d650 ) ) ) $ ( Decl450Base3.M.d580 ) ) ) ) $ ( if false then Decl450Base3.M.d1058 else true )
        d116 : if false then if true then Bool else Bool else if true then Bool else Bool
        d116 = if if Decl450Base3.M.d76 then d74 else false then if true then Decl450Base3.M.d622 else false else if d92 then false else d35
        d117 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then Bool else x120 ) ) ) $ ( if true then Bool else Bool )
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> true ) ) ) $ ( false ) ) ) ) $ ( if Decl450Base3.M.d761 then true else Decl450Base3.M.d174 )
        d121 : if false then if false then Bool else Bool else if false then Bool else Bool
        d121 = if if Decl450Base3.M.d554 then d48 else Decl450Base3.M.d513 then if Decl450Base3.M.d187 then Decl450Base3.M.d589 else true else if Decl450Base3.M.d27 then false else Decl450Base3.M.d129
        d122 : ( ( Set -> Set ) ∋ ( ( λ x123 -> if true then x123 else Bool ) ) ) $ ( if false then Bool else Bool )
        d122 = if if Decl450Base3.M.d416 then Decl450Base3.M.d511 else true then if Decl450Base3.M.d42 then Decl450Base3.M.d91 else Decl450Base3.M.d502 else if Decl450Base3.M.d284 then Decl450Base3.M.d76 else true
        d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d124 = if if Decl450Base3.M.d529 then Decl450Base3.M.d442 else Decl450Base3.M.d1100 then if Decl450Base3.M.d136 then Decl450Base3.M.d289 else d80 else if Decl450Base3.M.d255 then true else Decl450Base3.M.d213
        d127 : if true then if true then Bool else Bool else if false then Bool else Bool
        d127 = if if Decl450Base3.M.d1105 then Decl450Base3.M.d634 else false then if true then Decl450Base3.M.d428 else false else if Decl450Base3.M.d513 then Decl450Base3.M.d405 else true
        d128 : if true then if false then Bool else Bool else if true then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> x130 ) ) ) $ ( false ) ) ) ) $ ( if d106 then Decl450Base3.M.d54 else Decl450Base3.M.d969 )