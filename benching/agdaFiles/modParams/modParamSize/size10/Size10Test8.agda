module Size10Test8  where
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

    module M ( p1 : ( ( Set -> Set ) ∋ ( ( λ x2 -> if true then Bool else Bool ) ) ) $ ( Bool ) ) ( p3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> if false then Bool else Bool ) ) ) $ ( Bool ) )  where
        d5 : if false then if true then Bool else Bool else if false then Bool else Bool
        d5 = ( ( Bool -> Bool ) ∋ ( ( λ x6 -> if false then x6 else false ) ) ) $ ( if true then p1 else p1 )
        d7 : if true then if false then Bool else Bool else if true then Bool else Bool
        d7 = if if d5 then p3 else true then if false then d5 else true else if d5 then d5 else false
        d8 : ( ( Set -> Set ) ∋ ( ( λ x10 -> if true then Bool else x10 ) ) ) $ ( if true then Bool else Bool )
        d8 = ( ( Bool -> Bool ) ∋ ( ( λ x9 -> if p3 then false else true ) ) ) $ ( if true then p3 else p1 )
        d11 : if true then if true then Bool else Bool else if true then Bool else Bool
        d11 = ( ( Bool -> Bool ) ∋ ( ( λ x12 -> if d8 then x12 else x12 ) ) ) $ ( if p3 then d5 else p3 )
        d13 : if true then if false then Bool else Bool else if false then Bool else Bool
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if d11 then x14 else d11 ) ) ) $ ( if true then p3 else true )
        d15 : ( ( Set -> Set ) ∋ ( ( λ x16 -> ( ( Set -> Set ) ∋ ( ( λ x17 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d15 = if if p3 then p1 else true then if false then p1 else p3 else if true then d7 else true
        d18 : if true then if false then Bool else Bool else if false then Bool else Bool
        d18 = ( ( Bool -> Bool ) ∋ ( ( λ x19 -> if true then p1 else p3 ) ) ) $ ( if p1 then false else d5 )
        d20 : ( ( Set -> Set ) ∋ ( ( λ x21 -> ( ( Set -> Set ) ∋ ( ( λ x22 -> Bool ) ) ) $ ( x21 ) ) ) ) $ ( if false then Bool else Bool )
        d20 = if if d18 then p1 else p1 then if p1 then p3 else d7 else if p1 then d11 else false
        d23 : if true then if true then Bool else Bool else if false then Bool else Bool
        d23 = if if d11 then false else false then if p1 then d18 else d18 else if d8 then d11 else d8
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if false then Bool else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if p1 then d5 else d18 then if p1 then d13 else p3 else if p1 then d15 else false
        d26 : ( ( Set -> Set ) ∋ ( ( λ x27 -> ( ( Set -> Set ) ∋ ( ( λ x28 -> Bool ) ) ) $ ( x27 ) ) ) ) $ ( if true then Bool else Bool )
        d26 = if if p1 then false else d24 then if false then d13 else false else if true then d13 else p3
        d29 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> Bool ) ) ) $ ( x30 ) ) ) ) $ ( if true then Bool else Bool )
        d29 = if if true then p3 else false then if p3 then d11 else true else if p3 then p1 else d8
        d32 : ( ( Set -> Set ) ∋ ( ( λ x35 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d32 = ( ( Bool -> Bool ) ∋ ( ( λ x33 -> ( ( Bool -> Bool ) ∋ ( ( λ x34 -> true ) ) ) $ ( false ) ) ) ) $ ( if p3 then true else p1 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x39 -> if true then x39 else Bool ) ) ) $ ( if false then Bool else Bool )
        d36 = ( ( Bool -> Bool ) ∋ ( ( λ x37 -> ( ( Bool -> Bool ) ∋ ( ( λ x38 -> d20 ) ) ) $ ( true ) ) ) ) $ ( if d13 then false else false )
        d40 : if false then if true then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> if true then false else true ) ) ) $ ( if d36 then false else p1 )
        d42 : ( ( Set -> Set ) ∋ ( ( λ x45 -> ( ( Set -> Set ) ∋ ( ( λ x46 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d42 = ( ( Bool -> Bool ) ∋ ( ( λ x43 -> ( ( Bool -> Bool ) ∋ ( ( λ x44 -> d7 ) ) ) $ ( x43 ) ) ) ) $ ( if false then true else true )
        d47 : if true then if true then Bool else Bool else if false then Bool else Bool
        d47 = ( ( Bool -> Bool ) ∋ ( ( λ x48 -> if x48 then false else d24 ) ) ) $ ( if false then p1 else p3 )
        d49 : if false then if true then Bool else Bool else if true then Bool else Bool
        d49 = ( ( Bool -> Bool ) ∋ ( ( λ x50 -> if p3 then p1 else d47 ) ) ) $ ( if d18 then p1 else p1 )
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> x52 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if d29 then p3 else d36 then if d32 then false else false else if d42 then d47 else d40
        d54 : ( ( Set -> Set ) ∋ ( ( λ x55 -> ( ( Set -> Set ) ∋ ( ( λ x56 -> x55 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d54 = if if p1 then d47 else p3 then if d32 then p3 else p1 else if d8 then p3 else false
        d57 : if false then if true then Bool else Bool else if true then Bool else Bool
        d57 = if if true then false else true then if p3 then d51 else d40 else if d18 then false else false
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> if false then Bool else x60 ) ) ) $ ( if false then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if true then p3 else d47 ) ) ) $ ( if true then d32 else false )
        d61 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if true then x64 else x64 ) ) ) $ ( if false then Bool else Bool )
        d61 = ( ( Bool -> Bool ) ∋ ( ( λ x62 -> ( ( Bool -> Bool ) ∋ ( ( λ x63 -> false ) ) ) $ ( p3 ) ) ) ) $ ( if false then false else p1 )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x66 -> if true then x66 else Bool ) ) ) $ ( if true then Bool else Bool )
        d65 = if if p1 then d26 else p1 then if true then p3 else d18 else if d57 then true else false
        d67 : if true then if true then Bool else Bool else if false then Bool else Bool
        d67 = if if p1 then d8 else p1 then if p3 then true else d26 else if p1 then false else d8
        d68 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x71 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> if true then false else x69 ) ) ) $ ( if p3 then true else true )
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> ( ( Set -> Set ) ∋ ( ( λ x75 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if d23 then true else d58 ) ) ) $ ( if p1 then p1 else d15 )
        d76 : if false then if false then Bool else Bool else if true then Bool else Bool
        d76 = ( ( Bool -> Bool ) ∋ ( ( λ x77 -> ( ( Bool -> Bool ) ∋ ( ( λ x78 -> p3 ) ) ) $ ( x77 ) ) ) ) $ ( if p3 then p1 else true )
        d79 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d79 = ( ( Bool -> Bool ) ∋ ( ( λ x80 -> ( ( Bool -> Bool ) ∋ ( ( λ x81 -> x80 ) ) ) $ ( x80 ) ) ) ) $ ( if false then p1 else false )
        d83 : if false then if false then Bool else Bool else if false then Bool else Bool
        d83 = if if p1 then d57 else d72 then if d24 then d67 else false else if d23 then d20 else false
        d84 : if false then if false then Bool else Bool else if false then Bool else Bool
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> false ) ) ) $ ( false ) ) ) ) $ ( if d47 then d23 else p3 )
        d87 : ( ( Set -> Set ) ∋ ( ( λ x89 -> ( ( Set -> Set ) ∋ ( ( λ x90 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d87 = ( ( Bool -> Bool ) ∋ ( ( λ x88 -> if p1 then false else x88 ) ) ) $ ( if d61 then d79 else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then x93 else Bool ) ) ) $ ( if true then Bool else Bool )
        d91 = ( ( Bool -> Bool ) ∋ ( ( λ x92 -> if x92 then d68 else false ) ) ) $ ( if p1 then false else false )
        d94 : if true then if true then Bool else Bool else if false then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> ( ( Bool -> Bool ) ∋ ( ( λ x96 -> false ) ) ) $ ( d72 ) ) ) ) $ ( if false then d84 else p3 )
        d97 : if true then if false then Bool else Bool else if false then Bool else Bool
        d97 = ( ( Bool -> Bool ) ∋ ( ( λ x98 -> ( ( Bool -> Bool ) ∋ ( ( λ x99 -> false ) ) ) $ ( p1 ) ) ) ) $ ( if d68 then p3 else d32 )
        d100 : if true then if true then Bool else Bool else if false then Bool else Bool
        d100 = if if d15 then p1 else p3 then if true then d24 else d40 else if true then d91 else true
        d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> if true then Bool else x102 ) ) ) $ ( if true then Bool else Bool )
        d101 = if if false then p3 else p1 then if true then p1 else p3 else if p1 then false else p3
        d103 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d103 = if if p3 then d101 else true then if p1 then d18 else d8 else if false then p1 else d15
        d106 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d106 = ( ( Bool -> Bool ) ∋ ( ( λ x107 -> if d58 then d7 else false ) ) ) $ ( if false then false else false )
        d110 : if false then if false then Bool else Bool else if true then Bool else Bool
        d110 = ( ( Bool -> Bool ) ∋ ( ( λ x111 -> if true then d72 else true ) ) ) $ ( if p3 then true else d7 )
    d112 : if false then if true then Bool else Bool else if true then Bool else Bool
    d112 = if if false then false else true then if true then false else true else if false then true else true
    d113 : if true then if true then Bool else Bool else if false then Bool else Bool
    d113 = ( ( M.d68 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> x114 ) ) ) $ ( d112 ) ) ) $ ( ( ( M.d5 ) $ ( false ) ) $ ( d112 ) )
    d115 : if true then if false then Bool else Bool else if false then Bool else Bool
    d115 = ( ( Bool -> Bool ) ∋ ( ( λ x116 -> ( ( Bool -> Bool ) ∋ ( ( λ x117 -> d113 ) ) ) $ ( false ) ) ) ) $ ( if d113 then d112 else true )
    d118 : if false then if true then Bool else Bool else if false then Bool else Bool
    d118 = ( ( M.d42 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x119 ) ) ) $ ( d112 ) ) ) $ ( ( ( M.d106 ) $ ( false ) ) $ ( false ) )
    d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> x122 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d120 = if if false then true else false then if false then false else true else if d115 then d112 else true
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> Bool ) ) ) $ ( x125 ) ) ) ) $ ( if true then Bool else Bool )
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if x124 then x124 else false ) ) ) $ ( if true then true else d113 )
    d127 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d127 = ( ( Bool -> Bool ) ∋ ( ( λ x128 -> if d120 then true else x128 ) ) ) $ ( if d120 then false else d123 )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d130 = ( ( Bool -> Bool ) ∋ ( ( λ x131 -> ( ( M.d57 ) $ ( if x131 then x131 else x131 ) ) $ ( if x131 then d112 else d127 ) ) ) ) $ ( if d120 then d127 else true )
    d134 : ( ( Set -> Set ) ∋ ( ( λ x135 -> ( ( Set -> Set ) ∋ ( ( λ x136 -> x136 ) ) ) $ ( x135 ) ) ) ) $ ( if true then Bool else Bool )
    d134 = if if false then d130 else false then if d120 then false else true else if d123 then d118 else d123
    d137 : if true then if false then Bool else Bool else if false then Bool else Bool
    d137 = ( ( Bool -> Bool ) ∋ ( ( λ x138 -> ( ( M.d58 ) $ ( if x138 then x138 else d127 ) ) $ ( if true then x138 else x138 ) ) ) ) $ ( if d134 then true else d130 )
    d139 : ( ( Set -> Set ) ∋ ( ( λ x140 -> if false then Bool else x140 ) ) ) $ ( if false then Bool else Bool )
    d139 = if if d113 then false else d130 then if false then d115 else d130 else if d113 then true else d123
    d141 : ( ( Set -> Set ) ∋ ( ( λ x142 -> ( ( Set -> Set ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d141 = if if d139 then d118 else d139 then if d127 then true else d118 else if false then d134 else d139
    d144 : if true then if true then Bool else Bool else if true then Bool else Bool
    d144 = ( ( M.d18 ) $ ( ( ( M.d23 ) $ ( true ) ) $ ( true ) ) ) $ ( ( ( M.d103 ) $ ( d130 ) ) $ ( d118 ) )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if true then Bool else x146 ) ) ) $ ( if true then Bool else Bool )
    d145 = ( ( M.d91 ) $ ( if true then true else false ) ) $ ( ( ( M.d72 ) $ ( d134 ) ) $ ( true ) )
    d147 : ( ( Set -> Set ) ∋ ( ( λ x148 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d147 = ( ( M.d83 ) $ ( if d145 then d112 else d112 ) ) $ ( ( ( M.d57 ) $ ( true ) ) $ ( false ) )
    d149 : if true then if true then Bool else Bool else if false then Bool else Bool
    d149 = if if d123 then true else d130 then if false then false else true else if false then true else d137
    d150 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if true then x152 else Bool ) ) ) $ ( if true then Bool else Bool )
    d150 = ( ( M.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x151 -> x151 ) ) ) $ ( d118 ) ) ) $ ( ( ( M.d13 ) $ ( d145 ) ) $ ( true ) )
    d153 : if true then if false then Bool else Bool else if true then Bool else Bool
    d153 = if if d120 then true else false then if d150 then false else d134 else if d112 then d120 else d144
    d154 : ( ( Set -> Set ) ∋ ( ( λ x155 -> ( ( Set -> Set ) ∋ ( ( λ x156 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d154 = if if d115 then d113 else true then if true then d141 else d145 else if d123 then false else d139
    d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> Bool ) ) ) $ ( x158 ) ) ) ) $ ( if true then Bool else Bool )
    d157 = ( ( M.d51 ) $ ( ( ( M.d87 ) $ ( false ) ) $ ( d130 ) ) ) $ ( ( ( M.d79 ) $ ( d144 ) ) $ ( d123 ) )
    d160 : if false then if false then Bool else Bool else if true then Bool else Bool
    d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> if false then true else false ) ) ) $ ( if false then true else d154 )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> if true then x163 else Bool ) ) ) $ ( if true then Bool else Bool )
    d162 = if if d113 then true else d130 then if d139 then true else false else if d115 then true else d141
    d164 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( x165 ) ) ) ) $ ( if false then Bool else Bool )
    d164 = ( ( M.d58 ) $ ( if false then false else false ) ) $ ( if true then d137 else false )
    d167 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if true then Bool else x169 ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( Bool -> Bool ) ∋ ( ( λ x168 -> ( ( M.d7 ) $ ( if x168 then x168 else true ) ) $ ( if d112 then d157 else x168 ) ) ) ) $ ( if false then false else false )
    d170 : if true then if true then Bool else Bool else if false then Bool else Bool
    d170 = ( ( M.d36 ) $ ( ( ( M.d110 ) $ ( d113 ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x171 -> x171 ) ) ) $ ( d147 ) )
    d172 : ( ( Set -> Set ) ∋ ( ( λ x173 -> ( ( Set -> Set ) ∋ ( ( λ x174 -> Bool ) ) ) $ ( x173 ) ) ) ) $ ( if false then Bool else Bool )
    d172 = ( ( M.d49 ) $ ( if false then false else d120 ) ) $ ( ( ( M.d72 ) $ ( d127 ) ) $ ( d145 ) )
    d175 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> x177 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d175 = ( ( M.d76 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x176 -> true ) ) ) $ ( true ) ) ) $ ( if false then true else true )
    d179 : if true then if true then Bool else Bool else if true then Bool else Bool
    d179 = if if d153 then false else d164 then if d118 then d141 else d162 else if false then d162 else d175
    d180 : if false then if false then Bool else Bool else if false then Bool else Bool
    d180 = ( ( Bool -> Bool ) ∋ ( ( λ x181 -> ( ( Bool -> Bool ) ∋ ( ( λ x182 -> x182 ) ) ) $ ( x181 ) ) ) ) $ ( if false then d179 else false )
    d183 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d183 = ( ( Bool -> Bool ) ∋ ( ( λ x184 -> ( ( Bool -> Bool ) ∋ ( ( λ x185 -> d115 ) ) ) $ ( d127 ) ) ) ) $ ( if d164 then true else d145 )
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> if false then Bool else x189 ) ) ) $ ( if false then Bool else Bool )
    d188 = ( ( M.d72 ) $ ( ( ( M.d20 ) $ ( d137 ) ) $ ( d139 ) ) ) $ ( if true then true else true )
    d190 : ( ( Set -> Set ) ∋ ( ( λ x192 -> if false then Bool else x192 ) ) ) $ ( if false then Bool else Bool )
    d190 = ( ( Bool -> Bool ) ∋ ( ( λ x191 -> ( ( M.d61 ) $ ( if d175 then x191 else x191 ) ) $ ( if d141 then x191 else x191 ) ) ) ) $ ( if d145 then d180 else false )
    d193 : if false then if false then Bool else Bool else if false then Bool else Bool
    d193 = ( ( Bool -> Bool ) ∋ ( ( λ x194 -> if false then false else d164 ) ) ) $ ( if false then d162 else d188 )
    d195 : ( ( Set -> Set ) ∋ ( ( λ x197 -> ( ( Set -> Set ) ∋ ( ( λ x198 -> x198 ) ) ) $ ( x197 ) ) ) ) $ ( if false then Bool else Bool )
    d195 = ( ( M.d24 ) $ ( if false then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x196 -> x196 ) ) ) $ ( d175 ) )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if false then x202 else Bool ) ) ) $ ( if false then Bool else Bool )
    d199 = ( ( M.d49 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x200 -> x200 ) ) ) $ ( d167 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x201 -> x201 ) ) ) $ ( true ) )
    d203 : ( ( Set -> Set ) ∋ ( ( λ x204 -> ( ( Set -> Set ) ∋ ( ( λ x205 -> Bool ) ) ) $ ( x204 ) ) ) ) $ ( if true then Bool else Bool )
    d203 = if if false then false else d118 then if d118 then d115 else d153 else if true then d164 else d199
    d206 : if true then if false then Bool else Bool else if false then Bool else Bool
    d206 = if if d141 then d193 else d130 then if d190 then false else d175 else if false then false else true
    d207 : ( ( Set -> Set ) ∋ ( ( λ x209 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d207 = ( ( Bool -> Bool ) ∋ ( ( λ x208 -> if x208 then false else d154 ) ) ) $ ( if d139 then d127 else false )
    d210 : if false then if true then Bool else Bool else if true then Bool else Bool
    d210 = ( ( M.d103 ) $ ( if false then d123 else true ) ) $ ( ( ( M.d67 ) $ ( false ) ) $ ( d170 ) )
    d211 : if true then if true then Bool else Bool else if false then Bool else Bool
    d211 = ( ( Bool -> Bool ) ∋ ( ( λ x212 -> ( ( Bool -> Bool ) ∋ ( ( λ x213 -> x212 ) ) ) $ ( d149 ) ) ) ) $ ( if d164 then false else d113 )