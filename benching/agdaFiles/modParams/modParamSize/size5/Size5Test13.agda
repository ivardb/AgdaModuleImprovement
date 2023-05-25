module Size5Test13  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then x4 else x4 ) ) ) $ ( if false then Bool else Bool )
        d3 = if if p2 then p1 else p2 then if false then false else true else if p1 then false else false
        d5 : ( ( Set -> Set ) ∋ ( ( λ x7 -> ( ( Set -> Set ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if false then d3 else d3 ) ) ) $ ( if true then d3 else d3 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if if true then p1 else true then if true then d5 else p1 else if false then p2 else false
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d12 = if if d5 then d3 else true then if d5 then p2 else p2 else if d5 then true else d9
        d14 : if true then if false then Bool else Bool else if true then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> ( ( Bool -> Bool ) ∋ ( ( λ x16 -> true ) ) ) $ ( d9 ) ) ) ) $ ( if true then p2 else d3 )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x20 ) ) ) $ ( x20 ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> p2 ) ) ) $ ( d9 ) ) ) ) $ ( if false then p1 else true )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then x23 else Bool ) ) ) $ ( if false then Bool else Bool )
        d22 = if if d3 then p2 else p1 then if p1 then false else false else if d12 then d12 else p2
        d24 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if true then x26 else x26 ) ) ) $ ( if false then Bool else Bool )
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> if x25 then false else x25 ) ) ) $ ( if d3 then d12 else true )
        d27 : if false then if true then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> d14 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d22 else true )
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d24 then d17 else d14 )
        d34 : if false then if true then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if false then x35 else d17 ) ) ) $ ( if p2 then d5 else d9 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if if false then p1 else d27 then if false then p1 else p1 else if p1 then d34 else true
        d39 : if false then if false then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> if d27 then d17 else d14 ) ) ) $ ( if d36 then p1 else p2 )
        d41 : if false then if false then Bool else Bool else if false then Bool else Bool
        d41 = if if p1 then p2 else p1 then if true then p1 else p2 else if d17 then p2 else d39
        d42 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d42 = if if p2 then false else true then if false then d22 else true else if false then d24 else false
        d44 : if false then if false then Bool else Bool else if true then Bool else Bool
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> if d42 then x45 else d34 ) ) ) $ ( if false then p1 else d42 )
        d46 : ( ( Set -> Set ) ∋ ( ( λ x47 -> ( ( Set -> Set ) ∋ ( ( λ x48 -> x48 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d46 = if if p1 then p1 else p2 then if false then d42 else d41 else if d42 then false else true
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> x50 ) ) ) $ ( d34 ) ) ) ) $ ( if false then p1 else p1 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then x55 else x55 ) ) ) $ ( if false then Bool else Bool )
        d54 = if if d49 then d12 else false then if false then false else p1 else if p1 then d44 else d22
        d56 : if true then if false then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> ( ( Bool -> Bool ) ∋ ( ( λ x58 -> d14 ) ) ) $ ( true ) ) ) ) $ ( if true then p2 else p2 )
        d59 : if false then if true then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if d17 then true else false ) ) ) $ ( if p1 then d42 else p1 )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> ( ( Set -> Set ) ∋ ( ( λ x65 -> x64 ) ) ) $ ( x64 ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if false then p1 else p2 )
        d66 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d66 = if if true then true else p2 then if d30 then false else false else if p2 then true else d30
        d69 : if true then if true then Bool else Bool else if true then Bool else Bool
        d69 = if if p1 then d39 else p1 then if d17 then d41 else d24 else if false then d66 else d56
        d70 : if true then if true then Bool else Bool else if true then Bool else Bool
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d49 ) ) ) $ ( d3 ) ) ) ) $ ( if d9 then d49 else d41 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else Bool ) ) ) $ ( if true then Bool else Bool )
        d73 = if if p2 then p2 else d3 then if false then false else true else if d61 then p2 else p2
        d75 : if false then if true then Bool else Bool else if false then Bool else Bool
        d75 = if if true then d46 else p2 then if p1 then d73 else p2 else if true then p1 else true
        d76 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x79 ) ) ) $ ( x79 ) ) ) ) $ ( if true then Bool else Bool )
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> d39 ) ) ) $ ( d69 ) ) ) ) $ ( if p2 then false else d30 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d46 ) ) ) $ ( x82 ) ) ) ) $ ( if d39 then true else false )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( x89 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> x88 ) ) ) $ ( true ) ) ) ) $ ( if false then d76 else d39 )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> x95 ) ) ) $ ( x94 ) ) ) ) $ ( if false then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> d39 ) ) ) $ ( x92 ) ) ) ) $ ( if d44 then p1 else p1 )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else x97 ) ) ) $ ( if true then Bool else Bool )
        d96 = if if true then p2 else true then if d30 then false else p2 else if true then d14 else d5
        d98 : if true then if false then Bool else Bool else if false then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if x99 then d44 else x99 ) ) ) $ ( if d81 then d27 else true )
        d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> x104 ) ) ) $ ( x103 ) ) ) ) $ ( if true then Bool else Bool )
        d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> x102 ) ) ) $ ( p1 ) ) ) ) $ ( if p2 then d42 else d81 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if true then true else true ) ) ) $ ( if d14 then true else p2 )
        d109 : if false then if true then Bool else Bool else if true then Bool else Bool
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( Bool -> Bool ) ∋ ( ( λ x111 -> false ) ) ) $ ( d49 ) ) ) ) $ ( if d3 then p1 else p1 )
        d112 : if true then if false then Bool else Bool else if false then Bool else Bool
        d112 = if if false then true else true then if true then p1 else p1 else if false then false else d39
        d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d113 = if if d112 then true else p2 then if p1 then d100 else false else if p2 then true else false
        d115 : if false then if true then Bool else Bool else if false then Bool else Bool
        d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> d105 ) ) ) $ ( true ) ) ) ) $ ( if p2 then p1 else p1 )
        d118 : if false then if false then Bool else Bool else if true then Bool else Bool
        d118 = if if true then d112 else p1 then if p1 then p2 else p2 else if false then p2 else false
    d119 : if true then if true then Bool else Bool else if true then Bool else Bool
    d119 = ( ( M.d30 ) $ ( ( ( M.d70 ) $ ( true ) ) $ ( true ) ) ) $ ( if false then false else false )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( x122 ) ) ) ) $ ( if true then Bool else Bool )
    d120 = ( ( M.d17 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x121 -> x121 ) ) ) $ ( d119 ) ) ) $ ( ( ( M.d96 ) $ ( d119 ) ) $ ( d119 ) )
    d124 : ( ( Set -> Set ) ∋ ( ( λ x126 -> if true then x126 else x126 ) ) ) $ ( if true then Bool else Bool )
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if x125 then false else true ) ) ) $ ( if d119 then d119 else d119 )
    d127 : if false then if false then Bool else Bool else if true then Bool else Bool
    d127 = ( ( M.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x128 -> x128 ) ) ) $ ( false ) ) ) $ ( ( ( M.d112 ) $ ( d119 ) ) $ ( d119 ) )
    d129 : if false then if true then Bool else Bool else if true then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if true then d119 else d124 ) ) ) $ ( if d127 then true else d124 )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d131 = if if d119 then d120 else false then if d120 then d120 else true else if d119 then false else true
    d134 : ( ( Set -> Set ) ∋ ( ( λ x136 -> if true then x136 else x136 ) ) ) $ ( if true then Bool else Bool )
    d134 = ( ( Bool -> Bool ) ∋ ( ( λ x135 -> if true then true else false ) ) ) $ ( if true then true else d131 )
    d137 : if false then if true then Bool else Bool else if true then Bool else Bool
    d137 = ( ( M.d34 ) $ ( if false then d120 else false ) ) $ ( if false then d120 else d129 )
    d138 : if true then if false then Bool else Bool else if true then Bool else Bool
    d138 = if if true then false else false then if false then d137 else true else if d131 then d120 else d134
    d139 : if true then if true then Bool else Bool else if true then Bool else Bool
    d139 = ( ( Bool -> Bool ) ∋ ( ( λ x140 -> ( ( M.d76 ) $ ( if true then d137 else d119 ) ) $ ( if false then x140 else d134 ) ) ) ) $ ( if false then true else false )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> ( ( Set -> Set ) ∋ ( ( λ x144 -> Bool ) ) ) $ ( x143 ) ) ) ) $ ( if true then Bool else Bool )
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( M.d109 ) $ ( if d124 then true else x142 ) ) $ ( if d124 then d137 else d120 ) ) ) ) $ ( if d139 then d137 else d129 )
    d145 : if true then if false then Bool else Bool else if true then Bool else Bool
    d145 = ( ( M.d96 ) $ ( if d120 then d134 else d134 ) ) $ ( if d120 then true else true )
    d146 : ( ( Set -> Set ) ∋ ( ( λ x147 -> if true then Bool else x147 ) ) ) $ ( if false then Bool else Bool )
    d146 = if if true then false else true then if false then false else d131 else if false then false else d145
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x150 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d148 = if if false then d146 else d141 then if true then d139 else true else if true then d145 else d134
    d151 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> Bool ) ) ) $ ( x154 ) ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> true ) ) ) $ ( x152 ) ) ) ) $ ( if d146 then d137 else true )
    d156 : ( ( Set -> Set ) ∋ ( ( λ x157 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d156 = if if d120 then d141 else d146 then if true then d134 else d120 else if d137 then true else d139
    d158 : if true then if false then Bool else Bool else if true then Bool else Bool
    d158 = ( ( Bool -> Bool ) ∋ ( ( λ x159 -> ( ( M.d73 ) $ ( if d151 then x159 else false ) ) $ ( if d146 then d124 else false ) ) ) ) $ ( if d119 then d137 else d151 )
    d160 : if false then if true then Bool else Bool else if true then Bool else Bool
    d160 = ( ( M.d44 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x161 -> x161 ) ) ) $ ( d119 ) ) ) $ ( ( ( M.d14 ) $ ( d146 ) ) $ ( d145 ) )
    d162 : if true then if true then Bool else Bool else if false then Bool else Bool
    d162 = ( ( M.d34 ) $ ( ( ( M.d98 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x163 -> false ) ) ) $ ( false ) )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> x166 ) ) ) $ ( x165 ) ) ) ) $ ( if false then Bool else Bool )
    d164 = if if d131 then d138 else false then if true then false else d127 else if d145 then d156 else d137
    d167 : if false then if true then Bool else Bool else if true then Bool else Bool
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> if true then x168 else false ) ) ) $ ( if true then false else d151 )
    d169 : if false then if false then Bool else Bool else if true then Bool else Bool
    d169 = ( ( M.d81 ) $ ( if false then d141 else d162 ) ) $ ( if true then true else false )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x173 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> x171 ) ) ) $ ( true ) ) ) ) $ ( if d139 then d120 else d145 )
    d174 : ( ( Set -> Set ) ∋ ( ( λ x175 -> if false then x175 else Bool ) ) ) $ ( if false then Bool else Bool )
    d174 = if if false then false else true then if true then d146 else true else if d119 then d119 else true
    d176 : if false then if false then Bool else Bool else if false then Bool else Bool
    d176 = ( ( M.d22 ) $ ( ( ( M.d109 ) $ ( false ) ) $ ( d141 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x177 -> false ) ) ) $ ( d162 ) )
    d178 : if false then if false then Bool else Bool else if false then Bool else Bool
    d178 = ( ( M.d61 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x179 -> d129 ) ) ) $ ( true ) ) ) $ ( ( ( M.d14 ) $ ( d151 ) ) $ ( true ) )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x181 -> ( ( Set -> Set ) ∋ ( ( λ x182 -> Bool ) ) ) $ ( x181 ) ) ) ) $ ( if true then Bool else Bool )
    d180 = ( ( M.d27 ) $ ( ( ( M.d5 ) $ ( true ) ) $ ( d151 ) ) ) $ ( if false then d176 else d134 )
    d183 : if true then if false then Bool else Bool else if false then Bool else Bool
    d183 = if if d180 then d164 else true then if d119 then d146 else d158 else if true then false else d138
    d184 : if true then if true then Bool else Bool else if true then Bool else Bool
    d184 = if if true then false else d180 then if true then d139 else d164 else if d120 then d151 else false
    d185 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> Bool ) ) ) $ ( x188 ) ) ) ) $ ( if true then Bool else Bool )
    d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> ( ( Bool -> Bool ) ∋ ( ( λ x187 -> d137 ) ) ) $ ( x186 ) ) ) ) $ ( if d148 then d170 else true )
    d190 : if true then if true then Bool else Bool else if false then Bool else Bool
    d190 = ( ( M.d42 ) $ ( if d158 then d141 else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x191 -> d184 ) ) ) $ ( d174 ) )
    d192 : if false then if false then Bool else Bool else if false then Bool else Bool
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( M.d105 ) $ ( if x193 then d137 else false ) ) $ ( if x193 then x193 else x193 ) ) ) ) $ ( if d129 then true else false )
    d194 : if true then if true then Bool else Bool else if true then Bool else Bool
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> if d141 then d141 else false ) ) ) $ ( if d151 then false else false )
    d196 : if false then if true then Bool else Bool else if false then Bool else Bool
    d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> ( ( Bool -> Bool ) ∋ ( ( λ x198 -> d120 ) ) ) $ ( x197 ) ) ) ) $ ( if true then d151 else d174 )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x200 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d199 = if if d164 then d141 else d139 then if true then d190 else false else if false then false else true
    d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d201 = if if d129 then d156 else d185 then if d192 then d183 else true else if d134 then d176 else true
    d204 : if false then if true then Bool else Bool else if true then Bool else Bool
    d204 = ( ( M.d66 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x205 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x206 -> false ) ) ) $ ( false ) )
    d207 : ( ( Set -> Set ) ∋ ( ( λ x208 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d207 = ( ( M.d100 ) $ ( if false then d119 else false ) ) $ ( ( ( M.d5 ) $ ( d127 ) ) $ ( d176 ) )
    d209 : ( ( Set -> Set ) ∋ ( ( λ x211 -> if false then x211 else Bool ) ) ) $ ( if false then Bool else Bool )
    d209 = ( ( M.d75 ) $ ( if d131 then d178 else d141 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x210 -> false ) ) ) $ ( false ) )
    d212 : if true then if true then Bool else Bool else if true then Bool else Bool
    d212 = ( ( M.d105 ) $ ( ( ( M.d42 ) $ ( d137 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x213 -> d164 ) ) ) $ ( false ) )