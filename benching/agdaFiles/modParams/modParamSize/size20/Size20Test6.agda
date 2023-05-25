module Size20Test6  where
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

    module M ( p1 : if true then if false then Bool else Bool else if false then Bool else Bool ) ( p2 : if false then ( ( Set -> Set ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4 -> x4 ) ) ) $ ( Bool ) )  where
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if p1 then p2 else true ) ) ) $ ( if p1 then p1 else p1 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x9 ) ) ) $ ( x9 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if d5 then d5 else d5 ) ) ) $ ( if true then p2 else false )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> x12 ) ) ) $ ( x12 ) ) ) ) $ ( if false then Bool else Bool )
        d11 = if if p2 then p1 else true then if false then p2 else p1 else if p2 then d5 else d7
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if true then x15 else Bool ) ) ) $ ( if false then Bool else Bool )
        d14 = if if d7 then d7 else p2 then if d5 then d11 else d5 else if true then d11 else true
        d16 : if false then if true then Bool else Bool else if true then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( d14 ) ) ) ) $ ( if d7 then true else p2 )
        d19 : if true then if true then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if d5 then d14 else d16 ) ) ) $ ( if d5 then false else d7 )
        d21 : if true then if true then Bool else Bool else if false then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if p1 then p1 else false ) ) ) $ ( if false then p1 else true )
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> ( ( Set -> Set ) ∋ ( ( λ x25 -> x24 ) ) ) $ ( x24 ) ) ) ) $ ( if false then Bool else Bool )
        d23 = if if true then d16 else p2 then if p1 then p2 else d7 else if p2 then d5 else p2
        d26 : if false then if true then Bool else Bool else if true then Bool else Bool
        d26 = if if false then p2 else p1 then if true then p2 else true else if p1 then true else p1
        d27 : if true then if false then Bool else Bool else if true then Bool else Bool
        d27 = if if d11 then d16 else d19 then if false then p2 else d14 else if true then true else p2
        d28 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x30 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if d11 then d5 else x29 ) ) ) $ ( if d11 then false else false )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> x33 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if p1 then d19 else d26 then if p2 then true else false else if false then true else false
        d35 : ( ( Set -> Set ) ∋ ( ( λ x38 -> if true then x38 else x38 ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if d19 then d16 else p1 )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if d16 then false else true then if d7 then p1 else false else if p2 then p2 else p1
        d42 : if false then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if p1 then p1 else d21 then if d7 then d28 else d23 else if true then d35 else p2
        d43 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> if d19 then d42 else x44 ) ) ) $ ( if p1 then p1 else p1 )
        d47 : if true then if true then Bool else Bool else if true then Bool else Bool
        d47 = if if p2 then p2 else false then if false then false else false else if p2 then d43 else d11
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then x49 else Bool ) ) ) $ ( if true then Bool else Bool )
        d48 = if if d39 then p1 else false then if d27 then true else true else if p1 then false else false
        d50 : if true then if true then Bool else Bool else if false then Bool else Bool
        d50 = if if true then p2 else d16 then if true then p1 else d27 else if d28 then p2 else true
        d51 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( x53 ) ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> if d39 then p2 else d16 ) ) ) $ ( if true then p1 else p2 )
        d55 : if true then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if false then true else false then if true then p1 else d43 else if p2 then p2 else false
        d56 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then x59 else x59 ) ) ) $ ( if true then Bool else Bool )
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> x57 ) ) ) $ ( true ) ) ) ) $ ( if p2 then true else p2 )
        d60 : if true then if true then Bool else Bool else if true then Bool else Bool
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if d11 then d43 else p1 ) ) ) $ ( if true then true else d35 )
        d62 : if false then if false then Bool else Bool else if false then Bool else Bool
        d62 = if if d32 then d32 else p2 then if p2 then p2 else d43 else if p1 then d35 else p1
        d63 : if true then if true then Bool else Bool else if false then Bool else Bool
        d63 = if if d43 then false else d23 then if false then d47 else true else if true then p2 else d60
        d64 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( x67 ) ) ) ) $ ( if true then Bool else Bool )
        d64 = ( ( Bool -> Bool ) ∋ ( ( λ x65 -> ( ( Bool -> Bool ) ∋ ( ( λ x66 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d7 else d48 )
        d69 : if false then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> ( ( Bool -> Bool ) ∋ ( ( λ x71 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if d19 then d16 else p2 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if true then x73 else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = if if d64 then d64 else p2 then if p2 then d64 else d32 else if true then false else p1
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> if d35 then p1 else false ) ) ) $ ( if false then false else d48 )
        d76 : if true then if false then Bool else Bool else if false then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if p2 then false else p2 ) ) ) $ ( if d62 then d21 else p1 )
        d78 : if true then if false then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d51 then false else p2 ) ) ) $ ( if false then p1 else true )
        d80 : if false then if false then Bool else Bool else if false then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if p2 then d69 else false ) ) ) $ ( if d11 then true else false )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d82 = if if d62 then d48 else false then if d78 then true else d35 else if d5 then true else false
        d84 : if true then if true then Bool else Bool else if false then Bool else Bool
        d84 = if if d48 then d43 else d28 then if d63 then p1 else p1 else if true then true else false
        d85 : if true then if true then Bool else Bool else if true then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> if true then d84 else p2 ) ) ) $ ( if d50 then p1 else false )
        d87 : if false then if true then Bool else Bool else if false then Bool else Bool
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> ( ( Bool -> Bool ) ∋ ( ( λ x89 -> false ) ) ) $ ( true ) ) ) ) $ ( if d56 then d74 else d39 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if false then x93 else Bool ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> p1 ) ) ) $ ( x91 ) ) ) ) $ ( if p1 then p2 else d51 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if true then x96 else x96 ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if false then true else false ) ) ) $ ( if true then d64 else d23 )
        d97 : if true then if false then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d69 ) ) ) $ ( false ) ) ) ) $ ( if true then p2 else d19 )
        d100 : if false then if false then Bool else Bool else if false then Bool else Bool
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> false ) ) ) $ ( true ) ) ) ) $ ( if d69 then d19 else d14 )
    d103 : if true then if false then Bool else Bool else if false then Bool else Bool
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if x104 then false else x104 ) ) ) $ ( if true then true else false )
    d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if true then Bool else x106 ) ) ) $ ( if false then Bool else Bool )
    d105 = if if d103 then false else true then if d103 then true else d103 else if false then true else false
    d107 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> ( ( Bool -> Bool ) ∋ ( ( λ x109 -> true ) ) ) $ ( d105 ) ) ) ) $ ( if d105 then d103 else false )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if false then Bool else x113 ) ) ) $ ( if false then Bool else Bool )
    d112 = if if true then d105 else true then if true then d103 else true else if d103 then true else true
    d114 : if true then if true then Bool else Bool else if true then Bool else Bool
    d114 = if if d112 then true else d105 then if d105 then d112 else d107 else if d103 then false else false
    d115 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> x118 ) ) ) $ ( x117 ) ) ) ) $ ( if false then Bool else Bool )
    d115 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x116 -> x116 ) ) ) $ ( false ) ) ) $ ( if d105 then d105 else d114 )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( x121 ) ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( M.d21 ) $ ( if x120 then x120 else d114 ) ) $ ( if d112 then x120 else x120 ) ) ) ) $ ( if false then true else d114 )
    d123 : if true then if false then Bool else Bool else if false then Bool else Bool
    d123 = if if d105 then d115 else false then if true then d112 else false else if d114 then true else d119
    d124 : if false then if false then Bool else Bool else if true then Bool else Bool
    d124 = if if d123 then false else true then if false then true else d119 else if d103 then false else true
    d125 : if true then if false then Bool else Bool else if true then Bool else Bool
    d125 = if if d105 then d107 else true then if false then d115 else true else if d112 then d119 else true
    d126 : if true then if true then Bool else Bool else if false then Bool else Bool
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> ( ( Bool -> Bool ) ∋ ( ( λ x128 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then d112 else d105 )
    d129 : if true then if false then Bool else Bool else if true then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( Bool -> Bool ) ∋ ( ( λ x131 -> true ) ) ) $ ( x130 ) ) ) ) $ ( if true then d112 else d119 )
    d132 : if true then if false then Bool else Bool else if true then Bool else Bool
    d132 = ( ( M.d23 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x133 -> d103 ) ) ) $ ( d107 ) ) ) $ ( if d115 then d105 else false )
    d134 : if false then if false then Bool else Bool else if false then Bool else Bool
    d134 = if if d105 then false else d114 then if false then d114 else d124 else if d132 then d112 else false
    d135 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> x136 ) ) ) $ ( false ) ) ) ) $ ( if false then d124 else true )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( M.d39 ) $ ( if x141 then x141 else false ) ) $ ( if d135 then d119 else x141 ) ) ) ) $ ( if d132 then d135 else false )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> ( ( Bool -> Bool ) ∋ ( ( λ x146 -> x146 ) ) ) $ ( x145 ) ) ) ) $ ( if false then true else d105 )
    d148 : if false then if true then Bool else Bool else if true then Bool else Bool
    d148 = if if d144 then d134 else true then if d134 then false else false else if false then d125 else d115
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( M.d85 ) $ ( if d126 then true else false ) ) $ ( ( ( M.d7 ) $ ( d114 ) ) $ ( false ) )
    d152 : if false then if true then Bool else Bool else if true then Bool else Bool
    d152 = ( ( M.d14 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x153 -> d114 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x154 -> x154 ) ) ) $ ( d129 ) )
    d155 : if true then if true then Bool else Bool else if false then Bool else Bool
    d155 = if if true then true else false then if d140 then true else true else if d144 then true else true
    d156 : if false then if false then Bool else Bool else if true then Bool else Bool
    d156 = if if d126 then d134 else true then if d155 then false else d140 else if d144 then d149 else d148
    d157 : if false then if true then Bool else Bool else if false then Bool else Bool
    d157 = ( ( Bool -> Bool ) ∋ ( ( λ x158 -> ( ( Bool -> Bool ) ∋ ( ( λ x159 -> d107 ) ) ) $ ( x158 ) ) ) ) $ ( if false then false else d107 )
    d160 : if true then if true then Bool else Bool else if false then Bool else Bool
    d160 = if if d123 then d124 else d119 then if d156 then true else true else if true then true else false
    d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> x163 ) ) ) $ ( x163 ) ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( M.d14 ) $ ( if x162 then d148 else true ) ) $ ( if true then false else false ) ) ) ) $ ( if d144 then false else d134 )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x167 ) ) ) $ ( x167 ) ) ) ) $ ( if false then Bool else Bool )
    d165 = ( ( M.d94 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> d148 ) ) ) $ ( d123 ) ) ) $ ( ( ( M.d56 ) $ ( true ) ) $ ( d126 ) )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> x171 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> ( ( M.d21 ) $ ( if x170 then x170 else x170 ) ) $ ( if d132 then false else false ) ) ) ) $ ( if d160 then d114 else d129 )
    d173 : if false then if false then Bool else Bool else if false then Bool else Bool
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> if d124 then d135 else d107 ) ) ) $ ( if d103 then true else true )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> if true then x176 else Bool ) ) ) $ ( if true then Bool else Bool )
    d175 = if if d105 then true else false then if true then false else false else if d161 then d125 else d148
    d177 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if false then Bool else x180 ) ) ) $ ( if false then Bool else Bool )
    d177 = ( ( M.d21 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> x178 ) ) ) $ ( d115 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x179 -> d114 ) ) ) $ ( true ) )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x183 -> if false then Bool else x183 ) ) ) $ ( if false then Bool else Bool )
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if x182 then false else x182 ) ) ) $ ( if d126 then d129 else false )
    d184 : if false then if false then Bool else Bool else if true then Bool else Bool
    d184 = if if false then d103 else d105 then if d155 then false else d135 else if d144 then d152 else false
    d185 : if true then if false then Bool else Bool else if false then Bool else Bool
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> if x186 then d129 else false ) ) ) $ ( if d157 then d124 else true )
    d187 : if true then if false then Bool else Bool else if false then Bool else Bool
    d187 = if if false then d156 else true then if true then false else d165 else if d177 then d132 else d148
    d188 : if true then if true then Bool else Bool else if false then Bool else Bool
    d188 = ( ( M.d26 ) $ ( ( ( M.d48 ) $ ( d148 ) ) $ ( d107 ) ) ) $ ( ( ( M.d21 ) $ ( d181 ) ) $ ( true ) )
    d189 : if false then if true then Bool else Bool else if true then Bool else Bool
    d189 = ( ( M.d56 ) $ ( ( ( M.d11 ) $ ( true ) ) $ ( d114 ) ) ) $ ( ( ( M.d87 ) $ ( d135 ) ) $ ( false ) )
    d190 : if false then if true then Bool else Bool else if false then Bool else Bool
    d190 = ( ( M.d56 ) $ ( if true then d103 else d114 ) ) $ ( if d185 then false else true )
    d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> x193 ) ) ) $ ( x192 ) ) ) ) $ ( if false then Bool else Bool )
    d191 = ( ( M.d39 ) $ ( if false then false else true ) ) $ ( ( ( M.d11 ) $ ( d107 ) ) $ ( false ) )
    d194 : if true then if true then Bool else Bool else if true then Bool else Bool
    d194 = ( ( M.d55 ) $ ( if false then d177 else true ) ) $ ( ( ( M.d16 ) $ ( d114 ) ) $ ( d188 ) )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x197 -> if false then x197 else x197 ) ) ) $ ( if false then Bool else Bool )
    d195 = ( ( M.d97 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> true ) ) ) $ ( false ) ) ) $ ( if d155 then false else d190 )