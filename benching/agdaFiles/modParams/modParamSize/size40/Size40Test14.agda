module Size40Test14  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> ( ( Set -> Set ) ∋ ( ( λ x3 -> ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then x2 else Bool ) ) ) ) $ ( ( ( Set -> Set ) ∋ ( ( λ x5 -> ( ( Set -> Set ) ∋ ( ( λ x6 -> Bool ) ) ) $ ( x5 ) ) ) ) $ ( Bool ) ) ) ( p7 : if true then if true then if true then Bool else Bool else if false then Bool else Bool else ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( Bool ) )  where
        d10 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if false then x13 else Bool ) ) ) $ ( if false then Bool else Bool )
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> false ) ) ) $ ( true ) ) ) ) $ ( if false then false else false )
        d14 : if false then if true then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> false ) ) ) $ ( d10 ) ) ) ) $ ( if d10 then p7 else d10 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d17 = if if p1 then d10 else false then if false then p7 else d14 else if false then true else d14
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d14 then x21 else true ) ) ) $ ( if d17 then p1 else d17 )
        d24 : if false then if true then Bool else Bool else if false then Bool else Bool
        d24 = if if p7 then d10 else p7 then if false then p1 else p1 else if d14 then p1 else true
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> ( ( Set -> Set ) ∋ ( ( λ x29 -> x28 ) ) ) $ ( x28 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d17 then d17 else false )
        d30 : if true then if false then Bool else Bool else if false then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> true ) ) ) $ ( x31 ) ) ) ) $ ( if p1 then false else p7 )
        d33 : if true then if false then Bool else Bool else if false then Bool else Bool
        d33 = if if d30 then false else p1 then if p1 then d10 else p7 else if p1 then d24 else d25
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if d17 then p7 else p7 then if d33 then true else p7 else if p1 then p7 else false
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = ( ( Bool -> Bool ) ∋ ( ( λ x36 -> if false then p7 else d10 ) ) ) $ ( if p1 then d17 else p1 )
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = if if true then p7 else p1 then if d33 then d24 else false else if d34 then true else d33
        d38 : if false then if true then Bool else Bool else if true then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> if p1 then d34 else true ) ) ) $ ( if d20 then d34 else p1 )
        d40 : ( ( Set -> Set ) ∋ ( ( λ x43 -> ( ( Set -> Set ) ∋ ( ( λ x44 -> x44 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else p1 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x48 -> if true then x48 else x48 ) ) ) $ ( if true then Bool else Bool )
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> true ) ) ) $ ( true ) ) ) ) $ ( if d38 then true else d38 )
        d49 : if false then if false then Bool else Bool else if false then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if true then d30 else false ) ) ) $ ( if p7 then p7 else p1 )
        d51 : if false then if false then Bool else Bool else if false then Bool else Bool
        d51 = if if true then d37 else p1 then if d25 then d33 else p1 else if d25 then d30 else p1
        d52 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> true ) ) ) $ ( x53 ) ) ) ) $ ( if d10 then p1 else false )
        d57 : if false then if false then Bool else Bool else if true then Bool else Bool
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> d17 ) ) ) $ ( p7 ) ) ) ) $ ( if false then d45 else true )
        d60 : if false then if false then Bool else Bool else if false then Bool else Bool
        d60 = if if true then d10 else p7 then if p7 then d24 else true else if p1 then p1 else false
        d61 : if true then if true then Bool else Bool else if true then Bool else Bool
        d61 = if if p1 then p1 else false then if true then p7 else d51 else if true then d25 else p7
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d62 = if if p1 then p1 else d51 then if d20 then d33 else p7 else if p1 then true else d20
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> ( ( Set -> Set ) ∋ ( ( λ x69 -> Bool ) ) ) $ ( x68 ) ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if p7 then false else true )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d35 ) ) ) $ ( d49 ) ) ) ) $ ( if p7 then p7 else p7 )
        d75 : if false then if true then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> d45 ) ) ) $ ( d61 ) ) ) ) $ ( if false then true else p1 )
        d78 : if true then if true then Bool else Bool else if true then Bool else Bool
        d78 = if if false then d57 else d34 then if p1 then false else true else if p7 then true else d17
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> if d17 then false else d17 ) ) ) $ ( if d51 then p1 else true )
        d81 : if true then if false then Bool else Bool else if false then Bool else Bool
        d81 = if if false then d79 else false then if false then true else true else if d30 then false else p7
        d82 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if true then x84 else x84 ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d10 then true else p1 ) ) ) $ ( if d10 then false else false )
        d85 : if false then if true then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then p1 else p1 )
        d88 : if false then if false then Bool else Bool else if false then Bool else Bool
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if false then false else d62 ) ) ) $ ( if d85 then p1 else d20 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d78 ) ) ) $ ( false ) ) ) ) $ ( if false then d88 else true )
        d94 : if false then if false then Bool else Bool else if true then Bool else Bool
        d94 = if if p1 then p7 else p7 then if p1 then p7 else d60 else if d60 then false else false
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d95 = if if false then false else d30 then if d20 then p1 else d45 else if d94 then p1 else p1
        d97 : if true then if true then Bool else Bool else if true then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> d45 ) ) ) $ ( d40 ) ) ) ) $ ( if d85 then false else true )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> p7 ) ) ) $ ( x101 ) ) ) ) $ ( if d17 then d94 else d25 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x106 -> if false then Bool else x106 ) ) ) $ ( if false then Bool else Bool )
        d105 = if if d33 then p1 else p1 then if true then true else true else if d100 then p1 else d35
        d107 : if true then if false then Bool else Bool else if false then Bool else Bool
        d107 = if if p1 then d97 else d61 then if p1 then false else p7 else if p7 then d33 else p7
        d108 : if true then if false then Bool else Bool else if true then Bool else Bool
        d108 = if if p1 then p1 else d94 then if p1 then p7 else false else if d105 then d45 else true
        d109 : if true then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d37 then d14 else d40 ) ) ) $ ( if p1 then p1 else p7 )
        d111 : if false then if false then Bool else Bool else if false then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( Bool -> Bool ) ∋ ( ( λ x113 -> d70 ) ) ) $ ( false ) ) ) ) $ ( if p7 then d62 else false )
    d114 : if true then if false then Bool else Bool else if true then Bool else Bool
    d114 = ( ( M.d95 ) $ ( ( ( M.d75 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( true ) )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then Bool else x119 ) ) ) $ ( if false then Bool else Bool )
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( Bool -> Bool ) ∋ ( ( λ x118 -> true ) ) ) $ ( x117 ) ) ) ) $ ( if d114 then d114 else false )
    d120 : if false then if false then Bool else Bool else if false then Bool else Bool
    d120 = ( ( Bool -> Bool ) ∋ ( ( λ x121 -> ( ( Bool -> Bool ) ∋ ( ( λ x122 -> d116 ) ) ) $ ( d114 ) ) ) ) $ ( if d116 then true else false )
    d123 : if false then if true then Bool else Bool else if true then Bool else Bool
    d123 = if if true then d116 else false then if d120 then false else true else if d114 then true else d116
    d124 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if false then x125 else Bool ) ) ) $ ( if false then Bool else Bool )
    d124 = if if false then false else false then if d116 then d120 else d114 else if d120 then false else false
    d126 : ( ( Set -> Set ) ∋ ( ( λ x128 -> ( ( Set -> Set ) ∋ ( ( λ x129 -> Bool ) ) ) $ ( x128 ) ) ) ) $ ( if true then Bool else Bool )
    d126 = ( ( Bool -> Bool ) ∋ ( ( λ x127 -> if false then x127 else true ) ) ) $ ( if d120 then d114 else true )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d130 = ( ( M.d65 ) $ ( ( ( M.d25 ) $ ( d123 ) ) $ ( d114 ) ) ) $ ( ( ( M.d60 ) $ ( true ) ) $ ( false ) )
    d133 : if true then if true then Bool else Bool else if false then Bool else Bool
    d133 = ( ( M.d111 ) $ ( if false then d126 else true ) ) $ ( ( ( M.d111 ) $ ( d123 ) ) $ ( d126 ) )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x136 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d134 = if if false then d124 else true then if d130 then d120 else true else if d133 then true else d124
    d137 : if true then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( M.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> true ) ) ) $ ( d120 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> false ) ) ) $ ( false ) )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x141 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d140 = if if d137 then d137 else true then if d114 then false else true else if true then d134 else d126
    d142 : if false then if false then Bool else Bool else if false then Bool else Bool
    d142 = ( ( M.d37 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x143 -> x143 ) ) ) $ ( d134 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x144 -> x144 ) ) ) $ ( d140 ) )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d145 = if if false then d137 else true then if false then d124 else d126 else if d126 then d114 else d142
    d147 : if true then if false then Bool else Bool else if true then Bool else Bool
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> false ) ) ) $ ( x148 ) ) ) ) $ ( if d140 then d137 else false )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if true then Bool else x152 ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> if x151 then false else d142 ) ) ) $ ( if false then d133 else true )
    d153 : if true then if false then Bool else Bool else if true then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( M.d108 ) $ ( if d133 then x154 else x154 ) ) $ ( if true then x154 else true ) ) ) ) $ ( if true then d134 else true )
    d155 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if false then x157 else Bool ) ) ) $ ( if true then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( M.d62 ) $ ( if true then false else d153 ) ) $ ( if true then d124 else x156 ) ) ) ) $ ( if true then d145 else d145 )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x160 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d158 = ( ( M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x159 -> d116 ) ) ) $ ( d123 ) ) ) $ ( ( ( M.d24 ) $ ( d116 ) ) $ ( false ) )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( M.d49 ) $ ( if x162 then x162 else d137 ) ) $ ( if x162 then x162 else d153 ) ) ) ) $ ( if true then d123 else d137 )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( x165 ) ) ) ) $ ( if false then Bool else Bool )
    d164 = ( ( M.d38 ) $ ( if true then true else d142 ) ) $ ( ( ( M.d35 ) $ ( d145 ) ) $ ( d134 ) )
    d167 : if true then if true then Bool else Bool else if false then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if d130 then d142 else d116 ) ) ) $ ( if d133 then true else false )
    d169 : if true then if false then Bool else Bool else if true then Bool else Bool
    d169 = ( ( Bool -> Bool ) ∋ ( ( λ x170 -> if x170 then d161 else d116 ) ) ) $ ( if false then true else d116 )
    d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> if true then x172 else x172 ) ) ) $ ( if true then Bool else Bool )
    d171 = if if d140 then false else d140 then if d130 then false else d120 else if true then true else d126
    d173 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( x174 ) ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( M.d81 ) $ ( if d147 then d153 else false ) ) $ ( ( ( M.d85 ) $ ( d161 ) ) $ ( d155 ) )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if false then x177 else Bool ) ) ) $ ( if false then Bool else Bool )
    d176 = if if d126 then d164 else d161 then if d171 then false else d134 else if d126 then d161 else d167
    d178 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d178 = if if false then false else true then if d176 then false else d114 else if d169 then d158 else false
    d180 : if true then if false then Bool else Bool else if true then Bool else Bool
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> if true then d116 else false ) ) ) $ ( if false then d134 else d126 )
    d182 : if false then if false then Bool else Bool else if false then Bool else Bool
    d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> ( ( Bool -> Bool ) ∋ ( ( λ x184 -> true ) ) ) $ ( false ) ) ) ) $ ( if d155 then d133 else d116 )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> x187 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( M.d20 ) $ ( ( ( M.d52 ) $ ( true ) ) $ ( false ) ) ) $ ( if false then d164 else d169 )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> if true then x189 else Bool ) ) ) $ ( if false then Bool else Bool )
    d188 = if if d140 then false else false then if d176 then true else d142 else if d155 then true else d124
    d190 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> Bool ) ) ) $ ( x192 ) ) ) ) $ ( if false then Bool else Bool )
    d190 = ( ( M.d24 ) $ ( ( ( M.d62 ) $ ( d164 ) ) $ ( d116 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x191 -> false ) ) ) $ ( true ) )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> x197 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> ( ( M.d95 ) $ ( if true then false else true ) ) $ ( if x195 then d130 else true ) ) ) ) $ ( if false then d140 else false )
    d198 : if false then if false then Bool else Bool else if true then Bool else Bool
    d198 = ( ( Bool -> Bool ) ∋ ( ( λ x199 -> if true then d182 else x199 ) ) ) $ ( if true then false else true )
    d200 : ( ( Set -> Set ) ∋ ( ( λ x203 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d200 = ( ( M.d85 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x201 -> x201 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x202 -> true ) ) ) $ ( d188 ) )
    d204 : ( ( Set -> Set ) ∋ ( ( λ x205 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d204 = ( ( M.d100 ) $ ( if true then d142 else false ) ) $ ( if true then d130 else d155 )
    d206 : if true then if false then Bool else Bool else if false then Bool else Bool
    d206 = ( ( M.d10 ) $ ( ( ( M.d95 ) $ ( d155 ) ) $ ( true ) ) ) $ ( ( ( M.d45 ) $ ( d150 ) ) $ ( true ) )
    d207 : ( ( Set -> Set ) ∋ ( ( λ x210 -> if false then Bool else x210 ) ) ) $ ( if false then Bool else Bool )
    d207 = ( ( Bool -> Bool ) ∋ ( ( λ x208 -> ( ( Bool -> Bool ) ∋ ( ( λ x209 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then true else d188 )
    d211 : if false then if false then Bool else Bool else if true then Bool else Bool
    d211 = if if d140 then d194 else d188 then if false then d116 else d147 else if d150 then false else d180
    d212 : ( ( Set -> Set ) ∋ ( ( λ x213 -> ( ( Set -> Set ) ∋ ( ( λ x214 -> Bool ) ) ) $ ( x213 ) ) ) ) $ ( if false then Bool else Bool )
    d212 = if if d116 then true else false then if d171 then d116 else d140 else if d158 then false else true
    d215 : ( ( Set -> Set ) ∋ ( ( λ x217 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d215 = ( ( Bool -> Bool ) ∋ ( ( λ x216 -> if x216 then d200 else d173 ) ) ) $ ( if true then d120 else false )