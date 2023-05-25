module Size20Test15  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then x2 else Bool ) ) ) $ ( if false then Bool else Bool ) ) ( p3 : if true then if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x4 -> Bool ) ) ) $ ( Bool ) )  where
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if p1 then p3 else x6 ) ) ) $ ( if p3 then false else true )
        d8 : if true then if false then Bool else Bool else if true then Bool else Bool
        d8 = if if d5 then p1 else d5 then if d5 then p1 else d5 else if p1 then d5 else d5
        d9 : if false then if false then Bool else Bool else if false then Bool else Bool
        d9 = if if d5 then false else true then if false then d5 else true else if false then p1 else d8
        d10 : if false then if false then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> d9 ) ) ) $ ( p3 ) ) ) ) $ ( if d5 then d8 else p1 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then x15 else x15 ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if true then true else x14 ) ) ) $ ( if false then true else false )
        d16 : if true then if true then Bool else Bool else if true then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if true then d5 else p3 ) ) ) $ ( if d9 then p3 else p1 )
        d18 : if false then if false then Bool else Bool else if false then Bool else Bool
        d18 = if if true then false else d16 then if false then true else true else if d8 then false else false
        d19 : if true then if false then Bool else Bool else if false then Bool else Bool
        d19 = if if true then d10 else d10 then if d16 then true else p3 else if p3 then true else p1
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then Bool else x21 ) ) ) $ ( if false then Bool else Bool )
        d20 = if if false then d9 else p1 then if p3 then d13 else p1 else if d18 then false else false
        d22 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else x24 ) ) ) $ ( if true then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> if p1 then p1 else p3 ) ) ) $ ( if false then true else false )
        d25 : if true then if true then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> false ) ) ) $ ( d9 ) ) ) ) $ ( if d5 then d20 else p3 )
        d28 : if true then if true then Bool else Bool else if false then Bool else Bool
        d28 = if if d22 then d18 else d9 then if d9 then p3 else p1 else if p1 then p3 else d22
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x31 ) ) ) $ ( x30 ) ) ) ) $ ( if false then Bool else Bool )
        d29 = if if true then d19 else d25 then if true then p3 else d10 else if d5 then p3 else false
        d32 : if false then if true then Bool else Bool else if false then Bool else Bool
        d32 = if if true then p3 else p3 then if p1 then p1 else false else if p3 then p1 else d10
        d33 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( x36 ) ) ) ) $ ( if false then Bool else Bool )
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> ( ( Bool -> Bool ) ∋ ( ( λ x35 -> p1 ) ) ) $ ( d28 ) ) ) ) $ ( if d18 then true else d8 )
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else x40 ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if false then d8 else d32 ) ) ) $ ( if true then d19 else true )
        d41 : if false then if true then Bool else Bool else if false then Bool else Bool
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if true then false else false ) ) ) $ ( if d8 then d10 else d13 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> true ) ) ) $ ( d38 ) ) ) ) $ ( if d32 then p1 else false )
        d48 : if true then if false then Bool else Bool else if false then Bool else Bool
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> p1 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p3 else p1 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> if false then Bool else x52 ) ) ) $ ( if true then Bool else Bool )
        d51 = if if d18 then p1 else false then if p1 then p3 else true else if p1 then p3 else d8
        d53 : if false then if false then Bool else Bool else if true then Bool else Bool
        d53 = if if d25 then true else p3 then if d20 then false else d41 else if d13 then d22 else d9
        d54 : if false then if true then Bool else Bool else if false then Bool else Bool
        d54 = if if p1 then p3 else false then if true then false else d51 else if p1 then d33 else p1
        d55 : ( ( Set -> Set ) ∋ ( ( λ x57 -> ( ( Set -> Set ) ∋ ( ( λ x58 -> Bool ) ) ) $ ( x57 ) ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> if p1 then false else x56 ) ) ) $ ( if p3 then p3 else p1 )
        d59 : if true then if false then Bool else Bool else if false then Bool else Bool
        d59 = if if p3 then d51 else d22 then if p1 then d8 else d5 else if d48 then p3 else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then Bool else x61 ) ) ) $ ( if false then Bool else Bool )
        d60 = if if true then false else d28 then if d41 then p1 else p1 else if d33 then d25 else d13
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else Bool ) ) ) $ ( if false then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if d10 then x63 else false ) ) ) $ ( if p1 then false else d33 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if false then x68 else x68 ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> p3 ) ) ) $ ( true ) ) ) ) $ ( if p3 then false else p3 )
        d69 : if false then if true then Bool else Bool else if false then Bool else Bool
        d69 = if if d5 then d33 else false then if true then true else d13 else if d41 then d54 else p1
        d70 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> x72 ) ) ) $ ( x71 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = if if p3 then false else p1 then if d25 then d41 else p3 else if d41 then p1 else p1
        d73 : if true then if true then Bool else Bool else if false then Bool else Bool
        d73 = if if d54 then d9 else d54 then if p1 then d48 else d9 else if d13 then p1 else d65
        d74 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> x77 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if x75 then false else false ) ) ) $ ( if p1 then false else p3 )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> if true then Bool else x79 ) ) ) $ ( if true then Bool else Bool )
        d78 = if if p1 then d9 else p1 then if p3 then p3 else p3 else if false then p3 else true
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if d25 then p1 else d60 then if d70 then true else d25 else if true then d60 else true
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> ( ( Set -> Set ) ∋ ( ( λ x83 -> x82 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d81 = if if p1 then d69 else p1 then if true then d78 else p1 else if false then true else true
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> x86 ) ) ) $ ( x85 ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if p1 then d25 else p3 then if true then true else p1 else if p1 then true else d9
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> x90 ) ) ) $ ( x89 ) ) ) ) $ ( if false then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if true then false else false ) ) ) $ ( if true then false else p3 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> ( ( Set -> Set ) ∋ ( ( λ x93 -> x92 ) ) ) $ ( x92 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = if if true then false else p1 then if d20 then true else p3 else if d51 then d33 else p1
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> true ) ) ) $ ( x95 ) ) ) ) $ ( if p3 then d87 else d59 )
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if x98 then p3 else p1 ) ) ) $ ( if true then d25 else d53 )
        d99 : if false then if false then Bool else Bool else if true then Bool else Bool
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> x101 ) ) ) $ ( true ) ) ) ) $ ( if d16 then true else true )
    d102 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if true then Bool else Bool )
    d102 = if if false then true else false then if false then false else true else if false then true else true
    d105 : if true then if false then Bool else Bool else if true then Bool else Bool
    d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if false then d102 else d102 ) ) ) $ ( if d102 then d102 else true )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if false then x109 else x109 ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( M.d74 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x108 -> true ) ) ) $ ( d102 ) ) ) $ ( if d105 then true else d102 )
    d110 : if true then if false then Bool else Bool else if false then Bool else Bool
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( M.d60 ) $ ( if d105 then false else d107 ) ) $ ( if true then true else d102 ) ) ) ) $ ( if false then false else true )
    d112 : if true then if false then Bool else Bool else if true then Bool else Bool
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if x113 then d102 else d105 ) ) ) $ ( if d110 then d105 else true )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if false then Bool else x115 ) ) ) $ ( if false then Bool else Bool )
    d114 = ( ( M.d65 ) $ ( if true then d105 else d105 ) ) $ ( if d102 then false else d110 )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( M.d84 ) $ ( ( ( M.d54 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( M.d99 ) $ ( d114 ) ) $ ( true ) )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x122 -> if true then x122 else Bool ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d105 ) ) ) $ ( x120 ) ) ) ) $ ( if true then true else d105 )
    d123 : if false then if false then Bool else Bool else if false then Bool else Bool
    d123 = if if d107 then true else d102 then if true then d112 else d105 else if d105 then d119 else d102
    d124 : if false then if false then Bool else Bool else if false then Bool else Bool
    d124 = if if d116 then d114 else true then if d119 then d116 else true else if d114 then d112 else false
    d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> if true then x127 else x127 ) ) ) $ ( if true then Bool else Bool )
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( M.d19 ) $ ( if d102 then d102 else x126 ) ) $ ( if x126 then true else d105 ) ) ) ) $ ( if true then false else d116 )
    d128 : if false then if true then Bool else Bool else if false then Bool else Bool
    d128 = if if d123 then d125 else d112 then if true then false else d125 else if false then d107 else true
    d129 : if true then if true then Bool else Bool else if true then Bool else Bool
    d129 = ( ( M.d87 ) $ ( ( ( M.d5 ) $ ( false ) ) $ ( false ) ) ) $ ( if false then d107 else true )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x133 ) ) ) $ ( x132 ) ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( M.d22 ) $ ( if d105 then d112 else d114 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x131 -> d114 ) ) ) $ ( false ) )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if true then x136 else Bool ) ) ) $ ( if true then Bool else Bool )
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> if d130 then true else d119 ) ) ) $ ( if d114 then false else true )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x139 -> if true then x139 else Bool ) ) ) $ ( if false then Bool else Bool )
    d137 = ( ( M.d13 ) $ ( ( ( M.d54 ) $ ( d110 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> d105 ) ) ) $ ( d107 ) )
    d140 : if true then if true then Bool else Bool else if false then Bool else Bool
    d140 = if if d107 then false else d102 then if d116 then true else d129 else if d129 then d123 else true
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d141 = if if true then false else false then if d119 then false else d105 else if d130 then true else true
    d144 : if false then if false then Bool else Bool else if false then Bool else Bool
    d144 = if if false then false else d110 then if d134 then true else false else if d137 then d134 else d129
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d145 = if if false then d130 else true then if true then false else false else if false then d116 else false
    d148 : if true then if true then Bool else Bool else if true then Bool else Bool
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> if false then d107 else false ) ) ) $ ( if true then d123 else true )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> ( ( Bool -> Bool ) ∋ ( ( λ x152 -> true ) ) ) $ ( d116 ) ) ) ) $ ( if true then d102 else false )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> x157 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( M.d84 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x156 -> d137 ) ) ) $ ( d150 ) ) ) $ ( ( ( M.d73 ) $ ( false ) ) $ ( d107 ) )
    d159 : if false then if true then Bool else Bool else if false then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if x160 then d102 else false ) ) ) $ ( if d145 then d119 else d110 )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( M.d60 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> true ) ) ) $ ( d141 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x163 -> x163 ) ) ) $ ( false ) )
    d166 : if false then if false then Bool else Bool else if false then Bool else Bool
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( M.d41 ) $ ( if x167 then false else true ) ) $ ( if false then x167 else true ) ) ) ) $ ( if false then false else d123 )
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d168 = if if d140 then false else true then if d102 then d140 else d114 else if true then false else true
    d170 : if false then if true then Bool else Bool else if true then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> false ) ) ) $ ( false ) ) ) ) $ ( if d134 then d110 else true )
    d173 : if false then if false then Bool else Bool else if true then Bool else Bool
    d173 = ( ( M.d81 ) $ ( ( ( M.d8 ) $ ( d166 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x174 -> d102 ) ) ) $ ( d112 ) )
    d175 : if false then if false then Bool else Bool else if true then Bool else Bool
    d175 = ( ( M.d41 ) $ ( ( ( M.d19 ) $ ( true ) ) $ ( d145 ) ) ) $ ( ( ( M.d43 ) $ ( d116 ) ) $ ( true ) )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if false then Bool else x177 ) ) ) $ ( if false then Bool else Bool )
    d176 = if if d137 then false else false then if false then true else true else if false then true else true
    d178 : if false then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if x179 then d145 else x179 ) ) ) $ ( if false then d128 else d123 )
    d180 : if false then if false then Bool else Bool else if true then Bool else Bool
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> ( ( Bool -> Bool ) ∋ ( ( λ x182 -> d130 ) ) ) $ ( false ) ) ) ) $ ( if d130 then d176 else d119 )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if false then x184 else x184 ) ) ) $ ( if true then Bool else Bool )
    d183 = if if d176 then false else false then if d144 then d141 else true else if d176 then true else d155
    d185 : if false then if false then Bool else Bool else if true then Bool else Bool
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> x187 ) ) ) $ ( d137 ) ) ) ) $ ( if d105 then false else d183 )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> Bool ) ) ) $ ( x189 ) ) ) ) $ ( if true then Bool else Bool )
    d188 = if if d125 then false else false then if d110 then true else true else if true then false else false
    d191 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> x194 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( M.d8 ) $ ( ( ( M.d59 ) $ ( d102 ) ) $ ( d102 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x192 -> x192 ) ) ) $ ( false ) )
    d195 : if true then if true then Bool else Bool else if true then Bool else Bool
    d195 = if if d168 then d102 else d134 then if false then false else false else if false then true else d110
    d196 : ( ( Set -> Set ) ∋ ( ( λ x198 -> ( ( Set -> Set ) ∋ ( ( λ x199 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> ( ( M.d99 ) $ ( if d173 then x197 else d191 ) ) $ ( if false then x197 else x197 ) ) ) ) $ ( if false then true else d130 )
    d200 : if false then if false then Bool else Bool else if false then Bool else Bool
    d200 = ( ( M.d41 ) $ ( ( ( M.d87 ) $ ( false ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x201 -> false ) ) ) $ ( d129 ) )