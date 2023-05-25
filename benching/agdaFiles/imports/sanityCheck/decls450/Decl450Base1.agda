module Decl450Base1  where
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
        d1 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1 = if if false then true else true then if true then true else true else if true then true else false
        d2 : ( ( Set -> Set ) ∋ ( ( λ x5 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d2 = ( ( Bool -> Bool ) ∋ ( ( λ x3 -> ( ( Bool -> Bool ) ∋ ( ( λ x4 -> false ) ) ) $ ( x3 ) ) ) ) $ ( if false then true else d1 )
        d6 : ( ( Set -> Set ) ∋ ( ( λ x8 -> ( ( Set -> Set ) ∋ ( ( λ x9 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d6 = ( ( Bool -> Bool ) ∋ ( ( λ x7 -> if x7 then true else d2 ) ) ) $ ( if d1 then d1 else d1 )
        d10 : if false then if true then Bool else Bool else if false then Bool else Bool
        d10 = ( ( Bool -> Bool ) ∋ ( ( λ x11 -> ( ( Bool -> Bool ) ∋ ( ( λ x12 -> x12 ) ) ) $ ( d1 ) ) ) ) $ ( if d1 then d1 else d6 )
        d13 : ( ( Set -> Set ) ∋ ( ( λ x14 -> ( ( Set -> Set ) ∋ ( ( λ x15 -> Bool ) ) ) $ ( x14 ) ) ) ) $ ( if true then Bool else Bool )
        d13 = if if d10 then true else d1 then if d6 then d1 else true else if d10 then false else d2
        d16 : if false then if true then Bool else Bool else if false then Bool else Bool
        d16 = if if d6 then d6 else d1 then if d13 then d6 else d6 else if false then false else d2
        d17 : ( ( Set -> Set ) ∋ ( ( λ x18 -> ( ( Set -> Set ) ∋ ( ( λ x19 -> x19 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d17 = if if true then d1 else d16 then if true then false else true else if true then true else d13
        d20 : if true then if false then Bool else Bool else if false then Bool else Bool
        d20 = ( ( Bool -> Bool ) ∋ ( ( λ x21 -> ( ( Bool -> Bool ) ∋ ( ( λ x22 -> x21 ) ) ) $ ( x21 ) ) ) ) $ ( if d6 then true else d17 )
        d23 : if false then if false then Bool else Bool else if false then Bool else Bool
        d23 = if if false then true else false then if true then d6 else true else if d6 then d10 else true
        d24 : ( ( Set -> Set ) ∋ ( ( λ x25 -> ( ( Set -> Set ) ∋ ( ( λ x26 -> x26 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d24 = if if d13 then d1 else false then if d16 then true else false else if d10 then false else false
        d27 : ( ( Set -> Set ) ∋ ( ( λ x30 -> ( ( Set -> Set ) ∋ ( ( λ x31 -> x31 ) ) ) $ ( x30 ) ) ) ) $ ( if false then Bool else Bool )
        d27 = ( ( Bool -> Bool ) ∋ ( ( λ x28 -> ( ( Bool -> Bool ) ∋ ( ( λ x29 -> d1 ) ) ) $ ( d10 ) ) ) ) $ ( if d13 then true else true )
        d32 : ( ( Set -> Set ) ∋ ( ( λ x33 -> if false then Bool else x33 ) ) ) $ ( if false then Bool else Bool )
        d32 = if if d10 then d16 else false then if true then true else d24 else if true then true else d6
        d34 : if false then if true then Bool else Bool else if false then Bool else Bool
        d34 = ( ( Bool -> Bool ) ∋ ( ( λ x35 -> if false then d23 else x35 ) ) ) $ ( if d10 then d10 else d6 )
        d36 : ( ( Set -> Set ) ∋ ( ( λ x37 -> ( ( Set -> Set ) ∋ ( ( λ x38 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d36 = if if false then d16 else false then if false then true else d27 else if d23 then d34 else d1
        d39 : ( ( Set -> Set ) ∋ ( ( λ x40 -> if false then x40 else Bool ) ) ) $ ( if false then Bool else Bool )
        d39 = if if false then d34 else d16 then if false then d6 else d24 else if true then false else d13
        d41 : ( ( Set -> Set ) ∋ ( ( λ x43 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d41 = ( ( Bool -> Bool ) ∋ ( ( λ x42 -> if false then d2 else d36 ) ) ) $ ( if d1 then true else d32 )
        d44 : if true then if false then Bool else Bool else if false then Bool else Bool
        d44 = if if d6 then false else false then if d41 then true else false else if false then true else d23
        d45 : ( ( Set -> Set ) ∋ ( ( λ x46 -> ( ( Set -> Set ) ∋ ( ( λ x47 -> x47 ) ) ) $ ( x46 ) ) ) ) $ ( if true then Bool else Bool )
        d45 = if if false then false else d39 then if d24 then d36 else true else if d44 then d23 else true
        d48 : if true then if true then Bool else Bool else if true then Bool else Bool
        d48 = if if false then d39 else true then if d17 then false else false else if true then false else false
        d49 : ( ( Set -> Set ) ∋ ( ( λ x50 -> ( ( Set -> Set ) ∋ ( ( λ x51 -> x51 ) ) ) $ ( x50 ) ) ) ) $ ( if false then Bool else Bool )
        d49 = if if d41 then false else d32 then if false then true else false else if d2 then true else d39
        d52 : if false then if true then Bool else Bool else if false then Bool else Bool
        d52 = ( ( Bool -> Bool ) ∋ ( ( λ x53 -> ( ( Bool -> Bool ) ∋ ( ( λ x54 -> x54 ) ) ) $ ( d1 ) ) ) ) $ ( if d17 then false else d17 )
        d55 : if false then if true then Bool else Bool else if false then Bool else Bool
        d55 = ( ( Bool -> Bool ) ∋ ( ( λ x56 -> ( ( Bool -> Bool ) ∋ ( ( λ x57 -> x56 ) ) ) $ ( x56 ) ) ) ) $ ( if false then d10 else d6 )
        d58 : if true then if false then Bool else Bool else if true then Bool else Bool
        d58 = ( ( Bool -> Bool ) ∋ ( ( λ x59 -> if x59 then false else d13 ) ) ) $ ( if d1 then d44 else false )
        d60 : ( ( Set -> Set ) ∋ ( ( λ x61 -> if true then x61 else Bool ) ) ) $ ( if true then Bool else Bool )
        d60 = if if d41 then d52 else true then if d2 then false else d36 else if d44 then d13 else d16
        d62 : ( ( Set -> Set ) ∋ ( ( λ x64 -> if false then x64 else Bool ) ) ) $ ( if true then Bool else Bool )
        d62 = ( ( Bool -> Bool ) ∋ ( ( λ x63 -> if true then false else true ) ) ) $ ( if d32 then d41 else true )
        d65 : ( ( Set -> Set ) ∋ ( ( λ x67 -> if true then Bool else x67 ) ) ) $ ( if true then Bool else Bool )
        d65 = ( ( Bool -> Bool ) ∋ ( ( λ x66 -> if x66 then x66 else d62 ) ) ) $ ( if d49 then d6 else false )
        d68 : if true then if false then Bool else Bool else if true then Bool else Bool
        d68 = ( ( Bool -> Bool ) ∋ ( ( λ x69 -> ( ( Bool -> Bool ) ∋ ( ( λ x70 -> d13 ) ) ) $ ( true ) ) ) ) $ ( if d65 then false else false )
        d71 : ( ( Set -> Set ) ∋ ( ( λ x73 -> if false then Bool else x73 ) ) ) $ ( if false then Bool else Bool )
        d71 = ( ( Bool -> Bool ) ∋ ( ( λ x72 -> if x72 then true else d27 ) ) ) $ ( if d58 then d52 else d16 )
        d74 : if false then if false then Bool else Bool else if false then Bool else Bool
        d74 = ( ( Bool -> Bool ) ∋ ( ( λ x75 -> ( ( Bool -> Bool ) ∋ ( ( λ x76 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d55 else d41 )
        d77 : if false then if false then Bool else Bool else if true then Bool else Bool
        d77 = ( ( Bool -> Bool ) ∋ ( ( λ x78 -> ( ( Bool -> Bool ) ∋ ( ( λ x79 -> d1 ) ) ) $ ( x78 ) ) ) ) $ ( if true then false else true )
        d80 : ( ( Set -> Set ) ∋ ( ( λ x81 -> if false then Bool else x81 ) ) ) $ ( if true then Bool else Bool )
        d80 = if if d68 then false else true then if d27 then d60 else false else if d77 then false else true
        d82 : if true then if true then Bool else Bool else if true then Bool else Bool
        d82 = if if false then true else d45 then if d10 then true else false else if false then d6 else false
        d83 : ( ( Set -> Set ) ∋ ( ( λ x84 -> ( ( Set -> Set ) ∋ ( ( λ x85 -> Bool ) ) ) $ ( x84 ) ) ) ) $ ( if false then Bool else Bool )
        d83 = if if false then d39 else false then if true then d49 else d77 else if d17 then true else d20
        d86 : ( ( Set -> Set ) ∋ ( ( λ x87 -> if true then Bool else x87 ) ) ) $ ( if false then Bool else Bool )
        d86 = if if d41 then false else d68 then if true then d83 else d2 else if d23 then d68 else true
        d88 : if false then if false then Bool else Bool else if true then Bool else Bool
        d88 = if if d65 then false else d68 then if d1 then d34 else d74 else if d60 then d32 else d6
        d89 : ( ( Set -> Set ) ∋ ( ( λ x91 -> ( ( Set -> Set ) ∋ ( ( λ x92 -> Bool ) ) ) $ ( x91 ) ) ) ) $ ( if true then Bool else Bool )
        d89 = ( ( Bool -> Bool ) ∋ ( ( λ x90 -> if d82 then true else false ) ) ) $ ( if d24 then false else d13 )
        d93 : if true then if false then Bool else Bool else if true then Bool else Bool
        d93 = if if false then true else d55 then if d52 then d1 else true else if true then d27 else d60
        d94 : if true then if false then Bool else Bool else if true then Bool else Bool
        d94 = ( ( Bool -> Bool ) ∋ ( ( λ x95 -> if x95 then false else false ) ) ) $ ( if false then false else false )
        d96 : ( ( Set -> Set ) ∋ ( ( λ x97 -> ( ( Set -> Set ) ∋ ( ( λ x98 -> Bool ) ) ) $ ( x97 ) ) ) ) $ ( if true then Bool else Bool )
        d96 = if if false then false else d41 then if d49 then d74 else true else if true then false else d77
        d99 : ( ( Set -> Set ) ∋ ( ( λ x102 -> ( ( Set -> Set ) ∋ ( ( λ x103 -> x102 ) ) ) $ ( x102 ) ) ) ) $ ( if true then Bool else Bool )
        d99 = ( ( Bool -> Bool ) ∋ ( ( λ x100 -> ( ( Bool -> Bool ) ∋ ( ( λ x101 -> d16 ) ) ) $ ( x100 ) ) ) ) $ ( if d93 then true else true )
        d104 : ( ( Set -> Set ) ∋ ( ( λ x105 -> ( ( Set -> Set ) ∋ ( ( λ x106 -> x106 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d104 = if if d24 then false else true then if false then d32 else true else if false then d62 else d93
        d107 : if true then if true then Bool else Bool else if false then Bool else Bool
        d107 = if if false then d62 else true then if true then d13 else true else if d13 then true else d82
        d108 : if true then if true then Bool else Bool else if true then Bool else Bool
        d108 = ( ( Bool -> Bool ) ∋ ( ( λ x109 -> if true then x109 else x109 ) ) ) $ ( if d10 then true else true )
        d110 : if true then if true then Bool else Bool else if false then Bool else Bool
        d110 = if if d2 then d89 else true then if d48 then true else d108 else if false then d32 else d80
        d111 : if true then if false then Bool else Bool else if true then Bool else Bool
        d111 = ( ( Bool -> Bool ) ∋ ( ( λ x112 -> if true then true else false ) ) ) $ ( if false then d99 else false )
        d113 : if false then if false then Bool else Bool else if false then Bool else Bool
        d113 = ( ( Bool -> Bool ) ∋ ( ( λ x114 -> ( ( Bool -> Bool ) ∋ ( ( λ x115 -> d45 ) ) ) $ ( x114 ) ) ) ) $ ( if false then true else d88 )
        d116 : if true then if false then Bool else Bool else if false then Bool else Bool
        d116 = if if false then true else d27 then if d41 then d6 else d99 else if d39 then d2 else d108
        d117 : if false then if false then Bool else Bool else if false then Bool else Bool
        d117 = ( ( Bool -> Bool ) ∋ ( ( λ x118 -> ( ( Bool -> Bool ) ∋ ( ( λ x119 -> x118 ) ) ) $ ( x118 ) ) ) ) $ ( if d65 then true else true )
        d120 : if true then if true then Bool else Bool else if false then Bool else Bool
        d120 = if if d94 then d23 else d23 then if true then false else d32 else if d34 then d1 else d32
        d121 : ( ( Set -> Set ) ∋ ( ( λ x122 -> ( ( Set -> Set ) ∋ ( ( λ x123 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d121 = if if false then false else true then if d107 then true else d120 else if true then d6 else true
        d124 : if false then if false then Bool else Bool else if true then Bool else Bool
        d124 = if if d23 then d23 else d34 then if d77 then d36 else false else if true then false else true
        d125 : ( ( Set -> Set ) ∋ ( ( λ x127 -> ( ( Set -> Set ) ∋ ( ( λ x128 -> Bool ) ) ) $ ( x127 ) ) ) ) $ ( if false then Bool else Bool )
        d125 = ( ( Bool -> Bool ) ∋ ( ( λ x126 -> if x126 then true else d27 ) ) ) $ ( if true then d32 else true )
        d129 : if false then if true then Bool else Bool else if false then Bool else Bool
        d129 = if if d13 then d116 else d82 then if d10 then d16 else true else if d111 then true else true
        d130 : if true then if true then Bool else Bool else if true then Bool else Bool
        d130 = if if false then d65 else false then if false then false else true else if true then false else d129
        d131 : if false then if false then Bool else Bool else if false then Bool else Bool
        d131 = if if false then d104 else d93 then if false then false else d13 else if d74 then true else false
        d132 : if true then if true then Bool else Bool else if false then Bool else Bool
        d132 = if if false then d96 else d39 then if d34 then d36 else d77 else if d44 then false else d34
        d133 : ( ( Set -> Set ) ∋ ( ( λ x135 -> if false then x135 else Bool ) ) ) $ ( if true then Bool else Bool )
        d133 = ( ( Bool -> Bool ) ∋ ( ( λ x134 -> if d52 then false else d121 ) ) ) $ ( if false then true else false )
        d136 : ( ( Set -> Set ) ∋ ( ( λ x138 -> ( ( Set -> Set ) ∋ ( ( λ x139 -> x138 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d136 = ( ( Bool -> Bool ) ∋ ( ( λ x137 -> if false then d113 else d121 ) ) ) $ ( if true then d32 else d93 )
        d140 : if false then if true then Bool else Bool else if false then Bool else Bool
        d140 = if if true then d16 else d32 then if d86 then false else d27 else if true then d32 else d82
        d141 : ( ( Set -> Set ) ∋ ( ( λ x144 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d141 = ( ( Bool -> Bool ) ∋ ( ( λ x142 -> ( ( Bool -> Bool ) ∋ ( ( λ x143 -> x142 ) ) ) $ ( false ) ) ) ) $ ( if false then d99 else d88 )
        d145 : ( ( Set -> Set ) ∋ ( ( λ x146 -> if false then Bool else x146 ) ) ) $ ( if false then Bool else Bool )
        d145 = if if d1 then true else d129 then if d77 then d107 else d48 else if d82 then true else d116
        d147 : if true then if true then Bool else Bool else if true then Bool else Bool
        d147 = if if d116 then d111 else d34 then if true then true else d132 else if false then d80 else true
        d148 : ( ( Set -> Set ) ∋ ( ( λ x150 -> if true then x150 else x150 ) ) ) $ ( if false then Bool else Bool )
        d148 = ( ( Bool -> Bool ) ∋ ( ( λ x149 -> if d62 then d44 else x149 ) ) ) $ ( if true then false else d86 )
        d151 : if false then if false then Bool else Bool else if false then Bool else Bool
        d151 = ( ( Bool -> Bool ) ∋ ( ( λ x152 -> ( ( Bool -> Bool ) ∋ ( ( λ x153 -> x152 ) ) ) $ ( x152 ) ) ) ) $ ( if d83 then d120 else false )
        d154 : if true then if true then Bool else Bool else if true then Bool else Bool
        d154 = ( ( Bool -> Bool ) ∋ ( ( λ x155 -> if false then x155 else d148 ) ) ) $ ( if d34 then d129 else d45 )
        d156 : ( ( Set -> Set ) ∋ ( ( λ x158 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d156 = ( ( Bool -> Bool ) ∋ ( ( λ x157 -> if true then x157 else x157 ) ) ) $ ( if d68 then d24 else true )
        d159 : ( ( Set -> Set ) ∋ ( ( λ x161 -> if false then x161 else x161 ) ) ) $ ( if false then Bool else Bool )
        d159 = ( ( Bool -> Bool ) ∋ ( ( λ x160 -> if false then x160 else d41 ) ) ) $ ( if true then d41 else false )
        d162 : if false then if true then Bool else Bool else if true then Bool else Bool
        d162 = if if d49 then false else false then if false then d52 else false else if d151 then d147 else d65
        d163 : ( ( Set -> Set ) ∋ ( ( λ x165 -> ( ( Set -> Set ) ∋ ( ( λ x166 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d163 = ( ( Bool -> Bool ) ∋ ( ( λ x164 -> if d1 then x164 else x164 ) ) ) $ ( if d2 then false else false )
        d167 : if true then if false then Bool else Bool else if true then Bool else Bool
        d167 = if if d148 then d45 else d2 then if true then d77 else d140 else if false then d121 else true
        d168 : if true then if false then Bool else Bool else if true then Bool else Bool
        d168 = if if true then d68 else false then if true then true else true else if false then false else false
        d169 : ( ( Set -> Set ) ∋ ( ( λ x170 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d169 = if if false then d2 else false then if d49 then true else d39 else if d1 then d41 else d60
        d171 : if true then if true then Bool else Bool else if false then Bool else Bool
        d171 = if if d125 then false else true then if d65 then false else d74 else if true then true else d13
        d172 : ( ( Set -> Set ) ∋ ( ( λ x175 -> if true then x175 else Bool ) ) ) $ ( if false then Bool else Bool )
        d172 = ( ( Bool -> Bool ) ∋ ( ( λ x173 -> ( ( Bool -> Bool ) ∋ ( ( λ x174 -> x173 ) ) ) $ ( false ) ) ) ) $ ( if d6 then false else true )
        d176 : ( ( Set -> Set ) ∋ ( ( λ x179 -> if true then x179 else Bool ) ) ) $ ( if false then Bool else Bool )
        d176 = ( ( Bool -> Bool ) ∋ ( ( λ x177 -> ( ( Bool -> Bool ) ∋ ( ( λ x178 -> d27 ) ) ) $ ( d116 ) ) ) ) $ ( if d168 then true else true )
        d180 : if false then if false then Bool else Bool else if false then Bool else Bool
        d180 = if if false then true else true then if d172 then false else true else if true then true else d55
        d181 : if true then if true then Bool else Bool else if true then Bool else Bool
        d181 = if if d159 then d16 else true then if false then d130 else true else if false then d162 else false
        d182 : ( ( Set -> Set ) ∋ ( ( λ x184 -> ( ( Set -> Set ) ∋ ( ( λ x185 -> x185 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d182 = ( ( Bool -> Bool ) ∋ ( ( λ x183 -> if x183 then d136 else d16 ) ) ) $ ( if d17 then false else d17 )
        d186 : ( ( Set -> Set ) ∋ ( ( λ x189 -> ( ( Set -> Set ) ∋ ( ( λ x190 -> x189 ) ) ) $ ( x189 ) ) ) ) $ ( if false then Bool else Bool )
        d186 = ( ( Bool -> Bool ) ∋ ( ( λ x187 -> ( ( Bool -> Bool ) ∋ ( ( λ x188 -> d88 ) ) ) $ ( false ) ) ) ) $ ( if true then d120 else d23 )
        d191 : if true then if false then Bool else Bool else if false then Bool else Bool
        d191 = ( ( Bool -> Bool ) ∋ ( ( λ x192 -> ( ( Bool -> Bool ) ∋ ( ( λ x193 -> d176 ) ) ) $ ( d156 ) ) ) ) $ ( if true then false else d148 )
        d194 : ( ( Set -> Set ) ∋ ( ( λ x195 -> ( ( Set -> Set ) ∋ ( ( λ x196 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d194 = if if false then false else false then if true then d36 else false else if false then d10 else d89
        d197 : if false then if true then Bool else Bool else if false then Bool else Bool
        d197 = ( ( Bool -> Bool ) ∋ ( ( λ x198 -> ( ( Bool -> Bool ) ∋ ( ( λ x199 -> true ) ) ) $ ( x198 ) ) ) ) $ ( if d172 then d120 else false )
        d200 : if false then if true then Bool else Bool else if true then Bool else Bool
        d200 = if if false then d169 else false then if d140 then d32 else false else if true then d2 else d99
        d201 : ( ( Set -> Set ) ∋ ( ( λ x202 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d201 = if if false then true else false then if false then d52 else false else if d148 then false else d131
        d203 : ( ( Set -> Set ) ∋ ( ( λ x206 -> if true then Bool else x206 ) ) ) $ ( if true then Bool else Bool )
        d203 = ( ( Bool -> Bool ) ∋ ( ( λ x204 -> ( ( Bool -> Bool ) ∋ ( ( λ x205 -> x205 ) ) ) $ ( d82 ) ) ) ) $ ( if d191 then false else d32 )
        d207 : ( ( Set -> Set ) ∋ ( ( λ x209 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d207 = ( ( Bool -> Bool ) ∋ ( ( λ x208 -> if x208 then x208 else x208 ) ) ) $ ( if d99 then d145 else false )
        d210 : if false then if true then Bool else Bool else if false then Bool else Bool
        d210 = if if false then d83 else false then if d6 then false else d182 else if false then d88 else true
        d211 : if false then if false then Bool else Bool else if false then Bool else Bool
        d211 = if if d107 then d41 else d108 then if d171 then false else false else if d16 then false else d168
        d212 : if false then if true then Bool else Bool else if true then Bool else Bool
        d212 = if if true then false else true then if d1 then true else d27 else if false then d39 else false
        d213 : ( ( Set -> Set ) ∋ ( ( λ x214 -> if false then Bool else x214 ) ) ) $ ( if true then Bool else Bool )
        d213 = if if d130 then false else true then if true then d154 else true else if true then true else false
        d215 : if true then if true then Bool else Bool else if false then Bool else Bool
        d215 = ( ( Bool -> Bool ) ∋ ( ( λ x216 -> if true then d108 else x216 ) ) ) $ ( if true then d200 else true )
        d217 : ( ( Set -> Set ) ∋ ( ( λ x219 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d217 = ( ( Bool -> Bool ) ∋ ( ( λ x218 -> if x218 then x218 else d49 ) ) ) $ ( if d58 then false else d16 )
        d220 : ( ( Set -> Set ) ∋ ( ( λ x221 -> ( ( Set -> Set ) ∋ ( ( λ x222 -> x221 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d220 = if if d168 then true else d36 then if false then false else true else if true then false else true
        d223 : ( ( Set -> Set ) ∋ ( ( λ x226 -> ( ( Set -> Set ) ∋ ( ( λ x227 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d223 = ( ( Bool -> Bool ) ∋ ( ( λ x224 -> ( ( Bool -> Bool ) ∋ ( ( λ x225 -> false ) ) ) $ ( d213 ) ) ) ) $ ( if true then d215 else true )
        d228 : if false then if false then Bool else Bool else if false then Bool else Bool
        d228 = ( ( Bool -> Bool ) ∋ ( ( λ x229 -> if false then false else x229 ) ) ) $ ( if d201 then true else d58 )
        d230 : if false then if false then Bool else Bool else if false then Bool else Bool
        d230 = ( ( Bool -> Bool ) ∋ ( ( λ x231 -> if d172 then d154 else d124 ) ) ) $ ( if d60 then d228 else false )
        d232 : if true then if false then Bool else Bool else if true then Bool else Bool
        d232 = ( ( Bool -> Bool ) ∋ ( ( λ x233 -> if false then x233 else true ) ) ) $ ( if false then true else d181 )
        d234 : if false then if true then Bool else Bool else if true then Bool else Bool
        d234 = if if true then d94 else true then if d88 then d197 else d55 else if true then false else true
        d235 : ( ( Set -> Set ) ∋ ( ( λ x236 -> ( ( Set -> Set ) ∋ ( ( λ x237 -> x236 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d235 = if if d94 then d55 else d34 then if true then true else d34 else if d111 then true else d228
        d238 : if true then if false then Bool else Bool else if true then Bool else Bool
        d238 = ( ( Bool -> Bool ) ∋ ( ( λ x239 -> if d52 then true else true ) ) ) $ ( if d210 then d230 else d125 )
        d240 : ( ( Set -> Set ) ∋ ( ( λ x241 -> if false then x241 else x241 ) ) ) $ ( if true then Bool else Bool )
        d240 = if if true then d41 else true then if false then true else true else if true then true else true
        d242 : if true then if true then Bool else Bool else if false then Bool else Bool
        d242 = ( ( Bool -> Bool ) ∋ ( ( λ x243 -> if d34 then false else d124 ) ) ) $ ( if d48 then d130 else true )
        d244 : ( ( Set -> Set ) ∋ ( ( λ x245 -> ( ( Set -> Set ) ∋ ( ( λ x246 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d244 = if if false then true else true then if true then false else true else if d113 then d167 else d232
        d247 : if false then if true then Bool else Bool else if false then Bool else Bool
        d247 = ( ( Bool -> Bool ) ∋ ( ( λ x248 -> if d71 then false else d212 ) ) ) $ ( if false then d104 else true )
        d249 : ( ( Set -> Set ) ∋ ( ( λ x250 -> ( ( Set -> Set ) ∋ ( ( λ x251 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d249 = if if false then d244 else d62 then if true then false else d6 else if d96 then d82 else d148
        d252 : if false then if true then Bool else Bool else if true then Bool else Bool
        d252 = ( ( Bool -> Bool ) ∋ ( ( λ x253 -> ( ( Bool -> Bool ) ∋ ( ( λ x254 -> x253 ) ) ) $ ( d228 ) ) ) ) $ ( if d194 then true else d77 )
        d255 : ( ( Set -> Set ) ∋ ( ( λ x257 -> ( ( Set -> Set ) ∋ ( ( λ x258 -> Bool ) ) ) $ ( x257 ) ) ) ) $ ( if true then Bool else Bool )
        d255 = ( ( Bool -> Bool ) ∋ ( ( λ x256 -> if d154 then x256 else false ) ) ) $ ( if d32 then d120 else d117 )
        d259 : if false then if true then Bool else Bool else if true then Bool else Bool
        d259 = if if false then d62 else false then if false then false else false else if d2 then false else true
        d260 : ( ( Set -> Set ) ∋ ( ( λ x262 -> if true then x262 else x262 ) ) ) $ ( if true then Bool else Bool )
        d260 = ( ( Bool -> Bool ) ∋ ( ( λ x261 -> if true then true else x261 ) ) ) $ ( if d191 then true else d104 )
        d263 : if true then if true then Bool else Bool else if false then Bool else Bool
        d263 = if if d60 then false else d24 then if d80 then false else d156 else if d228 then d113 else false
        d264 : if true then if false then Bool else Bool else if false then Bool else Bool
        d264 = if if d94 then d151 else true then if false then d163 else false else if true then true else false
        d265 : if true then if true then Bool else Bool else if true then Bool else Bool
        d265 = ( ( Bool -> Bool ) ∋ ( ( λ x266 -> if d111 then d244 else x266 ) ) ) $ ( if true then true else true )
        d267 : if true then if false then Bool else Bool else if true then Bool else Bool
        d267 = if if true then true else d211 then if d45 then d65 else true else if false then d181 else d52
        d268 : ( ( Set -> Set ) ∋ ( ( λ x269 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d268 = if if true then d140 else true then if d27 then true else true else if d140 then true else true
        d270 : ( ( Set -> Set ) ∋ ( ( λ x272 -> if true then x272 else Bool ) ) ) $ ( if true then Bool else Bool )
        d270 = ( ( Bool -> Bool ) ∋ ( ( λ x271 -> if d186 then d117 else d162 ) ) ) $ ( if true then true else true )
        d273 : if false then if true then Bool else Bool else if true then Bool else Bool
        d273 = ( ( Bool -> Bool ) ∋ ( ( λ x274 -> if x274 then d156 else x274 ) ) ) $ ( if d260 then d220 else d10 )
        d275 : if false then if false then Bool else Bool else if false then Bool else Bool
        d275 = ( ( Bool -> Bool ) ∋ ( ( λ x276 -> if d260 then x276 else true ) ) ) $ ( if true then d125 else d182 )
        d277 : ( ( Set -> Set ) ∋ ( ( λ x278 -> ( ( Set -> Set ) ∋ ( ( λ x279 -> x278 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d277 = if if d191 then d267 else false then if false then d120 else d268 else if false then d129 else false
        d280 : if true then if true then Bool else Bool else if false then Bool else Bool
        d280 = ( ( Bool -> Bool ) ∋ ( ( λ x281 -> ( ( Bool -> Bool ) ∋ ( ( λ x282 -> true ) ) ) $ ( false ) ) ) ) $ ( if true then true else false )
        d283 : ( ( Set -> Set ) ∋ ( ( λ x284 -> if true then x284 else x284 ) ) ) $ ( if false then Bool else Bool )
        d283 = if if d10 then true else d121 then if d110 then false else false else if d113 then d220 else d145
        d285 : if false then if true then Bool else Bool else if false then Bool else Bool
        d285 = ( ( Bool -> Bool ) ∋ ( ( λ x286 -> if x286 then true else x286 ) ) ) $ ( if d172 then d255 else true )
        d287 : if false then if true then Bool else Bool else if false then Bool else Bool
        d287 = if if true then d121 else false then if false then true else d125 else if true then d120 else d83
        d288 : if true then if true then Bool else Bool else if true then Bool else Bool
        d288 = if if d259 then true else false then if d234 then false else true else if d120 then true else d58
        d289 : if false then if false then Bool else Bool else if false then Bool else Bool
        d289 = ( ( Bool -> Bool ) ∋ ( ( λ x290 -> ( ( Bool -> Bool ) ∋ ( ( λ x291 -> d151 ) ) ) $ ( false ) ) ) ) $ ( if d275 then d36 else d111 )
        d292 : ( ( Set -> Set ) ∋ ( ( λ x294 -> ( ( Set -> Set ) ∋ ( ( λ x295 -> Bool ) ) ) $ ( x294 ) ) ) ) $ ( if true then Bool else Bool )
        d292 = ( ( Bool -> Bool ) ∋ ( ( λ x293 -> if false then x293 else d264 ) ) ) $ ( if false then d132 else false )
        d296 : ( ( Set -> Set ) ∋ ( ( λ x298 -> ( ( Set -> Set ) ∋ ( ( λ x299 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d296 = ( ( Bool -> Bool ) ∋ ( ( λ x297 -> if false then x297 else true ) ) ) $ ( if d129 then false else true )
        d300 : ( ( Set -> Set ) ∋ ( ( λ x301 -> if true then Bool else x301 ) ) ) $ ( if true then Bool else Bool )
        d300 = if if true then d169 else false then if true then d131 else d220 else if false then true else d201
        d302 : ( ( Set -> Set ) ∋ ( ( λ x303 -> ( ( Set -> Set ) ∋ ( ( λ x304 -> Bool ) ) ) $ ( x303 ) ) ) ) $ ( if false then Bool else Bool )
        d302 = if if d129 then d265 else false then if false then true else true else if false then d120 else d182
        d305 : if false then if true then Bool else Bool else if true then Bool else Bool
        d305 = if if false then true else false then if d280 then d117 else false else if d232 then false else d52
        d306 : ( ( Set -> Set ) ∋ ( ( λ x309 -> ( ( Set -> Set ) ∋ ( ( λ x310 -> x310 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d306 = ( ( Bool -> Bool ) ∋ ( ( λ x307 -> ( ( Bool -> Bool ) ∋ ( ( λ x308 -> d86 ) ) ) $ ( x307 ) ) ) ) $ ( if false then d94 else d2 )
        d311 : ( ( Set -> Set ) ∋ ( ( λ x312 -> if false then x312 else Bool ) ) ) $ ( if true then Bool else Bool )
        d311 = if if d167 then false else true then if d13 then true else d171 else if true then d249 else d305
        d313 : if false then if true then Bool else Bool else if false then Bool else Bool
        d313 = if if true then true else false then if d247 then d96 else false else if d180 then d289 else true
        d314 : ( ( Set -> Set ) ∋ ( ( λ x315 -> ( ( Set -> Set ) ∋ ( ( λ x316 -> x315 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d314 = if if d244 then true else d96 then if d44 then false else d58 else if false then d265 else false
        d317 : if true then if true then Bool else Bool else if false then Bool else Bool
        d317 = ( ( Bool -> Bool ) ∋ ( ( λ x318 -> ( ( Bool -> Bool ) ∋ ( ( λ x319 -> x318 ) ) ) $ ( d68 ) ) ) ) $ ( if true then d194 else false )
        d320 : if false then if true then Bool else Bool else if true then Bool else Bool
        d320 = ( ( Bool -> Bool ) ∋ ( ( λ x321 -> ( ( Bool -> Bool ) ∋ ( ( λ x322 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else d130 )
        d323 : if true then if true then Bool else Bool else if true then Bool else Bool
        d323 = if if true then false else false then if d94 then d186 else true else if false then false else false
        d324 : ( ( Set -> Set ) ∋ ( ( λ x325 -> if true then x325 else x325 ) ) ) $ ( if false then Bool else Bool )
        d324 = if if false then false else true then if d116 then false else true else if true then false else true
        d326 : ( ( Set -> Set ) ∋ ( ( λ x328 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d326 = ( ( Bool -> Bool ) ∋ ( ( λ x327 -> if d96 then x327 else d200 ) ) ) $ ( if true then true else false )
        d329 : if false then if true then Bool else Bool else if false then Bool else Bool
        d329 = if if d147 then d82 else d89 then if d167 then d203 else d6 else if d223 then d201 else d55
        d330 : ( ( Set -> Set ) ∋ ( ( λ x331 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d330 = if if true then d220 else d82 then if false then false else false else if d159 then true else d323
        d332 : ( ( Set -> Set ) ∋ ( ( λ x335 -> if true then x335 else x335 ) ) ) $ ( if false then Bool else Bool )
        d332 = ( ( Bool -> Bool ) ∋ ( ( λ x333 -> ( ( Bool -> Bool ) ∋ ( ( λ x334 -> d167 ) ) ) $ ( true ) ) ) ) $ ( if false then d23 else d120 )
        d336 : ( ( Set -> Set ) ∋ ( ( λ x337 -> ( ( Set -> Set ) ∋ ( ( λ x338 -> x337 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d336 = if if d232 then d168 else false then if d238 then d23 else d285 else if true then d234 else d121
        d339 : ( ( Set -> Set ) ∋ ( ( λ x340 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d339 = if if true then d154 else true then if false then true else d89 else if true then true else false
        d341 : if true then if true then Bool else Bool else if true then Bool else Bool
        d341 = ( ( Bool -> Bool ) ∋ ( ( λ x342 -> ( ( Bool -> Bool ) ∋ ( ( λ x343 -> d167 ) ) ) $ ( false ) ) ) ) $ ( if d89 then d169 else d223 )
        d344 : if true then if true then Bool else Bool else if true then Bool else Bool
        d344 = if if true then d10 else false then if d99 then d191 else false else if false then d275 else false
        d345 : if false then if false then Bool else Bool else if true then Bool else Bool
        d345 = ( ( Bool -> Bool ) ∋ ( ( λ x346 -> ( ( Bool -> Bool ) ∋ ( ( λ x347 -> d156 ) ) ) $ ( false ) ) ) ) $ ( if d176 then d220 else d140 )
        d348 : if true then if true then Bool else Bool else if false then Bool else Bool
        d348 = if if true then true else true then if d336 then false else true else if true then true else false
        d349 : if false then if false then Bool else Bool else if true then Bool else Bool
        d349 = ( ( Bool -> Bool ) ∋ ( ( λ x350 -> if x350 then x350 else x350 ) ) ) $ ( if d305 then false else false )
        d351 : ( ( Set -> Set ) ∋ ( ( λ x353 -> if false then x353 else x353 ) ) ) $ ( if false then Bool else Bool )
        d351 = ( ( Bool -> Bool ) ∋ ( ( λ x352 -> if x352 then d201 else d270 ) ) ) $ ( if false then d83 else d6 )
        d354 : if true then if true then Bool else Bool else if false then Bool else Bool
        d354 = ( ( Bool -> Bool ) ∋ ( ( λ x355 -> if x355 then x355 else d125 ) ) ) $ ( if d249 then d121 else true )
        d356 : ( ( Set -> Set ) ∋ ( ( λ x358 -> if true then x358 else Bool ) ) ) $ ( if true then Bool else Bool )
        d356 = ( ( Bool -> Bool ) ∋ ( ( λ x357 -> if d201 then true else d220 ) ) ) $ ( if d238 then false else d354 )
        d359 : ( ( Set -> Set ) ∋ ( ( λ x362 -> if false then x362 else Bool ) ) ) $ ( if false then Bool else Bool )
        d359 = ( ( Bool -> Bool ) ∋ ( ( λ x360 -> ( ( Bool -> Bool ) ∋ ( ( λ x361 -> true ) ) ) $ ( x360 ) ) ) ) $ ( if d131 then false else d354 )
        d363 : ( ( Set -> Set ) ∋ ( ( λ x364 -> if true then x364 else Bool ) ) ) $ ( if false then Bool else Bool )
        d363 = if if d255 then true else false then if false then false else false else if false then d212 else false
        d365 : if false then if true then Bool else Bool else if false then Bool else Bool
        d365 = ( ( Bool -> Bool ) ∋ ( ( λ x366 -> ( ( Bool -> Bool ) ∋ ( ( λ x367 -> x366 ) ) ) $ ( d83 ) ) ) ) $ ( if true then d121 else d223 )
        d368 : if false then if false then Bool else Bool else if false then Bool else Bool
        d368 = ( ( Bool -> Bool ) ∋ ( ( λ x369 -> if d259 then false else false ) ) ) $ ( if false then d88 else false )
        d370 : if false then if true then Bool else Bool else if false then Bool else Bool
        d370 = if if false then d180 else d302 then if false then true else true else if d39 then false else d194
        d371 : ( ( Set -> Set ) ∋ ( ( λ x372 -> if false then x372 else x372 ) ) ) $ ( if false then Bool else Bool )
        d371 = if if false then d181 else false then if false then true else false else if d217 then d20 else d169
        d373 : if true then if true then Bool else Bool else if false then Bool else Bool
        d373 = if if true then false else false then if false then false else d52 else if true then true else false
        d374 : ( ( Set -> Set ) ∋ ( ( λ x375 -> if false then Bool else x375 ) ) ) $ ( if false then Bool else Bool )
        d374 = if if d197 then true else d104 then if true then false else d130 else if true then false else d259
        d376 : ( ( Set -> Set ) ∋ ( ( λ x379 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d376 = ( ( Bool -> Bool ) ∋ ( ( λ x377 -> ( ( Bool -> Bool ) ∋ ( ( λ x378 -> d145 ) ) ) $ ( d117 ) ) ) ) $ ( if false then d1 else true )
        d380 : if false then if true then Bool else Bool else if true then Bool else Bool
        d380 = if if d287 then d235 else d201 then if true then d228 else d62 else if d60 then false else d71
        d381 : if false then if true then Bool else Bool else if true then Bool else Bool
        d381 = ( ( Bool -> Bool ) ∋ ( ( λ x382 -> if true then true else x382 ) ) ) $ ( if d27 then true else d88 )
        d383 : ( ( Set -> Set ) ∋ ( ( λ x384 -> if false then x384 else Bool ) ) ) $ ( if true then Bool else Bool )
        d383 = if if d249 then false else false then if d203 then d265 else true else if false then true else d305
        d385 : if true then if true then Bool else Bool else if false then Bool else Bool
        d385 = ( ( Bool -> Bool ) ∋ ( ( λ x386 -> if false then d234 else x386 ) ) ) $ ( if d176 then true else true )
        d387 : if true then if false then Bool else Bool else if false then Bool else Bool
        d387 = if if d296 then true else true then if d351 then false else true else if d167 then d168 else true
        d388 : if false then if true then Bool else Bool else if true then Bool else Bool
        d388 = if if true then true else true then if true then d263 else d268 else if d62 then true else d317
        d389 : ( ( Set -> Set ) ∋ ( ( λ x391 -> if false then x391 else Bool ) ) ) $ ( if false then Bool else Bool )
        d389 = ( ( Bool -> Bool ) ∋ ( ( λ x390 -> if x390 then false else x390 ) ) ) $ ( if d247 then d249 else true )
        d392 : if false then if false then Bool else Bool else if true then Bool else Bool
        d392 = if if d264 then false else d259 then if d356 then d107 else d345 else if true then false else true
        d393 : if true then if true then Bool else Bool else if true then Bool else Bool
        d393 = if if d259 then d120 else true then if d339 then d20 else false else if d108 then d207 else false
        d394 : ( ( Set -> Set ) ∋ ( ( λ x395 -> ( ( Set -> Set ) ∋ ( ( λ x396 -> x395 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d394 = if if d385 then true else false then if false then d132 else d213 else if d141 then d74 else d200
        d397 : if true then if false then Bool else Bool else if true then Bool else Bool
        d397 = ( ( Bool -> Bool ) ∋ ( ( λ x398 -> ( ( Bool -> Bool ) ∋ ( ( λ x399 -> x398 ) ) ) $ ( true ) ) ) ) $ ( if d39 then d147 else d116 )
        d400 : if true then if true then Bool else Bool else if true then Bool else Bool
        d400 = if if false then d344 else d252 then if d267 then d159 else false else if false then false else true
        d401 : if false then if true then Bool else Bool else if true then Bool else Bool
        d401 = if if d13 then d65 else false then if true then true else true else if d400 then d247 else d2
        d402 : if true then if true then Bool else Bool else if true then Bool else Bool
        d402 = if if false then d176 else true then if true then d235 else d381 else if d344 then d62 else true
        d403 : ( ( Set -> Set ) ∋ ( ( λ x404 -> ( ( Set -> Set ) ∋ ( ( λ x405 -> x405 ) ) ) $ ( x404 ) ) ) ) $ ( if false then Bool else Bool )
        d403 = if if d86 then true else d99 then if true then d6 else false else if true then d99 else d374
        d406 : ( ( Set -> Set ) ∋ ( ( λ x408 -> ( ( Set -> Set ) ∋ ( ( λ x409 -> x408 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d406 = ( ( Bool -> Bool ) ∋ ( ( λ x407 -> if x407 then x407 else x407 ) ) ) $ ( if d171 then true else true )
        d410 : if true then if true then Bool else Bool else if true then Bool else Bool
        d410 = ( ( Bool -> Bool ) ∋ ( ( λ x411 -> if x411 then d277 else x411 ) ) ) $ ( if true then true else d82 )
        d412 : if false then if true then Bool else Bool else if false then Bool else Bool
        d412 = if if false then d10 else d296 then if true then false else false else if false then d283 else false
        d413 : if false then if true then Bool else Bool else if false then Bool else Bool
        d413 = ( ( Bool -> Bool ) ∋ ( ( λ x414 -> ( ( Bool -> Bool ) ∋ ( ( λ x415 -> d145 ) ) ) $ ( d359 ) ) ) ) $ ( if true then d268 else d124 )
        d416 : if true then if false then Bool else Bool else if false then Bool else Bool
        d416 = ( ( Bool -> Bool ) ∋ ( ( λ x417 -> if d124 then x417 else true ) ) ) $ ( if d394 then false else true )
        d418 : if true then if false then Bool else Bool else if false then Bool else Bool
        d418 = if if d354 then d83 else d263 then if false then d129 else true else if d156 then true else d86
        d419 : ( ( Set -> Set ) ∋ ( ( λ x420 -> ( ( Set -> Set ) ∋ ( ( λ x421 -> x420 ) ) ) $ ( x420 ) ) ) ) $ ( if false then Bool else Bool )
        d419 = if if false then true else d230 then if d58 then d96 else true else if d235 then d351 else d212
        d422 : if true then if false then Bool else Bool else if false then Bool else Bool
        d422 = if if d305 then d265 else true then if false then true else d365 else if d314 then true else true
        d423 : ( ( Set -> Set ) ∋ ( ( λ x426 -> ( ( Set -> Set ) ∋ ( ( λ x427 -> x427 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d423 = ( ( Bool -> Bool ) ∋ ( ( λ x424 -> ( ( Bool -> Bool ) ∋ ( ( λ x425 -> true ) ) ) $ ( false ) ) ) ) $ ( if d381 then d68 else d176 )
        d428 : if true then if false then Bool else Bool else if true then Bool else Bool
        d428 = ( ( Bool -> Bool ) ∋ ( ( λ x429 -> ( ( Bool -> Bool ) ∋ ( ( λ x430 -> d83 ) ) ) $ ( true ) ) ) ) $ ( if d130 then true else d113 )
        d431 : ( ( Set -> Set ) ∋ ( ( λ x433 -> ( ( Set -> Set ) ∋ ( ( λ x434 -> Bool ) ) ) $ ( x433 ) ) ) ) $ ( if true then Bool else Bool )
        d431 = ( ( Bool -> Bool ) ∋ ( ( λ x432 -> if false then true else true ) ) ) $ ( if d203 then d162 else true )
        d435 : if false then if true then Bool else Bool else if false then Bool else Bool
        d435 = if if d89 then false else true then if d263 then d88 else false else if true then false else false
        d436 : if false then if true then Bool else Bool else if true then Bool else Bool
        d436 = if if d16 then d104 else d212 then if d336 then false else d373 else if true then d80 else d418
        d437 : ( ( Set -> Set ) ∋ ( ( λ x439 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d437 = ( ( Bool -> Bool ) ∋ ( ( λ x438 -> if false then d277 else false ) ) ) $ ( if d82 then false else d6 )
        d440 : ( ( Set -> Set ) ∋ ( ( λ x443 -> ( ( Set -> Set ) ∋ ( ( λ x444 -> Bool ) ) ) $ ( x443 ) ) ) ) $ ( if true then Bool else Bool )
        d440 = ( ( Bool -> Bool ) ∋ ( ( λ x441 -> ( ( Bool -> Bool ) ∋ ( ( λ x442 -> d289 ) ) ) $ ( d17 ) ) ) ) $ ( if true then true else true )
        d445 : if false then if false then Bool else Bool else if false then Bool else Bool
        d445 = ( ( Bool -> Bool ) ∋ ( ( λ x446 -> ( ( Bool -> Bool ) ∋ ( ( λ x447 -> x446 ) ) ) $ ( d385 ) ) ) ) $ ( if false then d200 else false )
        d448 : ( ( Set -> Set ) ∋ ( ( λ x449 -> if true then x449 else x449 ) ) ) $ ( if false then Bool else Bool )
        d448 = if if false then d145 else false then if true then d210 else d329 else if d68 then true else d288
        d450 : if true then if true then Bool else Bool else if true then Bool else Bool
        d450 = if if false then d223 else true then if false then false else true else if false then d314 else d400
        d451 : if false then if false then Bool else Bool else if false then Bool else Bool
        d451 = if if false then d349 else false then if d280 then false else true else if d52 then true else false
        d452 : ( ( Set -> Set ) ∋ ( ( λ x453 -> ( ( Set -> Set ) ∋ ( ( λ x454 -> x454 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d452 = if if false then false else d393 then if d435 then d277 else d116 else if d392 then d171 else true
        d455 : if true then if false then Bool else Bool else if false then Bool else Bool
        d455 = if if d186 then d394 else false then if false then d332 else d428 else if d265 then d410 else true
        d456 : if true then if true then Bool else Bool else if false then Bool else Bool
        d456 = ( ( Bool -> Bool ) ∋ ( ( λ x457 -> if x457 then x457 else x457 ) ) ) $ ( if false then true else d370 )
        d458 : if true then if true then Bool else Bool else if true then Bool else Bool
        d458 = ( ( Bool -> Bool ) ∋ ( ( λ x459 -> if true then x459 else d440 ) ) ) $ ( if d211 then true else true )
        d460 : ( ( Set -> Set ) ∋ ( ( λ x461 -> ( ( Set -> Set ) ∋ ( ( λ x462 -> x462 ) ) ) $ ( x461 ) ) ) ) $ ( if false then Bool else Bool )
        d460 = if if d111 then false else d289 then if d65 then d186 else false else if false then d247 else true
        d463 : if true then if true then Bool else Bool else if true then Bool else Bool
        d463 = ( ( Bool -> Bool ) ∋ ( ( λ x464 -> if x464 then false else d373 ) ) ) $ ( if true then d182 else false )
        d465 : ( ( Set -> Set ) ∋ ( ( λ x466 -> ( ( Set -> Set ) ∋ ( ( λ x467 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d465 = if if true then d147 else true then if true then false else d351 else if true then true else d120
        d468 : if true then if false then Bool else Bool else if true then Bool else Bool
        d468 = ( ( Bool -> Bool ) ∋ ( ( λ x469 -> if x469 then x469 else x469 ) ) ) $ ( if d280 then d169 else true )
        d470 : ( ( Set -> Set ) ∋ ( ( λ x472 -> if true then Bool else x472 ) ) ) $ ( if false then Bool else Bool )
        d470 = ( ( Bool -> Bool ) ∋ ( ( λ x471 -> if d383 then x471 else false ) ) ) $ ( if true then true else d60 )
        d473 : ( ( Set -> Set ) ∋ ( ( λ x476 -> ( ( Set -> Set ) ∋ ( ( λ x477 -> x476 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d473 = ( ( Bool -> Bool ) ∋ ( ( λ x474 -> ( ( Bool -> Bool ) ∋ ( ( λ x475 -> d402 ) ) ) $ ( d268 ) ) ) ) $ ( if d431 then d255 else d394 )
        d478 : if false then if false then Bool else Bool else if false then Bool else Bool
        d478 = ( ( Bool -> Bool ) ∋ ( ( λ x479 -> if false then d169 else true ) ) ) $ ( if true then d113 else d288 )
        d480 : if false then if false then Bool else Bool else if false then Bool else Bool
        d480 = if if false then d436 else false then if false then true else d265 else if false then d13 else d455
        d481 : ( ( Set -> Set ) ∋ ( ( λ x483 -> ( ( Set -> Set ) ∋ ( ( λ x484 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d481 = ( ( Bool -> Bool ) ∋ ( ( λ x482 -> if x482 then x482 else d287 ) ) ) $ ( if d393 then true else d329 )
        d485 : ( ( Set -> Set ) ∋ ( ( λ x488 -> if true then x488 else Bool ) ) ) $ ( if false then Bool else Bool )
        d485 = ( ( Bool -> Bool ) ∋ ( ( λ x486 -> ( ( Bool -> Bool ) ∋ ( ( λ x487 -> d86 ) ) ) $ ( x486 ) ) ) ) $ ( if false then d110 else d132 )
        d489 : if false then if true then Bool else Bool else if true then Bool else Bool
        d489 = if if false then d463 else true then if d445 then d383 else d259 else if true then d437 else false
        d490 : if true then if false then Bool else Bool else if true then Bool else Bool
        d490 = if if d203 then false else true then if d289 then true else d397 else if true then d156 else true
        d491 : ( ( Set -> Set ) ∋ ( ( λ x494 -> ( ( Set -> Set ) ∋ ( ( λ x495 -> x494 ) ) ) $ ( x494 ) ) ) ) $ ( if true then Bool else Bool )
        d491 = ( ( Bool -> Bool ) ∋ ( ( λ x492 -> ( ( Bool -> Bool ) ∋ ( ( λ x493 -> x493 ) ) ) $ ( d339 ) ) ) ) $ ( if false then true else false )
        d496 : if true then if false then Bool else Bool else if false then Bool else Bool
        d496 = ( ( Bool -> Bool ) ∋ ( ( λ x497 -> if x497 then true else x497 ) ) ) $ ( if d45 then d356 else true )
        d498 : if true then if true then Bool else Bool else if true then Bool else Bool
        d498 = if if false then false else d228 then if true then d287 else false else if true then d380 else true
        d499 : ( ( Set -> Set ) ∋ ( ( λ x501 -> ( ( Set -> Set ) ∋ ( ( λ x502 -> x502 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d499 = ( ( Bool -> Bool ) ∋ ( ( λ x500 -> if d275 then false else d428 ) ) ) $ ( if false then true else false )
        d503 : if true then if false then Bool else Bool else if true then Bool else Bool
        d503 = ( ( Bool -> Bool ) ∋ ( ( λ x504 -> ( ( Bool -> Bool ) ∋ ( ( λ x505 -> true ) ) ) $ ( x504 ) ) ) ) $ ( if d180 then d197 else true )
        d506 : ( ( Set -> Set ) ∋ ( ( λ x509 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d506 = ( ( Bool -> Bool ) ∋ ( ( λ x507 -> ( ( Bool -> Bool ) ∋ ( ( λ x508 -> d99 ) ) ) $ ( d45 ) ) ) ) $ ( if d249 then false else true )
        d510 : ( ( Set -> Set ) ∋ ( ( λ x512 -> ( ( Set -> Set ) ∋ ( ( λ x513 -> x512 ) ) ) $ ( x512 ) ) ) ) $ ( if true then Bool else Bool )
        d510 = ( ( Bool -> Bool ) ∋ ( ( λ x511 -> if d489 then d452 else true ) ) ) $ ( if d1 then false else d111 )
        d514 : if false then if false then Bool else Bool else if true then Bool else Bool
        d514 = ( ( Bool -> Bool ) ∋ ( ( λ x515 -> if d111 then false else false ) ) ) $ ( if true then d277 else d23 )
        d516 : if true then if true then Bool else Bool else if false then Bool else Bool
        d516 = ( ( Bool -> Bool ) ∋ ( ( λ x517 -> ( ( Bool -> Bool ) ∋ ( ( λ x518 -> false ) ) ) $ ( false ) ) ) ) $ ( if true then d422 else d136 )
        d519 : if false then if false then Bool else Bool else if true then Bool else Bool
        d519 = ( ( Bool -> Bool ) ∋ ( ( λ x520 -> ( ( Bool -> Bool ) ∋ ( ( λ x521 -> x520 ) ) ) $ ( false ) ) ) ) $ ( if d215 then d470 else false )
        d522 : if true then if true then Bool else Bool else if false then Bool else Bool
        d522 = if if d324 then d230 else d388 then if d498 then false else false else if d368 then d86 else d17
        d523 : if false then if false then Bool else Bool else if true then Bool else Bool
        d523 = ( ( Bool -> Bool ) ∋ ( ( λ x524 -> ( ( Bool -> Bool ) ∋ ( ( λ x525 -> true ) ) ) $ ( false ) ) ) ) $ ( if d111 then d431 else d62 )
        d526 : ( ( Set -> Set ) ∋ ( ( λ x527 -> ( ( Set -> Set ) ∋ ( ( λ x528 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d526 = if if true then true else true then if true then false else d313 else if true then d169 else false
        d529 : if false then if true then Bool else Bool else if true then Bool else Bool
        d529 = ( ( Bool -> Bool ) ∋ ( ( λ x530 -> if x530 then d359 else d302 ) ) ) $ ( if d445 then d270 else d117 )
        d531 : if false then if true then Bool else Bool else if false then Bool else Bool
        d531 = if if true then d514 else true then if false then false else true else if d370 then d65 else d381
        d532 : if false then if false then Bool else Bool else if false then Bool else Bool
        d532 = if if false then false else true then if d163 then true else false else if false then false else true
        d533 : if true then if true then Bool else Bool else if true then Bool else Bool
        d533 = if if true then true else d523 then if d201 then d249 else true else if false then false else true
        d534 : if false then if false then Bool else Bool else if true then Bool else Bool
        d534 = if if d317 then d275 else false then if d351 then d280 else false else if d456 then false else d436
        d535 : if true then if false then Bool else Bool else if false then Bool else Bool
        d535 = if if d124 then false else true then if d277 then false else false else if false then false else d428
        d536 : if true then if true then Bool else Bool else if false then Bool else Bool
        d536 = if if d437 then false else d116 then if false then d41 else d145 else if true then false else true
        d537 : if false then if false then Bool else Bool else if false then Bool else Bool
        d537 = ( ( Bool -> Bool ) ∋ ( ( λ x538 -> ( ( Bool -> Bool ) ∋ ( ( λ x539 -> d80 ) ) ) $ ( x538 ) ) ) ) $ ( if d36 then false else true )
        d540 : if false then if true then Bool else Bool else if true then Bool else Bool
        d540 = ( ( Bool -> Bool ) ∋ ( ( λ x541 -> if d213 then x541 else x541 ) ) ) $ ( if d247 then false else d394 )
        d542 : ( ( Set -> Set ) ∋ ( ( λ x544 -> ( ( Set -> Set ) ∋ ( ( λ x545 -> Bool ) ) ) $ ( x544 ) ) ) ) $ ( if false then Bool else Bool )
        d542 = ( ( Bool -> Bool ) ∋ ( ( λ x543 -> if true then false else x543 ) ) ) $ ( if false then d44 else true )
        d546 : ( ( Set -> Set ) ∋ ( ( λ x548 -> if true then x548 else Bool ) ) ) $ ( if true then Bool else Bool )
        d546 = ( ( Bool -> Bool ) ∋ ( ( λ x547 -> if d268 then false else d39 ) ) ) $ ( if d147 then true else d344 )
        d549 : if true then if true then Bool else Bool else if true then Bool else Bool
        d549 = ( ( Bool -> Bool ) ∋ ( ( λ x550 -> ( ( Bool -> Bool ) ∋ ( ( λ x551 -> x551 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d552 : ( ( Set -> Set ) ∋ ( ( λ x554 -> if true then Bool else x554 ) ) ) $ ( if true then Bool else Bool )
        d552 = ( ( Bool -> Bool ) ∋ ( ( λ x553 -> if true then d180 else true ) ) ) $ ( if d212 then d300 else d136 )
        d555 : if false then if true then Bool else Bool else if true then Bool else Bool
        d555 = ( ( Bool -> Bool ) ∋ ( ( λ x556 -> if x556 then d313 else false ) ) ) $ ( if d240 then true else true )
        d557 : if false then if true then Bool else Bool else if true then Bool else Bool
        d557 = ( ( Bool -> Bool ) ∋ ( ( λ x558 -> ( ( Bool -> Bool ) ∋ ( ( λ x559 -> x559 ) ) ) $ ( false ) ) ) ) $ ( if d296 then false else d468 )
        d560 : if true then if false then Bool else Bool else if false then Bool else Bool
        d560 = if if true then d77 else d383 then if true then d110 else d154 else if false then false else true
        d561 : ( ( Set -> Set ) ∋ ( ( λ x563 -> if true then x563 else x563 ) ) ) $ ( if false then Bool else Bool )
        d561 = ( ( Bool -> Bool ) ∋ ( ( λ x562 -> if d203 then d52 else d392 ) ) ) $ ( if d141 then false else true )
        d564 : ( ( Set -> Set ) ∋ ( ( λ x566 -> if false then Bool else x566 ) ) ) $ ( if true then Bool else Bool )
        d564 = ( ( Bool -> Bool ) ∋ ( ( λ x565 -> if false then d285 else x565 ) ) ) $ ( if d555 then true else true )
        d567 : if false then if true then Bool else Bool else if false then Bool else Bool
        d567 = if if d387 then d537 else d44 then if false then d371 else false else if false then d546 else d45
        d568 : if false then if false then Bool else Bool else if true then Bool else Bool
        d568 = ( ( Bool -> Bool ) ∋ ( ( λ x569 -> if x569 then true else d2 ) ) ) $ ( if false then d6 else d549 )
        d570 : if false then if false then Bool else Bool else if false then Bool else Bool
        d570 = ( ( Bool -> Bool ) ∋ ( ( λ x571 -> if d455 then false else x571 ) ) ) $ ( if true then true else true )
        d572 : ( ( Set -> Set ) ∋ ( ( λ x574 -> if true then x574 else Bool ) ) ) $ ( if false then Bool else Bool )
        d572 = ( ( Bool -> Bool ) ∋ ( ( λ x573 -> if x573 then false else d6 ) ) ) $ ( if d349 then true else true )
        d575 : ( ( Set -> Set ) ∋ ( ( λ x577 -> if true then x577 else x577 ) ) ) $ ( if true then Bool else Bool )
        d575 = ( ( Bool -> Bool ) ∋ ( ( λ x576 -> if d88 then x576 else x576 ) ) ) $ ( if d460 then false else false )
        d578 : if false then if false then Bool else Bool else if false then Bool else Bool
        d578 = if if false then true else d96 then if d41 then d302 else true else if true then d48 else true
        d579 : if false then if true then Bool else Bool else if true then Bool else Bool
        d579 = ( ( Bool -> Bool ) ∋ ( ( λ x580 -> ( ( Bool -> Bool ) ∋ ( ( λ x581 -> d450 ) ) ) $ ( false ) ) ) ) $ ( if d535 then true else false )
        d582 : if true then if true then Bool else Bool else if true then Bool else Bool
        d582 = if if false then false else false then if d311 then d20 else false else if d44 then d365 else d555
        d583 : if false then if true then Bool else Bool else if false then Bool else Bool
        d583 = ( ( Bool -> Bool ) ∋ ( ( λ x584 -> if true then x584 else d519 ) ) ) $ ( if d285 then d58 else true )
        d585 : ( ( Set -> Set ) ∋ ( ( λ x588 -> ( ( Set -> Set ) ∋ ( ( λ x589 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d585 = ( ( Bool -> Bool ) ∋ ( ( λ x586 -> ( ( Bool -> Bool ) ∋ ( ( λ x587 -> x586 ) ) ) $ ( x586 ) ) ) ) $ ( if true then false else true )
        d590 : if false then if false then Bool else Bool else if true then Bool else Bool
        d590 = if if false then true else d582 then if false then false else false else if true then d289 else false
        d591 : if true then if false then Bool else Bool else if false then Bool else Bool
        d591 = ( ( Bool -> Bool ) ∋ ( ( λ x592 -> if d93 then true else x592 ) ) ) $ ( if d17 then d302 else false )
        d593 : ( ( Set -> Set ) ∋ ( ( λ x596 -> ( ( Set -> Set ) ∋ ( ( λ x597 -> x597 ) ) ) $ ( x596 ) ) ) ) $ ( if true then Bool else Bool )
        d593 = ( ( Bool -> Bool ) ∋ ( ( λ x594 -> ( ( Bool -> Bool ) ∋ ( ( λ x595 -> false ) ) ) $ ( true ) ) ) ) $ ( if d416 then false else d389 )
        d598 : ( ( Set -> Set ) ∋ ( ( λ x599 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d598 = if if false then false else true then if d86 then d259 else d52 else if false then d212 else true
        d600 : ( ( Set -> Set ) ∋ ( ( λ x601 -> ( ( Set -> Set ) ∋ ( ( λ x602 -> x601 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d600 = if if d329 then false else d368 then if false then d314 else false else if false then true else d535
        d603 : if false then if true then Bool else Bool else if true then Bool else Bool
        d603 = if if true then false else false then if false then true else d552 else if d448 then true else d452
        d604 : ( ( Set -> Set ) ∋ ( ( λ x605 -> ( ( Set -> Set ) ∋ ( ( λ x606 -> x606 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d604 = if if false then true else d24 then if d406 then false else true else if d402 then true else d436
        d607 : if true then if true then Bool else Bool else if true then Bool else Bool
        d607 = if if true then true else d242 then if true then d232 else d332 else if d132 then false else false
        d608 : ( ( Set -> Set ) ∋ ( ( λ x609 -> ( ( Set -> Set ) ∋ ( ( λ x610 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d608 = if if d305 then d117 else false then if false then d88 else true else if d531 then false else false
        d611 : ( ( Set -> Set ) ∋ ( ( λ x612 -> if false then x612 else x612 ) ) ) $ ( if false then Bool else Bool )
        d611 = if if d533 then d82 else d455 then if true then d167 else d238 else if false then d380 else d470
        d613 : if true then if true then Bool else Bool else if true then Bool else Bool
        d613 = ( ( Bool -> Bool ) ∋ ( ( λ x614 -> if true then x614 else d230 ) ) ) $ ( if true then false else false )
        d615 : if true then if true then Bool else Bool else if true then Bool else Bool
        d615 = ( ( Bool -> Bool ) ∋ ( ( λ x616 -> if x616 then x616 else d306 ) ) ) $ ( if true then false else false )
        d617 : ( ( Set -> Set ) ∋ ( ( λ x618 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d617 = if if d615 then false else false then if d215 then d249 else d468 else if true then d470 else d207
        d619 : ( ( Set -> Set ) ∋ ( ( λ x621 -> if true then Bool else x621 ) ) ) $ ( if false then Bool else Bool )
        d619 = ( ( Bool -> Bool ) ∋ ( ( λ x620 -> if d368 then false else x620 ) ) ) $ ( if false then d55 else d519 )
        d622 : ( ( Set -> Set ) ∋ ( ( λ x623 -> ( ( Set -> Set ) ∋ ( ( λ x624 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d622 = if if false then false else d211 then if true then d440 else d374 else if true then d583 else d359
        d625 : if false then if true then Bool else Bool else if true then Bool else Bool
        d625 = if if false then d141 else true then if true then true else true else if false then true else d200
        d626 : if true then if true then Bool else Bool else if false then Bool else Bool
        d626 = if if true then false else true then if true then d549 else d376 else if true then d220 else true
        d627 : ( ( Set -> Set ) ∋ ( ( λ x628 -> ( ( Set -> Set ) ∋ ( ( λ x629 -> x628 ) ) ) $ ( x628 ) ) ) ) $ ( if false then Bool else Bool )
        d627 = if if d220 then d306 else d470 then if true then false else d264 else if d17 then d514 else true
        d630 : if false then if true then Bool else Bool else if true then Bool else Bool
        d630 = ( ( Bool -> Bool ) ∋ ( ( λ x631 -> ( ( Bool -> Bool ) ∋ ( ( λ x632 -> false ) ) ) $ ( d374 ) ) ) ) $ ( if d108 then false else false )
        d633 : ( ( Set -> Set ) ∋ ( ( λ x634 -> ( ( Set -> Set ) ∋ ( ( λ x635 -> Bool ) ) ) $ ( x634 ) ) ) ) $ ( if false then Bool else Bool )
        d633 = if if true then d82 else false then if true then d201 else d147 else if d613 then false else d136
        d636 : ( ( Set -> Set ) ∋ ( ( λ x637 -> if false then x637 else x637 ) ) ) $ ( if true then Bool else Bool )
        d636 = if if true then d111 else true then if d582 then true else d201 else if false then d296 else d400
        d638 : if true then if true then Bool else Bool else if false then Bool else Bool
        d638 = if if false then d607 else true then if false then false else d568 else if false then d365 else true
        d639 : if false then if false then Bool else Bool else if true then Bool else Bool
        d639 = if if d522 then d452 else d68 then if d450 then d213 else false else if d244 then d389 else true
        d640 : ( ( Set -> Set ) ∋ ( ( λ x642 -> ( ( Set -> Set ) ∋ ( ( λ x643 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d640 = ( ( Bool -> Bool ) ∋ ( ( λ x641 -> if d351 then x641 else d582 ) ) ) $ ( if true then d306 else true )
        d644 : ( ( Set -> Set ) ∋ ( ( λ x645 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d644 = if if d186 then true else d180 then if d600 then d470 else false else if d117 then false else d65
        d646 : if true then if false then Bool else Bool else if false then Bool else Bool
        d646 = if if true then d332 else d622 then if true then d55 else d410 else if d590 then false else true
        d647 : if false then if false then Bool else Bool else if true then Bool else Bool
        d647 = if if d470 then false else true then if d210 then true else false else if d200 then true else false
        d648 : if true then if false then Bool else Bool else if true then Bool else Bool
        d648 = ( ( Bool -> Bool ) ∋ ( ( λ x649 -> ( ( Bool -> Bool ) ∋ ( ( λ x650 -> x650 ) ) ) $ ( false ) ) ) ) $ ( if d48 then d305 else d416 )
        d651 : ( ( Set -> Set ) ∋ ( ( λ x652 -> if false then x652 else Bool ) ) ) $ ( if false then Bool else Bool )
        d651 = if if false then d130 else d617 then if d613 then d326 else d579 else if d305 then d55 else true
        d653 : if false then if true then Bool else Bool else if false then Bool else Bool
        d653 = if if false then d215 else false then if d13 then true else d561 else if d207 then true else d45
        d654 : ( ( Set -> Set ) ∋ ( ( λ x656 -> if true then x656 else Bool ) ) ) $ ( if false then Bool else Bool )
        d654 = ( ( Bool -> Bool ) ∋ ( ( λ x655 -> if d460 then x655 else d197 ) ) ) $ ( if true then d147 else d197 )
        d657 : if true then if false then Bool else Bool else if true then Bool else Bool
        d657 = ( ( Bool -> Bool ) ∋ ( ( λ x658 -> if d130 then x658 else d351 ) ) ) $ ( if d410 then false else d140 )
        d659 : ( ( Set -> Set ) ∋ ( ( λ x660 -> ( ( Set -> Set ) ∋ ( ( λ x661 -> x660 ) ) ) $ ( x660 ) ) ) ) $ ( if false then Bool else Bool )
        d659 = if if d598 then false else false then if true then d99 else true else if true then false else d285
        d662 : ( ( Set -> Set ) ∋ ( ( λ x663 -> ( ( Set -> Set ) ∋ ( ( λ x664 -> x663 ) ) ) $ ( x663 ) ) ) ) $ ( if true then Bool else Bool )
        d662 = if if d622 then d625 else false then if d532 then d422 else d339 else if d36 then d228 else d125
        d665 : if true then if false then Bool else Bool else if true then Bool else Bool
        d665 = ( ( Bool -> Bool ) ∋ ( ( λ x666 -> if d77 then x666 else true ) ) ) $ ( if true then d387 else d148 )
        d667 : if true then if false then Bool else Bool else if true then Bool else Bool
        d667 = if if d570 then d531 else d341 then if false then false else d71 else if d389 then true else false
        d668 : if true then if true then Bool else Bool else if true then Bool else Bool
        d668 = ( ( Bool -> Bool ) ∋ ( ( λ x669 -> if x669 then true else d220 ) ) ) $ ( if d385 then d522 else d593 )
        d670 : if false then if true then Bool else Bool else if true then Bool else Bool
        d670 = if if d210 then false else d546 then if d260 then true else d273 else if d406 then true else false
        d671 : if false then if false then Bool else Bool else if false then Bool else Bool
        d671 = ( ( Bool -> Bool ) ∋ ( ( λ x672 -> if x672 then x672 else true ) ) ) $ ( if d651 then d619 else d503 )
        d673 : if false then if true then Bool else Bool else if false then Bool else Bool
        d673 = if if d549 then d561 else d244 then if false then d23 else d671 else if false then d252 else false
        d674 : ( ( Set -> Set ) ∋ ( ( λ x675 -> ( ( Set -> Set ) ∋ ( ( λ x676 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d674 = if if d526 then d376 else d45 then if d249 then true else d673 else if false then false else false
        d677 : ( ( Set -> Set ) ∋ ( ( λ x678 -> if true then x678 else x678 ) ) ) $ ( if false then Bool else Bool )
        d677 = if if true then true else d176 then if d36 then d80 else false else if true then false else false
        d679 : if false then if false then Bool else Bool else if false then Bool else Bool
        d679 = ( ( Bool -> Bool ) ∋ ( ( λ x680 -> ( ( Bool -> Bool ) ∋ ( ( λ x681 -> d546 ) ) ) $ ( true ) ) ) ) $ ( if d68 then d52 else d200 )
        d682 : ( ( Set -> Set ) ∋ ( ( λ x683 -> ( ( Set -> Set ) ∋ ( ( λ x684 -> Bool ) ) ) $ ( x683 ) ) ) ) $ ( if false then Bool else Bool )
        d682 = if if true then false else false then if d242 then d639 else d169 else if false then false else true
        d685 : ( ( Set -> Set ) ∋ ( ( λ x688 -> ( ( Set -> Set ) ∋ ( ( λ x689 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d685 = ( ( Bool -> Bool ) ∋ ( ( λ x686 -> ( ( Bool -> Bool ) ∋ ( ( λ x687 -> x686 ) ) ) $ ( d300 ) ) ) ) $ ( if d638 then true else true )
        d690 : ( ( Set -> Set ) ∋ ( ( λ x691 -> ( ( Set -> Set ) ∋ ( ( λ x692 -> x691 ) ) ) $ ( x691 ) ) ) ) $ ( if true then Bool else Bool )
        d690 = if if d603 then false else d58 then if true then d48 else false else if true then d630 else d223
        d693 : if false then if false then Bool else Bool else if true then Bool else Bool
        d693 = if if d611 then d242 else false then if d531 then true else d416 else if d607 then d267 else d458
        d694 : if false then if false then Bool else Bool else if true then Bool else Bool
        d694 = if if true then d412 else false then if d94 then d440 else false else if d630 then d546 else d450
        d695 : if true then if true then Bool else Bool else if true then Bool else Bool
        d695 = ( ( Bool -> Bool ) ∋ ( ( λ x696 -> if true then true else d617 ) ) ) $ ( if d665 then d65 else d244 )
        d697 : ( ( Set -> Set ) ∋ ( ( λ x699 -> ( ( Set -> Set ) ∋ ( ( λ x700 -> x700 ) ) ) $ ( x699 ) ) ) ) $ ( if false then Bool else Bool )
        d697 = ( ( Bool -> Bool ) ∋ ( ( λ x698 -> if x698 then x698 else false ) ) ) $ ( if d163 then d242 else d510 )
        d701 : ( ( Set -> Set ) ∋ ( ( λ x703 -> if true then x703 else Bool ) ) ) $ ( if false then Bool else Bool )
        d701 = ( ( Bool -> Bool ) ∋ ( ( λ x702 -> if x702 then true else x702 ) ) ) $ ( if true then true else false )
        d704 : if false then if true then Bool else Bool else if true then Bool else Bool
        d704 = ( ( Bool -> Bool ) ∋ ( ( λ x705 -> ( ( Bool -> Bool ) ∋ ( ( λ x706 -> x705 ) ) ) $ ( true ) ) ) ) $ ( if d514 then true else false )
        d707 : ( ( Set -> Set ) ∋ ( ( λ x710 -> ( ( Set -> Set ) ∋ ( ( λ x711 -> x710 ) ) ) $ ( x710 ) ) ) ) $ ( if false then Bool else Bool )
        d707 = ( ( Bool -> Bool ) ∋ ( ( λ x708 -> ( ( Bool -> Bool ) ∋ ( ( λ x709 -> d49 ) ) ) $ ( x708 ) ) ) ) $ ( if d314 then d260 else true )
        d712 : ( ( Set -> Set ) ∋ ( ( λ x713 -> ( ( Set -> Set ) ∋ ( ( λ x714 -> x713 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d712 = if if d456 then d136 else d99 then if d242 then d194 else false else if d431 then false else true
        d715 : if false then if true then Bool else Bool else if true then Bool else Bool
        d715 = ( ( Bool -> Bool ) ∋ ( ( λ x716 -> if x716 then x716 else d10 ) ) ) $ ( if d259 then false else true )
        d717 : if false then if true then Bool else Bool else if false then Bool else Bool
        d717 = ( ( Bool -> Bool ) ∋ ( ( λ x718 -> ( ( Bool -> Bool ) ∋ ( ( λ x719 -> x718 ) ) ) $ ( x718 ) ) ) ) $ ( if d392 then d10 else true )
        d720 : if false then if true then Bool else Bool else if false then Bool else Bool
        d720 = if if d630 then d215 else true then if false then false else d121 else if true then true else d403
        d721 : if false then if true then Bool else Bool else if false then Bool else Bool
        d721 = if if d203 then d582 else true then if false then true else d147 else if d431 then d412 else d27
        d722 : ( ( Set -> Set ) ∋ ( ( λ x725 -> ( ( Set -> Set ) ∋ ( ( λ x726 -> x726 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d722 = ( ( Bool -> Bool ) ∋ ( ( λ x723 -> ( ( Bool -> Bool ) ∋ ( ( λ x724 -> d145 ) ) ) $ ( true ) ) ) ) $ ( if false then d651 else d168 )
        d727 : ( ( Set -> Set ) ∋ ( ( λ x729 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d727 = ( ( Bool -> Bool ) ∋ ( ( λ x728 -> if true then x728 else false ) ) ) $ ( if d116 then d65 else true )
        d730 : if false then if false then Bool else Bool else if true then Bool else Bool
        d730 = if if false then false else d380 then if d323 then d363 else false else if d267 then d535 else d148
        d731 : if false then if false then Bool else Bool else if false then Bool else Bool
        d731 = ( ( Bool -> Bool ) ∋ ( ( λ x732 -> if true then x732 else x732 ) ) ) $ ( if true then d636 else true )
        d733 : ( ( Set -> Set ) ∋ ( ( λ x734 -> if false then Bool else x734 ) ) ) $ ( if false then Bool else Bool )
        d733 = if if true then true else d311 then if true then true else d611 else if d529 then false else d96
        d735 : ( ( Set -> Set ) ∋ ( ( λ x736 -> ( ( Set -> Set ) ∋ ( ( λ x737 -> x736 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d735 = if if false then false else true then if d463 then d108 else d74 else if d252 then d365 else false
        d738 : ( ( Set -> Set ) ∋ ( ( λ x741 -> ( ( Set -> Set ) ∋ ( ( λ x742 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d738 = ( ( Bool -> Bool ) ∋ ( ( λ x739 -> ( ( Bool -> Bool ) ∋ ( ( λ x740 -> false ) ) ) $ ( true ) ) ) ) $ ( if d34 then false else d392 )
        d743 : if false then if false then Bool else Bool else if false then Bool else Bool
        d743 = ( ( Bool -> Bool ) ∋ ( ( λ x744 -> if true then false else true ) ) ) $ ( if true then true else d704 )
        d745 : ( ( Set -> Set ) ∋ ( ( λ x746 -> if false then Bool else x746 ) ) ) $ ( if true then Bool else Bool )
        d745 = if if false then d738 else d575 then if false then false else false else if d326 then true else d440
        d747 : ( ( Set -> Set ) ∋ ( ( λ x748 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d747 = if if d648 then d141 else d657 then if true then d400 else false else if true then true else false
        d749 : ( ( Set -> Set ) ∋ ( ( λ x751 -> ( ( Set -> Set ) ∋ ( ( λ x752 -> x752 ) ) ) $ ( x751 ) ) ) ) $ ( if true then Bool else Bool )
        d749 = ( ( Bool -> Bool ) ∋ ( ( λ x750 -> if d555 then d685 else x750 ) ) ) $ ( if d715 then false else true )
        d753 : if false then if false then Bool else Bool else if false then Bool else Bool
        d753 = ( ( Bool -> Bool ) ∋ ( ( λ x754 -> ( ( Bool -> Bool ) ∋ ( ( λ x755 -> false ) ) ) $ ( false ) ) ) ) $ ( if d93 then d401 else false )
        d756 : ( ( Set -> Set ) ∋ ( ( λ x759 -> if true then x759 else x759 ) ) ) $ ( if false then Bool else Bool )
        d756 = ( ( Bool -> Bool ) ∋ ( ( λ x757 -> ( ( Bool -> Bool ) ∋ ( ( λ x758 -> d615 ) ) ) $ ( x757 ) ) ) ) $ ( if false then false else true )
        d760 : if false then if true then Bool else Bool else if false then Bool else Bool
        d760 = ( ( Bool -> Bool ) ∋ ( ( λ x761 -> ( ( Bool -> Bool ) ∋ ( ( λ x762 -> d300 ) ) ) $ ( true ) ) ) ) $ ( if true then d607 else d671 )
        d763 : if false then if true then Bool else Bool else if true then Bool else Bool
        d763 = ( ( Bool -> Bool ) ∋ ( ( λ x764 -> ( ( Bool -> Bool ) ∋ ( ( λ x765 -> x765 ) ) ) $ ( false ) ) ) ) $ ( if d478 then d374 else d646 )
        d766 : ( ( Set -> Set ) ∋ ( ( λ x768 -> ( ( Set -> Set ) ∋ ( ( λ x769 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d766 = ( ( Bool -> Bool ) ∋ ( ( λ x767 -> if d323 then d532 else true ) ) ) $ ( if false then d626 else true )
        d770 : if true then if false then Bool else Bool else if false then Bool else Bool
        d770 = if if d329 then false else false then if true then d305 else false else if true then d519 else d582
        d771 : if true then if true then Bool else Bool else if false then Bool else Bool
        d771 = ( ( Bool -> Bool ) ∋ ( ( λ x772 -> if d55 then d452 else x772 ) ) ) $ ( if false then false else false )
        d773 : ( ( Set -> Set ) ∋ ( ( λ x774 -> ( ( Set -> Set ) ∋ ( ( λ x775 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d773 = if if d207 then false else true then if d10 then d456 else d549 else if d131 then true else false
        d776 : ( ( Set -> Set ) ∋ ( ( λ x777 -> ( ( Set -> Set ) ∋ ( ( λ x778 -> x777 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d776 = if if d633 then false else d141 then if true then d349 else d465 else if true then false else d324
        d779 : if true then if false then Bool else Bool else if true then Bool else Bool
        d779 = ( ( Bool -> Bool ) ∋ ( ( λ x780 -> if true then d510 else false ) ) ) $ ( if d452 then true else d133 )
        d781 : if true then if true then Bool else Bool else if false then Bool else Bool
        d781 = if if false then d738 else true then if d715 then d6 else d171 else if d329 then d280 else d403
        d782 : ( ( Set -> Set ) ∋ ( ( λ x783 -> ( ( Set -> Set ) ∋ ( ( λ x784 -> Bool ) ) ) $ ( x783 ) ) ) ) $ ( if false then Bool else Bool )
        d782 = if if false then false else true then if d111 then d679 else d526 else if false then d168 else true
        d785 : if true then if true then Bool else Bool else if true then Bool else Bool
        d785 = if if d238 then d159 else d593 then if d305 then false else false else if false then false else d13
        d786 : if false then if true then Bool else Bool else if true then Bool else Bool
        d786 = if if true then d489 else d140 then if false then true else true else if d455 then d437 else d300
        d787 : if false then if false then Bool else Bool else if true then Bool else Bool
        d787 = ( ( Bool -> Bool ) ∋ ( ( λ x788 -> ( ( Bool -> Bool ) ∋ ( ( λ x789 -> d359 ) ) ) $ ( d289 ) ) ) ) $ ( if false then d289 else d285 )
        d790 : if false then if false then Bool else Bool else if false then Bool else Bool
        d790 = ( ( Bool -> Bool ) ∋ ( ( λ x791 -> ( ( Bool -> Bool ) ∋ ( ( λ x792 -> d104 ) ) ) $ ( x791 ) ) ) ) $ ( if d197 then true else false )
        d793 : if false then if false then Bool else Bool else if true then Bool else Bool
        d793 = ( ( Bool -> Bool ) ∋ ( ( λ x794 -> if false then true else d598 ) ) ) $ ( if false then d662 else d662 )
        d795 : ( ( Set -> Set ) ∋ ( ( λ x796 -> if true then x796 else Bool ) ) ) $ ( if false then Bool else Bool )
        d795 = if if d570 then true else false then if d522 then d564 else false else if false then false else d690
        d797 : if true then if false then Bool else Bool else if true then Bool else Bool
        d797 = if if true then d287 else d388 then if true then false else true else if false then d445 else d388
        d798 : if true then if true then Bool else Bool else if true then Bool else Bool
        d798 = if if d555 then d455 else d499 then if false then d546 else d763 else if d132 then true else false
        d799 : if true then if false then Bool else Bool else if false then Bool else Bool
        d799 = if if false then false else true then if true then d394 else d283 else if d542 then d336 else d68
        d800 : if true then if false then Bool else Bool else if true then Bool else Bool
        d800 = if if true then false else false then if d273 then true else d496 else if d13 then d159 else false
        d801 : ( ( Set -> Set ) ∋ ( ( λ x802 -> if true then Bool else x802 ) ) ) $ ( if false then Bool else Bool )
        d801 = if if false then true else d58 then if false then d613 else d330 else if d537 then d13 else d162
        d803 : ( ( Set -> Set ) ∋ ( ( λ x806 -> if true then x806 else Bool ) ) ) $ ( if false then Bool else Bool )
        d803 = ( ( Bool -> Bool ) ∋ ( ( λ x804 -> ( ( Bool -> Bool ) ∋ ( ( λ x805 -> d27 ) ) ) $ ( d557 ) ) ) ) $ ( if d561 then d677 else d564 )
        d807 : if false then if false then Bool else Bool else if false then Bool else Bool
        d807 = if if true then false else false then if false then d285 else d207 else if d499 then false else d514
        d808 : ( ( Set -> Set ) ∋ ( ( λ x811 -> if false then x811 else x811 ) ) ) $ ( if true then Bool else Bool )
        d808 = ( ( Bool -> Bool ) ∋ ( ( λ x809 -> ( ( Bool -> Bool ) ∋ ( ( λ x810 -> false ) ) ) $ ( false ) ) ) ) $ ( if d735 then d148 else false )
        d812 : if true then if false then Bool else Bool else if true then Bool else Bool
        d812 = if if d489 then true else true then if false then false else d365 else if false then false else d277
        d813 : ( ( Set -> Set ) ∋ ( ( λ x814 -> ( ( Set -> Set ) ∋ ( ( λ x815 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d813 = if if d277 then d235 else true then if d201 then d339 else d65 else if d349 then true else false
        d816 : if true then if false then Bool else Bool else if true then Bool else Bool
        d816 = if if false then false else d125 then if false then true else d519 else if true then true else false
        d817 : ( ( Set -> Set ) ∋ ( ( λ x818 -> ( ( Set -> Set ) ∋ ( ( λ x819 -> x818 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d817 = if if false then d354 else d567 then if true then true else false else if true then true else true
        d820 : if true then if true then Bool else Bool else if true then Bool else Bool
        d820 = ( ( Bool -> Bool ) ∋ ( ( λ x821 -> ( ( Bool -> Bool ) ∋ ( ( λ x822 -> x821 ) ) ) $ ( x821 ) ) ) ) $ ( if true then d212 else true )
        d823 : ( ( Set -> Set ) ∋ ( ( λ x825 -> ( ( Set -> Set ) ∋ ( ( λ x826 -> Bool ) ) ) $ ( x825 ) ) ) ) $ ( if true then Bool else Bool )
        d823 = ( ( Bool -> Bool ) ∋ ( ( λ x824 -> if d111 then d820 else d365 ) ) ) $ ( if d285 then d159 else false )
        d827 : if false then if false then Bool else Bool else if false then Bool else Bool
        d827 = if if d36 then d232 else true then if d437 then d410 else d41 else if d197 then d32 else d733
        d828 : ( ( Set -> Set ) ∋ ( ( λ x829 -> ( ( Set -> Set ) ∋ ( ( λ x830 -> Bool ) ) ) $ ( x829 ) ) ) ) $ ( if true then Bool else Bool )
        d828 = if if false then d17 else false then if d712 then false else false else if d435 then true else false
        d831 : ( ( Set -> Set ) ∋ ( ( λ x832 -> if true then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d831 = if if d260 then false else false then if d779 then d813 else false else if true then true else d96
        d833 : ( ( Set -> Set ) ∋ ( ( λ x835 -> if false then x835 else Bool ) ) ) $ ( if true then Bool else Bool )
        d833 = ( ( Bool -> Bool ) ∋ ( ( λ x834 -> if x834 then false else d374 ) ) ) $ ( if true then d701 else d113 )
        d836 : ( ( Set -> Set ) ∋ ( ( λ x837 -> ( ( Set -> Set ) ∋ ( ( λ x838 -> x838 ) ) ) $ ( x837 ) ) ) ) $ ( if false then Bool else Bool )
        d836 = if if d779 then d255 else d288 then if true then true else d600 else if d373 then false else true
        d839 : if false then if false then Bool else Bool else if true then Bool else Bool
        d839 = ( ( Bool -> Bool ) ∋ ( ( λ x840 -> ( ( Bool -> Bool ) ∋ ( ( λ x841 -> false ) ) ) $ ( d34 ) ) ) ) $ ( if false then d490 else false )
        d842 : if false then if false then Bool else Bool else if true then Bool else Bool
        d842 = if if false then d223 else d330 then if false then d65 else d292 else if false then d763 else d288
        d843 : if true then if true then Bool else Bool else if false then Bool else Bool
        d843 = ( ( Bool -> Bool ) ∋ ( ( λ x844 -> if x844 then d785 else false ) ) ) $ ( if d120 then true else d567 )
        d845 : ( ( Set -> Set ) ∋ ( ( λ x847 -> ( ( Set -> Set ) ∋ ( ( λ x848 -> Bool ) ) ) $ ( x847 ) ) ) ) $ ( if false then Bool else Bool )
        d845 = ( ( Bool -> Bool ) ∋ ( ( λ x846 -> if x846 then false else d329 ) ) ) $ ( if d445 then false else d771 )
        d849 : ( ( Set -> Set ) ∋ ( ( λ x851 -> ( ( Set -> Set ) ∋ ( ( λ x852 -> Bool ) ) ) $ ( x851 ) ) ) ) $ ( if false then Bool else Bool )
        d849 = ( ( Bool -> Bool ) ∋ ( ( λ x850 -> if true then false else x850 ) ) ) $ ( if false then true else true )
        d853 : if false then if true then Bool else Bool else if false then Bool else Bool
        d853 = ( ( Bool -> Bool ) ∋ ( ( λ x854 -> if false then d760 else d77 ) ) ) $ ( if false then false else false )
        d855 : ( ( Set -> Set ) ∋ ( ( λ x858 -> ( ( Set -> Set ) ∋ ( ( λ x859 -> Bool ) ) ) $ ( x858 ) ) ) ) $ ( if true then Bool else Bool )
        d855 = ( ( Bool -> Bool ) ∋ ( ( λ x856 -> ( ( Bool -> Bool ) ∋ ( ( λ x857 -> true ) ) ) $ ( true ) ) ) ) $ ( if false then true else true )
        d860 : ( ( Set -> Set ) ∋ ( ( λ x863 -> ( ( Set -> Set ) ∋ ( ( λ x864 -> x864 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d860 = ( ( Bool -> Bool ) ∋ ( ( λ x861 -> ( ( Bool -> Bool ) ∋ ( ( λ x862 -> d330 ) ) ) $ ( d673 ) ) ) ) $ ( if false then false else true )
        d865 : ( ( Set -> Set ) ∋ ( ( λ x866 -> ( ( Set -> Set ) ∋ ( ( λ x867 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d865 = if if true then d738 else d536 then if d287 then d376 else false else if false then d456 else true
        d868 : ( ( Set -> Set ) ∋ ( ( λ x869 -> ( ( Set -> Set ) ∋ ( ( λ x870 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d868 = if if false then true else d532 then if true then true else true else if true then d147 else d779
        d871 : if false then if false then Bool else Bool else if false then Bool else Bool
        d871 = if if true then true else true then if d590 then false else d131 else if d785 then d770 else true
        d872 : if true then if true then Bool else Bool else if true then Bool else Bool
        d872 = ( ( Bool -> Bool ) ∋ ( ( λ x873 -> ( ( Bool -> Bool ) ∋ ( ( λ x874 -> d540 ) ) ) $ ( d607 ) ) ) ) $ ( if true then true else false )
        d875 : if false then if true then Bool else Bool else if false then Bool else Bool
        d875 = if if true then d285 else d682 then if true then true else d163 else if false then false else d549
        d876 : ( ( Set -> Set ) ∋ ( ( λ x877 -> ( ( Set -> Set ) ∋ ( ( λ x878 -> x877 ) ) ) $ ( x877 ) ) ) ) $ ( if true then Bool else Bool )
        d876 = if if true then false else false then if d418 then d330 else d234 else if d267 then false else d451
        d879 : if true then if false then Bool else Bool else if true then Bool else Bool
        d879 = if if d499 then true else d431 then if true then false else d94 else if true then true else true
        d880 : ( ( Set -> Set ) ∋ ( ( λ x882 -> ( ( Set -> Set ) ∋ ( ( λ x883 -> x883 ) ) ) $ ( x882 ) ) ) ) $ ( if false then Bool else Bool )
        d880 = ( ( Bool -> Bool ) ∋ ( ( λ x881 -> if x881 then true else false ) ) ) $ ( if d23 then true else true )
        d884 : if true then if true then Bool else Bool else if true then Bool else Bool
        d884 = ( ( Bool -> Bool ) ∋ ( ( λ x885 -> if false then true else x885 ) ) ) $ ( if false then false else false )
        d886 : ( ( Set -> Set ) ∋ ( ( λ x887 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d886 = if if d289 then false else d376 then if true then d510 else d519 else if d745 then d41 else false
        d888 : ( ( Set -> Set ) ∋ ( ( λ x889 -> if false then x889 else Bool ) ) ) $ ( if true then Bool else Bool )
        d888 = if if false then true else false then if d608 then d162 else false else if true then false else d496
        d890 : if false then if false then Bool else Bool else if true then Bool else Bool
        d890 = if if d45 then false else d306 then if false then d468 else false else if d535 then false else d65
        d891 : ( ( Set -> Set ) ∋ ( ( λ x892 -> if true then Bool else x892 ) ) ) $ ( if false then Bool else Bool )
        d891 = if if d639 then false else false then if false then d546 else true else if true then d607 else d213
        d893 : ( ( Set -> Set ) ∋ ( ( λ x896 -> ( ( Set -> Set ) ∋ ( ( λ x897 -> Bool ) ) ) $ ( x896 ) ) ) ) $ ( if true then Bool else Bool )
        d893 = ( ( Bool -> Bool ) ∋ ( ( λ x894 -> ( ( Bool -> Bool ) ∋ ( ( λ x895 -> d437 ) ) ) $ ( d659 ) ) ) ) $ ( if d779 then d71 else d519 )
        d898 : if true then if false then Bool else Bool else if false then Bool else Bool
        d898 = ( ( Bool -> Bool ) ∋ ( ( λ x899 -> if x899 then false else false ) ) ) $ ( if d341 then d735 else false )
        d900 : ( ( Set -> Set ) ∋ ( ( λ x901 -> ( ( Set -> Set ) ∋ ( ( λ x902 -> x902 ) ) ) $ ( x901 ) ) ) ) $ ( if true then Bool else Bool )
        d900 = if if d265 then true else false then if d163 then d613 else d86 else if d332 then d526 else false
        d903 : ( ( Set -> Set ) ∋ ( ( λ x906 -> if false then Bool else Bool ) ) ) $ ( if true then Bool else Bool )
        d903 = ( ( Bool -> Bool ) ∋ ( ( λ x904 -> ( ( Bool -> Bool ) ∋ ( ( λ x905 -> false ) ) ) $ ( d760 ) ) ) ) $ ( if false then d465 else d498 )
        d907 : if false then if false then Bool else Bool else if false then Bool else Bool
        d907 = if if d275 then d389 else d886 then if false then false else d803 else if d526 then d147 else d62
        d908 : if true then if false then Bool else Bool else if false then Bool else Bool
        d908 = ( ( Bool -> Bool ) ∋ ( ( λ x909 -> ( ( Bool -> Bool ) ∋ ( ( λ x910 -> d168 ) ) ) $ ( d394 ) ) ) ) $ ( if d717 then true else d86 )
        d911 : if true then if true then Bool else Bool else if false then Bool else Bool
        d911 = if if true then d823 else d371 then if true then false else d865 else if d770 then d884 else false
        d912 : if false then if false then Bool else Bool else if true then Bool else Bool
        d912 = ( ( Bool -> Bool ) ∋ ( ( λ x913 -> ( ( Bool -> Bool ) ∋ ( ( λ x914 -> true ) ) ) $ ( d653 ) ) ) ) $ ( if false then d879 else d451 )
        d915 : ( ( Set -> Set ) ∋ ( ( λ x917 -> if false then Bool else x917 ) ) ) $ ( if true then Bool else Bool )
        d915 = ( ( Bool -> Bool ) ∋ ( ( λ x916 -> if d465 then d120 else x916 ) ) ) $ ( if true then d536 else d860 )
        d918 : ( ( Set -> Set ) ∋ ( ( λ x919 -> ( ( Set -> Set ) ∋ ( ( λ x920 -> x919 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d918 = if if d697 then false else d519 then if d890 then d44 else d273 else if d305 then d10 else d249
        d921 : ( ( Set -> Set ) ∋ ( ( λ x922 -> if true then x922 else x922 ) ) ) $ ( if false then Bool else Bool )
        d921 = if if d633 then false else d344 then if false then true else true else if d376 then d782 else false
        d923 : ( ( Set -> Set ) ∋ ( ( λ x924 -> ( ( Set -> Set ) ∋ ( ( λ x925 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d923 = if if d807 then false else true then if d32 then d238 else false else if true then false else d743
        d926 : if true then if true then Bool else Bool else if true then Bool else Bool
        d926 = ( ( Bool -> Bool ) ∋ ( ( λ x927 -> ( ( Bool -> Bool ) ∋ ( ( λ x928 -> d884 ) ) ) $ ( x927 ) ) ) ) $ ( if true then true else d36 )
        d929 : if true then if false then Bool else Bool else if false then Bool else Bool
        d929 = ( ( Bool -> Bool ) ∋ ( ( λ x930 -> if d374 then x930 else d607 ) ) ) $ ( if true then false else d283 )
        d931 : if false then if true then Bool else Bool else if true then Bool else Bool
        d931 = if if d720 then false else true then if false then true else false else if false then true else d445
        d932 : if false then if false then Bool else Bool else if true then Bool else Bool
        d932 = if if true then d388 else false then if false then true else true else if true then false else d717
        d933 : ( ( Set -> Set ) ∋ ( ( λ x934 -> ( ( Set -> Set ) ∋ ( ( λ x935 -> x934 ) ) ) $ ( x934 ) ) ) ) $ ( if false then Bool else Bool )
        d933 = if if true then d603 else true then if d458 then d582 else d213 else if true then d546 else d782
        d936 : if false then if false then Bool else Bool else if true then Bool else Bool
        d936 = ( ( Bool -> Bool ) ∋ ( ( λ x937 -> if d167 then x937 else false ) ) ) $ ( if false then true else false )
        d938 : ( ( Set -> Set ) ∋ ( ( λ x940 -> if true then x940 else Bool ) ) ) $ ( if true then Bool else Bool )
        d938 = ( ( Bool -> Bool ) ∋ ( ( λ x939 -> if false then true else d13 ) ) ) $ ( if false then false else false )
        d941 : if false then if false then Bool else Bool else if true then Bool else Bool
        d941 = if if false then d39 else d682 then if d136 then d625 else d373 else if true then d770 else false
        d942 : ( ( Set -> Set ) ∋ ( ( λ x945 -> ( ( Set -> Set ) ∋ ( ( λ x946 -> Bool ) ) ) $ ( x945 ) ) ) ) $ ( if false then Bool else Bool )
        d942 = ( ( Bool -> Bool ) ∋ ( ( λ x943 -> ( ( Bool -> Bool ) ∋ ( ( λ x944 -> d470 ) ) ) $ ( false ) ) ) ) $ ( if false then false else false )
        d947 : ( ( Set -> Set ) ∋ ( ( λ x948 -> if true then x948 else x948 ) ) ) $ ( if true then Bool else Bool )
        d947 = if if d162 then false else false then if true then d591 else true else if d39 then false else true
        d949 : if false then if true then Bool else Bool else if true then Bool else Bool
        d949 = ( ( Bool -> Bool ) ∋ ( ( λ x950 -> if true then x950 else false ) ) ) $ ( if d753 then true else d201 )
        d951 : ( ( Set -> Set ) ∋ ( ( λ x953 -> ( ( Set -> Set ) ∋ ( ( λ x954 -> x953 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d951 = ( ( Bool -> Bool ) ∋ ( ( λ x952 -> if false then x952 else true ) ) ) $ ( if true then false else d306 )
        d955 : ( ( Set -> Set ) ∋ ( ( λ x956 -> ( ( Set -> Set ) ∋ ( ( λ x957 -> Bool ) ) ) $ ( x956 ) ) ) ) $ ( if false then Bool else Bool )
        d955 = if if false then true else d646 then if false then d766 else d685 else if d564 then d99 else d790
        d958 : if true then if false then Bool else Bool else if false then Bool else Bool
        d958 = if if true then false else false then if d499 then true else false else if d431 then true else true
        d959 : if true then if true then Bool else Bool else if false then Bool else Bool
        d959 = if if false then d107 else d557 then if d162 then true else false else if d400 then true else true
        d960 : ( ( Set -> Set ) ∋ ( ( λ x963 -> ( ( Set -> Set ) ∋ ( ( λ x964 -> x963 ) ) ) $ ( x963 ) ) ) ) $ ( if true then Bool else Bool )
        d960 = ( ( Bool -> Bool ) ∋ ( ( λ x961 -> ( ( Bool -> Bool ) ∋ ( ( λ x962 -> x962 ) ) ) $ ( x961 ) ) ) ) $ ( if d186 then d456 else true )
        d965 : ( ( Set -> Set ) ∋ ( ( λ x968 -> ( ( Set -> Set ) ∋ ( ( λ x969 -> x969 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d965 = ( ( Bool -> Bool ) ∋ ( ( λ x966 -> ( ( Bool -> Bool ) ∋ ( ( λ x967 -> x967 ) ) ) $ ( d590 ) ) ) ) $ ( if d665 then d611 else d270 )
        d970 : ( ( Set -> Set ) ∋ ( ( λ x972 -> if false then x972 else x972 ) ) ) $ ( if false then Bool else Bool )
        d970 = ( ( Bool -> Bool ) ∋ ( ( λ x971 -> if x971 then d74 else x971 ) ) ) $ ( if d888 then d786 else true )
        d973 : ( ( Set -> Set ) ∋ ( ( λ x976 -> if true then Bool else x976 ) ) ) $ ( if true then Bool else Bool )
        d973 = ( ( Bool -> Bool ) ∋ ( ( λ x974 -> ( ( Bool -> Bool ) ∋ ( ( λ x975 -> x974 ) ) ) $ ( d535 ) ) ) ) $ ( if true then false else false )
        d977 : ( ( Set -> Set ) ∋ ( ( λ x978 -> ( ( Set -> Set ) ∋ ( ( λ x979 -> x979 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d977 = if if d738 then d549 else true then if true then d121 else true else if d823 then false else d662
        d980 : if false then if true then Bool else Bool else if true then Bool else Bool
        d980 = if if d437 then false else true then if d617 then d582 else true else if d145 then d428 else false
        d981 : ( ( Set -> Set ) ∋ ( ( λ x983 -> if false then x983 else Bool ) ) ) $ ( if true then Bool else Bool )
        d981 = ( ( Bool -> Bool ) ∋ ( ( λ x982 -> if x982 then d817 else true ) ) ) $ ( if d41 then false else true )
        d984 : if false then if false then Bool else Bool else if true then Bool else Bool
        d984 = ( ( Bool -> Bool ) ∋ ( ( λ x985 -> ( ( Bool -> Bool ) ∋ ( ( λ x986 -> x986 ) ) ) $ ( false ) ) ) ) $ ( if d83 then false else false )
        d987 : ( ( Set -> Set ) ∋ ( ( λ x989 -> if false then Bool else x989 ) ) ) $ ( if true then Bool else Bool )
        d987 = ( ( Bool -> Bool ) ∋ ( ( λ x988 -> if d480 then false else true ) ) ) $ ( if false then false else d16 )
        d990 : if false then if true then Bool else Bool else if false then Bool else Bool
        d990 = ( ( Bool -> Bool ) ∋ ( ( λ x991 -> ( ( Bool -> Bool ) ∋ ( ( λ x992 -> false ) ) ) $ ( d292 ) ) ) ) $ ( if d673 then false else false )
        d993 : ( ( Set -> Set ) ∋ ( ( λ x994 -> ( ( Set -> Set ) ∋ ( ( λ x995 -> x994 ) ) ) $ ( x994 ) ) ) ) $ ( if false then Bool else Bool )
        d993 = if if true then d244 else true then if false then d480 else d82 else if true then true else d519
        d996 : if false then if false then Bool else Bool else if false then Bool else Bool
        d996 = ( ( Bool -> Bool ) ∋ ( ( λ x997 -> if false then d252 else d217 ) ) ) $ ( if d341 then false else d130 )
        d998 : ( ( Set -> Set ) ∋ ( ( λ x999 -> if true then x999 else Bool ) ) ) $ ( if true then Bool else Bool )
        d998 = if if d498 then false else d717 then if d348 then d648 else true else if true then d455 else false
        d1000 : ( ( Set -> Set ) ∋ ( ( λ x1003 -> if true then x1003 else Bool ) ) ) $ ( if false then Bool else Bool )
        d1000 = ( ( Bool -> Bool ) ∋ ( ( λ x1001 -> ( ( Bool -> Bool ) ∋ ( ( λ x1002 -> d958 ) ) ) $ ( true ) ) ) ) $ ( if d526 then d532 else d478 )
        d1004 : ( ( Set -> Set ) ∋ ( ( λ x1005 -> if true then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1004 = if if d55 then false else d552 then if false then d575 else d817 else if false then false else d140
        d1006 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1006 = ( ( Bool -> Bool ) ∋ ( ( λ x1007 -> if false then d440 else true ) ) ) $ ( if false then d393 else d200 )
        d1008 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1008 = if if d793 then false else d779 then if d546 then d230 else true else if true then d807 else true
        d1009 : ( ( Set -> Set ) ∋ ( ( λ x1011 -> ( ( Set -> Set ) ∋ ( ( λ x1012 -> x1012 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1009 = ( ( Bool -> Bool ) ∋ ( ( λ x1010 -> if x1010 then false else x1010 ) ) ) $ ( if false then false else d49 )
        d1013 : ( ( Set -> Set ) ∋ ( ( λ x1015 -> ( ( Set -> Set ) ∋ ( ( λ x1016 -> x1016 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1013 = ( ( Bool -> Bool ) ∋ ( ( λ x1014 -> if false then false else x1014 ) ) ) $ ( if true then d891 else false )
        d1017 : if true then if true then Bool else Bool else if false then Bool else Bool
        d1017 = ( ( Bool -> Bool ) ∋ ( ( λ x1018 -> if x1018 then true else x1018 ) ) ) $ ( if false then true else d296 )
        d1019 : ( ( Set -> Set ) ∋ ( ( λ x1022 -> if false then Bool else Bool ) ) ) $ ( if false then Bool else Bool )
        d1019 = ( ( Bool -> Bool ) ∋ ( ( λ x1020 -> ( ( Bool -> Bool ) ∋ ( ( λ x1021 -> x1020 ) ) ) $ ( true ) ) ) ) $ ( if true then true else false )
        d1023 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1023 = if if d82 then d393 else d849 then if false then d898 else false else if d332 then d735 else d608
        d1024 : ( ( Set -> Set ) ∋ ( ( λ x1025 -> ( ( Set -> Set ) ∋ ( ( λ x1026 -> x1025 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1024 = if if false then true else d677 then if d20 then false else d83 else if false then true else false
        d1027 : if false then if false then Bool else Bool else if true then Bool else Bool
        d1027 = ( ( Bool -> Bool ) ∋ ( ( λ x1028 -> ( ( Bool -> Bool ) ∋ ( ( λ x1029 -> true ) ) ) $ ( x1028 ) ) ) ) $ ( if d20 then d419 else d756 )
        d1030 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1030 = ( ( Bool -> Bool ) ∋ ( ( λ x1031 -> if d16 then x1031 else x1031 ) ) ) $ ( if false then d760 else d828 )
        d1032 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1032 = ( ( Bool -> Bool ) ∋ ( ( λ x1033 -> if d756 then x1033 else d674 ) ) ) $ ( if true then d167 else d697 )
        d1034 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1034 = ( ( Bool -> Bool ) ∋ ( ( λ x1035 -> ( ( Bool -> Bool ) ∋ ( ( λ x1036 -> true ) ) ) $ ( true ) ) ) ) $ ( if true then d428 else d1000 )
        d1037 : ( ( Set -> Set ) ∋ ( ( λ x1038 -> ( ( Set -> Set ) ∋ ( ( λ x1039 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1037 = if if d154 then d941 else true then if d646 then true else d373 else if false then true else false
        d1040 : if false then if true then Bool else Bool else if true then Bool else Bool
        d1040 = if if d1024 then d401 else d113 then if false then d659 else d673 else if d159 then false else true
        d1041 : ( ( Set -> Set ) ∋ ( ( λ x1044 -> ( ( Set -> Set ) ∋ ( ( λ x1045 -> Bool ) ) ) $ ( x1044 ) ) ) ) $ ( if true then Bool else Bool )
        d1041 = ( ( Bool -> Bool ) ∋ ( ( λ x1042 -> ( ( Bool -> Bool ) ∋ ( ( λ x1043 -> d44 ) ) ) $ ( x1042 ) ) ) ) $ ( if d933 then false else false )
        d1046 : ( ( Set -> Set ) ∋ ( ( λ x1047 -> ( ( Set -> Set ) ∋ ( ( λ x1048 -> x1048 ) ) ) $ ( x1047 ) ) ) ) $ ( if false then Bool else Bool )
        d1046 = if if d685 then d48 else d292 then if d80 then true else false else if d277 then false else true
        d1049 : ( ( Set -> Set ) ∋ ( ( λ x1050 -> if false then x1050 else x1050 ) ) ) $ ( if true then Bool else Bool )
        d1049 = if if false then false else d1046 then if d603 then false else false else if false then d831 else false
        d1051 : if true then if false then Bool else Bool else if false then Bool else Bool
        d1051 = ( ( Bool -> Bool ) ∋ ( ( λ x1052 -> if d133 then x1052 else false ) ) ) $ ( if false then d452 else false )
        d1053 : if false then if false then Bool else Bool else if false then Bool else Bool
        d1053 = if if false then true else false then if d665 then d879 else d242 else if false then false else d776
        d1054 : ( ( Set -> Set ) ∋ ( ( λ x1055 -> ( ( Set -> Set ) ∋ ( ( λ x1056 -> x1056 ) ) ) $ ( Bool ) ) ) ) $ ( if true then Bool else Bool )
        d1054 = if if d247 then d860 else true then if false then d498 else true else if true then d536 else false
        d1057 : ( ( Set -> Set ) ∋ ( ( λ x1058 -> if false then x1058 else Bool ) ) ) $ ( if true then Bool else Bool )
        d1057 = if if d721 then false else true then if d132 then true else d263 else if d933 then d907 else false
        d1059 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1059 = if if d249 then true else false then if false then d911 else d929 else if d831 then d636 else true
        d1060 : ( ( Set -> Set ) ∋ ( ( λ x1061 -> if false then Bool else x1061 ) ) ) $ ( if true then Bool else Bool )
        d1060 = if if d210 then false else d363 then if true then true else d228 else if false then d116 else true
        d1062 : ( ( Set -> Set ) ∋ ( ( λ x1065 -> ( ( Set -> Set ) ∋ ( ( λ x1066 -> Bool ) ) ) $ ( x1065 ) ) ) ) $ ( if true then Bool else Bool )
        d1062 = ( ( Bool -> Bool ) ∋ ( ( λ x1063 -> ( ( Bool -> Bool ) ∋ ( ( λ x1064 -> d984 ) ) ) $ ( d211 ) ) ) ) $ ( if d591 then false else true )
        d1067 : ( ( Set -> Set ) ∋ ( ( λ x1068 -> ( ( Set -> Set ) ∋ ( ( λ x1069 -> Bool ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1067 = if if false then true else false then if false then false else false else if true then d77 else false
        d1070 : ( ( Set -> Set ) ∋ ( ( λ x1071 -> if true then x1071 else x1071 ) ) ) $ ( if true then Bool else Bool )
        d1070 = if if false then false else d600 then if true then d39 else false else if false then d622 else false
        d1072 : if true then if false then Bool else Bool else if true then Bool else Bool
        d1072 = if if d743 then d140 else d275 then if false then d36 else d715 else if d941 then d717 else false
        d1073 : if false then if true then Bool else Bool else if false then Bool else Bool
        d1073 = if if d108 then false else true then if d582 then false else d450 else if true then true else true
        d1074 : ( ( Set -> Set ) ∋ ( ( λ x1075 -> ( ( Set -> Set ) ∋ ( ( λ x1076 -> x1076 ) ) ) $ ( Bool ) ) ) ) $ ( if false then Bool else Bool )
        d1074 = if if true then d973 else false then if d368 then d579 else d540 else if d341 then d503 else d560
        d1077 : if true then if true then Bool else Bool else if true then Bool else Bool
        d1077 = if if d1046 then d397 else d108 then if d760 then d836 else true else if d48 then false else d182