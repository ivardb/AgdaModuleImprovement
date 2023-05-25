module Param4Test8  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if false then x7 else x7 ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if false then true else false ) ) ) $ ( if false then p4 else p3 )
        d8 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d8 = if if d5 then false else d5 then if p2 then p1 else p1 else if d5 then p2 else p2
        d11 : if false then if false then Bool else Bool else if false then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if x12 then p1 else p2 ) ) ) $ ( if d8 then true else d8 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if p1 then true else d5 ) ) ) $ ( if true then p4 else p4 )
        d17 : if false then if false then Bool else Bool else if false then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> p1 ) ) ) $ ( p2 ) ) ) ) $ ( if d8 then p1 else d11 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if false then x21 else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if false then d8 else d13 then if p1 then true else d8 else if d8 then p4 else d8
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x25 ) ) ) $ ( x24 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if p3 then p3 else d20 ) ) ) $ ( if p2 then p2 else p3 )
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> true ) ) ) $ ( true ) ) ) ) $ ( if d13 then true else false )
        d29 : if true then if true then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then x30 else d5 ) ) ) $ ( if false then d8 else p1 )
        d31 : if true then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if false then x32 else true ) ) ) $ ( if d17 then true else p1 )
        d33 : if true then if false then Bool else Bool else if true then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if d8 then p3 else d31 ) ) ) $ ( if d17 then d11 else d13 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> if false then x36 else Bool ) ) ) $ ( if true then Bool else Bool )
        d35 = if if true then true else d33 then if false then d22 else false else if d22 then false else d29
        d37 : if true then if true then Bool else Bool else if false then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then p2 else false )
        d40 : if true then if true then Bool else Bool else if true then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> x41 ) ) ) $ ( d22 ) ) ) ) $ ( if p3 then p3 else d29 )
        d43 : if false then if false then Bool else Bool else if true then Bool else Bool
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if true then p4 else d26 ) ) ) $ ( if false then d20 else d17 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d45 = if if d40 then d43 else d31 then if d22 then d43 else d8 else if p4 then d26 else true
        d47 : if true then if true then Bool else Bool else if true then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> d8 ) ) ) $ ( true ) ) ) ) $ ( if p4 then true else d29 )
        d50 : if false then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( p2 ) ) ) ) $ ( if p3 then false else false )
        d53 : if false then if false then Bool else Bool else if false then Bool else Bool
        d53 = ( ( Bool -> Bool ) ∋ ( ( λ x54 -> if d11 then p1 else d29 ) ) ) $ ( if true then true else d26 )
        d55 : if false then if true then Bool else Bool else if true then Bool else Bool
        d55 = if if d45 then d17 else d29 then if d45 then false else false else if p3 then d35 else false
        d56 : if false then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d35 ) ) ) $ ( d40 ) ) ) ) $ ( if d45 then d37 else d53 )
        d59 : if true then if true then Bool else Bool else if true then Bool else Bool
        d59 = if if d40 then d50 else p3 then if p4 then true else true else if d11 then true else d43
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> x61 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d60 = if if p2 then p1 else d35 then if d33 then true else true else if p2 then false else d56
        d63 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d63 = if if p3 then d17 else true then if p4 then p3 else p4 else if d60 then true else d53
        d66 : if true then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> p2 ) ) ) $ ( x67 ) ) ) ) $ ( if d53 then false else true )
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if p1 then d43 else d43 ) ) ) $ ( if d20 then d35 else p4 )
        d71 : if true then if true then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if false then d40 else d8 ) ) ) $ ( if p4 then p3 else p3 )
        d73 : if false then if false then Bool else Bool else if false then Bool else Bool
        d73 = if if p4 then p2 else d26 then if false then false else d35 else if d40 then true else d29
        d74 : if false then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> p4 ) ) ) $ ( d47 ) ) ) ) $ ( if p4 then d17 else p2 )
        d77 : if true then if false then Bool else Bool else if false then Bool else Bool
        d77 = if if p4 then d5 else false then if true then d63 else d33 else if p2 then false else p2
        d78 : if true then if false then Bool else Bool else if true then Bool else Bool
        d78 = if if d29 then d53 else p3 then if false then p1 else false else if false then p1 else d71
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d79 = if if p2 then true else p4 then if p4 then p4 else d59 else if p2 then d60 else d31
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> x85 ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d45 then p3 else true ) ) ) $ ( if d31 then false else d33 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if d71 then p2 else d56 ) ) ) $ ( if p4 then p4 else true )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d90 = if if d35 then d63 else false then if d71 then false else p3 else if d47 then false else false
        d93 : if false then if true then Bool else Bool else if true then Bool else Bool
        d93 = if if p3 then true else false then if p2 then p1 else p1 else if p2 then p2 else d43
        d94 : if false then if true then Bool else Bool else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if false then p1 else true ) ) ) $ ( if d5 then p1 else p2 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then Bool else x97 ) ) ) $ ( if false then Bool else Bool )
        d96 = if if false then true else d73 then if d35 then p4 else d22 else if d50 then false else p3
        d98 : if true then if false then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if d22 then d26 else x99 ) ) ) $ ( if true then false else p2 )
        d100 : if true then if true then Bool else Bool else if true then Bool else Bool
        d100 = if if d59 then d56 else true then if d66 then d33 else d66 else if false then d55 else d90
    d101 : if true then if true then Bool else Bool else if false then Bool else Bool
    d101 = if if true then true else false then if true then false else true else if true then true else true
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then Bool else x103 ) ) ) $ ( if true then Bool else Bool )
    d102 = ( ( ( ( M.d90 ) $ ( d101 ) ) $ ( false ) ) $ ( false ) ) $ ( true )
    d104 : if true then if true then Bool else Bool else if false then Bool else Bool
    d104 = ( ( ( ( M.d11 ) $ ( true ) ) $ ( d102 ) ) $ ( d101 ) ) $ ( d101 )
    d105 : if false then if false then Bool else Bool else if false then Bool else Bool
    d105 = if if d102 then d101 else true then if d104 then d102 else d104 else if true then true else false
    d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then x108 else Bool ) ) ) $ ( if false then Bool else Bool )
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( ( ( M.d20 ) $ ( d102 ) ) $ ( true ) ) $ ( x107 ) ) $ ( false ) ) ) ) $ ( if d104 then true else true )
    d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( x110 ) ) ) ) $ ( if true then Bool else Bool )
    d109 = if if d102 then true else false then if true then true else true else if d105 then d102 else d104
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> ( ( Set -> Set ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d112 = ( ( ( ( M.d66 ) $ ( true ) ) $ ( d106 ) ) $ ( d101 ) ) $ ( false )
    d115 : if false then if false then Bool else Bool else if true then Bool else Bool
    d115 = ( ( ( ( M.d20 ) $ ( d104 ) ) $ ( true ) ) $ ( true ) ) $ ( d104 )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x117 ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( ( ( M.d8 ) $ ( true ) ) $ ( true ) ) $ ( d106 ) ) $ ( false )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d119 = ( ( ( ( M.d93 ) $ ( true ) ) $ ( true ) ) $ ( d101 ) ) $ ( true )
    d122 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> x125 ) ) ) $ ( x125 ) ) ) ) $ ( if false then Bool else Bool )
    d122 = ( ( Bool -> Bool ) ∋ ( ( λ x123 -> ( ( Bool -> Bool ) ∋ ( ( λ x124 -> d116 ) ) ) $ ( x123 ) ) ) ) $ ( if d115 then d115 else false )
    d127 : if true then if true then Bool else Bool else if true then Bool else Bool
    d127 = if if d102 then d101 else false then if d122 then true else true else if true then d119 else true
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if true then Bool else Bool )
    d128 = if if false then d119 else false then if true then true else d105 else if d109 then d104 else true
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> if true then x132 else Bool ) ) ) $ ( if false then Bool else Bool )
    d131 = ( ( ( ( M.d82 ) $ ( d101 ) ) $ ( d122 ) ) $ ( d104 ) ) $ ( d116 )
    d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if true then x136 else Bool ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> false ) ) ) $ ( x134 ) ) ) ) $ ( if d115 then true else d128 )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( x138 ) ) ) ) $ ( if false then Bool else Bool )
    d137 = ( ( ( ( M.d94 ) $ ( d133 ) ) $ ( true ) ) $ ( true ) ) $ ( d122 )
    d140 : if false then if true then Bool else Bool else if true then Bool else Bool
    d140 = ( ( ( ( M.d20 ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( false )
    d141 : if false then if false then Bool else Bool else if true then Bool else Bool
    d141 = if if d131 then d106 else d127 then if false then d116 else d106 else if true then d109 else true
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( ( ( M.d13 ) $ ( d105 ) ) $ ( d133 ) ) $ ( d119 ) ) $ ( d128 )
    d144 : if false then if true then Bool else Bool else if true then Bool else Bool
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> ( ( ( ( M.d79 ) $ ( d112 ) ) $ ( false ) ) $ ( false ) ) $ ( false ) ) ) ) $ ( if d131 then false else false )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( x149 ) ) ) ) $ ( if false then Bool else Bool )
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( Bool -> Bool ) ∋ ( ( λ x148 -> d137 ) ) ) $ ( d131 ) ) ) ) $ ( if true then true else true )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( ( ( M.d40 ) $ ( d122 ) ) $ ( false ) ) $ ( d119 ) ) $ ( x152 ) ) ) ) $ ( if true then true else false )
    d155 : if false then if true then Bool else Bool else if false then Bool else Bool
    d155 = if if true then true else false then if d122 then false else d141 else if false then true else d142
    d156 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x159 ) ) ) $ ( x159 ) ) ) ) $ ( if true then Bool else Bool )
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( Bool -> Bool ) ∋ ( ( λ x158 -> false ) ) ) $ ( x157 ) ) ) ) $ ( if false then d102 else false )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x162 -> ( ( Set -> Set ) ∋ ( ( λ x163 -> x162 ) ) ) $ ( x162 ) ) ) ) $ ( if true then Bool else Bool )
    d161 = ( ( ( ( M.d11 ) $ ( d128 ) ) $ ( d142 ) ) $ ( true ) ) $ ( false )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> x166 ) ) ) $ ( x165 ) ) ) ) $ ( if true then Bool else Bool )
    d164 = ( ( ( ( M.d71 ) $ ( d122 ) ) $ ( true ) ) $ ( d106 ) ) $ ( d116 )
    d167 : if false then if false then Bool else Bool else if true then Bool else Bool
    d167 = ( ( ( ( M.d86 ) $ ( d102 ) ) $ ( d105 ) ) $ ( true ) ) $ ( true )
    d168 : if true then if false then Bool else Bool else if true then Bool else Bool
    d168 = if if true then d142 else false then if true then d102 else d144 else if false then false else false
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d169 = if if d105 then d105 else d104 then if true then false else d119 else if true then d133 else true
    d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> Bool ) ) ) $ ( x172 ) ) ) ) $ ( if false then Bool else Bool )
    d171 = if if true then d156 else d144 then if d144 then d146 else false else if d128 then d155 else false
    d174 : ( ( Set -> Set ) ∋ ( ( λ x175 -> ( ( Set -> Set ) ∋ ( ( λ x176 -> x175 ) ) ) $ ( x175 ) ) ) ) $ ( if false then Bool else Bool )
    d174 = ( ( ( ( M.d94 ) $ ( true ) ) $ ( false ) ) $ ( true ) ) $ ( d151 )
    d177 : if false then if false then Bool else Bool else if false then Bool else Bool
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> if x178 then true else true ) ) ) $ ( if d109 then d141 else d168 )
    d179 : if false then if true then Bool else Bool else if true then Bool else Bool
    d179 = if if d169 then true else true then if d161 then false else true else if true then false else d141
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> ( ( Set -> Set ) ∋ ( ( λ x182 -> x181 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( ( ( M.d63 ) $ ( false ) ) $ ( d137 ) ) $ ( d151 ) ) $ ( false )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if false then x184 else Bool ) ) ) $ ( if false then Bool else Bool )
    d183 = ( ( ( ( M.d55 ) $ ( d177 ) ) $ ( d167 ) ) $ ( false ) ) $ ( d112 )
    d185 : if true then if true then Bool else Bool else if false then Bool else Bool
    d185 = if if true then d161 else d146 then if d104 then true else d141 else if d180 then d105 else true
    d186 : if true then if false then Bool else Bool else if false then Bool else Bool
    d186 = if if false then true else d122 then if d128 then d167 else d116 else if d127 then d177 else d101
    d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> x188 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d187 = ( ( ( ( M.d45 ) $ ( d106 ) ) $ ( d164 ) ) $ ( d116 ) ) $ ( true )
    d190 : if true then if true then Bool else Bool else if true then Bool else Bool
    d190 = if if true then false else d187 then if d151 then true else true else if false then d144 else d128
    d191 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> x194 ) ) ) $ ( x193 ) ) ) ) $ ( if true then Bool else Bool )
    d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> if false then x192 else x192 ) ) ) $ ( if true then d131 else false )