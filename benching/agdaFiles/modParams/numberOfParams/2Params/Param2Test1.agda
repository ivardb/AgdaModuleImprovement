module Param2Test1  where
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

    module M ( p1 : if false then Bool else Bool ) ( p2 : if false then Bool else Bool )  where
        d3 : ( ( Set -> Set ) ∋ ( ( λ x4 -> ( ( Set -> Set ) ∋ ( ( λ x5 -> Bool ) ) ) $ ( x4 ) ) ) ) $ ( if false then Bool else Bool )
        d3 = if if p1 then p1 else true then if true then true else p2 else if true then true else false
        d6 : ( ( Set -> Set ) ∋ ( ( λ x7 -> if true then x7 else Bool ) ) ) $ ( if true then Bool else Bool )
        d6 = if if false then d3 else true then if p2 then p2 else p1 else if p1 then d3 else p2
        d8 : if false then if true then Bool else Bool else if false then Bool else Bool
        d8 = if if p2 then p1 else d3 then if true then p2 else true else if true then p2 else false
        d9 : ( ( Set -> Set ) ∋ ( ( λ x12 -> ( ( Set -> Set ) ∋ ( ( λ x13 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> x10 ) ) ) $ ( false ) ) ) ) $ ( if p2 then d8 else true )
        d14 : if false then if false then Bool else Bool else if false then Bool else Bool
        d14 = ( ( Bool -> Bool ) ∋ ( ( λ x15 -> if x15 then x15 else x15 ) ) ) $ ( if p1 then true else d8 )
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = ( ( Bool -> Bool ) ∋ ( ( λ x17 -> ( ( Bool -> Bool ) ∋ ( ( λ x18 -> false ) ) ) $ ( p2 ) ) ) ) $ ( if d14 then p1 else d3 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x21 -> if true then x21 else Bool ) ) ) $ ( if true then Bool else Bool )
        d19 = ( ( Bool -> Bool ) ∋ ( ( λ x20 -> if false then true else d6 ) ) ) $ ( if d3 then p2 else p2 )
        d22 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> d8 ) ) ) $ ( d19 ) ) ) ) $ ( if false then d9 else false )
        d26 : if false then if false then Bool else Bool else if false then Bool else Bool
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> ( ( Bool -> Bool ) ∋ ( ( λ x28 -> d8 ) ) ) $ ( p1 ) ) ) ) $ ( if true then p1 else p1 )
        d29 : if true then if false then Bool else Bool else if true then Bool else Bool
        d29 = ( ( Bool -> Bool ) ∋ ( ( λ x30 -> if x30 then false else d9 ) ) ) $ ( if true then p2 else p2 )
        d31 : if false then if true then Bool else Bool else if true then Bool else Bool
        d31 = if if true then d6 else p1 then if d26 then d19 else p2 else if d8 then d29 else d6
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> ( ( Set -> Set ) ∋ ( ( λ x34 -> Bool ) ) ) $ ( x33 ) ) ) ) $ ( if false then Bool else Bool )
        d32 = if if d22 then d8 else d9 then if p1 then p1 else d26 else if false then true else p2
        d35 : ( ( Set -> Set ) ∋ ( ( λ x36 -> ( ( Set -> Set ) ∋ ( ( λ x37 -> x37 ) ) ) $ ( x36 ) ) ) ) $ ( if false then Bool else Bool )
        d35 = if if p1 then false else p1 then if d32 then p1 else p1 else if true then d19 else d29
        d38 : ( ( Set -> Set ) ∋ ( ( λ x39 -> ( ( Set -> Set ) ∋ ( ( λ x40 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d38 = if if p1 then d8 else p2 then if p1 then d6 else d16 else if d9 then p1 else p2
        d41 : if true then if true then Bool else Bool else if true then Bool else Bool
        d41 = if if d26 then true else p1 then if d6 then d14 else false else if d3 then p2 else true
        d42 : if false then if false then Bool else Bool else if false then Bool else Bool
        d42 = if if d8 then p2 else p2 then if true then true else d29 else if true then d19 else p1
        d43 : ( ( Set -> Set ) ∋ ( ( λ x44 -> if true then x44 else x44 ) ) ) $ ( if true then Bool else Bool )
        d43 = if if d9 then p1 else d42 then if true then p2 else false else if false then d22 else false
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then x46 else x46 ) ) ) $ ( if false then Bool else Bool )
        d45 = if if p1 then d32 else true then if p1 then d16 else p1 else if d41 then p2 else p1
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> x48 ) ) ) $ ( x48 ) ) ) ) $ ( if true then Bool else Bool )
        d47 = if if p1 then p1 else true then if true then false else true else if d8 then p1 else p2
        d50 : if false then if false then Bool else Bool else if false then Bool else Bool
        d50 = if if p1 then true else d26 then if false then d16 else true else if p1 then d14 else true
        d51 : ( ( Set -> Set ) ∋ ( ( λ x52 -> ( ( Set -> Set ) ∋ ( ( λ x53 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d51 = if if d14 then p1 else p2 then if true then d31 else p1 else if d19 then d3 else p2
        d54 : if true then if true then Bool else Bool else if true then Bool else Bool
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> d45 ) ) ) $ ( p1 ) ) ) ) $ ( if false then p1 else p1 )
        d57 : ( ( Set -> Set ) ∋ ( ( λ x58 -> ( ( Set -> Set ) ∋ ( ( λ x59 -> x58 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d57 = if if d8 then true else d32 then if false then true else p1 else if d9 then p1 else false
        d60 : ( ( Set -> Set ) ∋ ( ( λ x62 -> if true then x62 else x62 ) ) ) $ ( if true then Bool else Bool )
        d60 = ( ( Bool -> Bool ) ∋ ( ( λ x61 -> if p1 then true else d41 ) ) ) $ ( if p2 then false else p2 )
        d63 : ( ( Set -> Set ) ∋ ( ( λ x65 -> if true then x65 else x65 ) ) ) $ ( if false then Bool else Bool )
        d63 = ( ( Bool -> Bool ) ∋ ( ( λ x64 -> if p2 then true else d35 ) ) ) $ ( if d26 then p2 else d22 )
        d66 : if false then if true then Bool else Bool else if true then Bool else Bool
        d66 = if if d50 then false else d3 then if d26 then p1 else d9 else if true then p2 else d16
        d67 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d67 = if if true then d9 else false then if true then d50 else true else if p2 then d38 else true
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> if false then x70 else Bool ) ) ) $ ( if false then Bool else Bool )
        d69 = if if d35 then d3 else false then if true then d29 else d51 else if d66 then d60 else false
        d71 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then x74 else Bool ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> ( ( Bool -> Bool ) ∋ ( ( λ x73 -> d60 ) ) ) $ ( true ) ) ) ) $ ( if p1 then true else p2 )
        d75 : ( ( Set -> Set ) ∋ ( ( λ x76 -> ( ( Set -> Set ) ∋ ( ( λ x77 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d75 = if if d8 then p1 else d22 then if true then d9 else d3 else if d38 then p1 else false
        d78 : if false then if false then Bool else Bool else if true then Bool else Bool
        d78 = ( ( Bool -> Bool ) ∋ ( ( λ x79 -> ( ( Bool -> Bool ) ∋ ( ( λ x80 -> true ) ) ) $ ( p1 ) ) ) ) $ ( if true then d47 else d67 )
        d81 : ( ( Set -> Set ) ∋ ( ( λ x84 -> if false then x84 else Bool ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> ( ( Bool -> Bool ) ∋ ( ( λ x83 -> d50 ) ) ) $ ( x82 ) ) ) ) $ ( if d78 then p2 else true )
        d85 : if true then if true then Bool else Bool else if true then Bool else Bool
        d85 = if if p1 then d43 else d71 then if d78 then d26 else false else if d32 then p2 else p2
        d86 : if true then if false then Bool else Bool else if true then Bool else Bool
        d86 = ( ( Bool -> Bool ) ∋ ( ( λ x87 -> ( ( Bool -> Bool ) ∋ ( ( λ x88 -> x87 ) ) ) $ ( false ) ) ) ) $ ( if p1 then p1 else true )
        d89 : if true then if true then Bool else Bool else if true then Bool else Bool
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> ( ( Bool -> Bool ) ∋ ( ( λ x91 -> d8 ) ) ) $ ( d47 ) ) ) ) $ ( if d29 then false else p2 )
        d92 : ( ( Set -> Set ) ∋ ( ( λ x93 -> if true then Bool else x93 ) ) ) $ ( if false then Bool else Bool )
        d92 = if if d66 then p1 else d85 then if true then false else false else if d32 then false else p1
        d94 : if true then if true then Bool else Bool else if false then Bool else Bool
        d94 = if if d14 then false else true then if true then d75 else false else if p1 then true else p2
        d95 : ( ( Set -> Set ) ∋ ( ( λ x96 -> ( ( Set -> Set ) ∋ ( ( λ x97 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d95 = if if d71 then p2 else p2 then if false then true else false else if true then true else p1
        d98 : if true then if false then Bool else Bool else if false then Bool else Bool
        d98 = if if d54 then p2 else d92 then if d81 then p2 else p2 else if d69 then true else p2
        d99 : ( ( Set -> Set ) ∋ ( ( λ x100 -> if false then x100 else x100 ) ) ) $ ( if true then Bool else Bool )
        d99 = if if true then p1 else p1 then if p2 then true else p2 else if p2 then d92 else p2
    d101 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d101 = if if false then true else true then if true then true else true else if true then true else true
    d104 : if true then if false then Bool else Bool else if true then Bool else Bool
    d104 = ( ( Bool -> Bool ) ∋ ( ( λ x105 -> ( ( Bool -> Bool ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( x105 ) ) ) ) $ ( if true then d101 else d101 )
    d107 : ( ( Set -> Set ) ∋ ( ( λ x108 -> ( ( Set -> Set ) ∋ ( ( λ x109 -> x108 ) ) ) $ ( x108 ) ) ) ) $ ( if true then Bool else Bool )
    d107 = if if d101 then d104 else d101 then if d104 then true else true else if false then d104 else true
    d110 : if true then if true then Bool else Bool else if true then Bool else Bool
    d110 = ( ( M.d66 ) $ ( if false then d101 else d107 ) ) $ ( if d101 then true else false )
    d111 : if true then if true then Bool else Bool else if false then Bool else Bool
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if true then x112 else d107 ) ) ) $ ( if false then d107 else d101 )
    d113 : if true then if false then Bool else Bool else if false then Bool else Bool
    d113 = ( ( M.d94 ) $ ( ( ( M.d47 ) $ ( d104 ) ) $ ( d111 ) ) ) $ ( ( ( M.d99 ) $ ( d110 ) ) $ ( false ) )
    d114 : ( ( Set -> Set ) ∋ ( ( λ x116 -> if true then x116 else Bool ) ) ) $ ( if true then Bool else Bool )
    d114 = ( ( M.d86 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d107 ) ) ) $ ( d111 ) ) ) $ ( ( ( M.d98 ) $ ( d107 ) ) $ ( d113 ) )
    d117 : if true then if false then Bool else Bool else if false then Bool else Bool
    d117 = ( ( M.d38 ) $ ( ( ( M.d81 ) $ ( d110 ) ) $ ( false ) ) ) $ ( ( ( M.d94 ) $ ( false ) ) $ ( d113 ) )
    d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> ( ( Set -> Set ) ∋ ( ( λ x120 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d118 = if if d113 then true else d111 then if true then d104 else d117 else if true then true else true
    d121 : if true then if false then Bool else Bool else if false then Bool else Bool
    d121 = ( ( M.d29 ) $ ( ( ( M.d26 ) $ ( d118 ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x122 -> d117 ) ) ) $ ( false ) )
    d123 : ( ( Set -> Set ) ∋ ( ( λ x125 -> ( ( Set -> Set ) ∋ ( ( λ x126 -> x125 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d123 = ( ( M.d41 ) $ ( if false then true else false ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x124 -> x124 ) ) ) $ ( d110 ) )
    d127 : if true then if true then Bool else Bool else if true then Bool else Bool
    d127 = if if d111 then d114 else false then if true then d107 else d118 else if true then d113 else d110
    d128 : if true then if true then Bool else Bool else if true then Bool else Bool
    d128 = ( ( M.d71 ) $ ( if true then d118 else d107 ) ) $ ( if d118 then true else false )
    d129 : if true then if false then Bool else Bool else if false then Bool else Bool
    d129 = ( ( Bool -> Bool ) ∋ ( ( λ x130 -> ( ( M.d57 ) $ ( if true then d113 else x130 ) ) $ ( if d111 then false else x130 ) ) ) ) $ ( if false then d101 else d101 )
    d131 : ( ( Set -> Set ) ∋ ( ( λ x132 -> ( ( Set -> Set ) ∋ ( ( λ x133 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d131 = if if true then d129 else d107 then if true then true else d104 else if true then false else true
    d134 : if true then if false then Bool else Bool else if true then Bool else Bool
    d134 = ( ( M.d43 ) $ ( ( ( M.d78 ) $ ( d128 ) ) $ ( d113 ) ) ) $ ( ( ( M.d99 ) $ ( true ) ) $ ( d121 ) )
    d135 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> Bool ) ) ) $ ( x138 ) ) ) ) $ ( if false then Bool else Bool )
    d135 = ( ( Bool -> Bool ) ∋ ( ( λ x136 -> ( ( Bool -> Bool ) ∋ ( ( λ x137 -> x136 ) ) ) $ ( false ) ) ) ) $ ( if d110 then d104 else d123 )
    d140 : if false then if false then Bool else Bool else if true then Bool else Bool
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> ( ( Bool -> Bool ) ∋ ( ( λ x142 -> d134 ) ) ) $ ( true ) ) ) ) $ ( if d101 then true else d114 )
    d143 : if true then if false then Bool else Bool else if true then Bool else Bool
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> if false then true else false ) ) ) $ ( if false then d128 else false )
    d145 : ( ( Set -> Set ) ∋ ( ( λ x148 -> ( ( Set -> Set ) ∋ ( ( λ x149 -> x148 ) ) ) $ ( x148 ) ) ) ) $ ( if true then Bool else Bool )
    d145 = ( ( M.d35 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x146 -> true ) ) ) $ ( true ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x147 -> x147 ) ) ) $ ( true ) )
    d150 : ( ( Set -> Set ) ∋ ( ( λ x152 -> if false then Bool else x152 ) ) ) $ ( if false then Bool else Bool )
    d150 = ( ( Bool -> Bool ) ∋ ( ( λ x151 -> if d128 then d111 else x151 ) ) ) $ ( if true then false else false )
    d153 : if true then if true then Bool else Bool else if true then Bool else Bool
    d153 = if if d140 then d150 else true then if d110 then d150 else d114 else if true then d117 else d113
    d154 : ( ( Set -> Set ) ∋ ( ( λ x157 -> ( ( Set -> Set ) ∋ ( ( λ x158 -> x158 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> ( ( Bool -> Bool ) ∋ ( ( λ x156 -> x155 ) ) ) $ ( false ) ) ) ) $ ( if d127 then d110 else false )
    d159 : if false then if false then Bool else Bool else if false then Bool else Bool
    d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> ( ( Bool -> Bool ) ∋ ( ( λ x161 -> d153 ) ) ) $ ( d104 ) ) ) ) $ ( if d113 then false else false )
    d162 : ( ( Set -> Set ) ∋ ( ( λ x164 -> ( ( Set -> Set ) ∋ ( ( λ x165 -> x164 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d162 = ( ( Bool -> Bool ) ∋ ( ( λ x163 -> if d114 then x163 else d140 ) ) ) $ ( if false then d107 else d134 )
    d166 : ( ( Set -> Set ) ∋ ( ( λ x168 -> ( ( Set -> Set ) ∋ ( ( λ x169 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d166 = ( ( M.d57 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x167 -> x167 ) ) ) $ ( false ) ) ) $ ( ( ( M.d71 ) $ ( true ) ) $ ( false ) )
    d170 : if false then if true then Bool else Bool else if false then Bool else Bool
    d170 = ( ( Bool -> Bool ) ∋ ( ( λ x171 -> ( ( Bool -> Bool ) ∋ ( ( λ x172 -> true ) ) ) $ ( false ) ) ) ) $ ( if false then d154 else false )
    d173 : if true then if true then Bool else Bool else if false then Bool else Bool
    d173 = ( ( M.d19 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x174 -> x174 ) ) ) $ ( d129 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x175 -> x175 ) ) ) $ ( d140 ) )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x178 -> if true then x178 else x178 ) ) ) $ ( if false then Bool else Bool )
    d176 = ( ( M.d35 ) $ ( if true then d123 else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x177 -> x177 ) ) ) $ ( false ) )
    d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then x180 else x180 ) ) ) $ ( if false then Bool else Bool )
    d179 = if if d127 then false else d118 then if d135 then true else d110 else if d143 then d117 else false
    d181 : ( ( Set -> Set ) ∋ ( ( λ x184 -> if false then Bool else x184 ) ) ) $ ( if true then Bool else Bool )
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> ( ( Bool -> Bool ) ∋ ( ( λ x183 -> x183 ) ) ) $ ( d128 ) ) ) ) $ ( if true then d107 else true )
    d185 : ( ( Set -> Set ) ∋ ( ( λ x186 -> ( ( Set -> Set ) ∋ ( ( λ x187 -> x186 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d185 = if if d134 then false else true then if false then false else true else if true then true else d111
    d188 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> x189 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d188 = if if false then d121 else d135 then if d101 then d145 else true else if true then d181 else true
    d191 : ( ( Set -> Set ) ∋ ( ( λ x192 -> ( ( Set -> Set ) ∋ ( ( λ x193 -> x193 ) ) ) $ ( x192 ) ) ) ) $ ( if true then Bool else Bool )
    d191 = if if true then true else d123 then if d101 then d166 else d111 else if false then true else d101
    d194 : if true then if true then Bool else Bool else if false then Bool else Bool
    d194 = ( ( M.d26 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x195 -> d131 ) ) ) $ ( d170 ) ) ) $ ( if true then true else true )
    d196 : ( ( Set -> Set ) ∋ ( ( λ x198 -> if false then Bool else x198 ) ) ) $ ( if true then Bool else Bool )
    d196 = ( ( M.d42 ) $ ( ( ( M.d22 ) $ ( false ) ) $ ( false ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x197 -> d113 ) ) ) $ ( d173 ) )
    d199 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if false then x202 else x202 ) ) ) $ ( if true then Bool else Bool )
    d199 = ( ( Bool -> Bool ) ∋ ( ( λ x200 -> ( ( Bool -> Bool ) ∋ ( ( λ x201 -> x200 ) ) ) $ ( d166 ) ) ) ) $ ( if false then d134 else false )
    d203 : if true then if false then Bool else Bool else if true then Bool else Bool
    d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> ( ( M.d8 ) $ ( if d143 then d166 else x204 ) ) $ ( if x204 then x204 else x204 ) ) ) ) $ ( if d110 then false else d170 )
    d205 : if false then if false then Bool else Bool else if true then Bool else Bool
    d205 = if if false then true else true then if d140 then d140 else true else if false then d159 else d101
    d206 : ( ( Set -> Set ) ∋ ( ( λ x209 -> ( ( Set -> Set ) ∋ ( ( λ x210 -> x209 ) ) ) $ ( x209 ) ) ) ) $ ( if true then Bool else Bool )
    d206 = ( ( Bool -> Bool ) ∋ ( ( λ x207 -> ( ( Bool -> Bool ) ∋ ( ( λ x208 -> x207 ) ) ) $ ( d145 ) ) ) ) $ ( if d111 then true else d176 )