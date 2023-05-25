module Size10Test6  where
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
        d3 : if true then if false then Bool else Bool else if true then Bool else Bool
        d3 = if if p1 then p1 else false then if false then true else p1 else if p2 then p1 else false
        d4 : if false then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if d3 then false else false ) ) ) $ ( if d3 then d3 else false )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x9 -> ( ( Set -> Set ) ∋ ( ( λ x10 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> x8 ) ) ) $ ( d3 ) ) ) ) $ ( if d4 then true else p1 )
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( x12 ) ) ) ) $ ( if true then Bool else Bool )
        d11 = if if d6 then true else false then if d4 then p1 else d3 else if d3 then d4 else d3
        d14 : ( ( Set -> Set ) ∋ ( ( λ x15 -> if false then Bool else x15 ) ) ) $ ( if true then Bool else Bool )
        d14 = if if false then false else p2 then if p1 then false else d11 else if p2 then d4 else false
        d16 : ( ( Set -> Set ) ∋ ( ( λ x17 -> ( ( Set -> Set ) ∋ ( ( λ x18 -> x17 ) ) ) $ ( x17 ) ) ) ) $ ( if false then Bool else Bool )
        d16 = if if d4 then d3 else false then if p2 then p1 else p2 else if false then true else p1
        d19 : ( ( Set -> Set ) ∋ ( ( λ x22 -> ( ( Set -> Set ) ∋ ( ( λ x23 -> x23 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> ( ( Bool -> Bool ) ∋ ( ( λ x21 -> true ) ) ) $ ( d16 ) ) ) ) $ ( if p1 then d16 else false )
        d24 : if true then if false then Bool else Bool else if true then Bool else Bool
        d24 = if if p1 then d6 else false then if d3 then p2 else d14 else if p2 then p2 else true
        d25 : ( ( Set -> Set ) ∋ ( ( λ x26 -> ( ( Set -> Set ) ∋ ( ( λ x27 -> Bool ) ) ) $ ( x26 ) ) ) ) $ ( if true then Bool else Bool )
        d25 = if if true then d14 else d19 then if d14 then p1 else d4 else if d6 then d11 else true
        d28 : if false then if true then Bool else Bool else if true then Bool else Bool
        d28 = if if true then p1 else p1 then if d14 then false else true else if d14 then p1 else p2
        d29 : if false then if true then Bool else Bool else if false then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if true then p1 else p2 ) ) ) $ ( if true then d14 else d19 )
        d31 : if true then if false then Bool else Bool else if false then Bool else Bool
        d31 = if if false then p1 else p2 then if p2 then p1 else d3 else if p2 then p2 else p2
        d32 : if true then if true then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if p1 then x33 else false ) ) ) $ ( if p2 then p2 else true )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( x37 ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> p1 ) ) ) $ ( true ) ) ) ) $ ( if p2 then d31 else false )
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = if if p2 then d3 else p2 then if d19 then true else p2 else if true then d11 else p1
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d14 ) ) ) $ ( true ) ) ) ) $ ( if p2 then true else p2 )
        d47 : if false then if false then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if d4 then false else true ) ) ) $ ( if d4 then d25 else false )
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else Bool ) ) ) $ ( if true then Bool else Bool )
        d49 = if if d39 then false else d11 then if p2 then d39 else false else if p2 then false else p1
        d51 : if false then if false then Bool else Bool else if false then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> false ) ) ) $ ( true ) ) ) ) $ ( if true then false else p2 )
        d54 : if false then if true then Bool else Bool else if true then Bool else Bool
        d54 = if if p1 then false else false then if d47 then d25 else d11 else if p1 then p1 else true
        d55 : if false then if false then Bool else Bool else if false then Bool else Bool
        d55 = if if d42 then d32 else true then if d42 then d19 else true else if true then d51 else p1
        d56 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then x57 else x57 ) ) ) $ ( if false then Bool else Bool )
        d56 = if if p2 then true else d6 then if d19 then p1 else true else if true then false else d28
        d58 : ( ( Set -> Set ) ∋ ( ( λ x59 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d58 = if if p2 then p2 else false then if p2 then false else d28 else if p2 then d31 else d51
        d60 : ( ( Set -> Set ) ∋ ( ( λ x63 -> if false then Bool else x63 ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> ( ( Bool -> Bool ) ∋ ( ( λ x62 -> false ) ) ) $ ( d58 ) ) ) ) $ ( if false then false else p2 )
        d64 : if true then if false then Bool else Bool else if true then Bool else Bool
        d64 = if if d19 then true else d51 then if true then p2 else false else if true then false else p1
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> x67 ) ) ) $ ( true ) ) ) ) $ ( if true then p1 else false )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x71 -> ( ( Set -> Set ) ∋ ( ( λ x72 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = ( ( Bool -> Bool ) ∋ ( ( λ x70 -> if d56 then p1 else p2 ) ) ) $ ( if true then false else d6 )
        d73 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else Bool ) ) ) $ ( if false then Bool else Bool )
        d73 = if if p2 then p2 else p1 then if d42 then p1 else d49 else if true then p2 else d28
        d75 : if true then if false then Bool else Bool else if true then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> x77 ) ) ) $ ( d28 ) ) ) ) $ ( if d24 then p1 else d24 )
        d78 : if false then if true then Bool else Bool else if false then Bool else Bool
        d78 = if if false then p1 else d25 then if false then true else p1 else if false then d34 else d31
        d79 : if true then if false then Bool else Bool else if true then Bool else Bool
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> d78 ) ) ) $ ( true ) ) ) ) $ ( if false then p2 else false )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x83 -> ( ( Set -> Set ) ∋ ( ( λ x84 -> x83 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d82 = if if p1 then d75 else d78 then if p1 then false else false else if false then d29 else true
        d85 : if false then if false then Bool else Bool else if true then Bool else Bool
        d85 = if if d31 then d78 else d64 then if d39 then p2 else true else if p1 then p1 else p1
        d86 : ( ( Set -> Set ) ∋ ( ( λ x88 -> if true then x88 else x88 ) ) ) $ ( if true then Bool else Bool )
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> if true then false else d69 ) ) ) $ ( if p2 then true else p2 )
        d89 : if false then if false then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d69 ) ) ) $ ( d75 ) ) ) ) $ ( if p1 then d11 else d69 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x95 -> if true then x95 else Bool ) ) ) $ ( if false then Bool else Bool )
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> p1 ) ) ) $ ( p2 ) ) ) ) $ ( if d79 then d4 else p1 )
        d96 : if false then if false then Bool else Bool else if true then Bool else Bool
        d96 = if if p1 then d34 else d24 then if p1 then true else false else if p2 then p2 else true
        d97 : if true then if true then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> if d4 then p1 else false ) ) ) $ ( if d29 then d14 else false )
        d99 : ( ( Set -> Set ) ∋ ( ( λ x101 -> if true then x101 else x101 ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> if d6 then d28 else d60 ) ) ) $ ( if d29 then false else false )
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if false then x103 else true ) ) ) $ ( if p2 then false else true )
    d106 : if false then if true then Bool else Bool else if true then Bool else Bool
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> ( ( M.d86 ) $ ( if true then x107 else x107 ) ) $ ( if true then x107 else x107 ) ) ) ) $ ( if false then true else false )
    d108 : ( ( Set -> Set ) ∋ ( ( λ x109 -> if true then x109 else x109 ) ) ) $ ( if false then Bool else Bool )
    d108 = if if d106 then false else false then if d106 then d106 else true else if true then d106 else d106
    d110 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then Bool else x111 ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( M.d4 ) $ ( ( ( M.d32 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d29 ) $ ( true ) ) $ ( false ) )
    d112 : if false then if false then Bool else Bool else if false then Bool else Bool
    d112 = ( ( M.d75 ) $ ( if false then d108 else false ) ) $ ( ( ( M.d97 ) $ ( d106 ) ) $ ( d108 ) )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> Bool ) ) ) $ ( x114 ) ) ) ) $ ( if true then Bool else Bool )
    d113 = if if d110 then d106 else d112 then if d106 then d106 else true else if true then false else d110
    d116 : if false then if false then Bool else Bool else if true then Bool else Bool
    d116 = ( ( Bool -> Bool ) ∋ ( ( λ x117 -> ( ( M.d99 ) $ ( if true then x117 else false ) ) $ ( if true then x117 else true ) ) ) ) $ ( if true then true else d110 )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d118 = ( ( M.d24 ) $ ( ( ( M.d58 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d73 ) $ ( d106 ) ) $ ( false ) )
    d121 : if false then if false then Bool else Bool else if true then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if x122 then false else true ) ) ) $ ( if false then true else false )
    d123 : if false then if false then Bool else Bool else if true then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> ( ( M.d31 ) $ ( if d108 then false else d116 ) ) $ ( if x124 then d116 else d110 ) ) ) ) $ ( if false then d106 else true )
    d125 : if true then if false then Bool else Bool else if true then Bool else Bool
    d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( false ) ) ) ) $ ( if d106 then d121 else d106 )
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then x129 else Bool ) ) ) $ ( if true then Bool else Bool )
    d128 = if if d113 then d125 else d118 then if true then true else d106 else if false then d121 else false
    d130 : if false then if false then Bool else Bool else if false then Bool else Bool
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> if d113 then x131 else x131 ) ) ) $ ( if false then false else true )
    d132 : if true then if false then Bool else Bool else if false then Bool else Bool
    d132 = ( ( Bool -> Bool ) ∋ ( ( λ x133 -> if x133 then d112 else false ) ) ) $ ( if false then false else d116 )
    d134 : if true then if false then Bool else Bool else if false then Bool else Bool
    d134 = ( ( M.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x135 -> x135 ) ) ) $ ( true ) ) ) $ ( ( ( M.d56 ) $ ( true ) ) $ ( true ) )
    d136 : ( ( Set -> Set ) ∋ ( ( λ x139 -> ( ( Set -> Set ) ∋ ( ( λ x140 -> Bool ) ) ) $ ( x139 ) ) ) ) $ ( if false then Bool else Bool )
    d136 = ( ( M.d64 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x137 -> d128 ) ) ) $ ( d128 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x138 -> false ) ) ) $ ( d110 ) )
    d141 : if true then if false then Bool else Bool else if false then Bool else Bool
    d141 = if if d112 then false else d132 then if false then d123 else d112 else if false then d123 else false
    d142 : if false then if false then Bool else Bool else if false then Bool else Bool
    d142 = if if true then d141 else true then if false then false else d113 else if d130 then d123 else false
    d143 : if true then if true then Bool else Bool else if true then Bool else Bool
    d143 = if if false then true else d116 then if true then false else false else if false then d106 else true
    d144 : ( ( Set -> Set ) ∋ ( ( λ x146 -> ( ( Set -> Set ) ∋ ( ( λ x147 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d144 = ( ( M.d58 ) $ ( ( ( M.d92 ) $ ( d121 ) ) $ ( d113 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x145 -> x145 ) ) ) $ ( true ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if false then Bool else x150 ) ) ) $ ( if true then Bool else Bool )
    d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> ( ( M.d6 ) $ ( if x149 then x149 else x149 ) ) $ ( if true then d132 else true ) ) ) ) $ ( if true then true else true )
    d151 : if false then if true then Bool else Bool else if false then Bool else Bool
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> if false then x152 else x152 ) ) ) $ ( if false then false else d134 )
    d153 : if false then if false then Bool else Bool else if false then Bool else Bool
    d153 = ( ( Bool -> Bool ) ∋ ( ( λ x154 -> ( ( Bool -> Bool ) ∋ ( ( λ x155 -> x155 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
    d156 : if false then if false then Bool else Bool else if false then Bool else Bool
    d156 = ( ( M.d11 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x157 -> d148 ) ) ) $ ( d121 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x158 -> x158 ) ) ) $ ( true ) )
    d159 : ( ( Set -> Set ) ∋ ( ( λ x160 -> ( ( Set -> Set ) ∋ ( ( λ x161 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d159 = ( ( M.d14 ) $ ( ( ( M.d16 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d19 ) $ ( true ) ) $ ( d132 ) )
    d162 : if true then if false then Bool else Bool else if false then Bool else Bool
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> ( ( Bool -> Bool ) ∋ ( ( λ x164 -> d121 ) ) ) $ ( d136 ) ) ) ) $ ( if d113 then false else d148 )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x167 -> ( ( Set -> Set ) ∋ ( ( λ x168 -> x167 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d165 = ( ( M.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x166 -> false ) ) ) $ ( false ) ) ) $ ( ( ( M.d55 ) $ ( d153 ) ) $ ( d132 ) )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then Bool else x170 ) ) ) $ ( if true then Bool else Bool )
    d169 = if if d110 then d153 else false then if d116 then d128 else d132 else if false then d113 else false
    d171 : if true then if false then Bool else Bool else if true then Bool else Bool
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( M.d51 ) $ ( if x172 then false else true ) ) $ ( if d143 then true else x172 ) ) ) ) $ ( if false then false else false )
    d173 : if false then if false then Bool else Bool else if false then Bool else Bool
    d173 = if if d130 then d151 else d106 then if false then true else d141 else if d136 then false else d151
    d174 : if true then if true then Bool else Bool else if true then Bool else Bool
    d174 = if if true then d142 else true then if true then false else true else if d110 then true else d144
    d175 : if false then if false then Bool else Bool else if false then Bool else Bool
    d175 = ( ( M.d19 ) $ ( if false then true else false ) ) $ ( ( ( M.d32 ) $ ( d142 ) ) $ ( true ) )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> Bool ) ) ) $ ( x178 ) ) ) ) $ ( if false then Bool else Bool )
    d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> if d142 then d130 else d141 ) ) ) $ ( if false then false else true )
    d180 : ( ( Set -> Set ) ∋ ( ( λ x182 -> if false then x182 else Bool ) ) ) $ ( if false then Bool else Bool )
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> ( ( M.d29 ) $ ( if x181 then x181 else x181 ) ) $ ( if false then d130 else x181 ) ) ) ) $ ( if true then d142 else true )
    d183 : if false then if false then Bool else Bool else if false then Bool else Bool
    d183 = ( ( Bool -> Bool ) ∋ ( ( λ x184 -> ( ( Bool -> Bool ) ∋ ( ( λ x185 -> false ) ) ) $ ( x184 ) ) ) ) $ ( if d171 then d156 else false )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if true then x188 else Bool ) ) ) $ ( if true then Bool else Bool )
    d186 = ( ( M.d47 ) $ ( if d151 then false else d144 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x187 -> x187 ) ) ) $ ( d141 ) )
    d189 : if false then if true then Bool else Bool else if false then Bool else Bool
    d189 = ( ( M.d75 ) $ ( if d176 then false else d128 ) ) $ ( ( ( M.d55 ) $ ( true ) ) $ ( true ) )
    d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> ( ( Set -> Set ) ∋ ( ( λ x192 -> x192 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d190 = ( ( M.d34 ) $ ( if true then true else d174 ) ) $ ( ( ( M.d51 ) $ ( d171 ) ) $ ( true ) )
    d193 : ( ( Set -> Set ) ∋ ( ( λ x194 -> ( ( Set -> Set ) ∋ ( ( λ x195 -> x195 ) ) ) $ ( x194 ) ) ) ) $ ( if true then Bool else Bool )
    d193 = if if d148 then false else true then if true then false else true else if d123 then true else d125
    d196 : if true then if true then Bool else Bool else if false then Bool else Bool
    d196 = if if d176 then d169 else true then if false then true else d193 else if true then d174 else false
    d197 : if true then if false then Bool else Bool else if true then Bool else Bool
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> if d171 then d116 else x198 ) ) ) $ ( if false then d165 else d106 )