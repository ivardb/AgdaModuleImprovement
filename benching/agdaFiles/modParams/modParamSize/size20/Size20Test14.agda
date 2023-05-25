module Size20Test14  where
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

    module M ( p1 : if true then if false then Bool else Bool else if false then Bool else Bool ) ( p2 : ( ( Set -> Set ) ∋ ( ( λ x3 -> if true then x3 else x3 ) ) ) $ ( if false then Bool else Bool ) )  where
        d4 : if true then if true then Bool else Bool else if false then Bool else Bool
        d4 = ( ( Bool -> Bool ) ∋ ( ( λ x5 -> if false then true else false ) ) ) $ ( if p2 then false else p1 )
        d6 : if false then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> p2 ) ) ) $ ( false ) ) ) ) $ ( if true then false else true )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then x10 else Bool ) ) ) $ ( if false then Bool else Bool )
        d9 = if if false then p1 else d6 then if true then p1 else d6 else if d6 then true else d6
        d11 : ( ( Set -> Set ) ∋ ( ( λ x12 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d11 = if if p1 then p1 else d9 then if p1 then p1 else p1 else if p2 then true else p1
        d13 : if false then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if d6 then true else d6 ) ) ) $ ( if p2 then p2 else true )
        d15 : if false then if true then Bool else Bool else if true then Bool else Bool
        d15 = if if false then d4 else false then if d11 then p2 else d13 else if d4 then true else p1
        d16 : ( ( Set -> Set ) ∋ ( ( λ x18 -> if false then Bool else x18 ) ) ) $ ( if true then Bool else Bool )
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> if d15 then p2 else p1 ) ) ) $ ( if p1 then false else true )
        d19 : if true then if true then Bool else Bool else if false then Bool else Bool
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if false then p1 else d9 ) ) ) $ ( if p2 then false else d6 )
        d21 : ( ( Set -> Set ) ∋ ( ( λ x22 -> if false then x22 else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = if if d11 then true else true then if p2 then d9 else p1 else if d9 then false else p1
        d23 : ( ( Set -> Set ) ∋ ( ( λ x24 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d23 = if if true then p2 else p1 then if d15 then d6 else true else if d19 then false else d4
        d25 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if true then x28 else x28 ) ) ) $ ( if false then Bool else Bool )
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> ( ( Bool -> Bool ) ∋ ( ( λ x27 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then p1 else false )
        d29 : ( ( Set -> Set ) ∋ ( ( λ x31 -> if false then x31 else Bool ) ) ) $ ( if true then Bool else Bool )
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if false then false else true ) ) ) $ ( if true then p1 else p2 )
        d32 : if true then if true then Bool else Bool else if true then Bool else Bool
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> if p2 then d29 else d11 ) ) ) $ ( if d29 then false else p2 )
        d34 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if p2 then false else true ) ) ) $ ( if d29 then d6 else false )
        d38 : if false then if true then Bool else Bool else if false then Bool else Bool
        d38 = if if false then false else true then if true then p1 else d34 else if d29 then p2 else p1
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d39 = if if p2 then d13 else p1 then if p1 then d11 else true else if d23 then d9 else d29
        d42 : if false then if true then Bool else Bool else if false then Bool else Bool
        d42 = if if true then false else d23 then if p2 then false else true else if false then d32 else p2
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then x44 else x44 ) ) ) $ ( if false then Bool else Bool )
        d43 = if if p1 then false else true then if true then p2 else p2 else if d13 then true else false
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( x46 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = if if p1 then true else d38 then if p2 then p1 else p1 else if p2 then d6 else true
        d48 : ( ( Set -> Set ) ∋ ( ( λ x49 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d48 = if if false then p2 else d34 then if true then d29 else true else if d32 then d21 else d11
        d50 : ( ( Set -> Set ) ∋ ( ( λ x53 -> if true then x53 else Bool ) ) ) $ ( if false then Bool else Bool )
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> ( ( Bool -> Bool ) ∋ ( ( λ x52 -> false ) ) ) $ ( d15 ) ) ) ) $ ( if d43 then p1 else p2 )
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> Bool ) ) ) $ ( x55 ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if true then p1 else p2 then if p1 then false else d9 else if p1 then d16 else p1
        d57 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> x60 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = ( ( Bool -> Bool ) ∋ ( ( λ x58 -> ( ( Bool -> Bool ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( false ) ) ) ) $ ( if d29 then p2 else p2 )
        d62 : if true then if false then Bool else Bool else if true then Bool else Bool
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if d11 then false else p2 ) ) ) $ ( if p2 then p1 else false )
        d64 : if true then if true then Bool else Bool else if true then Bool else Bool
        d64 = if if false then d39 else p2 then if p1 then p2 else d50 else if p1 then p1 else p2
        d65 : if false then if true then Bool else Bool else if false then Bool else Bool
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if true then false else true ) ) ) $ ( if p2 then p1 else false )
        d67 : if false then if true then Bool else Bool else if false then Bool else Bool
        d67 = if if false then d38 else p2 then if p1 then d32 else true else if false then p2 else d54
        d68 : ( ( Set -> Set ) ∋ ( ( λ x69 -> ( ( Set -> Set ) ∋ ( ( λ x70 -> Bool ) ) ) $ ( x69 ) ) ) ) $ ( if false then Bool else Bool )
        d68 = if if p1 then d39 else p1 then if d19 then p2 else d16 else if d25 then p1 else p1
        d71 : if true then if false then Bool else Bool else if false then Bool else Bool
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if true then d38 else false ) ) ) $ ( if p2 then d68 else d45 )
        d73 : if true then if true then Bool else Bool else if false then Bool else Bool
        d73 = if if p2 then p1 else true then if d25 then d21 else d16 else if d50 then false else d21
        d74 : if true then if true then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> d62 ) ) ) $ ( d11 ) ) ) ) $ ( if true then true else p1 )
        d77 : ( ( Set -> Set ) ∋ ( ( λ x80 -> ( ( Set -> Set ) ∋ ( ( λ x81 -> Bool ) ) ) $ ( x80 ) ) ) ) $ ( if true then Bool else Bool )
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> x78 ) ) ) $ ( d25 ) ) ) ) $ ( if p2 then false else p1 )
        d82 : if true then if false then Bool else Bool else if true then Bool else Bool
        d82 = ( ( Bool -> Bool ) ∋ ( ( λ x83 -> if d68 then false else d45 ) ) ) $ ( if true then d9 else d62 )
        d84 : if false then if true then Bool else Bool else if false then Bool else Bool
        d84 = if if d6 then d42 else p1 then if p2 then false else p1 else if true then p1 else p2
        d85 : ( ( Set -> Set ) ∋ ( ( λ x86 -> ( ( Set -> Set ) ∋ ( ( λ x87 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d85 = if if p1 then true else d42 then if p1 then d48 else true else if d77 then true else false
        d88 : ( ( Set -> Set ) ∋ ( ( λ x91 -> if true then x91 else x91 ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> ( ( Bool -> Bool ) ∋ ( ( λ x90 -> true ) ) ) $ ( d11 ) ) ) ) $ ( if true then d4 else d6 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else Bool ) ) ) $ ( if true then Bool else Bool )
        d92 = if if d57 then p2 else true then if d74 then d38 else p1 else if false then d4 else p1
        d94 : if false then if false then Bool else Bool else if false then Bool else Bool
        d94 = if if false then p1 else p1 then if d4 then d34 else true else if p2 then d23 else p1
        d95 : if false then if false then Bool else Bool else if false then Bool else Bool
        d95 = if if false then d13 else d6 then if p1 then d29 else false else if p1 then d48 else false
        d96 : if false then if false then Bool else Bool else if false then Bool else Bool
        d96 = ( ( Bool -> Bool ) ∋ ( ( λ x97 -> if d54 then false else false ) ) ) $ ( if p1 then d62 else false )
    d98 : if false then if false then Bool else Bool else if true then Bool else Bool
    d98 = ( ( M.d34 ) $ ( ( ( M.d71 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d6 ) $ ( true ) ) $ ( false ) )
    d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> ( ( Set -> Set ) ∋ ( ( λ x101 -> x100 ) ) ) $ ( x100 ) ) ) ) $ ( if false then Bool else Bool )
    d99 = if if d98 then true else d98 then if true then d98 else d98 else if true then d98 else d98
    d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> ( ( M.d77 ) $ ( if d98 then x103 else d99 ) ) $ ( if d99 then false else true ) ) ) ) $ ( if false then d99 else false )
    d105 : if false then if false then Bool else Bool else if true then Bool else Bool
    d105 = if if d102 then false else false then if d102 then d99 else d99 else if d98 then true else d99
    d106 : if false then if true then Bool else Bool else if true then Bool else Bool
    d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if false then d102 else true ) ) ) $ ( if false then true else d99 )
    d108 : if true then if false then Bool else Bool else if false then Bool else Bool
    d108 = ( ( M.d13 ) $ ( ( ( M.d19 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d94 ) $ ( true ) ) $ ( false ) )
    d109 : if false then if true then Bool else Bool else if false then Bool else Bool
    d109 = ( ( M.d64 ) $ ( if false then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x110 -> d106 ) ) ) $ ( d106 ) )
    d111 : if false then if false then Bool else Bool else if true then Bool else Bool
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> ( ( M.d4 ) $ ( if d109 then false else x112 ) ) $ ( if x112 then false else x112 ) ) ) ) $ ( if d102 then true else false )
    d113 : ( ( Set -> Set ) ∋ ( ( λ x114 -> ( ( Set -> Set ) ∋ ( ( λ x115 -> x114 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d113 = ( ( M.d84 ) $ ( ( ( M.d54 ) $ ( false ) ) $ ( d109 ) ) ) $ ( ( ( M.d62 ) $ ( d99 ) ) $ ( true ) )
    d116 : if true then if true then Bool else Bool else if false then Bool else Bool
    d116 = ( ( M.d9 ) $ ( ( ( M.d4 ) $ ( d98 ) ) $ ( false ) ) ) $ ( if d99 then d111 else d105 )
    d117 : if true then if false then Bool else Bool else if true then Bool else Bool
    d117 = ( ( M.d15 ) $ ( if true then false else d102 ) ) $ ( if d106 then d113 else d111 )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x120 -> if true then Bool else x120 ) ) ) $ ( if false then Bool else Bool )
    d118 = ( ( Bool -> Bool ) ∋ ( ( λ x119 -> ( ( M.d34 ) $ ( if d105 then x119 else x119 ) ) $ ( if d98 then x119 else true ) ) ) ) $ ( if d113 then d105 else d108 )
    d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d121 = if if false then d108 else d98 then if false then d113 else d106 else if true then true else true
    d124 : if true then if true then Bool else Bool else if false then Bool else Bool
    d124 = ( ( Bool -> Bool ) ∋ ( ( λ x125 -> if x125 then false else x125 ) ) ) $ ( if true then d102 else true )
    d126 : if true then if true then Bool else Bool else if false then Bool else Bool
    d126 = if if false then d116 else d111 then if d113 then d108 else false else if d106 then false else d111
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> ( ( Set -> Set ) ∋ ( ( λ x130 -> Bool ) ) ) $ ( x129 ) ) ) ) $ ( if false then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> ( ( M.d77 ) $ ( if x128 then x128 else true ) ) $ ( if true then x128 else true ) ) ) ) $ ( if d108 then true else true )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x133 -> ( ( Set -> Set ) ∋ ( ( λ x134 -> x133 ) ) ) $ ( x133 ) ) ) ) $ ( if true then Bool else Bool )
    d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( M.d84 ) $ ( if false then x132 else d121 ) ) $ ( if false then false else d117 ) ) ) ) $ ( if d105 then d99 else false )
    d135 : if false then if false then Bool else Bool else if true then Bool else Bool
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( M.d74 ) $ ( if x136 then d105 else true ) ) $ ( if d131 then x136 else x136 ) ) ) ) $ ( if d117 then d126 else d127 )
    d137 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then x140 else x140 ) ) ) $ ( if true then Bool else Bool )
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( Bool -> Bool ) ∋ ( ( λ x139 -> d135 ) ) ) $ ( x138 ) ) ) ) $ ( if d113 then d135 else false )
    d141 : if false then if false then Bool else Bool else if false then Bool else Bool
    d141 = ( ( M.d39 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x142 -> x142 ) ) ) $ ( d109 ) ) ) $ ( ( ( M.d39 ) $ ( d117 ) ) $ ( d131 ) )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d117 ) ) ) $ ( true ) ) ) ) $ ( if false then false else d109 )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> x148 ) ) ) $ ( x148 ) ) ) ) $ ( if false then Bool else Bool )
    d147 = if if d121 then true else d141 then if d99 then true else d113 else if true then false else d135
    d150 : if false then if false then Bool else Bool else if true then Bool else Bool
    d150 = ( ( M.d64 ) $ ( ( ( M.d57 ) $ ( d113 ) ) $ ( d116 ) ) ) $ ( ( ( M.d84 ) $ ( false ) ) $ ( d147 ) )
    d151 : ( ( Set -> Set ) ∋ ( ( λ x154 -> ( ( Set -> Set ) ∋ ( ( λ x155 -> x154 ) ) ) $ ( x154 ) ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> d102 ) ) ) $ ( d127 ) ) ) ) $ ( if d102 then d147 else d135 )
    d156 : if false then if true then Bool else Bool else if false then Bool else Bool
    d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> ( ( Bool -> Bool ) ∋ ( ( λ x158 -> false ) ) ) $ ( x157 ) ) ) ) $ ( if false then true else false )
    d159 : if false then if false then Bool else Bool else if true then Bool else Bool
    d159 = if if false then d137 else true then if d121 then false else false else if d126 then true else d141
    d160 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> ( ( Bool -> Bool ) ∋ ( ( λ x162 -> d143 ) ) ) $ ( x161 ) ) ) ) $ ( if true then d156 else false )
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( x165 ) ) ) ) $ ( if true then Bool else Bool )
    d164 = if if true then false else false then if d141 then false else d111 else if d151 then d99 else true
    d167 : ( ( Set -> Set ) ∋ ( ( λ x168 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( M.d43 ) $ ( ( ( M.d11 ) $ ( d135 ) ) $ ( d113 ) ) ) $ ( ( ( M.d95 ) $ ( true ) ) $ ( d98 ) )
    d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if true then x170 else x170 ) ) ) $ ( if false then Bool else Bool )
    d169 = if if d108 then d127 else true then if false then d116 else d126 else if d116 then false else d124
    d171 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> if true then x172 else false ) ) ) $ ( if true then d116 else d108 )
    d175 : if true then if true then Bool else Bool else if true then Bool else Bool
    d175 = if if false then true else false then if d118 then true else d118 else if true then false else true
    d176 : ( ( Set -> Set ) ∋ ( ( λ x177 -> if true then x177 else Bool ) ) ) $ ( if false then Bool else Bool )
    d176 = if if d175 then d98 else d167 then if false then false else d159 else if false then false else false
    d178 : ( ( Set -> Set ) ∋ ( ( λ x179 -> ( ( Set -> Set ) ∋ ( ( λ x180 -> x179 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d178 = if if false then true else true then if d147 then d150 else true else if true then false else false
    d181 : if false then if true then Bool else Bool else if false then Bool else Bool
    d181 = ( ( M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x182 -> true ) ) ) $ ( true ) ) ) $ ( ( ( M.d29 ) $ ( false ) ) $ ( d116 ) )
    d183 : if true then if false then Bool else Bool else if false then Bool else Bool
    d183 = if if true then true else false then if false then false else d160 else if d151 then true else true
    d184 : ( ( Set -> Set ) ∋ ( ( λ x185 -> if true then Bool else x185 ) ) ) $ ( if true then Bool else Bool )
    d184 = ( ( M.d48 ) $ ( ( ( M.d38 ) $ ( true ) ) $ ( false ) ) ) $ ( ( ( M.d19 ) $ ( d135 ) ) $ ( d131 ) )
    d186 : ( ( Set -> Set ) ∋ ( ( λ x188 -> if false then x188 else Bool ) ) ) $ ( if true then Bool else Bool )
    d186 = ( ( M.d62 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x187 -> true ) ) ) $ ( d108 ) ) ) $ ( if d156 then false else false )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d189 = ( ( Bool -> Bool ) ∋ ( ( λ x190 -> ( ( Bool -> Bool ) ∋ ( ( λ x191 -> x190 ) ) ) $ ( d131 ) ) ) ) $ ( if d151 then d102 else d105 )
    d194 : if true then if false then Bool else Bool else if false then Bool else Bool
    d194 = ( ( Bool -> Bool ) ∋ ( ( λ x195 -> ( ( M.d65 ) $ ( if false then d184 else false ) ) $ ( if true then true else d106 ) ) ) ) $ ( if false then d160 else d171 )