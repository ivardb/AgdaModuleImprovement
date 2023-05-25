module Decl450Base12  where
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

    module M  where
        d1 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1 = ( ( Bool -> Bool ) ∋ ( ( λ x2 -> ( ( Bool -> Bool ) ∋ ( ( λ x3 -> x3 ) ) ) $ ( false ) ) ) ) $ ( if false then true else false )
        d4 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d4 = if if true then d1 else false then if true then d1 else false else if d1 then d1 else false
        d6 : if true then if false then Bool else Bool else if true then Bool else Bool
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> ( ( Bool -> Bool ) ∋ ( ( λ x8 -> d1 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then d1 else d1 )
        d9 : ( ( Set -> Set ) ∋ ( ( λ x10 -> ( ( Set -> Set ) ∋ ( ( λ x11 -> Bool ) ) ) $ ( x10 ) ) ) ) $ ( if false then Bool else Bool )
        d9 = if if true then true else false then if true then d6 else d4 else if d1 then d4 else d1
        d12 : if true then if true then Bool else Bool else if false then Bool else Bool
        d12 = ( ( Bool -> Bool ) ∋ ( ( λ x13 -> if false then x13 else true ) ) ) $ ( if d4 then d4 else true )
        d14 : if false then if true then Bool else Bool else if true then Bool else Bool
        d14 = if if false then d4 else true then if d1 then true else d6 else if true then d4 else false
        d15 : if false then if true then Bool else Bool else if false then Bool else Bool
        d15 = ( ( Bool -> Bool ) ∋ ( ( λ x16 -> if d9 then d14 else d1 ) ) ) $ ( if true then d9 else true )
        d17 : ( ( Set -> Set ) ∋ ( ( λ x20 -> ( ( Set -> Set ) ∋ ( ( λ x21 -> x21 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d17 = ( ( Bool -> Bool ) ∋ ( ( λ x18 -> ( ( Bool -> Bool ) ∋ ( ( λ x19 -> d9 ) ) ) $ ( false ) ) ) ) $ ( if d15 then false else false )
        d22 : if true then if true then Bool else Bool else if true then Bool else Bool
        d22 = ( ( Bool -> Bool ) ∋ ( ( λ x23 -> ( ( Bool -> Bool ) ∋ ( ( λ x24 -> x24 ) ) ) $ ( d4 ) ) ) ) $ ( if d4 then d12 else d15 )
        d25 : if false then if true then Bool else Bool else if false then Bool else Bool
        d25 = ( ( Bool -> Bool ) ∋ ( ( λ x26 -> if d12 then d6 else x26 ) ) ) $ ( if false then false else d15 )
        d27 : if true then if true then Bool else Bool else if true then Bool else Bool
        d27 = if if true then false else false then if d1 then d1 else true else if true then d6 else true
        d28 : if false then if true then Bool else Bool else if false then Bool else Bool
        d28 = ( ( Bool -> Bool ) ∋ ( ( λ x29 -> if x29 then x29 else false ) ) ) $ ( if false then d6 else d25 )
        d30 : if true then if true then Bool else Bool else if true then Bool else Bool
        d30 = if if true then d17 else false then if true then false else false else if true then true else false
        d31 : if false then if true then Bool else Bool else if false then Bool else Bool
        d31 = ( ( Bool -> Bool ) ∋ ( ( λ x32 -> ( ( Bool -> Bool ) ∋ ( ( λ x33 -> x33 ) ) ) $ ( true ) ) ) ) $ ( if d22 then d14 else d22 )
        d34 : if false then if true then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if x35 then d4 else true ) ) ) $ ( if false then d28 else false )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( x37 ) ) ) ) $ ( if false then Bool else Bool )
        d36 = if if true then d4 else d27 then if d34 then true else d17 else if true then false else false
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> ( ( Set -> Set ) ∋ ( ( λ x41 -> x41 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d39 = if if false then d4 else true then if true then false else true else if d14 then true else d12
        d42 : if true then if true then Bool else Bool else if false then Bool else Bool
        d42 = if if d25 then d22 else false then if true then true else false else if true then true else false
        d43 : if true then if false then Bool else Bool else if true then Bool else Bool
        d43 = if if true then false else true then if d25 then d34 else false else if true then false else false
        d44 : ( ( Set -> Set ) ∋ ( ( λ x47 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d44 = ( ( Bool -> Bool ) ∋ ( ( λ x45 -> ( ( Bool -> Bool ) ∋ ( ( λ x46 -> d34 ) ) ) $ ( x45 ) ) ) ) $ ( if d39 then d6 else true )
        d48 : ( ( Set -> Set ) ∋ ( ( λ x50 -> if true then x50 else Bool ) ) ) $ ( if false then Bool else Bool )
        d48 = ( ( Bool -> Bool ) ∋ ( ( λ x49 -> if x49 then false else x49 ) ) ) $ ( if true then false else true )
        d51 : if true then if false then Bool else Bool else if true then Bool else Bool
        d51 = ( ( Bool -> Bool ) ∋ ( ( λ x52 -> ( ( Bool -> Bool ) ∋ ( ( λ x53 -> true ) ) ) $ ( x52 ) ) ) ) $ ( if d12 then d14 else false )
        d54 : if true then if false then Bool else Bool else if true then Bool else Bool
        d54 = if if d48 then false else d44 then if true then d39 else true else if true then false else false
        d55 : ( ( Set -> Set ) ∋ ( ( λ x58 -> if false then Bool else x58 ) ) ) $ ( if true then Bool else Bool )
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( d42 ) ) ) ) $ ( if d28 then d54 else true )
        d59 : if false then if false then Bool else Bool else if false then Bool else Bool
        d59 = ( ( Bool -> Bool ) ∋ ( ( λ x60 -> if false then false else d42 ) ) ) $ ( if d14 then d25 else d48 )
        d61 : if true then if false then Bool else Bool else if true then Bool else Bool
        d61 = if if d59 then d42 else false then if d15 then d12 else true else if d36 then false else d43
        d62 : ( ( Set -> Set ) ∋ ( ( λ x63 -> ( ( Set -> Set ) ∋ ( ( λ x64 -> x63 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d62 = if if d17 then d28 else d39 then if d43 then d34 else d55 else if d17 then d27 else d42
        d65 : ( ( Set -> Set ) ∋ ( ( λ x68 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> ( ( Bool -> Bool ) ∋ ( ( λ x67 -> false ) ) ) $ ( d17 ) ) ) ) $ ( if d62 then d12 else d28 )
        d69 : ( ( Set -> Set ) ∋ ( ( λ x70 -> ( ( Set -> Set ) ∋ ( ( λ x71 -> x71 ) ) ) $ ( x70 ) ) ) ) $ ( if true then Bool else Bool )
        d69 = if if d59 then false else true then if d15 then d62 else d17 else if true then true else true
        d72 : ( ( Set -> Set ) ∋ ( ( λ x74 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d72 = ( ( Bool -> Bool ) ∋ ( ( λ x73 -> if false then d17 else x73 ) ) ) $ ( if d61 then d15 else d1 )
        d75 : if false then if false then Bool else Bool else if false then Bool else Bool
        d75 = ( ( Bool -> Bool ) ∋ ( ( λ x76 -> if x76 then x76 else x76 ) ) ) $ ( if true then true else false )
        d77 : if false then if true then Bool else Bool else if true then Bool else Bool
        d77 = if if d61 then false else false then if false then false else false else if d69 then d54 else d31
        d78 : ( ( Set -> Set ) ∋ ( ( λ x79 -> ( ( Set -> Set ) ∋ ( ( λ x80 -> x79 ) ) ) $ ( x79 ) ) ) ) $ ( if false then Bool else Bool )
        d78 = if if false then d12 else d55 then if false then d28 else false else if d12 then d9 else true
        d81 : ( ( Set -> Set ) ∋ ( ( λ x82 -> if false then Bool else x82 ) ) ) $ ( if true then Bool else Bool )
        d81 = if if true then d22 else d77 then if false then false else d28 else if d51 then true else true
        d83 : if false then if true then Bool else Bool else if false then Bool else Bool
        d83 = ( ( Bool -> Bool ) ∋ ( ( λ x84 -> if false then x84 else false ) ) ) $ ( if false then true else d22 )
        d85 : if false then if false then Bool else Bool else if false then Bool else Bool
        d85 = ( ( Bool -> Bool ) ∋ ( ( λ x86 -> ( ( Bool -> Bool ) ∋ ( ( λ x87 -> true ) ) ) $ ( x86 ) ) ) ) $ ( if false then true else d28 )
        d88 : ( ( Set -> Set ) ∋ ( ( λ x90 -> if false then x90 else Bool ) ) ) $ ( if true then Bool else Bool )
        d88 = ( ( Bool -> Bool ) ∋ ( ( λ x89 -> if d30 then x89 else d30 ) ) ) $ ( if true then false else false )
        d91 : ( ( Set -> Set ) ∋ ( ( λ x92 -> if false then x92 else x92 ) ) ) $ ( if true then Bool else Bool )
        d91 = if if false then false else d65 then if d59 then d85 else d62 else if false then true else true
        d93 : ( ( Set -> Set ) ∋ ( ( λ x94 -> ( ( Set -> Set ) ∋ ( ( λ x95 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d93 = if if d48 then true else d51 then if true then false else d6 else if false then false else false
        d96 : if true then if true then Bool else Bool else if false then Bool else Bool
        d96 = if if d12 then d91 else false then if false then d14 else d44 else if false then d48 else d93
        d97 : if false then if true then Bool else Bool else if false then Bool else Bool
        d97 = if if d44 then d78 else false then if d42 then d93 else d17 else if true then d96 else false
        d98 : ( ( Set -> Set ) ∋ ( ( λ x99 -> ( ( Set -> Set ) ∋ ( ( λ x100 -> Bool ) ) ) $ ( x99 ) ) ) ) $ ( if true then Bool else Bool )
        d98 = if if d25 then d31 else d43 then if d42 then true else true else if d12 then false else d85
        d101 : if true then if true then Bool else Bool else if false then Bool else Bool
        d101 = if if d93 then false else d62 then if d30 then false else false else if true then d15 else false
        d102 : ( ( Set -> Set ) ∋ ( ( λ x104 -> ( ( Set -> Set ) ∋ ( ( λ x105 -> x104 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d102 = ( ( Bool -> Bool ) ∋ ( ( λ x103 -> if false then false else d61 ) ) ) $ ( if true then d36 else false )
        d106 : if true then if true then Bool else Bool else if true then Bool else Bool
        d106 = if if true then true else true then if d15 then d75 else false else if true then false else d61
        d107 : if false then if true then Bool else Bool else if false then Bool else Bool
        d107 = ( ( Bool -> Bool ) ∋ ( ( λ x108 -> if d42 then false else d77 ) ) ) $ ( if true then d36 else true )
        d109 : ( ( Set -> Set ) ∋ ( ( λ x111 -> if false then x111 else x111 ) ) ) $ ( if true then Bool else Bool )
        d109 = ( ( Bool -> Bool ) ∋ ( ( λ x110 -> if x110 then x110 else d93 ) ) ) $ ( if d91 then d78 else d91 )
        d112 : ( ( Set -> Set ) ∋ ( ( λ x115 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d112 = ( ( Bool -> Bool ) ∋ ( ( λ x113 -> ( ( Bool -> Bool ) ∋ ( ( λ x114 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then d78 else false )
        d116 : if false then if false then Bool else Bool else if true then Bool else Bool
        d116 = if if false then true else d91 then if true then d59 else false else if false then d51 else false
        d117 : if true then if false then Bool else Bool else if false then Bool else Bool
        d117 = if if d96 then false else d42 then if d43 then d44 else d77 else if true then true else false
        d118 : ( ( Set -> Set ) ∋ ( ( λ x119 -> if true then x119 else x119 ) ) ) $ ( if true then Bool else Bool )
        d118 = if if true then d1 else false then if d102 then d85 else d17 else if true then d75 else false
        d120 : ( ( Set -> Set ) ∋ ( ( λ x121 -> ( ( Set -> Set ) ∋ ( ( λ x122 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d120 = if if d17 then false else true then if false then true else false else if false then d39 else true
        d123 : if false then if false then Bool else Bool else if false then Bool else Bool
        d123 = if if true then d101 else d61 then if d93 then true else d62 else if d48 then d117 else false
        d124 : if true then if false then Bool else Bool else if true then Bool else Bool
        d124 = if if d4 then false else d30 then if d106 then d75 else d55 else if true then false else d75
        d125 : if true then if false then Bool else Bool else if false then Bool else Bool
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> ( ( Bool -> Bool ) ∋ ( ( λ x127 -> false ) ) ) $ ( x126 ) ) ) ) $ ( if d28 then d22 else d31 )
        d128 : if true then if false then Bool else Bool else if false then Bool else Bool
        d128 = ( ( Bool -> Bool ) ∋ ( ( λ x129 -> ( ( Bool -> Bool ) ∋ ( ( λ x130 -> d14 ) ) ) $ ( true ) ) ) ) $ ( if false then true else false )
        d131 : ( ( Set -> Set ) ∋ ( ( λ x134 -> ( ( Set -> Set ) ∋ ( ( λ x135 -> Bool ) ) ) $ ( x134 ) ) ) ) $ ( if false then Bool else Bool )
        d131 = ( ( Bool -> Bool ) ∋ ( ( λ x132 -> ( ( Bool -> Bool ) ∋ ( ( λ x133 -> d124 ) ) ) $ ( false ) ) ) ) $ ( if d118 then true else false )
        d136 : if false then if true then Bool else Bool else if false then Bool else Bool
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if x137 then true else x137 ) ) ) $ ( if d106 then false else d124 )
        d138 : ( ( Set -> Set ) ∋ ( ( λ x141 -> ( ( Set -> Set ) ∋ ( ( λ x142 -> x142 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d138 = ( ( Bool -> Bool ) ∋ ( ( λ x139 -> ( ( Bool -> Bool ) ∋ ( ( λ x140 -> d93 ) ) ) $ ( x139 ) ) ) ) $ ( if true then d106 else true )
        d143 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if true then x146 else Bool ) ) ) $ ( if true then Bool else Bool )
        d143 = ( ( Bool -> Bool ) ∋ ( ( λ x144 -> ( ( Bool -> Bool ) ∋ ( ( λ x145 -> d14 ) ) ) $ ( x144 ) ) ) ) $ ( if d138 then d120 else d27 )
        d147 : if true then if true then Bool else Bool else if true then Bool else Bool
        d147 = if if d102 then false else true then if true then d85 else true else if d123 then d54 else false
        d148 : ( ( Set -> Set ) ∋ ( ( λ x149 -> if false then x149 else Bool ) ) ) $ ( if false then Bool else Bool )
        d148 = if if d44 then false else false then if d136 then d120 else false else if d72 then false else false
        d150 : if false then if false then Bool else Bool else if true then Bool else Bool
        d150 = if if d101 then false else d112 then if d17 then d77 else d143 else if d83 then true else d28
        d151 : ( ( Set -> Set ) ∋ ( ( λ x154 -> if false then x154 else x154 ) ) ) $ ( if false then Bool else Bool )
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> x153 ) ) ) $ ( x152 ) ) ) ) $ ( if false then false else false )
        d155 : ( ( Set -> Set ) ∋ ( ( λ x156 -> if false then x156 else x156 ) ) ) $ ( if false then Bool else Bool )
        d155 = if if d116 then false else d102 then if d54 then false else d97 else if true then d65 else d28
        d157 : ( ( Set -> Set ) ∋ ( ( λ x158 -> ( ( Set -> Set ) ∋ ( ( λ x159 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d157 = if if true then d59 else false then if d25 then d117 else d54 else if true then false else d62
        d160 : if true then if false then Bool else Bool else if true then Bool else Bool
        d160 = ( ( Bool -> Bool ) ∋ ( ( λ x161 -> if d48 then true else x161 ) ) ) $ ( if d102 then d54 else d17 )
        d162 : ( ( Set -> Set ) ∋ ( ( λ x163 -> ( ( Set -> Set ) ∋ ( ( λ x164 -> x163 ) ) ) $ ( x163 ) ) ) ) $ ( if true then Bool else Bool )
        d162 = if if d43 then d48 else d9 then if false then d138 else false else if true then d125 else true
        d165 : if true then if true then Bool else Bool else if false then Bool else Bool
        d165 = ( ( Bool -> Bool ) ∋ ( ( λ x166 -> ( ( Bool -> Bool ) ∋ ( ( λ x167 -> x166 ) ) ) $ ( x166 ) ) ) ) $ ( if true then d88 else d136 )
        d168 : if true then if true then Bool else Bool else if false then Bool else Bool
        d168 = ( ( Bool -> Bool ) ∋ ( ( λ x169 -> ( ( Bool -> Bool ) ∋ ( ( λ x170 -> x170 ) ) ) $ ( false ) ) ) ) $ ( if d75 then d102 else true )
        d171 : if false then if true then Bool else Bool else if true then Bool else Bool
        d171 = ( ( Bool -> Bool ) ∋ ( ( λ x172 -> ( ( Bool -> Bool ) ∋ ( ( λ x173 -> false ) ) ) $ ( d98 ) ) ) ) $ ( if d106 then true else d116 )
        d174 : if false then if false then Bool else Bool else if false then Bool else Bool
        d174 = ( ( Bool -> Bool ) ∋ ( ( λ x175 -> if false then d131 else x175 ) ) ) $ ( if true then false else false )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> x178 ) ) ) $ ( d12 ) ) ) ) $ ( if true then true else true )
        d180 : if false then if true then Bool else Bool else if false then Bool else Bool
        d180 = if if true then d31 else false then if false then false else d31 else if true then d106 else true
        d181 : ( ( Set -> Set ) ∋ ( ( λ x182 -> ( ( Set -> Set ) ∋ ( ( λ x183 -> x183 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d181 = if if false then d165 else d136 then if false then d131 else d107 else if d131 then true else true
        d184 : if true then if true then Bool else Bool else if false then Bool else Bool
        d184 = if if true then false else d93 then if false then d107 else false else if d98 then d138 else d162
        d185 : ( ( Set -> Set ) ∋ ( ( λ x187 -> if false then Bool else x187 ) ) ) $ ( if false then Bool else Bool )
        d185 = ( ( Bool -> Bool ) ∋ ( ( λ x186 -> if x186 then x186 else d181 ) ) ) $ ( if false then true else true )
        d188 : if false then if true then Bool else Bool else if true then Bool else Bool
        d188 = ( ( Bool -> Bool ) ∋ ( ( λ x189 -> if true then x189 else false ) ) ) $ ( if true then d106 else d15 )
        d190 : ( ( Set -> Set ) ∋ ( ( λ x191 -> if false then Bool else x191 ) ) ) $ ( if false then Bool else Bool )
        d190 = if if d36 then false else d9 then if true then d128 else d17 else if d168 then true else d48
        d192 : ( ( Set -> Set ) ∋ ( ( λ x194 -> ( ( Set -> Set ) ∋ ( ( λ x195 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d192 = ( ( Bool -> Bool ) ∋ ( ( λ x193 -> if x193 then true else false ) ) ) $ ( if d22 then d101 else d4 )
        d196 : if true then if true then Bool else Bool else if false then Bool else Bool
        d196 = ( ( Bool -> Bool ) ∋ ( ( λ x197 -> ( ( Bool -> Bool ) ∋ ( ( λ x198 -> x198 ) ) ) $ ( true ) ) ) ) $ ( if d97 then true else d4 )
        d199 : if false then if true then Bool else Bool else if true then Bool else Bool
        d199 = if if d59 then false else true then if d51 then d123 else d131 else if true then false else true
        d200 : ( ( Set -> Set ) ∋ ( ( λ x203 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d200 = ( ( Bool -> Bool ) ∋ ( ( λ x201 -> ( ( Bool -> Bool ) ∋ ( ( λ x202 -> x201 ) ) ) $ ( x201 ) ) ) ) $ ( if d54 then true else true )
        d204 : ( ( Set -> Set ) ∋ ( ( λ x205 -> if false then x205 else Bool ) ) ) $ ( if true then Bool else Bool )
        d204 = if if false then false else false then if d117 then d143 else d98 else if d44 then d185 else d93
        d206 : if false then if true then Bool else Bool else if true then Bool else Bool
        d206 = if if d30 then true else false then if false then d174 else true else if false then false else false
        d207 : ( ( Set -> Set ) ∋ ( ( λ x208 -> ( ( Set -> Set ) ∋ ( ( λ x209 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d207 = if if true then d22 else false then if true then false else d85 else if false then true else d42
        d210 : ( ( Set -> Set ) ∋ ( ( λ x211 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d210 = if if d65 then d34 else true then if true then false else d148 else if d138 then true else d85
        d212 : if true then if true then Bool else Bool else if true then Bool else Bool
        d212 = if if d168 then d54 else true then if false then d117 else false else if d162 then true else false
        d213 : if true then if true then Bool else Bool else if false then Bool else Bool
        d213 = ( ( Bool -> Bool ) ∋ ( ( λ x214 -> if true then true else false ) ) ) $ ( if d9 then d28 else true )
        d215 : if true then if true then Bool else Bool else if false then Bool else Bool
        d215 = if if d123 then d44 else false then if false then false else d28 else if d109 then true else true
        d216 : ( ( Set -> Set ) ∋ ( ( λ x217 -> if false then x217 else Bool ) ) ) $ ( if false then Bool else Bool )
        d216 = if if true then true else d150 then if d6 then d125 else true else if d171 then false else false
        d218 : if true then if false then Bool else Bool else if false then Bool else Bool
        d218 = if if d216 then true else d96 then if d190 then true else d109 else if d165 then true else false
        d219 : ( ( Set -> Set ) ∋ ( ( λ x220 -> ( ( Set -> Set ) ∋ ( ( λ x221 -> x220 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d219 = if if false then d176 else false then if d199 then d171 else d31 else if d200 then true else false
        d222 : ( ( Set -> Set ) ∋ ( ( λ x224 -> ( ( Set -> Set ) ∋ ( ( λ x225 -> Bool ) ) ) $ ( x224 ) ) ) ) $ ( if false then Bool else Bool )
        d222 = ( ( Bool -> Bool ) ∋ ( ( λ x223 -> if d42 then false else x223 ) ) ) $ ( if d147 then d212 else false )
        d226 : if true then if false then Bool else Bool else if true then Bool else Bool
        d226 = ( ( Bool -> Bool ) ∋ ( ( λ x227 -> if d165 then x227 else true ) ) ) $ ( if d181 then true else true )
        d228 : ( ( Set -> Set ) ∋ ( ( λ x229 -> ( ( Set -> Set ) ∋ ( ( λ x230 -> Bool ) ) ) $ ( x229 ) ) ) ) $ ( if true then Bool else Bool )
        d228 = if if true then true else d34 then if d192 then false else true else if true then false else d188
        d231 : ( ( Set -> Set ) ∋ ( ( λ x234 -> ( ( Set -> Set ) ∋ ( ( λ x235 -> x235 ) ) ) $ ( x234 ) ) ) ) $ ( if false then Bool else Bool )
        d231 = ( ( Bool -> Bool ) ∋ ( ( λ x232 -> ( ( Bool -> Bool ) ∋ ( ( λ x233 -> true ) ) ) $ ( x232 ) ) ) ) $ ( if d116 then d210 else d199 )
        d236 : ( ( Set -> Set ) ∋ ( ( λ x237 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d236 = if if d77 then false else false then if d124 then d136 else true else if true then d168 else true
        d238 : ( ( Set -> Set ) ∋ ( ( λ x239 -> ( ( Set -> Set ) ∋ ( ( λ x240 -> x239 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d238 = if if d116 then false else true then if d199 then d51 else d34 else if d123 then false else d138
        d241 : if true then if false then Bool else Bool else if true then Bool else Bool
        d241 = if if true then d28 else false then if true then true else d102 else if d171 then d55 else false
        d242 : if false then if false then Bool else Bool else if false then Bool else Bool
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x243 -> if x243 then true else x243 ) ) ) $ ( if d34 then d65 else true )
        d244 : if false then if true then Bool else Bool else if false then Bool else Bool
        d244 = if if true then true else d185 then if d157 then d55 else false else if d200 then true else false
        d245 : ( ( Set -> Set ) ∋ ( ( λ x248 -> ( ( Set -> Set ) ∋ ( ( λ x249 -> x248 ) ) ) $ ( x248 ) ) ) ) $ ( if false then Bool else Bool )
        d245 = ( ( Bool -> Bool ) ∋ ( ( λ x246 -> ( ( Bool -> Bool ) ∋ ( ( λ x247 -> d123 ) ) ) $ ( d48 ) ) ) ) $ ( if d81 then d91 else true )
        d250 : if true then if true then Bool else Bool else if true then Bool else Bool
        d250 = ( ( Bool -> Bool ) ∋ ( ( λ x251 -> ( ( Bool -> Bool ) ∋ ( ( λ x252 -> x251 ) ) ) $ ( x251 ) ) ) ) $ ( if true then true else false )
        d253 : if false then if false then Bool else Bool else if true then Bool else Bool
        d253 = ( ( Bool -> Bool ) ∋ ( ( λ x254 -> ( ( Bool -> Bool ) ∋ ( ( λ x255 -> x255 ) ) ) $ ( d91 ) ) ) ) $ ( if d96 then d212 else d6 )
        d256 : ( ( Set -> Set ) ∋ ( ( λ x257 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d256 = if if d128 then false else d69 then if true then true else false else if false then false else true
        d258 : if false then if true then Bool else Bool else if true then Bool else Bool
        d258 = ( ( Bool -> Bool ) ∋ ( ( λ x259 -> ( ( Bool -> Bool ) ∋ ( ( λ x260 -> false ) ) ) $ ( true ) ) ) ) $ ( if d210 then true else false )
        d261 : ( ( Set -> Set ) ∋ ( ( λ x262 -> if false then x262 else Bool ) ) ) $ ( if false then Bool else Bool )
        d261 = if if d210 then false else d97 then if false then d162 else false else if false then d9 else false
        d263 : if false then if false then Bool else Bool else if true then Bool else Bool
        d263 = ( ( Bool -> Bool ) ∋ ( ( λ x264 -> if d245 then d143 else false ) ) ) $ ( if true then false else false )
        d265 : if true then if true then Bool else Bool else if false then Bool else Bool
        d265 = if if d238 then d6 else false then if d228 then d96 else d62 else if d61 then d42 else d199
        d266 : ( ( Set -> Set ) ∋ ( ( λ x268 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d266 = ( ( Bool -> Bool ) ∋ ( ( λ x267 -> if x267 then false else x267 ) ) ) $ ( if d30 then false else false )
        d269 : ( ( Set -> Set ) ∋ ( ( λ x272 -> ( ( Set -> Set ) ∋ ( ( λ x273 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d269 = ( ( Bool -> Bool ) ∋ ( ( λ x270 -> ( ( Bool -> Bool ) ∋ ( ( λ x271 -> true ) ) ) $ ( d101 ) ) ) ) $ ( if d12 then false else d250 )
        d274 : ( ( Set -> Set ) ∋ ( ( λ x275 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d274 = if if d241 then false else d185 then if true then d228 else d51 else if d31 then d112 else false
        d276 : ( ( Set -> Set ) ∋ ( ( λ x277 -> if false then Bool else x277 ) ) ) $ ( if false then Bool else Bool )
        d276 = if if true then true else false then if d27 then false else d101 else if true then true else d176
        d278 : if false then if false then Bool else Bool else if true then Bool else Bool
        d278 = ( ( Bool -> Bool ) ∋ ( ( λ x279 -> if d261 then x279 else true ) ) ) $ ( if true then d184 else d1 )
        d280 : ( ( Set -> Set ) ∋ ( ( λ x282 -> if false then x282 else Bool ) ) ) $ ( if false then Bool else Bool )
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x281 -> if true then x281 else x281 ) ) ) $ ( if d83 then d256 else d22 )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x286 -> ( ( Set -> Set ) ∋ ( ( λ x287 -> Bool ) ) ) $ ( x286 ) ) ) ) $ ( if true then Bool else Bool )
        d283 = ( ( Bool -> Bool ) ∋ ( ( λ x284 -> ( ( Bool -> Bool ) ∋ ( ( λ x285 -> true ) ) ) $ ( false ) ) ) ) $ ( if d78 then true else d190 )
        d288 : ( ( Set -> Set ) ∋ ( ( λ x289 -> if true then x289 else x289 ) ) ) $ ( if true then Bool else Bool )
        d288 = if if d256 then true else d283 then if d165 then d131 else d36 else if false then d218 else d180
        d290 : if false then if true then Bool else Bool else if true then Bool else Bool
        d290 = if if d31 then d168 else d138 then if d12 then true else d148 else if d96 then true else d93
        d291 : if false then if false then Bool else Bool else if false then Bool else Bool
        d291 = if if false then d196 else d39 then if d44 then d118 else d288 else if d59 then d176 else false
        d292 : ( ( Set -> Set ) ∋ ( ( λ x293 -> if true then Bool else x293 ) ) ) $ ( if true then Bool else Bool )
        d292 = if if true then d288 else d22 then if d75 then d207 else d218 else if d136 then d236 else false
        d294 : if false then if false then Bool else Bool else if false then Bool else Bool
        d294 = if if d34 then d34 else d109 then if d17 then d190 else d210 else if d162 then d125 else false
        d295 : ( ( Set -> Set ) ∋ ( ( λ x297 -> ( ( Set -> Set ) ∋ ( ( λ x298 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d295 = ( ( Bool -> Bool ) ∋ ( ( λ x296 -> if false then x296 else d280 ) ) ) $ ( if true then d204 else false )
        d299 : ( ( Set -> Set ) ∋ ( ( λ x301 -> if true then x301 else x301 ) ) ) $ ( if true then Bool else Bool )
        d299 = ( ( Bool -> Bool ) ∋ ( ( λ x300 -> if d93 then true else false ) ) ) $ ( if false then true else true )
        d302 : ( ( Set -> Set ) ∋ ( ( λ x303 -> if true then x303 else Bool ) ) ) $ ( if true then Bool else Bool )
        d302 = if if d1 then false else true then if false then true else d157 else if d102 then d180 else true
        d304 : if true then if true then Bool else Bool else if true then Bool else Bool
        d304 = if if false then d263 else d34 then if false then false else false else if false then d6 else d265
        d305 : ( ( Set -> Set ) ∋ ( ( λ x306 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d305 = if if false then d25 else false then if d242 then false else d200 else if true then true else d98
        d307 : if false then if true then Bool else Bool else if true then Bool else Bool
        d307 = if if false then false else d39 then if false then false else d157 else if d241 then true else true
        d308 : ( ( Set -> Set ) ∋ ( ( λ x311 -> if true then x311 else Bool ) ) ) $ ( if true then Bool else Bool )
        d308 = ( ( Bool -> Bool ) ∋ ( ( λ x309 -> ( ( Bool -> Bool ) ∋ ( ( λ x310 -> d91 ) ) ) $ ( false ) ) ) ) $ ( if false then true else d261 )
        d312 : if false then if true then Bool else Bool else if true then Bool else Bool
        d312 = if if false then false else d219 then if d155 then true else false else if true then true else false
        d313 : if true then if true then Bool else Bool else if true then Bool else Bool
        d313 = if if d299 then true else false then if true then d226 else d274 else if d65 then d31 else d245
        d314 : ( ( Set -> Set ) ∋ ( ( λ x315 -> ( ( Set -> Set ) ∋ ( ( λ x316 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d314 = if if d244 then d199 else false then if d85 then true else d25 else if false then true else false
        d317 : if false then if true then Bool else Bool else if true then Bool else Bool
        d317 = if if d4 then false else d9 then if true then true else d204 else if false then true else d148
        d318 : ( ( Set -> Set ) ∋ ( ( λ x321 -> if true then x321 else x321 ) ) ) $ ( if false then Bool else Bool )
        d318 = ( ( Bool -> Bool ) ∋ ( ( λ x319 -> ( ( Bool -> Bool ) ∋ ( ( λ x320 -> d302 ) ) ) $ ( d228 ) ) ) ) $ ( if true then d299 else true )
        d322 : if false then if true then Bool else Bool else if false then Bool else Bool
        d322 = if if d261 then d98 else d212 then if d72 then true else d59 else if d199 then d294 else true
        d323 : ( ( Set -> Set ) ∋ ( ( λ x324 -> ( ( Set -> Set ) ∋ ( ( λ x325 -> Bool ) ) ) $ ( x324 ) ) ) ) $ ( if false then Bool else Bool )
        d323 = if if d269 then true else false then if false then d117 else true else if false then false else true
        d326 : ( ( Set -> Set ) ∋ ( ( λ x327 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d326 = if if true then d253 else true then if d280 then true else d226 else if true then d199 else d261
        d328 : ( ( Set -> Set ) ∋ ( ( λ x329 -> if true then x329 else x329 ) ) ) $ ( if false then Bool else Bool )
        d328 = if if false then true else d180 then if d81 then false else d34 else if d160 then d218 else d322
        d330 : if false then if false then Bool else Bool else if false then Bool else Bool
        d330 = if if true then d61 else d78 then if false then d280 else false else if d274 then true else d120
        d331 : if false then if false then Bool else Bool else if false then Bool else Bool
        d331 = ( ( Bool -> Bool ) ∋ ( ( λ x332 -> if false then x332 else x332 ) ) ) $ ( if true then d190 else d190 )
        d333 : ( ( Set -> Set ) ∋ ( ( λ x335 -> if false then x335 else x335 ) ) ) $ ( if false then Bool else Bool )
        d333 = ( ( Bool -> Bool ) ∋ ( ( λ x334 -> if false then x334 else x334 ) ) ) $ ( if true then d27 else d136 )
        d336 : ( ( Set -> Set ) ∋ ( ( λ x338 -> if false then Bool else x338 ) ) ) $ ( if false then Bool else Bool )
        d336 = ( ( Bool -> Bool ) ∋ ( ( λ x337 -> if d276 then x337 else true ) ) ) $ ( if d333 then d312 else false )
        d339 : if false then if true then Bool else Bool else if true then Bool else Bool
        d339 = ( ( Bool -> Bool ) ∋ ( ( λ x340 -> if x340 then false else d317 ) ) ) $ ( if d206 then d288 else d88 )
        d341 : ( ( Set -> Set ) ∋ ( ( λ x344 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x342 -> ( ( Bool -> Bool ) ∋ ( ( λ x343 -> d288 ) ) ) $ ( d43 ) ) ) ) $ ( if false then false else true )
        d345 : if true then if false then Bool else Bool else if false then Bool else Bool
        d345 = if if true then false else d143 then if false then d213 else true else if d274 then false else d147
        d346 : ( ( Set -> Set ) ∋ ( ( λ x348 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d346 = ( ( Bool -> Bool ) ∋ ( ( λ x347 -> if true then d28 else x347 ) ) ) $ ( if true then d75 else false )
        d349 : ( ( Set -> Set ) ∋ ( ( λ x352 -> ( ( Set -> Set ) ∋ ( ( λ x353 -> Bool ) ) ) $ ( x352 ) ) ) ) $ ( if false then Bool else Bool )
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> ( ( Bool -> Bool ) ∋ ( ( λ x351 -> true ) ) ) $ ( d1 ) ) ) ) $ ( if false then true else false )
        d354 : ( ( Set -> Set ) ∋ ( ( λ x357 -> if false then Bool else x357 ) ) ) $ ( if true then Bool else Bool )
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x355 -> ( ( Bool -> Bool ) ∋ ( ( λ x356 -> true ) ) ) $ ( false ) ) ) ) $ ( if d14 then false else d304 )
        d358 : if true then if false then Bool else Bool else if true then Bool else Bool
        d358 = if if false then d157 else true then if true then false else d292 else if d261 then true else d36
        d359 : ( ( Set -> Set ) ∋ ( ( λ x362 -> ( ( Set -> Set ) ∋ ( ( λ x363 -> x363 ) ) ) $ ( x362 ) ) ) ) $ ( if true then Bool else Bool )
        d359 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> ( ( Bool -> Bool ) ∋ ( ( λ x361 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then d9 else false )
        d364 : if false then if true then Bool else Bool else if true then Bool else Bool
        d364 = ( ( Bool -> Bool ) ∋ ( ( λ x365 -> ( ( Bool -> Bool ) ∋ ( ( λ x366 -> false ) ) ) $ ( d222 ) ) ) ) $ ( if d88 then d143 else true )
        d367 : ( ( Set -> Set ) ∋ ( ( λ x369 -> if false then Bool else x369 ) ) ) $ ( if false then Bool else Bool )
        d367 = ( ( Bool -> Bool ) ∋ ( ( λ x368 -> if d96 then x368 else true ) ) ) $ ( if false then d102 else d27 )
        d370 : ( ( Set -> Set ) ∋ ( ( λ x372 -> ( ( Set -> Set ) ∋ ( ( λ x373 -> x372 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d370 = ( ( Bool -> Bool ) ∋ ( ( λ x371 -> if d196 then d258 else false ) ) ) $ ( if true then d313 else false )
        d374 : ( ( Set -> Set ) ∋ ( ( λ x375 -> ( ( Set -> Set ) ∋ ( ( λ x376 -> x375 ) ) ) $ ( x375 ) ) ) ) $ ( if false then Bool else Bool )
        d374 = if if false then d190 else true then if d215 then d250 else d242 else if d292 then true else false
        d377 : ( ( Set -> Set ) ∋ ( ( λ x378 -> ( ( Set -> Set ) ∋ ( ( λ x379 -> x378 ) ) ) $ ( x378 ) ) ) ) $ ( if true then Bool else Bool )
        d377 = if if false then false else true then if false then d118 else d323 else if d370 then false else d171
        d380 : if false then if true then Bool else Bool else if false then Bool else Bool
        d380 = ( ( Bool -> Bool ) ∋ ( ( λ x381 -> if d308 then false else x381 ) ) ) $ ( if true then d96 else true )
        d382 : if true then if false then Bool else Bool else if true then Bool else Bool
        d382 = if if false then d317 else false then if d359 then false else false else if false then d83 else true
        d383 : ( ( Set -> Set ) ∋ ( ( λ x384 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d383 = if if false then d242 else d354 then if false then false else d34 else if d112 then true else false
        d385 : ( ( Set -> Set ) ∋ ( ( λ x387 -> if true then x387 else Bool ) ) ) $ ( if true then Bool else Bool )
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x386 -> if d181 then d377 else d295 ) ) ) $ ( if true then true else true )
        d388 : ( ( Set -> Set ) ∋ ( ( λ x389 -> ( ( Set -> Set ) ∋ ( ( λ x390 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d388 = if if d91 then d302 else d107 then if d118 then d4 else d245 else if d118 then d250 else false
        d391 : ( ( Set -> Set ) ∋ ( ( λ x392 -> if true then Bool else x392 ) ) ) $ ( if true then Bool else Bool )
        d391 = if if d72 then d380 else true then if d276 then false else d109 else if d290 then false else false
        d393 : if true then if false then Bool else Bool else if false then Bool else Bool
        d393 = if if true then d263 else true then if false then d200 else d72 else if d204 then true else d364
        d394 : ( ( Set -> Set ) ∋ ( ( λ x395 -> if true then Bool else x395 ) ) ) $ ( if false then Bool else Bool )
        d394 = if if d131 then true else d9 then if d318 then d370 else d313 else if d36 then false else d283
        d396 : if false then if false then Bool else Bool else if true then Bool else Bool
        d396 = ( ( Bool -> Bool ) ∋ ( ( λ x397 -> ( ( Bool -> Bool ) ∋ ( ( λ x398 -> false ) ) ) $ ( d55 ) ) ) ) $ ( if true then false else true )
        d399 : ( ( Set -> Set ) ∋ ( ( λ x400 -> ( ( Set -> Set ) ∋ ( ( λ x401 -> Bool ) ) ) $ ( x400 ) ) ) ) $ ( if false then Bool else Bool )
        d399 = if if true then true else true then if d359 then d125 else false else if false then d39 else d143
        d402 : ( ( Set -> Set ) ∋ ( ( λ x403 -> if false then x403 else x403 ) ) ) $ ( if true then Bool else Bool )
        d402 = if if d55 then true else true then if d15 then false else true else if false then false else d263
        d404 : if true then if false then Bool else Bool else if false then Bool else Bool
        d404 = if if d83 then false else d48 then if d317 then false else true else if d290 then true else d323
        d405 : ( ( Set -> Set ) ∋ ( ( λ x408 -> ( ( Set -> Set ) ∋ ( ( λ x409 -> x409 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d405 = ( ( Bool -> Bool ) ∋ ( ( λ x406 -> ( ( Bool -> Bool ) ∋ ( ( λ x407 -> false ) ) ) $ ( d216 ) ) ) ) $ ( if d55 then false else false )
        d410 : if false then if true then Bool else Bool else if true then Bool else Bool
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x411 -> if false then true else d171 ) ) ) $ ( if true then false else true )
        d412 : ( ( Set -> Set ) ∋ ( ( λ x413 -> ( ( Set -> Set ) ∋ ( ( λ x414 -> x414 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d412 = if if d171 then false else false then if false then true else true else if false then d312 else d93
        d415 : ( ( Set -> Set ) ∋ ( ( λ x417 -> ( ( Set -> Set ) ∋ ( ( λ x418 -> Bool ) ) ) $ ( x417 ) ) ) ) $ ( if true then Bool else Bool )
        d415 = ( ( Bool -> Bool ) ∋ ( ( λ x416 -> if true then d302 else x416 ) ) ) $ ( if d17 then true else d17 )
        d419 : ( ( Set -> Set ) ∋ ( ( λ x422 -> ( ( Set -> Set ) ∋ ( ( λ x423 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d419 = ( ( Bool -> Bool ) ∋ ( ( λ x420 -> ( ( Bool -> Bool ) ∋ ( ( λ x421 -> d15 ) ) ) $ ( d31 ) ) ) ) $ ( if d131 then false else d61 )
        d424 : ( ( Set -> Set ) ∋ ( ( λ x427 -> if false then Bool else x427 ) ) ) $ ( if false then Bool else Bool )
        d424 = ( ( Bool -> Bool ) ∋ ( ( λ x425 -> ( ( Bool -> Bool ) ∋ ( ( λ x426 -> d323 ) ) ) $ ( d292 ) ) ) ) $ ( if false then d31 else d322 )
        d428 : ( ( Set -> Set ) ∋ ( ( λ x430 -> if false then x430 else x430 ) ) ) $ ( if true then Bool else Bool )
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x429 -> if d185 then false else d61 ) ) ) $ ( if d69 then true else d333 )
        d431 : if true then if false then Bool else Bool else if true then Bool else Bool
        d431 = if if d83 then true else true then if true then true else false else if d151 then false else false
        d432 : ( ( Set -> Set ) ∋ ( ( λ x435 -> ( ( Set -> Set ) ∋ ( ( λ x436 -> x435 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d432 = ( ( Bool -> Bool ) ∋ ( ( λ x433 -> ( ( Bool -> Bool ) ∋ ( ( λ x434 -> d291 ) ) ) $ ( true ) ) ) ) $ ( if d171 then d399 else false )
        d437 : ( ( Set -> Set ) ∋ ( ( λ x438 -> ( ( Set -> Set ) ∋ ( ( λ x439 -> x439 ) ) ) $ ( x438 ) ) ) ) $ ( if true then Bool else Bool )
        d437 = if if false then true else false then if false then d218 else true else if true then false else true
        d440 : if false then if false then Bool else Bool else if false then Bool else Bool
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x441 -> if x441 then x441 else d318 ) ) ) $ ( if d382 then false else d263 )
        d442 : ( ( Set -> Set ) ∋ ( ( λ x444 -> ( ( Set -> Set ) ∋ ( ( λ x445 -> Bool ) ) ) $ ( x444 ) ) ) ) $ ( if false then Bool else Bool )
        d442 = ( ( Bool -> Bool ) ∋ ( ( λ x443 -> if d437 then x443 else x443 ) ) ) $ ( if d437 then d367 else d83 )
        d446 : if true then if false then Bool else Bool else if true then Bool else Bool
        d446 = ( ( Bool -> Bool ) ∋ ( ( λ x447 -> if x447 then x447 else false ) ) ) $ ( if true then d124 else false )
        d448 : ( ( Set -> Set ) ∋ ( ( λ x451 -> ( ( Set -> Set ) ∋ ( ( λ x452 -> Bool ) ) ) $ ( x451 ) ) ) ) $ ( if false then Bool else Bool )
        d448 = ( ( Bool -> Bool ) ∋ ( ( λ x449 -> ( ( Bool -> Bool ) ∋ ( ( λ x450 -> x449 ) ) ) $ ( false ) ) ) ) $ ( if false then false else d14 )
        d453 : ( ( Set -> Set ) ∋ ( ( λ x454 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d453 = if if d292 then d162 else false then if false then true else d128 else if true then d440 else false
        d455 : if false then if false then Bool else Bool else if false then Bool else Bool
        d455 = if if d17 then d101 else false then if true then d4 else true else if d299 then d143 else d218
        d456 : if true then if false then Bool else Bool else if true then Bool else Bool
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x457 -> if d128 then x457 else x457 ) ) ) $ ( if d291 then d190 else false )
        d458 : ( ( Set -> Set ) ∋ ( ( λ x460 -> ( ( Set -> Set ) ∋ ( ( λ x461 -> x460 ) ) ) $ ( x460 ) ) ) ) $ ( if true then Bool else Bool )
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> if true then x459 else true ) ) ) $ ( if d131 then false else d51 )
        d462 : if true then if false then Bool else Bool else if false then Bool else Bool
        d462 = if if d261 then d28 else d128 then if d377 then true else false else if false then d274 else false
        d463 : if true then if true then Bool else Bool else if true then Bool else Bool
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x464 -> if d106 then false else d304 ) ) ) $ ( if d453 then true else true )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x467 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d465 = ( ( Bool -> Bool ) ∋ ( ( λ x466 -> if true then false else x466 ) ) ) $ ( if d331 then false else true )
        d468 : ( ( Set -> Set ) ∋ ( ( λ x470 -> ( ( Set -> Set ) ∋ ( ( λ x471 -> x470 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x469 -> if false then false else x469 ) ) ) $ ( if d96 then false else d446 )
        d472 : if true then if false then Bool else Bool else if false then Bool else Bool
        d472 = ( ( Bool -> Bool ) ∋ ( ( λ x473 -> ( ( Bool -> Bool ) ∋ ( ( λ x474 -> false ) ) ) $ ( x473 ) ) ) ) $ ( if false then d388 else d55 )
        d475 : ( ( Set -> Set ) ∋ ( ( λ x477 -> ( ( Set -> Set ) ∋ ( ( λ x478 -> x477 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d475 = ( ( Bool -> Bool ) ∋ ( ( λ x476 -> if d312 then false else true ) ) ) $ ( if true then d93 else true )
        d479 : ( ( Set -> Set ) ∋ ( ( λ x480 -> if true then Bool else x480 ) ) ) $ ( if false then Bool else Bool )
        d479 = if if d176 then d9 else d22 then if d36 then true else d391 else if true then d448 else true
        d481 : ( ( Set -> Set ) ∋ ( ( λ x483 -> if false then x483 else Bool ) ) ) $ ( if false then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> if x482 then x482 else x482 ) ) ) $ ( if d176 then d442 else d463 )
        d484 : ( ( Set -> Set ) ∋ ( ( λ x487 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d484 = ( ( Bool -> Bool ) ∋ ( ( λ x485 -> ( ( Bool -> Bool ) ∋ ( ( λ x486 -> d382 ) ) ) $ ( true ) ) ) ) $ ( if d440 then true else true )
        d488 : if true then if false then Bool else Bool else if true then Bool else Bool
        d488 = ( ( Bool -> Bool ) ∋ ( ( λ x489 -> if true then d245 else x489 ) ) ) $ ( if d168 then false else d88 )
        d490 : if true then if false then Bool else Bool else if false then Bool else Bool
        d490 = if if d138 then false else d77 then if d367 then d419 else false else if false then true else true
        d491 : if true then if false then Bool else Bool else if false then Bool else Bool
        d491 = if if d339 then d69 else d98 then if false then d207 else d269 else if true then false else d410
        d492 : ( ( Set -> Set ) ∋ ( ( λ x494 -> if true then x494 else Bool ) ) ) $ ( if true then Bool else Bool )
        d492 = ( ( Bool -> Bool ) ∋ ( ( λ x493 -> if x493 then false else x493 ) ) ) $ ( if false then true else false )
        d495 : ( ( Set -> Set ) ∋ ( ( λ x497 -> ( ( Set -> Set ) ∋ ( ( λ x498 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d495 = ( ( Bool -> Bool ) ∋ ( ( λ x496 -> if d317 then false else true ) ) ) $ ( if d171 then d405 else d410 )
        d499 : if true then if true then Bool else Bool else if true then Bool else Bool
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> ( ( Bool -> Bool ) ∋ ( ( λ x501 -> d34 ) ) ) $ ( d258 ) ) ) ) $ ( if true then true else d31 )
        d502 : if false then if false then Bool else Bool else if true then Bool else Bool
        d502 = if if d388 then d93 else true then if true then d299 else d228 else if d481 then true else d465
        d503 : if true then if false then Bool else Bool else if false then Bool else Bool
        d503 = ( ( Bool -> Bool ) ∋ ( ( λ x504 -> if d22 then false else x504 ) ) ) $ ( if false then d462 else false )
        d505 : if true then if false then Bool else Bool else if true then Bool else Bool
        d505 = if if d171 then true else d155 then if d283 then d336 else true else if true then false else d120
        d506 : ( ( Set -> Set ) ∋ ( ( λ x507 -> ( ( Set -> Set ) ∋ ( ( λ x508 -> x508 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d506 = if if true then false else d242 then if d107 then true else true else if false then false else d1
        d509 : ( ( Set -> Set ) ∋ ( ( λ x511 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d509 = ( ( Bool -> Bool ) ∋ ( ( λ x510 -> if false then x510 else d107 ) ) ) $ ( if false then true else d106 )
        d512 : ( ( Set -> Set ) ∋ ( ( λ x513 -> ( ( Set -> Set ) ∋ ( ( λ x514 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d512 = if if true then d77 else true then if true then d330 else false else if false then false else d215
        d515 : if false then if false then Bool else Bool else if false then Bool else Bool
        d515 = if if d112 then d123 else false then if d479 then d48 else d236 else if false then d404 else d495
        d516 : if true then if false then Bool else Bool else if false then Bool else Bool
        d516 = if if false then d216 else d69 then if false then d505 else d131 else if true then true else true
        d517 : ( ( Set -> Set ) ∋ ( ( λ x520 -> ( ( Set -> Set ) ∋ ( ( λ x521 -> x520 ) ) ) $ ( x520 ) ) ) ) $ ( if false then Bool else Bool )
        d517 = ( ( Bool -> Bool ) ∋ ( ( λ x518 -> ( ( Bool -> Bool ) ∋ ( ( λ x519 -> true ) ) ) $ ( d78 ) ) ) ) $ ( if d219 then false else d266 )
        d522 : if true then if false then Bool else Bool else if false then Bool else Bool
        d522 = if if false then d136 else false then if d54 then d151 else d107 else if false then d322 else d91
        d523 : if true then if false then Bool else Bool else if false then Bool else Bool
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x524 -> ( ( Bool -> Bool ) ∋ ( ( λ x525 -> true ) ) ) $ ( d184 ) ) ) ) $ ( if false then d147 else false )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x529 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d526 = ( ( Bool -> Bool ) ∋ ( ( λ x527 -> ( ( Bool -> Bool ) ∋ ( ( λ x528 -> false ) ) ) $ ( d258 ) ) ) ) $ ( if true then d453 else d517 )
        d530 : if false then if true then Bool else Bool else if true then Bool else Bool
        d530 = if if d307 then d339 else d492 then if false then d258 else true else if d432 then true else d25
        d531 : ( ( Set -> Set ) ∋ ( ( λ x532 -> ( ( Set -> Set ) ∋ ( ( λ x533 -> x533 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d531 = if if d326 then true else d359 then if d290 then d222 else true else if d101 then d236 else false
        d534 : if false then if false then Bool else Bool else if true then Bool else Bool
        d534 = if if true then d308 else d97 then if d437 then d299 else true else if true then false else d488
        d535 : ( ( Set -> Set ) ∋ ( ( λ x536 -> if true then Bool else x536 ) ) ) $ ( if false then Bool else Bool )
        d535 = if if d305 then d339 else true then if false then d22 else true else if true then d256 else d236
        d537 : if true then if false then Bool else Bool else if true then Bool else Bool
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x538 -> if false then x538 else false ) ) ) $ ( if d440 then d36 else false )
        d539 : if true then if false then Bool else Bool else if true then Bool else Bool
        d539 = if if true then d488 else d185 then if true then d258 else true else if d475 then false else false
        d540 : ( ( Set -> Set ) ∋ ( ( λ x541 -> ( ( Set -> Set ) ∋ ( ( λ x542 -> x541 ) ) ) $ ( x541 ) ) ) ) $ ( if true then Bool else Bool )
        d540 = if if d269 then true else false then if d462 then d155 else d291 else if true then false else false
        d543 : ( ( Set -> Set ) ∋ ( ( λ x544 -> if false then x544 else x544 ) ) ) $ ( if true then Bool else Bool )
        d543 = if if d345 then false else d148 then if d253 then d399 else d288 else if false then false else d448
        d545 : ( ( Set -> Set ) ∋ ( ( λ x547 -> ( ( Set -> Set ) ∋ ( ( λ x548 -> x547 ) ) ) $ ( x547 ) ) ) ) $ ( if false then Bool else Bool )
        d545 = ( ( Bool -> Bool ) ∋ ( ( λ x546 -> if x546 then false else x546 ) ) ) $ ( if d93 then d283 else d543 )
        d549 : ( ( Set -> Set ) ∋ ( ( λ x552 -> ( ( Set -> Set ) ∋ ( ( λ x553 -> x552 ) ) ) $ ( x552 ) ) ) ) $ ( if true then Bool else Bool )
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x551 -> x551 ) ) ) $ ( x550 ) ) ) ) $ ( if d341 then true else false )
        d554 : ( ( Set -> Set ) ∋ ( ( λ x557 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d554 = ( ( Bool -> Bool ) ∋ ( ( λ x555 -> ( ( Bool -> Bool ) ∋ ( ( λ x556 -> true ) ) ) $ ( d218 ) ) ) ) $ ( if false then false else d354 )
        d558 : if false then if true then Bool else Bool else if true then Bool else Bool
        d558 = if if d120 then d328 else d196 then if d382 then true else d238 else if true then d280 else d61
        d559 : if true then if false then Bool else Bool else if false then Bool else Bool
        d559 = if if d131 then true else false then if true then false else d85 else if false then d12 else true
        d560 : if true then if false then Bool else Bool else if true then Bool else Bool
        d560 = ( ( Bool -> Bool ) ∋ ( ( λ x561 -> ( ( Bool -> Bool ) ∋ ( ( λ x562 -> x562 ) ) ) $ ( false ) ) ) ) $ ( if d517 then d354 else true )
        d563 : ( ( Set -> Set ) ∋ ( ( λ x564 -> if false then x564 else x564 ) ) ) $ ( if true then Bool else Bool )
        d563 = if if true then d543 else d456 then if d462 then d440 else d535 else if d364 then d492 else d109
        d565 : if false then if false then Bool else Bool else if false then Bool else Bool
        d565 = if if false then true else false then if d62 then false else d558 else if d453 then true else true
        d566 : if true then if false then Bool else Bool else if true then Bool else Bool
        d566 = if if d30 then true else false then if false then false else d22 else if d374 then d506 else false
        d567 : if false then if false then Bool else Bool else if false then Bool else Bool
        d567 = if if true then false else true then if true then true else false else if true then false else d200
        d568 : if false then if true then Bool else Bool else if true then Bool else Bool
        d568 = ( ( Bool -> Bool ) ∋ ( ( λ x569 -> if x569 then d6 else x569 ) ) ) $ ( if d374 then d415 else d341 )
        d570 : if true then if true then Bool else Bool else if false then Bool else Bool
        d570 = if if d212 then false else true then if false then false else d354 else if d462 then false else false
        d571 : ( ( Set -> Set ) ∋ ( ( λ x572 -> if false then x572 else Bool ) ) ) $ ( if true then Bool else Bool )
        d571 = if if d317 then d151 else false then if true then d27 else d314 else if d405 then true else d155
        d573 : if true then if false then Bool else Bool else if true then Bool else Bool
        d573 = if if d162 then d204 else true then if true then true else d462 else if d428 then d61 else true
        d574 : ( ( Set -> Set ) ∋ ( ( λ x577 -> if true then Bool else x577 ) ) ) $ ( if false then Bool else Bool )
        d574 = ( ( Bool -> Bool ) ∋ ( ( λ x575 -> ( ( Bool -> Bool ) ∋ ( ( λ x576 -> true ) ) ) $ ( x575 ) ) ) ) $ ( if false then true else false )
        d578 : ( ( Set -> Set ) ∋ ( ( λ x579 -> if true then x579 else x579 ) ) ) $ ( if true then Bool else Bool )
        d578 = if if d27 then d184 else d199 then if d385 then true else d563 else if true then false else d290
        d580 : ( ( Set -> Set ) ∋ ( ( λ x582 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d580 = ( ( Bool -> Bool ) ∋ ( ( λ x581 -> if d123 then d276 else x581 ) ) ) $ ( if false then d43 else d367 )
        d583 : ( ( Set -> Set ) ∋ ( ( λ x584 -> if true then x584 else x584 ) ) ) $ ( if false then Bool else Bool )
        d583 = if if false then false else false then if d125 then true else false else if false then true else false
        d585 : ( ( Set -> Set ) ∋ ( ( λ x587 -> if true then x587 else x587 ) ) ) $ ( if true then Bool else Bool )
        d585 = ( ( Bool -> Bool ) ∋ ( ( λ x586 -> if x586 then false else false ) ) ) $ ( if true then false else false )
        d588 : if true then if true then Bool else Bool else if true then Bool else Bool
        d588 = ( ( Bool -> Bool ) ∋ ( ( λ x589 -> if x589 then true else false ) ) ) $ ( if d346 then d155 else d415 )
        d590 : ( ( Set -> Set ) ∋ ( ( λ x591 -> if true then x591 else Bool ) ) ) $ ( if false then Bool else Bool )
        d590 = if if true then true else d359 then if d512 then d123 else d543 else if true then d283 else true
        d592 : ( ( Set -> Set ) ∋ ( ( λ x593 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d592 = if if d446 then d424 else d253 then if d116 then d75 else d181 else if true then false else d15
        d594 : if true then if false then Bool else Bool else if false then Bool else Bool
        d594 = ( ( Bool -> Bool ) ∋ ( ( λ x595 -> if x595 then false else d336 ) ) ) $ ( if false then false else false )
        d596 : if true then if false then Bool else Bool else if true then Bool else Bool
        d596 = ( ( Bool -> Bool ) ∋ ( ( λ x597 -> if x597 then true else x597 ) ) ) $ ( if d155 then d42 else d181 )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x599 -> ( ( Set -> Set ) ∋ ( ( λ x600 -> x600 ) ) ) $ ( x599 ) ) ) ) $ ( if true then Bool else Bool )
        d598 = if if d101 then true else d292 then if d160 then d155 else false else if d261 then false else false
        d601 : if false then if true then Bool else Bool else if true then Bool else Bool
        d601 = ( ( Bool -> Bool ) ∋ ( ( λ x602 -> ( ( Bool -> Bool ) ∋ ( ( λ x603 -> x603 ) ) ) $ ( true ) ) ) ) $ ( if d123 then false else false )
        d604 : ( ( Set -> Set ) ∋ ( ( λ x606 -> if true then x606 else Bool ) ) ) $ ( if true then Bool else Bool )
        d604 = ( ( Bool -> Bool ) ∋ ( ( λ x605 -> if d516 then x605 else x605 ) ) ) $ ( if d462 then false else d160 )
        d607 : ( ( Set -> Set ) ∋ ( ( λ x608 -> ( ( Set -> Set ) ∋ ( ( λ x609 -> x608 ) ) ) $ ( x608 ) ) ) ) $ ( if false then Bool else Bool )
        d607 = if if d54 then d523 else false then if d567 then false else d465 else if d120 then false else d238
        d610 : if true then if false then Bool else Bool else if false then Bool else Bool
        d610 = if if false then d117 else true then if d506 then true else d77 else if false then true else true
        d611 : ( ( Set -> Set ) ∋ ( ( λ x613 -> if false then Bool else x613 ) ) ) $ ( if false then Bool else Bool )
        d611 = ( ( Bool -> Bool ) ∋ ( ( λ x612 -> if d453 then x612 else x612 ) ) ) $ ( if d492 then false else false )
        d614 : if true then if true then Bool else Bool else if true then Bool else Bool
        d614 = ( ( Bool -> Bool ) ∋ ( ( λ x615 -> ( ( Bool -> Bool ) ∋ ( ( λ x616 -> x615 ) ) ) $ ( true ) ) ) ) $ ( if true then d102 else false )
        d617 : ( ( Set -> Set ) ∋ ( ( λ x618 -> ( ( Set -> Set ) ∋ ( ( λ x619 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d617 = if if d505 then false else false then if false then d491 else true else if false then false else d258
        d620 : ( ( Set -> Set ) ∋ ( ( λ x623 -> ( ( Set -> Set ) ∋ ( ( λ x624 -> x623 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d620 = ( ( Bool -> Bool ) ∋ ( ( λ x621 -> ( ( Bool -> Bool ) ∋ ( ( λ x622 -> true ) ) ) $ ( true ) ) ) ) $ ( if d93 then false else true )
        d625 : ( ( Set -> Set ) ∋ ( ( λ x626 -> ( ( Set -> Set ) ∋ ( ( λ x627 -> x626 ) ) ) $ ( x626 ) ) ) ) $ ( if true then Bool else Bool )
        d625 = if if true then d55 else d495 then if d571 then d226 else true else if true then d101 else false
        d628 : if false then if false then Bool else Bool else if true then Bool else Bool
        d628 = if if false then d308 else false then if d72 then false else d571 else if d136 then false else d231
        d629 : ( ( Set -> Set ) ∋ ( ( λ x632 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d629 = ( ( Bool -> Bool ) ∋ ( ( λ x630 -> ( ( Bool -> Bool ) ∋ ( ( λ x631 -> false ) ) ) $ ( x630 ) ) ) ) $ ( if true then d393 else false )
        d633 : if true then if true then Bool else Bool else if true then Bool else Bool
        d633 = if if d96 then true else true then if true then d116 else d336 else if true then d312 else false
        d634 : ( ( Set -> Set ) ∋ ( ( λ x635 -> ( ( Set -> Set ) ∋ ( ( λ x636 -> x636 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d634 = if if true then d377 else d499 then if false then true else d93 else if false then d292 else false
        d637 : ( ( Set -> Set ) ∋ ( ( λ x640 -> ( ( Set -> Set ) ∋ ( ( λ x641 -> x640 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d637 = ( ( Bool -> Bool ) ∋ ( ( λ x638 -> ( ( Bool -> Bool ) ∋ ( ( λ x639 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d642 : ( ( Set -> Set ) ∋ ( ( λ x643 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d642 = if if d85 then d339 else d97 then if true then false else d590 else if true then true else false
        d644 : ( ( Set -> Set ) ∋ ( ( λ x645 -> ( ( Set -> Set ) ∋ ( ( λ x646 -> Bool ) ) ) $ ( x645 ) ) ) ) $ ( if false then Bool else Bool )
        d644 = if if true then true else true then if false then d625 else true else if false then d1 else false
        d647 : ( ( Set -> Set ) ∋ ( ( λ x649 -> ( ( Set -> Set ) ∋ ( ( λ x650 -> Bool ) ) ) $ ( x649 ) ) ) ) $ ( if false then Bool else Bool )
        d647 = ( ( Bool -> Bool ) ∋ ( ( λ x648 -> if x648 then d488 else x648 ) ) ) $ ( if true then true else false )
        d651 : if true then if false then Bool else Bool else if false then Bool else Bool
        d651 = if if false then d565 else d157 then if d412 then true else d380 else if d138 then true else d42
        d652 : ( ( Set -> Set ) ∋ ( ( λ x653 -> if true then x653 else Bool ) ) ) $ ( if true then Bool else Bool )
        d652 = if if false then d55 else false then if d299 then false else d118 else if d250 then false else d388
        d654 : if true then if true then Bool else Bool else if false then Bool else Bool
        d654 = ( ( Bool -> Bool ) ∋ ( ( λ x655 -> ( ( Bool -> Bool ) ∋ ( ( λ x656 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d657 : ( ( Set -> Set ) ∋ ( ( λ x660 -> ( ( Set -> Set ) ∋ ( ( λ x661 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d657 = ( ( Bool -> Bool ) ∋ ( ( λ x658 -> ( ( Bool -> Bool ) ∋ ( ( λ x659 -> x659 ) ) ) $ ( x658 ) ) ) ) $ ( if true then false else d490 )
        d662 : if false then if true then Bool else Bool else if true then Bool else Bool
        d662 = ( ( Bool -> Bool ) ∋ ( ( λ x663 -> ( ( Bool -> Bool ) ∋ ( ( λ x664 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d665 : if true then if true then Bool else Bool else if false then Bool else Bool
        d665 = if if false then d412 else true then if d526 then d523 else d383 else if d652 then d468 else d662
        d666 : ( ( Set -> Set ) ∋ ( ( λ x667 -> ( ( Set -> Set ) ∋ ( ( λ x668 -> Bool ) ) ) $ ( x667 ) ) ) ) $ ( if true then Bool else Bool )
        d666 = if if d491 then d475 else d598 then if d490 then true else d31 else if false then true else d34
        d669 : if true then if true then Bool else Bool else if true then Bool else Bool
        d669 = if if d383 then false else false then if d55 then true else d17 else if true then d150 else false
        d670 : ( ( Set -> Set ) ∋ ( ( λ x671 -> ( ( Set -> Set ) ∋ ( ( λ x672 -> x672 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d670 = if if d492 then false else true then if d505 then true else true else if d506 then true else d51
        d673 : if false then if false then Bool else Bool else if false then Bool else Bool
        d673 = if if d96 then d509 else true then if true then true else false else if d30 then true else d388
        d674 : if false then if false then Bool else Bool else if true then Bool else Bool
        d674 = if if false then false else false then if d560 then false else false else if false then false else d585
        d675 : if true then if false then Bool else Bool else if true then Bool else Bool
        d675 = if if true then true else d410 then if d165 then false else true else if false then d242 else true
        d676 : ( ( Set -> Set ) ∋ ( ( λ x679 -> if true then x679 else x679 ) ) ) $ ( if false then Bool else Bool )
        d676 = ( ( Bool -> Bool ) ∋ ( ( λ x677 -> ( ( Bool -> Bool ) ∋ ( ( λ x678 -> x678 ) ) ) $ ( d85 ) ) ) ) $ ( if d307 then true else false )
        d680 : ( ( Set -> Set ) ∋ ( ( λ x683 -> ( ( Set -> Set ) ∋ ( ( λ x684 -> x683 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d680 = ( ( Bool -> Bool ) ∋ ( ( λ x681 -> ( ( Bool -> Bool ) ∋ ( ( λ x682 -> x681 ) ) ) $ ( x681 ) ) ) ) $ ( if d530 then d278 else d245 )
        d685 : if false then if true then Bool else Bool else if false then Bool else Bool
        d685 = if if d244 then false else d394 then if true then false else d388 else if d614 then false else d22
        d686 : ( ( Set -> Set ) ∋ ( ( λ x687 -> if true then x687 else Bool ) ) ) $ ( if false then Bool else Bool )
        d686 = if if true then false else true then if false then d216 else true else if false then true else false
        d688 : ( ( Set -> Set ) ∋ ( ( λ x689 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d688 = if if true then d143 else d571 then if d326 then false else d526 else if d245 then d583 else d323
        d690 : ( ( Set -> Set ) ∋ ( ( λ x692 -> ( ( Set -> Set ) ∋ ( ( λ x693 -> x692 ) ) ) $ ( x692 ) ) ) ) $ ( if true then Bool else Bool )
        d690 = ( ( Bool -> Bool ) ∋ ( ( λ x691 -> if x691 then true else x691 ) ) ) $ ( if true then false else d374 )
        d694 : ( ( Set -> Set ) ∋ ( ( λ x695 -> if true then x695 else x695 ) ) ) $ ( if false then Bool else Bool )
        d694 = if if false then true else d97 then if d55 then false else d148 else if d534 then d503 else d571
        d696 : if true then if true then Bool else Bool else if false then Bool else Bool
        d696 = ( ( Bool -> Bool ) ∋ ( ( λ x697 -> if d654 then d448 else x697 ) ) ) $ ( if false then false else d515 )
        d698 : ( ( Set -> Set ) ∋ ( ( λ x700 -> if true then x700 else Bool ) ) ) $ ( if false then Bool else Bool )
        d698 = ( ( Bool -> Bool ) ∋ ( ( λ x699 -> if d680 then true else x699 ) ) ) $ ( if d625 then d299 else d610 )
        d701 : if false then if false then Bool else Bool else if true then Bool else Bool
        d701 = if if true then true else d6 then if true then d148 else true else if d559 then d448 else true
        d702 : if true then if false then Bool else Bool else if true then Bool else Bool
        d702 = if if true then d69 else false then if false then false else false else if d278 then true else true
        d703 : if true then if false then Bool else Bool else if true then Bool else Bool
        d703 = if if false then true else d14 then if false then true else true else if d594 then true else false
        d704 : if false then if true then Bool else Bool else if false then Bool else Bool
        d704 = if if false then true else d364 then if d415 then false else d78 else if true then false else false
        d705 : if true then if false then Bool else Bool else if false then Bool else Bool
        d705 = if if false then d69 else false then if d399 then false else true else if d382 then d72 else true
        d706 : ( ( Set -> Set ) ∋ ( ( λ x707 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d706 = if if true then d617 else false then if d676 then false else d393 else if false then d666 else true
        d708 : if true then if true then Bool else Bool else if true then Bool else Bool
        d708 = ( ( Bool -> Bool ) ∋ ( ( λ x709 -> ( ( Bool -> Bool ) ∋ ( ( λ x710 -> true ) ) ) $ ( true ) ) ) ) $ ( if d522 then d55 else d419 )
        d711 : if false then if true then Bool else Bool else if true then Bool else Bool
        d711 = if if true then true else false then if d479 then false else d245 else if false then true else d652
        d712 : if true then if false then Bool else Bool else if true then Bool else Bool
        d712 = ( ( Bool -> Bool ) ∋ ( ( λ x713 -> if d596 then d276 else false ) ) ) $ ( if d545 then d458 else true )
        d714 : if false then if true then Bool else Bool else if false then Bool else Bool
        d714 = if if d566 then d440 else true then if true then false else true else if d168 then d236 else d374
        d715 : if false then if true then Bool else Bool else if true then Bool else Bool
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x716 -> if d540 then d706 else false ) ) ) $ ( if d77 then d196 else d288 )
        d717 : if true then if false then Bool else Bool else if false then Bool else Bool
        d717 = if if d180 then false else d448 then if false then d715 else true else if false then d701 else d307
        d718 : ( ( Set -> Set ) ∋ ( ( λ x719 -> if false then x719 else x719 ) ) ) $ ( if true then Bool else Bool )
        d718 = if if false then true else true then if true then d168 else d431 else if d543 then true else true
        d720 : if true then if false then Bool else Bool else if false then Bool else Bool
        d720 = ( ( Bool -> Bool ) ∋ ( ( λ x721 -> ( ( Bool -> Bool ) ∋ ( ( λ x722 -> d385 ) ) ) $ ( true ) ) ) ) $ ( if d515 then false else true )
        d723 : ( ( Set -> Set ) ∋ ( ( λ x726 -> ( ( Set -> Set ) ∋ ( ( λ x727 -> x727 ) ) ) $ ( x726 ) ) ) ) $ ( if true then Bool else Bool )
        d723 = ( ( Bool -> Bool ) ∋ ( ( λ x724 -> ( ( Bool -> Bool ) ∋ ( ( λ x725 -> x725 ) ) ) $ ( false ) ) ) ) $ ( if d17 then d554 else d199 )
        d728 : if true then if false then Bool else Bool else if true then Bool else Bool
        d728 = if if false then d652 else true then if d185 then d463 else false else if false then d328 else d711
        d729 : if true then if true then Bool else Bool else if false then Bool else Bool
        d729 = ( ( Bool -> Bool ) ∋ ( ( λ x730 -> ( ( Bool -> Bool ) ∋ ( ( λ x731 -> false ) ) ) $ ( x730 ) ) ) ) $ ( if d377 then d4 else d396 )
        d732 : ( ( Set -> Set ) ∋ ( ( λ x733 -> ( ( Set -> Set ) ∋ ( ( λ x734 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d732 = if if d96 then d215 else d652 then if d568 then d456 else true else if false then d465 else d288
        d735 : if false then if true then Bool else Bool else if false then Bool else Bool
        d735 = ( ( Bool -> Bool ) ∋ ( ( λ x736 -> ( ( Bool -> Bool ) ∋ ( ( λ x737 -> d299 ) ) ) $ ( d607 ) ) ) ) $ ( if d539 then false else false )
        d738 : ( ( Set -> Set ) ∋ ( ( λ x741 -> ( ( Set -> Set ) ∋ ( ( λ x742 -> x741 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d738 = ( ( Bool -> Bool ) ∋ ( ( λ x739 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> d55 ) ) ) $ ( d14 ) ) ) ) $ ( if d598 then false else true )
        d743 : if false then if false then Bool else Bool else if true then Bool else Bool
        d743 = if if false then d570 else true then if false then false else d204 else if d463 then false else true
        d744 : if true then if false then Bool else Bool else if true then Bool else Bool
        d744 = ( ( Bool -> Bool ) ∋ ( ( λ x745 -> ( ( Bool -> Bool ) ∋ ( ( λ x746 -> x745 ) ) ) $ ( x745 ) ) ) ) $ ( if false then d559 else d109 )
        d747 : ( ( Set -> Set ) ∋ ( ( λ x749 -> ( ( Set -> Set ) ∋ ( ( λ x750 -> x750 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d747 = ( ( Bool -> Bool ) ∋ ( ( λ x748 -> if d399 then x748 else d308 ) ) ) $ ( if d31 then false else d419 )
        d751 : ( ( Set -> Set ) ∋ ( ( λ x754 -> ( ( Set -> Set ) ∋ ( ( λ x755 -> x754 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d751 = ( ( Bool -> Bool ) ∋ ( ( λ x752 -> ( ( Bool -> Bool ) ∋ ( ( λ x753 -> d75 ) ) ) $ ( d696 ) ) ) ) $ ( if d185 then d610 else d744 )
        d756 : ( ( Set -> Set ) ∋ ( ( λ x758 -> ( ( Set -> Set ) ∋ ( ( λ x759 -> x759 ) ) ) $ ( x758 ) ) ) ) $ ( if true then Bool else Bool )
        d756 = ( ( Bool -> Bool ) ∋ ( ( λ x757 -> if true then x757 else false ) ) ) $ ( if d410 then false else false )
        d760 : ( ( Set -> Set ) ∋ ( ( λ x763 -> ( ( Set -> Set ) ∋ ( ( λ x764 -> Bool ) ) ) $ ( x763 ) ) ) ) $ ( if false then Bool else Bool )
        d760 = ( ( Bool -> Bool ) ∋ ( ( λ x761 -> ( ( Bool -> Bool ) ∋ ( ( λ x762 -> d147 ) ) ) $ ( true ) ) ) ) $ ( if d484 then true else d168 )
        d765 : if false then if false then Bool else Bool else if true then Bool else Bool
        d765 = if if true then d339 else false then if d106 then true else false else if d291 then d6 else d505
        d766 : ( ( Set -> Set ) ∋ ( ( λ x767 -> ( ( Set -> Set ) ∋ ( ( λ x768 -> x768 ) ) ) $ ( x767 ) ) ) ) $ ( if true then Bool else Bool )
        d766 = if if d718 then d364 else false then if true then d59 else false else if d93 then d446 else d458
        d769 : if false then if false then Bool else Bool else if true then Bool else Bool
        d769 = if if true then d302 else d200 then if d629 then d628 else true else if d143 then false else false
        d770 : ( ( Set -> Set ) ∋ ( ( λ x771 -> ( ( Set -> Set ) ∋ ( ( λ x772 -> Bool ) ) ) $ ( x771 ) ) ) ) $ ( if true then Bool else Bool )
        d770 = if if true then d302 else d578 then if d530 then true else d9 else if d673 then false else false
        d773 : if false then if true then Bool else Bool else if false then Bool else Bool
        d773 = ( ( Bool -> Bool ) ∋ ( ( λ x774 -> if d216 then true else x774 ) ) ) $ ( if false then false else true )
        d775 : if false then if true then Bool else Bool else if false then Bool else Bool
        d775 = ( ( Bool -> Bool ) ∋ ( ( λ x776 -> ( ( Bool -> Bool ) ∋ ( ( λ x777 -> false ) ) ) $ ( d472 ) ) ) ) $ ( if d625 then true else d756 )
        d778 : if true then if true then Bool else Bool else if false then Bool else Bool
        d778 = ( ( Bool -> Bool ) ∋ ( ( λ x779 -> if x779 then true else x779 ) ) ) $ ( if true then d269 else d93 )
        d780 : ( ( Set -> Set ) ∋ ( ( λ x781 -> ( ( Set -> Set ) ∋ ( ( λ x782 -> x782 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d780 = if if false then d236 else d155 then if d673 then d336 else d333 else if true then d374 else d453
        d783 : if true then if false then Bool else Bool else if true then Bool else Bool
        d783 = ( ( Bool -> Bool ) ∋ ( ( λ x784 -> if x784 then d701 else x784 ) ) ) $ ( if d174 then true else false )
        d785 : if false then if false then Bool else Bool else if true then Bool else Bool
        d785 = if if true then true else true then if d253 then false else d558 else if true then false else d258
        d786 : if false then if true then Bool else Bool else if false then Bool else Bool
        d786 = ( ( Bool -> Bool ) ∋ ( ( λ x787 -> ( ( Bool -> Bool ) ∋ ( ( λ x788 -> x787 ) ) ) $ ( x787 ) ) ) ) $ ( if false then true else d196 )
        d789 : if true then if false then Bool else Bool else if true then Bool else Bool
        d789 = if if d330 then false else d502 then if false then true else d770 else if false then d563 else d712
        d790 : if false then if false then Bool else Bool else if false then Bool else Bool
        d790 = if if false then d468 else d148 then if d118 then true else false else if d705 then true else d455
        d791 : ( ( Set -> Set ) ∋ ( ( λ x792 -> ( ( Set -> Set ) ∋ ( ( λ x793 -> Bool ) ) ) $ ( x792 ) ) ) ) $ ( if true then Bool else Bool )
        d791 = if if true then d559 else false then if true then true else false else if d199 then d530 else d686
        d794 : ( ( Set -> Set ) ∋ ( ( λ x795 -> ( ( Set -> Set ) ∋ ( ( λ x796 -> Bool ) ) ) $ ( x795 ) ) ) ) $ ( if false then Bool else Bool )
        d794 = if if true then true else d637 then if true then false else true else if false then d472 else d69
        d797 : if false then if true then Bool else Bool else if true then Bool else Bool
        d797 = ( ( Bool -> Bool ) ∋ ( ( λ x798 -> ( ( Bool -> Bool ) ∋ ( ( λ x799 -> x799 ) ) ) $ ( x798 ) ) ) ) $ ( if d364 then d570 else false )
        d800 : if false then if false then Bool else Bool else if false then Bool else Bool
        d800 = if if d743 then false else d299 then if d428 then d333 else false else if false then d647 else false
        d801 : ( ( Set -> Set ) ∋ ( ( λ x802 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d801 = if if d61 then d51 else false then if false then false else true else if true then d51 else true
        d803 : if true then if true then Bool else Bool else if false then Bool else Bool
        d803 = if if d394 then d364 else d696 then if false then d250 else d307 else if d131 then false else true
        d804 : if false then if false then Bool else Bool else if true then Bool else Bool
        d804 = if if d278 then d580 else d718 then if false then d55 else d539 else if true then d160 else true
        d805 : if true then if true then Bool else Bool else if false then Bool else Bool
        d805 = ( ( Bool -> Bool ) ∋ ( ( λ x806 -> ( ( Bool -> Bool ) ∋ ( ( λ x807 -> false ) ) ) $ ( x806 ) ) ) ) $ ( if true then d396 else d651 )
        d808 : ( ( Set -> Set ) ∋ ( ( λ x809 -> if true then x809 else Bool ) ) ) $ ( if false then Bool else Bool )
        d808 = if if d688 then false else true then if false then d278 else true else if d506 then d651 else d628
        d810 : if true then if true then Bool else Bool else if false then Bool else Bool
        d810 = if if d415 then d405 else d226 then if true then d39 else d168 else if false then true else false
        d811 : if true then if true then Bool else Bool else if false then Bool else Bool
        d811 = ( ( Bool -> Bool ) ∋ ( ( λ x812 -> if false then false else d124 ) ) ) $ ( if true then true else d620 )
        d813 : if true then if false then Bool else Bool else if true then Bool else Bool
        d813 = if if d36 then d669 else d566 then if false then false else false else if false then false else d567
        d814 : if false then if false then Bool else Bool else if false then Bool else Bool
        d814 = if if true then false else false then if d502 then d308 else d410 else if true then d706 else d117
        d815 : ( ( Set -> Set ) ∋ ( ( λ x816 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d815 = if if true then d607 else d253 then if d481 then true else false else if d265 then d143 else false
        d817 : if true then if false then Bool else Bool else if true then Bool else Bool
        d817 = ( ( Bool -> Bool ) ∋ ( ( λ x818 -> if false then false else true ) ) ) $ ( if true then false else true )
        d819 : ( ( Set -> Set ) ∋ ( ( λ x820 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d819 = if if d312 then true else d391 then if d59 then true else d391 else if false then d694 else d674
        d821 : ( ( Set -> Set ) ∋ ( ( λ x822 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d821 = if if true then false else false then if d415 then true else true else if d231 then true else d30
        d823 : if false then if false then Bool else Bool else if true then Bool else Bool
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x824 -> if x824 then x824 else d558 ) ) ) $ ( if d685 then d276 else true )
        d825 : if false then if false then Bool else Bool else if true then Bool else Bool
        d825 = if if true then d168 else d534 then if d601 then d810 else true else if false then d244 else d22
        d826 : ( ( Set -> Set ) ∋ ( ( λ x827 -> if true then x827 else x827 ) ) ) $ ( if true then Bool else Bool )
        d826 = if if d43 then d236 else d241 then if false then d147 else false else if false then true else true
        d828 : if false then if false then Bool else Bool else if false then Bool else Bool
        d828 = ( ( Bool -> Bool ) ∋ ( ( λ x829 -> if true then d592 else d728 ) ) ) $ ( if false then false else false )
        d830 : if false then if false then Bool else Bool else if false then Bool else Bool
        d830 = if if d391 then false else d540 then if d565 then d345 else true else if true then false else false
        d831 : ( ( Set -> Set ) ∋ ( ( λ x833 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d831 = ( ( Bool -> Bool ) ∋ ( ( λ x832 -> if false then x832 else d216 ) ) ) $ ( if d424 then true else true )
        d834 : if true then if false then Bool else Bool else if true then Bool else Bool
        d834 = ( ( Bool -> Bool ) ∋ ( ( λ x835 -> ( ( Bool -> Bool ) ∋ ( ( λ x836 -> d314 ) ) ) $ ( x835 ) ) ) ) $ ( if d299 then false else d715 )
        d837 : if true then if true then Bool else Bool else if false then Bool else Bool
        d837 = ( ( Bool -> Bool ) ∋ ( ( λ x838 -> if x838 then false else d269 ) ) ) $ ( if true then false else true )
        d839 : if true then if false then Bool else Bool else if true then Bool else Bool
        d839 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x841 -> x840 ) ) ) $ ( d174 ) ) ) ) $ ( if false then false else d705 )
        d842 : if true then if false then Bool else Bool else if true then Bool else Bool
        d842 = if if d800 then d592 else false then if false then d241 else d570 else if d78 then false else d592
        d843 : if false then if false then Bool else Bool else if true then Bool else Bool
        d843 = if if d155 then d412 else d462 then if false then d28 else d723 else if d839 then true else false
        d844 : if true then if false then Bool else Bool else if true then Bool else Bool
        d844 = if if false then d155 else true then if d819 then d151 else d765 else if true then d468 else d797
        d845 : if false then if false then Bool else Bool else if true then Bool else Bool
        d845 = ( ( Bool -> Bool ) ∋ ( ( λ x846 -> if true then false else x846 ) ) ) $ ( if d124 then d804 else d393 )
        d847 : if false then if true then Bool else Bool else if false then Bool else Bool
        d847 = if if d669 then true else false then if d448 then false else d652 else if false then d34 else false
        d848 : if false then if false then Bool else Bool else if false then Bool else Bool
        d848 = ( ( Bool -> Bool ) ∋ ( ( λ x849 -> ( ( Bool -> Bool ) ∋ ( ( λ x850 -> true ) ) ) $ ( x849 ) ) ) ) $ ( if true then false else true )
        d851 : if true then if true then Bool else Bool else if false then Bool else Bool
        d851 = ( ( Bool -> Bool ) ∋ ( ( λ x852 -> ( ( Bool -> Bool ) ∋ ( ( λ x853 -> x853 ) ) ) $ ( d808 ) ) ) ) $ ( if d292 then d185 else true )
        d854 : ( ( Set -> Set ) ∋ ( ( λ x855 -> if true then x855 else Bool ) ) ) $ ( if true then Bool else Bool )
        d854 = if if d565 then d28 else d495 then if d825 then d265 else false else if false then false else d269
        d856 : if true then if false then Bool else Bool else if true then Bool else Bool
        d856 = if if d231 then false else d785 then if d789 then false else true else if false then d592 else false
        d857 : ( ( Set -> Set ) ∋ ( ( λ x859 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d857 = ( ( Bool -> Bool ) ∋ ( ( λ x858 -> if true then d55 else false ) ) ) $ ( if false then d783 else d28 )
        d860 : ( ( Set -> Set ) ∋ ( ( λ x861 -> ( ( Set -> Set ) ∋ ( ( λ x862 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d860 = if if d488 then true else d27 then if false then false else d732 else if d440 then false else true
        d863 : ( ( Set -> Set ) ∋ ( ( λ x865 -> ( ( Set -> Set ) ∋ ( ( λ x866 -> Bool ) ) ) $ ( x865 ) ) ) ) $ ( if true then Bool else Bool )
        d863 = ( ( Bool -> Bool ) ∋ ( ( λ x864 -> if true then false else x864 ) ) ) $ ( if d370 then d69 else d805 )
        d867 : if false then if true then Bool else Bool else if true then Bool else Bool
        d867 = if if true then d637 else d559 then if true then false else d468 else if d491 then true else d204
        d868 : if true then if false then Bool else Bool else if false then Bool else Bool
        d868 = ( ( Bool -> Bool ) ∋ ( ( λ x869 -> ( ( Bool -> Bool ) ∋ ( ( λ x870 -> true ) ) ) $ ( d294 ) ) ) ) $ ( if false then d380 else false )
        d871 : if true then if true then Bool else Bool else if false then Bool else Bool
        d871 = ( ( Bool -> Bool ) ∋ ( ( λ x872 -> ( ( Bool -> Bool ) ∋ ( ( λ x873 -> true ) ) ) $ ( x872 ) ) ) ) $ ( if false then d801 else true )
        d874 : if false then if false then Bool else Bool else if false then Bool else Bool
        d874 = if if false then d117 else d120 then if false then true else false else if true then true else d601
        d875 : if true then if true then Bool else Bool else if true then Bool else Bool
        d875 = if if d101 then d391 else true then if true then true else false else if d55 then true else d516
        d876 : if true then if false then Bool else Bool else if true then Bool else Bool
        d876 = ( ( Bool -> Bool ) ∋ ( ( λ x877 -> if x877 then d304 else true ) ) ) $ ( if true then d269 else d698 )
        d878 : ( ( Set -> Set ) ∋ ( ( λ x879 -> ( ( Set -> Set ) ∋ ( ( λ x880 -> x879 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d878 = if if d160 then true else d265 then if d412 then d826 else true else if d708 then d540 else true
        d881 : if true then if false then Bool else Bool else if true then Bool else Bool
        d881 = if if true then false else true then if false then false else false else if d523 then d831 else false
        d882 : if true then if true then Bool else Bool else if true then Bool else Bool
        d882 = ( ( Bool -> Bool ) ∋ ( ( λ x883 -> if d826 then d760 else false ) ) ) $ ( if d499 then false else d91 )
        d884 : ( ( Set -> Set ) ∋ ( ( λ x886 -> if false then Bool else x886 ) ) ) $ ( if false then Bool else Bool )
        d884 = ( ( Bool -> Bool ) ∋ ( ( λ x885 -> if false then x885 else d44 ) ) ) $ ( if false then d278 else d278 )
        d887 : ( ( Set -> Set ) ∋ ( ( λ x890 -> if false then x890 else x890 ) ) ) $ ( if true then Bool else Bool )
        d887 = ( ( Bool -> Bool ) ∋ ( ( λ x888 -> ( ( Bool -> Bool ) ∋ ( ( λ x889 -> x889 ) ) ) $ ( d85 ) ) ) ) $ ( if true then false else true )
        d891 : ( ( Set -> Set ) ∋ ( ( λ x892 -> if false then Bool else x892 ) ) ) $ ( if true then Bool else Bool )
        d891 = if if true then false else d654 then if d673 then false else true else if false then d570 else false
        d893 : if true then if true then Bool else Bool else if true then Bool else Bool
        d893 = if if d598 then true else d200 then if d617 then true else false else if false then true else false
        d894 : if false then if false then Bool else Bool else if false then Bool else Bool
        d894 = ( ( Bool -> Bool ) ∋ ( ( λ x895 -> ( ( Bool -> Bool ) ∋ ( ( λ x896 -> false ) ) ) $ ( false ) ) ) ) $ ( if d509 then false else false )
        d897 : ( ( Set -> Set ) ∋ ( ( λ x898 -> if true then x898 else x898 ) ) ) $ ( if false then Bool else Bool )
        d897 = if if d242 then true else d34 then if d887 then true else false else if d14 then d185 else d834
        d899 : ( ( Set -> Set ) ∋ ( ( λ x900 -> if true then x900 else x900 ) ) ) $ ( if false then Bool else Bool )
        d899 = if if false then true else d440 then if d819 then d313 else d465 else if d503 then d894 else false
        d901 : if false then if true then Bool else Bool else if true then Bool else Bool
        d901 = if if true then d484 else false then if false then d539 else true else if d336 then d385 else false
        d902 : if true then if false then Bool else Bool else if false then Bool else Bool
        d902 = if if false then true else d367 then if false then d813 else d138 else if false then d218 else d797
        d903 : if true then if true then Bool else Bool else if false then Bool else Bool
        d903 = ( ( Bool -> Bool ) ∋ ( ( λ x904 -> ( ( Bool -> Bool ) ∋ ( ( λ x905 -> d756 ) ) ) $ ( d394 ) ) ) ) $ ( if d657 then false else true )
        d906 : if true then if true then Bool else Bool else if true then Bool else Bool
        d906 = ( ( Bool -> Bool ) ∋ ( ( λ x907 -> ( ( Bool -> Bool ) ∋ ( ( λ x908 -> true ) ) ) $ ( d871 ) ) ) ) $ ( if true then d231 else d563 )
        d909 : ( ( Set -> Set ) ∋ ( ( λ x911 -> ( ( Set -> Set ) ∋ ( ( λ x912 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d909 = ( ( Bool -> Bool ) ∋ ( ( λ x910 -> if d93 then x910 else false ) ) ) $ ( if d302 then d717 else true )
        d913 : ( ( Set -> Set ) ∋ ( ( λ x915 -> if false then x915 else Bool ) ) ) $ ( if true then Bool else Bool )
        d913 = ( ( Bool -> Bool ) ∋ ( ( λ x914 -> if d336 then true else d878 ) ) ) $ ( if true then d81 else d455 )
        d916 : ( ( Set -> Set ) ∋ ( ( λ x917 -> ( ( Set -> Set ) ∋ ( ( λ x918 -> x917 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d916 = if if false then d219 else d769 then if d258 then d718 else d688 else if d876 then d718 else d437
        d919 : ( ( Set -> Set ) ∋ ( ( λ x921 -> if true then Bool else x921 ) ) ) $ ( if false then Bool else Bool )
        d919 = ( ( Bool -> Bool ) ∋ ( ( λ x920 -> if false then false else x920 ) ) ) $ ( if d680 then true else true )
        d922 : ( ( Set -> Set ) ∋ ( ( λ x923 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d922 = if if d31 then d743 else true then if d326 then d391 else true else if true then false else d250
        d924 : ( ( Set -> Set ) ∋ ( ( λ x925 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d924 = if if false then d370 else d174 then if true then true else true else if d703 then d312 else d206
        d926 : if false then if true then Bool else Bool else if true then Bool else Bool
        d926 = if if d479 then false else d6 then if d628 then true else false else if d274 then d382 else d312
        d927 : ( ( Set -> Set ) ∋ ( ( λ x929 -> ( ( Set -> Set ) ∋ ( ( λ x930 -> x930 ) ) ) $ ( x929 ) ) ) ) $ ( if false then Bool else Bool )
        d927 = ( ( Bool -> Bool ) ∋ ( ( λ x928 -> if x928 then x928 else true ) ) ) $ ( if true then d770 else false )
        d931 : if true then if false then Bool else Bool else if true then Bool else Bool
        d931 = if if d720 then true else false then if d566 then d382 else d868 else if false then d165 else false
        d932 : ( ( Set -> Set ) ∋ ( ( λ x933 -> ( ( Set -> Set ) ∋ ( ( λ x934 -> x933 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d932 = if if true then d711 else d263 then if d231 then true else d212 else if d42 then d712 else false
        d935 : ( ( Set -> Set ) ∋ ( ( λ x938 -> if true then Bool else x938 ) ) ) $ ( if true then Bool else Bool )
        d935 = ( ( Bool -> Bool ) ∋ ( ( λ x936 -> ( ( Bool -> Bool ) ∋ ( ( λ x937 -> false ) ) ) $ ( x936 ) ) ) ) $ ( if d83 then d515 else d830 )
        d939 : if true then if true then Bool else Bool else if true then Bool else Bool
        d939 = ( ( Bool -> Bool ) ∋ ( ( λ x940 -> ( ( Bool -> Bool ) ∋ ( ( λ x941 -> d675 ) ) ) $ ( false ) ) ) ) $ ( if d269 then d236 else false )
        d942 : if true then if false then Bool else Bool else if true then Bool else Bool
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x943 -> ( ( Bool -> Bool ) ∋ ( ( λ x944 -> x944 ) ) ) $ ( d339 ) ) ) ) $ ( if false then d711 else d625 )
        d945 : if true then if true then Bool else Bool else if true then Bool else Bool
        d945 = if if true then true else d6 then if d924 then false else d715 else if d573 then d358 else true
        d946 : ( ( Set -> Set ) ∋ ( ( λ x947 -> ( ( Set -> Set ) ∋ ( ( λ x948 -> x947 ) ) ) $ ( x947 ) ) ) ) $ ( if true then Bool else Bool )
        d946 = if if true then false else d931 then if false then true else true else if d712 then d783 else d876
        d949 : ( ( Set -> Set ) ∋ ( ( λ x951 -> if false then Bool else x951 ) ) ) $ ( if true then Bool else Bool )
        d949 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if d394 then x950 else true ) ) ) $ ( if d364 then d402 else d274 )
        d952 : ( ( Set -> Set ) ∋ ( ( λ x953 -> if false then x953 else x953 ) ) ) $ ( if true then Bool else Bool )
        d952 = if if true then d367 else d185 then if d364 then false else d15 else if d17 then false else d245
        d954 : if true then if true then Bool else Bool else if true then Bool else Bool
        d954 = if if d704 then d891 else d909 then if false then d206 else d274 else if false then d256 else false
        d955 : if false then if false then Bool else Bool else if true then Bool else Bool
        d955 = ( ( Bool -> Bool ) ∋ ( ( λ x956 -> ( ( Bool -> Bool ) ∋ ( ( λ x957 -> x957 ) ) ) $ ( true ) ) ) ) $ ( if true then false else true )
        d958 : ( ( Set -> Set ) ∋ ( ( λ x961 -> if true then x961 else x961 ) ) ) $ ( if true then Bool else Bool )
        d958 = ( ( Bool -> Bool ) ∋ ( ( λ x959 -> ( ( Bool -> Bool ) ∋ ( ( λ x960 -> d200 ) ) ) $ ( x959 ) ) ) ) $ ( if d437 then false else false )
        d962 : ( ( Set -> Set ) ∋ ( ( λ x963 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d962 = if if false then true else d241 then if true then false else true else if false then d128 else false
        d964 : ( ( Set -> Set ) ∋ ( ( λ x966 -> ( ( Set -> Set ) ∋ ( ( λ x967 -> x966 ) ) ) $ ( x966 ) ) ) ) $ ( if true then Bool else Bool )
        d964 = ( ( Bool -> Bool ) ∋ ( ( λ x965 -> if d766 then x965 else d704 ) ) ) $ ( if true then d62 else true )
        d968 : ( ( Set -> Set ) ∋ ( ( λ x969 -> if false then Bool else x969 ) ) ) $ ( if false then Bool else Bool )
        d968 = if if false then d651 else true then if false then false else true else if d374 then true else true
        d970 : ( ( Set -> Set ) ∋ ( ( λ x971 -> ( ( Set -> Set ) ∋ ( ( λ x972 -> x972 ) ) ) $ ( x971 ) ) ) ) $ ( if false then Bool else Bool )
        d970 = if if false then true else d396 then if d222 then d701 else true else if d580 then d863 else false
        d973 : if false then if false then Bool else Bool else if true then Bool else Bool
        d973 = if if d91 then false else false then if d825 then d72 else true else if d706 then d238 else d698
        d974 : ( ( Set -> Set ) ∋ ( ( λ x975 -> ( ( Set -> Set ) ∋ ( ( λ x976 -> Bool ) ) ) $ ( x975 ) ) ) ) $ ( if true then Bool else Bool )
        d974 = if if d490 then d317 else false then if false then true else d642 else if d364 then d882 else false
        d977 : if false then if false then Bool else Bool else if true then Bool else Bool
        d977 = if if true then true else d456 then if false then d517 else true else if d160 then false else d34
        d978 : ( ( Set -> Set ) ∋ ( ( λ x980 -> if false then Bool else x980 ) ) ) $ ( if true then Bool else Bool )
        d978 = ( ( Bool -> Bool ) ∋ ( ( λ x979 -> if x979 then x979 else false ) ) ) $ ( if false then d54 else false )
        d981 : ( ( Set -> Set ) ∋ ( ( λ x982 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d981 = if if true then d696 else false then if d876 then true else true else if d184 then false else true
        d983 : if false then if false then Bool else Bool else if false then Bool else Bool
        d983 = ( ( Bool -> Bool ) ∋ ( ( λ x984 -> ( ( Bool -> Bool ) ∋ ( ( λ x985 -> false ) ) ) $ ( d815 ) ) ) ) $ ( if d688 then d341 else false )
        d986 : if true then if true then Bool else Bool else if true then Bool else Bool
        d986 = ( ( Bool -> Bool ) ∋ ( ( λ x987 -> ( ( Bool -> Bool ) ∋ ( ( λ x988 -> false ) ) ) $ ( d913 ) ) ) ) $ ( if false then d535 else d446 )
        d989 : ( ( Set -> Set ) ∋ ( ( λ x992 -> if false then Bool else x992 ) ) ) $ ( if true then Bool else Bool )
        d989 = ( ( Bool -> Bool ) ∋ ( ( λ x990 -> ( ( Bool -> Bool ) ∋ ( ( λ x991 -> x990 ) ) ) $ ( d810 ) ) ) ) $ ( if d558 then d385 else d330 )
        d993 : ( ( Set -> Set ) ∋ ( ( λ x996 -> if true then Bool else x996 ) ) ) $ ( if true then Bool else Bool )
        d993 = ( ( Bool -> Bool ) ∋ ( ( λ x994 -> ( ( Bool -> Bool ) ∋ ( ( λ x995 -> x995 ) ) ) $ ( false ) ) ) ) $ ( if d85 then true else true )
        d997 : if false then if false then Bool else Bool else if true then Bool else Bool
        d997 = if if true then true else false then if false then false else d410 else if d62 then d751 else d927
        d998 : ( ( Set -> Set ) ∋ ( ( λ x999 -> ( ( Set -> Set ) ∋ ( ( λ x1000 -> x1000 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d998 = if if d502 then true else false then if d876 then d566 else d415 else if d176 then d901 else d171
        d1001 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1001 = if if d210 then d946 else false then if false then d385 else d728 else if true then d708 else d578
        d1002 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1002 = ( ( Bool -> Bool ) ∋ ( ( λ x1003 -> ( ( Bool -> Bool ) ∋ ( ( λ x1004 -> d215 ) ) ) $ ( false ) ) ) ) $ ( if true then d288 else d570 )
        d1005 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1005 = if if true then true else d317 then if true then d431 else true else if true then true else true
        d1006 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1006 = ( ( Bool -> Bool ) ∋ ( ( λ x1007 -> if false then d294 else false ) ) ) $ ( if true then d909 else d388 )
        d1008 : ( ( Set -> Set ) ∋ ( ( λ x1009 -> if true then x1009 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1008 = if if false then false else false then if d54 then d894 else d594 else if false then d6 else d250
        d1010 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1010 = if if d766 then d331 else true then if true then false else d535 else if true then d828 else false
        d1011 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1011 = ( ( Bool -> Bool ) ∋ ( ( λ x1012 -> ( ( Bool -> Bool ) ∋ ( ( λ x1013 -> false ) ) ) $ ( false ) ) ) ) $ ( if false then true else d412 )
        d1014 : ( ( Set -> Set ) ∋ ( ( λ x1015 -> if true then Bool else x1015 ) ) ) $ ( if false then Bool else Bool )
        d1014 = if if d523 then true else d231 then if true then false else d712 else if d346 then d811 else d330
        d1016 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1016 = ( ( Bool -> Bool ) ∋ ( ( λ x1017 -> ( ( Bool -> Bool ) ∋ ( ( λ x1018 -> x1017 ) ) ) $ ( x1017 ) ) ) ) $ ( if true then d717 else d364 )
        d1019 : ( ( Set -> Set ) ∋ ( ( λ x1021 -> ( ( Set -> Set ) ∋ ( ( λ x1022 -> Bool ) ) ) $ ( x1021 ) ) ) ) $ ( if false then Bool else Bool )
        d1019 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> if x1020 then x1020 else x1020 ) ) ) $ ( if d848 then d926 else d120 )
        d1023 : ( ( Set -> Set ) ∋ ( ( λ x1024 -> ( ( Set -> Set ) ∋ ( ( λ x1025 -> Bool ) ) ) $ ( x1024 ) ) ) ) $ ( if true then Bool else Bool )
        d1023 = if if true then d596 else d213 then if d151 then false else true else if false then d394 else d815
        d1026 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1026 = if if false then d349 else d874 then if true then d537 else true else if d1001 then true else true
        d1027 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1027 = if if true then false else d455 then if false then d117 else false else if true then d705 else true
        d1028 : ( ( Set -> Set ) ∋ ( ( λ x1029 -> if true then x1029 else x1029 ) ) ) $ ( if true then Bool else Bool )
        d1028 = if if d970 then false else d85 then if true then false else false else if false then true else false
        d1030 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1030 = if if d617 then d78 else d839 then if d998 then true else d717 else if d884 then d924 else false
        d1031 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1031 = if if true then true else true then if d878 then d151 else false else if d404 then d666 else true
        d1032 : ( ( Set -> Set ) ∋ ( ( λ x1033 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1032 = if if d428 then false else true then if true then false else d323 else if d245 then d644 else false
        d1034 : ( ( Set -> Set ) ∋ ( ( λ x1035 -> if true then Bool else x1035 ) ) ) $ ( if false then Bool else Bool )
        d1034 = if if true then false else d935 then if d968 then true else d747 else if false then d488 else false
        d1036 : ( ( Set -> Set ) ∋ ( ( λ x1037 -> if false then Bool else x1037 ) ) ) $ ( if false then Bool else Bool )
        d1036 = if if d770 then d924 else true then if d703 then false else true else if d690 then d801 else true
        d1038 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1038 = ( ( Bool -> Bool ) ∋ ( ( λ x1039 -> ( ( Bool -> Bool ) ∋ ( ( λ x1040 -> d331 ) ) ) $ ( true ) ) ) ) $ ( if true then d566 else d977 )
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x1042 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d1041 = if if d1006 then true else d4 then if d814 then d831 else true else if false then false else true
        d1043 : ( ( Set -> Set ) ∋ ( ( λ x1045 -> if true then x1045 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1043 = ( ( Bool -> Bool ) ∋ ( ( λ x1044 -> if false then x1044 else false ) ) ) $ ( if true then d815 else d432 )
        d1046 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1046 = ( ( Bool -> Bool ) ∋ ( ( λ x1047 -> ( ( Bool -> Bool ) ∋ ( ( λ x1048 -> d97 ) ) ) $ ( d385 ) ) ) ) $ ( if true then false else false )
        d1049 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> if true then Bool else x1050 ) ) ) $ ( if true then Bool else Bool )
        d1049 = if if false then true else d336 then if true then false else false else if true then false else d308
        d1051 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1051 = if if true then d913 else false then if d811 then false else true else if d899 then d874 else false
        d1052 : ( ( Set -> Set ) ∋ ( ( λ x1054 -> ( ( Set -> Set ) ∋ ( ( λ x1055 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1052 = ( ( Bool -> Bool ) ∋ ( ( λ x1053 -> if d280 then x1053 else x1053 ) ) ) $ ( if false then true else true )
        d1056 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1056 = ( ( Bool -> Bool ) ∋ ( ( λ x1057 -> ( ( Bool -> Bool ) ∋ ( ( λ x1058 -> x1057 ) ) ) $ ( x1057 ) ) ) ) $ ( if d882 then d568 else true )
        d1059 : ( ( Set -> Set ) ∋ ( ( λ x1062 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1059 = ( ( Bool -> Bool ) ∋ ( ( λ x1060 -> ( ( Bool -> Bool ) ∋ ( ( λ x1061 -> x1061 ) ) ) $ ( d463 ) ) ) ) $ ( if d428 then d760 else d800 )
        d1063 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1063 = ( ( Bool -> Bool ) ∋ ( ( λ x1064 -> ( ( Bool -> Bool ) ∋ ( ( λ x1065 -> true ) ) ) $ ( x1064 ) ) ) ) $ ( if true then true else false )
        d1066 : ( ( Set -> Set ) ∋ ( ( λ x1067 -> ( ( Set -> Set ) ∋ ( ( λ x1068 -> x1068 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1066 = if if true then true else d978 then if d715 then true else false else if d318 then d970 else d854
        d1069 : ( ( Set -> Set ) ∋ ( ( λ x1070 -> ( ( Set -> Set ) ∋ ( ( λ x1071 -> Bool ) ) ) $ ( x1070 ) ) ) ) $ ( if true then Bool else Bool )
        d1069 = if if true then false else false then if d744 then d717 else true else if false then false else d810
        d1072 : ( ( Set -> Set ) ∋ ( ( λ x1074 -> if false then x1074 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1072 = ( ( Bool -> Bool ) ∋ ( ( λ x1073 -> if true then d294 else true ) ) ) $ ( if d594 then false else false )
        d1075 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1075 = ( ( Bool -> Bool ) ∋ ( ( λ x1076 -> if false then true else d312 ) ) ) $ ( if d887 then d775 else d1072 )
        d1077 : ( ( Set -> Set ) ∋ ( ( λ x1079 -> if true then x1079 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1077 = ( ( Bool -> Bool ) ∋ ( ( λ x1078 -> if d138 then d530 else x1078 ) ) ) $ ( if d537 then true else d932 )
        d1080 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1080 = if if true then false else d330 then if false then d336 else d814 else if d78 then true else d218