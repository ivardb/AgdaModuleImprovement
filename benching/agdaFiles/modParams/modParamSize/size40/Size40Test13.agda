module Size40Test13  where
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

    module M ( p1 : if false then ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> x4 ) ) ) $ ( x4 ) ) ) ) $ ( Bool ) ) ( p6 : if false then if false then if true then Bool else Bool else if true then Bool else Bool else if true then if true then Bool else Bool else if false then Bool else Bool )  where
        d7 : if true then if true then Bool else Bool else if false then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> ( ( Bool -> Bool ) ∋ ( ( λ x9 -> p6 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p6 else false )
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x11 ) ) ) $ ( x11 ) ) ) ) $ ( if false then Bool else Bool )
        d10 = if if false then d7 else true then if d7 then d7 else true else if p1 then p1 else d7
        d13 : if true then if true then Bool else Bool else if true then Bool else Bool
        d13 = if if d7 then d7 else false then if true then p1 else false else if p6 then p1 else d10
        d14 : if false then if false then Bool else Bool else if true then Bool else Bool
        d14 = if if d13 then d13 else p6 then if p6 then true else p6 else if p1 then false else d10
        d15 : if true then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if true then d14 else p1 then if false then false else p1 else if true then p6 else p1
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x18 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d16 = if if false then d10 else p1 then if d13 then p6 else false else if p1 then d13 else d14
        d19 : if true then if true then Bool else Bool else if true then Bool else Bool
        d19 = if if d14 then true else p1 then if false then p1 else false else if d10 then false else false
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = if if false then false else p6 then if true then p6 else d19 else if d13 then p6 else p6
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> x23 ) ) ) $ ( x23 ) ) ) ) $ ( if true then Bool else Bool )
        d22 = if if p1 then p6 else d13 then if d7 then true else d10 else if p1 then true else d20
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then x26 else x26 ) ) ) $ ( if true then Bool else Bool )
        d25 = if if d13 then true else false then if d22 then d19 else d10 else if p1 then true else d19
        d27 : if false then if true then Bool else Bool else if false then Bool else Bool
        d27 = if if false then true else true then if p1 then d15 else true else if true then p6 else p1
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if true then x29 else x29 ) ) ) $ ( if false then Bool else Bool )
        d28 = if if p1 then d16 else true then if true then d19 else p6 else if p1 then false else true
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> d22 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d22 else d20 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x38 -> ( ( Set -> Set ) ∋ ( ( λ x39 -> x38 ) ) ) $ ( x38 ) ) ) ) $ ( if true then Bool else Bool )
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> ( ( Bool -> Bool ) ∋ ( ( λ x37 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d13 else d28 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x41 -> if false then x41 else Bool ) ) ) $ ( if false then Bool else Bool )
        d40 = if if d20 then d13 else true then if true then d14 else p6 else if d14 then d14 else false
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if false then false else d19 then if p1 then p6 else true else if d25 then false else false
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> x46 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p6 else false )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> ( ( Bool -> Bool ) ∋ ( ( λ x50 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then true else false )
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then x55 else Bool ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> false ) ) ) $ ( x53 ) ) ) ) $ ( if false then p1 else false )
        d56 : if true then if false then Bool else Bool else if false then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if false then true else true ) ) ) $ ( if false then false else p1 )
        d58 : if true then if false then Bool else Bool else if false then Bool else Bool
        d58 = if if d48 then d56 else p1 then if d35 then p1 else true else if p6 then d19 else d20
        d59 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d59 = if if false then false else p1 then if p1 then d16 else d16 else if d25 then true else false
        d62 : if true then if true then Bool else Bool else if false then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if p1 then true else x63 ) ) ) $ ( if d48 then p6 else d40 )
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if p1 then d22 else p1 then if d58 then d22 else d27 else if p6 then d45 else p6
        d65 : if false then if true then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> true ) ) ) $ ( false ) ) ) ) $ ( if p1 then p6 else d19 )
        d68 : if true then if false then Bool else Bool else if false then Bool else Bool
        d68 = if if true then true else false then if d62 then p6 else p1 else if p6 then p6 else d7
        d69 : if true then if true then Bool else Bool else if false then Bool else Bool
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if p6 then d56 else x70 ) ) ) $ ( if d14 then true else p1 )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if true then p6 else x72 ) ) ) $ ( if p1 then d19 else p1 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x78 -> if false then x78 else x78 ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> true ) ) ) $ ( d59 ) ) ) ) $ ( if false then false else p6 )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x80 -> if false then x80 else x80 ) ) ) $ ( if false then Bool else Bool )
        d79 = if if p1 then d19 else false then if d42 then p6 else p6 else if true then p1 else true
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d15 ) ) ) $ ( p6 ) ) ) ) $ ( if d20 then d48 else d52 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else x87 ) ) ) $ ( if true then Bool else Bool )
        d86 = if if d19 then true else d79 then if false then d71 else true else if true then d25 else p6
        d88 : if false then if true then Bool else Bool else if false then Bool else Bool
        d88 = if if true then d15 else d40 then if d7 then true else p6 else if d62 then p1 else false
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then x91 else Bool ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if true then d10 else false ) ) ) $ ( if d22 then true else p6 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else x93 ) ) ) $ ( if true then Bool else Bool )
        d92 = if if p1 then d14 else d86 then if d14 then d27 else d22 else if true then p6 else d52
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> false ) ) ) $ ( d75 ) ) ) ) $ ( if p1 then p6 else p1 )
        d97 : if true then if true then Bool else Bool else if false then Bool else Bool
        d97 = if if d75 then d94 else false then if p6 then p1 else d28 else if p1 then p1 else false
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d98 = if if d15 then d28 else p1 then if d97 then d92 else true else if p6 then d88 else p1
        d101 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if false then false else p1 ) ) ) $ ( if false then false else d62 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> false ) ) ) $ ( x106 ) ) ) ) $ ( if p1 then p1 else d25 )
    d110 : if false then if true then Bool else Bool else if true then Bool else Bool
    d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> ( ( M.d10 ) $ ( if x111 then x111 else true ) ) $ ( if false then x111 else false ) ) ) ) $ ( if false then true else true )
    d112 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if false then x114 else Bool ) ) ) $ ( if true then Bool else Bool )
    d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> if x113 then d110 else true ) ) ) $ ( if true then false else true )
    d115 : ( ( Set -> Set ) ∋ ( ( λ x116 -> ( ( Set -> Set ) ∋ ( ( λ x117 -> x117 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d115 = if if true then false else d112 then if d110 then true else true else if false then true else true
    d118 : if false then if true then Bool else Bool else if false then Bool else Bool
    d118 = ( ( M.d59 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> d110 ) ) ) $ ( d112 ) ) ) $ ( ( ( M.d40 ) $ ( false ) ) $ ( true ) )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x123 -> ( ( Set -> Set ) ∋ ( ( λ x124 -> Bool ) ) ) $ ( x123 ) ) ) ) $ ( if true then Bool else Bool )
    d120 = ( ( M.d10 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x121 -> d118 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> true ) ) ) $ ( true ) )
    d125 : if false then if true then Bool else Bool else if false then Bool else Bool
    d125 = ( ( M.d64 ) $ ( ( ( M.d30 ) $ ( d112 ) ) $ ( true ) ) ) $ ( if d112 then d110 else d112 )
    d126 : if true then if true then Bool else Bool else if false then Bool else Bool
    d126 = if if false then d112 else d120 then if d115 then false else false else if d110 then d118 else false
    d127 : if true then if false then Bool else Bool else if true then Bool else Bool
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( M.d64 ) $ ( if x128 then true else true ) ) $ ( if x128 then x128 else d110 ) ) ) ) $ ( if false then d112 else d115 )
    d129 : if false then if true then Bool else Bool else if true then Bool else Bool
    d129 = ( ( M.d75 ) $ ( ( ( M.d97 ) $ ( d125 ) ) $ ( false ) ) ) $ ( ( ( M.d45 ) $ ( d110 ) ) $ ( d126 ) )
    d130 : if true then if false then Bool else Bool else if false then Bool else Bool
    d130 = if if false then true else d126 then if d112 then d120 else false else if true then false else false
    d131 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d131 = ( ( M.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x132 -> d129 ) ) ) $ ( true ) ) ) $ ( if d118 then d127 else true )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if false then x138 else x138 ) ) ) $ ( if true then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> d125 ) ) ) $ ( true ) ) ) ) $ ( if d127 then d115 else d118 )
    d139 : if false then if true then Bool else Bool else if false then Bool else Bool
    d139 = ( ( M.d98 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x140 -> x140 ) ) ) $ ( true ) ) ) $ ( if true then false else true )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d141 = if if d139 then true else d112 then if d112 then true else d125 else if d110 then true else d131
    d144 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d144 = ( ( M.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d115 ) ) ) $ ( d126 ) ) ) $ ( ( ( M.d105 ) $ ( d129 ) ) $ ( d139 ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( x150 ) ) ) ) $ ( if false then Bool else Bool )
    d148 = ( ( M.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x149 -> d141 ) ) ) $ ( d127 ) ) ) $ ( if d127 then false else d144 )
    d152 : if false then if true then Bool else Bool else if false then Bool else Bool
    d152 = ( ( M.d65 ) $ ( ( ( M.d92 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x153 -> x153 ) ) ) $ ( d126 ) )
    d154 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then x157 else Bool ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( M.d75 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x155 -> true ) ) ) $ ( d115 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x156 -> d152 ) ) ) $ ( d141 ) )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if false then x159 else Bool ) ) ) $ ( if true then Bool else Bool )
    d158 = if if d127 then true else false then if d135 then d110 else true else if d135 then d118 else d154
    d160 : ( ( Set -> Set ) ∋ ( ( λ x161 -> if false then Bool else x161 ) ) ) $ ( if true then Bool else Bool )
    d160 = if if d131 then d129 else false then if d154 then true else d135 else if false then true else d129
    d162 : if false then if false then Bool else Bool else if true then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if false then false else x163 ) ) ) $ ( if d130 then false else false )
    d164 : if true then if true then Bool else Bool else if true then Bool else Bool
    d164 = if if d118 then d148 else true then if d160 then true else d126 else if d125 then d131 else false
    d165 : if false then if true then Bool else Bool else if false then Bool else Bool
    d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( M.d81 ) $ ( if false then d141 else false ) ) $ ( if x166 then false else x166 ) ) ) ) $ ( if false then d144 else d154 )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( x168 ) ) ) ) $ ( if true then Bool else Bool )
    d167 = if if d148 then d165 else true then if false then true else false else if false then d162 else true
    d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> x174 ) ) ) $ ( x173 ) ) ) ) $ ( if true then Bool else Bool )
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> x172 ) ) ) $ ( x171 ) ) ) ) $ ( if d162 then false else true )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d175 = ( ( M.d35 ) $ ( ( ( M.d16 ) $ ( true ) ) $ ( d112 ) ) ) $ ( if d118 then false else true )
    d178 : if false then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> if true then d144 else false ) ) ) $ ( if d135 then d165 else d127 )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> if true then Bool else x181 ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( M.d13 ) $ ( ( ( M.d40 ) $ ( d167 ) ) $ ( d126 ) ) ) $ ( ( ( M.d7 ) $ ( d175 ) ) $ ( false ) )
    d182 : if false then if false then Bool else Bool else if false then Bool else Bool
    d182 = ( ( M.d64 ) $ ( if d152 then d110 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x183 -> x183 ) ) ) $ ( d141 ) )
    d184 : if false then if false then Bool else Bool else if true then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> d127 ) ) ) $ ( false ) ) ) ) $ ( if false then d129 else true )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d187 = if if true then d182 else false then if false then d164 else d162 else if true then d144 else true
    d190 : ( ( Set -> Set ) ∋ ( ( λ x193 -> ( ( Set -> Set ) ∋ ( ( λ x194 -> x193 ) ) ) $ ( x193 ) ) ) ) $ ( if false then Bool else Bool )
    d190 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x191 -> false ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x192 -> d141 ) ) ) $ ( d162 ) )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x196 -> if true then x196 else x196 ) ) ) $ ( if true then Bool else Bool )
    d195 = ( ( M.d101 ) $ ( if false then d139 else d187 ) ) $ ( ( ( M.d19 ) $ ( d165 ) ) $ ( false ) )
    d197 : if true then if false then Bool else Bool else if true then Bool else Bool
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> if d126 then false else x198 ) ) ) $ ( if d135 then d167 else d144 )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x201 -> if true then Bool else x201 ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( M.d69 ) $ ( if x200 then true else x200 ) ) $ ( if d118 then true else d115 ) ) ) ) $ ( if d167 then d112 else true )
    d202 : if true then if true then Bool else Bool else if false then Bool else Bool
    d202 = if if d170 then false else d197 then if d187 then true else false else if d130 then false else false
    d203 : if true then if false then Bool else Bool else if false then Bool else Bool
    d203 = if if d141 then false else true then if d118 then false else false else if true then d126 else d118
    d204 : ( ( Set -> Set ) ∋ ( ( λ x206 -> if true then x206 else Bool ) ) ) $ ( if false then Bool else Bool )
    d204 = ( ( Bool -> Bool ) ∋ ( ( λ x205 -> ( ( M.d86 ) $ ( if false then x205 else x205 ) ) $ ( if true then true else d197 ) ) ) ) $ ( if true then d182 else d112 )
    d207 : if true then if true then Bool else Bool else if true then Bool else Bool
    d207 = ( ( M.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x208 -> d131 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x209 -> false ) ) ) $ ( d127 ) )
    d210 : if true then if true then Bool else Bool else if false then Bool else Bool
    d210 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x211 -> d160 ) ) ) $ ( false ) ) ) $ ( if true then false else false )