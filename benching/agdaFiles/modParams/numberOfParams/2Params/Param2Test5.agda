module Param2Test5  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d3 = if if p1 then p2 else p2 then if false then p2 else p2 else if p1 then p1 else p2
        d5 : if true then if false then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> ( ( Bool -> Bool ) ∋ ( ( λ x7 -> d3 ) ) ) $ ( d3 ) ) ) ) $ ( if p1 then p1 else false )
        d8 : if true then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if p1 then p2 else d3 then if false then d3 else p1 else if false then d3 else d5
        d9 : ( ( Set -> Set ) ∋ ( ( λ x11 -> ( ( Set -> Set ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( x11 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> if d5 then true else p1 ) ) ) $ ( if p2 then d3 else false )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( x15 ) ) ) ) $ ( if false then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if true then d9 else p1 ) ) ) $ ( if p2 then p1 else d5 )
        d17 : if true then if false then Bool else Bool else if true then Bool else Bool
        d17 = if if d13 then p1 else d9 then if true then d5 else p1 else if d3 then p1 else false
        d18 : if false then if true then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> ( ( Bool -> Bool ) ∋ ( ( λ x20 -> p1 ) ) ) $ ( d8 ) ) ) ) $ ( if p2 then p1 else d5 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then x24 else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> ( ( Bool -> Bool ) ∋ ( ( λ x23 -> d13 ) ) ) $ ( d3 ) ) ) ) $ ( if true then false else d5 )
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> if false then x26 else x26 ) ) ) $ ( if false then Bool else Bool )
        d25 = if if p2 then d21 else d13 then if d21 then false else d21 else if p1 then p1 else d13
        d27 : if true then if false then Bool else Bool else if false then Bool else Bool
        d27 = if if p1 then p1 else p1 then if d25 then false else false else if p1 then d25 else p1
        d28 : ( ( Set -> Set ) ∋ ( ( λ x29 -> ( ( Set -> Set ) ∋ ( ( λ x30 -> Bool ) ) ) $ ( x29 ) ) ) ) $ ( if true then Bool else Bool )
        d28 = if if p2 then true else d18 then if true then false else d21 else if false then d5 else false
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d31 = if if d17 then true else true then if d27 then p2 else d27 else if true then false else p1
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if d17 then false else d21 ) ) ) $ ( if d17 then true else p2 )
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = ( ( Bool -> Bool ) ∋ ( ( λ x39 -> ( ( Bool -> Bool ) ∋ ( ( λ x40 -> x39 ) ) ) $ ( x39 ) ) ) ) $ ( if d17 then true else false )
        d41 : if true then if false then Bool else Bool else if false then Bool else Bool
        d41 = if if p2 then false else d9 then if p1 then d9 else p1 else if d27 then d18 else p1
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> if x43 then p1 else p2 ) ) ) $ ( if true then p2 else p2 )
        d44 : if false then if true then Bool else Bool else if true then Bool else Bool
        d44 = if if true then false else d34 then if true then false else p2 else if p1 then p1 else p1
        d45 : if true then if true then Bool else Bool else if false then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> true ) ) ) $ ( true ) ) ) ) $ ( if d8 then d41 else d44 )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> ( ( Set -> Set ) ∋ ( ( λ x50 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d48 = if if d9 then p1 else p1 then if true then false else true else if true then p1 else false
        d51 : ( ( Set -> Set ) ∋ ( ( λ x54 -> ( ( Set -> Set ) ∋ ( ( λ x55 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> p1 ) ) ) $ ( x52 ) ) ) ) $ ( if true then d25 else d41 )
        d56 : if false then if true then Bool else Bool else if true then Bool else Bool
        d56 = ( ( Bool -> Bool ) ∋ ( ( λ x57 -> if d9 then true else d41 ) ) ) $ ( if true then p1 else false )
        d58 : if false then if true then Bool else Bool else if true then Bool else Bool
        d58 = if if d5 then p2 else d18 then if p1 then d18 else p2 else if false then true else false
        d59 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if false then false else true ) ) ) $ ( if false then true else true )
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> ( ( Bool -> Bool ) ∋ ( ( λ x64 -> d31 ) ) ) $ ( d9 ) ) ) ) $ ( if p2 then p2 else p2 )
        d65 : if true then if true then Bool else Bool else if true then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if false then false else false ) ) ) $ ( if p1 then p2 else true )
        d67 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> Bool ) ) ) $ ( x70 ) ) ) ) $ ( if false then Bool else Bool )
        d67 = ( ( Bool -> Bool ) ∋ ( ( λ x68 -> ( ( Bool -> Bool ) ∋ ( ( λ x69 -> p2 ) ) ) $ ( d65 ) ) ) ) $ ( if d17 then d13 else d21 )
        d72 : if true then if true then Bool else Bool else if true then Bool else Bool
        d72 = if if d67 then true else d59 then if true then p1 else d67 else if true then true else true
        d73 : if true then if true then Bool else Bool else if true then Bool else Bool
        d73 = ( ( Bool -> Bool ) ∋ ( ( λ x74 -> ( ( Bool -> Bool ) ∋ ( ( λ x75 -> p2 ) ) ) $ ( d28 ) ) ) ) $ ( if true then true else d28 )
        d76 : if false then if true then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> d9 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then d58 else d44 )
        d79 : if true then if true then Bool else Bool else if false then Bool else Bool
        d79 = if if false then p1 else p2 then if p1 then d76 else d31 else if false then true else p2
        d80 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then x82 else Bool ) ) ) $ ( if true then Bool else Bool )
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if d45 then d51 else d65 ) ) ) $ ( if d17 then true else p1 )
        d83 : if false then if true then Bool else Bool else if true then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if true then p1 else d3 ) ) ) $ ( if p1 then p2 else p1 )
        d85 : if false then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if d67 then false else false then if d58 then d38 else p1 else if d27 then d28 else p1
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> Bool ) ) ) $ ( x88 ) ) ) ) $ ( if false then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if true then d85 else false ) ) ) $ ( if true then d38 else d83 )
        d90 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else Bool ) ) ) $ ( if true then Bool else Bool )
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> d21 ) ) ) $ ( false ) ) ) ) $ ( if d27 then d65 else d25 )
        d94 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if false then x97 else Bool ) ) ) $ ( if true then Bool else Bool )
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> d80 ) ) ) $ ( true ) ) ) ) $ ( if false then d21 else p2 )
        d98 : if false then if false then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else true )
        d101 : ( ( Set -> Set ) ∋ ( ( λ x103 -> ( ( Set -> Set ) ∋ ( ( λ x104 -> Bool ) ) ) $ ( x103 ) ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> if p1 then x102 else d34 ) ) ) $ ( if true then false else p2 )
        d105 : ( ( Set -> Set ) ∋ ( ( λ x107 -> ( ( Set -> Set ) ∋ ( ( λ x108 -> Bool ) ) ) $ ( x107 ) ) ) ) $ ( if false then Bool else Bool )
        d105 = ( ( Bool -> Bool ) ∋ ( ( λ x106 -> if true then x106 else true ) ) ) $ ( if false then p1 else true )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x110 -> ( ( Set -> Set ) ∋ ( ( λ x111 -> x110 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d109 = if if true then false else false then if p1 then false else d80 else if false then false else p1
    d112 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then x113 else Bool ) ) ) $ ( if false then Bool else Bool )
    d112 = if if true then true else true then if false then false else true else if false then false else true
    d114 : if false then if false then Bool else Bool else if true then Bool else Bool
    d114 = if if d112 then true else d112 then if d112 then d112 else false else if true then d112 else false
    d115 : if true then if false then Bool else Bool else if true then Bool else Bool
    d115 = if if true then true else false then if d114 then d112 else d112 else if d112 then d112 else true
    d116 : if false then if false then Bool else Bool else if true then Bool else Bool
    d116 = if if false then true else d115 then if true then d114 else false else if d115 then true else d112
    d117 : ( ( Set -> Set ) ∋ ( ( λ x118 -> if false then x118 else Bool ) ) ) $ ( if true then Bool else Bool )
    d117 = if if d116 then d116 else d116 then if d112 then false else d116 else if true then d114 else d114
    d119 : if true then if true then Bool else Bool else if true then Bool else Bool
    d119 = ( ( Bool -> Bool ) ∋ ( ( λ x120 -> ( ( M.d25 ) $ ( if d114 then false else x120 ) ) $ ( if d112 then x120 else true ) ) ) ) $ ( if false then d116 else d112 )
    d121 : if true then if false then Bool else Bool else if true then Bool else Bool
    d121 = if if true then d116 else false then if true then d119 else d112 else if true then d114 else d119
    d122 : if true then if false then Bool else Bool else if false then Bool else Bool
    d122 = if if true then true else d116 then if d112 then false else true else if d117 then d114 else d114
    d123 : ( ( Set -> Set ) ∋ ( ( λ x124 -> ( ( Set -> Set ) ∋ ( ( λ x125 -> x124 ) ) ) $ ( x124 ) ) ) ) $ ( if false then Bool else Bool )
    d123 = if if false then d121 else d122 then if d116 then d122 else d121 else if d117 then d117 else d115
    d126 : if false then if false then Bool else Bool else if true then Bool else Bool
    d126 = if if d122 then d119 else d119 then if true then d123 else d115 else if d123 then d115 else true
    d127 : ( ( Set -> Set ) ∋ ( ( λ x130 -> ( ( Set -> Set ) ∋ ( ( λ x131 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( Bool -> Bool ) ∋ ( ( λ x129 -> d123 ) ) ) $ ( d122 ) ) ) ) $ ( if true then d112 else true )
    d132 : if false then if false then Bool else Bool else if false then Bool else Bool
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> ( ( Bool -> Bool ) ∋ ( ( λ x134 -> d114 ) ) ) $ ( d119 ) ) ) ) $ ( if d112 then d119 else true )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d135 = ( ( M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x136 -> true ) ) ) $ ( d123 ) ) ) $ ( ( ( M.d21 ) $ ( true ) ) $ ( false ) )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else x140 ) ) ) $ ( if true then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if d121 then false else false ) ) ) $ ( if true then d127 else false )
    d141 : if false then if true then Bool else Bool else if false then Bool else Bool
    d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( Bool -> Bool ) ∋ ( ( λ x143 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d123 else false )
    d144 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then x146 else Bool ) ) ) $ ( if false then Bool else Bool )
    d144 = ( ( M.d48 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x145 -> false ) ) ) $ ( d138 ) ) ) $ ( if true then true else false )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then x150 else x150 ) ) ) $ ( if true then Bool else Bool )
    d147 = ( ( Bool -> Bool ) ∋ ( ( λ x148 -> ( ( Bool -> Bool ) ∋ ( ( λ x149 -> true ) ) ) $ ( d115 ) ) ) ) $ ( if true then false else false )
    d151 : if true then if false then Bool else Bool else if true then Bool else Bool
    d151 = ( ( M.d51 ) $ ( if true then false else false ) ) $ ( ( ( M.d79 ) $ ( d126 ) ) $ ( d122 ) )
    d152 : if true then if true then Bool else Bool else if false then Bool else Bool
    d152 = ( ( M.d79 ) $ ( ( ( M.d65 ) $ ( d144 ) ) $ ( d116 ) ) ) $ ( if d138 then false else d112 )
    d153 : ( ( Set -> Set ) ∋ ( ( λ x156 -> ( ( Set -> Set ) ∋ ( ( λ x157 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> d114 ) ) ) $ ( d117 ) ) ) ) $ ( if true then d121 else d117 )
    d158 : if true then if false then Bool else Bool else if false then Bool else Bool
    d158 = ( ( M.d9 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x159 -> d138 ) ) ) $ ( d147 ) ) ) $ ( if d152 then false else true )
    d160 : if true then if false then Bool else Bool else if false then Bool else Bool
    d160 = ( ( M.d13 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x161 -> x161 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x162 -> false ) ) ) $ ( d116 ) )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> x164 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d163 = if if d119 then false else true then if d115 then false else false else if true then false else true
    d166 : ( ( Set -> Set ) ∋ ( ( λ x167 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d166 = if if d121 then d158 else true then if d152 then d153 else d121 else if true then d135 else true
    d168 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then Bool else x170 ) ) ) $ ( if true then Bool else Bool )
    d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> if d127 then false else x169 ) ) ) $ ( if d127 then false else d135 )
    d171 : ( ( Set -> Set ) ∋ ( ( λ x174 -> ( ( Set -> Set ) ∋ ( ( λ x175 -> Bool ) ) ) $ ( x174 ) ) ) ) $ ( if false then Bool else Bool )
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> x173 ) ) ) $ ( d163 ) ) ) ) $ ( if true then d119 else d115 )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d176 = ( ( M.d5 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x177 -> d127 ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x178 -> true ) ) ) $ ( d158 ) )
    d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> x182 ) ) ) $ ( x182 ) ) ) ) $ ( if true then Bool else Bool )
    d181 = if if d160 then false else d112 then if d160 then d135 else true else if true then d158 else true
    d184 : ( ( Set -> Set ) ∋ ( ( λ x186 -> if true then x186 else Bool ) ) ) $ ( if true then Bool else Bool )
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( M.d3 ) $ ( if d112 then x185 else x185 ) ) $ ( if x185 then false else d151 ) ) ) ) $ ( if true then true else d163 )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> ( ( Set -> Set ) ∋ ( ( λ x189 -> x188 ) ) ) $ ( x188 ) ) ) ) $ ( if true then Bool else Bool )
    d187 = if if d144 then true else false then if true then true else false else if true then true else d171
    d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> x191 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d190 = if if true then true else d144 then if d160 then true else d152 else if false then d123 else d181
    d193 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> Bool ) ) ) $ ( x196 ) ) ) ) $ ( if true then Bool else Bool )
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> ( ( Bool -> Bool ) ∋ ( ( λ x195 -> true ) ) ) $ ( x194 ) ) ) ) $ ( if d119 then d114 else d163 )
    d198 : ( ( Set -> Set ) ∋ ( ( λ x199 -> ( ( Set -> Set ) ∋ ( ( λ x200 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d198 = if if d166 then d163 else true then if d114 then false else false else if d160 then true else false
    d201 : if true then if true then Bool else Bool else if true then Bool else Bool
    d201 = ( ( Bool -> Bool ) ∋ ( ( λ x202 -> if d152 then d123 else true ) ) ) $ ( if false then true else d147 )
    d203 : if false then if false then Bool else Bool else if false then Bool else Bool
    d203 = ( ( M.d76 ) $ ( if false then true else true ) ) $ ( if d163 then true else false )
    d204 : ( ( Set -> Set ) ∋ ( ( λ x205 -> ( ( Set -> Set ) ∋ ( ( λ x206 -> x206 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d204 = ( ( M.d13 ) $ ( ( ( M.d83 ) $ ( d122 ) ) $ ( d117 ) ) ) $ ( if d163 then d135 else true )
    d207 : ( ( Set -> Set ) ∋ ( ( λ x209 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> x209 ) ) ) $ ( x209 ) ) ) ) $ ( if false then Bool else Bool )
    d207 = ( ( Bool -> Bool ) ∋ ( ( λ x208 -> ( ( M.d18 ) $ ( if d115 then false else x208 ) ) $ ( if x208 then true else x208 ) ) ) ) $ ( if true then false else d152 )
    d211 : if false then if false then Bool else Bool else if false then Bool else Bool
    d211 = if if d153 then false else d166 then if d198 then d171 else d127 else if d160 then d141 else true
    d212 : ( ( Set -> Set ) ∋ ( ( λ x213 -> if true then Bool else x213 ) ) ) $ ( if true then Bool else Bool )
    d212 = ( ( M.d94 ) $ ( ( ( M.d41 ) $ ( false ) ) $ ( d117 ) ) ) $ ( ( ( M.d27 ) $ ( false ) ) $ ( true ) )
    d214 : ( ( Set -> Set ) ∋ ( ( λ x215 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d214 = if if d211 then d168 else true then if d163 then true else d212 else if d127 then true else true