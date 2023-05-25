module Size10Test5  where
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

    module M ( p1 : if true then Bool else Bool ) ( p2 : if true then Bool else Bool )  where
        d3 : if true then if true then Bool else Bool else if false then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if x4 then p2 else false ) ) ) $ ( if true then false else false )
        d5 : if true then if false then Bool else Bool else if true then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if d3 then d3 else p1 ) ) ) $ ( if true then true else p2 )
        d7 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> x10 ) ) ) $ ( x9 ) ) ) ) $ ( if true then Bool else Bool )
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if x8 then true else p2 ) ) ) $ ( if d3 then d3 else p2 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> x14 ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if false then d7 else x12 ) ) ) $ ( if p1 then p2 else true )
        d15 : if false then if true then Bool else Bool else if true then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> false ) ) ) $ ( true ) ) ) ) $ ( if p1 then d5 else p1 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> if true then x19 else x19 ) ) ) $ ( if true then Bool else Bool )
        d18 = if if p1 then true else false then if p2 then false else p1 else if p1 then true else true
        d20 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if true then x22 else Bool ) ) ) $ ( if false then Bool else Bool )
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> if d15 then true else x21 ) ) ) $ ( if p1 then false else p1 )
        d23 : if true then if true then Bool else Bool else if true then Bool else Bool
        d23 = if if true then false else p1 then if d5 then false else p1 else if true then p2 else true
        d24 : if true then if true then Bool else Bool else if true then Bool else Bool
        d24 = ( ( Bool -> Bool ) ∋ ( ( λ x25 -> ( ( Bool -> Bool ) ∋ ( ( λ x26 -> true ) ) ) $ ( d11 ) ) ) ) $ ( if true then d23 else p2 )
        d27 : if false then if false then Bool else Bool else if true then Bool else Bool
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> if true then false else x28 ) ) ) $ ( if false then p2 else p1 )
        d29 : if false then if true then Bool else Bool else if true then Bool else Bool
        d29 = if if p2 then p2 else d7 then if d24 then d24 else false else if p1 then d23 else d23
        d30 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then Bool else x33 ) ) ) $ ( if true then Bool else Bool )
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> d15 ) ) ) $ ( p2 ) ) ) ) $ ( if false then p1 else d5 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x36 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if d11 then d3 else p1 ) ) ) $ ( if p1 then true else d23 )
        d38 : if true then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if p2 then p1 else p2 then if p2 then d5 else d3 else if p1 then p2 else d24
        d39 : if true then if true then Bool else Bool else if true then Bool else Bool
        d39 = ( ( Bool -> Bool ) ∋ ( ( λ x40 -> ( ( Bool -> Bool ) ∋ ( ( λ x41 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d18 then p2 else p2 )
        d42 : if false then if false then Bool else Bool else if true then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> false ) ) ) $ ( true ) ) ) ) $ ( if d27 then p1 else d39 )
        d45 : if false then if false then Bool else Bool else if true then Bool else Bool
        d45 = ( ( Bool -> Bool ) ∋ ( ( λ x46 -> ( ( Bool -> Bool ) ∋ ( ( λ x47 -> d20 ) ) ) $ ( p1 ) ) ) ) $ ( if d18 then p1 else true )
        d48 : if false then if false then Bool else Bool else if true then Bool else Bool
        d48 = if if p2 then p2 else true then if p1 then false else d20 else if p2 then d42 else p2
        d49 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( x52 ) ) ) ) $ ( if true then Bool else Bool )
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> ( ( Bool -> Bool ) ∋ ( ( λ x51 -> p1 ) ) ) $ ( d48 ) ) ) ) $ ( if false then p2 else p2 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d54 = if if true then p2 else false then if false then true else d24 else if d38 then true else d23
        d56 : if false then if true then Bool else Bool else if true then Bool else Bool
        d56 = if if d20 then d18 else p2 then if false then d27 else false else if false then p2 else false
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then x58 else x58 ) ) ) $ ( if true then Bool else Bool )
        d57 = if if d30 then d23 else d29 then if true then p2 else true else if d7 then p2 else false
        d59 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if false then Bool else x62 ) ) ) $ ( if false then Bool else Bool )
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> ( ( Bool -> Bool ) ∋ ( ( λ x61 -> d49 ) ) ) $ ( p1 ) ) ) ) $ ( if p1 then p2 else d45 )
        d63 : if true then if true then Bool else Bool else if true then Bool else Bool
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> ( ( Bool -> Bool ) ∋ ( ( λ x65 -> p2 ) ) ) $ ( d34 ) ) ) ) $ ( if d38 then d34 else d42 )
        d66 : if true then if false then Bool else Bool else if false then Bool else Bool
        d66 = if if p2 then false else d11 then if p2 then d5 else d45 else if false then d49 else d11
        d67 : if true then if false then Bool else Bool else if true then Bool else Bool
        d67 = if if p1 then d29 else p2 then if true then d3 else p2 else if true then p2 else true
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if x69 then d67 else d23 ) ) ) $ ( if p2 then true else d18 )
        d70 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x73 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d70 = ( ( Bool -> Bool ) ∋ ( ( λ x71 -> ( ( Bool -> Bool ) ∋ ( ( λ x72 -> d39 ) ) ) $ ( x71 ) ) ) ) $ ( if d3 then p1 else false )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = if if d3 then true else p1 then if true then p2 else p1 else if p1 then d39 else d23
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> if d29 then false else p2 ) ) ) $ ( if p1 then p2 else true )
        d78 : ( ( Set -> Set ) ∋ ( ( λ x81 -> ( ( Set -> Set ) ∋ ( ( λ x82 -> x81 ) ) ) $ ( x81 ) ) ) ) $ ( if true then Bool else Bool )
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> d3 ) ) ) $ ( false ) ) ) ) $ ( if d30 then d24 else d68 )
        d83 : if false then if true then Bool else Bool else if true then Bool else Bool
        d83 = if if p1 then p2 else true then if false then true else true else if p1 then d75 else p2
        d84 : ( ( Set -> Set ) ∋ ( ( λ x85 -> ( ( Set -> Set ) ∋ ( ( λ x86 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d84 = if if d56 then d42 else p2 then if p2 then d63 else true else if d38 then true else p2
        d87 : ( ( Set -> Set ) ∋ ( ( λ x88 -> ( ( Set -> Set ) ∋ ( ( λ x89 -> x89 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d87 = if if d83 then p1 else true then if false then d68 else true else if p2 then d24 else true
        d90 : if false then if true then Bool else Bool else if true then Bool else Bool
        d90 = ( ( Bool -> Bool ) ∋ ( ( λ x91 -> ( ( Bool -> Bool ) ∋ ( ( λ x92 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if d5 then d27 else p2 )
        d93 : if false then if true then Bool else Bool else if false then Bool else Bool
        d93 = if if d3 then d27 else true then if false then p1 else d87 else if d84 then true else p2
        d94 : if true then if false then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if p2 then d76 else p1 ) ) ) $ ( if p1 then p1 else true )
        d96 : if true then if true then Bool else Bool else if true then Bool else Bool
        d96 = if if true then d3 else p2 then if d48 then p1 else d54 else if p1 then d84 else d29
        d97 : if false then if false then Bool else Bool else if true then Bool else Bool
        d97 = if if p1 then p2 else p1 then if p1 then p1 else p2 else if d90 then p1 else d49
        d98 : ( ( Set -> Set ) ∋ ( ( λ x101 -> ( ( Set -> Set ) ∋ ( ( λ x102 -> Bool ) ) ) $ ( x101 ) ) ) ) $ ( if false then Bool else Bool )
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> ( ( Bool -> Bool ) ∋ ( ( λ x100 -> x99 ) ) ) $ ( true ) ) ) ) $ ( if true then true else true )
    d103 : ( ( Set -> Set ) ∋ ( ( λ x105 -> if false then x105 else Bool ) ) ) $ ( if true then Bool else Bool )
    d103 = ( ( Bool -> Bool ) ∋ ( ( λ x104 -> if true then false else false ) ) ) $ ( if true then false else true )
    d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> if true then Bool else x108 ) ) ) $ ( if false then Bool else Bool )
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( M.d54 ) $ ( if x107 then false else true ) ) $ ( if false then d103 else d103 ) ) ) ) $ ( if false then false else true )
    d109 : if false then if true then Bool else Bool else if false then Bool else Bool
    d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if d106 then d103 else x110 ) ) ) $ ( if true then d103 else false )
    d111 : ( ( Set -> Set ) ∋ ( ( λ x112 -> ( ( Set -> Set ) ∋ ( ( λ x113 -> x113 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d111 = if if d106 then true else d103 then if true then false else d109 else if false then false else d106
    d114 : ( ( Set -> Set ) ∋ ( ( λ x115 -> ( ( Set -> Set ) ∋ ( ( λ x116 -> x115 ) ) ) $ ( x115 ) ) ) ) $ ( if false then Bool else Bool )
    d114 = ( ( M.d66 ) $ ( if true then d106 else d111 ) ) $ ( ( ( M.d5 ) $ ( true ) ) $ ( true ) )
    d117 : if false then if false then Bool else Bool else if false then Bool else Bool
    d117 = ( ( M.d38 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x118 -> d114 ) ) ) $ ( d111 ) ) ) $ ( if true then false else d111 )
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> x120 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d119 = ( ( M.d90 ) $ ( ( ( M.d11 ) $ ( d106 ) ) $ ( true ) ) ) $ ( if d103 then d111 else d109 )
    d122 : if true then if false then Bool else Bool else if true then Bool else Bool
    d122 = if if d117 then false else d109 then if true then false else true else if true then d117 else d111
    d123 : if false then if true then Bool else Bool else if false then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( M.d87 ) $ ( if d117 then d114 else d103 ) ) $ ( if x124 then true else false ) ) ) ) $ ( if true then false else d119 )
    d125 : if true then if false then Bool else Bool else if true then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if true then d122 else x126 ) ) ) $ ( if d114 then d109 else true )
    d127 : if false then if true then Bool else Bool else if false then Bool else Bool
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if false then false else false ) ) ) $ ( if true then true else false )
    d129 : ( ( Set -> Set ) ∋ ( ( λ x131 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> if x130 then d103 else true ) ) ) $ ( if true then d125 else false )
    d132 : if false then if true then Bool else Bool else if true then Bool else Bool
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> if x133 then x133 else d122 ) ) ) $ ( if d103 then true else d114 )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d134 = if if false then d123 else false then if d132 then d127 else true else if false then true else d109
    d137 : if true then if false then Bool else Bool else if false then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> true ) ) ) $ ( d111 ) ) ) ) $ ( if d106 then d129 else true )
    d140 : if false then if false then Bool else Bool else if true then Bool else Bool
    d140 = if if true then d111 else d114 then if false then true else false else if false then d127 else false
    d141 : if false then if false then Bool else Bool else if true then Bool else Bool
    d141 = ( ( M.d67 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x142 -> d103 ) ) ) $ ( true ) ) ) $ ( if true then true else true )
    d143 : if true then if true then Bool else Bool else if true then Bool else Bool
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( M.d24 ) $ ( if true then x144 else true ) ) $ ( if true then x144 else d114 ) ) ) ) $ ( if d114 then d134 else false )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> d123 ) ) ) $ ( false ) ) ) ) $ ( if true then d143 else false )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> ( ( Set -> Set ) ∋ ( ( λ x151 -> Bool ) ) ) $ ( x150 ) ) ) ) $ ( if true then Bool else Bool )
    d149 = ( ( M.d97 ) $ ( if false then false else true ) ) $ ( ( ( M.d70 ) $ ( d114 ) ) $ ( false ) )
    d152 : ( ( Set -> Set ) ∋ ( ( λ x153 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d152 = if if d106 then d111 else false then if d129 then d125 else false else if false then true else d111
    d154 : if false then if false then Bool else Bool else if false then Bool else Bool
    d154 = if if true then false else true then if true then true else true else if d137 then d119 else d129
    d155 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if true then Bool else x158 ) ) ) $ ( if false then Bool else Bool )
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( Bool -> Bool ) ∋ ( ( λ x157 -> true ) ) ) $ ( d106 ) ) ) ) $ ( if false then false else true )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x161 -> ( ( Set -> Set ) ∋ ( ( λ x162 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( M.d7 ) $ ( if true then d149 else x160 ) ) $ ( if x160 then d152 else d103 ) ) ) ) $ ( if true then false else d132 )
    d163 : ( ( Set -> Set ) ∋ ( ( λ x164 -> if false then Bool else x164 ) ) ) $ ( if true then Bool else Bool )
    d163 = if if false then true else d143 then if d127 then d154 else d145 else if true then d127 else d152
    d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> ( ( Set -> Set ) ∋ ( ( λ x167 -> x167 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d165 = if if d106 then d159 else d129 then if true then d122 else d122 else if false then d143 else d145
    d168 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d168 = if if d149 then d122 else true then if d154 then true else d154 else if false then d137 else d132
    d171 : if true then if false then Bool else Bool else if false then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( M.d18 ) $ ( if x172 then d165 else d129 ) ) $ ( if true then d137 else false ) ) ) ) $ ( if d114 then true else d127 )
    d173 : ( ( Set -> Set ) ∋ ( ( λ x176 -> ( ( Set -> Set ) ∋ ( ( λ x177 -> x176 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d173 = ( ( Bool -> Bool ) ∋ ( ( λ x174 -> ( ( Bool -> Bool ) ∋ ( ( λ x175 -> x174 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
    d178 : if false then if false then Bool else Bool else if true then Bool else Bool
    d178 = ( ( M.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x179 -> x179 ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x180 -> x180 ) ) ) $ ( false ) )
    d181 : if true then if true then Bool else Bool else if true then Bool else Bool
    d181 = if if false then d119 else d137 then if true then true else d163 else if d163 then d111 else true
    d182 : if false then if false then Bool else Bool else if false then Bool else Bool
    d182 = ( ( M.d87 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x183 -> false ) ) ) $ ( d109 ) ) ) $ ( if d165 then d163 else d154 )
    d184 : if true then if false then Bool else Bool else if false then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( Bool -> Bool ) ∋ ( ( λ x186 -> true ) ) ) $ ( true ) ) ) ) $ ( if d149 then true else false )
    d187 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if false then Bool else x188 ) ) ) $ ( if true then Bool else Bool )
    d187 = if if false then d114 else d182 then if false then false else true else if true then d173 else d134
    d189 : if true then if true then Bool else Bool else if false then Bool else Bool
    d189 = ( ( M.d24 ) $ ( ( ( M.d83 ) $ ( d140 ) ) $ ( false ) ) ) $ ( ( ( M.d49 ) $ ( d171 ) ) $ ( d145 ) )
    d190 : if true then if true then Bool else Bool else if true then Bool else Bool
    d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> if true then x191 else false ) ) ) $ ( if false then d145 else true )
    d192 : if false then if true then Bool else Bool else if true then Bool else Bool
    d192 = if if false then true else d184 then if false then d159 else true else if d187 then d141 else d184
    d193 : if true then if true then Bool else Bool else if true then Bool else Bool
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> if x194 then true else d103 ) ) ) $ ( if d149 then true else d152 )
    d195 : if true then if true then Bool else Bool else if false then Bool else Bool
    d195 = ( ( M.d30 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x197 -> d111 ) ) ) $ ( false ) )
    d198 : if true then if false then Bool else Bool else if true then Bool else Bool
    d198 = ( ( M.d67 ) $ ( if d189 then d119 else d143 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x199 -> d134 ) ) ) $ ( d114 ) )