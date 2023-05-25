module Size5Test15  where
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
        d3 : if false then if false then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if p2 then true else p1 ) ) ) $ ( if true then p1 else p2 )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if false then Bool else x6 ) ) ) $ ( if true then Bool else Bool )
        d5 = if if d3 then d3 else d3 then if p2 then false else d3 else if true then false else p2
        d7 : if false then if false then Bool else Bool else if true then Bool else Bool
        d7 = ( ( Bool -> Bool ) ∋ ( ( λ x8 -> if true then x8 else d3 ) ) ) $ ( if p2 then p2 else false )
        d9 : if false then if false then Bool else Bool else if true then Bool else Bool
        d9 = if if true then p2 else d7 then if d3 then false else true else if p1 then p2 else d7
        d10 : ( ( Set -> Set ) ∋ ( ( λ x11 -> if true then x11 else Bool ) ) ) $ ( if true then Bool else Bool )
        d10 = if if d7 then true else d5 then if p1 then p1 else true else if p2 then true else p1
        d12 : ( ( Set -> Set ) ∋ ( ( λ x13 -> ( ( Set -> Set ) ∋ ( ( λ x14 -> Bool ) ) ) $ ( x13 ) ) ) ) $ ( if true then Bool else Bool )
        d12 = if if p2 then d7 else false then if d10 then p2 else p2 else if p2 then p1 else p1
        d15 : if true then if false then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> ( ( Bool -> Bool ) ∋ ( ( λ x17 -> d5 ) ) ) $ ( p2 ) ) ) ) $ ( if d3 then d7 else p2 )
        d18 : ( ( Set -> Set ) ∋ ( ( λ x19 -> ( ( Set -> Set ) ∋ ( ( λ x20 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d18 = if if p1 then p1 else d15 then if true then p1 else d5 else if false then p1 else false
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> ( ( Set -> Set ) ∋ ( ( λ x24 -> Bool ) ) ) $ ( x23 ) ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if d12 then d12 else x22 ) ) ) $ ( if d5 then d5 else true )
        d25 : if true then if false then Bool else Bool else if false then Bool else Bool
        d25 = if if false then d18 else d10 then if d3 then false else true else if d3 then false else p2
        d26 : ( ( Set -> Set ) ∋ ( ( λ x29 -> if false then Bool else x29 ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d3 ) ) ) $ ( p2 ) ) ) ) $ ( if false then d5 else d3 )
        d30 : if false then if false then Bool else Bool else if true then Bool else Bool
        d30 = ( ( Bool -> Bool ) ∋ ( ( λ x31 -> ( ( Bool -> Bool ) ∋ ( ( λ x32 -> x32 ) ) ) $ ( d25 ) ) ) ) $ ( if false then false else p1 )
        d33 : if false then if true then Bool else Bool else if true then Bool else Bool
        d33 = if if d12 then d21 else d25 then if p1 then d3 else d30 else if d7 then d3 else d5
        d34 : if true then if true then Bool else Bool else if true then Bool else Bool
        d34 = if if d18 then true else d7 then if false then d12 else false else if d25 then d33 else false
        d35 : if true then if true then Bool else Bool else if true then Bool else Bool
        d35 = if if d5 then d25 else true then if false then d3 else false else if false then true else true
        d36 : if false then if false then Bool else Bool else if true then Bool else Bool
        d36 = if if d9 then false else false then if true then d15 else p1 else if d5 then d26 else d34
        d37 : if false then if false then Bool else Bool else if false then Bool else Bool
        d37 = if if p2 then p2 else false then if d34 then d26 else d7 else if p2 then d7 else true
        d38 : if false then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if true then p1 else d30 then if d12 then p1 else true else if p2 then d5 else p1
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( x40 ) ) ) ) $ ( if false then Bool else Bool )
        d39 = if if d18 then p2 else d38 then if d3 then p2 else p2 else if p2 then p2 else p1
        d42 : if false then if false then Bool else Bool else if false then Bool else Bool
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> false ) ) ) $ ( d15 ) ) ) ) $ ( if true then true else p2 )
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then x46 else x46 ) ) ) $ ( if true then Bool else Bool )
        d45 = if if true then true else false then if false then p2 else p1 else if d36 then d21 else false
        d47 : if false then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> ( ( Bool -> Bool ) ∋ ( ( λ x49 -> false ) ) ) $ ( d37 ) ) ) ) $ ( if d33 then p1 else p1 )
        d50 : ( ( Set -> Set ) ∋ ( ( λ x51 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d50 = if if d34 then d12 else false then if d42 then d21 else p1 else if p2 then p2 else d47
        d52 : ( ( Set -> Set ) ∋ ( ( λ x53 -> ( ( Set -> Set ) ∋ ( ( λ x54 -> Bool ) ) ) $ ( x53 ) ) ) ) $ ( if false then Bool else Bool )
        d52 = if if d39 then d38 else p1 then if p1 then p1 else d50 else if true then true else d21
        d55 : ( ( Set -> Set ) ∋ ( ( λ x56 -> ( ( Set -> Set ) ∋ ( ( λ x57 -> x57 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d55 = if if false then false else true then if d15 then true else d35 else if true then d52 else true
        d58 : if false then if true then Bool else Bool else if false then Bool else Bool
        d58 = if if d38 then d18 else false then if p1 then d18 else p1 else if d50 then false else d39
        d59 : if true then if false then Bool else Bool else if true then Bool else Bool
        d59 = if if d9 then false else p2 then if d50 then false else true else if p2 then p2 else d38
        d60 : if true then if false then Bool else Bool else if true then Bool else Bool
        d60 = if if d18 then p2 else true then if d15 then true else d5 else if d21 then p1 else d37
        d61 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x63 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> if true then p2 else d33 ) ) ) $ ( if d36 then false else true )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> ( ( Set -> Set ) ∋ ( ( λ x67 -> x66 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d65 = if if p1 then true else p1 then if true then false else d34 else if p2 then false else d7
        d68 : if true then if true then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if true then p1 else p1 )
        d71 : if false then if false then Bool else Bool else if true then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> d35 ) ) ) $ ( d38 ) ) ) ) $ ( if p1 then p2 else d18 )
        d74 : if true then if false then Bool else Bool else if false then Bool else Bool
        d74 = if if d7 then d10 else d58 then if false then p2 else p2 else if d35 then d10 else d52
        d75 : if false then if true then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> ( ( Bool -> Bool ) ∋ ( ( λ x77 -> d15 ) ) ) $ ( d7 ) ) ) ) $ ( if d52 then p1 else false )
        d78 : if true then if false then Bool else Bool else if false then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> if d71 then p1 else p2 ) ) ) $ ( if p1 then d38 else d33 )
        d80 : if true then if false then Bool else Bool else if true then Bool else Bool
        d80 = ( ( Bool -> Bool ) ∋ ( ( λ x81 -> if d12 then true else p2 ) ) ) $ ( if false then p1 else true )
        d82 : ( ( Set -> Set ) ∋ ( ( λ x85 -> if false then Bool else x85 ) ) ) $ ( if false then Bool else Bool )
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> ( ( Bool -> Bool ) ∋ ( ( λ x84 -> true ) ) ) $ ( p2 ) ) ) ) $ ( if p1 then p1 else d52 )
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then x87 else Bool ) ) ) $ ( if false then Bool else Bool )
        d86 = if if d74 then p2 else d9 then if d35 then true else false else if p2 then false else p2
        d88 : if true then if false then Bool else Bool else if false then Bool else Bool
        d88 = if if d71 then d55 else true then if false then d3 else true else if false then false else false
        d89 : if true then if false then Bool else Bool else if false then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if p1 then p2 else p2 ) ) ) $ ( if d65 then true else true )
    d91 : if false then if true then Bool else Bool else if false then Bool else Bool
    d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> ( ( Bool -> Bool ) ∋ ( ( λ x93 -> false ) ) ) $ ( x92 ) ) ) ) $ ( if false then true else false )
    d94 : if true then if true then Bool else Bool else if true then Bool else Bool
    d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> x95 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d91 )
    d97 : ( ( Set -> Set ) ∋ ( ( λ x98 -> ( ( Set -> Set ) ∋ ( ( λ x99 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d97 = ( ( M.d86 ) $ ( ( ( M.d75 ) $ ( true ) ) $ ( d94 ) ) ) $ ( if d91 then false else false )
    d100 : ( ( Set -> Set ) ∋ ( ( λ x103 -> if false then x103 else Bool ) ) ) $ ( if false then Bool else Bool )
    d100 = ( ( Bool -> Bool ) ∋ ( ( λ x101 -> ( ( Bool -> Bool ) ∋ ( ( λ x102 -> x101 ) ) ) $ ( d91 ) ) ) ) $ ( if d97 then false else d97 )
    d104 : ( ( Set -> Set ) ∋ ( ( λ x106 -> ( ( Set -> Set ) ∋ ( ( λ x107 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( M.d78 ) $ ( if x105 then d94 else d97 ) ) $ ( if true then false else d91 ) ) ) ) $ ( if true then d91 else d97 )
    d108 : if false then if false then Bool else Bool else if true then Bool else Bool
    d108 = if if d97 then false else d97 then if d94 then d104 else true else if true then d94 else d91
    d109 : if true then if false then Bool else Bool else if true then Bool else Bool
    d109 = ( ( M.d58 ) $ ( if false then false else d108 ) ) $ ( ( ( M.d80 ) $ ( d108 ) ) $ ( false ) )
    d110 : ( ( Set -> Set ) ∋ ( ( λ x113 -> if true then x113 else x113 ) ) ) $ ( if true then Bool else Bool )
    d110 = ( ( M.d45 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x111 -> x111 ) ) ) $ ( d109 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x112 -> x112 ) ) ) $ ( true ) )
    d114 : if false then if false then Bool else Bool else if true then Bool else Bool
    d114 = ( ( M.d25 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x115 -> x115 ) ) ) $ ( true ) ) ) $ ( ( ( M.d52 ) $ ( d91 ) ) $ ( false ) )
    d116 : if false then if true then Bool else Bool else if false then Bool else Bool
    d116 = ( ( M.d35 ) $ ( if d114 then false else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x117 -> false ) ) ) $ ( d109 ) )
    d118 : if true then if true then Bool else Bool else if true then Bool else Bool
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( Bool -> Bool ) ∋ ( ( λ x120 -> d109 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d100 )
    d121 : if false then if false then Bool else Bool else if false then Bool else Bool
    d121 = ( ( Bool -> Bool ) ∋ ( ( λ x122 -> if d118 then false else false ) ) ) $ ( if true then d100 else d91 )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if d121 then x124 else x124 ) ) ) $ ( if false then d100 else true )
    d126 : if false then if true then Bool else Bool else if false then Bool else Bool
    d126 = ( ( M.d35 ) $ ( if d110 then false else false ) ) $ ( ( ( M.d18 ) $ ( d118 ) ) $ ( d91 ) )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( M.d5 ) $ ( if true then false else d100 ) ) $ ( if false then d97 else d100 ) ) ) ) $ ( if d91 then true else d110 )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> x133 ) ) ) $ ( x132 ) ) ) ) $ ( if true then Bool else Bool )
    d131 = ( ( M.d65 ) $ ( ( ( M.d47 ) $ ( d114 ) ) $ ( true ) ) ) $ ( if d123 then d121 else false )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x137 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d134 = ( ( M.d3 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x135 -> d131 ) ) ) $ ( d127 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x136 -> false ) ) ) $ ( d114 ) )
    d138 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> if false then d104 else x139 ) ) ) $ ( if d109 then d91 else false )
    d141 : ( ( Set -> Set ) ∋ ( ( λ x143 -> if false then x143 else x143 ) ) ) $ ( if false then Bool else Bool )
    d141 = ( ( M.d47 ) $ ( ( ( M.d50 ) $ ( d123 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x142 -> false ) ) ) $ ( d138 ) )
    d144 : if true then if true then Bool else Bool else if false then Bool else Bool
    d144 = ( ( M.d36 ) $ ( if false then true else d109 ) ) $ ( ( ( M.d30 ) $ ( d108 ) ) $ ( d91 ) )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d145 = ( ( Bool -> Bool ) ∋ ( ( λ x146 -> ( ( Bool -> Bool ) ∋ ( ( λ x147 -> x146 ) ) ) $ ( d118 ) ) ) ) $ ( if d108 then d123 else d108 )
    d149 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then Bool else x150 ) ) ) $ ( if false then Bool else Bool )
    d149 = if if d134 then false else true then if d114 then false else false else if d144 then false else d126
    d151 : if true then if true then Bool else Bool else if false then Bool else Bool
    d151 = ( ( M.d39 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x152 -> d123 ) ) ) $ ( d123 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x153 -> false ) ) ) $ ( d123 ) )
    d154 : if true then if true then Bool else Bool else if false then Bool else Bool
    d154 = if if false then true else true then if d151 then d108 else d141 else if false then d149 else d134
    d155 : if false then if true then Bool else Bool else if false then Bool else Bool
    d155 = if if d126 then d123 else d94 then if true then d144 else d118 else if d110 then d108 else d97
    d156 : if false then if true then Bool else Bool else if true then Bool else Bool
    d156 = ( ( M.d78 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x157 -> true ) ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x158 -> d114 ) ) ) $ ( false ) )
    d159 : if true then if false then Bool else Bool else if true then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if d156 then d121 else true ) ) ) $ ( if false then false else false )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> x165 ) ) ) $ ( x164 ) ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> ( ( Bool -> Bool ) ∋ ( ( λ x163 -> false ) ) ) $ ( x162 ) ) ) ) $ ( if d123 then d134 else d131 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x169 -> ( ( Set -> Set ) ∋ ( ( λ x170 -> x169 ) ) ) $ ( x169 ) ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( Bool -> Bool ) ∋ ( ( λ x167 -> ( ( Bool -> Bool ) ∋ ( ( λ x168 -> d145 ) ) ) $ ( d126 ) ) ) ) $ ( if false then false else d134 )
    d171 : ( ( Set -> Set ) ∋ ( ( λ x172 -> ( ( Set -> Set ) ∋ ( ( λ x173 -> Bool ) ) ) $ ( x172 ) ) ) ) $ ( if false then Bool else Bool )
    d171 = if if d118 then true else false then if true then d134 else true else if d97 then d155 else d114
    d174 : if false then if false then Bool else Bool else if true then Bool else Bool
    d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> ( ( M.d61 ) $ ( if d91 then x175 else x175 ) ) $ ( if true then d166 else true ) ) ) ) $ ( if d131 then d127 else d171 )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> ( ( Set -> Set ) ∋ ( ( λ x179 -> x178 ) ) ) $ ( x178 ) ) ) ) $ ( if false then Bool else Bool )
    d176 = ( ( M.d34 ) $ ( ( ( M.d82 ) $ ( true ) ) $ ( d97 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x177 -> true ) ) ) $ ( false ) )
    d180 : if false then if true then Bool else Bool else if false then Bool else Bool
    d180 = ( ( M.d30 ) $ ( if false then false else d171 ) ) $ ( if false then true else false )
    d181 : if false then if false then Bool else Bool else if true then Bool else Bool
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if d94 then false else d156 ) ) ) $ ( if true then d159 else d91 )
    d183 : if false then if true then Bool else Bool else if true then Bool else Bool
    d183 = if if false then false else d171 then if d166 then false else true else if d123 then false else d134
    d184 : if false then if true then Bool else Bool else if false then Bool else Bool
    d184 = ( ( Bool -> Bool ) ∋ ( ( λ x185 -> ( ( M.d78 ) $ ( if d183 then x185 else true ) ) $ ( if false then true else d134 ) ) ) ) $ ( if d138 then d138 else true )
    d186 : if true then if false then Bool else Bool else if false then Bool else Bool
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> if x187 then x187 else d100 ) ) ) $ ( if true then d127 else d149 )
    d188 : if true then if true then Bool else Bool else if true then Bool else Bool
    d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if d118 then false else false ) ) ) $ ( if d176 then d127 else d176 )
    d190 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> Bool ) ) ) $ ( x192 ) ) ) ) $ ( if true then Bool else Bool )
    d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> ( ( M.d55 ) $ ( if d156 then false else x191 ) ) $ ( if x191 then x191 else x191 ) ) ) ) $ ( if false then d176 else true )
    d194 : ( ( Set -> Set ) ∋ ( ( λ x196 -> ( ( Set -> Set ) ∋ ( ( λ x197 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> if x195 then true else d188 ) ) ) $ ( if false then false else d184 )