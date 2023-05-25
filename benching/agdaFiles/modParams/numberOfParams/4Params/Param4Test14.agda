module Param4Test14  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool ) ( p3 : if false then Bool else Bool ) ( p4 : if false then Bool else Bool )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = if if p4 then p4 else true then if p2 then p3 else false else if p3 then true else false
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> if true then x9 else x9 ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if false then p4 else x8 ) ) ) $ ( if d5 then d5 else true )
        d10 : if true then if true then Bool else Bool else if true then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( true ) ) ) ) $ ( if d7 then p3 else true )
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if p4 then true else p4 ) ) ) $ ( if d7 then false else d10 )
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = if if d10 then p4 else p4 then if false then d7 else false else if d10 then d5 else true
        d16 : if false then if false then Bool else Bool else if true then Bool else Bool
        d16 = if if d5 then d5 else p2 then if p2 then false else p1 else if p3 then true else false
        d17 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if false then d7 else d5 ) ) ) $ ( if d15 then d13 else true )
        d21 : if false then if true then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> false ) ) ) $ ( false ) ) ) ) $ ( if p1 then d13 else d7 )
        d24 : if true then if false then Bool else Bool else if false then Bool else Bool
        d24 = if if true then d10 else p2 then if d13 then p4 else true else if true then false else p2
        d25 : if false then if true then Bool else Bool else if true then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( d16 ) ) ) ) $ ( if p3 then p1 else p2 )
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> Bool ) ) ) $ ( x29 ) ) ) ) $ ( if false then Bool else Bool )
        d28 = if if d15 then d13 else d15 then if p2 then d15 else true else if d25 then p3 else p4
        d31 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if true then x33 else x33 ) ) ) $ ( if true then Bool else Bool )
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> if x32 then x32 else x32 ) ) ) $ ( if p2 then p1 else d24 )
        d34 : if true then if false then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if d24 then d24 else p2 ) ) ) $ ( if p3 then p4 else p4 )
        d36 : if false then if false then Bool else Bool else if false then Bool else Bool
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d5 ) ) ) $ ( p1 ) ) ) ) $ ( if d16 then true else false )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then Bool else x41 ) ) ) $ ( if true then Bool else Bool )
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if p1 then true else false ) ) ) $ ( if p1 then true else false )
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = if if p2 then p4 else d21 then if d16 then d34 else true else if p2 then d7 else p1
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then x44 else Bool ) ) ) $ ( if true then Bool else Bool )
        d43 = if if true then false else true then if true then false else p3 else if false then d21 else p3
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d36 ) ) ) $ ( d21 ) ) ) ) $ ( if d15 then true else false )
        d48 : if false then if true then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> d25 ) ) ) $ ( p1 ) ) ) ) $ ( if false then d45 else true )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> x53 ) ) ) $ ( x53 ) ) ) ) $ ( if false then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if d39 then false else d42 ) ) ) $ ( if d5 then p2 else false )
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = if if d13 then p3 else d31 then if d17 then d48 else d42 else if d24 then d21 else p1
        d56 : if false then if true then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if d5 then p3 else x57 ) ) ) $ ( if d17 then p4 else p1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> x61 ) ) ) $ ( x60 ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if x59 then p3 else p1 ) ) ) $ ( if d16 then d16 else true )
        d62 : if true then if false then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d24 ) ) ) $ ( false ) ) ) ) $ ( if true then false else p3 )
        d65 : if true then if false then Bool else Bool else if true then Bool else Bool
        d65 = if if d24 then true else d62 then if d25 then false else d39 else if p1 then d15 else true
        d66 : if false then if false then Bool else Bool else if true then Bool else Bool
        d66 = ( ( Bool -> Bool ) ∋ ( ( λ x67 -> ( ( Bool -> Bool ) ∋ ( ( λ x68 -> x67 ) ) ) $ ( false ) ) ) ) $ ( if p4 then p4 else d25 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if p2 then p1 else p2 ) ) ) $ ( if true then true else d66 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x76 -> if true then Bool else x76 ) ) ) $ ( if false then Bool else Bool )
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> d28 ) ) ) $ ( x74 ) ) ) ) $ ( if false then p1 else true )
        d77 : if true then if true then Bool else Bool else if false then Bool else Bool
        d77 = if if p4 then true else p4 then if false then true else true else if d5 then d25 else d58
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then x81 else Bool ) ) ) $ ( if false then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> false ) ) ) $ ( d43 ) ) ) ) $ ( if p4 then false else d36 )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> p4 ) ) ) $ ( p3 ) ) ) ) $ ( if p4 then p1 else d56 )
        d86 : if false then if false then Bool else Bool else if false then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> d43 ) ) ) $ ( true ) ) ) ) $ ( if d10 then false else d78 )
        d89 : if false then if false then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d45 ) ) ) $ ( x90 ) ) ) ) $ ( if false then p4 else d5 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x94 ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> if p4 then d73 else false ) ) ) $ ( if d36 then p3 else p3 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> x98 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d10 then p4 else false ) ) ) $ ( if p2 then d73 else d65 )
        d100 : if false then if false then Bool else Bool else if true then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> true ) ) ) $ ( true ) ) ) ) $ ( if d34 then d92 else false )
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then x104 else Bool ) ) ) $ ( if true then Bool else Bool )
        d103 = if if p3 then false else p2 then if true then d73 else true else if false then d43 else d48
        d105 : if true then if false then Bool else Bool else if false then Bool else Bool
        d105 = if if p4 then true else d48 then if true then d36 else p1 else if d55 then d89 else false
        d106 : if true then if false then Bool else Bool else if false then Bool else Bool
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if d36 then p4 else p3 ) ) ) $ ( if false then d25 else false )
        d108 : if true then if false then Bool else Bool else if false then Bool else Bool
        d108 = if if d51 then true else true then if false then p1 else true else if false then d21 else true
    d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d109 = ( ( ( ( M.d10 ) $ ( true ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d111 = if if d109 then false else true then if false then false else true else if false then true else d109
    d113 : if false then if true then Bool else Bool else if false then Bool else Bool
    d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d109 ) ) ) $ ( false ) ) ) ) $ ( if true then false else false )
    d116 : if true then if true then Bool else Bool else if true then Bool else Bool
    d116 = ( ( ( ( M.d105 ) $ ( false ) ) $ ( false ) ) $ ( false ) ) $ ( d109 )
    d117 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else x119 ) ) ) $ ( if false then Bool else Bool )
    d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> if x118 then x118 else x118 ) ) ) $ ( if d111 then false else false )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d120 = ( ( ( ( M.d73 ) $ ( true ) ) $ ( true ) ) $ ( d113 ) ) $ ( true )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> x125 ) ) ) $ ( x125 ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( ( ( M.d10 ) $ ( d111 ) ) $ ( x124 ) ) $ ( d109 ) ) $ ( x124 ) ) ) ) $ ( if d109 then d117 else d117 )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x128 -> if true then x128 else Bool ) ) ) $ ( if false then Bool else Bool )
    d127 = if if true then false else true then if true then true else d120 else if d113 then true else true
    d129 : if false then if true then Bool else Bool else if true then Bool else Bool
    d129 = ( ( ( ( M.d34 ) $ ( d111 ) ) $ ( d127 ) ) $ ( d113 ) ) $ ( false )
    d130 : if true then if true then Bool else Bool else if true then Bool else Bool
    d130 = ( ( ( ( M.d51 ) $ ( d111 ) ) $ ( d127 ) ) $ ( d116 ) ) $ ( false )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x134 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> if x132 then true else d123 ) ) ) $ ( if false then false else false )
    d135 : if false then if true then Bool else Bool else if false then Bool else Bool
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( ( ( M.d42 ) $ ( d130 ) ) $ ( d130 ) ) $ ( x136 ) ) $ ( x136 ) ) ) ) $ ( if false then true else d120 )
    d137 : if false then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( ( ( M.d34 ) $ ( d123 ) ) $ ( d130 ) ) $ ( d130 ) ) $ ( false )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d130 else false )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if true then Bool else x144 ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( ( ( M.d51 ) $ ( d116 ) ) $ ( true ) ) $ ( d111 ) ) $ ( d130 )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> x147 ) ) ) $ ( x146 ) ) ) ) $ ( if false then Bool else Bool )
    d145 = ( ( ( ( M.d17 ) $ ( true ) ) $ ( d138 ) ) $ ( d137 ) ) $ ( true )
    d148 : if false then if true then Bool else Bool else if true then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( ( ( M.d62 ) $ ( false ) ) $ ( x149 ) ) $ ( x149 ) ) $ ( false ) ) ) ) $ ( if d135 then d123 else d143 )
    d150 : if false then if true then Bool else Bool else if true then Bool else Bool
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> ( ( Bool -> Bool ) ∋ ( ( λ x152 -> d145 ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
    d153 : if true then if false then Bool else Bool else if false then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> if false then d127 else false ) ) ) $ ( if false then d109 else d145 )
    d155 : if false then if true then Bool else Bool else if true then Bool else Bool
    d155 = if if d131 then false else true then if false then d111 else d145 else if d148 then true else false
    d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if x157 then d129 else d155 ) ) ) $ ( if d123 then false else true )
    d160 : if true then if false then Bool else Bool else if true then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> if x161 then x161 else d120 ) ) ) $ ( if false then d116 else d123 )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> Bool ) ) ) $ ( x163 ) ) ) ) $ ( if false then Bool else Bool )
    d162 = ( ( ( ( M.d24 ) $ ( d120 ) ) $ ( true ) ) $ ( true ) ) $ ( d150 )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> Bool ) ) ) $ ( x166 ) ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( ( ( M.d82 ) $ ( d130 ) ) $ ( d155 ) ) $ ( d130 ) ) $ ( false )
    d168 : if false then if true then Bool else Bool else if false then Bool else Bool
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( x169 ) ) ) ) $ ( if d111 then true else true )
    d171 : if false then if true then Bool else Bool else if true then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> x172 ) ) ) $ ( x172 ) ) ) ) $ ( if false then true else false )
    d174 : if false then if false then Bool else Bool else if true then Bool else Bool
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( ( ( M.d17 ) $ ( x175 ) ) $ ( x175 ) ) $ ( d171 ) ) $ ( d143 ) ) ) ) $ ( if true then d171 else false )
    d176 : if true then if true then Bool else Bool else if true then Bool else Bool
    d176 = ( ( ( ( M.d17 ) $ ( false ) ) $ ( d113 ) ) $ ( false ) ) $ ( d155 )
    d177 : if false then if false then Bool else Bool else if false then Bool else Bool
    d177 = ( ( Bool -> Bool ) ∋ ( ( λ x178 -> ( ( ( ( M.d48 ) $ ( x178 ) ) $ ( d127 ) ) $ ( d168 ) ) $ ( x178 ) ) ) ) $ ( if d137 then d162 else d135 )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if false then x180 else Bool ) ) ) $ ( if false then Bool else Bool )
    d179 = if if true then d156 else d155 then if false then d135 else d135 else if false then false else d171
    d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d181 = if if d165 then true else d135 then if true then false else d145 else if false then d117 else d162
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> Bool ) ) ) $ ( x184 ) ) ) ) $ ( if true then Bool else Bool )
    d183 = if if true then false else true then if d148 then true else d138 else if true then d113 else d160
    d186 : if true then if true then Bool else Bool else if true then Bool else Bool
    d186 = if if d148 then d129 else d130 then if true then true else d174 else if false then d109 else false
    d187 : if false then if true then Bool else Bool else if false then Bool else Bool
    d187 = ( ( Bool -> Bool ) ∋ ( ( λ x188 -> ( ( ( ( M.d100 ) $ ( d131 ) ) $ ( false ) ) $ ( d165 ) ) $ ( false ) ) ) ) $ ( if false then false else false )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x190 -> if false then Bool else x190 ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( ( ( M.d5 ) $ ( d131 ) ) $ ( d113 ) ) $ ( d148 ) ) $ ( false )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> Bool ) ) ) $ ( x192 ) ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( ( ( M.d21 ) $ ( d135 ) ) $ ( true ) ) $ ( false ) ) $ ( false )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> if true then x195 else x195 ) ) ) $ ( if true then Bool else Bool )
    d194 = if if false then false else d137 then if d156 then false else true else if d162 then true else d148
    d196 : if true then if false then Bool else Bool else if true then Bool else Bool
    d196 = if if true then d113 else false then if d179 then true else true else if true then d171 else true
    d197 : ( ( Set -> Set ) ∋ ( ( λ x198 -> if true then Bool else x198 ) ) ) $ ( if true then Bool else Bool )
    d197 = ( ( ( ( M.d34 ) $ ( false ) ) $ ( true ) ) $ ( true ) ) $ ( false )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d199 = if if d171 then d174 else true then if d138 then false else d138 else if d111 then true else d181