module Size20Test7  where
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

    module M ( p1 : if false then ( ( Set -> Set ) ∋ ( ( λ x2 -> x2 ) ) ) $ ( Bool ) else ( ( Set -> Set ) ∋ ( ( λ x3 -> Bool ) ) ) $ ( Bool ) ) ( p4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then Bool else Bool ) ) ) $ ( x5 ) ) ) ) $ ( if true then Bool else Bool ) )  where
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( x8 ) ) ) ) $ ( if false then Bool else Bool )
        d7 = if if true then false else true then if p4 then false else true else if p4 then p1 else p1
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> false ) ) ) $ ( d7 ) ) ) ) $ ( if p1 then p4 else p1 )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> x16 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if p4 then p1 else d10 then if true then true else p4 else if d7 then d10 else d7
        d18 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if true then p4 else true ) ) ) $ ( if d15 then p4 else true )
        d21 : if false then if true then Bool else Bool else if true then Bool else Bool
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if true then d10 else p4 ) ) ) $ ( if p4 then p4 else p4 )
        d23 : if false then if true then Bool else Bool else if false then Bool else Bool
        d23 = ( ( Bool -> Bool ) ∋ ( ( λ x24 -> if p1 then false else false ) ) ) $ ( if p4 then d7 else p4 )
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = if if p1 then d7 else d15 then if true then d18 else p1 else if false then d23 else false
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d10 ) ) ) $ ( true ) ) ) ) $ ( if p4 then d15 else p4 )
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = if if d10 then d25 else d10 then if d15 then false else false else if d23 then d10 else d18
        d30 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if true then x31 else x31 ) ) ) $ ( if true then Bool else Bool )
        d30 = if if d7 then d29 else d21 then if p1 then true else false else if false then d21 else d23
        d32 : if false then if false then Bool else Bool else if true then Bool else Bool
        d32 = if if p4 then p1 else p4 then if false then p1 else d26 else if d21 then p1 else d25
        d33 : if false then if true then Bool else Bool else if false then Bool else Bool
        d33 = ( ( Bool -> Bool ) ∋ ( ( λ x34 -> if false then d25 else p4 ) ) ) $ ( if true then p4 else d18 )
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d35 = if if d10 then p4 else true then if d25 then d21 else true else if d10 then d18 else d33
        d38 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if false then d23 else true ) ) ) $ ( if p1 then d30 else d30 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( x43 ) ) ) ) $ ( if true then Bool else Bool )
        d42 = if if d18 then p1 else d29 then if true then p4 else d25 else if p4 then false else d29
        d45 : if false then if false then Bool else Bool else if false then Bool else Bool
        d45 = if if false then p4 else p4 then if d25 then false else d25 else if true then d7 else true
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = if if d26 then p1 else d25 then if true then p4 else false else if d35 then d23 else true
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x53 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> d29 ) ) ) $ ( false ) ) ) ) $ ( if d15 then p1 else p4 )
        d54 : if false then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if true then false else d7 then if p1 then d33 else p1 else if d32 then p1 else p1
        d55 : if true then if true then Bool else Bool else if true then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> d21 ) ) ) $ ( d46 ) ) ) ) $ ( if d46 then true else true )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x61 -> ( ( Set -> Set ) ∋ ( ( λ x62 -> Bool ) ) ) $ ( x61 ) ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> ( ( Bool -> Bool ) ∋ ( ( λ x60 -> d32 ) ) ) $ ( false ) ) ) ) $ ( if d45 then d38 else false )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> ( ( Set -> Set ) ∋ ( ( λ x66 -> x65 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if p1 then d29 else d46 ) ) ) $ ( if p1 then false else d21 )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> x69 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d67 = if if d35 then true else true then if true then p1 else d42 else if false then p1 else d7
        d70 : if true then if true then Bool else Bool else if false then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> if true then p1 else p4 ) ) ) $ ( if p1 then false else p1 )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x75 -> ( ( Set -> Set ) ∋ ( ( λ x76 -> x76 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> ( ( Bool -> Bool ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else false )
        d77 : if true then if false then Bool else Bool else if false then Bool else Bool
        d77 = if if d29 then d49 else p1 then if p4 then p4 else d46 else if true then d25 else p1
        d78 : if false then if true then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> x79 ) ) ) $ ( x79 ) ) ) ) $ ( if d58 then d25 else d10 )
        d81 : if false then if true then Bool else Bool else if true then Bool else Bool
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> p1 ) ) ) $ ( x82 ) ) ) ) $ ( if true then d30 else p4 )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d84 = if if d70 then p4 else d25 then if p1 then true else p1 else if false then d54 else d49
        d87 : if true then if true then Bool else Bool else if false then Bool else Bool
        d87 = if if false then d18 else p1 then if false then p1 else p1 else if d26 then true else false
        d88 : if true then if false then Bool else Bool else if true then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if p4 then false else d54 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( x94 ) ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then true else p1 )
        d96 : if true then if false then Bool else Bool else if false then Bool else Bool
        d96 = if if true then d84 else p1 then if p4 then false else true else if d21 then d35 else d87
        d97 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> x100 ) ) ) $ ( x99 ) ) ) ) $ ( if true then Bool else Bool )
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if d81 then false else p1 ) ) ) $ ( if false then d46 else p4 )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d101 = if if d77 then false else p4 then if d32 then d78 else false else if p4 then d18 else true
        d104 : if true then if false then Bool else Bool else if true then Bool else Bool
        d104 = if if true then false else p1 then if d78 then true else p1 else if p1 then p4 else d88
        d105 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> ( ( Bool -> Bool ) ∋ ( ( λ x107 -> x107 ) ) ) $ ( false ) ) ) ) $ ( if d49 then d30 else true )
        d110 : ( ( Set -> Set ) ∋ ( ( λ x112 -> if false then x112 else Bool ) ) ) $ ( if false then Bool else Bool )
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if p4 then false else false ) ) ) $ ( if d101 then false else false )
        d113 : if false then if false then Bool else Bool else if true then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> if x114 then d72 else true ) ) ) $ ( if false then false else p1 )
        d115 : ( ( Set -> Set ) ∋ ( ( λ x117 -> if true then x117 else Bool ) ) ) $ ( if true then Bool else Bool )
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> if true then d63 else d54 ) ) ) $ ( if true then d67 else d78 )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x121 ) ) ) $ ( x121 ) ) ) ) $ ( if false then Bool else Bool )
    d118 = ( ( M.d110 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x120 -> x120 ) ) ) $ ( true ) )
    d123 : if false then if false then Bool else Bool else if false then Bool else Bool
    d123 = if if d118 then true else true then if false then d118 else false else if d118 then true else false
    d124 : if true then if false then Bool else Bool else if false then Bool else Bool
    d124 = if if true then true else true then if true then d123 else d118 else if true then true else d123
    d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if d123 then false else true ) ) ) $ ( if d123 then true else d124 )
    d129 : if true then if false then Bool else Bool else if false then Bool else Bool
    d129 = if if false then false else false then if true then false else d123 else if false then true else true
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d130 = if if d125 then false else d123 then if true then d125 else false else if false then false else true
    d133 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if true then x136 else x136 ) ) ) $ ( if false then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( Bool -> Bool ) ∋ ( ( λ x135 -> true ) ) ) $ ( true ) ) ) ) $ ( if d118 then d118 else true )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x138 -> if false then Bool else x138 ) ) ) $ ( if false then Bool else Bool )
    d137 = if if d123 then d118 else false then if d118 then false else d118 else if d123 then false else true
    d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> ( ( Set -> Set ) ∋ ( ( λ x141 -> Bool ) ) ) $ ( x140 ) ) ) ) $ ( if false then Bool else Bool )
    d139 = if if d118 then d118 else d124 then if d118 then d124 else d133 else if false then d130 else d118
    d142 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then Bool else x143 ) ) ) $ ( if true then Bool else Bool )
    d142 = ( ( M.d113 ) $ ( if d123 then true else d129 ) ) $ ( if false then d118 else d129 )
    d144 : if false then if false then Bool else Bool else if false then Bool else Bool
    d144 = ( ( Bool -> Bool ) ∋ ( ( λ x145 -> ( ( M.d105 ) $ ( if false then true else false ) ) $ ( if x145 then x145 else false ) ) ) ) $ ( if d142 then d123 else false )
    d146 : if false then if true then Bool else Bool else if true then Bool else Bool
    d146 = ( ( Bool -> Bool ) ∋ ( ( λ x147 -> ( ( Bool -> Bool ) ∋ ( ( λ x148 -> x147 ) ) ) $ ( d142 ) ) ) ) $ ( if d137 then d129 else true )
    d149 : if false then if true then Bool else Bool else if true then Bool else Bool
    d149 = ( ( Bool -> Bool ) ∋ ( ( λ x150 -> if d125 then false else d146 ) ) ) $ ( if d139 then d133 else d123 )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x152 -> ( ( Set -> Set ) ∋ ( ( λ x153 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d151 = if if true then true else d123 then if false then d123 else d124 else if false then true else true
    d154 : if true then if false then Bool else Bool else if false then Bool else Bool
    d154 = ( ( M.d91 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x155 -> false ) ) ) $ ( true ) ) ) $ ( if d142 then true else false )
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if true then Bool else x157 ) ) ) $ ( if false then Bool else Bool )
    d156 = if if true then d129 else false then if d130 then d133 else d129 else if d144 then d146 else false
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> if false then x159 else x159 ) ) ) $ ( if false then Bool else Bool )
    d158 = if if d154 then d156 else false then if false then d151 else d156 else if false then false else d146
    d160 : if true then if false then Bool else Bool else if false then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( M.d88 ) $ ( if true then true else x161 ) ) $ ( if d125 then true else d133 ) ) ) ) $ ( if true then d158 else d144 )
    d162 : if true then if true then Bool else Bool else if false then Bool else Bool
    d162 = if if true then true else true then if true then d125 else false else if d156 then true else true
    d163 : if true then if false then Bool else Bool else if true then Bool else Bool
    d163 = ( ( M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x164 -> false ) ) ) $ ( true ) ) ) $ ( ( ( M.d63 ) $ ( d154 ) ) $ ( d137 ) )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if false then x166 else x166 ) ) ) $ ( if true then Bool else Bool )
    d165 = if if false then d124 else d154 then if d151 then true else true else if true then true else false
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> if false then x168 else Bool ) ) ) $ ( if false then Bool else Bool )
    d167 = if if false then d130 else true then if d162 then true else d158 else if d162 then false else d149
    d169 : if true then if true then Bool else Bool else if true then Bool else Bool
    d169 = ( ( M.d77 ) $ ( if true then d139 else false ) ) $ ( ( ( M.d32 ) $ ( d163 ) ) $ ( false ) )
    d170 : if true then if true then Bool else Bool else if true then Bool else Bool
    d170 = ( ( M.d46 ) $ ( ( ( M.d78 ) $ ( d133 ) ) $ ( d144 ) ) ) $ ( ( ( M.d54 ) $ ( d133 ) ) $ ( d167 ) )
    d171 : if false then if true then Bool else Bool else if false then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( M.d67 ) $ ( if d144 then false else false ) ) $ ( if d144 then true else false ) ) ) ) $ ( if d160 then false else true )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x175 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> if x174 then x174 else true ) ) ) $ ( if d125 then d137 else false )
    d176 : if false then if false then Bool else Bool else if true then Bool else Bool
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> if false then d165 else d173 ) ) ) $ ( if true then d133 else d162 )
    d178 : ( ( Set -> Set ) ∋ ( ( λ x180 -> ( ( Set -> Set ) ∋ ( ( λ x181 -> x181 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d178 = ( ( Bool -> Bool ) ∋ ( ( λ x179 -> ( ( M.d35 ) $ ( if x179 then x179 else d130 ) ) $ ( if false then x179 else d144 ) ) ) ) $ ( if d151 then d160 else d151 )
    d182 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> if d170 then d133 else x183 ) ) ) $ ( if d173 then d176 else false )
    d186 : if true then if false then Bool else Bool else if true then Bool else Bool
    d186 = ( ( M.d18 ) $ ( ( ( M.d110 ) $ ( d176 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x187 -> d182 ) ) ) $ ( false ) )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if true then x191 else Bool ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> ( ( Bool -> Bool ) ∋ ( ( λ x190 -> x189 ) ) ) $ ( true ) ) ) ) $ ( if false then d146 else d156 )
    d192 : if false then if true then Bool else Bool else if false then Bool else Bool
    d192 = ( ( M.d38 ) $ ( ( ( M.d104 ) $ ( true ) ) $ ( d162 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x193 -> d167 ) ) ) $ ( d169 ) )
    d194 : if false then if true then Bool else Bool else if false then Bool else Bool
    d194 = if if false then true else d139 then if true then d151 else false else if true then d167 else d146
    d195 : ( ( Set -> Set ) ∋ ( ( λ x197 -> ( ( Set -> Set ) ∋ ( ( λ x198 -> Bool ) ) ) $ ( x197 ) ) ) ) $ ( if false then Bool else Bool )
    d195 = ( ( Bool -> Bool ) ∋ ( ( λ x196 -> if false then true else x196 ) ) ) $ ( if d178 then d162 else false )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> Bool ) ) ) $ ( x202 ) ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x201 -> x201 ) ) ) $ ( d130 ) ) ) ) $ ( if true then true else false )
    d204 : if false then if true then Bool else Bool else if true then Bool else Bool
    d204 = ( ( M.d49 ) $ ( if d137 then d124 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x205 -> x205 ) ) ) $ ( true ) )
    d206 : if false then if false then Bool else Bool else if true then Bool else Bool
    d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> if x207 then x207 else true ) ) ) $ ( if true then d167 else false )
    d208 : if true then if false then Bool else Bool else if false then Bool else Bool
    d208 = if if d129 then false else false then if d142 then d178 else true else if d206 then d195 else true
    d209 : ( ( Set -> Set ) ∋ ( ( λ x211 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d209 = ( ( Bool -> Bool ) ∋ ( ( λ x210 -> ( ( M.d58 ) $ ( if x210 then x210 else false ) ) $ ( if x210 then d139 else x210 ) ) ) ) $ ( if d151 then true else d165 )
    d212 : ( ( Set -> Set ) ∋ ( ( λ x213 -> if false then Bool else x213 ) ) ) $ ( if true then Bool else Bool )
    d212 = if if d199 then d188 else false then if false then true else d170 else if d139 then d158 else true