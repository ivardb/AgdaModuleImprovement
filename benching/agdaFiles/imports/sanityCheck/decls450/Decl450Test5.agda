module Decl450Test5  where
    import Decl450Base5
    open import Decl450Base5 using (Bool; true; false; ⊤; tt) public
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
        d1 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> Decl450Base5.M.d448 ) ) ) $ ( x2 ) ) ) ) $ ( if Decl450Base5.M.d657 then true else Decl450Base5.M.d402 )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> x5 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d4 = if if d1 then true else Decl450Base5.M.d411 then if Decl450Base5.M.d453 then true else true else if Decl450Base5.M.d780 then false else Decl450Base5.M.d344
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if true then x8 else x8 ) ) ) $ ( if false then Bool else Bool )
        d7 = if if Decl450Base5.M.d570 then Decl450Base5.M.d92 else true then if d1 then Decl450Base5.M.d212 else d1 else if Decl450Base5.M.d1108 then true else d4
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if Decl450Base5.M.d1125 then d1 else x10 ) ) ) $ ( if d4 then false else d1 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if d1 then d7 else d4 then if true then d1 else Decl450Base5.M.d417 else if Decl450Base5.M.d742 then d9 else false
        d14 : if true then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if x15 then d1 else Decl450Base5.M.d10 ) ) ) $ ( if true then Decl450Base5.M.d707 else d1 )
        d16 : if true then if true then Bool else Bool else if false then Bool else Bool
        d16 = if if true then false else true then if Decl450Base5.M.d1124 then Decl450Base5.M.d39 else true else if Decl450Base5.M.d516 then true else d14
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( Decl450Base5.M.d930 ) ) ) ) $ ( if Decl450Base5.M.d329 then Decl450Base5.M.d748 else false )
        d22 : if true then if false then Bool else Bool else if false then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if true then Decl450Base5.M.d926 else Decl450Base5.M.d809 ) ) ) $ ( if d9 then Decl450Base5.M.d1016 else Decl450Base5.M.d592 )
        d24 : if true then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if false then d14 else x25 ) ) ) $ ( if Decl450Base5.M.d296 then Decl450Base5.M.d33 else true )
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> if true then Bool else x27 ) ) ) $ ( if true then Bool else Bool )
        d26 = if if Decl450Base5.M.d71 then false else Decl450Base5.M.d942 then if Decl450Base5.M.d517 then d4 else Decl450Base5.M.d752 else if d11 then Decl450Base5.M.d833 else true
        d28 : if true then if false then Bool else Bool else if true then Bool else Bool
        d28 = if if Decl450Base5.M.d349 then false else d11 then if Decl450Base5.M.d631 then d11 else Decl450Base5.M.d327 else if d9 then Decl450Base5.M.d329 else Decl450Base5.M.d996
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then x31 else x31 ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if Decl450Base5.M.d95 then x30 else d26 ) ) ) $ ( if Decl450Base5.M.d625 then d1 else Decl450Base5.M.d1047 )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x34 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if false then Decl450Base5.M.d224 else Decl450Base5.M.d63 ) ) ) $ ( if true then Decl450Base5.M.d989 else d14 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if true then x36 else x36 ) ) ) $ ( if true then Bool else Bool )
        d35 = if if Decl450Base5.M.d80 then false else true then if true then Decl450Base5.M.d709 else Decl450Base5.M.d36 else if false then false else true
        d37 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( x39 ) ) ) ) $ ( if true then Bool else Bool )
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> if false then d1 else Decl450Base5.M.d103 ) ) ) $ ( if Decl450Base5.M.d762 then false else Decl450Base5.M.d748 )
        d41 : if false then if false then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> ( ( Bool -> Bool ) ∋ ( ( λ x43 -> false ) ) ) $ ( d7 ) ) ) ) $ ( if Decl450Base5.M.d895 then true else d26 )
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> Bool ) ) ) $ ( x47 ) ) ) ) $ ( if false then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d4 ) ) ) $ ( x45 ) ) ) ) $ ( if Decl450Base5.M.d1060 then false else d7 )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if false then Bool else x50 ) ) ) $ ( if true then Bool else Bool )
        d49 = if if d16 then Decl450Base5.M.d874 else d14 then if d26 then Decl450Base5.M.d453 else Decl450Base5.M.d150 else if d44 then Decl450Base5.M.d1066 else d7
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if true then Bool else x52 ) ) ) $ ( if false then Bool else Bool )
        d51 = if if d41 then false else true then if Decl450Base5.M.d391 then Decl450Base5.M.d759 else Decl450Base5.M.d239 else if d22 then true else Decl450Base5.M.d654
        d53 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( x54 ) ) ) ) $ ( if false then Bool else Bool )
        d53 = if if false then Decl450Base5.M.d436 else false then if true then Decl450Base5.M.d957 else Decl450Base5.M.d304 else if Decl450Base5.M.d1114 then Decl450Base5.M.d947 else d49
        d56 : if false then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if Decl450Base5.M.d100 then Decl450Base5.M.d826 else false ) ) ) $ ( if Decl450Base5.M.d465 then true else d17 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then x61 else Bool ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d35 ) ) ) $ ( true ) ) ) ) $ ( if d29 then false else true )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if x63 then Decl450Base5.M.d411 else true ) ) ) $ ( if Decl450Base5.M.d302 then Decl450Base5.M.d436 else Decl450Base5.M.d877 )
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = if if d53 then Decl450Base5.M.d71 else Decl450Base5.M.d1119 then if d51 then false else false else if false then Decl450Base5.M.d742 else Decl450Base5.M.d129
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = if if Decl450Base5.M.d281 then true else d58 then if true then Decl450Base5.M.d543 else Decl450Base5.M.d135 else if Decl450Base5.M.d135 then Decl450Base5.M.d576 else Decl450Base5.M.d654
        d69 : if false then if false then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if Decl450Base5.M.d436 then Decl450Base5.M.d260 else d7 ) ) ) $ ( if d22 then Decl450Base5.M.d444 else Decl450Base5.M.d798 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x72 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d71 = if if Decl450Base5.M.d1000 then Decl450Base5.M.d989 else false then if d66 then false else Decl450Base5.M.d584 else if Decl450Base5.M.d647 then Decl450Base5.M.d1069 else false
        d73 : if true then if true then Bool else Bool else if false then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> if d37 then Decl450Base5.M.d173 else x74 ) ) ) $ ( if Decl450Base5.M.d358 then Decl450Base5.M.d168 else Decl450Base5.M.d129 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> ( ( Set -> Set ) ∋ ( ( λ x79 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> false ) ) ) $ ( d53 ) ) ) ) $ ( if Decl450Base5.M.d388 then Decl450Base5.M.d31 else Decl450Base5.M.d873 )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> Bool ) ) ) $ ( x83 ) ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> ( ( Bool -> Bool ) ∋ ( ( λ x82 -> x82 ) ) ) $ ( Decl450Base5.M.d389 ) ) ) ) $ ( if Decl450Base5.M.d979 then true else false )
        d85 : ( ( Set -> Set ) ∋ ( ( λ x87 -> ( ( Set -> Set ) ∋ ( ( λ x88 -> Bool ) ) ) $ ( x87 ) ) ) ) $ ( if true then Bool else Bool )
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if false then Decl450Base5.M.d116 else Decl450Base5.M.d569 ) ) ) $ ( if Decl450Base5.M.d864 then false else Decl450Base5.M.d709 )
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if x90 then x90 else d22 ) ) ) $ ( if Decl450Base5.M.d488 then false else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> Bool ) ) ) $ ( x92 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = if if d32 then false else Decl450Base5.M.d445 then if Decl450Base5.M.d844 then Decl450Base5.M.d27 else Decl450Base5.M.d562 else if Decl450Base5.M.d389 then Decl450Base5.M.d493 else false
        d94 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = if if Decl450Base5.M.d1081 then Decl450Base5.M.d95 else Decl450Base5.M.d251 then if d37 then Decl450Base5.M.d1057 else Decl450Base5.M.d831 else if d7 then Decl450Base5.M.d497 else true
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then x97 else x97 ) ) ) $ ( if true then Bool else Bool )
        d96 = if if Decl450Base5.M.d654 then false else false then if d49 then Decl450Base5.M.d1108 else d44 else if d71 then false else true
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if Decl450Base5.M.d692 then Decl450Base5.M.d616 else false then if false then Decl450Base5.M.d477 else d71 else if Decl450Base5.M.d799 then Decl450Base5.M.d620 else false
        d101 : if false then if false then Bool else Bool else if true then Bool else Bool
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if Decl450Base5.M.d80 then false else Decl450Base5.M.d384 ) ) ) $ ( if Decl450Base5.M.d760 then Decl450Base5.M.d231 else Decl450Base5.M.d426 )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if Decl450Base5.M.d352 then true else x104 ) ) ) $ ( if d4 then Decl450Base5.M.d107 else Decl450Base5.M.d616 )
        d106 : if false then if false then Bool else Bool else if true then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( Bool -> Bool ) ∋ ( ( λ x108 -> x107 ) ) ) $ ( x107 ) ) ) ) $ ( if Decl450Base5.M.d100 then Decl450Base5.M.d490 else Decl450Base5.M.d287 )
        d109 : if true then if true then Bool else Bool else if false then Bool else Bool
        d109 = if if Decl450Base5.M.d245 then Decl450Base5.M.d280 else true then if Decl450Base5.M.d144 then Decl450Base5.M.d186 else Decl450Base5.M.d592 else if Decl450Base5.M.d239 then false else false
        d110 : if true then if false then Bool else Bool else if false then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if false then Decl450Base5.M.d576 else Decl450Base5.M.d517 ) ) ) $ ( if d16 then d1 else false )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if Decl450Base5.M.d117 then d110 else x113 ) ) ) $ ( if d49 then Decl450Base5.M.d1132 else Decl450Base5.M.d537 )
        d115 : if true then if false then Bool else Bool else if true then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( Decl450Base5.M.d495 ) ) ) ) $ ( if Decl450Base5.M.d874 then Decl450Base5.M.d339 else false )
        d118 : if true then if false then Bool else Bool else if true then Bool else Bool
        d118 = if if Decl450Base5.M.d574 then Decl450Base5.M.d244 else Decl450Base5.M.d501 then if false then Decl450Base5.M.d31 else Decl450Base5.M.d180 else if Decl450Base5.M.d1094 then d53 else false
        d119 : if true then if true then Bool else Bool else if true then Bool else Bool
        d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> Decl450Base5.M.d892 ) ) ) $ ( d91 ) ) ) ) $ ( if Decl450Base5.M.d272 then Decl450Base5.M.d669 else Decl450Base5.M.d683 )
        d122 : ( ( Set -> Set ) ∋ ( ( λ x124 -> if false then Bool else x124 ) ) ) $ ( if true then Bool else Bool )
        d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> if x123 then x123 else true ) ) ) $ ( if Decl450Base5.M.d550 then Decl450Base5.M.d203 else Decl450Base5.M.d402 )
        d125 : if false then if true then Bool else Bool else if true then Bool else Bool
        d125 = if if Decl450Base5.M.d1005 then Decl450Base5.M.d579 else d71 then if d28 then Decl450Base5.M.d741 else Decl450Base5.M.d248 else if d58 then false else d85
        d126 : if false then if false then Bool else Bool else if true then Bool else Bool
        d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if false then x127 else Decl450Base5.M.d342 ) ) ) $ ( if d4 then Decl450Base5.M.d1029 else Decl450Base5.M.d367 )
        d128 : if true then if false then Bool else Bool else if false then Bool else Bool
        d128 = if if Decl450Base5.M.d454 then Decl450Base5.M.d301 else Decl450Base5.M.d140 then if Decl450Base5.M.d426 then d29 else false else if Decl450Base5.M.d177 then Decl450Base5.M.d1054 else Decl450Base5.M.d224