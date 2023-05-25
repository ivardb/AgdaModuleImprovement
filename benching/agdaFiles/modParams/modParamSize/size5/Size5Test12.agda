module Size5Test12  where
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
        d3 : if false then if false then Bool else Bool else if true then Bool else Bool
        d3 = ( ( Bool -> Bool ) ∋ ( ( λ x4 -> if p2 then x4 else p1 ) ) ) $ ( if false then p2 else false )
        d5 : ( ( Set -> Set ) ∋ ( ( λ x6 -> if true then x6 else x6 ) ) ) $ ( if false then Bool else Bool )
        d5 = if if p1 then p1 else false then if false then true else d3 else if false then false else true
        d7 : ( ( Set -> Set ) ∋ ( ( λ x8 -> if false then x8 else x8 ) ) ) $ ( if true then Bool else Bool )
        d7 = if if p1 then true else p2 then if p2 then p1 else true else if d5 then p1 else false
        d9 : if true then if false then Bool else Bool else if false then Bool else Bool
        d9 = ( ( Bool -> Bool ) ∋ ( ( λ x10 -> ( ( Bool -> Bool ) ∋ ( ( λ x11 -> true ) ) ) $ ( false ) ) ) ) $ ( if d7 then false else d5 )
        d12 : if true then if false then Bool else Bool else if false then Bool else Bool
        d12 = if if true then d5 else p1 then if d7 then p2 else true else if p1 then p1 else p2
        d13 : ( ( Set -> Set ) ∋ ( ( λ x15 -> ( ( Set -> Set ) ∋ ( ( λ x16 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d13 = ( ( Bool -> Bool ) ∋ ( ( λ x14 -> if false then d12 else d9 ) ) ) $ ( if p1 then p1 else false )
        d17 : if true then if true then Bool else Bool else if true then Bool else Bool
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> if true then true else false ) ) ) $ ( if p1 then false else d5 )
        d19 : ( ( Set -> Set ) ∋ ( ( λ x20 -> if true then x20 else Bool ) ) ) $ ( if false then Bool else Bool )
        d19 = if if d13 then p1 else false then if p2 then d9 else p2 else if d5 then true else d12
        d21 : ( ( Set -> Set ) ∋ ( ( λ x23 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d21 = ( ( Bool -> Bool ) ∋ ( ( λ x22 -> if d3 then d3 else d9 ) ) ) $ ( if false then d17 else d7 )
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> if true then x25 else x25 ) ) ) $ ( if true then Bool else Bool )
        d24 = if if false then true else false then if p2 then p2 else p2 else if d12 then p2 else true
        d26 : ( ( Set -> Set ) ∋ ( ( λ x28 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d26 = ( ( Bool -> Bool ) ∋ ( ( λ x27 -> if d7 then d3 else false ) ) ) $ ( if true then true else d17 )
        d29 : if true then if false then Bool else Bool else if false then Bool else Bool
        d29 = if if p1 then true else d24 then if d19 then p2 else d17 else if p2 then false else d24
        d30 : if false then if true then Bool else Bool else if true then Bool else Bool
        d30 = if if p1 then false else d5 then if p1 then false else d19 else if true then d29 else d7
        d31 : ( ( Set -> Set ) ∋ ( ( λ x32 -> ( ( Set -> Set ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d31 = if if p1 then p2 else p2 then if true then d19 else p1 else if d26 then d30 else false
        d34 : if false then if true then Bool else Bool else if true then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> ( ( Bool -> Bool ) ∋ ( ( λ x36 -> d24 ) ) ) $ ( x35 ) ) ) ) $ ( if p2 then true else false )
        d37 : if false then if false then Bool else Bool else if true then Bool else Bool
        d37 = ( ( Bool -> Bool ) ∋ ( ( λ x38 -> ( ( Bool -> Bool ) ∋ ( ( λ x39 -> d19 ) ) ) $ ( p2 ) ) ) ) $ ( if p2 then p2 else d13 )
        d40 : if true then if false then Bool else Bool else if false then Bool else Bool
        d40 = ( ( Bool -> Bool ) ∋ ( ( λ x41 -> ( ( Bool -> Bool ) ∋ ( ( λ x42 -> p1 ) ) ) $ ( d21 ) ) ) ) $ ( if p2 then p1 else d30 )
        d43 : ( ( Set -> Set ) ∋ ( ( λ x46 -> if false then Bool else x46 ) ) ) $ ( if false then Bool else Bool )
        d43 = ( ( Bool -> Bool ) ∋ ( ( λ x44 -> ( ( Bool -> Bool ) ∋ ( ( λ x45 -> x45 ) ) ) $ ( d17 ) ) ) ) $ ( if p1 then p2 else d37 )
        d47 : ( ( Set -> Set ) ∋ ( ( λ x48 -> ( ( Set -> Set ) ∋ ( ( λ x49 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d47 = if if d26 then false else p2 then if false then p1 else false else if d3 then false else true
        d50 : if true then if true then Bool else Bool else if true then Bool else Bool
        d50 = ( ( Bool -> Bool ) ∋ ( ( λ x51 -> if d43 then d17 else true ) ) ) $ ( if d3 then d13 else p2 )
        d52 : if true then if true then Bool else Bool else if false then Bool else Bool
        d52 = if if d3 then false else true then if true then d5 else d24 else if false then p1 else false
        d53 : if false then if true then Bool else Bool else if true then Bool else Bool
        d53 = if if p2 then false else p1 then if true then d34 else p2 else if false then true else d47
        d54 : ( ( Set -> Set ) ∋ ( ( λ x57 -> if true then x57 else x57 ) ) ) $ ( if false then Bool else Bool )
        d54 = ( ( Bool -> Bool ) ∋ ( ( λ x55 -> ( ( Bool -> Bool ) ∋ ( ( λ x56 -> p2 ) ) ) $ ( p2 ) ) ) ) $ ( if true then true else p1 )
        d58 : ( ( Set -> Set ) ∋ ( ( λ x60 -> ( ( Set -> Set ) ∋ ( ( λ x61 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if d40 then p1 else x59 ) ) ) $ ( if p1 then true else p1 )
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> Bool ) ) ) $ ( x63 ) ) ) ) $ ( if false then Bool else Bool )
        d62 = if if d17 then true else d24 then if false then true else p1 else if p1 then false else p1
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> ( ( Set -> Set ) ∋ ( ( λ x68 -> x68 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if false then d52 else x66 ) ) ) $ ( if p2 then d34 else p2 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x70 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d69 = if if p1 then d54 else d52 then if true then p2 else p2 else if false then false else true
        d72 : ( ( Set -> Set ) ∋ ( ( λ x73 -> ( ( Set -> Set ) ∋ ( ( λ x74 -> x74 ) ) ) $ ( x73 ) ) ) ) $ ( if true then Bool else Bool )
        d72 = if if d7 then d30 else false then if false then true else true else if true then p1 else p1
        d75 : ( ( Set -> Set ) ∋ ( ( λ x77 -> ( ( Set -> Set ) ∋ ( ( λ x78 -> Bool ) ) ) $ ( x77 ) ) ) ) $ ( if false then Bool else Bool )
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if false then d24 else d52 ) ) ) $ ( if false then true else false )
        d79 : if true then if true then Bool else Bool else if true then Bool else Bool
        d79 = if if false then p2 else false then if p1 then true else p1 else if d72 then true else d24
        d80 : if false then if true then Bool else Bool else if false then Bool else Bool
        d80 = if if false then p2 else true then if d7 then p2 else p1 else if p1 then d52 else p2
        d81 : ( ( Set -> Set ) ∋ ( ( λ x83 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d81 = ( ( Bool -> Bool ) ∋ ( ( λ x82 -> if true then p2 else d52 ) ) ) $ ( if p2 then p1 else false )
        d84 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if false then Bool else x87 ) ) ) $ ( if false then Bool else Bool )
        d84 = ( ( Bool -> Bool ) ∋ ( ( λ x85 -> ( ( Bool -> Bool ) ∋ ( ( λ x86 -> true ) ) ) $ ( d30 ) ) ) ) $ ( if true then false else d80 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> ( ( Set -> Set ) ∋ ( ( λ x91 -> x91 ) ) ) $ ( x90 ) ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if p1 then false else d75 ) ) ) $ ( if p1 then d69 else p1 )
        d92 : if true then if true then Bool else Bool else if true then Bool else Bool
        d92 = ( ( Bool -> Bool ) ∋ ( ( λ x93 -> ( ( Bool -> Bool ) ∋ ( ( λ x94 -> true ) ) ) $ ( x93 ) ) ) ) $ ( if true then d75 else d19 )
        d95 : if false then if true then Bool else Bool else if false then Bool else Bool
        d95 = if if true then d24 else false then if true then p2 else p1 else if d3 then d24 else false
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d96 = if if d9 then false else d19 then if true then d47 else p1 else if true then d43 else true
        d98 : if false then if true then Bool else Bool else if true then Bool else Bool
        d98 = ( ( Bool -> Bool ) ∋ ( ( λ x99 -> if false then p2 else p1 ) ) ) $ ( if p1 then true else false )
        d100 : if false then if false then Bool else Bool else if true then Bool else Bool
        d100 = if if false then true else false then if false then p1 else d81 else if true then d50 else true
        d101 : ( ( Set -> Set ) ∋ ( ( λ x104 -> if false then Bool else x104 ) ) ) $ ( if false then Bool else Bool )
        d101 = ( ( Bool -> Bool ) ∋ ( ( λ x102 -> ( ( Bool -> Bool ) ∋ ( ( λ x103 -> p2 ) ) ) $ ( true ) ) ) ) $ ( if p2 then p2 else false )
    d105 : if true then if false then Bool else Bool else if false then Bool else Bool
    d105 = if if false then true else false then if true then true else false else if false then true else true
    d106 : ( ( Set -> Set ) ∋ ( ( λ x107 -> if true then Bool else x107 ) ) ) $ ( if false then Bool else Bool )
    d106 = ( ( M.d9 ) $ ( ( ( M.d9 ) $ ( d105 ) ) $ ( d105 ) ) ) $ ( if true then false else true )
    d108 : if false then if true then Bool else Bool else if true then Bool else Bool
    d108 = if if d106 then d106 else d106 then if d106 then d106 else true else if d105 then d105 else d106
    d109 : if true then if true then Bool else Bool else if true then Bool else Bool
    d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> ( ( M.d62 ) $ ( if d106 then true else d105 ) ) $ ( if x110 then x110 else x110 ) ) ) ) $ ( if false then d106 else false )
    d111 : if true then if false then Bool else Bool else if false then Bool else Bool
    d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if false then true else x112 ) ) ) $ ( if d105 then true else false )
    d113 : if true then if false then Bool else Bool else if false then Bool else Bool
    d113 = ( ( M.d43 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x114 -> true ) ) ) $ ( d111 ) ) ) $ ( if d111 then true else d105 )
    d115 : if true then if false then Bool else Bool else if false then Bool else Bool
    d115 = ( ( M.d101 ) $ ( if true then false else d106 ) ) $ ( ( ( M.d101 ) $ ( d109 ) ) $ ( d106 ) )
    d116 : ( ( Set -> Set ) ∋ ( ( λ x117 -> ( ( Set -> Set ) ∋ ( ( λ x118 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d116 = if if false then false else d113 then if false then d115 else d108 else if true then false else d115
    d119 : ( ( Set -> Set ) ∋ ( ( λ x120 -> ( ( Set -> Set ) ∋ ( ( λ x121 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
    d119 = if if d108 then false else d105 then if d108 then false else true else if false then true else d113
    d122 : if true then if true then Bool else Bool else if false then Bool else Bool
    d122 = ( ( M.d12 ) $ ( if true then d119 else d108 ) ) $ ( if d111 then true else d113 )
    d123 : if false then if false then Bool else Bool else if true then Bool else Bool
    d123 = ( ( Bool -> Bool ) ∋ ( ( λ x124 -> if true then x124 else x124 ) ) ) $ ( if false then true else d106 )
    d125 : ( ( Set -> Set ) ∋ ( ( λ x126 -> ( ( Set -> Set ) ∋ ( ( λ x127 -> x126 ) ) ) $ ( x126 ) ) ) ) $ ( if false then Bool else Bool )
    d125 = if if d115 then d116 else true then if d109 then true else false else if d123 then d119 else d109
    d128 : ( ( Set -> Set ) ∋ ( ( λ x129 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d128 = ( ( M.d81 ) $ ( if true then d119 else true ) ) $ ( if false then d109 else d113 )
    d130 : ( ( Set -> Set ) ∋ ( ( λ x131 -> ( ( Set -> Set ) ∋ ( ( λ x132 -> x131 ) ) ) $ ( x131 ) ) ) ) $ ( if true then Bool else Bool )
    d130 = if if false then true else false then if false then true else d106 else if true then d116 else d125
    d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> ( ( M.d12 ) $ ( if true then d106 else d113 ) ) $ ( if false then d128 else d109 ) ) ) ) $ ( if true then d123 else true )
    d136 : if false then if false then Bool else Bool else if false then Bool else Bool
    d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> ( ( M.d9 ) $ ( if x137 then false else d133 ) ) $ ( if x137 then d128 else d111 ) ) ) ) $ ( if d111 then false else d111 )
    d138 : if false then if false then Bool else Bool else if false then Bool else Bool
    d138 = ( ( M.d29 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x139 -> d123 ) ) ) $ ( true ) ) ) $ ( ( ( M.d40 ) $ ( false ) ) $ ( false ) )
    d140 : ( ( Set -> Set ) ∋ ( ( λ x142 -> if true then Bool else x142 ) ) ) $ ( if false then Bool else Bool )
    d140 = ( ( Bool -> Bool ) ∋ ( ( λ x141 -> if true then x141 else x141 ) ) ) $ ( if d125 then d109 else d119 )
    d143 : ( ( Set -> Set ) ∋ ( ( λ x145 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
    d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( M.d19 ) $ ( if true then false else d130 ) ) $ ( if x144 then true else x144 ) ) ) ) $ ( if d119 then d133 else false )
    d146 : if true then if false then Bool else Bool else if true then Bool else Bool
    d146 = ( ( M.d34 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x147 -> true ) ) ) $ ( d138 ) ) ) $ ( ( ( M.d79 ) $ ( false ) ) $ ( false ) )
    d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> ( ( Set -> Set ) ∋ ( ( λ x150 -> x149 ) ) ) $ ( x149 ) ) ) ) $ ( if false then Bool else Bool )
    d148 = if if d146 then true else d138 then if false then d105 else false else if false then d116 else true
    d151 : ( ( Set -> Set ) ∋ ( ( λ x153 -> ( ( Set -> Set ) ∋ ( ( λ x154 -> Bool ) ) ) $ ( x153 ) ) ) ) $ ( if true then Bool else Bool )
    d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( M.d81 ) $ ( if d119 then x152 else true ) ) $ ( if d148 then false else d111 ) ) ) ) $ ( if true then false else d143 )
    d155 : if false then if false then Bool else Bool else if true then Bool else Bool
    d155 = ( ( Bool -> Bool ) ∋ ( ( λ x156 -> ( ( Bool -> Bool ) ∋ ( ( λ x157 -> d106 ) ) ) $ ( x156 ) ) ) ) $ ( if d140 then false else false )
    d158 : ( ( Set -> Set ) ∋ ( ( λ x159 -> ( ( Set -> Set ) ∋ ( ( λ x160 -> x160 ) ) ) $ ( x159 ) ) ) ) $ ( if false then Bool else Bool )
    d158 = ( ( M.d24 ) $ ( if d116 then d155 else true ) ) $ ( ( ( M.d62 ) $ ( false ) ) $ ( d116 ) )
    d161 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> x164 ) ) ) $ ( x163 ) ) ) ) $ ( if false then Bool else Bool )
    d161 = ( ( Bool -> Bool ) ∋ ( ( λ x162 -> if d119 then false else d128 ) ) ) $ ( if d148 then d138 else true )
    d165 : ( ( Set -> Set ) ∋ ( ( λ x166 -> if true then x166 else x166 ) ) ) $ ( if false then Bool else Bool )
    d165 = if if false then false else false then if false then d105 else false else if false then true else false
    d167 : ( ( Set -> Set ) ∋ ( ( λ x169 -> if false then x169 else x169 ) ) ) $ ( if false then Bool else Bool )
    d167 = ( ( M.d98 ) $ ( if d148 then d108 else d109 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x168 -> true ) ) ) $ ( true ) )
    d170 : ( ( Set -> Set ) ∋ ( ( λ x171 -> ( ( Set -> Set ) ∋ ( ( λ x172 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d170 = if if false then d113 else true then if false then d125 else false else if true then d138 else true
    d173 : if true then if true then Bool else Bool else if true then Bool else Bool
    d173 = ( ( M.d81 ) $ ( if d143 then true else d140 ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x174 -> false ) ) ) $ ( d125 ) )
    d175 : if true then if false then Bool else Bool else if false then Bool else Bool
    d175 = ( ( M.d52 ) $ ( ( ( M.d96 ) $ ( d105 ) ) $ ( d130 ) ) ) $ ( ( ( M.d5 ) $ ( false ) ) $ ( false ) )
    d176 : ( ( Set -> Set ) ∋ ( ( λ x177 -> ( ( Set -> Set ) ∋ ( ( λ x178 -> x178 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d176 = if if false then true else d133 then if false then d148 else true else if true then false else d173
    d179 : ( ( Set -> Set ) ∋ ( ( λ x180 -> if true then Bool else x180 ) ) ) $ ( if false then Bool else Bool )
    d179 = if if d173 then true else d105 then if d161 then false else false else if true then true else true
    d181 : if false then if true then Bool else Bool else if true then Bool else Bool
    d181 = ( ( Bool -> Bool ) ∋ ( ( λ x182 -> if x182 then d113 else x182 ) ) ) $ ( if true then d158 else false )
    d183 : if true then if false then Bool else Bool else if false then Bool else Bool
    d183 = ( ( M.d53 ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x184 -> false ) ) ) $ ( d146 ) ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x185 -> x185 ) ) ) $ ( d151 ) )
    d186 : if false then if false then Bool else Bool else if true then Bool else Bool
    d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> ( ( Bool -> Bool ) ∋ ( ( λ x188 -> d165 ) ) ) $ ( x187 ) ) ) ) $ ( if true then d176 else true )
    d189 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
    d189 = ( ( M.d62 ) $ ( if false then true else true ) ) $ ( ( ( Bool -> Bool ) ∋ ( ( λ x190 -> x190 ) ) ) $ ( d165 ) )
    d192 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> x195 ) ) ) $ ( x195 ) ) ) ) $ ( if true then Bool else Bool )
    d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> ( ( Bool -> Bool ) ∋ ( ( λ x194 -> x193 ) ) ) $ ( d176 ) ) ) ) $ ( if d123 then d165 else d170 )
    d197 : ( ( Set -> Set ) ∋ ( ( λ x199 -> if true then x199 else Bool ) ) ) $ ( if true then Bool else Bool )
    d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> ( ( M.d29 ) $ ( if x198 then d123 else x198 ) ) $ ( if true then d140 else x198 ) ) ) ) $ ( if d115 then d119 else true )
    d200 : ( ( Set -> Set ) ∋ ( ( λ x202 -> ( ( Set -> Set ) ∋ ( ( λ x203 -> Bool ) ) ) $ ( x202 ) ) ) ) $ ( if false then Bool else Bool )
    d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> ( ( M.d30 ) $ ( if true then x201 else x201 ) ) $ ( if false then d128 else true ) ) ) ) $ ( if d176 then d113 else true )
    d204 : ( ( Set -> Set ) ∋ ( ( λ x207 -> ( ( Set -> Set ) ∋ ( ( λ x208 -> x207 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
    d204 = ( ( Bool -> Bool ) ∋ ( ( λ x205 -> ( ( Bool -> Bool ) ∋ ( ( λ x206 -> x205 ) ) ) $ ( true ) ) ) ) $ ( if d173 then true else true )